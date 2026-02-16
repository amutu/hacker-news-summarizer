# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-16.md)

*最后自动更新时间: 2026-02-16 20:34:49*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 2 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 3 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 4 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 5 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 6 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 7 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 8 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 9 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 10 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 11 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 12 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 13 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 14 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 15 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 16 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 17 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 18 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 19 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 20 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 21 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 22 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 23 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 24 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 25 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 26 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 27 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 28 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 29 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 30 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 31 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 32 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 33 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 34 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 35 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 36 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 37 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 38 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 39 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 40 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 41 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 42 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 43 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 44 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 45 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 46 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 47 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 48 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 49 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 50 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 51 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 52 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 53 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 54 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 55 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 56 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 57 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 58 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 59 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 60 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 61 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 62 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 63 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 64 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 65 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 66 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 67 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 68 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 69 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 70 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 71 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 72 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 73 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 74 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 75 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 76 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 77 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 78 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 79 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 80 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 81 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 82 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 83 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 84 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 85 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 86 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 87 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 88 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 89 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 90 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 91 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 92 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 93 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 94 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 95 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 96 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 97 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 98 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 99 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 100 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 101 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 102 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 103 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 104 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 105 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 106 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 107 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 108 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 109 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 110 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 111 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 112 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 113 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 114 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 115 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 116 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 117 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 118 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 119 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 120 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 121 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 122 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 123 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 124 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 125 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 126 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 127 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 128 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 129 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 130 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 131 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 132 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 133 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 134 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 135 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 136 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 137 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 138 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 139 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 140 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 141 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 142 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 143 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 144 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 145 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 146 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 147 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 148 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 149 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 150 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 151 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 152 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 153 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 154 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 155 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 156 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 157 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 158 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 159 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 160 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 161 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 162 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 163 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 164 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 165 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 166 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 167 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 168 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 169 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 170 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 171 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 172 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 173 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 174 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 175 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 176 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 177 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 178 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 179 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 180 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 181 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 182 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 183 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 184 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 185 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 186 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 187 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 188 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 189 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 190 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 191 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 192 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 193 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 194 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 195 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 196 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 197 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 198 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 199 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 200 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 201 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 202 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 203 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 204 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 205 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 206 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 207 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 208 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 209 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 210 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 211 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 212 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 213 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 214 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 215 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 216 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 217 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 218 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 219 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 220 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 221 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 222 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 223 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 224 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 225 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 226 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 227 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 228 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 229 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 230 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 231 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 232 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 233 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 234 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 235 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 236 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 237 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 238 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 239 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 240 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 241 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 242 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 243 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 244 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 245 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 246 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 247 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 248 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 249 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 250 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 251 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 252 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 253 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 254 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 255 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 256 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 257 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 258 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 259 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 260 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 261 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 262 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 263 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 264 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 265 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 266 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 267 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 268 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 269 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 270 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 271 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 272 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 273 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 274 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 275 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 276 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 277 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 278 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 279 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 280 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 281 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 282 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 283 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 284 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 285 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 286 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 287 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 288 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 289 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 290 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 291 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 292 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 293 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 294 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 295 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 296 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 297 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 298 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 299 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 300 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 301 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 302 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 303 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 304 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 305 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 306 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 307 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 308 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 309 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 310 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 311 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 312 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 313 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 314 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 315 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 316 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 317 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 318 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 319 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 320 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 321 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 322 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 323 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 324 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 325 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 326 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 327 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 328 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 329 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 330 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 331 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
