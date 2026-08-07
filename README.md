# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-07.md)

*最后自动更新时间: 2026-08-07 20:43:51*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 2 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 3 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 4 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 5 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 6 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 7 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 8 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 9 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 10 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 11 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 12 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 13 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 14 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 15 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 16 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 17 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 18 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 19 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 20 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 21 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 22 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 23 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 24 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 25 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 26 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 27 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 28 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 29 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 30 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 31 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 32 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 33 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 34 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 35 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 36 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 37 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 38 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 39 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 40 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 41 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 42 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 43 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 44 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 45 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 46 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 47 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 48 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 49 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 50 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 51 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 52 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 53 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 54 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 55 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 56 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 57 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 58 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 59 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 60 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 61 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 62 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 63 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 64 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 65 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 66 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 67 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 68 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 69 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 70 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 71 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 72 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 73 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 74 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 75 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 76 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 77 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 78 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 79 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 80 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 81 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 82 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 83 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 84 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 85 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 86 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 87 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 88 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 89 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 90 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 91 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 92 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 93 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 94 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 95 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 96 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 97 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 98 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 99 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 100 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 101 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 102 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 103 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 104 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 105 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 106 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 107 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 108 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 109 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 110 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 111 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 112 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 113 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 114 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 115 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 116 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 117 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 118 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 119 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 120 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 121 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 122 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 123 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 124 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 125 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 126 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 127 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 128 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 129 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 130 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 131 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 132 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 133 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 134 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 135 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 136 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 137 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 138 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 139 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 140 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 141 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 142 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 143 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 144 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 145 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 146 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 147 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 148 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 149 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 150 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 151 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 152 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 153 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 154 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 155 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 156 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 157 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 158 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 159 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 160 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 161 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 162 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 163 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 164 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 165 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 166 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 167 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 168 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 169 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 170 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 171 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 172 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 173 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 174 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 175 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 176 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 177 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 178 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 179 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 180 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 181 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 182 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 183 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 184 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 185 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 186 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 187 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 188 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 189 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 190 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 191 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 192 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 193 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 194 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 195 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 196 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 197 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 198 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 199 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 200 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 201 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 202 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 203 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 204 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 205 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 206 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 207 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 208 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 209 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 210 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 211 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 212 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 213 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 214 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 215 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 216 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 217 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 218 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 219 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 220 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 221 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 222 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 223 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 224 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 225 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 226 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 227 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 228 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 229 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 230 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 231 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 232 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 233 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 234 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 235 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 236 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 237 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 238 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 239 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 240 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 241 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 242 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 243 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 244 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 245 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 246 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 247 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 248 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 249 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 250 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 251 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 252 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 253 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 254 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 255 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 256 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 257 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 258 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 259 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 260 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 261 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 262 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 263 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 264 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 265 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 266 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 267 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 268 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 269 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 270 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 271 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 272 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 273 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 274 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 275 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 276 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 277 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 278 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 279 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 280 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 281 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 282 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 283 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 284 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 285 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 286 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 287 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 288 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 289 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 290 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 291 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 292 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 293 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 294 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 295 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 296 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 297 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 298 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 299 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 300 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 301 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 302 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 303 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 304 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 305 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 306 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 307 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 308 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 309 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 310 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 311 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 312 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 313 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 314 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 315 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 316 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 317 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 318 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 319 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 320 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 321 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 322 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 323 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 324 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 325 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 326 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 327 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 328 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 329 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 330 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 331 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 332 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 333 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 334 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 335 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 336 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 337 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 338 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 339 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 340 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 341 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 342 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 343 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 344 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 345 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 346 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 347 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 348 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 349 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 350 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 351 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 352 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 353 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 354 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 355 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 356 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 357 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 358 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 359 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 360 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 361 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 362 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 363 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 364 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 365 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 366 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 367 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 368 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 369 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 370 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 371 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 372 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 373 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 374 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 375 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 376 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 377 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 378 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 379 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 380 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 381 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 382 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 383 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 384 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 385 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 386 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 387 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 388 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 389 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 390 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 391 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 392 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 393 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 394 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 395 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 396 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 397 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 398 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 399 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 400 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 401 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 402 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 403 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 404 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 405 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 406 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 407 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 408 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 409 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 410 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 411 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 412 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 413 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 414 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 415 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 416 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 417 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 418 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 419 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 420 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 421 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 422 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 423 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 424 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 425 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 426 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 427 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 428 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 429 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 430 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 431 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 432 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 433 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 434 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 435 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 436 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 437 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 438 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 439 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 440 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 441 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 442 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 443 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 444 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 445 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 446 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 447 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 448 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 449 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 450 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 451 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 452 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 453 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 454 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 455 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 456 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 457 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 458 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 459 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 460 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 461 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 462 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 463 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 464 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 465 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 466 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 467 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 468 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 469 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 470 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 471 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 472 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 473 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 474 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 475 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 476 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 477 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 478 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 479 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 480 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 481 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 482 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 483 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 484 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 485 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 486 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 487 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 488 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 489 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 490 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 491 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 492 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 493 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 494 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 495 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 496 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 497 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 498 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 499 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 500 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 501 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
