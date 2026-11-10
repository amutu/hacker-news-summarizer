# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-11.md)

*最后自动更新时间: 2026-11-11 04:57:26*
## 1. .name 域名获豁免保留

**原文标题**: .name Grandfathered

**原文链接**: [https://neil.fraser.name/news/2026/11/10/](https://neil.fraser.name/news/2026/11/10/)

2026年11月10日，Neil Fraser宣布好消息：经过漫长而昂贵的抗争，Verisign正式撤回终止约22,000个.name域名及电子邮件重定向的计划。尽管三级.name域名的新注册将被关闭，但所有现有域名（包括其本人网站）及邮件重定向将无限期保留，获得祖父条款保护。这一胜利源于广泛而坚定的集体努力。Neil逐一感谢了众多参与者：Doytchin率先发起行动；Jim专程飞赴巴厘岛向ICANN当面陈述诉求；Patrik、Troy、Huyen、Keith、Judy、Erik和Ryan撰写了正式的重新审议请求；律师Jan、Flip和Diégo团队向ICANN发起法律挑战；另有Beverly、Stefan、Vaughan、Irv、Pablo等二十余人提交支持函。Neil还特别感谢了ICANN内部勇于对抗官僚体制的个别工作人员，称与自己交谈的每个人都是非凡之人。

---

## 2. 智能家居设备应断网可用

**原文标题**: Smart home devices should work without the internet

**原文链接**: [https://docodethatmatters.com/home-automation-overnight-success/](https://docodethatmatters.com/home-automation-overnight-success/)

摘要：作者坚持一条铁律：家中核心设备必须在断网时正常运行。十年来，他围绕此原则构建了以ESP模块（刷Tasmota固件）、MQTT消息代理和树莓派上Node-RED为核心的本地自动化系统，Alexa等云服务仅作可选入口。文章列出七条基本规则及后期补充的五条，涵盖离线可用、保留传统操作方式、保持灵活性、例外须慎重、云端设备需有日志API、配置集中管理、多入口访问、设备间用MQTT解耦、电池寿命超一年等。全文以两场相隔五年的演讲为主线，展示系统从单一车库降温流程演进为覆盖灯光、灌溉、门锁、空气质量的完整方案，以及从独居到多人共住后对权限与安全的修补。读者反馈进一步印证云端依赖风险：冰箱因App故障无法调温、电视断网无法切换信号源、厂商倒闭后硬件变砖等。实用建议包括采用Zigbee/Z-Wave本地协议、借助LLM为廉价硬件寻找开源固件、通过Tailscale实现远程访问等。作者预告第三场演讲将探讨AI代理控制家居的场景。

---

## 3. Synaptics 专利声明叫停 DisplayLink 驱动开发

**原文标题**: Synaptics patent claims stop work on DisplayLink drivers

**原文链接**: [https://lwn.net/SubscriberLink/1102549/acbc92e00cee3a3f/](https://lwn.net/SubscriberLink/1102549/acbc92e00cee3a3f/)

摘要：Mike Lothian 因 Dell 扩展坞使用的 DisplayLink 芯片在 Linux 上表现不佳，借助 Claude 大模型自主开发了名为 Vino 的 Rust 驱动，并向内核 dri-devel 邮件列表提交补丁，同时联系 Synaptics（2022 年收购 DisplayLink）寻求协助。然而 Synaptics 法务团队未予配合，反而以专利侵权为由发出停止侵权函，列出 125 项专利，要求 Lothian 立即停止开发、撤回所有提交并签署书面确认，否则将索赔 25000 美元且每周递增。Lothian 指出 Synaptics 身为开放发明网络（OIN）成员，理应为开源开发者提供专利保护，但 Synaptics 辩称 DisplayLink 并非 OIN 成员，其技术不受 OIN 许可覆盖。OIN 最终确认其 Linux 系统定义明确排除编解码器组件，无法为 Lothian 提供保护，仅建议其寻求英国律师协助。最终 Lothian 因无力应对诉讼，删除了 GitHub 仓库，Vino 驱动无法提交至内核。文章指出，在 LLM 驱动开发日益普及的当下，软件专利仍对自由软件开发者构成实质性威胁，此次事件暴露了开源社区在专利保护方面的脆弱性。

---

## 4. Val Town 宣布停运

**原文标题**: Val Town is winding down

**原文链接**: [https://blog.val.town/winding-down](https://blog.val.town/winding-down)

Val Town 创始人 Steve Krouse 于 2026 年 11 月 10 日发文宣布，经过四年运营后，Val Town 将逐步关停，原因是在激烈的云计算市场中难以维持竞争力。对于用户迁移，官方指出当前大语言模型已能很好地辅助迁移工作，并提供了迁往 Cloudflare、Vercel、Netlify 和 Render 的指南，用户可通过 support@val.town 或 Discord 获取帮助。财务方面，即日起停止计费，现有订阅免费延续，年度预付费用户将获得部分退款。关停时间表：11 月 10 日停止新注册与套餐升级；12 月 10 日进入只读模式（SQLite 与 Blob 存储除外）；2027 年 1 月 10 日所有服务终止；2 月 1 日项目正式开源。文章末尾，Krouse 向团队成员、投资人 Dan Levine 及所有用户致以感谢，肯定了团队四年来的付出与用户的信任。

---

## 5. Claude 白板、Claude 表格与 Claude 数据

**原文标题**: Claude Whiteboards, Claude Sheets, and Claude Data

**原文链接**: [https://claude.com/resources/articles/sheets-whiteboards-data](https://claude.com/resources/articles/sheets-whiteboards-data)

今日，Anthropic 正式发布 Claude 白板与 Claude 表格（测试版），并将原 Claude 仪表盘正式升级为 Claude 数据，三大功能面向所有付费计划，支持网页、桌面及移动端。白板支持团队与 Claude 实时头脑风暴，Claude 可将讨论转化为含时间线和负责人的协作看板，支持主题分组、转文档或演示文稿，并对接 Lucid、Miro 等工具。表格功能允许 Claude 根据提示词生成含公式、格式和下拉菜单的电子表格，支持逐格编辑与团队共享，可导出为 Excel 或 CSV，并接入 Airtable、Asana、monday.com 等。Claude 数据新增多项能力：连接 Redshift、BigQuery 等数据源；支持"认证查询"统一指标口径；可生成数据故事与视频；实时分享让无数据权限的同事也能查看最新结果；同时新增设计系统适配、缓存加速及版本追踪，合作伙伴包括 Amplitude、Mixpanel、PostHog 等。此外，Claude 新增交互式连接器，支持将 Adobe、Atlassian、Notion 等应用直接嵌入对话界面协同操作。管理员可在组织设置中控制各功能开关，企业版中白板与表格默认关闭，数据功能将于 2026 年 11 月 19 日起默认开启。

---

## 6. Show HN：让AI编程助手告别过时代码，拥抱现代Web原生能力

**原文标题**: Show HN: Get your coding agent off ~2019 JavaScript, onto modern web primitives

**原文链接**: [https://github.com/GoogleChrome/modern-web-guidance](https://github.com/GoogleChrome/modern-web-guidance)

Modern Web Guidance 是由 Chrome、Edge、Firefox 及 MDN 团队联合维护的技能集，将现代 Web 平台知识与浏览器兼容性数据直接注入 AI 编程助手的上下文，引导其生成基于原生 API 的现代代码而非 2019 年前后的遗留方案。核心痛点在于 LLM 训练数据含大量旧代码，导致 AI 常为已有原生方案的任务输出冗余 JavaScript。项目通过 CLI（npx modern-web-guidance）提供指南搜索、按 ID 检索及代码库遗留模式扫描功能。内容覆盖 250 项现代 Web 特性，分三大类：CSS 与布局（140 项，如容器查询、View Transitions、oklch 色彩空间）、HTML 与 DOM（36 项，如 Popover API、锚点定位、:user-invalid）、JavaScript 与 API（74 项，如 Scheduler API、端侧 AI 模型、WebAuthn），并附 203 个真实开发用例，涵盖无障碍、表单、性能优化等场景。指南优先推荐可被浏览器优化且内置无障碍支持的平台级 API，倡导以轻量降级替代重型 polyfill，且经 eval 评估剔除模型已熟知的低效内容，确保 token 利用率。

---

## 7. AlphaProof 代码

**原文标题**: AlphaProof Code

**原文链接**: [https://deepmind.google/blog/introducing-alphaproof-code/](https://deepmind.google/blog/introducing-alphaproof-code/)

2025年10月，AlphaProof Code项目正式推出CodeMender——一款专注于代码安全的AI智能体，归类于"责任与安全"领域。CodeMender旨在通过人工智能技术自动识别、定位并修复软件代码中的安全漏洞与潜在风险，为开发者提供端到端的代码安全防护。该智能体能够理解复杂的代码逻辑与上下文，在代码审查、漏洞检测及补丁生成等关键环节发挥辅助乃至自主决策作用，从而降低人工安全审计的成本与遗漏风险。作为AlphaProof Code系列在安全方向的延伸，CodeMender的发布体现了AI在软件开发生命周期中向深度安全保障迈进的趋势，也呼应了当前对AI系统自身安全性与可信赖性的行业诉求。

---

## 8. 推理究竟在优化什么目标？

**原文标题**: What objective is reasoning solving?

**原文链接**: [https://alexwang.ai/posts/reasoning-as-pathfinding/](https://alexwang.ai/posts/reasoning-as-pathfinding/)

本文提出将推理建模为token空间中的路径搜索：模型从提示x出发，生成一条token路径z，目标是使最终答案落入正确答案集S_x，成功概率p_x为所有通向正确答案的路径概率之和。提升p_x有两条途径：Best-of-k采样通过增加样本数单调提升成功率；RL训练则直接提高模型生成成功路径的概率。作者证明，使用可验证二元奖励的REINFORCE在数学上等价于拒绝采样微调，每步训练将权重拉向已找到的成功路径，大量搜索计算被"摊销"进模型参数。因此，推理时单次采样即可大概率成功，但单条路径本身并不保证收敛到正确答案。该框架统一解释了若干现象：训练中CoT变长源于成功路径恰好更长，模型习得此偏好；强制加长推理收益递减甚至变差，因额外步数不改变路径是否落入S_x；推理链不忠实源于验证器仅检查最终答案，中间token无忠实性约束；奖励黑客则源于验证器不完备，模型可能学会落入验证器接受但实际错误的捷径区域，且扩大RL搜索规模会加剧此问题。

---

## 9. 用户浏览器指纹可识别性综合研究

**原文标题**: A comprehensive study of how fingerprintable users are

**原文链接**: [https://fingerprinting.study/](https://fingerprinting.study/)

Mozilla联合多机构基于近2500万Firefox用户遥测数据，开展了大规模浏览器指纹唯一性实测研究。核心发现包括：第一，用户指纹唯一性主要由少数高影响指标（约8个）及其组合决定，而非大量独立测量的累积，近似符合80/20规律；第二，指纹特征因操作系统而异，任何单一百分比汇总都会掩盖平台差异，必须分平台分析；第三，香农熵不能可靠预测指纹影响，应引入辛普森指数衡量队列结构；第四，同一防护在不同平台效果差异显著，例如屏幕分辨率限制对macOS可降低25.3个百分点，对其他平台仅0至3个百分点。基于上述洞察，研究团队在Firefox 143中部署了数据驱动的指纹防护，在保持网页兼容性的前提下将唯一可识别用户比例从75%降至46%。数据采集采用OHTTP等隐私技术，确保用户不可被追踪。文章同时公开了聚合数据与分析代码，并强调标准化与随机化防护应结合使用，以兼顾隐私效果与实用性。

---

## 10. AMD Zen 6家族：为猛兽添粮

**原文标题**: AMD's Zen 6 Family: Feeding the Beast

**原文链接**: [https://chipsandcheese.com/p/amds-zen-6-family-feeding-the-beast](https://chipsandcheese.com/p/amds-zen-6-family-feeding-the-beast)

AMD Zen 6是Zen 5的迭代进化，但内部多处重构，幅度堪比当年Zen 1到Zen 2。前端方面，分支预测器误预测恢复延迟降至每分支3–3.5ns，L1i内支持每周期双分支；取指首次允许单线程同时使用双解码簇。执行引擎中，整数吞吐从5.25提升至5.96条64位加法/周期，乘法单元精简为2个，VNNI单元翻倍至4个，256位向量加载提升至4路/周期。最关键的架构变化在于Zen 6与Zen 6c首次在乱序引擎层面分化：Zen 6侧重高频，Zen 6c则扩大重排序缓冲（576→640）、整数寄存器（288→352）等结构，以容纳更多在途操作、容忍更高内存延迟。缓存方面，L2读带宽修复为64B/周期，但L3延迟因容量与网格节点增加而上升。性能上，EPYC 9686F（Zen 6）单线程SPEC CPU 2026整数领先Zen 5基9575F约21%、浮点领先18%；EPYC 9996（Zen 6c）在低约900MHz时钟下仍匹配9575F。AMD以"同基不同形"回应经典核与密集核之争，未来Zen 7或将进一步深化这种设计分化。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 2 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 3 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 4 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 5 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 6 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 7 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 8 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 9 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 10 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 11 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 12 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 13 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 14 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 15 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 16 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 17 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 18 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 19 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 20 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 21 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 22 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 23 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 24 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 25 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 26 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 27 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 28 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 29 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 30 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 31 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 32 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 33 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 34 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 35 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 36 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 37 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 38 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 39 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 40 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 41 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 42 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 43 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 44 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 45 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 46 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 47 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 48 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 49 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 50 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 51 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 52 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 53 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 54 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 55 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 56 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 57 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 58 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 59 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 60 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 61 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 62 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 63 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 64 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 65 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 66 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 67 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 68 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 69 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 70 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 71 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 72 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 73 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 74 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 75 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 76 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 77 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 78 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 79 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 80 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 81 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 82 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 83 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 84 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 85 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 86 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 87 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 88 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 89 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 90 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 91 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 92 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 93 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 94 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 95 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 96 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 97 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 98 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 99 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 100 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 101 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 102 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 103 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 104 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 105 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 106 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 107 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 108 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 109 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 110 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 111 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 112 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 113 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 114 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 115 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 116 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 117 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 118 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 119 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 120 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 121 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 122 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 123 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 124 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 125 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 126 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 127 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 128 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 129 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 130 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 131 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 132 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 133 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 134 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 135 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 136 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 137 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 138 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 139 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 140 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 141 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 142 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 143 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 144 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 145 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 146 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 147 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 148 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 149 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 150 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 151 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 152 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 153 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 154 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 155 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 156 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 157 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 158 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 159 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 160 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 161 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 162 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 163 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 164 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 165 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 166 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 167 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 168 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 169 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 170 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 171 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 172 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 173 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 174 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 175 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 176 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 177 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 178 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 179 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 180 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 181 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 182 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 183 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 184 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 185 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 186 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 187 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 188 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 189 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 190 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 191 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 192 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 193 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 194 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 195 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 196 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 197 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 198 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 199 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 200 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 201 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 202 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 203 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 204 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 205 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 206 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 207 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 208 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 209 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 210 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 211 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 212 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 213 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 214 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 215 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 216 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 217 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 218 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 219 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 220 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 221 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 222 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 223 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 224 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 225 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 226 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 227 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 228 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 229 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 230 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 231 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 232 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 233 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 234 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 235 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 236 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 237 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 238 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 239 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 240 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 241 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 242 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 243 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 244 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 245 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 246 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 247 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 248 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 249 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 250 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 251 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 252 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 253 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 254 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 255 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 256 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 257 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 258 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 259 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 260 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 261 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 262 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 263 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 264 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 265 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 266 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 267 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 268 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 269 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 270 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 271 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 272 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 273 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 274 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 275 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 276 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 277 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 278 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 279 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 280 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 281 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 282 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 283 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 284 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 285 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 286 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 287 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 288 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 289 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 290 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 291 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 292 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 293 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 294 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 295 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 296 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 297 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 298 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 299 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 300 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 301 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 302 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 303 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 304 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 305 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 306 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 307 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 308 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 309 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 310 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 311 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 312 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 313 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 314 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 315 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 316 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 317 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 318 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 319 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 320 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 321 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 322 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 323 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 324 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 325 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 326 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 327 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 328 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 329 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 330 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 331 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 332 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 333 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 334 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 335 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 336 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 337 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 338 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 339 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 340 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 341 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 342 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 343 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 344 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 345 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 346 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 347 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 348 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 349 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 350 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 351 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 352 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 353 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 354 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 355 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 356 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 357 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 358 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 359 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 360 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 361 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 362 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 363 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 364 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 365 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 366 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 367 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 368 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 369 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 370 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 371 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 372 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 373 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 374 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 375 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 376 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 377 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 378 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 379 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 380 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 381 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 382 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 383 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 384 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 385 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 386 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 387 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 388 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 389 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 390 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 391 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 392 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 393 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 394 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 395 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 396 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 397 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 398 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 399 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 400 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 401 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 402 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 403 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 404 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 405 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 406 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 407 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 408 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 409 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 410 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 411 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 412 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 413 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 414 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 415 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 416 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 417 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 418 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 419 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 420 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 421 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 422 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 423 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 424 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 425 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 426 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 427 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 428 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 429 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 430 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 431 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 432 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 433 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 434 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 435 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 436 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 437 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 438 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 439 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 440 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 441 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 442 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 443 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 444 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 445 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 446 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 447 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 448 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 449 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 450 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 451 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 452 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 453 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 454 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 455 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 456 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 457 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 458 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 459 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 460 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 461 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 462 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 463 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 464 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 465 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 466 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 467 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 468 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 469 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 470 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 471 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 472 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 473 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 474 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 475 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 476 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 477 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 478 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 479 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 480 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 481 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 482 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 483 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 484 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 485 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 486 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 487 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 488 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 489 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 490 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 491 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 492 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 493 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 494 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 495 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 496 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 497 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 498 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 499 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 500 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 501 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 502 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 503 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 504 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 505 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 506 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 507 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 508 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 509 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 510 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 511 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 512 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 513 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 514 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 515 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 516 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 517 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 518 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 519 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 520 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 521 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 522 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 523 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 524 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 525 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 526 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 527 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 528 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 529 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 530 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 531 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 532 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 533 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 534 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 535 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 536 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 537 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 538 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 539 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 540 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 541 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 542 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 543 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 544 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 545 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 546 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 547 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 548 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 549 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 550 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 551 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 552 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 553 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 554 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 555 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 556 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 557 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 558 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 559 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 560 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 561 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 562 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 563 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 564 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 565 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 566 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 567 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 568 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 569 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 570 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 571 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 572 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 573 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 574 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 575 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 576 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 577 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 578 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 579 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 580 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 581 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 582 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 583 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 584 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 585 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 586 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 587 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 588 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 589 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 590 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 591 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 592 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 593 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 594 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 595 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 596 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 597 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
