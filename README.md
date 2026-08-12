# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-12.md)

*最后自动更新时间: 2026-08-12 20:44:14*
## 1. DeepSeek V4 Pro 0813

**原文标题**: DeepSeek V4 Pro 0813

**原文链接**: [https://openrouter.ai/deepseek/deepseek-v4-pro-0813](https://openrouter.ai/deepseek/deepseek-v4-pro-0813)

无法访问该文章链接。

---

## 2. 泽德：德尔塔

**原文标题**: Zed: Delta

**原文链接**: [https://zed.dev/blog/introducing-delta](https://zed.dev/blog/introducing-delta)

Zed 宣布推出 Delta——一个供开发者与智能体协作编码并审查其工作的多人环境，现已进入私密测试阶段。Delta 基于 DeltaDB 构建，后者可在所有参与者之间实时复制对话和代码工作树。它与现有 git 仓库集成——每一次编辑和对话都被记录在两次提交之间，而队友看到的仍是一个正常的 git 仓库。

核心特性：
- **锚定在代码上的审查**：评论可附加到工作树中的任意代码行上，而不仅限于快照，并会随代码演进而保持更新。智能体也在线程中，用户可以直接让它解释或修复问题。
- **多人协作**：线程在共享之前保持私密；受邀队友以正式参与者身份加入，可以探索代码、实时评论或继续执行任务。每位参与者都拥有一份同步的本地代码副本。
- **云端与浏览器支持**：工作可以迁移到云端运行器，线程可通过链接分享。浏览器版本运行同一个 Rust 应用程序——编译为 WebAssembly 并通过 WebGL 渲染。
- **第三方工具集成**：Delta 可与 Claude Code 对接，让用户将终端会话同步到 Delta 线程中。
- **为智能体速度而生**：差异内容完整展开，对话记录保持完整，渲染与模型输出保持同步。对话被视为一份文档——用户可以将光标放在任意位置，对特定文本、步骤或思考块添加评论。

DeltaDB 最初设想直接内置于 Zed，但团队围绕它构建了一个新的应用程序，让数据库与客户端能够相互塑造。目前 Delta 仍将是主要客户端，而 DeltaDB 最终也会集成到 Zed 中。私密测试邀请已于今日开始发放，未来数周内将陆续发出更多名额。

---

## 3. Tailscale 将数据库损坏追溯至一个存在 16 年的 SQLite WAL 重置 Bug

**原文标题**: Tailscale Traces Database Corruption to 16y/o SQLite WAL-Reset Bug

**原文链接**: [https://tailscale.com/blog/sqlite-wal-reset-bug](https://tailscale.com/blog/sqlite-wal-reset-bug)

Tailscale 在六个月内经历了重复的数据库损坏事件，原因是 SQLite 中一个罕见的、存在了16年的 bug，即“WAL-Reset bug”。

Tailscale 的控制平面运行在分片的 SQLite 数据库上，采用单写入者设计，并使用备份管道每隔几分钟对数据库进行快照。从8月开始，备份中开始出现损坏，最终总计19起事件。每次损坏都需要停止控制平面分片进行修复，导致受影响的 tailnet 停机——设备无法连接、管理控制台访问丢失，部分元数据不得不重新输入。

这个 bug 阻碍了调查：没有相关的代码更改，事件之间没有共同因素，也无法通过合成方式复现。Tailscale 根据支持合同聘请了 SQLite 的开发者。他们部署了被动取证遥测，并构建了一个事务日志管道，从而发现了一个关键线索：一个事务提交的写入莫名其妙地对后续事务不可见——数据在无错误的情况下消失了。

SQLite 的开发者创建了一个用于虚拟文件系统层的调试工具（tmstmpvfs shim）。在下次损坏后，日志揭示了根本原因：检查点与写入事务之间的数据竞争。如果写入发生在检查点期间的特定时刻，检查点进程会认为页面已从 WAL 文件复制到主数据库，而实际上并没有，导致数据永久丢失并损坏数据库。这个 bug 至少存在了16年，因为它极为罕见。

SQLite 在 3.52.0 版本中发布了修复。然而，Tailscale 的部署触发了13个数据库中出现虚假的损坏警告，原因是另一个单独的 bug，涉及过期的表达式索引和文本到浮点数转换中的舍入变化。SQLite 撤回了 3.52.0，并发布了仅包含 WAL-Reset 修复的 3.51.3。Tailscale 通过将时间戳精度降低到整数秒解决了索引问题，SQLite 后来在 3.53.0 中增加了自修复索引功能。该修复最终成功部署到 Tailscale 的整个控制平面。

---

## 4. Qwen3.8-2.4T模型

**原文标题**: Qwen3.8-2.4T

**原文链接**: [https://huggingface.co/Qwen/Qwen3.8-2.4T-A95B](https://huggingface.co/Qwen/Qwen3.8-2.4T-A95B)

Qwen3.8-2.4T-A95B是Qwen团队推出的开放权重因果语言模型，提供Hugging Face Transformers格式，并兼容vLLM、SGLang、TokenSpeed和Qwen Cloud。它是Qwen3.8-Max的开放底层版本，后者额外支持视觉输入、非思考模式、100万上下文和内置工具。

该模型总参数为2.4T，激活参数为95B。架构：92层，隐藏大小8192，512个专家（含10个路由专家和1个共享专家），采用Gated DeltaNet和Gated Attention模块，支持MTP训练，词元嵌入维度为248,320（含填充）。原生上下文长度为262,144个词元，可扩展至约1,010,000个词元。

主要改进涵盖编程、专业工作、研究和长周期智能体执行。基准测试亮点：Terminal Bench 2.1得分86.6，SWE-bench Pro 67.7，PaperBench 93.0，GPQA Diamond 92.6，HLE 43.6，并在智能体和长上下文任务上表现优异。

该模型仅支持文本输入，且需使用思考模式；每次回复在最终答案前都会包含`<think>...</think>`推理过程。推荐采样参数：temperature=1.0，top_p=0.95，top_k=20。支持`reasoning_effort`级别（xhigh、medium、low）和`preserve_thinking`（默认启用）。最佳实践建议：推理阶段最多使用262,144个词元，最终回复最多使用131,072个词元。

部署选项包括SGLang、vLLM和TokenSpeed，并提供兼容OpenAI的Chat Completions API代码示例。模型卡片还包含详细的基准测试脚注、引用信息和模型统计。

---

## 5. 2026年日食网络摄像头

**原文标题**: 2026 Eclipse Webcams

**原文链接**: [https://jonty.github.io/2026_eclipse_webcams/](https://jonty.github.io/2026_eclipse_webcams/)

这篇文章是一个极简的占位风格页面，标题为“2026年日食网络摄像头”，聚焦于2026年即将到来的日全食。页面显示将提供实时网络摄像头直播，并配有倒计时器追踪两个关键时刻：全食开始时以及日食首次到达首个网络摄像头时。内容包含一个日食表情符号，并署名“jonty”，可能是创作者或开发者。总体而言，这是一个简单的信息枢纽，旨在营造期待感并为这一天文事件提供实时观看渠道。

---

## 6. AmigaDOS开发者蒂姆·金去世

**原文标题**: Tim King, AmigaDOS developer, has died

**原文链接**: [https://amiga-news.de/en/news/AN-2026-08-00070-EN.html](https://amiga-news.de/en/news/AN-2026-08-00070-EN.html)

AmigaDOS的关键开发者Tim King博士于7月底去世，其家人已证实。King曾在剑桥大学学习计算机科学，并于1979年获得博士学位。学生时代，他开发了Tripos操作系统，这是一个用BCPL编写的抢占式多任务系统。1984年，他加入MetaComCo，并带去了Tripos。该系统在那里得到进一步发展，并作为AmigaDOS集成到Amiga的操作系统中。离开MetaComCo后，King于1986年创立了Perihelion，专注于操作系统、并行处理和transputer技术。他后来创办了互联网服务提供商UK Online。文章指出，King对Amiga历史做出了重大贡献。

---

## 7. 有人正在大规模扫描漏洞，冒充ClaudeBot等AI机器人。

**原文标题**: Someone is running mass vulnerability scans, spoofing AI bots like ClaudeBot

**原文链接**: [https://knownagents.com/insights](https://knownagents.com/insights)

这篇文章介绍了一份“智能体网络指数”报告，追踪AI智能体和机器人如何重塑超过5,000个网站的网络流量。

关键指标：机器人访问占35%，较此前90天下降2%。在机器人流量中，28%与AI相关，上升11%。人类访问中仅有0.1%来自AI聊天推荐，下降9%。robots.txt规则的遵循率为98.5%。

大部分流量来自搜索引擎爬虫（22.8%）、SEO爬虫（19.7%）、AI搜索爬虫（12.4%）、开发者助手（11%）和AI数据抓取器（10.9%）。最活跃的单个机器人包括Bingbot、Googlebot、AhrefsBot、ChatGPT-User和ClaudeBot。

AI数据抓取活动以ClaudeBot（Anthropic）为主，占27%，其次是meta-externalagent（19.5%）、Amazonbot（19.2%）、GPTBot（9.4%）和Bytespider（7.3%）。这些抓取器最常针对法律/政府、在线社区以及家居/园艺类网站。

AI获取（即面向助手和编码智能体的实时内容检索）由ChatGPT-User（OpenAI）以86.4%的占比遥遥领先，DuckAssistBot、Perplexity-User和Claude-User远远落后。获取最多的类别包括参考、科学和金融。

AI搜索索引以PetalBot（华为）为首，占25.4%，其次是Amzn-SearchBot（17.3%）、Applebot（16.7%）、OAI-SearchBot（11.9%）和meta-webindexer（10.8%）。索引最多的类别是旅游、参考和健康。

自主AI智能体平均每次会话约一分钟，浏览7.6个页面。总体而言，数据显示AI驱动的机器人活动快速增长，少数大型AI公司占据了绝大部分的抓取、获取和索引行为。

---

## 8. 基于WebSocket的HTML：几乎无需JavaScript的实时SPA

**原文标题**: HTML over WebSockets: real-time SPAs with barely any JavaScript

**原文链接**: [https://en.andros.dev/blog/ef4968f5/html-over-websockets-real-time-spas-with-barely-any-javascript/](https://en.andros.dev/blog/ef4968f5/html-over-websockets-real-time-spas-with-barely-any-javascript/)

这篇文章解释了**基于WebSocket的HTML**，作为传统依赖大量JavaScript的单页应用（SPA）的一种替代方案。不同于从API发送JSON并在浏览器中渲染，服务器通过持久的WebSocket连接发送完整组装好的HTML，客户端只需将其放入DOM中即可。这样将所有渲染逻辑保留在一种后端语言中，无需单独的API、契约或客户端框架。

这一模式由**Phoenix LiveView**（Elixir）于2019年推广开来，此后也启发了其他语言的实现。

**工作原理：** 客户端打开一个WebSocket连接并完成一次认证。然后发送简单的文本消息，比如“我想访问 /article/2/”。服务器查询数据库，用其模板引擎渲染HTML，并将准备好的HTML发送回来。服务器还可以在客户端未请求的情况下主动推送更新，从而实现实时广播功能。

**优点：**
- 单一渲染引擎，降低复杂度
- 无需API/JSON中间层
- 服务器端为每个客户端维护状态
- 实时的双向通信
- 内置广播功能，适用于聊天、仪表盘
- 每次操作的流量和延迟更少
- 极少的JavaScript
- 更好的初始SEO和XSS防护

**缺点：**
- 占用更多服务器资源（保持WebSocket连接、状态内存）
- 水平扩展需要共享状态基础设施（如Redis）
- 不支持离线使用
- 学习曲线较陡

文章还将**SSE**作为服务器到客户端推送的更廉价、单向的替代方案进行了对比，而WebSocket更适合需要双向低延迟交互的场景。

文中提到的**框架**包括Phoenix LiveView、Hotwire、Django LiveView、Blazor、Livewire、htmx和Datastar。核心要点是：发送HTML而不是JSON，坚持使用一种语言，并根据具体需求选择合适的传输方式。

---

## 9. 为什么Chrome浏览器中微小JPEG图片看起来不同

**原文标题**: Why Tiny JPEGs Look Different in Chrome

**原文链接**: [https://guillaumetech.github.io/posts/jpg-scaling-chrome/](https://guillaumetech.github.io/posts/jpg-scaling-chrome/)

由于解码优化，Chrome 在渲染极小的 JPEG 图像时，可能会比其他浏览器略显更粗或更柔。当图像显示得非常小时，Chrome/Skia 会使用 libjpeg-turbo 的部分 IDCT 缩放：它不会完全解压 JPEG 后再进行缩放，而是仅解码生成粗糙版本所需的低频系数——通常采用最接近分母为 8 的分数的缩放比例——然后用常规算法完成缩放。这样会跳过那些反正大部分都会消失的高频细节，从而节省内存和 CPU。

文章解释称，JPEG 将图像分割成 8×8 的块，并使用 DCT 存储频率系数。低频代表平坦的颜色和光滑的渐变；高频代表细微的边缘和细节。当大幅缩小时，大多数高频信息在视觉上都无关紧要，因此跳过它们是高效的。然而，由于该优化会丢弃部分边缘锐化和渐变数据，与先完全解码的浏览器相比，最终的小图可能会略有不同——更粗或更不忠实。

作者注意到，一个以 15px 渲染的 Logo 在 Chrome 中与在 Firefox 中看起来不同，换成 SVG 后问题得到解决。关键要点：JPEG 是为摄影图像设计的，不适合图标或小型 UI 元素。对于此类情况，请使用 SVG 或其他更适合清晰、可缩放渲染的格式。

---

## 10. 气候仪表板上的冰川

**原文标题**: Glaciers on the Climate Dashboard

**原文链接**: [https://climate.metoffice.cloud/glaciers.html](https://climate.metoffice.cloud/glaciers.html)

冰川由压实积雪形成，可向下流动，并在低海拔处或与海洋交汇处融化。它们是重要的淡水储备，其融水支撑着旱季供水，但冰川损失会导致海平面上升，影响沿海社区。

冰损失与积雪积累之间的物质平衡决定了冰川如何变化。融化使冰川末端退缩到更高、更冷的海拔；降雪增加则使其前进。冰川还对温度、降水类型、云量以及（对潮水冰川而言）较温暖的海水作出响应。由于存在数千条冰川，无法对所有冰川进行详细测量；世界冰川监测服务处追踪分布在19个山区的参考冰川。这些冰川自20世纪80年代末以来一直处于负物质平衡状态——即持续缩小——自1976年以来的累计损失相当于约20米水当量（一种经密度调整的度量）。

物质平衡通过花杆、雪坑、探针和裂隙层进行测量，而卫星雷达、光学传感器以及GRACE等重力任务则监测高度、形状和大尺度冰变化。每条冰川都有独特的地方条件，但IPCC第五次评估报告以高置信度得出结论：自20世纪60年代以来观测到的大部分冰川质量损失很可能归因于人类影响。

该页面还展示了Zemp等人给出的全球冰川物质平衡估算，以及来自CSIRO、AVISO、CMEMS、科罗拉多大学和NASA的基于卫星的全球平均海平面记录，这些记录在年际变化和长期上升方面高度一致。文中还提供了数据链接和来源，包括WGMS公报和科学论文。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 2 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 3 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 4 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 5 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 6 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 7 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 8 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 9 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 10 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 11 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 12 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 13 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 14 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 15 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 16 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 17 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 18 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 19 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 20 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 21 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 22 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 23 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 24 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 25 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 26 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 27 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 28 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 29 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 30 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 31 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 32 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 33 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 34 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 35 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 36 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 37 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 38 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 39 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 40 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 41 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 42 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 43 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 44 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 45 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 46 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 47 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 48 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 49 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 50 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 51 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 52 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 53 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 54 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 55 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 56 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 57 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 58 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 59 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 60 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 61 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 62 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 63 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 64 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 65 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 66 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 67 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 68 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 69 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 70 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 71 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 72 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 73 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 74 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 75 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 76 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 77 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 78 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 79 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 80 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 81 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 82 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 83 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 84 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 85 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 86 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 87 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 88 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 89 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 90 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 91 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 92 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 93 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 94 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 95 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 96 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 97 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 98 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 99 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 100 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 101 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 102 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 103 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 104 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 105 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 106 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 107 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 108 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 109 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 110 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 111 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 112 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 113 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 114 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 115 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 116 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 117 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 118 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 119 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 120 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 121 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 122 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 123 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 124 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 125 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 126 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 127 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 128 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 129 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 130 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 131 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 132 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 133 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 134 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 135 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 136 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 137 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 138 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 139 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 140 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 141 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 142 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 143 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 144 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 145 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 146 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 147 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 148 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 149 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 150 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 151 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 152 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 153 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 154 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 155 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 156 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 157 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 158 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 159 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 160 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 161 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 162 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 163 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 164 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 165 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 166 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 167 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 168 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 169 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 170 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 171 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 172 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 173 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 174 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 175 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 176 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 177 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 178 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 179 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 180 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 181 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 182 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 183 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 184 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 185 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 186 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 187 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 188 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 189 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 190 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 191 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 192 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 193 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 194 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 195 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 196 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 197 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 198 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 199 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 200 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 201 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 202 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 203 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 204 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 205 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 206 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 207 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 208 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 209 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 210 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 211 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 212 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 213 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 214 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 215 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 216 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 217 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 218 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 219 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 220 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 221 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 222 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 223 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 224 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 225 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 226 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 227 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 228 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 229 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 230 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 231 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 232 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 233 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 234 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 235 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 236 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 237 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 238 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 239 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 240 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 241 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 242 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 243 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 244 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 245 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 246 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 247 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 248 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 249 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 250 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 251 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 252 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 253 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 254 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 255 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 256 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 257 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 258 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 259 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 260 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 261 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 262 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 263 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 264 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 265 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 266 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 267 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 268 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 269 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 270 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 271 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 272 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 273 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 274 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 275 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 276 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 277 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 278 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 279 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 280 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 281 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 282 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 283 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 284 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 285 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 286 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 287 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 288 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 289 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 290 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 291 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 292 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 293 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 294 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 295 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 296 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 297 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 298 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 299 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 300 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 301 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 302 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 303 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 304 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 305 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 306 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 307 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 308 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 309 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 310 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 311 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 312 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 313 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 314 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 315 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 316 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 317 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 318 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 319 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 320 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 321 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 322 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 323 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 324 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 325 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 326 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 327 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 328 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 329 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 330 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 331 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 332 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 333 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 334 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 335 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 336 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 337 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 338 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 339 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 340 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 341 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 342 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 343 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 344 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 345 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 346 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 347 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 348 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 349 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 350 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 351 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 352 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 353 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 354 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 355 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 356 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 357 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 358 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 359 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 360 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 361 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 362 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 363 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 364 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 365 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 366 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 367 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 368 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 369 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 370 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 371 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 372 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 373 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 374 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 375 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 376 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 377 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 378 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 379 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 380 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 381 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 382 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 383 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 384 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 385 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 386 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 387 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 388 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 389 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 390 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 391 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 392 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 393 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 394 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 395 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 396 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 397 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 398 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 399 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 400 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 401 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 402 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 403 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 404 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 405 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 406 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 407 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 408 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 409 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 410 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 411 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 412 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 413 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 414 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 415 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 416 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 417 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 418 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 419 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 420 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 421 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 422 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 423 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 424 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 425 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 426 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 427 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 428 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 429 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 430 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 431 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 432 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 433 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 434 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 435 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 436 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 437 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 438 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 439 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 440 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 441 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 442 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 443 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 444 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 445 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 446 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 447 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 448 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 449 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 450 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 451 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 452 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 453 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 454 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 455 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 456 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 457 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 458 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 459 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 460 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 461 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 462 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 463 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 464 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 465 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 466 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 467 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 468 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 469 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 470 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 471 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 472 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 473 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 474 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 475 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 476 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 477 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 478 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 479 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 480 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 481 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 482 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 483 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 484 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 485 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 486 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 487 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 488 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 489 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 490 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 491 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 492 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 493 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 494 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 495 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 496 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 497 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 498 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 499 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 500 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 501 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 502 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 503 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 504 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 505 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 506 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
