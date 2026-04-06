# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-06.md)

*最后自动更新时间: 2026-04-06 20:35:15*
## 1. 韦诺之战：开源回合制策略游戏

**原文标题**: Battle for Wesnoth: open-source, turn-based strategy game

**原文链接**: [https://www.wesnoth.org](https://www.wesnoth.org)

本段文字说明，该网站正在使用一款名为Anubis的安全工具，以防止被AI公司抓取内容而导致过载。其核心保护机制是一种类似Hashcash的工作量证明系统，要求访客完成一项小型计算任务。这项微小的任务对人类用户来说轻而易举，但对大规模运行的自动化机器人而言则成本高昂。

文中澄清，这只是一种临时的“足够好”的解决方案。其目的是为开发者争取时间，以创建更复杂、基于浏览器指纹识别（如分析字体渲染）的永久性保护措施，且不会给合法用户带来不便。文中指出，Anubis需要现代JavaScript支持，因此使用某些隐私扩展插件的用户可能需要暂时禁用这些插件才能访问网站。最后，消息总结道，由于AI公司改变了网络托管领域的“社会契约”，目前必须依赖JavaScript进行验证，但非JavaScript的解决方案正在开发中。

---

## 2. 氛围编程的崇拜简直疯狂

**原文标题**: The cult of vibe coding is insane

**原文链接**: [https://bramcohen.com/p/the-cult-of-vibe-coding-is-insane](https://bramcohen.com/p/the-cult-of-vibe-coding-is-insane)

本文批判了“氛围编程”的极端实践，即开发者完全依赖人工智能编写代码，却从不检查或理解底层实现。作者认为，这种教条式做法——以Claude团队泄露的源代码为例——会导致质量低下、冗余的软件。

核心论点是：尽管人工智能是强大工具，但仍需人类积极引导。开发者应当审查代码，识别重复或结构不良等问题，然后与人工智能进行详细对话以确定解决方案。作者分享了自身方法：先就代码问题进行高层次讨论，通过对话完善解决思路，再指导人工智能执行清理或重写工作。

结论是：劣质软件是一种选择，而非人工智能辅助开发的必然结果。通过将人类监督和战略指导与人工智能的执行能力相结合，团队能够实现高质量成果。而禁止探究内部机制的“氛围编程”崇拜，则被描述为一条导致技术债务的不负责任且本可避免的路径。

---

## 3. 发布HN：Freestyle：AI编码代理的沙盒环境

**原文标题**: Launch HN: Freestyle: Sandboxes for AI Coding Agents

**原文链接**: [https://www.freestyle.sh](https://www.freestyle.sh)

Freestyle是一个专为AI编程代理设计的沙箱环境平台。它提供具备root权限的完整Linux虚拟机，使代理能够执行构建、测试和部署代码等复杂开发任务。

主要特性包括：
*   **快速虚拟机部署**（低于700毫秒）和即时克隆的**实时分支功能**
*   **暂停/恢复功能**可在虚拟机闲置时停止计费
*   **集成Git仓库管理**，支持Webhook和GitHub同步
*   **支持嵌套虚拟化**（Docker、KVM）及完整的systemd服务

该平台定位为扩展AI代理的基础设施，适用场景涵盖AI应用构建器（如Lovable）、自主编程代理（如Devin）及代码审查机器人。其目标是为AI驱动的开发工作流提供安全、隔离且高性能的运行环境。

---

## 4. Show HN: Ghost Pepper – 专为 macOS 打造的 100% 本地化长按语音转文字工具

**原文标题**: Show HN: Ghost Pepper – 100% local hold-to-talk speech-to-text for macOS

**原文链接**: [https://github.com/matthartman/ghost-pepper](https://github.com/matthartman/ghost-pepper)

**Ghost Pepper** 是一款专注于隐私的免费 macOS 应用，提供本地、按住说话的语音转文字转录功能。它完全在您的 Mac 上运行，确保音频数据不会发送到云端。

**主要特点：**
*   **本地化与隐私保护：** 所有处理均使用开源模型（WhisperKit 用于转录，Qwen 2.5 用于文本清理），通过 Apple Silicon 在设备上运行。
*   **操作简单：** 按住 Control 键录制语音；松开即可转录并自动将文本粘贴到任何输入框。
*   **智能编辑：** 内置的本地语言模型可去除填充词（如“嗯”、“啊”）并处理自我修正。
*   **菜单栏应用：** 在菜单栏中低调运行，支持登录时启动，且无 Dock 图标。

**工作原理：**
应用首次启动时会自动从 Hugging Face 下载必要的 AI 模型（总计约 3.5 GB）并缓存在本地。需要麦克风和辅助功能权限才能正常工作。

**目标用户：**
专为 macOS 14.0+ 系统、使用 Apple Silicon（M1 及以上）芯片的用户设计，他们希望获得一个快速、私密的语音输入工具，以区别于基于云端的替代方案。该应用是开源的（MIT 许可证），可从源代码构建或直接下载。

---

## 5. 一位密码学工程师对量子计算时间线的看法

**原文标题**: A cryptography engineer's perspective on quantum computing timelines

**原文链接**: [https://words.filippo.io/crqc-timeline/](https://words.filippo.io/crqc-timeline/)

在这篇2026年4月的文章中，一位密码学工程师紧急呼吁立即部署后量子（PQ）密码学，其依据是近期研究已大幅缩短了密码学相关量子计算机（CRQC）的研发时间线。

作者指出两篇关键论文：一篇来自谷歌，显著减少了破解椭圆曲线密码学所需的逻辑量子比特；另一篇来自Oratomic，展示了使用中性原子等先进硬件能以更少的物理量子比特实现攻击。海瑟·阿德金斯和苏菲·施米格等专家现在提出2029年最后期限，这使得不作为的风险不可接受。

因此，作者主张行业必须立即"部署现有方案"，尽管存在实际挑战。这意味着需在X.509等协议中部署大型ML-DSA签名，将密钥交换完全迁移至ML-KEM，并对非PQ连接发出用户警告。作者认为混合签名方案纯属浪费时间，并声明不应再部署新的非PQ方案。

其他紧急措施包括：迁移社交媒体和加密货币等系统中的密码学身份标识，更新文件加密以防"先存储后解密"攻击，重新评估硬件可信执行环境（TEE）的安全性。作者总结指出，虽然对称加密（如AES）目前仍安全，但支撑现代互联网的非对称密码学必须立即更换。

---

## 6. Show HN：GovAuctions 让你一站式浏览政府拍卖信息

**原文标题**: Show HN: GovAuctions lets you browse government auctions at once

**原文链接**: [https://www.govauctions.app/](https://www.govauctions.app/)

**GovAuctions** 是一个免费的集中式搜索平台，汇集了美国多个官方政府剩余物资拍卖网站（如 GSA Auctions 和 HUD Homes）的拍卖信息，并将其整合到一个简洁统一的界面中。

该服务解决了政府平台信息分散的问题，使用户能够同时搜索来自所有主要来源的车辆、电子产品、设备和房地产等物品。用户可按州、类别或关键词筛选结果，并设置新上架物品的电子邮件提醒。

一个关键特点是 **GovAuctions 不处理竞价或交易**。相反，它会引导用户前往原始政府拍卖平台直接出价，确保无需支付中间人费用或使用信用额度。

该网站还提供教育资源，包括如何参与拍卖、购买剩余车辆以及可能通过转售物品获利的指南。

---

## 7. 德国警方公布GandCrab与REvil勒索软件团伙的涉嫌头目身份

**原文标题**: German police name alleged leaders of GandCrab and REvil ransomware groups

**原文链接**: [https://krebsonsecurity.com/2026/04/germany-doxes-unkn-head-of-ru-ransomware-gangs-revil-gandcrab/](https://krebsonsecurity.com/2026/04/germany-doxes-unkn-head-of-ru-ransomware-gangs-revil-gandcrab/)

德国当局已确认31岁俄罗斯公民丹尼尔·马克西莫维奇·舒金为臭名昭著的GandCrab和REvil勒索软件团伙头目，其化名为“UNKN”。德国联邦刑事警察局（BKA）指出，舒金及其同伙阿纳托利·谢尔盖耶维奇·克拉夫丘克在2019年至2021年间，在德国境内实施了至少130起网络攻击，造成超过3500万欧元损失，并勒索近200万欧元。

舒金被指控领导了开创“双重勒索”模式的犯罪团伙，即分别索要解密系统费用和防止数据泄露的封口费。美国司法部还追踪到一个与他关联、持有超过31.7万美元的加密货币钱包。GandCrab团伙在2018年至2019年活跃期间，自称在关闭前勒索金额超20亿美元。随后出现的REvil团伙演变为针对大型机构的“狩猎巨头”行动，最著名的是2021年7月对软件供应商Kaseya的攻击。

BKA认为舒金居住在俄罗斯克拉斯诺达尔。尽管直接论坛证据有限，但情报显示其与早期黑客身份“Ger0in”存在关联。公开照片（包括2023年生日聚会影像）与BKA通缉照相符。此次身份确认源于2023年一场会议报告中对其姓名的披露。

---

## 8. 书评：《反记忆部门并不存在》

**原文标题**: Book review: There is no antimemetics division

**原文链接**: [https://www.stephendiehl.com/posts/no_antimimetics/](https://www.stephendiehl.com/posts/no_antimimetics/)

萨姆·休斯（qntm）所著的《反记忆部不存在》是一部科幻恐怖小说，探讨了“反模因”——即那些主动抗拒被感知或记忆的概念或实体——这一恐怖设定。故事围绕反记忆部部长玛丽昂·惠勒展开，她带领团队借助记忆增强药物对抗这些威胁，并与一种能抹除现实的“信息掠食者”SCP-3125展开斗争。

这部源自SCP基金会维基的小说，通过聚焦这场战争对个体的残酷代价升华了主题。主人公为剥夺敌人的任何可乘之机，必须系统性地抹除自己的记忆与身份，从而颠覆了传统的英雄主义叙事。当她的丈夫亚当在记忆被彻底清除后，仍能凭借爱的残痕感知到她的缺失时，故事便浮现出深刻的情感内核。

在结构上，本书呼应其主题，将读者抛入碎片化的场景中以模拟对抗被遗忘威胁的体验。它将宇宙恐怖转化为信息论的隐喻，呈现出一个“理解即危险”的世界。书评盛赞这部作品构思精妙、极具原创性，捕捉到了系统在静默中溃败的恐惧，并称其为SCP集体创作中最具文学价值的成果之一。

---

## 9. Sky——一种受Elm启发的语言，可编译为Go代码

**原文标题**: Sky – an Elm-inspired language that compiles to Go

**原文链接**: [https://github.com/anzellai/sky](https://github.com/anzellai/sky)

Sky是一种实验性的全栈编程语言，可编译为Go代码，旨在融合Elm的函数式优雅与Go的实用工具链。它允许开发者通过Hindley-Milner类型推断、代数数据类型和模式匹配编写函数式代码，最终打包为单一可移植的二进制文件。

该语言致力于消除前后端技术栈分离的摩擦，其服务器驱动式UI渲染机制受Phoenix LiveView启发，无需客户端框架即可构建交互式网络应用。Sky能与任何Go包实现无缝、类型安全的互操作，并自动封装调用以处理错误和异常。

核心特性包括采用Elm架构（TEA）进行状态管理、全面的标准库，以及自托管工具链（编译器、命令行工具、格式化器、语言服务器协议），最终生成小巧（约4MB）的原生二进制文件。其开发过程借助了AI辅助工具加速。尽管仍处于实验阶段，Sky主要面向追求统一、类型安全且可移植的全栈开发体验的开发者。

---

## 10. 克劳德代码在二月更新后已无法胜任复杂工程任务。

**原文标题**: Claude Code is unusable for complex engineering tasks with the Feb updates

**原文链接**: [https://github.com/anthropics/claude-code/issues/42796](https://github.com/anthropics/claude-code/issues/42796)

本文报告了自2026年2月起，Claude Code在处理复杂工程任务时出现的显著质量退化。作者作为资深工程师，通过分析数千次会话数据指出，模型进行深度多步推理的能力已严重下降。

核心问题与"思考令牌"（模型内部推理过程）的减少有关。数据显示，2月下旬模型思考深度下降约67%，随后在3月初思考内容被完全从用户视图中隐藏。这种减少伴随着可观测的行为变化：模型如今常在未充分研究的情况下修改代码、出现"推理循环"、默认采用常出错的"最简单修复方案"，并过早请求终止任务。

作者认为，深度思考对于复杂工作流至关重要，它使模型能够规划任务、遵循规范并自我纠错。缺乏这一能力后，Claude Code在高复杂度工程任务中已不可靠，导致团队最终更换服务商。报告最后向Anthropic提出建议，包括公开思考令牌分配机制，并为需要深度推理的用户提供高级服务层级。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 2 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 3 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 4 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 5 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 6 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 7 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 8 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 9 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 10 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 11 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 12 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 13 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 14 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 15 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 16 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 17 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 18 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 19 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 20 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 21 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 22 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 23 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 24 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 25 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 26 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 27 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 28 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 29 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 30 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 31 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 32 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 33 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 34 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 35 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 36 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 37 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 38 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 39 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 40 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 41 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 42 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 43 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 44 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 45 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 46 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 47 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 48 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 49 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 50 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 51 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 52 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 53 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 54 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 55 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 56 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 57 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 58 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 59 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 60 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 61 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 62 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 63 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 64 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 65 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 66 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 67 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 68 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 69 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 70 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 71 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 72 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 73 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 74 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 75 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 76 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 77 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 78 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 79 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 80 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 81 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 82 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 83 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 84 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 85 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 86 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 87 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 88 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 89 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 90 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 91 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 92 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 93 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 94 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 95 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 96 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 97 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 98 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 99 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 100 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 101 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 102 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 103 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 104 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 105 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 106 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 107 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 108 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 109 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 110 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 111 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 112 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 113 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 114 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 115 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 116 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 117 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 118 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 119 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 120 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 121 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 122 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 123 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 124 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 125 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 126 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 127 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 128 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 129 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 130 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 131 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 132 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 133 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 134 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 135 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 136 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 137 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 138 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 139 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 140 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 141 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 142 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 143 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 144 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 145 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 146 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 147 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 148 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 149 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 150 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 151 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 152 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 153 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 154 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 155 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 156 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 157 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 158 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 159 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 160 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 161 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 162 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 163 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 164 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 165 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 166 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 167 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 168 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 169 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 170 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 171 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 172 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 173 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 174 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 175 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 176 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 177 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 178 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 179 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 180 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 181 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 182 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 183 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 184 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 185 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 186 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 187 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 188 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 189 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 190 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 191 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 192 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 193 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 194 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 195 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 196 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 197 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 198 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 199 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 200 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 201 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 202 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 203 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 204 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 205 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 206 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 207 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 208 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 209 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 210 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 211 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 212 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 213 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 214 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 215 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 216 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 217 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 218 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 219 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 220 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 221 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 222 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 223 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 224 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 225 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 226 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 227 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 228 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 229 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 230 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 231 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 232 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 233 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 234 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 235 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 236 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 237 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 238 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 239 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 240 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 241 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 242 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 243 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 244 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 245 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 246 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 247 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 248 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 249 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 250 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 251 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 252 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 253 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 254 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 255 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 256 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 257 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 258 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 259 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 260 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 261 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 262 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 263 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 264 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 265 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 266 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 267 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 268 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 269 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 270 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 271 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 272 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 273 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 274 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 275 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 276 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 277 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 278 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 279 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 280 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 281 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 282 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 283 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 284 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 285 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 286 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 287 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 288 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 289 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 290 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 291 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 292 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 293 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 294 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 295 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 296 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 297 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 298 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 299 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 300 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 301 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 302 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 303 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 304 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 305 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 306 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 307 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 308 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 309 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 310 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 311 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 312 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 313 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 314 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 315 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 316 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 317 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 318 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 319 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 320 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 321 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 322 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 323 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 324 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 325 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 326 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 327 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 328 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 329 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 330 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 331 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 332 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 333 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 334 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 335 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 336 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 337 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 338 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 339 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 340 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 341 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 342 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 343 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 344 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 345 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 346 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 347 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 348 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 349 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 350 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 351 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 352 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 353 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 354 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 355 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 356 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 357 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 358 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 359 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 360 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 361 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 362 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 363 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 364 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 365 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 366 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 367 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 368 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 369 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 370 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 371 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 372 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 373 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 374 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 375 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 376 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 377 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 378 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 379 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 380 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
