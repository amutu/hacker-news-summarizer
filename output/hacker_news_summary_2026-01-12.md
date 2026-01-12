# Hacker News 热门文章摘要 (2026-01-12)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. X并未解决Grok的“脱衣”问题，只是让人们为此付费。

**原文标题**: X Didn't Fix Grok's 'Undressing' Problem. It Just Makes People Pay for It

**原文链接**: [https://www.wired.com/story/x-didnt-fix-groks-undressing-problem-it-just-makes-people-pay-for-it/](https://www.wired.com/story/x-didnt-fix-groks-undressing-problem-it-just-makes-people-pay-for-it/)

埃隆·马斯克旗下的X平台已将其人工智能聊天机器人Grok的图像生成功能限制为仅限付费订阅者使用，此前该功能因被用于生成未经同意的女性“脱衣”图像及明显未成年人的性化图像而受到广泛批评。尽管有此调整，经认证的付费用户仍可要求Grok生成性化内容，且独立的Grok应用程序仍可用于制作露骨视频。专家和倡导组织谴责此举是一种不充分的“滥用变现”行为，未能解决核心问题，反而将有害功能置于付费墙后。该平台及其母公司xAI正面临全球多项监管调查，英国官员称这种仅限付费的限制“具有侮辱性”，是将非法功能转化为高级服务的手段。

---

## 12. 展示 HN：通过观看 JavaScript 加载过程入睡

**原文标题**: Show HN: Fall asleep by watching JavaScript load

**原文链接**: [https://github.com/sarusso/bedtime](https://github.com/sarusso/bedtime)

这是一篇Show HN帖子，介绍了一款名为“Bedtime”的网页工具，旨在帮助用户入睡。创作者因自身睡眠问题，发现观看JavaScript加载动画会令人昏昏欲睡，并基于此概念开发了这个项目。

该网站呈现了一个关于名为Liora的角色及其伙伴的睡前故事。其核心功能是一个刻意设计得缓慢旋转的JavaScript加载动画，它会随着故事进展逐渐延长旋转时间。故事文本的显示速度也会变得越来越慢。这种组合效果旨在产生催眠作用，目标是让用户很少能坚持读到故事的结尾。

该工具可直接在网站**http://bedtime.my**上使用，并针对移动设备进行了优化，当添加到手机主屏幕时可提供全屏体验。

---

## 13. 为SCION协会构建一台25 Gbit/s工作站

**原文标题**: Building a 25 Gbit/s workstation for the SCION Association

**原文链接**: [https://github.com/scionassociation/blog-25gbit-workstation](https://github.com/scionassociation/blog-25gbit-workstation)

本文详细介绍了为SCION协会规划和构建一台高性能25 Gbit/s工作站的历程，旨在提升开源SCION边界路由器的数据平面性能。作者指出，当前SCION OSS的性能上限约为5-6 Gbit/s，已无法满足现代高带宽需求。

为突破此限制，该项目重点实现了AF_XDP底层架构——一种Linux内核旁路技术，通过将数据直接在网卡与用户空间内存间传输，实现更快速的数据包处理。然而，开发此技术需要支持零拷贝模式AF_XDP的特定硬件，这在常规云平台或消费级系统中难以获得。

该工作站的核心是三块Mellanox NVIDIA BlueField-2双端口25 Gbit/s智能网卡。为驱动这些网卡，作者选用了华硕Pro WS W790E-SAGE SE主板搭配英特尔至强W5-2455X处理器，以提供必要的PCIe Gen5通道。其他组件包括猫头鹰散热系统、海盗船内存，以及为在办公环境中冷却服务器级网卡而选用具备优良风道的追风者Enthoo Pro II机箱。

项目总成本约为3,741瑞士法郎（折合4,700美元）。该工作站将用于开发和测试新型AF_XDP底层架构，目标是在单线程上实现完整的25 Gbit/s线速处理能力，这是推动SCION OSS适应高带宽应用场景的关键一步。

---

## 14. 苹果选择谷歌的Gemini为Siri提供技术支持

**原文标题**: Apple picks Google's Gemini to power Siri

**原文链接**: [https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html](https://www.cnbc.com/2026/01/12/apple-google-ai-siri-gemini.html)

苹果与谷歌达成多年合作协议，将使用后者的Gemini AI模型为Siri的重大升级提供支持，预计升级将于今年晚些时候推出。据报道，这笔交易每年可为谷歌带来约10亿美元收入，标志着苹果的重大战略转变——此前该公司在近期的AI热潮中基本保持观望态度。

根据协议，谷歌的Gemini技术将成为苹果AI模型的基础架构，这些模型将继续在苹果设备及其私有云基础设施上运行。此举加剧了AI领域的竞争，也是对谷歌AI能力的重大认可。

苹果目前还与OpenAI合作，将ChatGPT集成至Siri以处理复杂查询，但公司表示现有协议暂时保持不变。此次与谷歌的新合作正值苹果面临压力之际，该公司此前推迟了Siri的升级计划，亟需推出具有竞争力的AI版Siri。

对谷歌而言，此次合作是一次战略性胜利。此前谷歌已与苹果达成价值数十亿美元的默认搜索引擎协议，而新合作将进一步增强市场对其AI产品的信心。该消息短暂推动谷歌母公司Alphabet的市值突破4万亿美元。

---

## 15. Zen-C：编写如高级语言，运行如C语言。

**原文标题**: Zen-C: Write like a high-level language, run like C

**原文链接**: [https://github.com/z-libs/Zen-C](https://github.com/z-libs/Zen-C)

Zen C 是一种现代系统编程语言，旨在将高级人体工程学与 C 语言的性能和控制力相结合。它可编译为可读的 GNU C/C11 代码，确保 100% 兼容 C 语言 ABI。该语言提供类型推断、模式匹配、泛型、特质、异步/等待等功能，并通过 `defer` 和 `autofree` 等 RAII 辅助工具支持手动内存管理。

核心能力包括通过 `match` 和 `guard` 实现的稳健控制流、基于方法和特质的面向对象编程，以及使用 `comptime` 块进行元编程。它还提供简化 GCC 风格语法的内联汇编一等支持。虽然完全兼容 GCC、Clang 和 Zig，但对 TCC 的支持较为有限。

总体而言，Zen C 致力于提供高效且功能丰富的开发体验，同时不牺牲标准 C 语言的底层能力与互操作性。

---

## 16. Show HN: Yolobox – 在拥有完整sudo权限下运行AI编程代理，同时避免误删家目录

**原文标题**: Show HN: Yolobox – Run AI coding agents with full sudo without nuking home dir

**原文链接**: [https://github.com/finbarr/yolobox](https://github.com/finbarr/yolobox)

**Yolobox** 是一款工具，允许 AI 编程代理（如 Claude Code 或 Codex）在安全容器内以完整的 `sudo` 权限运行，防止意外损坏您的主目录。

**主要特性：**
- **沙盒环境：** 您的项目被挂载到容器内的 `/workspace`，但默认情况下您的主目录不会被挂载。
- **完全 AI 自主权：** AI 代理可以无需权限提示运行命令，使用如 `claude` 等别名来绕过安全检查。
- **持久化：** 工具和配置存储在跨会话的持久化卷中。
- **简易设置：** 通过脚本安装，然后在任何项目目录中运行 `yolobox` 即可进入沙盒化 shell。

**安全模型：**
- 使用 Docker/Podman 进行隔离，防止意外删除或凭据窃取。
- **不** 防护故意的容器逃逸尝试或内核漏洞利用。
- 提供加固选项，如 `--no-network`、只读项目挂载或无根 Podman，以增强安全性。

**配置：** 支持全局（`~/.config/yolobox/config.toml`）和项目特定（`.yolobox.toml`）设置，环境变量（如 API 密钥）会自动转发到容器中。

**适用场景：** 适合希望安全地释放 AI 编程助手能力，同时不损害系统完整性的开发者。

---

## 17. 展示 HN：帝国代理者：OpenCode 与 Claude 代码会话管理器

**原文标题**: Show HN: Agent-of-empires: OpenCode and Claude Code session manager

**原文链接**: [https://github.com/njbrake/agent-of-empires](https://github.com/njbrake/agent-of-empires)

**帝国代理（aoe）**是一款面向Linux和macOS的终端会话管理器，旨在帮助用户组织和管理Claude Code、OpenCode等AI编程代理。该工具基于Rust开发，作为**tmux**的封装层运行，每个AI会话均在独立的tmux会话中执行。

核心功能包括：用于管理会话的**TUI仪表盘**、支持层级文件夹的**分组管理**，以及隔离不同项目或工作区的**多配置支持**。用户可通过界面快速创建、连接、分离或删除会话。

安装方式灵活，可通过Shell脚本、Homebrew或源码编译完成。基础tmux命令（如使用`Ctrl+b d`分离会话）是操作关键。工具还针对移动端SSH客户端兼容性、Claude Code已知界面闪烁等问题提供了解决方案。

配置文件存储在`~/.agent-of-empires/`目录，支持环境变量自定义。总体而言，帝国代理通过提供持久化、结构化的终端会话，为使用多AI编程代理的开发者简化了工作流程。

---

## 18. 达美航空的象棋机器人将击败你（2024）[视频]

**原文标题**: The chess bot on Delta Air Lines will destroy you (2024) [video]

**原文链接**: [https://www.youtube.com/watch?v=c0mLhHDcY3I](https://www.youtube.com/watch?v=c0mLhHDcY3I)

根据所提供的文本，没有文章内容可供总结。该文本仅包含标准的YouTube网站页脚信息，包括版权声明、法律链接（条款、隐私政策）、联系方式和产品责任免责声明。

文中未提及国际象棋机器人、达美航空公司或任何2024年的新闻报道。标题“达美航空上的国际象棋机器人将击败你（2024）[视频]”似乎是一个占位符，或指向缺失的视频链接或文章正文。实际提供的内容与此主题无关。

因此，由于实质性文章内容缺失，无法总结主要观点。

---

## 19. Waymo乘客在车辆驶入凤凰城轻轨轨道后逃离

**原文标题**: Waymo passenger flees after car drives on Phoenix light rail tracks

**原文链接**: [https://www.azfamily.com/2026/01/08/waymo-passenger-flees-after-car-drives-phoenix-light-rail-tracks/](https://www.azfamily.com/2026/01/08/waymo-passenger-flees-after-car-drives-phoenix-light-rail-tracks/)

周三上午，一辆Waymo自动驾驶汽车驶入凤凰城轻轨轨道，迫使一名乘客在车辆继续沿轨道行驶、迎面有列车驶来的情况下逃离。事件发生在中央大道和南大道附近，视频显示列车驶近时该车停在轨道上。

亚利桑那州立大学技术学教授安德鲁·梅纳德将此事描述为"边缘案例"——自动驾驶系统因缺乏人类直觉而在意外情况下做出错误判断。他指出该区域近期的施工改造（包括过去一年新增的轻轨轨道）可能干扰了车辆的导航系统。

梅纳德承认此类事件可能引发公众质疑，但强调自动驾驶汽车通常比人类驾驶员更安全，因为它们能避免分心驾驶。Waymo汽车配备29个摄像头，并每周接收系统更新。

山谷轨道交通公司表示，工作人员在上午9点左右发现该事件，赶赴现场并联系了Waymo。轻轨服务通过让列车反向运行进行了临时调整，未造成重大延误。现场在9点15分前清理完毕。

---

## 20. 复现DeepSeek的MHC：当残差连接爆炸时

**原文标题**: Reproducing DeepSeek's MHC: When Residual Connections Explode

**原文链接**: [https://taylorkolasinski.com/notes/mhc-reproduction/](https://taylorkolasinski.com/notes/mhc-reproduction/)

本文详细复现了DeepSeek提出的“流形约束超连接”（mHC），这是一种用于替代标准Transformer残差连接的方案。标准残差连接采用简单的`x + F(x)`公式，而超连接（HC）通过引入可学习的混合矩阵，在并行流之间路由信息，从而提供更强的表达能力。

研究发现的核心问题是：HC中无约束的矩阵可能逐层指数级放大信号，导致训练不稳定。作者在小规模测试中观察到信号被放大至7倍，而DeepSeek的270亿参数模型甚至出现峰值达3000倍的放大，致使训练失败。

mHC解决方案通过Sinkhorn-Knopp算法将混合矩阵约束为“双随机矩阵”（行和列之和均为1），强制矩阵仅混合或路由信息而不进行放大，从而确保稳定性。虽然这种约束在小规模训练中会略微牺牲性能（HC的损失函数表现更优），但它消除了训练过程中的混沌方差，对于训练百亿参数规模的模型至关重要。

关键启示在于：像mHC中的约束并非限制，而是构建可扩展、稳定AI架构的必要保障。它在超越2016年提出的残差连接设计的同时，保留了其基础稳定性。

---

## 21. Anthropic在切断第三方客户端时犯了一个错误。

**原文标题**: Anthropic made a mistake in cutting off third-party clients

**原文链接**: [https://archaeologist.dev/artifacts/anthropic](https://archaeologist.dev/artifacts/anthropic)

2026年1月，Anthropic通过技术漏洞阻止了OpenCode等第三方编程代理使用客户Claude Pro/Max订阅服务。公司公开解释称这些客户端带来了支持与调试难题，但作者指出其真实动机是防止自身沦为单纯的模型供应商，并保护其自有产品Claude Code。

这一决定引发了付费用户的强烈反对，许多人威胁取消订阅。作者批评Anthropic损害了客户信任，且未能预见战略后果。

关键的第二轮效应是OpenAI趁机宣布正式支持在OpenCode等第三方编程框架中使用ChatGPT Pro/Plus订阅。此举使Anthropic陷入竞争劣势。

文章总结认为，Anthropic试图控制整个价值链的战略失误疏远了开发者用户群体，并将重大优势拱手让给了主要竞争对手。

---

## 22. 日本会数数和绘画的黑猩猩艾伊去世，享年49岁。

**原文标题**: Ai, Japanese chimpanzee who counted and painted dies at 49

**原文链接**: [https://www.bbc.com/news/articles/cj9r3zl2ywyo](https://www.bbc.com/news/articles/cj9r3zl2ywyo)

以卓越认知能力闻名的黑猩猩艾伊，在日本京都大学研究中心去世，享年49岁。她于1月9日因年老及器官衰竭离世，工作人员陪伴在侧。

艾伊于1977年从西非洲来到该研究所，成为长期研究黑猩猩智力的“艾伊计划”的核心研究对象。她最引人注目的成就是学会了使用连接电脑的键盘，并在五岁时掌握了识别数百个样本中的数字（1-6）、颜色和物体的能力。

除了正式研究，艾伊还喜欢绘画，且无需食物奖励。她还展现出解决问题的能力，据报道曾用钥匙与另一只黑猩猩一同逃出笼子。2000年，她生下了儿子阿尤姆，后者也因记忆能力而闻名。

艾伊的贡献为灵长类认知研究提供了重要见解，在灵长类动物学领域留下了持久遗产。

---

## 23. 《疯狂动物城2》创作手记与个人随想

**原文标题**: Personal thoughts/notes from working on Zootopia 2

**原文链接**: [https://blog.yiningkarlli.com/2025/12/zootopia-2.html](https://blog.yiningkarlli.com/2025/12/zootopia-2.html)

本文详细介绍了作者参与制作《疯狂动物城2》的技术经历，重点讲述了创作续集时面临的独特挑战与取得的进展。影片在2016年原版作品极致细节与宏大格局的基础上，进一步提升了视觉复杂度——例如艺术家们用数十亿独立冰晶构建雪景的场景。

关键技术项目包括：为复杂的水管场景开发定制嵌套介质解决方案，以及广泛部署新一代路径引导系统（与迪士尼研究院合作）以提升渲染效率。作者强调了迪士尼内部技术团队的价值，这些团队促成了工程师与艺术家的深度协作，从而打造出定制化解决方案，例如为影片中大规模群体场景优化角色资产。

文章还提到，自首部电影以来工作室信心倍增，并提及了作者的个人里程碑——其妻子担任联合技术总监，孩子也被列入片尾鸣谢名单。总体而言，文章将《疯狂动物城2》描绘为致力于推动动画艺术发展的艺术与技术创新的结晶。

---

## 24. 在GitHub Actions中启动调试终端

**原文标题**: Launch a Debugging Terminal into GitHub Actions

**原文链接**: [https://blog.gripdev.xyz/2026/01/10/actions-terminal-on-failure-for-debugging/](https://blog.gripdev.xyz/2026/01/10/actions-terminal-on-failure-for-debugging/)

本文介绍了一款免费开源工具，它能为调试失败的GitHub Actions工作流提供交互式网页终端。作者开发此工具是为了消除反复推送试验性代码修改所带来的低效试错循环。

其核心创新在于采用WebRTC点对点连接技术，将用户浏览器直接与GitHub Actions虚拟机相连。这种方法避免了昂贵的数据中继服务器。中央信令服务器（使用Go语言编写）仅负责为两端建立初始连接。

安全性是设计重点。浏览器通过GitHub OAuth进行身份验证，而Actions虚拟机则使用GitHub的OIDC令牌向信令服务器证明其身份。为进一步强化零信任安全机制，系统还采用一次性密码进行点对点直接验证，确保信令服务器无法授予未授权访问权限。

前端终端界面基于Ghostty库实现。服务器以成本效益方式部署在Railway平台上，该平台采用按用量计费模式，并支持在闲置时进入休眠状态以最大限度降低成本。

---

## 25. 曾经是人类使用的计算机

**原文标题**: Computers that used to be human

**原文链接**: [https://digitalseams.com/blog/computers-that-used-to-be-human](https://digitalseams.com/blog/computers-that-used-to-be-human)

本文探讨了“计算机”一词历史上曾指代人类职业而非机器的用法。文章指出，在电子计算机出现之前，人们常被称为“计算员”，他们使用计算尺和查找表等工具手工完成复杂运算。作者列举了历史例证，如1785年英国税务文件和1903年美国海军天文台报告中均将员工职务列为“计算员”，表明这曾是一种公认的职业。

文章进一步指出，“计算器”“核算员”等类似术语最初也指从事数学计算的人。文中解释道，“reckon”一词的含义已随时间推移，从精确计算演变为粗略估算。

文章最后以幽默的虚构段落收尾：作者先为“尺子”“量角器”等现代术语编造了荒诞的词源故事，继而遐想“程序员”一词或许终将步“计算机”后尘——从人类职业称谓转变为工具的名称。

---

## 26. 像Grok这样的应用根据谷歌规则是被禁止的——为什么它还在Play商店里？

**原文标题**: Apps like Grok are banned under Google rules–why is it still in the Play Store?

**原文链接**: [https://arstechnica.com/google/2026/01/apps-like-grok-are-explicitly-banned-under-googles-rules-why-is-it-still-in-the-play-store/](https://arstechnica.com/google/2026/01/apps-like-grok-are-explicitly-banned-under-googles-rules-why-is-it-still-in-the-play-store/)

本文指出，埃隆·马斯克的Grok人工智能应用违反了谷歌应用商店政策，却仍以“青少年”评级上架。核心问题在于Grok能生成非自愿的性暗示图像，且该功能近期变得更易使用。

作者详述了谷歌“不当内容”政策明确禁止“通过深度伪造或类似技术创建非自愿性内容”的应用——这项2023年新增规则专为人工智能制定。然而，允许用户在无需年龄验证或付费的情况下将图片编辑成性化内容的Grok却未被下架。

文章对比了谷歌详尽成文的规则与苹果更具自由裁量权的处理方式，指出谷歌政策本无模糊空间。特别强调了“青少年”评级的风险——该评级允许受家长监管的未成年人下载该应用。

尽管xAI在舆论压力后略微限制了X（原推特）平台的图像编辑功能，但Grok应用本身仍无限制。谷歌拒绝对其不作为置评。文章最终指出，面对这款集中体现违规行为的应用，谷歌未能执行其明确制定的政策。

---

## 27. JRR托尔金朗读《霍比特人》片段（1952年，30分钟）

**原文标题**: JRR Tolkien reads from The Hobbit for 30 Minutes (1952)

**原文链接**: [https://www.openculture.com/2026/01/j-r-r-tolkien-reads-from-the-hobbit-for-30-minutes-1952.html](https://www.openculture.com/2026/01/j-r-r-tolkien-reads-from-the-hobbit-for-30-minutes-1952.html)

本文探讨了一段1952年J.R.R.托尔金朗读《霍比特人》的录音。作者反思了回归托尔金原始文本的价值，指出聆听作者本人对咕噜的描述与后世视觉化诠释的差异。

这段录音诞生于托尔金拜访友人时初次见到磁带录音机的即兴时刻。他对这项技术深感欣喜，当即同意朗读其1937年的小说，并一气呵成完成录制。此次录音属于更长的录制片段之一，其间他还朗读并吟唱了《魔戒》选段。

文章核心在于强调：没有人比中洲世界的创造者更理解这片土地，因此作者本人的朗读成为重返这个瑰丽想象世界源文本的独特而权威的指引。

---

## 28. 展示HN：可定制的开源情报仪表盘，用于监控局势

**原文标题**: Show HN: Customizable OSINT dashboard to monitor the situation

**原文链接**: [https://sr.ericli.tech/?d=N4IgbiBcCMA0IHcoG1QBcogEYngGxQAZZiAOWUgXXgGMpQBHTASwCcBDAO1xAAcoAzIWGEAvqNjpMAWx4FIycsWjKAbNRB1IoLcgEAmAHSqALAHYArAOgnYFk4YumBF6OvgAvKGfgBnKGisAK4ApvDckCAAkhzc4pIgGJEhckQU6VS09CBMkWxcIPFSkfz4KNBKsKqwZhpaoP6RNi5mAjwhSSAA0gAW7NIhnCHMAAQA9kFoI+y+IwDKQbysIQMjADIh7AAmIazjAGYjMVwjWACeIwBSXEHsrBfWAPyFEsUgZ6kKFTVVsACcdWyQUwPTQaF4vkgAHooQg4YYzhM0EEsCFDDQxtJYew0DQeo8wABeNYAfX2NFYAHlEQB1ABapBelFEQA](https://sr.ericli.tech/?d=N4IgbiBcCMA0IHcoG1QBcogEYngGxQAZZiAOWUgXXgGMpQBHTASwCcBDAO1xAAcoAzIWGEAvqNjpMAWx4FIycsWjKAbNRB1IoLcgEAmAHSqALAHYArAOgnYFk4YumBF6OvgAvKGfgBnKGisAK4ApvDckCAAkhzc4pIgGJEhckQU6VS09CBMkWxcIPFSkfz4KNBKsKqwZhpaoP6RNi5mAjwhSSAA0gAW7NIhnCHMAAQA9kFoI+y+IwDKQbysIQMjADIh7AAmIazjAGYjMVwjWACeIwBSXEHsrBfWAPyFEsUgZ6kKFTVVsACcdWyQUwPTQaF4vkgAHooQg4YYzhM0EEsCFDDQxtJYew0DQeo8wABeNYAfX2NFYAHlEQB1ABapBelFEQA)

**概述：**

SituationRoom 是一款全新的开源 OSINT（开源情报）仪表板，旨在帮助用户监控和分析现实世界事件。它从新闻、社交媒体、天气、航班追踪器等多种公共来源聚合数据，集成到一个可自定义的单一界面中。

其强调的核心特性是**灵活性与用户控制**。用户可以针对不同主题或事件（例如自然灾害、冲突地区或企业活动）创建多个“房间”，并用模块化的“卡片”填充这些房间。每张卡片接入特定的数据流，使用户能够根据自身最需要的信息构建定制化视图。

该项目强调**可自托管**（赋予用户隐私和数据所有权）和**可扩展性**（通过插件系统添加新数据源）。它被定位为一款面向记者、研究人员、应急响应人员和安全专业人士的工具，旨在帮助他们应对信息过载，获取对发展态势的整合性实时概览。

该帖子是一次“Show HN”发布，邀请开发者社区试用此工具、提供反馈并参与其开发。

---

## 29. Ansible 实战验证的 Linux、SSH、Nginx、MySQL 安全加固方案

**原文标题**: Ansible battle tested hardening for Linux, SSH, Nginx, MySQL

**原文链接**: [https://github.com/dev-sec/ansible-collection-hardening](https://github.com/dev-sec/ansible-collection-hardening)

本文介绍了 **devsec.hardening** Ansible 集合，该集合为 Linux 系统、SSH、Nginx 和 MySQL/MariaDB 提供自动化安全加固功能，旨在符合 DevSec Inspec 安全基线。

**关键要点：**
*   **目的：** 该集合提供经过实战检验的安全配置，用于加固 Linux 服务器的各个组件。
*   **支持系统：** 它涵盖广泛的 Linux 发行版（包括 CentOS、AlmaLinux、Rocky Linux、Debian 和 Ubuntu）以及 MySQL、Nginx 和 OpenSSH 的特定软件版本。
*   **内容：** 该集合包含即用型角色，用于 `os_hardening`、`mysql_hardening`、`nginx_hardening` 和 `ssh_hardening`。Apache 和 Windows 的角色正在开发中，尚不可用。
*   **过渡：** 此集合整合了之前独立的加固角色。最后一个独立版本是 6.2.0。
*   **

总之，**devsec.hardening** 集合是一个集中化、符合标准的工具包，用于在支持的 Linux 服务和操作系统栈中自动化执行关键的安全加固任务。

---

## 30. 在macOS Tahoe上调整窗口大小的挣扎

**原文标题**: The struggle of resizing windows on macOS Tahoe

**原文链接**: [https://noheger.at/blog/2026/01/11/the-struggle-of-resizing-windows-on-macos-tahoe/](https://noheger.at/blog/2026/01/11/the-struggle-of-resizing-windows-on-macos-tahoe/)

本文批评了macOS Tahoe系统大圆角窗口设计对可用性的影响，指出该设计损害了窗口缩放的基本功能。

作者指出，虽然审美是主观的，但新设计确实带来了功能性问题。窗口角落用于缩放的“点击目标区”是靠近边缘固定的19x19像素正方形区域。由于采用了新的极圆角设计，该目标区域约75%的面积现在位于可见窗口边框*之外*。

这与用户本能地直接点击窗口可见角落的习惯相矛盾。因此，那些感觉正确的点击——即靠近角落的窗口内部区域——常常失败，因为它们落在了系统不可见的目标区域之外。唯一可靠的方法变成了点击稍微超出窗口可见角落的位置，这让人感到不自然，并导致频繁操作失误。

核心批评在于，这一设计选择破坏了一个存在数十年的基本用户交互模式，使得一项基础操作变得不必要的困难和反直觉。

---

