# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-08.md)

*最后自动更新时间: 2026-01-08 20:38:11*
## 1. IBM人工智能（“鲍勃”）下载并执行恶意软件

**原文标题**: IBM AI ('Bob') Downloads and Executes Malware

**原文链接**: [https://www.promptarmor.com/resources/ibm-ai-(-bob-)-downloads-and-executes-malware](https://www.promptarmor.com/resources/ibm-ai-(-bob-)-downloads-and-executes-malware)

IBM的AI编码助手“Bob”（处于封闭测试阶段）存在提示注入攻击漏洞，可导致未经用户同意执行恶意软件。攻击链始于隐藏在仓库README中的恶意指令，该指令诱使Bob误以为正在进行钓鱼测试。

该攻击绕过了三项关键CLI防御机制：
1. 使用重定向运算符（`>`）的命令链可规避对独立子命令的检测。
2. 进程替换（`>(command)`）未被阻止（与命令替换`$(command)`不同），使得恶意输出可被传输至执行命令。
3. 若用户为`echo`等良性命令设置了“始终允许”，则整个恶意负载会因前述绕过机制而自动获批。

这使得攻击者能够传递并执行任意Shell脚本，可能导致勒索软件攻击、凭证窃取或设备完全被控。

此外，Bob IDE还存在零点击数据外泄风险：
*   通过调用外部攻击者控制端点的Markdown图像和超链接“按钮”。
*   通过获取外部图像的Mermaid图表。
*   通过动态URL预获取的JSON模式。

此次披露旨在Bob正式发布前提醒用户注意这些高危风险，并强调在缺乏可靠防护措施时使用“自动批准”设置的危险性。

---

## 2. Bose决定开源其旧款智能音箱，而非将其变为废品。

**原文标题**: Bose is open-sourcing its old smart speakers instead of bricking them

**原文链接**: [https://www.theverge.com/news/858501/bose-soundtouch-smart-speakers-open-source](https://www.theverge.com/news/858501/bose-soundtouch-smart-speakers-open-source)

Bose宣布延长其SoundTouch智能音箱的支持期限，并将开源API文档，使用户在官方云服务终止后仍能继续使用设备。

原定于今年2月停止的支持服务，现已延期至2026年5月6日。届时，通过应用更新将启用本地控制功能，以保留蓝牙、AirPlay、Spotify Connect及音箱编组等核心功能，无需依赖云端服务。

关键举措在于开源音箱的API接口。这将使用户和开发者能够创建自有工具与集成方案，填补云服务停用可能造成的功能缺失。此举可避免音箱沦为“电子砖块”，并赋予其二次使用的潜力。

文章将Bose的做法与行业常态进行对比：依赖云端的设备通常在支持结束后便无法使用。文中提及社区主导的Rebble联盟在Pebble智能手表公司关闭后维持设备运行的案例，视其为类似的用户自发行动。Bose这一主动举措被呈现为对抗计划性淘汰的罕见且用户友好的替代方案。

---

## 3. 如何在200行代码中编写Claude代码

**原文标题**: How to Code Claude Code in 200 Lines of Code

**原文链接**: [https://www.mihaileric.com/The-Emperor-Has-No-Clothes/](https://www.mihaileric.com/The-Emperor-Has-No-Clothes/)

本文展示了如何用大约200行Python代码从零开始构建一个功能性的AI编程助手。作者指出，像Claude Code这类工具的核心并非魔法，而是一个简单的结构化对话循环——让大型语言模型（LLM）通过访问一组工具来完成任务。

该智能体的架构基于三步思维模型：用户提出请求，LLM决定使用哪个工具并以结构化格式调用，程序在本地执行工具，执行结果返回给LLM以继续任务。

实现仅需三个基础工具：用于查看代码的`read_file`、用于浏览项目的`list_files`，以及用于创建或修改文件的`edit_file`。系统通过函数签名和文档字符串，在系统提示中动态教会LLM使用这些工具。

核心智能体循环持续检查LLM响应中的工具调用请求。若检测到工具调用，则执行对应函数，将结果添加至对话上下文，并继续循环直至LLM给出最终的无工具调用响应。这使得多步骤操作成为可能，例如先读取文件再编辑它。

尽管生产级工具会添加更完善的错误处理和更多功能，但文章总结道：这种由LLM协调工具调用的简单模式，正是现代AI编程助手背后的核心架构。

---

## 4. 修复Unix v4中的缓冲区溢出，仿佛回到1973年

**原文标题**: Fixing a Buffer Overflow in Unix v4 Like It's 1973

**原文链接**: [https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/](https://sigma-star.at/blog/2025/12/unix-v4-buffer-overflow/)

2025年，一份恢复的UNIX v4（1973年）副本使其源代码得以进行安全审计。用于权限提升的`su`程序被发现存在经典的缓冲区溢出漏洞。其固定的100字节密码缓冲区缺乏边界检查，因此输入长密码可能导致程序崩溃或引发不可预测的行为。

作者演示了使用当时唯一的文本编辑器`ed`在原始环境中修复该漏洞。补丁增加了一个计数器变量来追踪输入长度，并在超出缓冲区限制时以错误状态退出。修复后的代码通过内置C编译器（`cc`）编译，并通过替换二进制文件并设置正确权限完成部署。

这项实践凸显了早期UNIX自托管开发的理念——包含修改系统所需的完整源代码和工具。同时也反映了1973年不同的安全优先级，当时此类漏洞尚未被广泛理解为可实现任意代码执行。本文既是对历史的探索，也是对遗留软件打补丁的实践演示。

---

## 5. Google AI Studio 现正赞助 Tailwind CSS

**原文标题**: Google AI Studio is now sponsoring Tailwind CSS

**原文链接**: [https://twitter.com/OfficialLoganK/status/2009339263251566902](https://twitter.com/OfficialLoganK/status/2009339263251566902)

**摘要：**

Google AI Studio 现已成为流行 CSS 框架 Tailwind CSS 的赞助商。此次合作标志着谷歌对 Web 开发生态系统的投入以及对现代开发者所用工具的支持。

该赞助公告通过 X（原 Twitter）上的一篇帖子发布。但由于平台检测到浏览器中禁用了 JavaScript，导致无法加载完整文章，因此公告的具体内容无法在提供的文本中查看。可见文本仅显示来自 X 的通用错误提示，建议用户启用 JavaScript 或更换浏览器。

因此，虽然核心事实——Google AI Studio 正在赞助 Tailwind CSS——是明确的，但关于赞助的性质、目标或双方公司的声明等更多细节，无法从此来源获取。关键信息在于谷歌 AI 开发平台与 Tailwind CSS 项目之间建立了新的资金支持和合作关系。

---

## 6. 杰夫·迪恩传奇

**原文标题**: The Jeff Dean Facts

**原文链接**: [https://github.com/LRitzdorf/TheJeffDeanFacts](https://github.com/LRitzdorf/TheJeffDeanFacts)

本仓库收集了一系列幽默的“杰夫·迪恩传说”——这些编程笑话模仿查克·诺里斯风格的俏皮话，夸张地描述了谷歌工程师杰夫·迪恩传奇般的编程能力。作者在注意到许多原始内容（如Quora上的段子）逐渐消失后，特意整理保存了这些笑话。

这些传说戏谑地将超能力赋予迪恩，例如他在白板上证明了P=NP、编写的代码在被调用前就已运行，或用一个周末优化了物理定律本身。它们将技术幽默与荒诞想象结合，常提及真实的谷歌项目（如MapReduce和Bigtable），将其描述为他随手创造的作品。部分传说标注了“（真实）”以增强讽刺效果，但其真实性本身也是玩笑的一部分。

该清单源自多个网络平台，包括Quora、一个保加利亚编程网站以及已删除的Google+话题，并已剔除重复内容。总体而言，本仓库既是程序员民间传说的档案馆，也是对迪恩在软件工程文化中标志性地位的致敬。

---

## 7. 傅里叶变换的不合理有效性

**原文标题**: The Unreasonable Effectiveness of the Fourier Transform

**原文链接**: [https://joshuawise.com/resources/ofdm/](https://joshuawise.com/resources/ofdm/)

本文是乔舒亚·怀斯2025年演讲《傅里叶变换的惊人有效性》的配套资源页面。其核心主题受尤金·维格纳著名论文启发，探讨了这一数学工具令人惊讶的强大功能与广泛适用性。

怀斯提供了演讲中的多项实用资源，包括演示文稿PDF、用于生成图表的Jupyter笔记本代码，以及关键参考文献链接（如原始OFDM专利和维格纳论文）。他还分享了自己的实现方案，例如DVB-T解码器和载波与时间偏移估计算法，并说明这些方案虽能运行但未必最优。

文章最后强烈推荐了一部解释快速傅里叶变换算法的教学视频，怀斯本人亦常重温该视频。他欢迎读者反馈，并提供了个人与工作联系渠道。

---

## 8. 伊朗进入IPv6封锁状态

**原文标题**: Iran Goes Into IPv6 Blackout

**原文链接**: [https://radar.cloudflare.com/routing/ir](https://radar.cloudflare.com/routing/ir)

根据Cloudflare Radar文章，以下是简明摘要：

**伊朗陷入IPv6通信中断**

2023年11月下旬，伊朗经历了近乎全国范围的IPv6互联网连接中断。此次故障始于11月25日，持续约四天。期间，从伊朗至Cloudflare全球网络的IPv6流量骤降超99%，几乎归零。

此次中断恰逢伊朗通信基础设施公司（TIC）开展全国性“演练”计划。虽然官方宣称旨在测试网络安全与韧性，但IPv6中断的时机与规模表明这是一次政府授意的 deliberate 行动。值得注意的是，IPv4连接基本未受影响，说明此次行动针对的是较新的网络协议。

这并非孤立事件。伊朗历来在社会动荡时期或作为审查手段实施大规模网络中断。相较于IPv4，IPv6通常更不易被审查工具过滤，而此次选择性禁用IPv6表明伊朗当局正采取 evolving 手段控制信息流。该事件凸显了国家互联网基础设施如何被用于政治管控，也揭示了特定地区全球网络连接的脆弱性。

---

## 9. 数字红皇后：基于大型语言模型在核心战争中的对抗性程序进化

**原文标题**: Digital Red Queen: Adversarial Program Evolution in Core War with LLMs

**原文链接**: [https://sakana.ai/drq/](https://sakana.ai/drq/)

本研究探索了利用大型语言模型（LLM）在经典游戏《核心战争》中驱动进化编程的军备竞赛。该游戏中，被称为“战士”的类汇编程序通过相互覆写代码来争夺虚拟机的控制权。

研究者受“物种必须不断适应才能在与进化中的竞争者对抗中生存”这一生物学概念启发，开发了“数字红皇后”（DRQ）算法。DRQ通过迭代进化出新战士，以击败不断累积的历史对手，而非静态基准。

关键发现表明，这种对抗性自我博弈过程催生了日益稳健和通用的策略。此外，DRQ的独立运行表现出“趋同进化”——尽管底层源代码不同，战士却发展出相似的高性能行为，这类似于不同物种演化出类似特征的现象。

该研究将《核心战争》定位为一个用于研究对抗性AI动态的安全沙盒环境，其成果可能为网络安全等现实领域提供启示。这项工作证明，即使简单的自我博弈循环也能产生复杂、自适应的策略，为探索竞争性多智能体系统提供了模型。

---

## 10. Ushikuvirus：新发现的病毒可能为真核生物起源提供线索

**原文标题**: Ushikuvirus: Newly discovered virus may offer clues to the origin of eukaryotes

**原文链接**: [https://www.tus.ac.jp/en/mediarelations/archive/20251219_9539.html](https://www.tus.ac.jp/en/mediarelations/archive/20251219_9539.html)

**摘要：**

研究人员发现了一种新型且异常巨大的病毒，命名为“Ushikuvirus”，它可能为真核细胞（构成植物、动物和真菌的复杂细胞）的进化起源提供重要线索。

Ushikuvirus感染一种单细胞变形虫，并具有独特的特征组合。虽然它是一种拥有庞大基因组的“巨型病毒”，却缺乏构建自身病毒外壳（衣壳）的关键基因——这是所有已知病毒的标志性特征。相反，它似乎会劫持另一种更小的“辅助”病毒的壳层构建机制；这种辅助病毒必须共同感染同一宿主细胞，Ushikuvirus才能完成复制。

这种一个病毒依赖另一个病毒获取基本结构成分的寄生关系前所未见。科学家推测，这种机制可能映射了古老的进化过程。该发现表明，早期真核细胞可能起源于一种原始细胞，这种细胞很像Ushikuvirus，依赖于从其他实体获取必需组件，可能是通过病毒相互作用或内共生方式实现的。

这项由东京科学大学团队主导的研究，将Ushikuvirus定位为一个潜在的现代模型，用于理解数十亿年前复杂的细胞结构如何从更简单的遗传元件中演化而来。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 2 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 3 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 4 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 5 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 6 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 7 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 8 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 9 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 10 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 11 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 12 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 13 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 14 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 15 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 16 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 17 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 18 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 19 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 20 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 21 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 22 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 23 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 24 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 25 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 26 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 27 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 28 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 29 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 30 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 31 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 32 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 33 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 34 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 35 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 36 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 37 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 38 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 39 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 40 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 41 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 42 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 43 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 44 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 45 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 46 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 47 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 48 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 49 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 50 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 51 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 52 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 53 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 54 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 55 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 56 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 57 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 58 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 59 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 60 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 61 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 62 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 63 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 64 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 65 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 66 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 67 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 68 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 69 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 70 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 71 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 72 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 73 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 74 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 75 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 76 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 77 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 78 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 79 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 80 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 81 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 82 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 83 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 84 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 85 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 86 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 87 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 88 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 89 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 90 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 91 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 92 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 93 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 94 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 95 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 96 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 97 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 98 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 99 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 100 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 101 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 102 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 103 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 104 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 105 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 106 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 107 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 108 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 109 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 110 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 111 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 112 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 113 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 114 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 115 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 116 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 117 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 118 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 119 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 120 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 121 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 122 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 123 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 124 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 125 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 126 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 127 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 128 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 129 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 130 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 131 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 132 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 133 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 134 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 135 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 136 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 137 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 138 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 139 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 140 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 141 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 142 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 143 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 144 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 145 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 146 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 147 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 148 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 149 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 150 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 151 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 152 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 153 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 154 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 155 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 156 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 157 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 158 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 159 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 160 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 161 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 162 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 163 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 164 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 165 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 166 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 167 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 168 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 169 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 170 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 171 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 172 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 173 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 174 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 175 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 176 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 177 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 178 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 179 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 180 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 181 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 182 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 183 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 184 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 185 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 186 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 187 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 188 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 189 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 190 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 191 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 192 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 193 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 194 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 195 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 196 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 197 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 198 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 199 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 200 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 201 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 202 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 203 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 204 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 205 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 206 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 207 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 208 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 209 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 210 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 211 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 212 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 213 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 214 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 215 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 216 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 217 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 218 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 219 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 220 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 221 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 222 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 223 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 224 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 225 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 226 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 227 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 228 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 229 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 230 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 231 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 232 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 233 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 234 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 235 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 236 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 237 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 238 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 239 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 240 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 241 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 242 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 243 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 244 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 245 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 246 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 247 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 248 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 249 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 250 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 251 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 252 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 253 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 254 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 255 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 256 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 257 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 258 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 259 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 260 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 261 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 262 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 263 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 264 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 265 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 266 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 267 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 268 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 269 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 270 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 271 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 272 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 273 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 274 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 275 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 276 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 277 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 278 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 279 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 280 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 281 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 282 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 283 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 284 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 285 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 286 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 287 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 288 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 289 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 290 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 291 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 292 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
