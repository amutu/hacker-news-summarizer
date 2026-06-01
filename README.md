# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-01.md)

*最后自动更新时间: 2026-06-01 20:32:21*
## 1. 最新Instagram“漏洞”是我见过最滑稽的

**原文标题**: The newest Instagram “exploit” is the goofiest I've seen

**原文链接**: [https://www.0xsid.com/blog/meta-account-takeover-fiasco](https://www.0xsid.com/blog/meta-account-takeover-fiasco)

近日，Instagram曝出漏洞，攻击者可利用Meta人工智能账号恢复系统劫持账号，甚至包括奥巴马白宫账号等高价值目标。攻击者仅需知道目标用户名即可作案：通过VPN伪造位置后联系Meta支持AI，谎称账号被盗并提供任意邮箱接收验证码。AI未核实邮箱是否与原账号关联便发送验证码，攻击者借此重置密码并绕过双重验证，完全控制账号。原拥有者因绑定邮箱与手机号被替换，未收到任何通知便失去访问权限。该漏洞已活跃数周甚至数月，黑市Telegram群组甚至提供针对高价短用户名的劫持服务。虽然Meta现已修复漏洞，但此事件暴露出AI支持系统仅凭极简验证即可更改绑定邮箱的安全隐患。

---

## 2. 斯坦福大学CS336课程AI智能体使用指南

**原文标题**: AI Agent Guidelines for CS336 at Stanford

**原文链接**: [https://github.com/stanford-cs336/assignment1-basics/blob/main/CLAUDE.md](https://github.com/stanford-cs336/assignment1-basics/blob/main/CLAUDE.md)

**CS336 AI智能体使用准则摘要**

CS336课程中的AI智能体必须充当**助教**角色，而非答案生成器。其宗旨是通过**解释与引导**帮助学生**学习**，而非代为完成作业。

**允许的行为：**
- 解释概念，指引学生查阅课程讲义与文档
- 审阅学生编写的代码并提供通用改进建议
- 通过引导性问题辅助调试，而非直接修复
- 解释报错信息
- 建议进行合理性检查、搭建简易示例以及性能分析

**禁止的行为：**
- 编写任何Python代码或伪代码
- 直接给出解题方案或完成TODO部分
- 编辑学生代码仓库或执行bash命令
- 实现核心组件（如分词器、Transformer、优化器、训练循环、内核等）
- 指向第三方实现

**教学方式：**
提出澄清性问题，引用课程资料，建议后续步骤但不代为实现，优先使用测试与不变性检查而非直接修复。始终解释建议背后的推理逻辑。

**学术诚信：**
AI工具可用于低层编程辅助和高层概念提问，**但不得直接用于解决作业问题**。当请求越界时，智能体必须拒绝并转向解释或调试指导，或建议学生咨询课程工作人员。

---

## 3. 佛罗里达州就人工智能风险起诉OpenAI及山姆·奥特曼

**原文标题**: Florida sues OpenAI and Sam Altman over AI risks

**原文链接**: [https://www.politico.com/news/2026/06/01/openai-hit-with-florida-lawsuit-00944215](https://www.politico.com/news/2026/06/01/openai-hit-with-florida-lawsuit-00944215)

无法访问文章链接。

---

## 4. 在对RGB值进行归一化时，应该除以255还是256？

**原文标题**: Should you normalize RGB values by 255 or 256?

**原文链接**: [https://30fps.net/pages/255-vs-256-division/](https://30fps.net/pages/255-vs-256-division/)

**摘要：**

本文探讨了在将8位整数转换为浮点数进行图像处理时，RGB值应除以255还是256进行归一化的问题。

- **标准方法（除以255）：** 将0映射为0.0，255映射为1.0。此方法简单、应用广泛（例如GPU使用），且便于检测黑色（0.0）。但两端的分箱（0和255）宽度仅为其他分箱的一半，导致极端值略难生成且存在微小偏差。
- **替代方法（加0.5后除以256）：** 将0映射为0.001953125。该方法确保每个整数都映射到两个整数之间的精确中点，分箱宽度更均匀，理论重建误差略低（1/1024 vs 1/1020）。但会掩盖零值，并将逻辑与8位输入绑定。

本文将这两种方式定义为两种量化器类型：中升型（标准方法）和中平型（替代方法）。虽然替代方法精度略高，但作者认为，在处理来源未知的图像（几乎所有实际应用场景）时，标准除以255的方法才是正确选择。在加载可能使用标准公式编码的图像时，采用不同的缩放比例反而会引入更多误差。只有当同时控制编码和解码过程时，替代方法才具有合理性。

---

## 5. CS336：从零开始的语言建模

**原文标题**: CS336: Language Modeling from Scratch

**原文链接**: [https://cs336.stanford.edu/](https://cs336.stanford.edu/)

**CS336：从零开始的语言建模**课程总结

本斯坦福课程（2026年春季）提供从零构建语言模型的完整实践方法。由Tatsunori Hashimoto与Percy Liang授课，课程引导学生走完语言模型创建的完整流程——从数据收集清洗到Transformer构建、训练及部署。

**先修要求**包括精通Python、具备PyTorch与深度学习经验，以及掌握线性代数、概率论与机器学习知识。本课程注重实现（5学分），需要大量时间投入。

**课程作业**包含五项任务：（1）构建基础Transformer语言模型（分词器、模型、优化器）；（2）使用Triton（FlashAttention2）分析优化注意力机制并实现分布式训练；（3）依据缩放定律预测模型规模；（4）通过过滤与去重处理原始Common Crawl数据；（5）应用监督微调与强化学习（RLVR/DPO）实现数学推理与安全对齐。

**课程安排**：周一/周三授课，设答疑时间、Slack交流渠道，并提供赞助商/云服务商（如Modal、Lambda Labs）的GPU算力选择。学生拥有6天晚交期限，严格学术诚信准则禁止使用AI工具直接解题。课程特别感谢Modal提供计算赞助。

---

## 6. 看似生化过程的现象，可能只是地质作用的自然特征。

**原文标题**: What appear to be biochemical processes may be a natural feature of geology

**原文链接**: [https://www.quantamagazine.org/the-dirt-that-refused-to-die-20260601/](https://www.quantamagazine.org/the-dirt-that-refused-to-die-20260601/)

**摘要：**

法国研究人员历时六年观察到，无菌土壤虽无任何生物体，却仍持续消耗氧气并释放二氧化碳——这一过程类似于微生物呼吸。由塞巴斯蒂安·方丹领导的团队对土壤进行辐照以杀死所有生命，但类似代谢的活动依然存在。他们在土壤中检测到克雷布斯循环的四种关键中间分子，并证明无菌土壤能够传导电流，表明存在类似细胞代谢的电子流动。

这项发表于《科学进展》的研究提出，某些通常与生命相关的生化反应可以在非生命的地质环境中自发发生。土壤中的矿物质和金属氧化物（如铁和铝）可能充当催化剂，无需活体酶就能分解葡萄糖等有机分子。这支持了一个日益发展的理论：代谢——而非遗传学——可能是生命起源的基础，早期地球上自然发生了前生命的化学反应。

批评者认为，死细胞残留的酶可以解释这一活性，但作者指出，已知的酶都无法持续存在六年，因此这种可能性很小。这些发现挑战了此类代谢过程仅为生命体所独有的假设，并表明“类生命”化学可能是地质学的一个基本特征，对理解生命起源以及生物学与地球科学之间的界限具有重要意义。

---

## 7. GitHub——软件的罪人

**原文标题**: GitHub and the crime against software

**原文链接**: [https://eblog.fly.dev/githubbad.html](https://eblog.fly.dev/githubbad.html)

本文由埃夫隆·利希特于2026年5月撰写，尖锐批评了GitHub日益下滑的可靠性、性能与诚信度。作者认为，这正是大型科技软件服务普遍衰退的缩影。

**核心要点：**

- **长期可靠性问题：** GitHub频繁宕机，每月发生数十起事故。作者指出该公司虚报运行时长、违反自身服务等级协议，将重心放在炫酷的AI功能（如Copilot、智能体）而非基础稳定性上。

- **前端系统崩溃：** GitHub的前端代码臃肿可笑、运行缓慢且极度消耗内存（堆内存峰值超512 MiB）。该平台在Firefox和Safari浏览器上频繁崩溃，持续变化的交互设计不断将用户导向AI工具。

- **纵容欺诈行为：** 该平台默许"刷星"和虚假开源项目存在，引用卡内基梅隆大学研究论文指出虚假星标与恶意活动存在关联。

- **自酿AI负载危机：** 微软/GitHub激进推广智能工作流，随后却将基础设施压力归咎于此，作者称之为"对自身的分布式拒绝服务攻击"。

- **实验对比：** 作者计划通过对照实验，比较GitHub与竞争对手GitLab、Codeberg的前端资源消耗（网络带宽、内存、代码体积），预测GitHub将表现最差。

**核心结论：** 利希特认为GitHub的问题源于架构性腐朽与优先级错位，最终结论是：一个拒绝坦诚承认问题的公司，无法被信任能够解决这些问题。

---

## 8. 我故意让手机变慢

**原文标题**: I made my phone slow on purpose

**原文链接**: [https://vinewallapp.com/notes/i-made-my-phone-slow-on-purpose/](https://vinewallapp.com/notes/i-made-my-phone-slow-on-purpose/)

文章讲述了VineWall创始人如何故意放慢新iPhone的速度来对抗无意识刷屏。他将手机比作一台能即时派发令人上瘾的“饼干”（内容）的机器。传统的应用拦截方法之所以失败，是因为无法解决渴求感，且容易被绕过。

他的解决方案是开发一款控制特定应用网速的iOS程序。通过限制连接速度，视频会变得“模糊不清”，而文字类应用（Reddit、X、Threads）则显示灰色加载框而非图片。随着持续滑动，限速会逐步加剧，最终出现加载转轮。这种刻意的迟缓使“饼干”失去诱惑力且难以获取，迫使人们质疑自己对内容的欲望。关键在于，降低网速通过破坏用户体验，让无意识刷屏不再令人满足。

---

## 9. Anthropic 已向美国证券交易委员会秘密提交S-1表格草案

**原文标题**: Anthropic confidentially submits draft S-1 to the SEC

**原文链接**: [https://www.anthropic.com/news/confidential-draft-s1-sec](https://www.anthropic.com/news/confidential-draft-s1-sec)

Anthropic, PBC已秘密向美国证券交易委员会（SEC）提交了一份S-1表格的注册声明草案，拟对其普通股进行首次公开募股（IPO）。此举允许公司在SEC完成审核后推进上市进程，不过IPO的具体时间取决于市场状况及其他因素。股票数量和发行价格尚未确定。该公告依据1933年《证券法》第135条发布，不构成证券出售要约。文章还重点提及了相关近期动态：Anthropic以9650亿美元投后估值完成650亿美元H轮融资，推出在编程与智能体任务方面性能提升的Claude Opus 4.8，并在其欧洲第六城米兰开设新办事处。

---

## 10. 一颗10年前的至强处理器足矣

**原文标题**: A 10 year old Xeon is all you need

**原文链接**: [https://point.free/blog/gemma-4-on-a-2016-xeon/](https://point.free/blog/gemma-4-on-a-2016-xeon/)

**在过时硬件上运行大语言模型**

本文详细介绍了如何在2016年配备128GB DDR3内存且无GPU的Xeon E5服务器上运行Gemma 4（260亿参数）。作者指出，大语言模型推理受限于内存带宽而非计算能力，因此内存带宽是主要瓶颈。

解决方案涉及对`ik_llama.cpp`进行远超Ollama等工具所能提供的深度配置。关键优化包括：

**推测解码**将小型"草稿"模型与主验证模型配对，在主模型验证前以低成本生成多个候选词元，从而有效绕过内存墙。

**混合专家模型优化**（`--cpu-moe`、`--merge-up-gate-experts`）针对CPU缓存层次结构优化专家路由，通过将权重更久地保留在L3缓存中并融合门控/上升投影为单一操作，防止缓存颠簸。

**内存管理**使用`--mlock`防止操作系统换页，使用`--run-time-repack`重新组织权重矩阵以适应CPU缓存对齐，并通过`--no-kv-offload`跳过GPU检测。

**注意力机制创新**利用自定义CPU内核实现Flash注意力（避免完整注意力矩阵实例化）和多头潜在注意力（压缩KV缓存）。

本文证明，通过适当优化，即便十年前的老旧硬件也能运行现代大语言模型——尽管图形分割等许多高级功能仍不支持MTP等复杂架构。作者强调，完整文档存在于代码本身，需要直接参与开发过程。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 2 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 3 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 4 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 5 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 6 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 7 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 8 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 9 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 10 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 11 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 12 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 13 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 14 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 15 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 16 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 17 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 18 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 19 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 20 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 21 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 22 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 23 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 24 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 25 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 26 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 27 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 28 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 29 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 30 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 31 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 32 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 33 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 34 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 35 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 36 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 37 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 38 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 39 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 40 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 41 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 42 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 43 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 44 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 45 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 46 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 47 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 48 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 49 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 50 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 51 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 52 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 53 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 54 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 55 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 56 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 57 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 58 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 59 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 60 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 61 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 62 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 63 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 64 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 65 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 66 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 67 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 68 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 69 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 70 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 71 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 72 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 73 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 74 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 75 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 76 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 77 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 78 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 79 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 80 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 81 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 82 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 83 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 84 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 85 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 86 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 87 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 88 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 89 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 90 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 91 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 92 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 93 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 94 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 95 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 96 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 97 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 98 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 99 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 100 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 101 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 102 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 103 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 104 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 105 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 106 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 107 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 108 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 109 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 110 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 111 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 112 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 113 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 114 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 115 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 116 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 117 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 118 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 119 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 120 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 121 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 122 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 123 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 124 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 125 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 126 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 127 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 128 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 129 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 130 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 131 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 132 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 133 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 134 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 135 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 136 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 137 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 138 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 139 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 140 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 141 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 142 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 143 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 144 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 145 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 146 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 147 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 148 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 149 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 150 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 151 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 152 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 153 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 154 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 155 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 156 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 157 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 158 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 159 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 160 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 161 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 162 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 163 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 164 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 165 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 166 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 167 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 168 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 169 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 170 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 171 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 172 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 173 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 174 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 175 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 176 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 177 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 178 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 179 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 180 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 181 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 182 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 183 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 184 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 185 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 186 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 187 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 188 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 189 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 190 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 191 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 192 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 193 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 194 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 195 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 196 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 197 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 198 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 199 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 200 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 201 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 202 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 203 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 204 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 205 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 206 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 207 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 208 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 209 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 210 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 211 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 212 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 213 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 214 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 215 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 216 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 217 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 218 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 219 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 220 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 221 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 222 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 223 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 224 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 225 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 226 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 227 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 228 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 229 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 230 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 231 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 232 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 233 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 234 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 235 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 236 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 237 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 238 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 239 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 240 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 241 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 242 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 243 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 244 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 245 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 246 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 247 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 248 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 249 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 250 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 251 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 252 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 253 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 254 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 255 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 256 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 257 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 258 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 259 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 260 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 261 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 262 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 263 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 264 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 265 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 266 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 267 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 268 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 269 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 270 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 271 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 272 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 273 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 274 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 275 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 276 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 277 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 278 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 279 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 280 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 281 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 282 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 283 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 284 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 285 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 286 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 287 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 288 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 289 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 290 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 291 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 292 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 293 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 294 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 295 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 296 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 297 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 298 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 299 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 300 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 301 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 302 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 303 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 304 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 305 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 306 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 307 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 308 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 309 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 310 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 311 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 312 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 313 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 314 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 315 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 316 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 317 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 318 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 319 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 320 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 321 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 322 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 323 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 324 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 325 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 326 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 327 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 328 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 329 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 330 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 331 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 332 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 333 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 334 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 335 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 336 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 337 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 338 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 339 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 340 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 341 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 342 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 343 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 344 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 345 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 346 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 347 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 348 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 349 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 350 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 351 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 352 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 353 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 354 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 355 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 356 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 357 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 358 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 359 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 360 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 361 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 362 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 363 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 364 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 365 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 366 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 367 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 368 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 369 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 370 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 371 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 372 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 373 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 374 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 375 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 376 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 377 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 378 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 379 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 380 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 381 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 382 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 383 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 384 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 385 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 386 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 387 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 388 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 389 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 390 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 391 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 392 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 393 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 394 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 395 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 396 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 397 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 398 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 399 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 400 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 401 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 402 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 403 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 404 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 405 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 406 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 407 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 408 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 409 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 410 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 411 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 412 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 413 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 414 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 415 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 416 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 417 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 418 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 419 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 420 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 421 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 422 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 423 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 424 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 425 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 426 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 427 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 428 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 429 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 430 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 431 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 432 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 433 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 434 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 435 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 436 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
