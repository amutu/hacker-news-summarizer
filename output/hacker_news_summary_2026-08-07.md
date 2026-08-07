# Hacker News 热门文章摘要 (2026-08-07)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. DeepSeek V4 Flash 0731

**原文标题**: DeepSeek V4 Flash 0731

**原文链接**: [https://arcprize.org/results/deepseek-v4-flash-0731](https://arcprize.org/results/deepseek-v4-flash-0731)

DeepSeek V4 Flash 0731 是 DeepSeek 于 2026 年 7 月 31 日发布的一款推理模型，提供三个推理变体（Max、High、Low）。在最高推理强度下，它在 ARC-AGI-1 半私有测试集上以**每个任务 0.02 美元**的成本获得 **89.0%** 的得分，在 ARC-AGI-2 半私有测试集上以**每个任务 0.04 美元**的成本获得 **61.4%** 的得分。

经核实的基准测试分数显示出清晰的扩展规律：

- **Max 强度：** ARC-AGI-1 89.0%，ARC-AGI-2 61.4%，ARC-AGI-3 未报告
- **High 强度：** ARC-AGI-1 87.0%，ARC-AGI-2 56.0%
- **Low 强度：** ARC-AGI-1 84.0%，ARC-AGI-2 46.0%

公告还包含了 ARC-AGI-2 公共评估集（120 个任务）和 ARC-AGI-1 公共评估集（400 个任务）按推理级别细分的逐任务通过/失败结果。这些表格展示了模型在不同推理强度下的成功与失败情况，其中 Max 通常能解决最多的任务，而 Low 能解决的最少。总体而言，结果显示该模型在 ARC-AGI-1 上表现强劲，在难度更高的 ARC-AGI-2 基准上表现较为中等，且定价具有成本效益。

---

## 2. 耻辱礼堂

**原文标题**: Assembly Hall of Shame

**原文链接**: [https://github.com/xoreaxeaxeax/asm-hall-of-shame](https://github.com/xoreaxeaxeax/asm-hall-of-shame)

本文介绍了**Assembly Hall of Shame**，这是克里斯托弗·多马斯（Christopher Domas）的一个研究项目，它将传统的性能优化理念颠倒过来：不是让指令执行得更快，而是寻找x86、ARM和RISC-V平台上**绝对最慢的单指令执行**。

**规则：** 允许进行设置，但只对一条指令计时。陷阱/模拟指令仅对陷阱本身计时，指令必须不可中断，并且`rep movs`/`pause`被取消资格。时间按基准时钟归一化。

**当前x86冠军：** AMD Ryzen 7 5800H上的`fxrstor64`。它从高延迟的MMIO区域加载512字节的FPU/MMX/XMM状态。创纪录的版本在加载进行期间使PCIe结构处于饥饿状态：其他CPU核心以紧密的4字节读取反复访问另一个MMIO寄存器，用非posted事务使根复合体饱和。被计时的指令在这些流量后面排队等待。

- **得分：** 198,002,498,236个周期（约62秒）

**排行榜亮点（除非另有说明，均为Intel i7-8559U）：**
- `nop`：1个周期
- `nop16`：20个周期
- `idiv`：77个周期
- `enter` 深度31：112个周期
- `fldl` 非规格数辅助：133个周期
- `fsin` 特殊值：257个周期
- `mfence`（写缓冲区饱和时）：326个周期
- `lock xaddl` 分裂锁：865个周期
- `fdiv` 次正规数辅助：883个周期
- `cpuid` 叶6：1,248个周期
- `rdrand`（熵池耗尽时）：5,579个周期
- `wrmsr`（Zen上的MCG_CTL）：34,304个周期
- `wbinvd` 完全缓存写回：160万个周期
- 来自ACPI PM块的`in`：1250万个周期
- 通过`mov`、`movq`、`vmovdqu xmm/ymm`以及非对齐`vmovdqu`进行的MMIO GPU寄存器读取可达数亿至数十亿个周期
- `fxrstor64` 基线：746亿个周期；冠军版本：1980亿个周期

一个带有AMX状态（约8KB）的推测性`xrstor64`被认为是有望达到未来万亿周期级别的挑战者。ARM和RISC-V排行榜尚未确定（TBD）。

---

## 3. Databricks将AI编码支出降低了70%

**原文标题**: Databricks drove down AI coding spend 70%

**原文链接**: [https://www.databricks.com/blog/managing-ai-coding-costs-scale](https://www.databricks.com/blog/managing-ai-coding-costs-scale)

Databricks 及其他大型 AI 采用者（包括 Stripe、Coinbase、Uber 和 Ramp）已经找到了控制激增的 AI 编码成本的方法，同时仍让开发者广泛使用强大的工具。他们的目标是“双重使命”：在可预测的每用户成本范围内，提供最大可用性的 AI 工具，同时将摩擦降到最低。

核心理念是追求**效率前沿**——日常编码中最佳的“每美元智能”——而不是智能前沿。大多数日常开发并不需要顶级推理能力，因此更便宜的模型往往就能达到质量门槛。

关键成本杠杆：

1. **在内部评估后快速采用更新、更低成本/开源的模型**，因为公开基准测试常常误判真实世界的编码表现。
2. **通过元工具层保持模型灵活性**，该层在将工作分派给不同底层工具层/模型的同时提供一致的用户体验，避免锁定。
3. **智能路由**：使用请求级路由、任务级路由或升级/委派模式，将每个任务发送到最便宜且能胜任的模型。Databricks 报告称，其 Smart Router 在保持质量的同时将平均任务成本降低了 30% 以上。
4. **用可见性、支出闸门和降档取代硬性预算**：向开发者展示实时支出，添加自动清除的警告，并将重度使用者转移到更便宜的模型，而不是完全切断。
5. **降低 token 开销**：压缩上下文，使用较少“闲聊”的工具层，优化提示缓存，并将任务拆分为更小的单元。Databricks 在无质量损失的情况下将生成的 token 及相关成本削减了近 50%。

这些技术需要集中式基础设施，尤其是用于模型管理、预算、配置和日志记录的 **AI Gateway**。Databricks 已将其关键组件开源或免费发布：**Unity AI Gateway** 和 **Omnigent**。文章总结道，指数级的 AI 成本增长可以通过工程和治理来解决，而不是通过限制 AI 采用。

---

## 4. 古代图书馆——1,060部希腊语/拉丁语文本，点击任意单词即可解析

**原文标题**: Ancient Library – 1,060 Greek/Latin texts, click any word to parse it

**原文链接**: [https://ancientlibrary.net/](https://ancientlibrary.net/)

该文章介绍了一个在线数字图书馆，收录了1060部古典希腊语和拉丁语文本。其核心特色是完整解析阅读器：用户可点击任何文本中的任意单词，查看其词元、形态分析及完整的词典条目——拉丁语对应刘易斯与肖特词典，希腊语对应利德尔-斯科特-琼斯词典。

该馆藏包含140位作家的767部希腊语作品和293部拉丁语作品，按体裁分类。拉丁语类别涵盖史诗、抒情诗/哀歌、悲剧、喜剧、历史、传记、演说/修辞、哲学、书信、说教/技术著作、神话/颂歌/宗教、讽刺/寓言、散文小说、科学/医学及语法/参考。希腊语类别同样包括史诗、抒情诗/哀歌、悲剧、喜剧、历史、地理/旅行、传记、演说/修辞、哲学、说教/技术著作、神话/颂歌/宗教、讽刺/寓言、散文小说、科学/医学、语法/参考，另加圣经文本和早期基督教著作。

该图书馆旨在为古典正典提供完整的阅读资源，将原文与便捷的语法和词汇工具整合于同一界面。

---

## 5. 应对关键网络能力的新前沿

**原文标题**: Responding to the next frontier of critical cyber capabilities

**原文链接**: [https://openai.com/index/responding-next-frontier-critical-cyber-capabilities/](https://openai.com/index/responding-next-frontier-critical-cyber-capabilities/)

无法访问文章链接。

---

## 6. Oracle 禁止 OpenJDK 使用人工智能生成的代码

**原文标题**: Oracle bans AI-generated code from OpenJDK

**原文链接**: [https://app.dealroom.co/news/feed/oracle-bans-ai-generated-code-from-openjdk-despite-ellison-s-claim-oracle-isn-t-writing-its-own-code](https://app.dealroom.co/news/feed/oracle-bans-ai-generated-code-from-openjdk-despite-ellison-s-claim-oracle-isn-t-writing-its-own-code)

甲骨文已禁止向OpenJDK（由其管理的开源Java项目）贡献AI生成的代码。该政策引用了安全、安保和知识产权风险。开发者可以在私下使用大型语言模型进行调试和代码审查，但不能将AI生成的内容提交到代码库、拉取请求或其他项目渠道。

这一决定与甲骨文的内部做法形成鲜明对比。联合创始人拉里·埃里森最近声称，AI模型现在编写了甲骨文的代码，而联合首席执行官迈克·西西利亚则称赞AI工具帮助较小的工程团队更快交付。

另外，甲骨文今年将投资700亿美元用于数据中心扩建。这笔支出促使信用机构标普将甲骨文的评级下调至BBB-，仅比垃圾级高一级，理由是投资回报不确定。

---

## 7. 五十万个超大质量黑洞的全天图

**原文标题**: An all-sky map of half a million supermassive black holes

**原文链接**: [https://www.sdss.org/black-hole-mapper-release-20/](https://www.sdss.org/black-hole-mapper-release-20/)

斯隆数字巡天第20次数据发布（DR20）标志着其黑洞测绘者（BHM）项目的重要里程碑，该项目致力于研究超大质量黑洞和活动星系核（AGN）。DR20首次纳入了拉斯坎帕纳斯天文台南半球的光学BOSS光谱数据，以及阿帕奇角天文台的观测数据。此次发布包含超过330万条光学光谱，覆盖50万个星系和150万颗恒星。

其中关键组成部分是SPIDERS项目，它将SDSS光学光谱与eROSITA X射线数据相结合，为约20万个X射线源识别并测量红移——这是迄今对X射线目标进行的最大规模统一光谱后续观测。其中大多数是正在吸积的超大质量黑洞。这些数据为稀有、明亮的类星体提供了最严格的约束，揭示了早期宇宙中存在更多巨型黑洞，且亮AGN的空间密度高于预期。该数据还发现了许多被光学/紫外巡天遗漏的隐藏黑洞，表明70%至90%的超大质量黑洞增长发生在尘埃和气体之后，或处于X射线抑制阶段。

此次发布还突出了变异性研究：反响映射项目通过测量时间延迟来确定黑洞质量，而AQMES项目则追踪类星体的变异性、外流和变脸类星体。一些不寻常的光谱需要人工目视检查，这项工作也已纳入DR20。

在运行层面，SDSS-V在两台望远镜上使用机器人光纤定位系统，以实现快速多目标光谱观测。所有DR20数据均可通过SDSS档案库公开获取，并提供增值星表和教程。与eROSITA的合作展示了结合X射线和光学巡天来理解黑洞在宇宙时间尺度上增长的强大能力。

---

## 8. 如果一个整个工人类别对自己的职业失去信心，会发生什么？

**原文标题**: What happens if an entire class of workers loses faith in their careers

**原文链接**: [https://www.noemamag.com/why-is-everyone-in-tech-so-sad/](https://www.noemamag.com/why-is-everyone-in-tech-so-sad/)

以下是文章的精简摘要：

**摘要：亚伦·霍沃斯《为什么科技圈所有人都那么悲伤？》**

这篇文章探讨了知识工作者中日益增长的存在主义危机，他们越来越觉得自己的职业生涯毫无意义。科技、咨询和金融等领域的专业人士正在经历幻灭——梦想着逃去农场、拾起模拟时代的爱好，并质疑自己工作的根本意义。

霍沃斯将这种现象与“工作主义”联系起来，这个词由德里克·汤普森在2019年提出，用来描述工作如何取代宗教，成为高学历专业人士的意义、社群和身份认同的来源。工作主义起到了“鸦片”的作用，使工作者忽视了其工作缺乏利他性目的这一现实——这正是大卫·格雷伯在《狗屁工作》中记录的事实。与以往的中断不同，当前的焦虑是存在主义层面的，而非纯粹经济层面的，甚至连那些受到良好保护的高级专业人士也未能幸免。

核心威胁是人工智能。随着AI智能体越来越多地执行实际工作——起草战略、搭建网站、生成报告——知识工作者沦为数字大军的单纯管理者，与具体工作又隔了一层抽象。霍沃斯引用居伊·德波的《景观社会》来论证，工作主义从来都是关于“看起来有价值”而非“真正有价值”。AI将这种抽象推至极致，使幻觉变得清晰可见，从而可能“戳破”工作主义的泡沫。

组织面临着一个悖论：高管们希望AI能减少人力和协作，但恰恰是那些人际关系和协作式问题解决——即“混乱的中间地带”——维系着工作者的信念和组织的凝聚力。霍沃斯警告说，如果整个阶层的工作者对自己的职业失去信念，我们可能会发现，当维系公司与员工的结构彻底崩塌时，会发生什么。

---

## 9. 新墨西哥州法院命令Meta支付5.67亿美元，因其对儿童心理健康造成伤害

**原文标题**: New Mexico court orders Meta to pay $567m over harms to children’s mental health

**原文链接**: [https://www.theguardian.com/technology/2026/aug/06/new-mexico-court-meta](https://www.theguardian.com/technology/2026/aug/06/new-mexico-court-meta)

美国新墨西哥州一家法院裁定，Meta必须支付5.67亿美元，投入一项旨在应对其平台对儿童心理健康造成损害的基金。此前，在陪审团认定Meta明知故犯地伤害儿童并隐瞒对儿童性剥削的知情后，该公司于今年3月被处以3.75亿美元罚款，两项合计使总额达到9.42亿美元。

该裁决拨款4.2亿美元用于青少年治疗服务，其余资金将在五年内用于资助宣传、预防和筛查项目。法官布莱恩·比德沙伊德还要求Meta进行运营调整：Facebook和Instagram必须增加横幅界面以解释安全工具，改进年龄验证技术（包括基于人工智能的年龄预测和专门的13岁以下用户模型），对疑似未满13岁的用户要求提供年龄证明，创建学校工作人员举报门户，并删除13岁以下用户的个人数据。Meta须每半年提交一次合规报告。

法院以联邦儿童隐私法律和公平性考量为由，拒绝要求进行更广泛的年龄验证。新墨西哥州总检察长劳尔·托雷斯称这一裁决是家庭的胜利。Meta对此表示异议并计划上诉，强调其安全措施，并称相关指控歪曲了事实。

这笔金额相对于Meta约600亿美元的年利润而言规模不大，但此案只是众多案件之一。Meta还面临其他州的诉讼，包括田纳西州的一起案件以及加州的一起联邦案件。专家认为这可能是一个转折点，各州正在寻找即使没有新的联邦法律也能通过诉讼来监管社交媒体危害的途径。

---

## 10. 逆向工程中的心理战

**原文标题**: Psychological Warfare in Reverse Engineering

**原文链接**: [https://github.com/xoreaxeaxeax/repsych](https://github.com/xoreaxeaxeax/repsych)

REpsych 是 Christopher Domas（@xoreaxeaxeax）开发的一个概念验证工具集，它通过程序的控制流图（CFG）生成图像。REpsych 生成的不是典型的函数 CFG，而是能够在视觉上形成所选图像的 CFG。该项目的主要目的是证明这种做法的可行性；实际应用目前仅限于推测，并在 DEF CON 演讲中进行了讨论。

该工具在已测试的 IDA Pro 版本上运行可靠，在其他 CFG 查看器（如 Hopper、BinNavi 和 radare2）上则部分可靠。

用法：
- 将源图像以 24 BPP 位图格式保存在 `gfx/` 文件夹中。
- 运行 `make image`，其中 `image` 是不带扩展名的文件名。
- 会生成两个可运行的程序：`repsych_v1` 和 `repsych_v2`，它们各自使用不同的策略来确保 CFG 节点的正确放置。

提示：
- 该工具为每个像素创建一个基本块/CFG 节点，因此建议使用小图像（不超过 100x100）。
- 对于文本图像，先转换为 2 BPP 黑白位图，再转换为 24 BPP，以去除非黑/白颜色并改善 CFG 效果。

文章包含示例和参考文献，完整技术详见 Domas 的 DEF CON 演讲和幻灯片。

---

## 11. 本周App Store被拒：暗黑时刻

**原文标题**: App Store Rejection of the Week: Dark Hours

**原文链接**: [https://daringfireball.net/2026/08/app_store_rejection_of_the_week_dark_hours](https://daringfireball.net/2026/08/app_store_rejection_of_the_week_dark_hours)

文章讲述了苹果拒绝《Dark Hours》一事，这是一款由开发者Terry Godier制作的iOS天文应用。苹果应用商店的审核人员以该应用属于占星术为由予以拒绝，尽管该应用没有星座运势、塔罗牌功能或任何与占星术相关的内容。当Godier提出申诉时，苹果的应用审查委员会维持了拒绝决定，并错误地声称该应用包含“实时塔罗牌解读功能”。

作者认为这是一个明显且容易避免的错误：《Dark Hours》一眼就能看出是一款精心制作的天文应用，而非占星术的伪科学。他们指出“astronomy”和“astrology”这两个词不幸地相似，但强调只需快速浏览一下应用，就能明显看出二者的区别。一个合理的审核流程本应在开发者澄清后纠正这一错误。然而，苹果的申诉流程却在一个虚假说法上变本加厉。

这篇文章还强调了《Dark Hours》的质量：它采用原生Liquid Glass UI、滚动流畅、排版精美，作为原生应用比网页更有用。作者总结道，苹果的拒绝不仅损害了开发者的利益，也违背了苹果自身的利益，因为App Store本应推崇这类高质量应用，而不是基于荒谬的理由将其拒绝。整体信息是：错误在所难免，但一个运转正常的审核系统会迅速纠正明显错误——而苹果的App Store审核流程在这方面是失败的。

---

## 12. 卡尔的必读书目

**原文标题**: Carl's Required Reading

**原文链接**: [https://carlkolon.com/reading/](https://carlkolon.com/reading/)

卡尔的必读书单是一份精选的技术文章和书籍清单，由工程负责人卡尔发送给他的团队，以分享关于创造优秀软件的见解。该清单按主题分类，包含标星号的最爱内容，并简要说明每项内容为何重要。

**编程实践**：卡尔强调复杂性是坏事，警告避免过早抽象和投机性功能。他推荐“解析，而非验证”（Parse, Don't Validate），将数据属性编码到类型中；并推荐“行为局部性”（Locality of Behavior），以平衡过度使用辅助函数造成的过度工程。

**平台**：史蒂夫·耶格（Steve Yegge）关于谷歌平台的吐槽之作被重点推荐，因其在服务可访问性和组织设计方面的经验教训。

**前端**：卡尔倡导简单、声明式的前端。他推荐HATEOAS和React的函数式风格，警告不要过度使用状态、副作用以及像`useMemo`/`useCallback`这样的钩子。

**数据库**：卡尔公开反对ORM，引用《计算机科学的越南》和对象-关系阻抗失配。他还推荐PostGIS、Postgres性能技巧，以及比`LIMIT/OFFSET`更好的分页方法。

**异步编程**：他收录了一篇asyncio概述和鲍勃·奈斯特龙（Bob Nystrom）的《你的函数是什么颜色？》来解释异步的根本限制。

**编码**：推荐经典的Unicode文章，以避免解析问题。

**书籍**：清单包括《设计心理学》、《数据密集型应用系统设计》、《手写解释器》、《程序员范畴论》和《人月神话》。

总体而言，这篇文章反映了卡尔的强烈观点——尤其是反对ORM和复杂前端——同时承认读者可能不同意。

---

## 13. 让Postgres的分析查询速度提升300倍：批处理、算子融合与SIMD

**原文标题**: Making Postgres 300x faster for analytics: batching, operator fusion, and SIMD

**原文链接**: [https://malisper.me/how-we-made-postgres-hundreds-of-times-faster-the-query-engine/](https://malisper.me/how-we-made-postgres-hundreds-of-times-faster-the-query-engine/)

pgrust，一个用 Rust 编写的 Postgres 扩展，发布了 v0.2 版本，性能提升显著：比之前的版本快 10 倍，在 OLTP 上比 Postgres 快 30%，在 Clickbench（ClickHouse 的分析基准测试）上快 300 倍，甚至超过了 ClickHouse。文章重点关注查询引擎，它贡献了 300 倍提升中约 10 倍的部分。

Postgres 设计时磁盘 I/O 是瓶颈，但现代 RAM、NVMe 和分析工作负载使 CPU/内存成为限制因素。Postgres 查询引擎使用 Volcano 模型：每个计划节点通过 `next()` 一次返回一行，这带来了逐行函数调用的开销以及糟糕的 CPU 流水线性能。该模型的一个简化 Rust 版本对 5 亿个浮点数求和耗时 1.3 秒，而原始循环只需 358 毫秒，真实的 Postgres 则需约 20 秒。

三项优化实现了这一加速：

1. **批处理**：将逐行处理替换为固定大小的批次（例如 1024 行），减少逐行开销并在栈上分配缓冲区。这使时间缩短到 480 毫秒（比 Volcano 快 2.7 倍）。

2. **算子融合**：将常见的节点对（例如扫描+聚合）合并为一个节点，消除复制和函数调用开销。这达到了与原始循环相同的 358 毫秒（3.6 倍）。

3. **SIMD**：使用 CPU 向量指令在每条操作中处理多行。对于浮点求和，编译器通常会因非结合性而避免自动向量化，但手写的 SIMD（AArch64）运行时间为 135 毫秒（比 Volcano 基线快 9.6 倍）。

文章指出，JIT 编译可以将算子融合推广到任意查询，有望带来进一步提升。总体而言，这些技术使 pgrust 在分析工作负载上比 Postgres 快数百倍。基准测试在 AWS c8g.4xlarge 上运行，并禁用了并行查询。

---

## 14. 与爬虫搏斗的一年：我的150万页面网站

**原文标题**: A year of fighting scrapers on my 1.5 million-page website

**原文链接**: [https://patronview.com/news/99-percent-of-my-website-traffic-is-bots/](https://patronview.com/news/99-percent-of-my-website-traffic-is-bots/)

无法访问文章链接。

---

## 15. Kitesurf：在V8隔离环境中运行的智能体优先浏览器

**原文标题**: Kitesurf: Agent-first browser that runs in V8 isolates

**原文链接**: [https://blog.cloudflare.com/kitesurf/](https://blog.cloudflare.com/kitesurf/)

Cloudflare宣布推出**Kitesurf**，这是一款专为AI代理打造的新型浏览器，完全运行在Cloudflare Workers上。之所以开发它，是因为人们意识到Chromium是为人类而非AI优化的——代理需要的是效率、Token数量和可扩展性，而不是标签页或主题。Kitesurf现通过Browser Run的CDP端点（使用`browser=kitesurf`）免费提供测试版。

基于最新的Workers能力（Wasm、Dynamic Workers、RPC、Durable Objects），Kitesurf使用编译为Wasm的Rust组件：**Blitz**用于HTML/CSS解析，**Stylo**用于CSS，**Boa JS**用于求值，**Parley**用于文本整形。其架构包括：

- **Engine**：面向公众，保存会话状态，提供CDP/REST API。
- **PageScript**：通过Dynamic Workers处理DOM和JavaScript，按页面/OOPIF隔离。
- **PageRenderer**：将场景栅格化为PNG/JPEG/PDF，无状态且可随时丢弃。

安全性由单个**SandboxOutbound** worker强制执行，该worker处理所有网络访问、CORS、cookie和过滤。该浏览器假设每个页面都不可信，并据此隔离组件。

Kitesurf通过了**215,000多项Web平台测试**，并且每周都在改进。性能基准测试显示，在截图和HTML提取方面，它比Chromium节省**3–7倍的CPU和内存**，但由于软件渲染，其墙钟时间约慢1.7倍。该项目通过运行《毁灭战士》得到验证。像Puppeteer、Playwright和MCP代理等客户端均可通过CDP正常工作。

---

## 16. 《克劳德赛》：克劳德·费布尔5对荷马《奥德赛》的逐行翻译

**原文标题**: The Claudyssey: A line-for-line translation of Homer's Odyssey by Claude Fable 5

**原文链接**: [https://theclaudyssey.com/](https://theclaudyssey.com/)

《克劳德赛》是荷马《奥德赛》的完整英译本，全部12，107行与希腊原文逐行一一对应。译本采用宽松的五至六音步无韵格律，保留了荷马式的重复修饰语和叠句，并包含1，260条学术注释，以及完整的人名地名索引，附有发音和引文出处。该译本可在线获取，也有EPUB、Kindle/AZW3和PDF格式，另有完整的有声书版本，由单一朗读者录制。希腊语底本为A. T.默里1919年勒布版文本，源自珀尔修斯数字图书馆，项目的源代码和构建材料保存在一个代码仓库中。

---

## 17. 为什么牛津街这家商店的屋顶上有海狸雕像？

**原文标题**: Why Are There Statues of Beavers on Top of This Oxford Street Shop?

**原文链接**: [https://londonist.com/london/history/oxford-street-beavers](https://londonist.com/london/history/oxford-street-beavers)

这篇文章解释了为何四尊海狸雕像坐落在伦敦牛津街105-109号的建筑顶部，该建筑如今是Tiger和Footlocker的店面。这里曾是亨利·希斯的帽子工厂，建于1887年。这些海狸雕像象征着工厂的主要原材料——海狸毛皮，用于制作毡制高顶礼帽。海狸毛皮因其防水性能而比兔毛更受珍视，因此这些雕像也起到了宣传希斯帽子品质的作用。

该建筑上还有乔治四世和维多利亚女王的浮雕，分别对应公司1822年的创立年份和工厂的建造年代。亨利·希斯以现金价格直接从工厂销售产品，并拒绝向合作社供货。

自16世纪50年代以来，海狸帽一直风行一时，欧洲海狸曾被猎杀至濒临灭绝，直到加拿大进口的毛皮使这一贸易复兴。到19世纪中期，丝绸开始取代海狸毛皮，成为高顶礼帽的首选饰面材料。

文章还指出了制帽业的危害：工人用硝酸汞处理海狸皮，这一工序被称为“胡萝卜化”。汞中毒损害了工人的神经系统，导致震颤、易怒、抑郁和痴呆——这很可能就是“疯得像帽匠”这一说法的由来。尽管这些危害已为人所知，但生产工艺的改变却十分缓慢。

---

## 18. 莫比乌斯环填字游戏

**原文标题**: Möbius-Strip Crosswords

**原文链接**: [https://quuxplusone.github.io/blog/2026/08/04/mobius-crossword/](https://quuxplusone.github.io/blog/2026/08/04/mobius-crossword/)

文章探讨了在莫比乌斯带上制作填字游戏的想法，这一探讨源于关于发明家老罗伯特·吉尔伯特的说法。吉尔伯特开发了一款名为“帕果帕果”的填字游戏，他的儿子乔纳森认为它可能是一个莫比乌斯带上的“无限填字谜题”。作者对此联系表示怀疑，但这一猜测在阿德里安娜·拉菲尔的学位论文和书中被当作事实重复，后来内森·拉斯特的书中也如此。

文章接着探讨了莫比乌斯带填字游戏实际上会涉及什么。杰夫·威克斯已经制作过环面填字游戏，甚至克莱因瓶填字游戏，但真正的莫比乌斯带是不可定向的：沿着环移动会使形状翻转成其镜像。因此，像 S 这样的普通字母会变成反的，这意味着只有垂直或水平对称的字母才适用，具体取决于环的方向。这极大地限制了可能的单词。

作者提出了一种对角“梯子”设计，其中的条目会使用 O、X、L、W、H、C 和 D 等字母翻转成镜像词。他提供了一个可打印纸条上的小型填字游戏示例，但承认它很薄弱：填词糟糕、条目重复，而且从他的词典中只有 23 对可能的单词。较长的可镜像单词极为罕见。他最后邀请读者创作更好的莫比乌斯带填字游戏，或分享更多关于吉尔伯特“帕果帕果”的信息。

---

## 19. 激进研究暗示地球生命曾两度起源

**原文标题**: Radical Study Suggests Life on Earth Arose Twice

**原文链接**: [https://www.sciencealert.com/radical-study-suggests-life-on-earth-arose-from-non-living-matter-twice](https://www.sciencealert.com/radical-study-suggests-life-on-earth-arose-from-non-living-matter-twice)

发表在《科学进展》（*Science Advances*）上的一项激进研究提出，地球上的生命可能出现了**两次**，而非一次。由杜塞尔多夫海因里希·海涅大学的威廉·马丁领导的研究人员认为，生命的两大主要谱系——**细菌与古菌**——独立完成了从非生命到自由生活细胞的转变。

该研究聚焦于核心代谢网络，该网络包含约400个反应，将氢气、二氧化碳、氨和磷酸盐等简单化合物转化为生命的构件。通过分析细菌和古菌基因组中的酶结构，研究团队发现，最后普适共同祖先（LUCA）仅拥有其中约一半反应所需的酶。另一半则可能由热液喷口等环境中的天然金属催化。

作者提出了代谢起源的四个阶段：首先，环境中的金属驱动反应；然后，原始细胞开始生成自身的酶，逐步取代金属催化剂；最终，自由生活细胞变得完全独立。关键在于，这一过程发生在**细菌与古菌分离之后**，意味着每个谱系都为相同的基本反应独立演化出了不同的酶。

研究还表明，**亚磷酸盐和钯**——两者均存在于热液喷口中——可以在代谢磷酸化反应中替代ATP和酶，为生命起源前的能量机制提供了一种合理的解释。

研究人员得出结论：虽然**遗传密码只有一次起源**，但作为自由生活细胞的生命则有**两次起源**。如果这一结论得到证实，经典的生命之树或许需要修正：生命可能不是源于单一主干（LUCA），而是有两个独立的主干，它们在完全具备生命特征之前就已经分化。

---

## 20. 展示 HN：textlog——一个安静、纯文本的微博客平台，开源，无 JavaScript

**原文标题**: Show HN: textlog – A quiet, text-only microblogging platform, open-source, no JS

**原文链接**: [https://textlog.cc/about](https://textlog.cc/about)

textlog 是一个开源、纯文本的微博客平台，旨在提供更安静、更少表演性的分享体验。它不使用 JavaScript，并将笔记限制在 280 个字符以内，鼓励每次只表达一个想法。该平台刻意保持小巧直接，专注于文字——笔记、人物、话题标签和对话——没有互动套路，也没有积累受众的压力。个人资料和笔记都是公开的，加入免费，用户可以随时下载或删除自己的数据。捐款是可选的，用于支持该服务。平台要求用户相互尊重，只分享属于自己的内容，并避免骚扰、辱骂、垃圾信息、冒充他人或非法行为；管理员可能会删除有害内容。接下来的步骤包括加入社区或浏览现有笔记。

---

## 21. 从陌生人中建立社群（2023）

**原文标题**: Building community out of strangers (2023)

**原文链接**: [https://tracydurnell.com/2023/11/30/building-community-out-of-strangers/](https://tracydurnell.com/2023/11/30/building-community-out-of-strangers/)

Tracy Durnell解释了她为何将博客链接列表扩展至所有她关注的RSS订阅源，包括陌生人的个人博客。这一转变反映了她更广泛的转向——从新闻消费和谷歌服务，转向优先关注网络中的人际联系与真实连接。她现在选择订阅源的标准是社交性，而不仅仅是信息量，并且她欣赏个人博客，因为它们以悠闲、人性化的尺度融合了社交媒体的精华——照片、评论、书评。与表演性的社交媒体相比，博客显得真实，提供日常的愉悦与真诚的兴趣。

关注陌生人的博客会建立单向但真实的准社会关系，她通过Webmention协议积极与评论者和其他博主互动。她认为博客本质上是社交性和社区性的：博主们慷慨地互相链接，回应彼此，并共同塑造独立网络的规范。她强调独立网络促进了对话与相互联系，并鼓励博主们在人们寻找新的网络家园时树立欢迎的规范。

最后，她主张复兴博客链接列表作为联系的工具。虽然博客链接列表因极简设计趋势和被遗弃的网站而衰落，但它们可以被重新发明，以帮助建立互联的博客圈。对Durnell而言，指向他人的网站是一种有意识的社区建设行为，也是确保独立网络保持活力与包容性的一种方式。

---

## 22. 展示 HN：Wyzer 编程语言

**原文标题**: Show HN: Wyzer Programming Language

**原文链接**: [https://github.com/Wyzer-Lang/wyzer](https://github.com/Wyzer-Lang/wyzer)

Wyzer 是一种静态类型、编译型编程语言，它将面向资源编程与编排式编程以及 Perceus 引用计数内存模型相结合。其主要目标是将安全保证扩展到单个进程之外——通过单一所有权规则覆盖内存、线程和分布式网络。

该语言源于一个已察觉的空白：Rust 能保证进程内的安全性，但不处理分布式死锁、协议不匹配或跨服务正确性问题。Wyzer 旨在通过编排式编程解决这些问题，即一个网络定义为每个参与者生成代码，让编译器检查通信规则。

主要语言特性包括：
- 默认不可变变量（`let`），仅通过 `var` 实现可变，通过 `const` 定义编译时常量
- 结构体与直接字段访问
- 标准 `if`/`else`、`while`、`for` 循环，条件无需括号
- 通过 `Result<T, E>` 和 `match` 表达式进行显式错误处理

该项目承认许多理念已经存在——Perceus 源自 Koka 和 Lean 4，编排式编程源自学术研究。新颖之处在于将它们结合成一个统一的、针对内存、线程和网络的单一所有权模型。该语言不采用垃圾回收器，旨在实现类似 Rust 的安全性，但无需 Rust 的复杂性或借用检查器。

Wyzer 仍处于早期研究阶段，未解决的问题已明确标注。欢迎贡献，并提供文档、Discord 服务器和仓库。AI 辅助被用于提交信息、研究和品牌设计。一个值得注意的示例是重写的甜甜圈动画（`donut.wyz`）。

---

## 23. Petri网作为音乐音序器

**原文标题**: Petri Nets as a Music Sequencer

**原文链接**: [https://blog.stackdump.com/posts/petri-net-sequencer](https://blog.stackdump.com/posts/petri-net-sequencer)

本文介绍了 beats.bitwrap.io——一个完全基于佩特里网构建的音乐音序器：圆（库所）通过箭头（变迁）连接，令牌在其中流动——而非传统的钢琴卷帘或 DAW。每个音符都是图表中移动的一个令牌。

每个乐器拥有自己的库所环。令牌每拍跳动一步，落在特定位置时触发声音。鼓模式由比约克伦德算法生成，该算法将 K 次击打均匀分布在 N 步上（例如，8 步中分布 3 次击打产生特雷西略节奏）。不同长度的环并行运行，自然形成复节奏。旋律、贝斯线、琶音与和声垫都使用相同的环结构，音符携带音高、力度和时值。十九种风格预设提供音阶、和弦、鼓模式、摇摆和人性化，并使用种子随机性——相同的种子始终生成相同的轨道。

歌曲结构（前奏、Drop、Breakdown）使用控制网：触发"静音踩镲"等命令而非播放音符的环。第一个版本效率低下——三分钟的曲目需要 37,148 个库所和 22 MB 文件。利用抑制弧的倒计时定时器从单个圆中排空大量令牌，将其缩减至 800 个库所和 242 KB。

自动 DJ 过渡也实现为带触发宏绑定的单变迁控制网，让佩特里网执行器本身处理拍节同步调度，消除了竞态条件。

关键优势：令牌状态是唯一的状态（确定性强、可移植），图表可进行可视化检查以辅助调试，乐器网具有模块化特性。技术栈极简：约 400 行原生 JS 实现执行器，约 700 行实现音序器工作线程，使用 Tone.js 进行音频合成，不依赖任何打包器或框架。

---

## 24. 品味是唯一剩下的东西

**原文标题**: Taste Is All That's Left

**原文链接**: [https://notashelf.dev/posts/taste-is-all-thats-left](https://notashelf.dev/posts/taste-is-all-thats-left)

当AI消除摩擦，品味成为稀缺技能

文章认为，AI已经消除了软件开发中传统的摩擦成本，而剩下的稀缺技能是“品味”——即人类的判断力。

**核心观点：**

- 构建软件曾经需要高昂的付出。这堵“墙”限制了产出数量，并强制执行了质量底线；只有那些在制造过程中经受住成本考验的东西才能存在。
- AI拉平了从想法到成品的距离。现在任何人都可以免费生成看似合理、“足够好”的产出，从而移除了那道经济过滤器。
- 现在重要的是品味：一种压缩的、无言的价值判断，在你能够解释之前就已经识别出质量（引用Pirsig的《质量》）。它不是偏好或风格，而是一种深刻的正确感。
- 品味不是从欣赏优秀作品中吸收而来的。它是在失败中慢慢建立的——做出糟糕的东西，与它们共处，从错误中学习。摩擦就是课程本身。
- 消除摩擦意味着新手可以流畅地生成，却跳过了培养判断力的学徒阶段。他们可以做出任何东西，但无法分辨自己*应该*做什么。
- 在经济层面，品味受到惩罚：有品味的人与没有品味的人以同样的速度发布产品，而品味在仪表盘上是不可见的。它无法衡量、无法量化，且需要独自对抗那些倾向于发布“还不错”作品的各种激励机制。
- 我们被“垃圾内容”淹没——不是错误，而是冷漠。稀缺的行为不再是制造，而是选择什么东西配得上存在。
- 这呼应了工厂时代Morris和Ruskin的争论：当制造变得免费，选择便成了手艺。
- 防御之道：坚守“不行，再来”的纪律。品味不可自动化、不可衡量，它是工作中真正属于你的最后一部分——是有人在乎过的证据。

一篇事后分析部分回应了关于AI代笔的指责，否认了这一点，并将文风归因于作者所受的影响。

---

## 25. 2027年内存产能据报已售罄

**原文标题**: 2027 memory capacity is reportedly sold out

**原文链接**: [https://www.ign.com/articles/ramageddon-continues-another-year-as-2027-memory-capacity-is-reportedly-sold-out](https://www.ign.com/articles/ramageddon-continues-another-year-as-2027-memory-capacity-is-reportedly-sold-out)

一份新报告指出，三星、SK海力士和美光2027年的DRAM和HBM全部制造产能已被预订一空，大部分通过长期采购协议卖给了AI公司。预计这将进一步推高零售内存价格，且没有计划增加额外供应。NAND存储需求也在上升，尽管供应尚未完全被消化；SSD价格已经上涨，其中西数SN7100在六个月内从110美元涨至189美元。内存危机也影响了硬件定价，包括近期Xbox Series X的涨价，以及Steam Machine的发布价格高于Valve原本的预期。文章指出，制造商尚未证实该报告，作者表达了自己的沮丧，希望AI泡沫破裂，让内存重新变得买得起。

---

## 26. 圣保罗居民将退化地区改造为城市森林

**原文标题**: São Paulo resident transforms degraded area into urban forest

**原文链接**: [https://saopaulosecreto.com/en/tiquatira-linear-park-en/](https://saopaulosecreto.com/en/tiquatira-linear-park-en/)

无法访问文章链接。

---

## 27. 为1948年IBM系统的真空管触发器模块通电

**原文标题**: Energizing a vacuum-tube flip-flop module from a 1948 IBM system

**原文链接**: [https://www.righto.com/2026/07/ibm-604-trigger-tube-module.html](https://www.righto.com/2026/07/ibm-604-trigger-tube-module.html)

本文描述了TR-3触发模块，它是IBM 1948年604电子计算穿孔机中的一种真空管触发器——一台可编程、读卡式计算器，使用了约1300只真空管。像TR-3这样的插入式模块使电路紧凑且易于更换。TR-3使用两个交叉耦合三极管（双三极管，型号2033）构成一个环路中的两个反相器，从而存储一位数据，具有两个稳定状态。作者对该模块进行了逆向工程，上电后，通过按钮和氖灯演示了状态切换。文章解释了真空管的工作原理、反相器电路以及该触发器如何利用电平移位电阻和-100V偏压将高电压板极输出耦合到低电压栅极。输入脉冲采用交流耦合；负脉冲切换状态，而多个脉冲或正脉冲则无效。作者指出该电路当初性能不稳定，依赖仔细的电压平衡。从历史上看，该触发器可追溯到1919年埃克尔斯和乔丹的电路，后来用于高速计数器。ENIAC每个十进制数字使用十个触发器，而IBM工程师发明了使用四个触发器的二进制编码十进制（BCD）计数器，于1946年获得专利，并用于603和604。现代计算机使用数百万个触发器，如今已用晶体管实现。本文还强调了604相对于机电式机器的速度优势，以及它作为早期存储状态计算设备的角色。

---

## 28. 生物工程口香糖或可对抗HPV及其他微生物

**原文标题**: Bioengineered chewing gum may offer a way to fight HPV and other microbes

**原文链接**: [https://www.sciencedaily.com/releases/2026/08/260803080917.htm](https://www.sciencedaily.com/releases/2026/08/260803080917.htm)

一种新型生物工程口香糖可能有助于对抗与头颈癌相关的微生物。该口香糖由宾夕法尼亚大学研究人员在亨利·丹尼尔的领导下研发，采用含有FRIL（一种天然抗病毒蛋白）的扁豆提取物制成，并通过工程改造加入了protegrin（一种抗菌肽）。

在使用头颈部鳞状细胞癌患者口腔样本进行的测试中，该口香糖提取物使唾液中人乳头瘤病毒（HPV）水平降低高达93%，在口腔漱口液样本中降低80%。单次剂量还几乎消除了两种与癌症相关的细菌——牙龈卟啉单胞菌（Pg）和具核梭杆菌（Fn）。重要的是，与可能损害有益微生物并促进酵母菌生长的放射治疗不同，该疗法保留了有益的口腔细菌。

头颈部鳞状细胞癌是一种常见且侵袭性强的癌症，全球口咽癌发病率的上升与HPV感染有关。Pg和Fn感染与口腔癌患者较差的生存率相关。研究人员认为，这种口香糖最终可作为现有癌症治疗之外的辅助疗法，或作为预防感染和传播的措施。

研究结果发表在《科学报告》杂志上。研究团队指出，目前的癌症药物并未显著提高五年生存率，凸显了对可及且负担得起的方法的需求。该研究得到了美国国立卫生研究院及其他基金的支持。作者呼吁将该疗法推进到临床试验阶段，作为辅助或预防性选择。

---

## 29. 科学家在太阳表面发现开尔文-亥姆霍兹不稳定性

**原文标题**: Scientists discover Kelvin-Helmholtz Instability on the surface of the Sun

**原文链接**: [https://nso.edu/press-release/nsf-inouye-solar-telescope-enables-major-discovery-of-a-hidden-solar-process/](https://nso.edu/press-release/nsf-inouye-solar-telescope-enables-major-discovery-of-a-hidden-solar-process/)

科学家利用NSF丹尼尔·井上太阳望远镜在太阳表面发现了开尔文-亥姆霍兹不稳定性（KHI）——这是首次在太阳光球层对这一现象进行观测确认。这项发现发表在《自然》杂志上，可能有助于解释太阳外层大气如何被加热，以及磁能如何积累，从而引发影响地球技术的太阳耀斑和喷发。

KHI发生在两层相邻的流体或等离子体以不同速度运动时，产生剪切，进而发展成旋转的波浪状涡旋。井上望远镜的高分辨率揭示了这些微小的漩涡模式以及磁区边缘的暗条纹。通过将观测结果与计算机模拟（使用来自HAO和MPS的MURaM代码）进行比较，研究团队发现了数十个特征惊人的相似的涡旋结构，确认其起源于KHI。

研究人员认为，这些持续出现的涡旋可能充当一种“引擎”，扭曲和编织磁力线——这一过程称为通量编织——导致磁重联以及耀斑和日冕物质抛射等爆炸性太阳事件。KHI还能有效混合磁化和非磁化等离子体，增强磁扩散，有助于解释太阳快速的磁周期。此外，这种不稳定性很可能有助于解释长期存在的谜团：为何太阳日冕的温度比其表面高数百万度。

这一发现为太阳和恒星物理学打开了一扇新窗口，展示了井上太阳望远镜的独特能力。未来的工作将利用自动检测来研究KHI向上层大气输送多少能量，及其对磁场演化的更广泛影响。

---

## 30. AMD收购Taalas，通过将模型蚀刻到硅片中来提升推理性能

**原文标题**: AMD acquires Taalas to boost inference performance by etching models in silicon

**原文链接**: [https://www.theregister.com/systems/2026/08/06/amd-acquires-ai-chip-startup-taalas-to-boost-inference-performance-by-etching-models-into-silicon/5284344](https://www.theregister.com/systems/2026/08/06/amd-acquires-ai-chip-startup-taalas-to-boost-inference-performance-by-etching-models-into-silicon/5284344)

AMD已收购AI芯片初创公司Taalas，以提升AI推理性能。这家总部位于多伦多的公司成立于2023年，采用了一种截然不同的方法：不同于GPU将模型权重存储在HBM中，Taalas将权重直接刻入硅片，制造出模型专用集成电路（MSIC）。财务条款未披露，但这是一次全面收购。

Taalas的首款测试芯片HC1采用台积电6nm工艺制造，为Meta的Llama 3.1 8B模型提供推理服务时，吞吐量达到每秒16,960个token——比当时的Nvidia GPU快约48倍，比Cerebras的加速器快8.5倍。其即将推出的第二代芯片HC2预计今年夏天问世，目标是在单芯片上支持200亿参数。更大的模型可通过流水线并行拆分到多个加速器上；大约50颗芯片即可支持万亿参数模型。

AMD计划将Taalas技术与基于Instinct的Helios机架相结合，可能使用GPU进行提示词处理，使用Taalas加速器进行token生成。主要缺点在于：一旦模型被刻入硅片，更改模型就需要重新流片。不过，Taalas表示只需更换两层金属层，比完全重新设计更便宜、更快捷。这项技术最适合模型开发者、基础设施提供商和推理服务商。它还能降低测试时扩展的成本，让AI模型能够“思考”更久而无需承担高昂费用。

AMD预计该收购将在第四季度完成，尚待监管机构批准。

---

## 31. Piet 中的 quine——一张打印自身的 GIF 图像 [视频]

**原文标题**: A quine in Piet – a GIF image that prints itself [video]

**原文链接**: [https://www.youtube.com/watch?v=GwMtzhjCzyc](https://www.youtube.com/watch?v=GwMtzhjCzyc)

提供的文本不是一篇普通文章；它结合了一个视频标题和标准的YouTube页脚/法律样板文本。

该标题宣布了一段视频：**“Piet语言编写的奎因程序——一张自我打印的GIF图片。”** 这指的是用Piet编写的一个奎因程序——一种能自我复制的程序。Piet是一种使用彩色像素的深奥编程语言。该视频演示了一张输出自身源代码的GIF图片。

文本的其余部分是YouTube标准的法律/联系信息，包括：
- 面向新闻媒体、创作者、广告商和开发者的版权及联系链接。
- YouTube的条款、隐私政策、安全以及“YouTube运作方式”等版块。
- 公司详细信息：© 2026 Google LLC、桑达尔·皮查伊、Google位于山景城的地址、联系电话、电子邮箱和托管信息。
- 关于举报非法拍摄内容的通知。
- 免责声明：创作者在YouTube上展示或推荐的产�品由商家销售，并受商家条款约束；YouTube不出售这些产品，也不对其负责。

简而言之，主要内容是存在一个Piet奎因程序GIF视频，而其余内容只是YouTube的常规页面页脚，而非实质性的文章正文。

---

## 32. 原子钟

**原文标题**: Atomic Clocks

**原文链接**: [https://www.nist.gov/atomic-clocks/how-do-atomic-clocks-work](https://www.nist.gov/atomic-clocks/how-do-atomic-clocks-work)

原子钟利用原子作为超稳定的计时器，让现代技术——手机、GPS、金融交易和网络——保持同步。时钟由振荡机构和计数器组合而成；摆锤或石英晶体等人造振荡器会产生漂移，且彼此之间存在差异。相比之下，原子完全相同、不会磨损，并能产生极其稳定和精确的频率。

要制造原子钟，科学家需分离出单个原子，并用调谐到接近原子共振频率的激光照射它们。当光的频率与该频率匹配时，原子会吸收能量并发生“量子跃迁”，使科学家能够检测到精确的共振。这种共振光的周期便成为时钟的“嘀嗒”声。对于铯原子，官方的国际秒被定义为该光的9,192,631,770个周期。

自1949年NIST研制出第一台原子钟以来，其性能已大幅提升。如今最精密的原子钟即使从宇宙大爆炸起运行至今，误差也不会超过一秒——其精度比任何其他时钟高出数十亿倍。它们被用于全球授时、导航、电信和科学研究。文章还介绍了多种原子钟类型——束钟、喷泉钟和光钟——并强调了它们在日常技术和基础科学中的重要作用。

---

## 33. 发布 HN：ProvenMetal（YC S26）数天而非数周交付电路板

**原文标题**: Launch HN: ProvenMetal (YC S26) delivers circuit boards in days instead of weeks

**原文链接**: [https://provenmetal.com](https://provenmetal.com)

ProvenMetal（YC S26）是一家PCB制造服务商，可在数天内而非数周内交付电路板。其核心优势在于速度：最快五天即可完成制板，并提前提供确切的发货日期，且无隐藏加急费用。客户可根据自身进度要求在更快交付与更低成本之间进行选择。

该公司全程端到端管理整个制造流程。所有元器件均采购自经过审核的美国供应商，在组装前会依据客户的BOM核对元器件，并通过其自主管理下的美国合作方完成制造与组装。每块电路板在发货前均经过测试，并附带完整的质量记录，涵盖元器件、工艺及检测数据。

工作流程简单明了：客户发送文件，获得包含真实发货日期的真实报价，ProvenMetal负责物料采购、生产制造与验证。改版从客户上一版本基础上进行，因此后续版本返回速度更快。对于需要完全本土供应链的企业，ProvenMetal可将整个生产流程全部保留在美国境内。其定位瞄准那些无法等待通常四周交期、同时需要明确责任、可追溯性以及单一责任方全程把控生产的硬件团队。

---

## 34. 《今日美国》公司与Palantir合作分析受众数据

**原文标题**: USA Today Co., partners with Palantir to analyze audience data

**原文链接**: [https://www.niemanlab.org/2026/08/americas-largest-newspaper-chain-usa-today-co-partners-with-palantir-to-analyze-audience-data/](https://www.niemanlab.org/2026/08/americas-largest-newspaper-chain-usa-today-co-partners-with-palantir-to-analyze-audience-data/)

美国最大报业连锁公司《今日美国》报业集团宣布与软件公司Palantir达成合作，对其受众数据进行分析和变现。首席执行官迈克·里德表示，目标是"连接"每次访问和会话中的"信号"，将匿名互动转化为已知的第一方关系，以推动更快、更高价值的变现。这笔交易达成之际，整个行业的搜索流量持续下滑；《今日美国》报业集团报告2026年第二季度独立访问量为1.58亿，低于第一季度的1.8亿，总裁克里斯汀·罗伯茨将此归因于传统搜索推荐减少，而非内容需求下降。

Palantir因其与美国移民和海关执法局、美国国防部及以色列军方的合作而备受争议，其联合创始人彼得·蒂尔曾资助导致Gawker破产的诉讼。包括阿克塞尔·斯普林格、福克斯新闻和汤森路透在内的其他媒体公司也曾与Palantir合作。《今日美国》报业集团强调，所有数据仍归其所有，公司遵守隐私法律，编辑决策保持独立。

罗伯茨指出，世界杯报道产生了9700万页面浏览量，其中搜索流量占比近65%，表明搜索对即时性内容仍然重要。里德还提出，如果无法就AI摘要达成公平的授权协议，可能考虑屏蔽搜索引擎，称必要时会"切断并封锁"它们。此次合作反映了新闻出版商在搜索推荐持续下滑、寻求建立直接受众关系新途径之际所面临的更广泛挑战。

---

## 35. 什么是产品？

**原文标题**: What is a product?

**原文链接**: [https://roge.onwrite.app/what-is-a-product](https://roge.onwrite.app/what-is-a-product)

这篇文章认为，AI生成的原型即使看起来再惊艳，也不是真正的产品。文章指出，虽然现在任何人都能在几分钟内用AI生成一个网站、应用或克隆产品，但我们还没有看到AI生成的YouTube、Figma或Google等大型平台的竞争者。作者提醒人们不要被病毒式传播的演示和"localhost"项目所迷惑，指出大多数甚至连原型都算不上——只是演示或草稿。相比之下，真正的产品拥有实际用户、真实市场，并能解决真正的问题。没有人能用AI alone取代科技巨头，原因不在于缺乏智力或技能，而在于产品不仅仅是各部分的总和；它需要用户采纳、用心维护和现实世界的实用性。如果你做的东西没人用，那它就不是产品——而是玩具。文章鼓励人们不要因为拥有大量免费的AI工具却没做出什么成果而感到自卑，因为几乎没有人能把原型变成有意义的产品。归根结底，一个产品的定义取决于它的用户，而非它被创造出来的难易程度或速度。

---

## 36. 欢迎尼泊尔政府加入 Have I Been Pwned

**原文标题**: Welcoming the Nepalese Government to Have I Been Pwned

**原文链接**: [https://www.troyhunt.com/welcoming-the-nepalese-government-to-have-i-been-pwned/](https://www.troyhunt.com/welcoming-the-nepalese-government-to-have-i-been-pwned/)

无法访问文章链接。

---

## 37. BBC俄罗斯方块指南

**原文标题**: The BBC Tetris Companion

**原文链接**: [https://www.leadedsolder.com/2026/07/28/bbc-bridge-companion-part-1-overview.html](https://www.leadedsolder.com/2026/07/28/bbc-bridge-companion-part-1-overview.html)

这篇文章总结了一个自制项目：为BBC Bridge Companion打造一款类似俄罗斯方块的游戏“Bridgetris”。BBC Bridge Companion是1985年英国推出的一款旨在教授桥牌的家用主机，采用Z80 CPU和TMS9129 VDP，配备16kB显存，但官方仅发布了九张卡带。作者选择为它编写游戏，尽管一开始没有实体机器，而且对Z80汇编只有基本的了解。

关键步骤包括：逆向工程BIOS以使其运行自定义ROM代码，然后边编程边学习Z80汇编——这个过程产生了许多bug，但乐趣十足。之后，作者在eBay上买了一台真正的Bridge Companion，用替代零件修复了损坏的卡带插槽，并通过追踪原版卡带ROM的引脚定义，自制了一块卡带PCB。他们还联系了Richard Horne，后者提供了原始的Heber工程文档。为了提升画质，他们做了简单的复合视频改造，绕过了效果不佳的RF输出。

本文是执行概要；后续计划中的章节将涵盖修复主机、制作卡带PCB、复合视频改造以及游戏编程。整个系列完成后将发布ROM和源代码。脚注说明：他们的规则集中没有踢墙操作，并且RGB改造同样可行。

---

## 38. Herdr 正在加入Y Combinator。运行时保持开放。

**原文标题**: Herdr is joining Y Combinator. The runtime stays open

**原文链接**: [https://herdr.dev/blog/herdr-is-joining-y-combinator/](https://herdr.dev/blog/herdr-is-joining-y-combinator/)

Herdr，一个由单人开发的开源编码代理运行时，即将加入Y Combinator的F26批次。创始人Can解释说，在与现有代理工具苦苦周旋之后，他构建了自己的运行时来适配自己的工作流程。Herdr为基于终端的代理提供了持久化的、按项目组织的窗格和标签页，使它们能够随处运行并在会话之间保持存活。其内置的TUI是一个关键优势——可通过VPS或SSH安装——并且始终是一流的客户端。这个开放运行时已经吸引了社区构建的客户端，包括一个Raycast扩展、一个Stream Deck应用、一个iOS应用，以及市场推出一个月内就超过500个插件。

这个项目已发展到25k星标和340k下载量，这促使Can将其转变为一家公司。运行时本身保持免费，并已从AGPL重新许可为Apache-2.0，以确保无限制使用。展望未来，Can计划组建一个小团队来保持运行时的健壮性和可扩展性，同时增加连接机器——笔记本电脑、VPS、沙箱——的功能，使代理能够跨基础设施无缝工作。他强调保持核心精简并保护产品的简洁性，用可扩展性来处理定制需求。最后他感谢社区的支持。

---

## 39. 为什么爱沙尼亚人每年夏天都会邀请陌生人进入自家后院

**原文标题**: Why Estonians invite strangers into their back gardens each summer

**原文链接**: [https://www.bbc.com/travel/article/20260731-why-estonians-invite-strangers-into-their-backyards-each-summer](https://www.bbc.com/travel/article/20260731-why-estonians-invite-strangers-into-their-backyards-each-summer)

爱沙尼亚的“家庭咖啡馆日”是一项夏日传统，居民们将私人花园、车库甚至卧室窗户变成临时咖啡馆，向陌生人开放。文章介绍了这一传统的起源与魅力。

这一活动始于2007年的希乌马岛，灵感源自凯尔德拉镇19世纪的咖啡文化，旨在吸引游客在七月之外前来。此后，该活动已遍布全国，4月至9月间举办超过150场。参与者中既有精心布置的帐篷花园，也有简易的儿童柠檬水摊位。

例如，凯赫拉的海基·卡尔维克在自家花园里开办汤馆；卡罗琳·瓦赫特雷在车库里出售寿司和法式咸派；塔尔图的因加·库尔莫亚则用吊桶从三楼窗户垂下自制冷饮。在塞托马，家庭咖啡馆展示当地文化和美食，如瑟尔奶酪；塔林的卡拉马亚日活动则帮助乌克兰难民融入新社区。

这一传统体现了爱沙尼亚人邻里互助、共同劳动的“塔尔古德”精神。它也让人难得一窥爱沙尼亚人的私密生活，因为花园通常不对外开放。一位组织者如是说：“这一天，我们的人民敞开心扉，也敞开大门。”

实用提示：活动主要集中在7月和8月，可通过当地旅游网站和Facebook查询活动清单，游客需自备现金，因为大多数咖啡馆以低科技方式运营。

---

## 40. 马里奥遇见帕累托

**原文标题**: Mario Meets Pareto

**原文链接**: [https://www.mayerowitz.io/blog/mario-meets-pareto](https://www.mayerowitz.io/blog/mario-meets-pareto)

这篇文章解释了在《马里奥赛车8》中选择最佳配置——车手、车身、轮胎和滑翔翼——需要平衡多项性能属性：速度、加速度、操控、重量、越野性能和迷你涡轮。每个部件有数十种选项，可能组合出数千种配置，因此要找出最佳配置并非易事。

简单地按单一属性（如速度）排名会忽略重要的权衡取舍。例如，速度高的角色可能加速度低，导致被击中后恢复更慢。解决方案来自经济学家维尔弗雷多·帕累托：剔除“被支配”的选项——那些至少在一项属性上更差且在其他任何属性上都不占优的选择。剩余的选择构成了**帕累托前沿**：高效、非支配的选项，代表了最佳的权衡取舍。

文章指出，即使帕累托前沿也不能揭示唯一的“最佳”配置——它取决于你的游戏风格和偏好。如果你确切知道每个属性应分配多少权重，就可以将它们合并为一个效用分数，无需帕累托方法。但当效用函数未知或不确定时，帕累托前沿能客观地排除次优选择，让你只尝试高效配置。

同样的推理也适用于日常决策：便宜又美味的餐食、高薪且充实的工作、低风险高回报的投资组合，或高质量、快速且成本高效的大语言模型。在任何多目标优化问题中，帕累托前沿都有助于缩小范围，但最终仍需个人做出选择。

---

