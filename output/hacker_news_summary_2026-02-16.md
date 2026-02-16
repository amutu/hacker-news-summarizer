# Hacker News 热门文章摘要 (2026-02-16)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 你的蓝牙设备揭示了什么关于你的信息

**原文标题**: What Your Bluetooth Devices Reveal About You

**原文链接**: [https://blog.dmcc.io/journal/2026-bluetooth-privacy-bluehood/](https://blog.dmcc.io/journal/2026-bluetooth-privacy-bluehood/)

本文介绍了作者开发的蓝牙扫描器Bluehood，旨在揭示开启蓝牙功能所带来的隐私风险。该项目的灵感源于近期曝光的WhisperPair等漏洞，这些漏洞突显了蓝牙设备如何被劫持用于窃听和追踪。

核心问题在于，从手机、可穿戴设备到医疗植入物和车辆，各类蓝牙设备都在持续广播自身存在。作者仅通过被动扫描就展示了这种行为如何暴露敏感的行为模式：包括日常作息、住宅空置时间以及设备间的关联性。值得注意的是，许多设备（如助听器或车队车辆）并不允许用户关闭这种广播功能。

文章指出了一个隐私悖论：像Briar和BitChat这类专为审查环境下安全通信设计的工具，反而要求用户开启蓝牙功能，从而使使用者暴露在他们本欲规避的追踪风险之中。

Bluehood本身被定位为一款教育性质的Python工具。它能进行被动扫描、设备分类、分析存在模式，并提供网络仪表板。作者强调这并非黑客工具，而是用于提高公众意识的演示项目。文章最后呼吁读者理解便利性与无意间留下的数字“痕迹”之间的权衡关系。

---

## 2. 14岁的吴迈尔斯折出可承重自身万倍的折纸结构。

**原文标题**: 14-year-old Miles Wu folded origami pattern that holds 10k times its own weight

**原文链接**: [https://www.smithsonianmag.com/innovation/this-14-year-old-is-using-origami-to-design-emergency-shelters-that-are-sturdy-cost-efficient-and-easy-to-deploy-180988179/](https://www.smithsonianmag.com/innovation/this-14-year-old-is-using-origami-to-design-emergency-shelters-that-are-sturdy-cost-efficient-and-easy-to-deploy-180988179/)

2025年，14岁的吴迈尔斯凭借其折纸工程项目在赛默飞世尔科技少年创新挑战赛中荣获最高奖项，获得25,000美元奖金。受航空航天领域使用的三浦折叠法启发，吴迈尔斯系统测试了54种变体结构，旨在为可展开式应急庇护所创造一种新型结构。

受自然灾害的触动，他寻求一种坚固、可折叠且成本低廉的设计。借助精密评分仪器，他用不同纸张折叠出多种图案，通过在护栏间压缩并增加重量的方式测试其强度。其中最成功的变体结构可承受超过自身重量一万倍的压力，他将这一比例比作出租车托起数千头大象的重量。

评委们称赞吴迈尔斯将个人兴趣转化为严谨研究，并在团队挑战中表现出色。专家指出，该项目极具价值地展示了调整几何参数如何增强结构性能。但要将该设计扩展为功能性庇护所，仍需解决多向荷载、节点设计和材料耐久性等挑战。

吴迈尔斯计划继续推进研究，目标建造庇护所原型，测试该结构在不同外力下的表现，并进一步探索折纸技术在STEM领域的应用潜力。

---

## 3. WebMCP提案

**原文标题**: WebMCP Proposal

**原文链接**: [https://webmachinelearning.github.io/webmcp/](https://webmachinelearning.github.io/webmcp/)

**WebMCP 提案摘要**

WebMCP 是一项提议的 JavaScript API，它允许 Web 应用程序将其功能作为“工具”暴露出来，这些工具可以被 AI 代理（包括浏览器内置的代理）理解和调用。这实现了一种协作工作流，用户和 AI 助手可以直接在网页内，利用网站现有逻辑协同工作。

其核心思想是将网页转变为一个客户端 **模型上下文协议（MCP）服务器**。开发者可以通过 `navigator.modelContext` 接口注册工具——即带有自然语言描述和结构化输入模式的 JavaScript 函数。随后，代理可以发现并调用这些工具，在应用程序内执行操作。

该 API 的关键组件包括：
*   **`ModelContext`**：用于注册（`provideContext`、`registerTool`）和管理工具的主要接口。
*   **`ModelContextTool`**：定义一个工具，包含唯一的 `name`、`description`、`inputSchema` 和一个 `execute` 回调函数。
*   **`ModelContextClient`**：代表调用工具的代理，并提供一种方法（`requestUserInteraction`），用于在工具执行期间安全地请求用户输入。

该提案概述了关于**安全性、隐私性和可访问性**的重要考量，尽管具体细节尚待确定。其目标是为 Web 应用程序与 AI 代理集成创建一种标准化方式，同时保持用户控制和共享上下文。

---

## 4. Wero – 源自欧洲的数字支付钱包

**原文标题**: Wero – Digital payment wallet, made in Europe

**原文链接**: [https://wero-wallet.eu](https://wero-wallet.eu)

**Wero数字支付钱包概述**

Wero是一款欧洲制造的数字钱包，支持即时银行间转账。其核心承诺是让用户仅凭电话号码，全天候24小时即可在10秒或更短时间内直接从银行账户进行发送、接收和支付款项。

目前该服务已在比利时、法国和德国上线，直接集成于合作大型银行的手机银行应用中。它省去了点对点转账和在线支付时需提供卡号或IBAN的步骤，简化了分摊账单或向朋友付款等场景。

其强调的主要特点包括基于即时支付技术的速度优势、操作简便性以及作为银行支持解决方案的安全性。该服务于2024年中推出，并计划大幅扩展。未来发展规划包括增加店内支付、订阅管理功能，并将服务范围延伸至新的国家，首站将于2026年进入荷兰市场。

该平台由EPI公司开发，定位为无缝衔接的泛欧洲支付解决方案，致力于让日常金融交易更快速、更便捷。

---

## 5. 美国国家安全局开发的Ghidra

**原文标题**: Ghidra by NSA

**原文链接**: [https://github.com/NationalSecurityAgency/ghidra](https://github.com/NationalSecurityAgency/ghidra)

Ghidra是由美国国家安全局（NSA）研究理事会开发的一款综合性软件逆向工程（SRE）框架。它是一个强大的工具套件，用于分析Windows、macOS和Linux平台上的编译代码，提供反汇编、反编译、图形化分析和脚本编写等功能。该框架专为处理复杂的大规模SRE任务而设计，支持多种处理器架构和文件格式，并可通过用户编写的Java或Python脚本进行扩展。

文章提供了关键实用信息：用户必须安装JDK 21并下载官方多平台版本，同时需注意已知的安全漏洞。对于开发者，文章概述了如何使用Gradle和JDK 21从源代码构建Ghidra，并详细说明了两种主要开发路径。用户可通过提供的Eclipse插件或Visual Studio Code集成来创建脚本和扩展。若想参与Ghidra核心开发，推荐使用Eclipse环境，并通过特定的Gradle命令进行配置。

最后，NSA将Ghidra定位为其网络安全使命的一部分，用于分析恶意代码和漏洞，并邀请美国公民考虑加入该机构。该项目为开源项目，鼓励公众通过贡献者指南参与贡献。

---

## 6. 使用协议，而非服务。

**原文标题**: Use protocols, not services

**原文链接**: [https://notnotp.com/notes/use-protocols-not-services/](https://notnotp.com/notes/use-protocols-not-services/)

本文主张，为保护网络隐私与匿名性，用户应选用开放式通信协议而非中心化服务。

核心问题在于，中心化平台（如Discord）极易成为政府监管的目标，例如强制性的年龄验证。一纸法律命令即可迫使企业就范，从而损害用户隐私。而IRC、XMPP或Matrix等去中心化协议则不存在这一问题，因其没有可供施压的单一实体。

作者认为，单纯从一个服务转向另一个服务是徒劳的——任何大型平台最终都将面临相同的监管压力。真正的解决方案在于使用协议，其设计本身就具备抗压性。电子邮件（SMTP）被引为例证：即使谷歌等主流服务商限制访问，协议本身仍可运作，用户无需重建系统即可迁移或自建服务。相比之下，失去对中心化服务的访问权意味着永久丧失账户与数据。

结论是：选择服务而非协议，本质上就是将控制权让渡给单一企业，而该企业随时可能被迫识别用户、限制访问或移交数据。

---

## 7. 如何巧妙应对薪资问题

**原文标题**: How Not to Answer the Salary Question

**原文链接**: [https://adatosystems.com/2026/02/16/blog-how-not-to-answer-the-salary-question/](https://adatosystems.com/2026/02/16/blog-how-not-to-answer-the-salary-question/)

本文建议求职者在招聘过程中尽可能推迟讨论薪资。作者认为过早谈论薪资会分散双方评估职位匹配度的注意力。核心策略是避免先给出具体数字，因为先开口的一方会失去谈判筹码。

文章提供了几种转移问题的替代回应方式，包括表示你寻求该职位的行业标准范围、解释你需要先了解更多福利或工作职责的细节，或者将对话转向双方是否适合该职位。

作者承认运用这些策略需要一定条件，但将其视为自我保护。他们警告说，过早过度关注薪资的公司可能是危险信号，表明其工作文化不佳，或者招聘者更感兴趣的是收集数据而非填补真正职位。

总结部分给出了实用建议：如果出于必要必须接受不理想的录用通知，可以继续寻找工作；如果确定职位不合适，可将这次对话作为练习果断谈判的机会。

---

## 8. 如何用胶带拍照（无镜头成像）[视频]

**原文标题**: How to take a photo with scotch tape (lensless imaging) [video]

**原文链接**: [https://www.youtube.com/watch?v=97f0nfU5Px0](https://www.youtube.com/watch?v=97f0nfU5Px0)

本文并非关于使用胶带进行无镜头成像的值得总结的文章。它是YouTube网页底部常见的标准法律与行政页脚。

内容完全包含：
*   标准版权信息（© 2026 Google LLC）。
*   YouTube/Google的公司地址与联系方式。
*   平台政策链接（条款、隐私、安全）。
*   声明视频中展示的产品由第三方而非YouTube销售。

其中并未涉及视频实际主题（“如何用胶带拍照”）及其科学原理、方法或结果。所提供的文本仅为与视频教育内容无关的标准法律声明。

---

## 9. “代币焦虑”，不过是换了个名字的老虎机。

**原文标题**: "Token anxiety", a slot machine by any other name

**原文链接**: [https://jkap.io/token-anxiety-or-a-slot-machine-by-any-other-name/](https://jkap.io/token-anxiety-or-a-slot-machine-by-any-other-name/)

本文对科技行业中人工智能编码助手（“编码代理”）的常态化趋势表达了深切忧虑。作者指出，这些工具通过生成难以预测且往往质量低劣的代码，其运作模式类似于老虎机或游戏抽奖箱，会引发用户不断提示和修改输出结果的上瘾性“代币焦虑”。

令人担忧的是，在追求持续生产力的管理理念驱动下，越来越多的企业强制要求使用这些助手，尽管缺乏明确证据表明它们能提升产出质量，且有研究表明它们会削弱技能留存。这种推行趋势，与极端工时（“996”）现象相结合，形成了危险的协同效应：雇主实质上在强制推行一项具有成瘾性的技术，可能使员工对工作本身产生依赖。

作者警告称，这可能演变为行业常态，进一步侵蚀道德标准，并压缩那些重视工作与生活平衡者的就业机会。文末指出，若这一趋势持续发展，作者将彻底离开科技行业。

---

## 10. Qwen3.5：迈向原生多模态智能体

**原文标题**: Qwen3.5: Towards Native Multimodal Agents

**原文链接**: [https://qwen.ai/blog?id=qwen3.5](https://qwen.ai/blog?id=qwen3.5)

本文介绍了Qwen系列AI模型的重要进展——Qwen3.5，重点阐述其如何演变为原生多模态智能体。

核心突破在于Qwen3.5能够将文本、图像、音频和视频理解能力无缝集成于单一统一模型架构。与依赖独立串联组件的系统不同，Qwen3.5原生处理这些模态，从而实现对不同类型信息更连贯高效的推理。

文章强调的关键能力包括复杂视觉推理（如解读图表和文档）、音频处理（涵盖语音识别与情感检测）以及用于动态场景分析的视频理解。该模型以“智能体”功能为核心设计理念，意味着它能自主规划并执行涉及多模态输入的多步骤任务，例如通过分析视频回答细节问题，或从混合媒体中生成摘要。

文章将Qwen3.5定位为实现更通用、实用AI助手的重要里程碑。通过将多模态能力融合于单一模型，它旨在突破先前系统的局限，在内容分析、客户服务和互动教育等领域实现更自然的人机交互与强大应用。

---

## 11. 展示 HN：二维库仑气体模拟器

**原文标题**: Show HN: 2D Coulomb Gas Simulator

**原文链接**: [https://simonhalvdansson.github.io/2D-Coulomb-Gas-Tools/index_gpu.html](https://simonhalvdansson.github.io/2D-Coulomb-Gas-Tools/index_gpu.html)

本文介绍了一款基于WebGPU构建的二维库仑气体模拟器。该模拟器建模了一个带电粒子（电子）系统，粒子间通过对数库仑力相互排斥，同时受到外部势场的约束。系统的能量由特定哈密顿量描述，通过最小化该能量可找到称为费凯特点的稳定构型。

该模拟器的独特之处在于，此数学模型广泛出现在多个领域，包括随机矩阵理论（描述特征值分布）、多项式零点、量子物理和流体动力学。文章引用了2017年一项关于边界附近粒子密度的证明，以凸显该系统的研究价值。

主要交互功能允许用户：
* 调整时间步长和粒子数（2至50万个，粒子数过多时会显示性能警告）
* 选择不同约束势场（如Ginibre势、Mittag-Leffler势、双纽线势）
* 自定义视觉渲染效果（粒子大小、透明度）
* 手动向模拟中插入额外带电粒子

本质上，这是一个基于浏览器的交互式工具，用于探索数学物理基础模型中复杂的平衡态。

---

## 12. 展示 HN：Jemini – 专为爱泼斯坦文件打造的 Gemini 工具

**原文标题**: Show HN: Jemini – Gemini for the Epstein Files

**原文链接**: [https://jmail.world/jemini](https://jmail.world/jemini)

这篇帖子介绍了“Jemini”——一款允许用户通过Gemini AI界面查询杰弗里·爱泼斯坦案已公开文件的工具。该工具模拟登录名为“Jmail”的邮箱系统，用户名显示为“jeevacation@gmail.com”，影射爱泼斯坦的电子邮箱地址。

登录后，界面提供多项与该案文件相关的搜索功能，包括：
*   查询航班记录（可能指向爱泼斯坦的私人飞机）
*   查找特定主题的邮件
*   阅读法庭文件
*   检索亚马逊购物记录

其核心理念是利用人工智能技术，让公众能更便捷地检索爱泼斯坦相关的大量复杂法律文件。帖子标题与工具名“Jemini”巧妙融合了“Gemini”（AI模型）与“杰弗里·爱泼斯坦”的双关意味。行文风格极具挑衅性，开篇直呼“嘿，杰弗里。你在这里藏了什么？”直接向爱泼斯坦喊话。

---

## 13. 司法部下令删除英国最大的法庭报道数据库

**原文标题**: Ministry of Justice orders deletion of the UK's largest court reporting database

**原文链接**: [https://www.legalcheek.com/2026/02/ministry-of-justice-orders-deletion-of-the-uks-largest-court-reporting-database/](https://www.legalcheek.com/2026/02/ministry-of-justice-orders-deletion-of-the-uks-largest-court-reporting-database/)

英国司法部已下令删除英国最大的刑事法庭案件追踪数据库Courtsdesk，该平台曾被超过1500名记者使用。该数据库于2020年经政府批准推出，通过汇总治安法庭案件清单帮助记者查找案件，并声称英国有三分之二的法庭经常在未通知媒体的情况下举行听证会。

英国法院与法庭服务署于2025年11月发出终止通知，理由是Courtsdesk“未经授权”将法庭数据分享给第三方人工智能公司。尽管Courtsdesk创始人及前司法大臣克里斯·菲尔普提出申诉，政府仍拒绝撤销该决定。

Courtsdesk辩称其对于司法公开至关重要，指出英国法院与法庭服务署自身记录的准确率仅为4.2%，且有160万场听证会未提前向媒体发布通知。司法部则坚称记者获取法庭信息的渠道未受影响，此举是为保护敏感数据。

---

## 14. PCB返工与维修指南 [pdf]

**原文标题**: PCB Rework and Repair Guide [pdf]

**原文链接**: [https://www.intertronics.co.uk/wp-content/uploads/2017/05/PCB-Rework-and-Repair-Guide.pdf](https://www.intertronics.co.uk/wp-content/uploads/2017/05/PCB-Rework-and-Repair-Guide.pdf)

**《PCB返工与维修指南》概要**

本指南由Intertronics提供，详细介绍了印刷电路板（PCB）维修与返工的流程、材料及最佳实践。它强调成功的返工需要合适的工具、材料和技巧，以避免损坏敏感元件和电路板本身。

指南的核心围绕大多数维修任务的**五阶段流程**展开：
1.  **诊断与元件拆卸：** 识别故障，并使用可控热量（如热风返修台）和适当工具安全移除缺陷元件，避免焊盘或基材受损。
2.  **焊盘预处理：** 使用吸锡线或真空脱焊工具清除PCB焊盘上的旧焊料，确保焊点清洁无污染，以便安装新元件。
3.  **元件准备与放置：** 准备替换元件（如成形引脚）并将其精确放置在预处理后的焊盘上，通常使用粘合剂或焊膏进行临时固定。
4.  **焊接：** 采用适当方法（如手工焊接、热风或烙铁）重新焊接元件，重点关注正确的温度曲线和焊料合金选择。
5.  **清洁与检查：** 清除助焊剂残留物，并检查焊点质量与电气完整性，通常需借助放大设备。

贯穿全文的关键主题包括：防止热冲击的**温度控制**至关重要、选择高质量的**焊料合金与助焊剂**以及**静电放电（ESD）保护**的必要性。指南还涉及了处理多层板、无铅焊料以及不同元件类型（如通孔、贴片、BGA）的具体挑战。最后强调，系统化的方法和正确的材料是实现可靠、持久维修的关键。

---

## 15. 运行我自己的XMPP服务器

**原文标题**: Running My Own XMPP Server

**原文链接**: [https://blog.dmcc.io/journal/xmpp-turn-stun-coturn-prosody/](https://blog.dmcc.io/journal/xmpp-turn-stun-coturn-prosody/)

本文详细介绍了作者使用Docker中的Prosody搭建自托管、联邦化XMPP消息服务器的经历。其目标是通过自主掌控基础设施，摆脱对单一公司（如Signal）的依赖。该配置实现了安全的消息传递、文件共享、群组聊天以及语音/视频通话。

关键步骤包括：
1.  **DNS配置：** 为客户端和服务器联邦设置SRV记录。
2.  **TLS证书：** 使用Let's Encrypt并通过DNS质询获取证书以实现加密。
3.  **Docker设置：** 运行Prosody，映射客户端端口（5222）和服务器联邦端口（5269）。
4.  **Prosody配置：** 启用关键模块以获得现代化体验，包括用于多设备同步的`carbons`、用于可靠连接的`smacks`、用于推送通知的`cloud_notify`以及用于消息归档的`mam`。通过强制加密和禁用公开注册来加强安全性。
5.  **附加服务：** 配置反向代理（Caddy）以支持HTTP文件上传，并设置独立的TURN/STUN服务器（coturn）以实现NAT后的语音/视频通话。
6.  **客户端推荐：** 推荐使用Monal（iOS/macOS）、Conversations（Android）和Gajim（桌面端），因为它们支持现代XMPP功能及OMEMO端到端加密。

作者总结道，尽管他们目前仍主要使用Signal，但运行自己的XMPP服务器提供了一个有价值的独立备用方案，并证明了只需相对适度的努力，即可自托管一个功能齐全的私密消息系统。

---

## 16. 展示HN：简易org-mode网页适配器

**原文标题**: Show HN: Simple org-mode web adapter

**原文链接**: [https://github.com/SpaceTurth/Org-Web-Adapter](https://github.com/SpaceTurth/Org-Web-Adapter)

**Org Web Adapter** 是一款轻量级的本地网络应用，基于 Python 构建，允许用户通过简洁的三窗格网页界面浏览和编辑 Org-mode 文件。它会扫描指定目录中的 `.org` 文件，将其渲染为 HTML，并提供笔记导航、搜索和反向链接解析等功能。

核心功能包括：带有筛选和排序选项（按反向链接或创建日期）的笔记列表侧边栏、用于查看和编辑笔记的主内容窗格，以及显示反向链接的右侧边栏。该应用支持基本的 Org 语法转换、通过 MathJax 实现的行内数学公式渲染，以及亮色/暗色主题切换。由于缺乏身份验证或加密功能，它设计用于受信任网络中的个人用途。

服务器通过 `config.yaml` 配置文件或命令行参数进行配置，仅包含一个 Python 脚本（`main.py`）、一个 HTML 模板和一个样式表。虽然它提供了在浏览器中管理 Org 笔记的简便方式，但并非功能完整的 Org 解析器，且每次请求都会重新扫描文件，因此最适合较小的笔记集合。

---

## 17. 我想洗车。洗车店在50米外。我该走路去还是开车去？

**原文标题**: I want to wash my car. The car wash is 50 meters away. Should I walk or drive?

**原文链接**: [https://mastodon.world/@knowmadd/116072773118828295](https://mastodon.world/@knowmadd/116072773118828295)

这是来自Mastodon网页界面的错误提示，并非文章。由于用户浏览器禁用了JavaScript或正在使用非网页应用，核心内容无法显示。

文本显示：
1.  用户Kévin被截断的帖子开头："问：我想洗车。洗车店在50米外…"
2.  标准通知：Mastodon网页应用需要JavaScript支持才能正常运行。
3.  建议用户改用对应平台的官方Mastodon应用。

此处没有可供总结的文章。关键信息是：在此环境下无法显示目标社交媒体帖子，平台已提供正确访问内容的操作指引。

---

## 18. 外观：Halide Mark III 预览

**原文标题**: Looks: A Halide Mark III Preview

**原文链接**: [https://www.lux.camera/mark-iii-looks/](https://www.lux.camera/mark-iii-looks/)

本文预览了Halide Mark III相机应用，重点介绍了其全新的“视觉风格”功能。这款AI驱动的工具允许用户一键为照片应用独特预设的视觉风格（或称“外观”），超越了简单的滤镜效果，旨在模拟专业摄影师细腻的美学选择。

其核心承诺是通过将复杂的调整——如特定色调曲线、色彩分级和颗粒感——融入这些一键预设中，从而简化高级照片编辑流程。文章指出，该功能旨在帮助用户更高效地在所有图像中实现统一且富有意图的风格。

尽管被定位为一次重大更新，但文章澄清“视觉风格”功能是对即将推出的Mark III功能的预览，而非当前Halide Mark II应用中的现有特性。整体基调将Halide Mark III定位为一款融合精准相机控制与高效艺术化后期处理的工具。

---

## 19. AT&T长途线路历史

**原文标题**: History of AT&T Long Lines

**原文链接**: [https://telephoneworld.org/long-distance-companies/att-long-distance-network/history-of-att-long-lines/](https://telephoneworld.org/long-distance-companies/att-long-distance-network/history-of-att-long-lines/)

AT&T长途线路部门是20世纪初至1984年间美国长途电话网络的骨干。为克服同轴电缆的脆弱性与高成本，该公司建造了全国性的微波中继系统，采用配备喇叭天线的塔楼。这条1951年启用的“电话空中通道”实现了跨海岸直拨通话，同时承载电视广播与军事数据传输。

该系统设计于冷战时期，许多设施为抵御核攻击而强化，配备屏蔽地下站点与备用系统。然而，随着光纤和卫星等新兴技术的出现，以及1984年AT&T垄断地位因反垄断法案被打破，该网络于1970至80年代逐渐衰落。至1990年代初，AT&T正式停用该系统。

如今，残存的塔楼成为电信关键时代的遗迹。有些已被废弃，有些被业余无线电爱好者改造利用，亦有些恰如其分地加装了现代手机设备。长途线路网络象征着通信技术的关键转型，将有线电话时代与当今无线世界紧密相连。

---

## 20. 罗伯特·杜瓦尔去世，享年95岁

**原文标题**: Robert Duvall Dead at 95

**原文链接**: [https://www.newsweek.com/entertainment/hollywood-legend-robert-duvall-dead-at-95-11531295](https://www.newsweek.com/entertainment/hollywood-legend-robert-duvall-dead-at-95-11531295)

著名演员罗伯特·杜瓦尔去世，享年95岁，其妻子卢西亚娜·杜瓦尔在Facebook上宣布了这一消息。他在家人的陪伴下于家中安详离世。

杜瓦尔辉煌的演艺生涯跨越七十余年，出演了近100部电影，并七次获得奥斯卡奖提名。他凭借在《温柔的怜悯》（1983年）中的表演赢得了奥斯卡最佳男主角奖。他最广为人知的角色包括《教父》、《现代启示录》、《杀死一只知更鸟》和《寂寞之鸽》等经典作品中的标志性表演。

卢西亚娜·杜瓦尔在声明中称他为“我们这个时代最伟大的演员之一”，赞扬了他对表演艺术的奉献以及为角色带来的真实感。截至目前，具体的死因尚未公布，也未宣布公开追悼会的计划。

---

## 21. 英国Discord用户参与了与彼得·蒂尔相关的数据收集实验。

**原文标题**: UK Discord users were part of a Peter Thiel-linked data collection experiment

**原文链接**: [https://www.rockpapershotgun.com/good-news-uk-discord-users-were-part-of-a-peter-thiel-linked-data-collection-experiment](https://www.rockpapershotgun.com/good-news-uk-discord-users-were-part-of-a-peter-thiel-linked-data-collection-experiment)

Discord已确认正在与身份验证公司Persona合作，作为其全球年龄验证系统推广的一部分。Persona由Palantir董事长彼得·蒂尔管理的基金支持。在一项被称为“实验”的计划中，英国用户为年龄验证提交的数据可能在Persona服务器上存储长达七天，这与Discord此前关于此类文件通常会被立即删除的承诺相悖。

此次合作引发了用户的强烈反对，而Discord涉及面部扫描和机器学习的年龄验证系统本身已存在争议。在社交媒体抗议和媒体批评报道后，Discord曾在常见问题解答中添加关于英国实验的免责声明，但该声明现已被移除。

Persona的主要投资方是由彼得·蒂尔联合创立的Founders Fund。蒂尔是科技界知名人物，曾联合创立PayPal和Palantir——后者是一家深度参与政府及军事监控数据分析的公司，包括与美国移民海关执法局（ICE）和英国国家医疗服务体系（NHS）存在争议的合作。

文章对参与这项与蒂尔相关的数据“实验”表示强烈质疑，并引用了Palantir的伦理争议以及Discord自身与第三方合作中出现隐私泄露的历史。

---

## 22. PyTorch视觉入门指南

**原文标题**: Visual Introduction to PyTorch

**原文链接**: [https://0byte.io/articles/pytorch_introduction.html](https://0byte.io/articles/pytorch_introduction.html)

本文对流行的深度学习框架PyTorch进行了可视化介绍。文中解释，PyTorch以**张量**作为存储数值数据的核心数据结构，它类似于数组，但内置了算术运算和激活函数等操作功能。文章重点说明了如何将各类数据（文本、图像、3D模型）转换为适用于机器学习的张量。

介绍的一个关键特性是**自动求导**——PyTorch的自动微分引擎。它能自动计算梯度（导数），这对于通过**梯度下降**训练神经网络至关重要，该过程通过调整模型权重以最小化误差。

实践部分逐步演示了如何构建一个用于回归任务（预测房价）的简单神经网络。步骤包括：
1.  **数据准备**：加载表格数据，将其划分为训练集/测试集，并对特征进行归一化处理。
2.  **模型定义**：创建包含线性层和ReLU激活函数的网络。
3.  **训练循环**：实现前向传播、损失计算、反向传播（使用`.backward()`方法）以及通过优化器（Adam）更新权重的核心流程。

文章强调，PyTorch自动化了复杂的梯度计算，使开发者能够专注于模型设计和训练循环。

---

## 23. 仅用40行代码打造自己的无服务器OCR系统

**原文标题**: Rolling your own serverless OCR in 40 lines of code

**原文链接**: [https://christopherkrapu.com/blog/2026/ocr-textbooks-modal-deepseek/](https://christopherkrapu.com/blog/2026/ocr-textbooks-modal-deepseek/)

本文介绍了如何利用开源的DeepSeek OCR模型和Modal计算平台，构建一个定制化、高性价比的无服务器OCR系统。作者的目标是在不依赖昂贵或有限制的商业服务的情况下，为教科书创建可搜索的版本。

核心解决方案是一个40行的Python脚本，它在Modal上部署了一个FastAPI服务器。该服务器使用GPU（如A100）运行DeepSeek模型，该模型擅长解析数学符号。系统通过将PDF页面转换为高分辨率图像、批量处理以提高推理效率，并将提取的文本以Markdown格式返回。

关键技术点包括使用Modal的装饰器管理云基础设施、实现批量推理以提升速度，以及通过移除坐标标签来清理输出。处理一本600页的教科书大约需要45分钟，成本约为2美元。

最终结果是高质量、可搜索的文本，其中复杂方程被准确保留。此输出可用于诸如文本搜索、构建搜索索引或输入AI助手进行分析等任务，从而将静态PDF转换为可用的数字内容。

---

## 24. 赛德普卡利普斯

**原文标题**: The Sideprocalypse

**原文链接**: [https://johan.hal.se/wrote/2026/02/03/the-sideprocalypse/](https://johan.hal.se/wrote/2026/02/03/the-sideprocalypse/)

本文认为，在当前由人工智能驱动的科技环境下，建立一个成功、独立的SaaS业务的梦想已经破灭。作者指出，开发者任何独特的想法都不可避免地会被更擅长推广的人工智能代理或激进营销者复制。在习惯于接受缺陷软件的市场中，技术质量（如性能或安全性）已不再重要。

文章指出，未来盈利软件的唯一出路在于少数主导的“围墙花园”内的高接触度企业销售。独立开发者被敦促放弃自己的项目，转而投身这些成熟企业以求自保。

作者还将这种严峻的展望延伸至“人工智能鼓吹者”本身。尽管他们目前从炒作中获利，但他们用人工智能构建的软件帝国注定会失败，因为没有人会发现或愿意为之付费。最终，人工智能革命被描绘成一场徒劳的淘金热，大部分努力都将付诸东流，而唯一真正的赢家是那些贩卖“铲子”的基础设施提供商。

---

## 25. 展示 HN：数学、计算机科学与人工智能纲要

**原文标题**: Show HN: Maths, CS and AI Compendium

**原文链接**: [https://github.com/HenryNdubuaku/maths-cs-ai-compendium](https://github.com/HenryNdubuaku/maths-cs-ai-compendium)

这是一份关于开源非传统教材《数学、计算机科学与人工智能纲要》的公告。该书由亨利·恩杜布阿库历时七年编写，旨在提供对数学、计算机科学和人工智能概念的直观、实用解释，以弥补传统教材的不足。

该纲要共分为18章，从向量、矩阵和微积分等基础主题开始，逐步深入到机器学习、计算机视觉和系统设计等高级领域。目前前六章已发布，其余章节标记为“即将推出”。

该项目托管于GitHub，并鼓励社区贡献。用户可通过收藏仓库获取更新，通过议题建议主题，或通过拉取请求提交修正和改进。贡献指南中提供了具体要求，例如图表使用SVG格式，数学方程采用特定排版方式。

作者指出，已有朋友成功使用该材料准备顶尖人工智能公司的面试。该作品被正式引用为2026年GitHub出版物。

---

## 26. planckforth：从手写微型ELF二进制文件引导Forth解释器

**原文标题**: planckforth: Bootstrapping a Forth interpreter from hand-written tiny ELF binary

**原文链接**: [https://github.com/nineties/planckforth](https://github.com/nineties/planckforth)

PlanckForth是一个教育实验项目，它通过一个极简的、手写的1KB i386 Linux ELF二进制文件引导出一个Forth解释器。构建过程极其简单，仅需使用`xxd`将十六进制转储转换为可执行文件。

初始二进制文件仅生成原始的编码输出。用户必须先向其输入一个引导Forth程序（`bootstrap.fs`）以构建完整的解释器，之后才能运行如斐波那契计算器之类的标准Forth程序。项目还包含用于对比的C和Python实现。

核心解释器提供了一组底层内置词（例如`quit`、`key`、`type`、`fetch`、`store`），用于内存、堆栈和I/O操作，以及算术和逻辑功能。这些原语被用来构建更高层的Forth系统。

文章详细说明了二进制文件的布局，提供了构建和测试指南，并引用了项目维基上的性能基准和进一步文档。

---

## 27. Show HN: Nerve：将您的所有数据源缝合为一个超级API

**原文标题**: Show HN: Nerve: Stitches all your data sources into one mega-API

**原文链接**: [https://playground.get-nerve.com/](https://playground.get-nerve.com/)

**摘要：**

Nerve是一个旨在将不同数据源（如数据库、API和SaaS应用程序）统一为单一、连贯API端点的新平台。其核心理念是通过“拼接”这些数据源来消除管理多个集成的复杂性，使开发者能够通过一个标准化接口查询和交互所有数据。

主要特点包括：
*   **统一访问：** 提供单一的GraphQL或REST API端点，聚合来自各种后端的数据。
*   **模式拼接：** 自动组合已连接数据源的模式，以创建统一的数据模型。
*   **实时与缓存：** 支持实时数据订阅，并包含用于性能优化的缓存机制。
*   **安全与治理：** 对所有已连接源进行集中式身份验证、授权和审计日志记录。

该文章将Nerve定位为解决开发者“集成疲劳”的方案，减少了对定制连接器的需求，并简化了应用程序中的数据获取逻辑。它被呈现为一款开发者工具，旨在加速构建需要从多个服务获取复合数据的功能。

---

## 28. MessageFormat：可本地化消息字符串的Unicode标准

**原文标题**: MessageFormat: Unicode standard for localizable message strings

**原文链接**: [https://github.com/unicode-org/message-format-wg](https://github.com/unicode-org/message-format-wg)

消息格式工作组（MFWG）隶属于Unicode CLDR技术委员会，负责开发和维护Unicode消息格式标准。该标准提供了一套语法和数据模型，用于创建可本地化的消息字符串，能够处理性别、词形变化和数据格式等复杂的国际化功能，旨在实现跨编程环境的广泛采用。

该标准有时被称为MessageFormat 2.0，是CLDR的稳定组成部分，其规范性规范发布于Unicode技术报告#35（TR35）中。尽管核心部分已稳定，但部分默认功能仍处于草案状态，可能会根据实施者的反馈进行调整。

工作组积极征求开发者、本地化工程师和用户对各个方面的反馈，包括错误、功能请求、实施挑战和使用案例。个人可以通过加入邮件列表、关注代码库参与讨论，若希望直接贡献，需完成贡献者许可协议（CLA）。Unicode成员组织的员工应与其代表协调，其他人员可申请特邀专家身份。

---

## 29. Vim-pencil：重新思考Vim作为写作工具

**原文标题**: Vim-pencil: Rethinking Vim as a tool for writing

**原文链接**: [https://github.com/preservim/vim-pencil](https://github.com/preservim/vim-pencil)

Vim-pencil是一款Vim插件，旨在将Vim转变为功能强大、适合写作的文本编辑器。它专注于让散文编辑——如Markdown、纯文本和LaTeX文件类型——像在Vim中编码一样流畅。其核心特性是同时兼容软换行和硬换行，并自动检测每个缓冲区以设置合适模式。

在硬换行模式下，该插件利用Vim的自动格式化功能（可配置暂停代码块或表格的格式化），并智能调整导航键。它还会在输入时创建更智能的撤销点，并支持Vim的隐藏功能，以隐藏标记字符（如表示粗体的`*`），从而提供更清晰的写作视图。

该插件高度可配置但作用域限于缓冲区，同时保留全局设置。它提供命令和自动命令以便轻松设置，状态栏指示器显示当前模式，并能与其他散文导向插件良好集成。最终，vim-pencil主张Vim可组合的命令“语法”为写作者提供了独特高效且富有表现力的文本操作方式，超越了传统文字处理器的能力。

---

## 30. Anthropic试图隐藏Claude的AI行为，开发者们对此表示不满。

**原文标题**: Anthropic tries to hide Claude's AI actions. Devs hate it

**原文链接**: [https://www.theregister.com/2026/02/16/anthropic_claude_ai_edits/](https://www.theregister.com/2026/02/16/anthropic_claude_ai_edits/)

Anthropic对其Claude Code AI工具的更新将默认进度输出改为隐藏被访问文件的名称，仅显示“已读取3个文件”等摘要信息。开发者们强烈批评这一改动，认为查看具体文件名对安全性、及早发现错误、审计活动以及通过中断错误操作避免令牌浪费至关重要。

针对GitHub和Hacker News上的反馈，Claude Code负责人Boris Cherny解释称，此举是为了减少终端信息过载，让用户专注于代码差异。他最初建议使用详细模式查看细节，但开发者认为该模式信息过于冗杂。随后Cherny调整了详细模式设置，使其在读取和搜索时显示文件路径，同时保持精简视图作为默认选项。

这场争论的核心在于透明度与简洁性之间的平衡。开发者坚持需要了解AI的具体操作以有效监督和纠正其工作，尤其是在Claude日益自主运行的情况下。Anthropic则主张精简默认模式能提升用户体验，同时为需要更多细节的用户保留可选项。目前问题尚未解决，且没有迹象表明会完全恢复旧版更详细的默认行为。

---

