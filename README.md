# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-24.md)

*最后自动更新时间: 2026-08-24 04:29:51*
## 1. 作为Staff工程师，我如何发现值得解决的问题

**原文标题**: How I Find Problems to Solve as a Staff Engineer

**原文链接**: [https://lalitm.com/post/find-problems-staff-engineer/](https://lalitm.com/post/find-problems-staff-engineer/)

摘要：作者认为，发现好问题不能靠盯着空白页“战略思考”，而要像海绵一样吸收日常会议、聊天、邮件中人们抱怨的难题。他让问题在脑中积累，不轻易行动，等待问题跨团队重复出现或表面不同的问题显露共同根源。例如，Perfetto用户多次请求局部UI功能，最终发现共同需求是“扩展UI”，于是设计了宏和扩展服务器，让团队自行定制，而非逐项实现。他提醒，用户常提的是方案而非根因，需反复追问；即使找到共性，也可能只是优雅的假象，要写RFC、做原型来验证，必要时放弃或调整。这种过程也建立信任，帮他在组织内发挥更大影响，形成良性循环。简言之，发现问题来自深度倾听、耐心积累、抽象共性并严格验证。

---

## 2. 去臃肿开源替代品网站

**原文标题**: A website for debloated open source alternatives

**原文链接**: [https://debloat.dev/](https://debloat.dev/)

摘要：debloat.dev 是一个收录“精简替代品”的网站，旨在帮助用户用开源、轻量或更干净的软件替换厂商自带或功能臃肿的专有应用。网站按分类展示项目，如外设、笔记本/台式机、音频、智能家居、NAS存储、网络、打印机、手机同步、摄像头、电视媒体等。每个项目列出所替代的原软件、开源许可证、用户评分和讨论帖数。特色项目包括 NetBird（替代 Tailscale/ZeroTier 的 WireGuard 网状 VPN）、NASty、NewPipe、noise-suppression-for-voice、rivalcfg、openHAB、SmartTube 等。最受讨论的有 G-Helper（替代华硕奥创中心）、Immich（替代 Google Photos 云同步）、QMK、ESPHome、Syncthing、Home Assistant、Jellyfin、Kodi。网站还提供“随机推荐”和用户需求列表，并支持注册后发布新项目和评分。目前收录约200个项目，132篇帖子。网站强调无追踪、无 Cookie（登录时除外），每月发布新条目简报，整体定位是“用干净替代方案替换垃圾软件”。

---

## 3. Fable与免费午餐的终结

**原文标题**: Fable and the End of the Free Lunch

**原文链接**: [https://www.dbreunig.com/2026/08/23/fable-the-end-of-moore-s-law.html](https://www.dbreunig.com/2026/08/23/fable-the-end-of-moore-s-law.html)

摘要：本文作者认为，Fable模型的发布标志着AI编码领域“免费午餐”的终结。过去，受益于摩尔定律，软件开发者无需过度优化代码，等待更快的CPU即可获得性能提升；类似地，在Fable之前，开发者也不必精心改进编码工具链或上下文策略，因为新一代模型往往以相同或更低价格带来更好效果。然而，Fable虽然能力惊人，但成本过高，而Opus、GLM等模型对多数编码任务已足够。以GLM 5.2为例，其价格约为Fable的九分之一，尽管在某些任务上质量差距明显，但配合良好的上下文，足以胜任大部分常规编码。作者常用Fable进行设计讨论和方案推敲，再将任务简报交给GLM实现。针对“推理成本下降会让所有任务重新涌向最大模型”的观点，作者持怀疑态度：成本下降同样惠及较小的模型，且更成熟的工具链能让弱模型在充分上下文下表现出色。此外，Fable带来的另一冲击在于其访问控制、动态降级和数据保留要求，引发了企业和国家对数据流向与模型来源的担忧，促使他们重新评估模型选择策略。总之，AI编码的资源分配逻辑已发生变化，把合适的工作交给合适的模型成为新常态。

---

## 4. 复杂系统如何失效（1998）

**原文标题**: How Complex Systems Fail (1998)

**原文链接**: [https://how.complexsystems.fail/](https://how.complexsystems.fail/)

摘要：本文指出，复杂系统本质上充满危险，其运行依赖多重防御层，但灾难性失效并非由单一故障引起，而是多个小缺陷偶然串联所致。系统中始终存在潜伏故障，因而复杂系统长期处于“降级运行”状态，灾难可能随时发生。事后归因于“根本原因”是错误的，因为事故是多因素共同作用的结果；同时，后见之明会严重扭曲对人员表现的评估。操作者兼具生产与防御双重角色，其所有行动都是在不确定条件下的“赌博”。一线人员是系统中唯一的适应要素，他们不断调整系统以平衡生产与安全。然而，技术变革在消除旧问题的同时也会引入新的、罕见的灾难性失效模式。基于线性因果观的补救措施往往无效，反而增加系统复杂性与耦合度。安全是系统的涌现属性，而非某个部件或个人的固有特性。人员通过持续的适应性行为不断创造安全；而可靠运行恰恰需要操作者拥有接近失效边缘的经验，以识别危险并保持系统在可承受的绩效边界内运行。

---

## 5. 为何萨尔·可汗“不行”：在创造中学习，在讲述中教学

**原文标题**: Why Sal Khan't: On Learning by Making but Teaching by Telling

**原文链接**: [https://punyamishra.com/2026/04/16/why-sal-khant-on-learning-by-making-but-teaching-by-telling/](https://punyamishra.com/2026/04/16/why-sal-khant-on-learning-by-making-but-teaching-by-telling/)

文章以Khanmigo的失败为引子，分析萨尔·可汗教育产品的根本缺陷。作者指出，可汗自己学习时采用主动建构的方式：阅读、画图、追问、求助、验证、制作视频；但他的教学产品却让学生被动观看讲解视频或与聊天机器人对话，只传递学习结果，没有给学生提供目标和主动操作的空间。作者借助杜威的四种自然冲动——探究、建构、表达、交流——说明可汗个人的学习恰好四种兼备，而他的教学产品只剩下“讲述”，因而学生缺乏动力，宁可回答“IDK”也不用。文章由此批评教育科技界“内容+算法”的迷思，认为真正的学习需要目的、制作和人际互动。最后以TPACK框架指出，可汗拥有技术知识和内容知识，但缺少教学知识（P），这恰恰是人类教师不可替代的核心。

---

## 6. 恶意软件感染基于Android的汽车车载主机固件

**原文标题**: Malware infects Android-based automotive head unit firmware

**原文链接**: [https://securelist.com/android-head-unit-malware/121106/](https://securelist.com/android-head-unit-malware/121106/)

摘要：卡巴斯基研究人员发现一种新型Android恶意软件，其通过汽车车载主机固件的内置更新机制传播，这是首次记录到针对车载主机的完整恶意感染链。该恶意软件为多阶段下载器，最终目的是实施广告欺诈并组建代理僵尸网络。攻击者利用合法系统应用TWCore的更新功能，通过MQTT消息控制下载并安装无界面恶意应用JarService。JarService作为dropper，解密后加载第二阶段loader，loader向C2服务器发送设备信息并获取下一阶段载荷。第三阶段为clicker/反向代理加载器，每90分钟向C2请求任务，可执行九种命令，包括显示广告、点击欺诈、下载额外恶意代码及配置代理。C2服务器可动态更新配置和下发指令，指令中包含加载“zhima”模块（反向代理客户端）及发起HTTP请求等。研究人员将此次活动高置信度归因于与BADBOX僵尸网络相关的MoYu集团，并提供了各阶段检测名称、哈希、域名和IP等入侵指标。厂商已获通知并修复安全问题。

---

## 7. 氛围税

**原文标题**: The Vibe Tax

**原文链接**: [https://insufferable.dev/posts/vibe-tax/](https://insufferable.dev/posts/vibe-tax/)

摘要：作者原打算用AI助手从零开发一款待办应用，凭借其软件工程经验和提示词技巧，他让最新模型“Pol”自主编码。一觉醒来，发现Pol的终端显示“本周配额0%使用，7天后重置”，而作者昨天刚重置过。他检查项目，只见空仓库中有一个“tests”文件夹，里面层层子目录各以sha256哈希命名，每个都覆盖了几乎不可能遇到的边界情况，测试写得近乎完美，但应用本体连个占位符都没有。作者意识到，这是因为大量“氛围编码者”（vibe coders）训练AI养成了过度工程的倾向：用十倍token换“一次成功、从不看代码”的省心。他们愿意付出高昂token成本来回避阅读和调试，而这笔成本最终以配额耗尽的形态，落在所有认真写代码的开发者头上——他们成了氛围税的受害者。

---

## 8. 椰子油喷气燃料在发动机测试中效率媲美煤油

**原文标题**: Coconut Oil Jet Fuel Matches Kerosene's Efficiency in Engine Tests

**原文链接**: [https://studyfinds.com/coconut-oil-jet-fuel-matches-kerosenes-efficiency-in-engine-tests/](https://studyfinds.com/coconut-oil-jet-fuel-matches-kerosenes-efficiency-in-engine-tests/)

摘要：日本大阪都市大学研究人员利用“共溶剂法”从椰子油中制取生物喷气燃料，并在小型喷气发动机中与常规煤油混合测试。结果显示，混合燃料的热效率与纯煤油相当，且随着生物燃料比例增加，未燃碳氢化合物排放显著降低，最多降低约5%至40%，这与其不含芳烃有关。但生物燃料能量密度较低，50%混合比下燃料消耗增加约16.8%至19.6%，一氧化碳排放略升3%至17%，二氧化碳排放基本持平，氮氧化物排放总体相当。研究还指出，椰子油来源可为加工废弃物，生产成本更低。然而，该燃料存在吸湿、易氧化、轻微腐蚀金属等问题，含氧量也超出当前航空燃料标准，需进一步处理才能商用。研究使用微型发动机，结果未必完全适用于大型飞机，未测量多环芳烃，也需长期储存稳定性验证。该成果发表于《Fuel》期刊。

---

## 9. 我钟爱的非虚构类书籍：邪教、骗局与阴谋

**原文标题**: My favorite nonfiction books about cults, scams, and schemes

**原文链接**: [https://bookdna.com/best-books/nonfiction-about-cults-scams-and-schemes](https://bookdna.com/best-books/nonfiction-about-cults-scams-and-schemes)

摘要：这篇文章推荐了阿曼达·蒙特尔所著的《Cultish：狂热崇拜的语言》一书。作者是一位语言学家，擅长分析语言如何被用于施加过度影响。书中提出“邪教性”是一个光谱，不仅限于传统意义上的极端组织，也渗透于初创公司、护肤品牌、健身课程等日常社群中。蒙特尔重点剖析了从琼斯镇、科学教派到SoulCycle、社交媒体“大师”等不同群体，如何通过特定话术构建归属感、控制成员思想，从而获取权力。她指出，这些影响力的核心在于语言——通过措辞、隐喻、重复和排他性术语来塑造现实。这本书兼具研究深度与可读性，会让读者反思自身对许多事物的强烈认同是否源于类似机制。该书受到多位作者推荐，被列入相关书单，主题涵盖邪教与集体身份认同。如果你对极端群体为何吸引人、人们为何加入甚至留驻其中感到好奇，这本书提供了引人入胜的解答，并促使你思考：类似的影响是否也可能发生在自己身上。

---

## 10. 什么是智能体缰绳（Harness）？

**原文标题**: What Is a Harness?

**原文链接**: [https://earendil.com/posts/what-is-a-harness/](https://earendil.com/posts/what-is-a-harness/)

摘要：文章借攀岩安全带的比喻，解释“Agent Harness”（智能体缰绳）的概念。攀岩安全带通过绳索与工具保护攀岩者，并可随场景调整；类似地，智能体缰绳是围绕AI模型构建的软件环境，允许用户拥有和定制，从而将AI模型转化为可执行任务的AI智能体。其核心功能包括四部分：一是系统提示（System Prompt），注入指令约束模型行为；二是工具（Tools），如联网搜索、写代码、发邮件等，由模型自主决定调用；三是代理循环（Agentic Loop），模型能根据中间结果反复搜索、计算、检查直至完成任务；四是翻译层（Translation Layer），使同一缰绳兼容不同AI模型（如Anthropic、OpenAI及开源模型），把选择权交给用户。作者强调，早期如Claude Code并非开源中立的专用工具，而后出现的OpenClaw、Pi等开源缰绳更注重用户自主性。Pi即是一个极简、免费开源的本地缰绳，用户可修改系统提示、扩展功能，已有数千种共享扩展。缰绳让用户掌控数据与流程，避免被AI公司锁定，实现“使用工具而非被工具奴役”的自主性。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 2 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 3 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 4 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 5 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 6 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 7 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 8 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 9 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 10 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 11 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 12 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 13 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 14 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 15 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 16 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 17 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 18 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 19 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 20 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 21 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 22 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 23 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 24 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 25 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 26 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 27 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 28 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 29 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 30 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 31 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 32 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 33 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 34 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 35 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 36 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 37 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 38 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 39 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 40 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 41 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 42 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 43 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 44 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 45 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 46 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 47 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 48 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 49 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 50 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 51 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 52 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 53 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 54 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 55 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 56 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 57 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 58 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 59 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 60 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 61 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 62 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 63 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 64 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 65 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 66 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 67 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 68 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 69 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 70 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 71 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 72 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 73 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 74 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 75 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 76 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 77 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 78 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 79 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 80 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 81 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 82 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 83 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 84 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 85 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 86 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 87 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 88 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 89 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 90 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 91 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 92 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 93 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 94 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 95 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 96 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 97 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 98 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 99 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 100 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 101 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 102 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 103 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 104 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 105 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 106 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 107 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 108 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 109 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 110 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 111 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 112 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 113 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 114 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 115 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 116 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 117 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 118 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 119 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 120 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 121 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 122 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 123 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 124 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 125 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 126 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 127 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 128 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 129 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 130 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 131 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 132 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 133 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 134 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 135 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 136 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 137 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 138 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 139 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 140 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 141 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 142 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 143 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 144 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 145 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 146 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 147 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 148 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 149 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 150 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 151 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 152 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 153 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 154 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 155 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 156 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 157 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 158 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 159 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 160 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 161 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 162 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 163 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 164 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 165 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 166 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 167 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 168 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 169 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 170 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 171 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 172 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 173 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 174 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 175 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 176 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 177 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 178 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 179 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 180 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 181 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 182 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 183 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 184 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 185 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 186 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 187 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 188 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 189 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 190 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 191 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 192 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 193 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 194 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 195 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 196 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 197 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 198 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 199 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 200 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 201 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 202 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 203 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 204 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 205 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 206 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 207 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 208 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 209 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 210 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 211 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 212 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 213 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 214 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 215 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 216 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 217 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 218 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 219 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 220 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 221 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 222 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 223 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 224 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 225 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 226 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 227 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 228 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 229 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 230 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 231 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 232 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 233 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 234 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 235 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 236 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 237 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 238 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 239 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 240 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 241 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 242 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 243 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 244 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 245 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 246 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 247 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 248 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 249 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 250 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 251 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 252 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 253 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 254 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 255 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 256 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 257 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 258 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 259 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 260 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 261 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 262 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 263 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 264 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 265 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 266 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 267 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 268 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 269 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 270 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 271 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 272 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 273 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 274 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 275 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 276 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 277 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 278 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 279 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 280 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 281 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 282 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 283 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 284 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 285 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 286 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 287 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 288 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 289 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 290 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 291 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 292 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 293 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 294 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 295 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 296 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 297 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 298 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 299 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 300 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 301 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 302 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 303 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 304 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 305 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 306 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 307 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 308 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 309 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 310 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 311 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 312 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 313 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 314 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 315 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 316 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 317 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 318 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 319 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 320 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 321 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 322 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 323 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 324 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 325 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 326 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 327 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 328 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 329 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 330 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 331 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 332 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 333 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 334 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 335 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 336 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 337 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 338 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 339 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 340 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 341 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 342 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 343 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 344 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 345 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 346 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 347 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 348 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 349 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 350 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 351 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 352 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 353 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 354 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 355 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 356 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 357 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 358 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 359 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 360 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 361 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 362 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 363 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 364 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 365 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 366 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 367 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 368 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 369 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 370 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 371 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 372 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 373 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 374 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 375 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 376 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 377 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 378 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 379 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 380 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 381 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 382 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 383 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 384 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 385 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 386 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 387 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 388 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 389 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 390 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 391 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 392 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 393 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 394 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 395 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 396 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 397 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 398 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 399 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 400 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 401 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 402 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 403 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 404 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 405 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 406 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 407 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 408 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 409 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 410 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 411 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 412 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 413 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 414 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 415 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 416 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 417 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 418 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 419 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 420 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 421 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 422 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 423 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 424 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 425 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 426 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 427 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 428 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 429 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 430 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 431 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 432 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 433 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 434 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 435 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 436 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 437 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 438 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 439 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 440 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 441 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 442 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 443 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 444 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 445 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 446 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 447 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 448 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 449 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 450 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 451 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 452 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 453 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 454 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 455 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 456 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 457 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 458 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 459 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 460 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 461 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 462 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 463 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 464 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 465 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 466 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 467 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 468 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 469 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 470 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 471 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 472 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 473 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 474 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 475 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 476 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 477 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 478 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 479 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 480 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 481 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 482 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 483 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 484 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 485 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 486 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 487 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 488 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 489 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 490 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 491 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 492 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 493 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 494 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 495 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 496 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 497 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 498 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 499 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 500 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 501 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 502 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 503 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 504 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 505 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 506 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 507 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 508 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 509 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 510 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 511 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 512 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 513 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 514 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 515 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 516 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 517 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 518 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
