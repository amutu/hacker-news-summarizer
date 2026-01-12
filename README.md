# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-12.md)

*最后自动更新时间: 2026-01-12 20:37:45*
## 1. 协作：Claude代码，助您完成剩余工作

**原文标题**: Cowork: Claude Code for the rest of your work

**原文链接**: [https://claude.com/blog/cowork-research-preview](https://claude.com/blog/cowork-research-preview)

**《Cowork：Claude代码助力你的日常工作》摘要**

Anthropic公司为macOS平台的Claude Max订阅用户推出了Cowork功能，目前处于研究预览阶段。该功能将Claude Code的能力从开发者群体扩展至普通用户，使任何人都能借助Claude作为智能助手处理日常电脑任务。

Cowork的工作原理是允许Claude访问用户电脑上的指定文件夹。随后，Claude可在该空间内自主读取、编辑和创建文件，以完成多步骤任务，例如整理下载内容、根据截图创建电子表格或基于笔记起草报告。相比标准聊天模式，它具备更强的自主性：制定计划并执行任务，同时随时向用户通报进展。

该功能与现有Claude连接器集成，并新增了创建文档和演示文稿的“技能”。结合Chrome浏览器中的Claude使用时，还能处理基于网络的任务。用户可排队提交多项任务并进行异步交互，类似于给同事留言协作。

Anthropic强调用户可控性：Claude仅访问授权文件夹，并在执行重要操作前征求用户同意。但公司也提醒该功能存在固有风险，包括可能的文件误删或“提示词注入”攻击，建议用户提供清晰指令并保持谨慎。

作为早期研究预览版本，Anthropic计划根据用户反馈快速改进Cowork，未来目标包括实现跨设备同步和推出Windows版本。

---

## 2. TimeCapsuleLLM：仅基于1800-1875年间数据训练的大型语言模型

**原文标题**: TimeCapsuleLLM: LLM trained only on data from 1800-1875

**原文链接**: [https://github.com/haykgrigo3/TimeCapsuleLLM](https://github.com/haykgrigo3/TimeCapsuleLLM)

**TimeCapsuleLLM 项目概述**

TimeCapsuleLLM 是一个从头开始训练的语言模型，其训练数据完全来自特定时期和地点（最初是1800年至1875年的伦敦）的历史文本。其目标是创建一个能够真实模仿该时代语言、词汇和世界观的人工智能，方法是避免使用任何现代数据或偏见，这种方法被称为“选择性时间训练”。

该项目已历经多个版本：
*   **v0 和 v0.5：** 早期模型（1600万和1.23亿参数）显示出符合时代的语言特征，但受限于小规模数据集（约187MB和约435MB），导致输出不连贯或产生幻觉内容。
*   **v1：** 一个更大的7亿参数模型，在约6.25GB数据上训练，开始能够将提示词与其训练语料库中的真实历史事件和人物联系起来。
*   **v2（开发中）：** 当前的重点是使用更大的90GB数据集。在15GB数据样本上训练的初步小型模型（v2mini-eval1/2，3亿参数）显示出更连贯的维多利亚时代散文风格，但仍存在事实错误和分词问题。

项目创建者强调从头开始训练，而非对GPT-2等现代模型进行微调，以确保人工智能的知识纯粹是历史性的。该过程包括整理时代文本、构建自定义分词器，然后训练模型。该项目基于nanoGPT和微软的Phi 1.5等框架构建。

---

## 3. 邮政套利

**原文标题**: Postal Arbitrage

**原文链接**: [https://walzr.com/postal-arbitrage](https://walzr.com/postal-arbitrage)

本文介绍了“邮政套利”这一概念——利用亚马逊Prime会员的免费配送服务，将低价小商品作为传统邮递的新颖经济替代方案。作者指出，在美国邮票成本为0.78美元的背景下，许多符合Prime条件的商品（如饮料冲剂、意面、螺丝钉甚至单个土豆）能以更低价格购入，并在1-2天内直送达收件人。

其核心理念不仅是节省费用，更是通过寄送实体物品（往往带有幽默色彩）来建立令人难忘的情感联结。通过添加免费礼品留言，一罐普通的番茄酱也能转化为承载个性化信息的载体，激发收件人的惊喜与互动。

作者实时列举了单价低于0.78美元的商品示例，并分享了2023年的趣事：向家人寄送单价1美元的豆类罐头后，在群聊中引发了趣味送礼的连锁反应，印证了这种模式在促进情感联结与增添生活趣味方面的成功。

---

## 4. OpenCode中存在未经身份验证的远程代码执行漏洞

**原文标题**: Unauthenticated remote code execution in OpenCode

**原文链接**: [https://cy.md/opencode-rce/](https://cy.md/opencode-rce/)

**摘要**

OpenCode作为一款AI编程助手，存在严重安全漏洞，允许未经身份验证的远程代码执行。在1.1.10版本之前，该软件启动时会自动开启一个无需身份验证的HTTP服务器，暴露了执行Shell命令、创建终端和读取文件的接口。任何本地进程（或在1.0.216版本之前，任何网站）均可连接此服务器，并以用户权限运行任意代码。

虽然1.1.10版本现已默认禁用该服务器，但若通过配置或参数启用，其仍完全无需身份验证。当服务器运行时，所有版本均存在多种攻击途径，包括：任何本地进程、来自`localhost`的网页，或当使用`--mdns`参数时本地网络中的任意设备。此外，CORS策略允许`*.opencode.ai`域名的访问，这意味着若该域名遭入侵或存在XSS漏洞，所有启用服务器的用户均可能被攻击。

供应商在v1.0.216中静默修复了CORS问题，并在v1.1.10中默认禁用服务器。然而，核心问题如缺乏身份验证、服务器运行时无用户提示以及高风险的`--mdns`行为仍未解决。建议用户及时更新版本、避免启用服务器功能，且不要使用`--mdns`参数。

---

## 5. 日期已过，时序正当道

**原文标题**: Date is out, Temporal is in

**原文链接**: [https://piccalil.li/blog/date-is-out-and-temporal-is-in/](https://piccalil.li/blog/date-is-out-and-temporal-is-in/)

本文批评了JavaScript的`Date`对象存在的诸多缺陷：不一致的解析方式、从零开始的月份计数、有限的时区支持以及可变的特性——这些特性可能导致日期值被意外修改。作者认为`Date`从根本上曲解了时间概念，因为现实世界的日期是不可变的概念，而`Date`对象却可以通过引用值被随意更改。

文章介绍了现代替代方案`Temporal`。与`Date`不同，`Temporal`是一个命名空间对象，提供清晰且专为特定目的设计的类（例如`PlainDate`、`ZonedDateTime`）来处理日期、时间和时长。它提供不可变的实例，消除了意外修改的风险，并提供了更好的时区和日历支持。虽然由于JavaScript的对象特性，`Temporal`对象在技术上仍具有可变性，但其设计确保日期值在创建后保持不变。

总之，`Temporal`通过更直观、可靠且具备全球意识的API解决了`Date`的缺陷，标志着JavaScript中日期和时间处理的重大进步。

---

## 6. LLVM：不足之处

**原文标题**: LLVM: The bad parts

**原文链接**: [https://www.npopov.com/2026/01/11/LLVM-The-bad-parts.html](https://www.npopov.com/2026/01/11/LLVM-The-bad-parts.html)

本文从维护者的角度对LLVM进行了批判，重点指出了关键挑战与设计缺陷。主要的高层问题包括代码审查能力不足、频繁的API与中间表示（IR）变动、构建时间缓慢、持续集成不稳定，以及缺乏全面的端到端测试。作者还提到后端分化问题——修复常针对特定目标平台，且编译速度与运行时性能的跟踪机制薄弱。

在IR设计方面，文章指出了“未定义”值带来的问题，这增加了优化与逻辑推断的复杂性；同时持续存在的不严谨规范与不完整定义问题，尤其在内存来源追踪方面。文章还批评了约束条件编码方式的不一致，以及对非标准浮点数语义处理的复杂性。

最后，作者指出进行大规模变更的实际困难，并以“新”通行管理器等长期部分迁移为例，说明项目的规模与惯性。全文基调是建设性的，将这些观点视为改进的契机而非回避LLVM的理由。

---

## 7. 展示HN：SolidWorks中的AI应用

**原文标题**: Show HN: AI in SolidWorks

**原文链接**: [https://www.trylad.com](https://www.trylad.com)

本贴宣布为热门3D CAD软件SolidWorks推出AI集成功能。此次更新引入了多项新特性与改进，旨在优化设计工作流程。

主要新增功能包括：**规划模式**（可能用于协助用户构建设计流程）和**宏编写/运行**功能（支持通过AI生成脚本自动执行重复性任务）。

更新还重点关注质量控制，新增**草图问题检测与报告**功能，帮助用户及早发现并修复问题。在性能方面，**缓存效率得到提升**以优化运行表现，同时进行了**多项AI上下文改进与错误修复**，使工具更可靠、更直观。

总之，本次版本更新将AI在SolidWorks中的作用从辅助支持扩展到更主动的规划、自动化及错误预防，同时进一步完善了其核心功能。

---

## 8. 软盘原来是孩子们最棒的电视遥控器。

**原文标题**: Floppy disks turn out to be the greatest TV remote for kids

**原文链接**: [https://blog.smartere.dk/2026/01/floppy-disks-the-best-tv-remote-for-kids/](https://blog.smartere.dk/2026/01/floppy-disks-the-best-tv-remote-for-kids/)

本文详细介绍了一个利用软盘制作儿童友好型电视遥控器的项目。该项目旨在为三岁儿童提供一种具体、易懂的方式，使其能够独立选择和控制媒体内容，从而避开现代智能电视的复杂操作和自动播放功能。

作者设计了一款定制设备：插入软盘即可触发Chromecast播放相应视频。该系统并非使用RFID标签，而是通过读取软盘中存储的小文件（"autoexec.sh"）来运作，真实的机械运转声也成为体验的一部分。主要技术挑战包括改造软驱以检测磁盘插入、使用AVR微控制器读取磁盘数据，以及利用锂电池管理电源以应对软驱启动时的高电流需求。

该系统的工作原理是：插入软盘时，磁盘内的微控制器会唤醒ESP8266 WiFi模块，随后向服务器发送指令播放对应视频；弹出软盘则暂停播放。项目取得了成功，孩子很快学会了通过实体磁盘来控制节目和音乐播放，实现了打造一个赋能型、非成瘾性媒体界面的初衷。

---

## 9. Clearspace（YC W23）正在招聘应用研究员（机器学习方向）

**原文标题**: Clearspace (YC W23) Is Hiring an Applied Researcher (ML)

**原文链接**: [https://www.ycombinator.com/companies/clearspace/jobs/GOWiDwp-research-engineer-at-clearspace](https://www.ycombinator.com/companies/clearspace/jobs/GOWiDwp-research-engineer-at-clearspace)

**Clearspace (YC W23)** 正在旧金山招聘一名**应用研究员（机器学习方向）**。该公司致力于开发技术，保护用户注意力免受手机成瘾性使用和操纵性设计的影响。

**职位关键信息：**
*   **职位：** 研究工程师 / 机器学习工程师
*   **薪酬：** 15万至20万美元 + 0.50% 至 1.00% 股权
*   **地点：** 旧金山现场办公（仅限美国签证/公民）
*   **经验：** 1年以上工程/机器学习经验

**职位描述：**
该工程师将负责开发用于分类网络流量的生产模型，使应用程序能够根据用户规则过滤内容。工作重点是解决序列/时间序列模型的数据挑战（收集、特征化），并直接与创始人共同确定研究方向。

**任职

**优先考虑条件：**
*   具备网络流量数据处理经验。
*   拥有研究生阶段的研究经验。

Clearspace 是一家成立于2022年、由5人组成的活跃Y Combinator初创公司（W23批次），其应用程序曾获主流媒体报道。

---

## 10. 消息队列：一个简单的类比指南

**原文标题**: Message Queues: A Simple Guide with Analogies

**原文链接**: [https://www.cloudamqp.com/blog/message-queues-exaplined-with-analogies.html](https://www.cloudamqp.com/blog/message-queues-exaplined-with-analogies.html)

本文通过类比来解释消息队列，并将其与数据库进行对比。它将数据库描述为长期存储数据的“仓库”，而消息队列则是“邮局”，临时保存并路由从源头（生产者）到目的地（消费者）的数据（消息）。

消息队列的核心功能是实现系统间的异步通信。生产者将消息发送到队列，消费者独立地检索和处理这些消息，而生产者无需等待。这一过程通过AMQP或MQTT等协议实现。

消息队列的一个主要应用场景是微服务架构。与同步通信（如直接API调用）不同，消息队列允许服务之间进行异步通信。这带来了诸多优势，例如故障隔离（一个服务故障不会导致整个系统崩溃）、独立可扩展性以及对突发工作负载的缓冲能力，从而使应用程序更加可靠和高效。

总之，消息队列是一种解耦系统的通信媒介，能够实现可扩展且具备弹性的应用设计，尤其在微服务架构中表现突出。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 2 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 3 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 4 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 5 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 6 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 7 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 8 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 9 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 10 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 11 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 12 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 13 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 14 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 15 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 16 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 17 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 18 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 19 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 20 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 21 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 22 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 23 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 24 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 25 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 26 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 27 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 28 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 29 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 30 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 31 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 32 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 33 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 34 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 35 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 36 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 37 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 38 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 39 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 40 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 41 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 42 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 43 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 44 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 45 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 46 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 47 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 48 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 49 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 50 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 51 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 52 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 53 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 54 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 55 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 56 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 57 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 58 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 59 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 60 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 61 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 62 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 63 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 64 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 65 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 66 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 67 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 68 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 69 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 70 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 71 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 72 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 73 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 74 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 75 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 76 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 77 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 78 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 79 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 80 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 81 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 82 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 83 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 84 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 85 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 86 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 87 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 88 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 89 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 90 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 91 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 92 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 93 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 94 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 95 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 96 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 97 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 98 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 99 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 100 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 101 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 102 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 103 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 104 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 105 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 106 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 107 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 108 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 109 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 110 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 111 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 112 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 113 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 114 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 115 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 116 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 117 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 118 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 119 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 120 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 121 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 122 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 123 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 124 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 125 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 126 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 127 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 128 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 129 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 130 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 131 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 132 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 133 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 134 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 135 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 136 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 137 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 138 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 139 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 140 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 141 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 142 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 143 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 144 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 145 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 146 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 147 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 148 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 149 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 150 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 151 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 152 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 153 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 154 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 155 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 156 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 157 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 158 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 159 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 160 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 161 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 162 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 163 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 164 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 165 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 166 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 167 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 168 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 169 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 170 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 171 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 172 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 173 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 174 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 175 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 176 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 177 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 178 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 179 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 180 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 181 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 182 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 183 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 184 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 185 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 186 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 187 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 188 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 189 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 190 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 191 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 192 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 193 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 194 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 195 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 196 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 197 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 198 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 199 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 200 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 201 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 202 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 203 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 204 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 205 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 206 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 207 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 208 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 209 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 210 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 211 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 212 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 213 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 214 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 215 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 216 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 217 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 218 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 219 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 220 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 221 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 222 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 223 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 224 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 225 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 226 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 227 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 228 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 229 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 230 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 231 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 232 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 233 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 234 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 235 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 236 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 237 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 238 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 239 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 240 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 241 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 242 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 243 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 244 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 245 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 246 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 247 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 248 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 249 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 250 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 251 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 252 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 253 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 254 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 255 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 256 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 257 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 258 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 259 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 260 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 261 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 262 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 263 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 264 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 265 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 266 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 267 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 268 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 269 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 270 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 271 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 272 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 273 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 274 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 275 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 276 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 277 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 278 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 279 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 280 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 281 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 282 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 283 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 284 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 285 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 286 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 287 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 288 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 289 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 290 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 291 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 292 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 293 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 294 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 295 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 296 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
