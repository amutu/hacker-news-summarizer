# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-07.md)

*最后自动更新时间: 2026-07-07 20:33:12*
## 1. StreetComplete：一次一个小任务，完善OpenStreetMap

**原文标题**: StreetComplete: Fixing OpenStreetMap, one tiny quest at a time

**原文链接**: [https://streetcomplete.app/](https://streetcomplete.app/)

**StreetComplete 简介**

StreetComplete 是一款移动应用，通过名为“任务”的基于位置的小任务，简化对 OpenStreetMap（OSM）的贡献。它会识别用户附近缺失的地图数据——例如道路名称、建筑类型或人行道细节——并以简单问题的形式呈现。用户通过亲自前往实地并回答查询来完成任务，其答案直接以用户名义更新到 OSM 中，无需使用传统编辑工具。

主要功能包括多语言支持（超过 50 种语言）以及用于现场调查的直观界面。该应用是开源的，项目主页位于 GitHub，并通过 Slack 频道提供社区支持。用户可以通过翻译应用或捐款来做出贡献。该页面还包含常见问题解答、隐私政策和更新信息的链接。

---

## 2. 使用Kokoro实现本地、CPU友好、高质量的文本转语音

**原文标题**: Local, CPU-Friendly, High-Quality TTS (Text-to-Speech) with Kokoro

**原文链接**: [https://ariya.io/2026/03/local-cpu-friendly-high-quality-tts-text-to-speech-with-kokoro/](https://ariya.io/2026/03/local-cpu-friendly-high-quality-tts-text-to-speech-with-kokoro/)

**摘要：**

本文重点介绍了Kokoro——一款本地运行、对CPU友好且高质量的文本转语音（TTS）模型。尽管仅有8200万个参数，Kokoro能生成逼真的语音，支持多种语言（英语、普通话、印地语），并提供约50种不同音色。

最简单的部署方式是通过Kokoro-FastAPI容器镜像（约5GB，包含预下载的音色）。使用Docker或Podman通过一条简单命令即可启动。该容器提供用于测试的Web界面，以及兼容OpenAI语音API的接口，使与现有程序的集成变得简单直接。GitHub上提供了JavaScript和Python的示例代码。

性能基准测试显示，生成一个短段落所需时间：在12年前的英特尔i7-4770K上为4.7秒，在苹果M2 Pro上为4.5秒，在AMD锐龙7 8745HS上为1.5秒，展现了广泛的CPU兼容性。

文章还提到Speaches作为另一个容器化TTS服务，同时支持通过Whisper进行TTS和语音转文本（STT），但需要手动下载语音权重。将Kokoro与本地大语言模型结合，用户可听取AI生成的答案，无需阅读，从而确保隐私。

---

## 3. AI遇见密码学1：AI在Cloudflare的Circl中发现了什么

**原文标题**: AI Meets Cryptography 1: What AI Found in Cloudflare's Circl

**原文链接**: [https://blog.zksecurity.xyz/posts/circl-bugs/](https://blog.zksecurity.xyz/posts/circl-bugs/)

zkSecurity 的这篇文章介绍了他们的 AI 审计管道 zkao，该工具在 Cloudflare 的 CIRCL 加密库中发现了七个真实漏洞——目前均已修复。作者详细说明了每个漏洞、其严重性（由 AI 评估 vs. Cloudflare 确认）以及根本原因：

1.  **门限 RSA 中的 Float64 精度损失**：浮点指数运算破坏了针对大群体数量的 Shamir 秘密共享（AI：严重，Cloudflare：低）。
2.  **DLEQ 证明伪造**：证明结构体中一个可被证明者控制的安全参数允许轻松伪造（AI：高，Cloudflare：低）。
3.  **BLS 聚合验证**：缺少消息唯一性检查导致恶意密钥攻击（AI：中，Cloudflare：高）。
4.  **DLEQ 可靠性破坏**：通过 `FillBytes` 实现的签名碰撞允许对半数证明进行伪造（AI：高，Cloudflare：低）。
5.  **HPKE PSK 绕过**：Go 语言 switch 语句中的按位或操作静默跳过了对 PSK 模式的验证（中，重复）。
6.  **拉格朗日系数溢出**：TSS/RSA 组合中的 int64 溢出和截断破坏了签名（AI：高，Cloudflare：中）。
7.  **CP-ABE 访问控制破坏**：一个 AND-分享实现错误完全破坏了基于属性的加密的安全保证（由 zkSecurity 的 zkao 发现；AI 与 Cloudflare 均判定为：严重）。

关键见解：AI 的严重性评级通常与 Cloudflare 的有所不同（例如，float64 错误看似严重，但需要罕见条件才能触发）。作者强调，尽管 zkao 自动化了大量工作，人类验证仍然至关重要。文章着重指出，LLM 能够发现微妙的跨边界漏洞，但仍需专家监督才能进行准确评估。

---

## 4. 聊天控制1.0与2.0详解

**原文标题**: Chat Control 1.0 and 2.0 Explained

**原文链接**: [https://fightchatcontrol.eu/chat-control-overview](https://fightchatcontrol.eu/chat-control-overview)

以下是文章的精简摘要（300字以内）：

本文澄清，“聊天控制”指的是两项并行推进的独立欧盟立法进程。

**聊天控制1.0**是一项临时法律（第2021/1232号条例），允许（而非强制）平台自愿扫描私人信息以查找儿童性虐待材料。该法律原定于2026年4月4日到期，在欧洲议会拒绝延长其有效期后正式失效。然而，欧盟理事会（成员国）采取前所未有的举措，正快速推进一项内容相同的新法律以恢复该机制。欧洲议会预计将于2026年7月7日进行紧急投票；若未能获得全体议员的绝对多数反对票，该法律将自动通过。

**聊天控制2.0**是一项永久性拟议法规（《CSA条例》），将强制要求检测。多年来，由于加密信息及非嫌疑用户扫描这一核心问题存在分歧，该法规在三方谈判中陷入僵局。欧盟理事会的立场允许基于广泛风险减轻义务的“自愿”无嫌疑扫描，而欧洲议会则坚持仅允许经法院授权的定向扫描。2026年6月29日的最终三方谈判宣告破裂且未达成协议，目前谈判仍在爱尔兰轮值主席国主导下继续推进。

**当前状态（2026年7月）：** 聊天控制1.0正通过快速通道的后门程序复活，而聊天控制2.0仍悬而未决。两项立法较量正在同时进行。

---

## 5. k与q的新运行时

**原文标题**: l: A new runtime for k and q

**原文链接**: [https://lv1.sh/](https://lv1.sh/)

根据提供的资料，本文介绍"l"是为k和q编程语言设计的新运行时。其核心价值主张是**完全向后兼容**，确保现有K4代码、q代码和qSQL语法无需任何修改即可运行。

主要特点包括：

- **零代码重写：** 用户可原样运行当前语法、惯用表达方式及K4/q代码。
- **全面支持：** 该运行时原生支持表、字典、分区和展开表。
- **性能优化：** 采用优化的列式表，表明相较于现有运行时性能有所提升。
- **语言兼容：** 系统明确支持K4语法、原生q和qSQL。

核心信息是"l"提供了一条无缝升级路径——提供全新且可能更快（尤其在列式操作方面）的运行时，同时让现有k和q用户无需任何代码重写或迁移工作。

---

## 6. 一种更好的系运动短裤（或任何抽绳）的方法 [视频]

**原文标题**: A better way to tie gym shorts (or any drawstring) [video]

**原文链接**: [https://www.youtube.com/watch?v=3R0Lp86GEBk](https://www.youtube.com/watch?v=3R0Lp86GEBk)

提供的内容并非关于系运动短裤的文章，而是标准的YouTube页面页脚和法律声明（可能从视频页面底部复制而来）。其中不包含任何关于抽绳、系法或运动短裤的信息。该文本仅包含：

- YouTube的版权、隐私、条款及安全政策
- YouTube位于加利福尼亚州山景城的总部地址及支持电话
- 法律免责声明：YouTube不出售推荐产品，且不对创作者的标签商品负责
- 托管信息及举报非法拍摄内容的联系方式

**总结**：此文本是YouTube标准的法律和政策页脚，并非系抽绳指南，不提供任何指导内容。标题“系运动短裤的更好方法”在所提供的材料中未找到任何实际建议或视频文字记录与之对应。

---

## 7. 30papers.com – Ilya的30篇机器学习必读论文，初学者友好版

**原文标题**: 30papers.com – Ilya's 30 essential ML papers, in a beginner friendly format

**原文链接**: [https://30papers.com/](https://30papers.com/)

文章《30papers.com – 伊利亚的30篇必读机器学习论文，入门友好版》整理了一份由OpenAI联合创始人兼首席科学家伊利亚·苏茨克弗（Ilya Sutskever）推荐给传奇游戏开发者、VR先驱约翰·卡马克（John Carmack）的机器学习论文阅读清单。该清单旨在为理解现代深度学习提供基础指南。

核心要点包括：
- **伊利亚精选**：论文由该领域顶尖专家亲自挑选，最初源自与卡马克的邮件交流。
- **入门友好形式**：网站为每篇论文提供简洁总结、关键要点与背景说明，使复杂研究易于新手理解。
- **涵盖核心主题**：清单覆盖神经网络奠基性成果（如AlexNet、ResNet、Transformer）、优化方法（Adam、批归一化）、大语言模型（GPT、BERT、缩放定律）、强化学习（AlphaGo、RLHF）及数据效率（自监督学习、对比学习）。
- **渐进式学习路径**：论文按从基础概念到前沿模型的顺序排列，帮助读者逐步构建知识体系。网站还提供每篇论文的链接及其重要性的非正式解读。
- **免费资源**：全部清单及解读均可在线免费获取，旨在推动人工智能教育的普及。

总之，文章展示了一个结构清晰、易于消化的入门指南，帮助任何想了解现代机器学习关键突破的人，所选内容来自该领域最具影响力的实践者之一。

---

## 8. 软件质量笔记

**原文标题**: Notes on Software Quality

**原文链接**: [https://anthonyhobday.com/blog/20260410](https://anthonyhobday.com/blog/20260410)

本文全面探讨了软件质量，将其定义为"没有缺陷"。作者认为，质量存在于一条通向无法企及的完美境地的光谱之上，越接近完美，边际效益越低。质量在很大程度上取决于组织的领导力和文化，这些因素通过能力和意愿来促成或限制质量。

文中识别出六大通用质量信号：外观、关联性、成本与性能。具体到软件领域，这分别体现为可靠性、速度、清晰度、效能、效率和美感。追求质量的好处包括：吸引员工和用户、降低流失率和缺陷率、简化销售流程、构建竞争壁垒以及增加收入。

文章列举了关于质量的常见观点，例如其难度随规模扩大而增加、与增长等商业目标相冲突、以及需依赖专家评估进行衡量等。核心论点是：**质量在规模化后会变得不可能**——随着软件或团队的增长，需要管理的关系数量会变得难以招架，流程可能凌驾于设计之上。添加功能或广告等商业压力会进一步侵蚀质量。

业内人物的轶事证据支持了这一点：Stripe对其自身质量的不满；观察到企业软件漏洞不断增多而独立软件却日益流畅；以及随着团队壮大和产品成熟，"匠心"与"魔力"的丧失——Packy McCormick将此循环称为从"魔法师"到"麻瓜"的转变。

---

## 9. 吉姆的真型二维码字体

**原文标题**: Jim's TrueType QR Code Font

**原文链接**: [https://github.com/jimparis/qr-font](https://github.com/jimparis/qr-font)

**摘要：Jim的TrueType二维码字体**

该项目生成实验性OpenType字体，可将二维码直接嵌入文本中。以方括号分隔的文本（如 `[hello]`）会被转换为二维码符号，而周围的文本则保持为正常字体字形。

提供三种字体版本，区别在于二维码模块尺寸和最大字符容量：**qrfont-1L**（21×21模块，最多17个字符）、**qrfont-2L**（25×25，最多32个字符）和 **qrfont-3L**（29×29，最多53个字符）。所有版本均采用字节模式、可打印ASCII输入、固定掩码模式0，并以 `[` 和 `]` 作为分隔符。

这些字体通过构建脚本生成，脚本生成字形轮廓和GSUB功能逻辑，并编译成TTF文件。可打印ASCII字形来源于Liberation Sans Regular（缩放以适应em方形）。由于许可限制，生成的字体家族被命名为"QR Font 1-L"等。

构建支持两种模式：实现里德-所罗门纠错的完整奇偶校验模式（默认），以及使用占位零奇偶校验的仅布局模式（速度更快）。用户还可以指定不同的基础TrueType字体。

输出内容包括字体文件、交互式网页演示（`dist/index.html`）和OpenType功能文件。演示允许输入带括号的文本，以查看二维码内联渲染效果。该字体依赖OpenType形状处理（GSUB），并作为Liberation Sans Regular的修改版本，采用SIL开放字体许可证1.1发布。

---

## 10. 赫尔德：一统所有终端的设备

**原文标题**: Herdr: One terminal to rule them all

**原文链接**: [https://herdr.dev/](https://herdr.dev/)

文章介绍了**Herdr**，这是一款终端管理工具，通过为本地和远程终端会话提供统一界面来简化工作流程。其标语"一统所有终端的王者"强调了集中化理念。核心功能包括：

- **本地机器管理**：支持用户分屏、创建标签页，在单个窗口中组织多个终端会话。
- **持久化代理**：允许后台进程（"代理"）在终端关闭或断开连接后持续运行，避免工作中断。
- **简洁命令操作**：通过`$ herdr`指令调用工具，体现轻量级命令行驱动体验。

其核心价值在于效率提升：用户可同时处理多项任务、维持长时间运行的进程，并在无需重启工作的情况下无缝重连。Herdr旨在减少上下文切换，为频繁在终端环境中工作的开发者、系统管理员及高级用户提升生产力。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 2 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 3 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 4 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 5 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 6 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 7 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 8 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 9 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 10 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 11 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 12 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 13 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 14 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 15 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 16 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 17 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 18 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 19 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 20 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 21 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 22 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 23 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 24 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 25 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 26 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 27 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 28 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 29 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 30 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 31 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 32 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 33 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 34 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 35 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 36 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 37 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 38 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 39 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 40 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 41 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 42 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 43 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 44 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 45 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 46 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 47 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 48 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 49 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 50 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 51 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 52 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 53 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 54 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 55 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 56 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 57 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 58 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 59 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 60 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 61 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 62 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 63 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 64 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 65 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 66 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 67 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 68 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 69 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 70 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 71 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 72 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 73 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 74 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 75 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 76 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 77 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 78 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 79 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 80 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 81 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 82 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 83 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 84 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 85 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 86 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 87 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 88 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 89 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 90 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 91 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 92 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 93 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 94 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 95 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 96 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 97 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 98 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 99 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 100 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 101 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 102 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 103 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 104 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 105 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 106 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 107 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 108 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 109 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 110 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 111 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 112 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 113 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 114 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 115 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 116 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 117 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 118 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 119 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 120 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 121 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 122 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 123 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 124 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 125 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 126 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 127 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 128 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 129 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 130 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 131 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 132 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 133 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 134 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 135 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 136 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 137 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 138 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 139 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 140 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 141 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 142 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 143 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 144 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 145 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 146 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 147 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 148 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 149 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 150 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 151 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 152 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 153 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 154 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 155 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 156 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 157 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 158 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 159 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 160 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 161 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 162 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 163 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 164 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 165 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 166 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 167 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 168 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 169 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 170 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 171 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 172 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 173 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 174 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 175 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 176 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 177 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 178 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 179 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 180 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 181 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 182 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 183 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 184 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 185 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 186 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 187 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 188 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 189 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 190 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 191 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 192 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 193 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 194 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 195 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 196 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 197 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 198 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 199 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 200 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 201 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 202 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 203 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 204 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 205 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 206 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 207 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 208 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 209 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 210 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 211 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 212 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 213 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 214 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 215 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 216 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 217 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 218 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 219 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 220 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 221 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 222 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 223 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 224 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 225 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 226 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 227 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 228 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 229 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 230 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 231 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 232 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 233 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 234 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 235 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 236 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 237 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 238 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 239 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 240 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 241 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 242 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 243 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 244 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 245 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 246 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 247 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 248 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 249 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 250 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 251 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 252 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 253 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 254 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 255 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 256 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 257 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 258 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 259 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 260 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 261 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 262 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 263 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 264 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 265 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 266 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 267 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 268 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 269 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 270 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 271 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 272 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 273 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 274 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 275 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 276 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 277 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 278 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 279 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 280 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 281 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 282 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 283 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 284 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 285 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 286 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 287 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 288 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 289 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 290 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 291 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 292 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 293 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 294 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 295 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 296 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 297 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 298 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 299 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 300 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 301 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 302 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 303 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 304 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 305 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 306 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 307 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 308 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 309 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 310 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 311 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 312 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 313 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 314 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 315 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 316 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 317 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 318 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 319 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 320 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 321 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 322 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 323 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 324 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 325 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 326 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 327 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 328 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 329 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 330 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 331 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 332 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 333 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 334 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 335 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 336 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 337 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 338 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 339 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 340 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 341 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 342 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 343 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 344 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 345 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 346 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 347 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 348 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 349 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 350 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 351 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 352 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 353 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 354 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 355 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 356 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 357 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 358 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 359 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 360 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 361 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 362 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 363 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 364 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 365 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 366 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 367 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 368 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 369 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 370 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 371 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 372 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 373 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 374 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 375 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 376 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 377 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 378 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 379 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 380 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 381 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 382 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 383 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 384 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 385 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 386 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 387 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 388 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 389 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 390 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 391 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 392 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 393 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 394 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 395 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 396 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 397 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 398 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 399 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 400 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 401 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 402 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 403 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 404 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 405 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 406 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 407 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 408 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 409 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 410 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 411 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 412 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 413 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 414 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 415 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 416 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 417 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 418 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 419 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 420 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 421 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 422 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 423 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 424 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 425 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 426 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 427 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 428 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 429 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 430 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 431 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 432 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 433 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 434 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 435 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 436 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 437 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 438 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 439 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 440 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 441 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 442 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 443 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 444 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 445 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 446 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 447 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 448 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 449 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 450 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 451 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 452 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 453 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 454 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 455 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 456 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 457 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 458 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 459 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 460 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 461 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 462 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 463 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 464 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 465 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 466 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 467 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 468 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 469 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 470 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 471 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 472 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
