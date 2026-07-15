# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-15.md)

*最后自动更新时间: 2026-07-15 20:32:50*
## 1. Inkling：我们的开源权重模型

**原文标题**: Inkling: Our Open-Weights Model

**原文链接**: [https://thinkingmachines.ai/news/introducing-inkling/](https://thinkingmachines.ai/news/introducing-inkling/)

**摘要：Inkling 开源权重模型**

Thinking Machines 发布了 Inkling，这是一款开源权重的混合专家（Mixture-of-Experts）Transformer 模型，拥有 9750 亿总参数（410 亿活跃参数）和 100 万 token 的上下文窗口，在 45 万亿 token 的文本、图像、音频和视频数据上进行了预训练。该模型被设计为一款广泛而均衡的多模态基础模型，支持定制化，能够对文本、图像和音频进行原生推理，并具备可控的思考深度。Inkling 并非全面最强的模型，但提供了高效的多模态能力，并可在 Tinker 平台上进行微调。

此次发布还包括 Inkling-Small（120 亿活跃参数）作为轻量级预览版。为展示定制化能力，Inkling 执行了一次自我微调循环：它自行编写训练目标，在 Tinker 上运行微调任务，并加载更新后的权重，从而成为一个避免使用字母“e”的漏字文模型。关键能力包括强大的智能体编码和工具使用，具体表现为一次成型的网页应用、连贯的多页面工件，以及经过 40 次迭代优化的多人贪吃蛇游戏。在 Design Arena 的智能体网页开发排行榜上，Inkling 在开源权重模型中名列前茅。该模型强调可控性、安全性和可信赖性，可作为多样化实际工作流程的实用基础。

---

## 2. 消息称Stripe与Advent联合出价收购PayPal

**原文标题**: Stripe and Advent have made a joint offer to acquire PayPal – sources

**原文链接**: [https://www.reuters.com/business/finance/stripe-advent-offer-buy-paypal-more-than-53-billion-sources-say-2026-07-15/](https://www.reuters.com/business/finance/stripe-advent-offer-buy-paypal-more-than-53-billion-sources-say-2026-07-15/)

**摘要：**

据路透社消息人士称，支付巨头Stripe与私募股权公司安宏资本已联合提出以超过530亿美元收购PayPal。若交易达成，将标志着数字支付领域的一次重大整合。目前估值逾700亿美元的Stripe将与PayPal庞大的商户及消费者网络合并，而安宏资本将提供大量股权支持。此次报价正值PayPal在新任CEO领导下寻求重振增长，同时Stripe也试图拓展其核心在线支付处理业务。然而，该收购面临重大监管障碍和执行风险，包括整合两大竞争性平台及其不同文化与技术。消息人士称谈判仍在进行中，仍可能破裂，PayPal尚未公开置评。潜在交易凸显了全球金融科技市场激烈的竞争与整合压力。

---

## 3. 《Duskers：恐怖命令行游戏》即将推出续作

**原文标题**: Duskers, the scary command line game, is getting a sequel

**原文链接**: [https://elbowgreasegames.substack.com/p/misfits-attic-announces-duskers-20](https://elbowgreasegames.substack.com/p/misfits-attic-announces-duskers-20)

**摘要：**

Misfits Attic 在PC游戏展上正式宣布了《Duskers 2.0》，该作由Max McGuire的新项目基金Stray Signal资助。这款备受赞誉、曾获奖项的2016年生存恐怖游戏的续作，通过一段引发热议的预告片首次亮相。

初代《Duskers》是一款紧张刺激、基于命令行界面的游戏，玩家利用无人机打捞废弃飞船，营造出深刻的孤立感。尽管备受好评，但有粉丝指出其“看似汪洋，实则仅三尺深”。《Duskers 2.0》旨在增加深度，将玩家的幻想从孤身拾荒者转变为“流浪救援者”。新的游戏循环将引入道德维度，要求玩家在生存与重建人类文明之间取得平衡，在核心的探索与生存机制基础上，加入殖民地管理与资源分配的伦理抉择。

此次资助源于Unknown Worlds（《深海迷航》联合创始人）的McGuire在EGG演示日上看到开发者Tim Keenan的展示。协议在两周内便已签署，McGuire还将参与代码库的工作。这一公告凸显了独立游戏社群中深厚的人脉关系，文章指出Keenan和McGuire都是2008年独立游戏复兴时期的资深人士，如今再次携手开辟自己的道路。

---

## 4. 在无GPU的13年老款至强处理器上，以每秒5个token的速度运行Gemma 4 26B模型

**原文标题**: Running Gemma 4 26B at 5 tokens/sec on a 13-year-old Xeon with no GPU

**原文链接**: [https://www.neomindlabs.com/2026/06/08/running-gemma-4-26b-at-5-tokens-sec-on-a-13-year-old-xeon-with-no-gpu/](https://www.neomindlabs.com/2026/06/08/running-gemma-4-26b-at-5-tokens-sec-on-a-13-year-old-xeon-with-no-gpu/)

**摘要：**

本文详细介绍了作者如何在13年前、价值300美元的HP StoreVirtual服务器（双路Xeon E5-2690 v2，无GPU，DDR3内存，仅支持AVX1）上，成功运行谷歌的Gemma 4（260亿参数MoE模型），速度约为5 tokens/秒。

**问题所在：** llama.cpp的优化分支（ik_llama.cpp）假定支持AVX2指令集。而作者的Ivy Bridge CPU仅支持AVX1，导致构建失败，更严重的是，在运行时出现静默错误——MoE融合操作未能通过调度器，导致每次前向传播中有240个张量未初始化，从而产生确定性的多语言乱码。

**解决方案（通过Claude与作者合作）：** 他们对代码进行了修补：
1. 修复了量化中标量回退仍引用AVX2辅助函数的问题。
2. 重写了图构建器，在`GGML_USE_IQK_MULMAT`关闭时，将融合的MoE操作拆分为独立的、无需AVX2的操作（例如`mul_mat_id` + `fused_mul_unary`）。
3. 修复了CI存根函数，允许在非AVX2硬件上进行构建。

**关键结果：**
- **解码速度：** ~5.2 tok/s（阅读速度）
- **提示评估：** ~16 tok/s
- **模型：** Gemma 4 26B-A4B Q8_0（未使用`--run-time-repack`标志）

作者认为，“擅长AI”意味着足够深入地理解模型以便修复它们，而不仅仅是支付订阅费用。该补丁已作为PR #2138提交至ik_llama.cpp仓库。

---

## 5. 数字时钟设计合集

**原文标题**: Collection of Digital Clock Designs

**原文链接**: [https://clocks.dev](https://clocks.dev)

**《数字时钟设计合集》概览（clocks.dev）**

网站"clocks.dev"是一个精心策划的展示画廊，汇集了用HTML、CSS和JavaScript创建的多种富有创意的浏览器端数字时钟设计。它作为开发者和设计师的参考或灵感来源，突显了网页时间显示在艺术与技术方面的各种可能性。

该合集收录了风格多样的时钟作品，从极简主义和复古未来主义主题，到复杂的动画设计，不一而足。每个时钟都配有实时预览，访客可以看到时间实时更新。网站通常强调简洁的代码、交互性和美学实验——例如模拟翻页钟、模拟数字混合钟，或采用独特配色方案与字体的时钟。

关键信息包括：所有时钟均为开源或易于查看代码；许多作品运用了现代CSS特性（如`@keyframes`动画或`backdrop-filter`）和JavaScript来实现实时更新。该网站是学习前端技术或寻找个人项目设计灵感的实用资源。它不销售时钟，而是免费提供一份创意数字计时界面的视觉索引。整体主题是实用功能（显示时间）与艺术性、代码驱动设计的融合。

---

## 6. Telegram 数据中心之谜（2022）

**原文标题**: Mysteries of Telegram Data Centers (2022)

**原文链接**: [https://dev.moe/en/3025](https://dev.moe/en/3025)

**摘要：**

Telegram运营五个数据中心（DC）：DC1（迈阿密）、DC2（阿姆斯特丹）、DC3（迈阿密）、DC4（阿姆斯特丹）和DC5（新加坡）。用户注册时根据手机号国家代码分配数据中心，且无法更改。DC5因频繁宕机而臭名昭著，影响了许多被分配至此的中国用户。

一个采用Web CDN方式的常见机器人错误地将DC2用户识别为DC4，且未发现DC2或DC3上有用户，从而引发猜测。本文澄清，DC2确实有许多用户（例如德国+49号码），但该机器人之所以失败，是因为DC2和DC3“借用”了DC4和DC1的CDN域名。准确的方法是通过文件/头像存储（方法二），该方法能正确识别DC2的用户分布。

然而，DC3目前实际上已空置。通过登录方式（方法一）对超过10000个号码进行的测试显示，没有新的DC3分配。现有的DC3用户似乎已被迁移至DC1，其新媒体数据也存储于DC1。因此，目前只有DC1、DC2、DC4和DC5接收新用户。本文还提供了希望选择特定数据中心的国家代码映射表。

---

## 7. Show HN：misa77 —— 一款解码速度比LZ4快2倍（且压缩率更优）的编解码器

**原文标题**: Show HN: misa77 - a codec that decodes 2x faster than LZ4 (at better ratios)

**原文链接**: [https://github.com/welcome-to-the-sunny-side/misa77](https://github.com/welcome-to-the-sunny-side/misa77)

**misa77 概述**

misa77 是一款基于 LZ 的新型压缩编解码器，专为“一次写入、多次读取”的工作负载设计，优先追求极高的单线程解压缩吞吐量，而非压缩速度。

**主要特性：**
- 解压缩速度比 LZ4 快达 2 倍（例如，在 Silesia 语料库级别 0 下，速度可达 5219 MB/s 对比 2505 MB/s）
- 压缩比适中（无熵编码后端；与高努力模式下的 LZ4 相当）
- 内存占用恒定：压缩时 ≤5 MB，解压缩时为 0 MB
- 以慢速压缩换取快速解压缩
- 更高的压缩努力实际上能提升解压缩速度

**性能：**
- 在大多数数据类型上，位于解压缩吞吐量与压缩比的帕累托前沿
- 在 11-12/12 个 Silesia 文件上解码速度快于 LZ4（高度不可压缩的数据除外）
- 与 ZXC、LZSSE、LZ4、Lizard 和 Snappy 相比具有竞争力

**技术细节：**
- 需要 C++20、CMake ≥3.20、小端 64 位系统
- 支持 x86-64（SSE2/AVX2 运行时检测）和 ARM64
- 两个压缩级别：级别 0（最快解码）和级别 1（更好压缩比）
- 实验性模式：自适应调优、参数优化以及“yolo”高努力模式
- 提供 CLI 工具用于压缩/解压缩/建议；提供 C++ 库 API
- 格式仍为 v0.x.y，可能发生变化；尚无为输入验证（计划 v0.3.0）

---

## 8. Voxatron

**原文标题**: Voxatron

**原文链接**: [https://www.lexaloffle.com/voxatron.php](https://www.lexaloffle.com/voxatron.php)

**Voxatron 概述**

Voxatron 是一款体素（3D方块）构建的梦幻主机与游戏合集，当前为Alpha v0.3.6版本。它包含竞技场射击与动作冒险卡带，并配备开发工具包，支持用户自行创作体素游戏、动画、角色、音乐及世界。

软件内置BBS卡带浏览器，可探索用户自制游戏，同时支持通过HTML5播放器分享作品。售价19.99美元，购买后免费获取所有未来更新。用户还可加购PICO-8（节省8美元，仅需6.99美元）或Picotron（节省8美元，仅需11.99美元）。页面提供登录、技术支持及社区资源。

---

## 9. 重视心理健康，以及沟通为何如此重要

**原文标题**: Prioritize mental health, and why communication is so important

**原文链接**: [https://ramones.dev/posts/mental-health/](https://ramones.dev/posts/mental-health/)

**摘要：**

作者描述了严重抑郁症如何影响其软件工程师职业生涯。起初对专业充满热情，却因反复在实习和工作中失去动力，导致两次被解雇。常见反馈包括沟通不畅、完成任务缓慢、工作质量低下——这些往往源于未加讨论便贸然开始任务、半途而废、忽视测试（后因依赖大语言模型而加剧）。

最初他归咎于雇主、同事和环境，但发现处境相似的同事表现正常，意识到问题出在自己身上。怀疑患有注意缺陷障碍（仍在诊断中），他承认缺乏自律和心理空间，时常感到力不从心，无法追踪职责。

经正式诊断为重度抑郁症后，他正服用药物（氟西汀、奥沙西泮）并靠救济金休养。关键一步是学会与家人、朋友及医疗提供者沟通——此前压抑的挫败感使病情恶化。

近期目标包括：通过完整规划任务来杜绝粗心错误；理解工作为何消磨动力以重拾对成果的自豪感；借助自律和支持性人际关系找到稳定。他预计治疗至少需要一年，并计划暂不从事软件开发，以免成为他人负担。核心信息强调：优先关注心理健康，坦诚沟通是克服个人与职业困境的关键。

---

## 10. 迈向无所不能的驾驭工具

**原文标题**: Towards a harness that can do anything

**原文链接**: [https://eardatasci.github.io/c/ambiance/index.html](https://eardatasci.github.io/c/ambiance/index.html)

**摘要：迈向万能工具带**

本文提出 **Ambiance**——一种以 Unix/Linux 环境为核心设计原则的 LLM 代理工具带。其关键洞见在于：LLM 已对 Unix（文件、目录、用户、日志与文本流）深度熟悉，因此基于这些概念构建工具带可最小化认知负载（即 token 消耗）并最大化透明度。

**优秀工具带的四项要求**：对代理直观易用、支持调试/自愈透明化、精简灵活、长期运行不易腐化。

**核心原则：**
- 以文本文件作为通用接口（LLM 擅长处理纯文本）。
- 将外部数据与系统组件映射到类似 FHS（文件系统层次标准）的结构中（例如，日志 → `/var`，工具 → `/bin`，代理 → `/home`）。
- 核心提示词保持极简，让 LLM 在运行时动态加载技能至上下文。
- 执行过程最大化确定性，同时允许 LLM 自主选择目标。

**Ambiance 架构：**
- 轻量级“内核”（事件总线）监控文件系统变化并有选择性地调用 LLM，消除低效的轮询心跳。
- 三个默认“用户”：**root**（系统维护）、**pai**（面向人类用户的代理）与 **librarian**（日志记录与评估）。
- 工具为模块化二进制文件，遵循“一事一精”原则且失败时清晰报错。
- 工具带在后台自动处理数据清理、日志记录与安全审查。

总体目标：为 LLM 提供其已理解的运行环境，使其能自主自愈、自我审计，并专注于高层次目标而非底层模板代码。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 2 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 3 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 4 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 5 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 6 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 7 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 8 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 9 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 10 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 11 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 12 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 13 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 14 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 15 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 16 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 17 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 18 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 19 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 20 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 21 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 22 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 23 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 24 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 25 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 26 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 27 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 28 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 29 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 30 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 31 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 32 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 33 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 34 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 35 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 36 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 37 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 38 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 39 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 40 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 41 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 42 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 43 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 44 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 45 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 46 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 47 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 48 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 49 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 50 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 51 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 52 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 53 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 54 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 55 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 56 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 57 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 58 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 59 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 60 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 61 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 62 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 63 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 64 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 65 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 66 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 67 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 68 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 69 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 70 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 71 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 72 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 73 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 74 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 75 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 76 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 77 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 78 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 79 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 80 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 81 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 82 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 83 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 84 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 85 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 86 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 87 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 88 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 89 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 90 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 91 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 92 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 93 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 94 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 95 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 96 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 97 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 98 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 99 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 100 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 101 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 102 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 103 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 104 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 105 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 106 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 107 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 108 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 109 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 110 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 111 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 112 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 113 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 114 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 115 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 116 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 117 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 118 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 119 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 120 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 121 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 122 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 123 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 124 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 125 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 126 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 127 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 128 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 129 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 130 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 131 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 132 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 133 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 134 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 135 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 136 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 137 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 138 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 139 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 140 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 141 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 142 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 143 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 144 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 145 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 146 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 147 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 148 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 149 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 150 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 151 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 152 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 153 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 154 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 155 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 156 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 157 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 158 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 159 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 160 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 161 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 162 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 163 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 164 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 165 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 166 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 167 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 168 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 169 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 170 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 171 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 172 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 173 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 174 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 175 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 176 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 177 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 178 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 179 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 180 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 181 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 182 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 183 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 184 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 185 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 186 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 187 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 188 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 189 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 190 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 191 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 192 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 193 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 194 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 195 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 196 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 197 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 198 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 199 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 200 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 201 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 202 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 203 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 204 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 205 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 206 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 207 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 208 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 209 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 210 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 211 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 212 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 213 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 214 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 215 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 216 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 217 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 218 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 219 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 220 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 221 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 222 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 223 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 224 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 225 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 226 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 227 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 228 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 229 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 230 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 231 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 232 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 233 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 234 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 235 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 236 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 237 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 238 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 239 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 240 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 241 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 242 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 243 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 244 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 245 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 246 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 247 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 248 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 249 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 250 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 251 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 252 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 253 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 254 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 255 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 256 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 257 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 258 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 259 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 260 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 261 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 262 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 263 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 264 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 265 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 266 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 267 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 268 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 269 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 270 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 271 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 272 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 273 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 274 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 275 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 276 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 277 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 278 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 279 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 280 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 281 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 282 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 283 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 284 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 285 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 286 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 287 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 288 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 289 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 290 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 291 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 292 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 293 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 294 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 295 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 296 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 297 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 298 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 299 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 300 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 301 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 302 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 303 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 304 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 305 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 306 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 307 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 308 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 309 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 310 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 311 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 312 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 313 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 314 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 315 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 316 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 317 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 318 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 319 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 320 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 321 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 322 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 323 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 324 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 325 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 326 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 327 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 328 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 329 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 330 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 331 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 332 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 333 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 334 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 335 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 336 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 337 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 338 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 339 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 340 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 341 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 342 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 343 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 344 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 345 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 346 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 347 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 348 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 349 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 350 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 351 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 352 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 353 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 354 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 355 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 356 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 357 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 358 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 359 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 360 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 361 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 362 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 363 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 364 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 365 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 366 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 367 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 368 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 369 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 370 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 371 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 372 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 373 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 374 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 375 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 376 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 377 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 378 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 379 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 380 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 381 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 382 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 383 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 384 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 385 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 386 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 387 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 388 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 389 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 390 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 391 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 392 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 393 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 394 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 395 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 396 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 397 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 398 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 399 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 400 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 401 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 402 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 403 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 404 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 405 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 406 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 407 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 408 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 409 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 410 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 411 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 412 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 413 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 414 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 415 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 416 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 417 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 418 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 419 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 420 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 421 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 422 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 423 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 424 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 425 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 426 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 427 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 428 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 429 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 430 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 431 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 432 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 433 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 434 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 435 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 436 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 437 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 438 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 439 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 440 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 441 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 442 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 443 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 444 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 445 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 446 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 447 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 448 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 449 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 450 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 451 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 452 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 453 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 454 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 455 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 456 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 457 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 458 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 459 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 460 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 461 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 462 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 463 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 464 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 465 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 466 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 467 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 468 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 469 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 470 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 471 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 472 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 473 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 474 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 475 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 476 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 477 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 478 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
