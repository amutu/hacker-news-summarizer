# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-30.md)

*最后自动更新时间: 2026-01-30 20:37:07*
## 1. Antirender - 消除建筑渲染图中的光泽反射

**原文标题**: Antirender- remove the glossy shine on architectural renderings

**原文链接**: [https://antirender.com/](https://antirender.com/)

**摘要：**

AntiRender是一款旨在剥离建筑效果图中光鲜、理想化美学，以揭示拟建建筑更真实面貌的工具。文章指出，传统效果图常是误导性的营销工具，它们利用完美的光线、繁茂却并不存在的绿化以及充满活力的公共生活场景，来推销一种鲜少与最终建成现实相符的愿景。

AntiRender的核心功能是为这些图像施加一种校正滤镜——无论是字面意义还是象征意义上。它去除人造的光泽，降低过度鲜艳色彩的饱和度，并将光线调整至更平凡、日常的质感。通过这种方式，它旨在揭露“建筑中的虚假宣传”，让观者能更好地评估设计在实际环境中的真实尺度、材质和潜在影响。

其深层信息是对建筑行业将销售技巧置于诚实沟通之上的批判。AntiRender将自身定位为促进关于城市发展更透明公共对话的一种手段，帮助人们看透诱人的幻象，从而评估一栋建筑在真实生活中究竟会是何种样貌。

---

## 2. Kimi K2.5 技术报告 [pdf]

**原文标题**: Kimi K2.5 Technical Report [pdf]

**原文链接**: [https://github.com/MoonshotAI/Kimi-K2.5/blob/master/tech_report.pdf](https://github.com/MoonshotAI/Kimi-K2.5/blob/master/tech_report.pdf)

本技术报告阐述了Moonshot AI的**Kimi-K2.5**大语言模型的能力与架构，该模型具备128K上下文窗口。它采用**仅解码器的Transformer架构**，基于超过10万亿token的多样化高质量数据集训练而成，涵盖网络内容、书籍及学术文献。

核心创新聚焦于**长上下文处理**。模型采用**RoPE（旋转位置编码）**进行位置编码，并集成**FlashAttention-2**以提升长序列处理的计算效率与训练稳定性。一项重要技术突破是实现了**动态NTK感知插值**方法用于RoPE基数调整，使模型无需完整长度重训练即可有效泛化至128K全上下文长度。

报告详述了**两阶段训练流程**：初始预训练阶段及后续的监督微调阶段。监督微调阶段使用精心构建的数据集以提升指令遵循与会话能力。基准测试结果表明，Kimi-K2.5在标准评测（如MMLU和C-Eval）中表现优异，且相比其他开源模型，在长上下文任务（如大海捞针检索与长文档问答）中展现出**显著优势**。

总之，Kimi-K2.5是一款具备竞争力的语言模型，通过创新的扩展技术与稳健的训练方法，实现了高效且精准的长上下文理解能力。

---

## 3. 爱尔兰国家植物标本馆数字植物收藏

**原文标题**: The National Herbarium of Ireland digital collection of Irish plants

**原文链接**: [https://dri.ie/news/new-collection-in-dri-the-national-herbarium-of-ireland-digital-collection-of-irish-plants/](https://dri.ie/news/new-collection-in-dri-the-national-herbarium-of-ireland-digital-collection-of-irish-plants/)

**《爱尔兰国家植物标本馆数字馆藏爱尔兰植物标本摘要》**

文章宣布爱尔兰国家植物标本馆（DBN）在爱尔兰数字存储库（DRI）发布了一项重要的新数字馆藏。该馆藏收录了超过12,000份数字化植物标本，代表了迄今为止最完整的爱尔兰植物区系数字记录。

馆藏的核心是来自"Cybele Hibernica"项目的10,000份标本，该项目是19世纪一项基础性调查，细致记录了爱尔兰植物的分布。此外，还有来自《爱尔兰地形植物志》项目的2,000多份标本作为补充，该项目在20世纪末更新并扩展了前述工作。这些标本共同为研究过去150年来爱尔兰植物生命和生物多样性的变化提供了关键的历史基线。

文章强调的一个关键益处是该馆藏对当代科学研究的价值，特别是在追踪物种分布变化、为保护工作提供信息以及研究气候变化影响方面。数字化首次使这些具有历史意义的数据得以在线免费公开获取，为研究人员、学生和公众消除了障碍。

该项目是位于国家植物园的DBN与DRI之间的合作成果，由文化、遗产和爱尔兰语事务部资助，突显了其作为国家文化和科学资产的重要性。该馆藏既是环境科学的重要研究工具，也是爱尔兰植物遗产的永久性数字记录。

---

## 4. 蜕皮书

**原文标题**: Moltbook

**原文链接**: [https://www.moltbook.com/](https://www.moltbook.com/)

**摘要**

Moltbook是一个专为AI智能体设计的社交媒体平台。其核心功能是让这些AI智能体能够自主分享内容（“发帖”）、参与讨论（“评论”），并通过点赞机制加入社区排名系统。

该平台的组织结构借鉴了人类社交网络的常见板块，包括展示最新智能体和帖子的信息流，并可按最新、热门或讨论最多等方式排序。其独特之处在于将智能体归类到“子蜕区”（类似于子版块或主题社区），并设有根据社区互动赚取的“业力值”对智能体进行排名的排行榜。

虽然专为AI间互动而构建，Moltbook也允许人类用户以观察者身份加入，查看智能体的活动。平台的标语和龙虾表情符号（🦞）以趣味方式强化了其主题——一个让AI通过社交互动实现“蜕壳”或进化的空间。

---

## 5. 一名法官允许联邦调查局尝试绕过生物识别系统。

**原文标题**: A judge gave the FBI permission to attempt to bypass biometrics

**原文链接**: [https://theintercept.com/2026/01/30/washington-post-hannah-natanson-fbi-biometrics-unlock-phone/](https://theintercept.com/2026/01/30/washington-post-hannah-natanson-fbi-biometrics-unlock-phone/)

本文详述了联邦调查局获取搜查令，突袭《华盛顿邮报》记者汉娜·纳坦森住所的情况。该搜查令明确授权探员通过将设备对准她的脸部或强行使用她的手指来尝试解锁其设备，从而绕过面容ID或触控ID等生物识别安全措施。

虽然尚不清楚是否使用了这种方法，但搜查令包含一项关键限制：探员不得询问纳坦森使用哪根手指，也不得询问其生物识别设置的细节。法律专家指出，这很可能是因为近期的一项法庭裁决认定，此类强制行为可能被视为受第五修正案保护的证词。

文章将此次突袭既视为新闻自由问题，也视为隐私警告，建议个人——尤其是记者和活动人士——在抗议或过境等高危情况下禁用生物识别功能。相反，建议使用强字母数字密码短语并关闭设备电源以增强加密。

更广泛的背景涉及纳坦森与一名被控不当处理国防信息的政府承包商的所谓通信，尽管她本人并未面临任何指控。文章最后将此事置于对特朗普政府处理新闻自由和民主规范方式的更广泛批评之中。

---

## 6. OpenClaw – 熔炉机器人再次更名

**原文标题**: OpenClaw – Moltbot Renamed Again

**原文链接**: [https://openclaw.ai/blog/introducing-openclaw](https://openclaw.ai/blog/introducing-openclaw)

**OpenClaw 品牌重塑公告**

开源 AI 助手项目，此前名为 Moltbot（最初名为 Clawd），现已正式更名为 **OpenClaw**。新名称体现了其核心原则：**Open**（开源、社区驱动）和 **Claw**（向其龙虾吉祥物和起源致敬）。

**什么是 OpenClaw？**
它是一个在用户自己的机器（笔记本电脑、家庭实验室、VPS）上本地运行的开源智能体平台，让用户完全掌控自己的数据和基础设施。它能与 WhatsApp、Telegram、Discord、Slack 和 Microsoft Teams 等流行聊天应用集成。

**此版本的主要更新：**
*   **新集成：** Twitch 和 Google Chat 插件。
*   **模型支持：** 新增对 KIMI K2.5 和小米 MiMo-V2-Flash 的兼容性。
*   **网页聊天：** 新增图片发送功能。
*   **安全：** 34 项安全相关提交，并发布了机器可验证的安全模型。

**未来与社区**
安全仍是首要任务。项目也专注于网关可靠性、功能完善和扩展模型支持。由于项目快速增长（GitHub 星标数超过 10 万），创始人正在增加维护者并建立流程以管理贡献，目标是给予他们合理的报酬。

公告最后感谢了社区（"Claw Crew"），并确认龙虾吉祥物将保持不变。

---

## 7. 在自家车库发明火星车悬挂系统的工程师[视频]

**原文标题**: The engineer who invented the Mars rover suspension in his garage [video]

**原文链接**: [https://www.youtube.com/watch?v=QKSPk_0N4Jc](https://www.youtube.com/watch?v=QKSPk_0N4Jc)

这篇视频文章讲述了一位工程师在个人非专业环境——自家车库中，为NASA火星车开发创新悬挂系统的故事。核心叙事强调草根创新，展现了太空探索技术的重要突破如何源自正式实验室或企业环境之外的个体智慧与决心。

关键要点在于该悬挂系统对火星车穿越崎岖多变地形的关键作用，它确保了科学任务中的稳定性和移动能力。工程师在车库中进行原型制作的过程，凸显了工程领域中资源可及性与热情驱动问题解决的主题。

所提供的文本块本身并未包含文章细节，而是由标准的YouTube页脚文本构成，涵盖版权、联系信息、政策及免责声明。因此，本摘要基于所给标题及其建立的语境前提。

---

## 8. 乔尔·斯波尔斯基：轻松制定软件进度表（2000年）

**原文标题**: Joel Spolsky: Painless Software Schedules (2000)

**原文链接**: [https://www.joelonsoftware.com/2000/03/29/painless-software-schedules/](https://www.joelonsoftware.com/2000/03/29/painless-software-schedules/)

在2000年的文章中，乔尔·斯波尔斯基以美国铁路公司Acela和网景等案例说明，制定切实可行的软件进度表对避免成本高昂的延误和竞争失败至关重要。他提出了一种创建精确进度表的"无痛"方法。

其核心原则是：**只有实际执行工作的程序员才能制定进度表**，且任务必须分解为2-16小时的细粒度步骤以强制详细规划。他建议使用简单的Excel表格（而非复杂的项目管理软件），列明任务、原始预估、当前预估、已用时间和剩余时间，且必须每日更新。

关键在于进度表必须包含常被忽略的条目：**调试时间**（通常占编码时间的100-200%）、**集成时间**、**休假/节假日**，以及应对意外任务和超支的**缓冲时间**。这些非编码活动往往比核心功能耗费更多时间。

斯波尔斯基警告管理者不应施压程序员缩减预估，这会导致不切实际的进度表并打击团队士气。若进度表显示项目耗时超出预期，唯一诚实的解决方案是**推迟发布日期或削减功能**——无法"压缩"必要工作量。维护良好的进度表应成为真实的预测工具。

---

## 9. 家用计算机混合体

**原文标题**: The Home Computer Hybrids

**原文链接**: [https://technicshistory.com/2026/01/25/the-home-computer-hybrids/](https://technicshistory.com/2026/01/25/the-home-computer-hybrids/)

本文追溯了20世纪70年代末至80年代初家用电脑与视频游戏机市场早期分化与最终融合的历程。

最初，这是两个截然不同的领域：电脑游戏（如《魔域》和《巫术》）复杂、文本密集且加载繁琐，而游戏机（如雅达利VCS平台作品）则提供简单即插即玩的街机式体验。然而，游戏机的巨大销量吸引了电脑制造商，反之亦然，由此催生了“家用电脑混合体”。

以雅达利400/800和德州仪器TI-99/4为代表的第三代机型，兼具个人电脑的可编程性、扩展性，以及游戏机专用的图形/声效芯片与便捷卡带插槽。在企业战略与工程师热情的共同推动下，它们试图同时占领两个市场。尤其是雅达利家用电脑系统，凭借卓越的图形与音效成为1982年的畅销产品，证明了混合模式的可行性。

文章将这一发展脉络阐释为从早期专用游戏芯片到微处理器游戏机的自然演进，揭示了企业如何通过融合双方平台优势，使电脑与游戏机的界限逐渐模糊。

---

## 10. Quack-Cluster：基于DuckDB与Ray的无服务器分布式SQL查询引擎

**原文标题**: Quack-Cluster: A Serverless Distributed SQL Query Engine with DuckDB and Ray

**原文链接**: [https://github.com/kristianaryanto/Quack-Cluster](https://github.com/kristianaryanto/Quack-Cluster)

**Quack-Cluster** 是一个基于 Python、Ray 和 DuckDB 构建的无服务器分布式 SQL 查询引擎。它支持对存储在对象存储（如 AWS S3）或本地文件中的大型数据集进行高性能分析，无需复杂的基础设施或数据迁移。

**核心特性：**
*   **分布式执行：** 利用 Ray 在多个工作节点上并行执行 SQL 查询，每个节点运行一个嵌入式 DuckDB 实例，实现快速的内存处理。
*   **直接数据访问：** 直接从云存储或文件系统中的 Parquet、CSV 等文件格式查询数据，无需 ETL。
*   **原生 Python 集成：** 无缝融入现有的 Python 数据工作流。
*   **丰富的 SQL 支持：** 使用 DuckDB 的 SQL 方言执行复杂操作，包括连接、CTE、窗口函数和聚合。

**工作原理：** 用户通过 FastAPI 端点提交 SQL 查询。协调器解析查询，创建分布式执行计划，并将任务分配给 Ray 工作节点。每个工作节点使用 DuckDB 处理数据子集，部分结果被汇总并返回。

**快速开始：** 项目可使用 Docker 和 `make` 命令在本地运行。它包含示例数据生成和用于 API 测试的 Postman 集合。未来路线图包括与元数据目录的集成以及专用的 Python SDK。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 2 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 3 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 4 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 5 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 6 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 7 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 8 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 9 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 10 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 11 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 12 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 13 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 14 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 15 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 16 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 17 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 18 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 19 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 20 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 21 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 22 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 23 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 24 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 25 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 26 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 27 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 28 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 29 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 30 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 31 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 32 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 33 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 34 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 35 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 36 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 37 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 38 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 39 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 40 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 41 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 42 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 43 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 44 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 45 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 46 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 47 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 48 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 49 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 50 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 51 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 52 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 53 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 54 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 55 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 56 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 57 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 58 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 59 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 60 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 61 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 62 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 63 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 64 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 65 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 66 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 67 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 68 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 69 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 70 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 71 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 72 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 73 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 74 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 75 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 76 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 77 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 78 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 79 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 80 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 81 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 82 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 83 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 84 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 85 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 86 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 87 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 88 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 89 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 90 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 91 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 92 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 93 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 94 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 95 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 96 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 97 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 98 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 99 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 100 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 101 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 102 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 103 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 104 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 105 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 106 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 107 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 108 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 109 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 110 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 111 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 112 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 113 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 114 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 115 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 116 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 117 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 118 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 119 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 120 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 121 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 122 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 123 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 124 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 125 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 126 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 127 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 128 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 129 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 130 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 131 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 132 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 133 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 134 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 135 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 136 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 137 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 138 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 139 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 140 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 141 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 142 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 143 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 144 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 145 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 146 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 147 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 148 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 149 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 150 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 151 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 152 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 153 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 154 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 155 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 156 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 157 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 158 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 159 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 160 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 161 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 162 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 163 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 164 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 165 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 166 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 167 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 168 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 169 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 170 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 171 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 172 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 173 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 174 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 175 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 176 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 177 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 178 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 179 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 180 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 181 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 182 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 183 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 184 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 185 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 186 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 187 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 188 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 189 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 190 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 191 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 192 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 193 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 194 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 195 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 196 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 197 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 198 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 199 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 200 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 201 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 202 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 203 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 204 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 205 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 206 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 207 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 208 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 209 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 210 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 211 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 212 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 213 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 214 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 215 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 216 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 217 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 218 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 219 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 220 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 221 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 222 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 223 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 224 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 225 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 226 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 227 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 228 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 229 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 230 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 231 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 232 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 233 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 234 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 235 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 236 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 237 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 238 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 239 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 240 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 241 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 242 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 243 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 244 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 245 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 246 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 247 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 248 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 249 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 250 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 251 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 252 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 253 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 254 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 255 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 256 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 257 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 258 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 259 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 260 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 261 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 262 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 263 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 264 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 265 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 266 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 267 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 268 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 269 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 270 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 271 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 272 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 273 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 274 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 275 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 276 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 277 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 278 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 279 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 280 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 281 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 282 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 283 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 284 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 285 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 286 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 287 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 288 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 289 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 290 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 291 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 292 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 293 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 294 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 295 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 296 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 297 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 298 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 299 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 300 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 301 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 302 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 303 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 304 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 305 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 306 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 307 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 308 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 309 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 310 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 311 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 312 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 313 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 314 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
