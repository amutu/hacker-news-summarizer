# Hacker News 热门文章摘要 (2026-07-25)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 现代MUD的案例（2018）

**原文标题**: The case for MUDs in modern times (2018)

**原文链接**: [https://www.andrewzigler.com/feed/the-case-for-muds-in-modern-times](https://www.andrewzigler.com/feed/the-case-for-muds-in-modern-times)

以下是所提供文章的简要摘要：

本文论证了即使在图形丰富游戏主导的时代，MUD（多用户地牢/维度/领域）——基于文本的虚拟世界——依然具有持久的相关性。它解释了MUD完全由文本驱动，玩家通过书面描述导航“房间”，并通过输入“拿剑”或“查看宝石”等命令进行互动。

其关键吸引力在于实时、不断变化的模拟。这些系统可以模拟时间、天气、经济和非玩家角色行为，创造沉浸式且相互关联的环境。MUD种类繁多，从自动化桌面角色扮演规则的直接“砍杀”游戏，到玩家共同编写故事的完全自由形式的角色扮演空间。

文章通过“远程呈现”的视角来框架这种体验，引用学者赖因戈尔德和图尔克勒的描述，说明MUD如何仅通过文本创造强烈的存在感、社交丰富性和沉浸感。这使得它们对视觉障碍玩家特别友好，他们可以使用屏幕阅读器像正常视力用户一样有效游玩。

MUD的一个主要优势是创作门槛低。与图形游戏（资产如模型、特效有不同开发成本）不同，构建一个MUD只需要文字，使其成为一种纯粹的创造行为（“诗学”），仅受限于开发者的想象力。

然而，文章承认了重大挑战。在2018年启动一个MUD很困难；许多代码库老旧且复杂。开发一个质量游戏可能需要数月或数年，而形成的小众社区往往迅速出现又消失，有时甚至会丢失所有内容。它向现代开发者推荐Ranvier引擎（用JavaScript构建），并向玩家推荐Top Mud Sites等列表网站。

最终，文章认为，直到图形技术能够超越人类想象力，MUD将通过专注于深度、富有自主性的体验而持续存在。它邀请读者探索这一持久的媒介。

---

## 2. 如何编写一个Quine

**原文标题**: How to Write a Quine

**原文链接**: [https://czterycztery.pl/slowo/quine-EN.html](https://czterycztery.pl/slowo/quine-EN.html)

本文介绍了如何编写一个自产生程序（quine）——即无需内省即可打印自身源代码的程序。文章分为两部分：一则用于构建直觉的寓言，以及一个具体的Python实现。

**自我复制机器的寓言**  
想象一台能够根据蓝图制造任何物体的机器。为了在不使用内省的情况下制造自身的副本，你可以修改这台机器，使其在制造子机器后，复制蓝图并将该副本插入子机器的蓝图架中。这样一来，子机器获得了完整的蓝图（包括复制指令），从而成为精确的复制品。这对应了自产生程序的结构：程序必须生成一个字符串，当该字符串被执行时，能够再现原始程序。

**用Python编写自产生程序**  
1. 从一个打印其他程序源代码的程序开始：`print('print()')`。这好比一台制造机器（空蓝图架）的机器。  
2. 将字符串创建和打印分离：`string='print(here)'; print(string)`。然后修改它，通过切片和`repr`在`here`处插入字符串的副本：  
   `string='string=here; print(string)'; string=string[:7] + repr(string) + string[11:]; print(string)`。  
3. 更新字符串字面量以匹配新程序：  
   `string='string=here; string=string[:7] + repr(string) + string[11:]; print(string)'; string=string[:7] + repr(string) + string[11:]; print(string)`。  
此方法之所以有效，是因为`repr`添加了引号和转义，而切片避免了`replace`的陷阱（后者会将替换命令内部的`here`一词也一并替换）。

**方法总结**  
- 编写一个程序，该程序创建并打印另一个程序的源代码，而这个被打印的程序本身也能打印某些内容。  
- 在创建与打印之间，插入代码，将程序文本的字面量放入占位符中。  
- 由于程序发生了变化，相应地更新字符串字面量。  

文章还指出，如果占位符出现多次，使用`replace`可能会失败，并建议采用`'HERE'.lower()`或`'ereh'[::-1]`等变通方法。最终的自产生程序之所以能够工作，正是因为它精确地将自身源代码构建为字符串并输出。

---

## 3. Buz – 使用现代Zig的Bun分支，具有亚秒级增量构建

**原文标题**: Buz – A fork of Bun using modern Zig, with sub-1s incremental builds

**原文链接**: [https://ziggit.dev/t/buz-a-drop-in-replacement-for-bun-using-modern-zig-with-sub-1s-incremental-builds/16891](https://ziggit.dev/t/buz-a-drop-in-replacement-for-bun-using-modern-zig-with-sub-1s-incremental-builds/16891)

**《“Buz——一个使用现代Zig的Bun分支”摘要》**

Buz是Bun的一个正在开发中的分支，基于Bun重写为Rust之前的最后一个提交。作者将整个项目（包括内联的JavaScriptCore源码）移植为使用现代上游Zig构建，并采用略微修补过的Zig主版本以实现增量重建。这使得增量构建时间低于1秒，大幅改善了开发循环。

目标是成为Bun的即插即用替代品，拥有更清晰、更易于维护的代码库。为此，作者从Rust版Bun导入了所有新测试，并删除了超过11000行死代码——认为Bun原始代码库异常疏于维护。多个子系统已使用地道Zig和标准库重写，在此过程中修复了无数错误。

作者明确表示大量使用AI/LLM，将Bun的代码描述为“典型的AI垃圾”，并指出任何人都不应该去梳理那约60万行混乱的代码。因此，**在项目被认为足够合理之前，将不接受任何人工编写的贡献**，而要使项目合理很可能需要重写大部分子系统。LLM将被广泛使用，但会有人类监督，重点在于减少技术债务并编写地道的Zig。中期目标是在几周或几个月内成为Rust版Bun 1.4.0的即插即用替代品。

作者注意到Ziggit上有一个类似项目，发帖以避免重复，尽管他们尚未查看该项目。他们欢迎指出Bun代码库中特别糟糕的部分，并将此项目视为提升自身Zig技能的一种方式，希望最终能在没有LLM帮助的情况下变得可维护。

---

## 4. 小而真实、原始的网络

**原文标题**: The small, real, original web

**原文链接**: [https://spacetimetech.wordpress.com/2026/07/19/the-small-real-original-web/](https://spacetimetech.wordpress.com/2026/07/19/the-small-real-original-web/)

## 摘要：“小而真实、原始的互联网”

这篇2026年7月的博文倡导独立、小众、慢速的网络——即20世纪90年代和21世纪初的非企业化互联网——并主张尽管AI炒作和企业主导盛行，它依然蓬勃发展。作者强调，网络建立在草根工具（Usenet、FTP、论坛、邮件列表）之上，而非利润。

### 关键资源与工具
- **浏览器**：推荐Firefox、Waterfox、Vivaldi、Zen或TOR；因CEO争议建议避免使用Brave和Mullvad VPN。
- **最佳资源**：32bit.cafe上的“个人网络资源清单”，涵盖网站管理指南、RSS、网络托管商（如Neocities）、网络环以及大型科技公司的独立替代品（如Kagi、wiby、Marginalia搜索）。
- **其他工具**：Teclis搜索（融合Kagi与Marginalia）、wiby.me/surprise（随机个人网站）、theforest.link（随机目录链接）、openmentions.com（Webmention/ActivityPub标签）、Raw Web搜索、低技术太阳能网络杂志、朋克网络环。

### Fediverse与去中心化服务
Mastodon、PeerTube（通过Sepia Search、fedi.video、Spectra实例搜索）、Lemmy（如lemmy.world、lemmy.today）。推荐Stefan的“加入Fediverse”网站。

### 个人网站与博客
作者运营deadscorpionranch.com、Mr. Beamer’s Old Timey Web Portal和一个Bear博客；使用Porkbun管理域名，Neocities托管网站。鼓励创建“数字花园”或“数字车库”，并附上博客列表以提高可发现性。提及喜爱的博客（如Arcade Blogger）以及类似Junited（2024年启动的六月博客挑战）的活动。

### RSS与协议
称RSS为“网络上最重要的事物之一”；推荐gReader搭配Feedly。提及Gemini和Gopher协议作为替代性小型网络协议。

### 核心信息
原始、由人创造的网络早于企业议程，并将比它们更持久。本文是一份使用现代工具和网络重新找回这种精神的实用指南。

---

## 5. 我通过黑客手段进入了YC创业学校

**原文标题**: I got into YC Startup School by hacking it

**原文链接**: [https://obaid.wtf/jotbook/2026/07/18/how-i-got-into-yc-by-hacking-it.html](https://obaid.wtf/jotbook/2026/07/18/how-i-got-into-yc-by-hacking-it.html)

作者讲述了自己是如何利用**Paxel**（一个用于评估申请者的代码分析工具）的安全漏洞，攻破了Y Combinator的创业学校申请流程。Paxel通过LLM分析开发者的工作，从五个维度（执行力、引导能力、工程质量、产品思维、规划能力）进行评分，并将分数上传至YC的服务器。

该漏洞在于：系统使用nonce验证LLM结果，但**未对实际分数和备注进行HMAC签名**。这意味着任何人都可以拦截并修改任何阶段的数据——提高分数或更改反馈——而YC会照单全收。作者构建了一个名为**boosted-paxel**的工具，允许用户伪造分数；在补丁发布前，超过20名用户将自己排名为前1%。

作者先通过邮件私下披露了此问题（未获回复），随后公开披露。几小时内，YC的Jared Friedman回复，**宣布已打补丁**（为所有LLM输出添加HMAC签名），并邀请作者前往旧金山参加创业学校。作者还建议增加可选的第二层防护：对从未展示给客户端的字段（分数、备注、标题）进行加密，以实现完全隐匿。

文章称赞了Paxel出色的用户体验（单条cURL命令），并质疑该漏洞是否是有意为之的彩蛋——最终根据修复方式判断并非如此。补丁发布后，作者的工具现在仅显示原始分数。作者在结尾邀请潜在联合创始人在旧金山创业学校活动期间联系。

---

## 6. 自建邮件服务器

**原文标题**: Self-host your mail server

**原文链接**: [https://blog.haschek.at/2026/you-should-selfhost-your-mail.html](https://blog.haschek.at/2026/you-should-selfhost-your-mail.html)

本文认为，在2026年自托管电子邮件服务器不仅可行，而且实用，反驳了应避免这一做法的普遍建议。作者运营着一家帮助客户摆脱谷歌和微软的MSP公司，并提供了完整指南。

**家庭托管的关键前提条件：**
- 静态IPv4地址（未被列入黑名单）
- 不在运营商级NAT（CGNAT）之后
- 能够设置PTR记录（通过ISP）
- 开放端口25、143、465、587、993
- 短期中断（一天内少于40%）没问题，因为邮件有重试机制

**软件选择：**
- **docker-mailserver**（推荐入门）
- **Stalwart、Mailcow**或手动搭建（如ISPConfig）

**必要的DNS记录：**
- **SPF** – 定义授权发送方
- **DKIM** – 邮件头中的加密签名
- **DMARC** – 防止伪造
- **MX** – 指向邮件服务器主机名
- **PTR** – 与主机名匹配的反向DNS

**垃圾邮件解决方案——关键突破：**
传统反垃圾邮件技术（黑名单、关键词过滤）效果不佳。作者使用**rspamd**配合**GPT插件**，该插件采用本地大语言模型（如**Gemma 4 12B QAT**，约7GB内存）。LLM对每封邮件进行概率评分并给出推理。示例配置展示了如何将rspamd连接到本地llama.cpp服务器，利用收件人历史记录实现上下文感知的垃圾邮件检测。

**邮件客户端：**
- 桌面端：**Thunderbird**（开源、搜索功能好、有安卓应用）
- 网页邮件：**MailFlow、Kurrier、SnappyMail、Roundcube**

**维护：**
现代解决方案（如docker-mailserver）支持自动更新。备份至关重要，至少测试一次恢复。

**结论：**
自托管电子邮件运行良好，即使在家也能实现，并且鼓励为了数据主权而采用。文章提供了测试工具（mail-tester.com），并邀请通过SSH发表评论。

---

## 7. 防止<code>元素中的换行

**原文标题**: Preventing line breaks in <code> elements

**原文链接**: [https://alexwlchan.net/2026/non-breaking-code/](https://alexwlchan.net/2026/non-breaking-code/)

文章介绍了作者在其网站上实施的一项排版改进，旨在防止`<code>`元素内出现不合理的换行。此前，作者在正文中使用不间断空格和连字符来避免“5 cm”或“New‑York”等短语被分割到两行。在审阅一篇包含大量内联代码片段的博文时，作者发现了一些无益的换行——例如，`(?-u:…)`被拆分为`(?-`和`u:…)`，以及`--multiline`在第一个连字符后断开。这种换行影响可读性，而对于简短的代码片段毫无益处。

作者曾考虑在`<code>`中使用不间断连字符，但否定了该方案，因为用户复制粘贴代码时可能会改变原意。于是，作者编写了一个Python函数，利用正则表达式查找包含1到15个字符的`<code>`元素（此为任意限制；较长的代码片段仍应换行，以避免过多空白）。如果代码片段包含连字符或空格，该函数会为该元素添加一个`nowrap` CSS类。相应的CSS规则设置`text-wrap: nowrap;`，以防止浏览器在这些字符处换行。

要点：
- 作者在正文中添加不间断字符以优化排版。
- 内联代码片段在连字符处存在不佳换行问题。
- 在代码中使用不间断连字符可能破坏复制后的文本。
- 解决方案：通过编程检测包含换行字符的短`<code>`元素，并应用`nowrap`类。
- 这一改动虽小，却让网站体验更佳。

---

## 8. 面向正确性的前端框架：基于Effect，架构如Elm

**原文标题**: The front end framework for correctness: built on Effect, architected like Elm

**原文链接**: [https://foldkit.dev/](https://foldkit.dev/)

本文介绍了 **Foldkit**，一个基于 **Effect** 构建、架构上类似 **Elm**（Elm 架构）的前端框架。它通过单一不可变模型、纯更新函数以及将副作用建模为值（命令）而非命令式调用来优先保证**正确性**。这种结构使得应用在扩展时复杂度保持线性增长。

**核心特性：**
- **可预测的状态** – 所有状态集中在单一模型中；每次变更都通过 `update` 流转。
- **显式的副作用** – 副作用以类型化命令（如使用 `Effect.sleep` 实现的 `DelayReset`）的形式返回。
- **基于 Effect** – 应用本身就是 Effect；状态使用 Schema；错误通过 Effect 建模。
- **开箱即用** – 路由（类型安全、双向）、无障碍 UI 组件（对话框、菜单、标签页）、子模型、订阅、资源管理（WebSocket、AudioContext）、字段验证，以及两个测试原语（用于状态机的 `Story` 和用于视图驱动测试的 `Scene`）。
- **开发者工具** – 实时消息/模型检查、时间旅行，以及供 AI 代理连接和操作状态的 MCP（模型上下文协议）。
- **嵌入** – 通过 `Runtime.embed` 在现有应用中运行 Foldkit 部件，并支持类型化端口。

**目标受众：** Effect 用户、重视正确性的团队、有复杂状态（认证、实时、多步骤表单）的项目。

**权衡：** 需要思维转换（无组件/钩子、无本地状态）；不支持渐进式采用（需要重写）；需要完整的 Effect 生态系统；仅限客户端 SPA（不支持 SSR）。

本文包含实时代码演示以及相关资源链接（在线沙盒、GitHub、更新日志）。

---

## 9. 制作GIF的最难方式

**原文标题**: The hardest way to make a GIF

**原文链接**: [https://blog.willgrant.org/2026/07/23/the-hardest-way-to-make-gif.html](https://blog.willgrant.org/2026/07/23/the-hardest-way-to-make-gif.html)

本文介绍了一种刻意繁琐的方法，通过老式模拟摄影制作GIF。作者的目标是将现实世界中持续1秒的动作，通过手工的家庭制作流程转化为循环动画图像，以此赞颂“用困难方式做事”的无用乐趣。

**第一步：获取光子**——使用一台Lomo ActionSampler塑料相机（35多年前的设计），其发条机制带动快门以约1/250秒每帧的速度旋转，覆盖四个镜头，在36张装Lucky SHD 400黑白胶片上每秒拍摄4帧。

**第二步：冲洗胶片**——作者在家中使用显影罐、卷片轴、Ilford Ilfosol 3显影液、Ilford Rapidfix定影液、暗袋及相关配件冲洗胶片。尽管技术不高，胶片成功显影，得到每帧包含四张图像的胶片条。

**第三步：扫描图像**——由于没有胶片扫描仪，每帧被固定在LED灯板上，用三脚架上的数码相机拍摄（RAW格式以便调整曝光）。RAW文件在Affinity软件中反相并调整曝光。

**第四步：裁剪帧**——由于塑料相机的对准不精确，四个子帧需在Affinity中手动裁剪并作为图层对齐（使用50%透明度作为洋葱皮技术）。生成的帧导出为编号PNG文件。

**第五步：对齐帧并制作GIF**——使用ImageMagick，作者通过命令`magick -delay 25 -loop 0 1.png 2.png 3.png 4.png 3.png 2.png animated.gif`创建“乒乓”动画（帧序1-2-3-4-3-2），每帧延迟25/100秒（即4fps）。为获得更平滑运动，通过混合命令将连续帧各以50%透明度叠加生成中间帧。

最终产物是一个从现实世界35mm胶片提取的、以4fps循环播放的GIF动画。作者幽默地暗示下一个项目将使用IMAX胶片。

---

## 10. 《如此明亮的愿景》（1956年）——一个关于机器代替人类写作的故事 [pdf]

**原文标题**: So Bright the Vision (1956) – a story about machines writing instead of humans [pdf]

**原文链接**: [https://s3.us-west-1.wasabisys.com/luminist/EB/S/Simak%20-%20So%20Bright%20the%20Vision.pdf](https://s3.us-west-1.wasabisys.com/luminist/EB/S/Simak%20-%20So%20Bright%20the%20Vision.pdf)

根据提供的PDF元数据和标题《如此明亮的前景（1956）——一个关于机器代替人类写作的故事》，这篇文章似乎是一篇探讨机器接管写作任务的未来的短篇小说或评论文章。PDF包含扫描图像数据（可能来自旧出版物）和有限的可读文本片段，但由于二进制编码，无法提取完整叙事。然而，标题和上下文暗示了以下要点：

- 故事设想了一个自动化机器创作文学作品、取代人类作者的世界。  
- 可能探讨了创造力、真实性以及人类作家在社会中的角色所受到的影响。  
- 发表于1956年，早于现代人工智能，反映了对技术取代人类智力劳动的早期担忧。  
- 语气可能是推测性的、警示性的或讽刺性的，质疑机器生成的写作是否能捕捉真正的远见或情感。

由于缺乏清晰的文本，无法做出精确总结，但核心主题是人类艺术性与机器写作效率之间的张力。

---

## 11. 使用Rust表达式插件扩展Polars

**原文标题**: Extending Polars with Rust Expression Plugins

**原文链接**: [https://fenic.ai/blog/extending-polars-with-rust-expression-plugins](https://fenic.ai/blog/extending-polars-with-rust-expression-plugins)

## 摘要

本文介绍 **fenic**（一个基于 Polars 构建的、面向 AI/LLM 管道的语义化 DataFrame 库）如何通过 **Rust 表达式插件** 扩展 Polars，以处理 Polars 原生缺失的文本操作，例如分块、Jinja 模板化、jq 查询、模糊匹配和转录解析。

### 为什么用插件而非 UDF？

Python UDF（通过 `map_elements`/`map_batches`）存在三个关键缺陷：

- **速度**——在 GIL 下，每行 Python 开销大。
- **组合断裂**——每个 UDF 会物化数据，阻止 Polars 的单遍优化。
- **类型弱化**——输出 dtype 的断言过于宽松。

表达式插件解决了所有三个问题：它们在 Rust 中直接操作 Arrow 缓冲区运行，返回可原生组合的 `pl.Expr`，并提前声明输出 dtype。

### 插件工作原理

插件由两个薄层组成：

1. **Python 端**——使用 `@pl.api.register_expr_namespace` 为任意 `pl.Expr` 附加命名空间（如 `.json`），并通过 `register_plugin_function` 链接到 Rust 符号。

2. **Rust 端**——一个用 `#[polars_expr(...)]` 注解的函数，接收 `&[Series]` 并返回 `PolarsResult<Series>`。`pyo3-polars` 宏负责处理 FFI 和 Arrow 编组。

### 输出类型声明

输出类型必须 **在未见数据的情况下**（在模式解析阶段）声明。三种方式：

- **静态**——例如 `#[polars_expr(output_type=Float64)]` 用于模糊匹配得分。
- **从输入字段推断**——例如 `List(String)` 用于 jq 结果。
- **从 kwargs 推断**——例如 `output_type_func_with_kwargs` 用于反序列化 JSON 类型描述符，以表示 fenic 的逻辑类型（如嵌入数组）。

### 实际影响

所有九个 fenic 插件现在都是原生的 Polars 表达式。单个表达式即可链式完成 Markdown 解析、jq 过滤和类型转换——全部在一次传递中执行，无需往返 Python。其结果是在 Polars 引擎内实现更快速、可组合且类型安全的文本处理。

---

## 12. 希区柯克与赫尔曼：改变电影的友谊与配乐

**原文标题**: Hitchcock and Herrmann: The friendship and film scores that changed cinema

**原文链接**: [https://www.lrb.co.uk/the-paper/v48/n13/jonathan-coe/where-was-the-drum-kit](https://www.lrb.co.uk/the-paper/v48/n13/jonathan-coe/where-was-the-drum-kit)

本文是对史蒂文·C·史密斯的著作《希区柯克与赫尔曼：改变电影的友谊与电影配乐》的评论，同时穿插了乔纳森·科对接触希区柯克电影及其品牌的个人回忆。科开篇回忆了童年时通过《阿尔弗雷德·希区柯克的神秘杂志》和《三个侦探》系列丛书初识希区柯克，并误以为这些作品出自他之手。他指出，虽然希区柯克的电影生涯在20世纪60年代末走向衰落，但他的知名度却因电视节目《希区柯克剧场》和《希区柯克时刻》而飙升，这主要归功于编剧詹姆斯·阿拉迪斯创作的喜剧独白。

文章核心聚焦于希区柯克与作曲家伯纳德·赫尔曼的合作，始于《怪尸案》（1955年）。史密斯指出，赫尔曼为这部电影创作的配乐——希区柯克曾用它向阿拉迪斯说明期望的基调——帮助定义了电视节目的风格。赫尔曼本人认为《怪尸案》是希区柯克最私密且最具幽默感的作品，并在二人决裂后重新编排了五部希区柯克电影的配乐，作为“和解的橄榄枝”。

科详述了二人后续的合作：《擒凶记》、《伸冤记》、《迷魂记》、《西北偏北》、《惊魂记》、《群鸟》和《艳贼》。他着重强调赫尔曼的理念：电影音乐应服务于场景，“探寻并强化角色的内心活动”。典型例子包括《伸冤记》中微妙的拨奏低音线、《西北偏北》中带有西班牙风味的凡丹戈舞曲，以及《惊魂记》中忧郁的弦乐配乐。科将《迷魂记》、《西北偏北》和《惊魂记》这三部影片描述为“音乐电影杰作的帽子戏法”，导演与作曲家在此达到了完美协同。

文章还涵盖了《冲破铁幕》引发的裂痕以及《艳贼》的余波：尽管赫尔曼华丽经典的配乐忠实地回应了希区柯克的构想，却被归咎于该片在商业和评论上的失败。科引用了埃文·亨特因强奸戏被《艳贼》解雇的回忆录，揭示了希区柯克专制的创作控制。总体而言，这篇评论探讨了赫尔曼的音乐如何塑造希区柯克的电影、他们合作的情感共鸣，以及希区柯克品牌更广泛的文化影响。

---

## 13. 证明人类所写

**原文标题**: Proving a human wrote something

**原文链接**: [https://gjtorikian.online/posts/proving-a-human-wrote-something/](https://gjtorikian.online/posts/proving-a-human-wrote-something/)

## 摘要

作者在沉寂一段时间后重返博客，承认个人分心与自我怀疑阻碍了写作。他们广泛使用AI进行编码和自动化，但将其与写作区分开来：代码有确定性的目标，而写作涉及有意的个人表达。由此引出核心问题：**如何证明某段内容是人所写？**

他们的答案是**Semoi**（目前为Obsidian插件），该插件记录两个指标：
- **写作耗时**（LLM数秒生成文本，人类需数分钟）
- **击键次数**（单个按键事件 vs AI生成的单次复制粘贴）

文档完成后，数据发送至Semoi服务器，该服务器以加密方式签署并生成证明，表明文本为手动输入。用户可在博客中嵌入验证图像。不传输任何文本内容，证书匿名。

作者承认**局限性**（如假装打字后粘贴AI文本），但认为此类变通做法可悲。该项目作为基于启发式的不完美解决方案提出——更多是激发更好创意的引子，而非最终答案。帖子结尾希望读者能改进这一概念。

---

## 14. DuckPGQ – 面向图工作负载的DuckDB社区扩展

**原文标题**: DuckPGQ – A DuckDB community extension for graph workloads

**原文链接**: [https://duckpgq.org/](https://duckpgq.org/)

**DuckPGQ** 是一个 DuckDB 社区扩展，支持使用 SQL/PGQ 标准（SQL:2023）进行图计算。它与 DuckDB 无缝集成，无需外部依赖，且为开源项目。安装方式简单：在 DuckDB 中执行 `INSTALL duckpgq FROM community; LOAD duckpgq;`（支持 Python、Node.js、R、Java）。

**主要特性**包括符合标准的图模式匹配、通过 DuckDB 进程内分析实现的高性能、简易的安装配置以及社区驱动开发。

本文通过三个领域示例进行演示：

1. **社交网络** – 使用 `snb` 数据集，用户可创建属性图，包含顶点表（Person、Forum）和边表（knows、hasMember）。查询涵盖人物间最短路径、共同好友、最受欢迎人物（按关注者数量）以及关注数最多的人物所拥有的论坛数量。

2. **航班数据** – 基于 flight_graph 设置（顶点：飞机、机场、预订、航班、机票、座位；边：航线、机票_航班等），示例找出两机场间最短路径，以及根据预订金额计算的平均价格最高的座位。

3. **金融数据** – finbench 图包含账户、公司、贷款、媒介、人员及多种边类型（转账、取款、还款等）。查询通过转账链检测被冻结的账户，并按时间范围筛选高风险转账。

**关于 DuckPGQ** – 首席开发者 Daniël ten Wolde（CWI 博士生）负责该项目。该扩展为**正在开发中**的研究项目，可能存在错误或不完整功能；欢迎用户报告问题。

---

## 15. 阿尔忒弥斯二号任务可视化

**原文标题**: Visualizing the Artemis II Mission

**原文链接**: [https://foxglove.dev/blog/visualizing-the-artemis-ii-mission](https://foxglove.dev/blog/visualizing-the-artemis-ii-mission)

## 摘要

本文介绍了一位 Foxglove 团队成员如何受 Hank Green 照片时间线网站的启发，创建了 NASA 阿尔忒弥斯 II 任务（2026年4月）的交互式 3D 可视化。作者使用机器人可视化工具 Foxglove 构建了同步体验，将猎户座飞船的轨迹、任务照片和航天器状态融为一体。

**数据管道**  
- **轨迹**：从 JPL Horizons API 获取（精确星历数据）。  
- **照片与元数据**：来自 Hank Green 的 Artemis-Timeline 项目（`photos.js`），包含时间戳、相机型号、说明文字和 JPEG 链接。  
- **处理**：Python 脚本获取轨迹，下载并调整照片大小至约 1280 像素，将数据融合到单一时间线上，并导出为 MCAP 文件。

**3D 场景**  
- 最初使用基本几何体，后替换为 NASA 官方 AROW 猎户座模型（通过 Ian Dees 的 artemis-viewer），包括正确展开的太阳能电池板。

**布局设计**  
- 分为两个标签页：**数据标签页**（距离曲线、任务状态、照片）和**可视化标签页**（3D 面板 + 照片），减少杂乱，突出轨道视图和图像。

**交互扩展**  
- 构建了自定义**照片步进面板**（Foxglove 扩展），可前后跳转约 500 张照片，按相机筛选，或运行幻灯片放映。步进到某张照片时，所有面板（3D 视图、曲线、时间线）自动更新到该精确时刻。

**最终润色**  
- 添加了随机星空和带纹理的地球/月球模型以增强景深感。

**鸣谢与可用性**  
- 数据来源：JPL Horizons、Hank Green、Ian Dees、NASA。  
- 完整项目（构建脚本、URDF 模型、.mcap 文件、Foxglove 布局、照片步进扩展）已在 GitHub 上开源。需要 Python 3.10+、Foxglove，首次构建（下载照片）约需 10–30 分钟。

---

## 16. 长破折号太棒了

**原文标题**: Em dashes are amazing

**原文链接**: [https://psychotechnology.substack.com/p/em-dashes-are-fucking-amazing](https://psychotechnology.substack.com/p/em-dashes-are-fucking-amazing)

这篇文章是对破折号标点符号的热情捍卫与赞美。作者萨沙·普季林宣称对破折号深怀热爱，并在自己的写作中大量使用它们，以此获得自由与清晰之感。

关键要点包括：
- **破折号与其他标点对比**：作者认为破折号优于括号（括号显得畏缩）、冒号（几乎无用）以及分号（尽管受尊重，但破折号往往更胜一筹）。省略号过于忧郁，而破折号则动态地向前推进。
- **实用技巧**：为区别于AI生成的文字，作者推荐使用美联社风格的破折号，即在前后加空格（如：这样 —— 举例），而非AI默认的“word—word”样式。
- **蔑视批评者**：作者对那些为了寻找“AI痕迹”而审视文字的人不屑一顾，指出打出破折号轻而易举（例如Mac上按Option+Shift+连字符）。文章鼓励读者别在意网上随意的评论，甚至开玩笑宣称没有破折号的文字简直没法看。
- **语气**：本文风格随意、粗俗且幽默，结尾提供付费标点建议（175美元/小时），并呼吁订阅以获取更多充满破折号的写作。

---

## 17. AMD与Cerebras联合推出AI推理解决方案

**原文标题**: AMD and Cerebras Launch AI Inference Solution

**原文链接**: [https://www.cerebras.ai/press-release/amd-and-cerebras-announce-industry-leading-ultra-low-latency-and-high-throughput-ai-inference](https://www.cerebras.ai/press-release/amd-and-cerebras-announce-industry-leading-ultra-low-latency-and-high-throughput-ai-inference)

AMD与Cerebras宣布达成技术合作，共同推出全新解聚式AI推理解决方案，该方案于2026年7月23日在“Advancing AI 2026”大会上亮相。该解决方案将AMD Helios™机架级系统与Cerebras晶圆级引擎（WSE）相结合，独立优化推理工作流程的两个主要阶段。AMD Helios负责处理高吞吐量的提示处理和大上下文窗口，而Cerebras WSE则加速超低延迟的令牌生成。

这一联合平台旨在应对日益多样化的AI推理工作负载——这些负载如今涵盖从高吞吐量令牌生成到实时应用（如编程助手、实时智能体和自主式AI）的广泛场景。通过将这两个专用引擎连接至同一工作流中，两家公司旨在实现比现有解决方案高达5倍的每瓦每秒令牌数（T/s/W）。

Cerebras计划在其数据中心部署AMD Helios，该联合解决方案预计将于2026年下半年通过Cerebras云平台提供。AMD首席执行官苏姿丰博士强调，此次合作将AMD在推理领域的领导地位延伸至延迟敏感型应用；Cerebras首席执行官安德鲁·费尔德曼则指出，此次合作将为更多客户带来超快推理。

该解决方案瞄准了软件开发、自主智能体、机器人技术和科学发现领域对快速令牌生成的日益增长需求——在这些领域中，响应时间直接影响用户体验和系统实用性。

---

## 18. Codeberg分裂

**原文标题**: Codeberg Divides

**原文链接**: [https://lucumr.pocoo.org/2026/7/24/codeberg-divides/](https://lucumr.pocoo.org/2026/7/24/codeberg-divides/)

阿明·罗纳赫的《Codeberg的分裂》一文批评了Codeberg近期的一项政策变更，该政策禁止“主要由生成式AI编写的代码”构成的项目。罗纳赫承认Codeberg作为一个民主协会有权做出此类决定，但他认为仅靠民主并不能保证明智或包容的结果。他强调，他从基础设施中需要的是可预测性、可靠性以及对合法开源软件的中立态度——与拥有明确章程的民主提供者相比，这些品质可能不如一家公司。

罗纳赫聚焦于“主要”一词的模糊性，指出在活跃开发的代码库中，确定作者身份占比往往是不可能的。这种模糊性使得执行变得困难，并可能将政策推至版主自由裁量和社区规范的层面，从而可能形成更严苛的社会边界，导致即便技术上合规的项目也被排除在外。

他对开源和自由软件社区在LLM（大语言模型）及智能体问题上出现的严重分裂感到遗憾。尽管承认这些工具在版权、劳动力、能源及维护负担方面的严重关切，但他认为这些工具正逐渐成为软件开发中不可或缺的部分。社区应当建设性地参与其中，而非分裂成对立阵营。罗纳赫相信，如果善加利用，LLM有助于从大型企业手中夺回权力。

作为GitHub竞争（尤其是来自欧洲协会的竞争）的支持者，罗纳赫希望Codeberg能更具前瞻性。他认为其当前立场限制了自身成为广泛、可靠的欧洲替代方案的潜力。他更倾向于一个能够承载未来开源软件的平台，而非一个政治狭隘的社区——这个平台不仅托管以当前社区认可的方式开发的软件，也托管其他方式的软件。他总结道，虽然Codeberg有权做出选择，但这并非一个好选择。

---

## 19. Chrome的破门而入

**原文标题**: Chrome's Breaking and Entering

**原文链接**: [https://unsung.aresluna.org/chromes-breaking-and-entering/](https://unsung.aresluna.org/chromes-breaking-and-entering/)

## 摘要

文章描述了一起对用户不友好的事件：谷歌Chrome浏览器在未经用户同意或知情的情况下，悄悄注册了一个全局键盘快捷键（Mac上为Ctrl+G，Windows上为Alt+G）来打开其Gemini AI功能。作者在尝试跳转到代码编辑器的某一行时发现了这一点，结果却看到了一个未说明自身是Chrome或Gemini的莫名弹窗。作者称此为"恶意软件行为"，并指出没有简单的关闭方式——该设置深藏在"AI创新">"Chrome中的Gemini"之下。

核心控诉：**任何应用都不应在未经明确选择加入的情况下安装全局键盘快捷键**。Chrome本应显示一个清晰的用户界面请求许可。作者部分归咎于macOS缺乏全局快捷键的共享清单，导致应用"窃取"快捷键时难以诊断。其他已知存在类似问题的应用包括1Password、Notion和Perplexity。

文章将Chrome过去作为保护用户浏览器的声誉与其当前行为进行对比——如今它感觉更像一个用户需要防护的操作系统。文章还批评了"AI创新"这一命名显得俗气。此事件凸显了科技公司更看重指标而非尊重用户的普遍趋势。

---

## 20. 亚马逊Alexa的秘密起源

**原文标题**: The Secret Origins of Amazon's Alexa

**原文链接**: [https://www.wired.com/story/how-amazon-made-alexa-smarter/](https://www.wired.com/story/how-amazon-made-alexa-smarter/)

**《亚马逊Alexa的秘密起源》摘要**

2011年初，杰夫·贝索斯在白板上勾勒了一台20美元的声控设备，并以古亚历山大图书馆命名其AI助手为Alexa。他指派格雷格·哈特领导该项目，尽管哈特缺乏硬件经验。该设备将依赖云计算和远场语音识别——挑战在于用户需从房间另一侧说话。

保密至关重要。哈特谨慎招聘，并于2012年以约3000万美元收购波兰初创公司Ivona，用于开发Alexa的自然语音。Alexa背后的配音演员是妮娜·罗尔，但亚马逊从未公开确认其身份。内部原型在员工家中测试时，反应迟钝且笨拙——贝索斯甚至恼怒地对Alexa说“朝自己脑袋开枪”。

该项目面临核心矛盾：为提升Alexa的智能，亚马逊需要海量用户语音数据，但笨拙的产品无法吸引用户。早期数据仅来自数百名员工。两种AI方法之间展开争论：知识图谱（由收购的Evi团队支持）与深度学习（由工程师罗希特·普拉萨德倡导）。深度学习需要大量数据自我训练，而亚马逊缺乏数据。

在2013年一次关键会议上，普拉萨德团队提议将语音科学团队规模翻倍并推迟发布。贝索斯愤怒驳斥了他们的数学模型，认为他们没有思考如何打造“神奇”的产品。他离席而去，促使团队重新考虑。解决方案：大幅扩大公测计划，秘密将数千台Echo设备安置在外部用户家中，以收集真实世界的远场语音数据。这一战略举措最终使亚马逊克服数据悖论，成功推出Echo，并以专为家庭而非智能手机设计的设备击败了苹果Siri等竞争对手。

---

## 21. Claude 手册

**原文标题**: Claude Cookbook

**原文链接**: [https://platform.claude.com/cookbook/](https://platform.claude.com/cookbook/)

以下是对**Claude Cookbook**文章的简明摘要：

**性质：** 一份持续更新的技术指南目录（2024年4月至2026年6月），用于使用Claude构建应用程序。结构为一系列“菜谱”条目，每条包含标题、类别、作者和日期。

**核心主题与关键指南：**
- **Agent模式与编排：** 重点关注多智能体系统（固定N个智能体团队、动态生成子智能体）、Claude Agent SDK以及Claude托管Agent。重要指南包括“异步多智能体编排”、“多智能体：协调专家团队”以及“成果：能验证自身工作的智能体”。
- **工具使用与效率：** 优化工具性能的配方，如“程序化工具调用（PTC）”（让Claude编写自身工具调用代码以减少延迟）、“基于嵌入向量的工具搜索”（通过语义搜索处理数千个工具）以及“自动上下文压缩”（管理长期运行的Agent上下文）。
- **评估与安全：** 关于“Evals”基准测试（如复现DeepSearchQA得分）、“工具评估”以及“Claude Fable 5的分类器回退与计费”的指南。
- **集成与具体应用：** 构建语音助手（ElevenLabs）、SRE事件响应Agent、数据分析机器人、漏洞检测Agent以及Slack机器人的实用指南。包含针对金融应用、Excel、PowerPoint和PDF处理的领域特定“技能”。
- **多模态与前端：** 改进图像分析（裁剪工具）以及“前端美学”提示的配方。
- **经典模式：** 较老但基础的指南，涵盖RAG（上下文检索、文本到SQL）、摘要、分类、微调（Bedrock）、批处理（Message Batches API）以及扩展思考。

**结论：** 该菜谱集清晰记录了从基础工具使用和提示工程（2024年）向复杂、生产级Agent架构、托管部署以及稳健评估工作流（2025-2026年）的演进过程。

---

## 22. 每月3美元预算下的Web 3D能力报告

**原文标题**: Reporting Web 3D Capabilities on a Budget of $3 a Month

**原文链接**: [https://ben3d.ca/blog/reporting-web-3d-capabilities-on-a-budget](https://ben3d.ca/blog/reporting-web-3d-capabilities-on-a-budget)

**《每月仅需3美元报告Web 3D能力》摘要**

本文介绍了**Web3DSurvey.com**——一个免费收集真实世界WebGL、WebGL 2和WebGPU能力数据的服务——如何在每月约**3加元**（2026年4月）的预算下运行，处理约50万次请求和约3亿个数据点。其架构将**收集**和**报告**分离，以保持低成本和高性能。

**收集器**：参与站点嵌入的一个小型iframe探测浏览器能力，并通过**GET请求**（消除CORS预检，使服务器请求减半）提交压缩后的base64编码统计对象。API服务器丢弃机器人请求、规范化字段，并每批10条将样本插入**BigQuery**。BigQuery Storage Write API在免费摄取额度内。数据存储在**按5天分区**的表中，有效期120天；当前6.2 GiB存储费用为0美元（在免费层内）。

**报告**：Web服务针对每个特性运行多个小型并行BigQuery查询（每次500毫秒），然后在JavaScript中聚合结果。一个**透明JSON缓存**（内存+Cloud Storage，2天TTL）避免每次访问都请求BigQuery；陈旧数据立即提供，同时在后台重新验证。站点使用**TanStack Start**，服务端渲染外壳，客户端加载统计数据，因此即使在缓存未命中时页面也能快速显示。

**成本明细（2026年4月，加元）**：
- Cloud Run：2.30美元（两个服务，1 vCPU/256 MiB，缩放到零）
- Cloud DNS：0.55美元
- BigQuery：0.18美元（主要为流式插入；存储免费）
- Cloud Storage：0.01美元
- **总计：约3.04美元**（2026年6月截图显示含CDN后为3.45美元）

**关键优化**：Cloud Run容器采用清理策略（保留最新3个，删除超过3天的）。缓存将BigQuery查询从每次访问减少到每聚合每月约15次刷新。查询仅扫描最近7天。

**取舍与未来改进**：手动JSON模式（无Drizzle Kit等类型安全迁移）以及用于失效的手动`cacheVersion`常量是已知的粗糙之处。

**预算换来的成果**：任何3D Web开发者都能获得WebGL、WebGL 2、WebGPU特性的实测支持率、适配器/供应商细分、浏览器统计以及实时机器对比。站点可通过一行iframe参与贡献。

---

## 23. 全新世期间语言多样性的兴衰

**原文标题**: The rise and fall of language diversity through the Holocene

**原文链接**: [https://www.science.org/doi/10.1126/science.adx4343](https://www.science.org/doi/10.1126/science.adx4343)

无法访问文章链接。

---

## 24. BGP起源属性的操作及其对互联网的影响

**原文标题**: BGP ORIGIN attribute manipulation and its impact on the Internet

**原文链接**: [https://blog.cloudflare.com/bgp-origin-attribute/](https://blog.cloudflare.com/bgp-origin-attribute/)

本文研究了BGP ORIGIN属性的广泛篡改及其对互联网路由的影响。ORIGIN属性指示路由注入BGP的方式，包含三个值：IGP（内部网关协议）、EGP（历史/废弃）和INCOMPLETE（来源未知）。RFC 4271规定，ORIGIN由发起方设定后不应被任何路由器修改，但它在路径选择中发挥作用：当两条路由具有相同的本地优先级和AS_PATH长度时，ORIGIN值较低（IGP < EGP < INCOMPLETE）的路由更优。

作者通过从多个对等位置进行BGP任意播宣告的实验发现，约70%的观测路径上ORIGIN值与原始AS相比发生了改变。通过分析来自公共收集器（RIPE RIS、RouteViews）及本地数据的BGP更新，他们识别出近10%的直接对等方将ORIGIN重写为IGP，其中包括16家一级网络中的6家。部分AS还将ORIGIN改为EGP或INCOMPLETE以降低路由优先级。其动机是商业性的：重写为IGP使路由更受偏好，从而吸引流量和收入。

这种篡改对顶级AS影响尤为严重：前50大AS中有26%、前100大中有20%修改了ORIGIN。这导致显著的流量重定向，例如在IPv6中，篡改者获得的路径增加了40%。该行为破坏了公平性，遵守规范的网络因那些无视RFC指导的网络而流失流量。

作者总结认为，在现代互联网中ORIGIN已无有效的技术用途，并呼吁将其弃用或使其在路径选择中无关紧要（例如强制所有实现将ORIGIN设为IGP）。他们呼吁在IETF和社区中重新展开讨论以解决该问题并提升路由公平性。

---

## 25. 砖块游戏，穿越时代

**原文标题**: The Brick Game, Through the Ages

**原文链接**: [https://nicole.express/2026/bricked-up-and-no-amontillado.html](https://nicole.express/2026/bricked-up-and-no-amontillado.html)

本文探讨了“会说话砖块游戏”118合1，这是一种常在筹款活动中出售的低成本便携游戏机。尽管包装盒上印有不同的图案，实际设备却带有铲形方块和侧边栏。它声称“无重复”和“会说话”，但语音难以听懂。菜单使用“关卡”、“速度”、“模式”（游戏类型A–E）和“旋转/方向”（子类型）按钮来浏览游戏。大多数游戏是俄罗斯方块的变体，略有变化，其中一款会播放经典的《Korobeiniki》主题曲。内部结构显示，它有一块薄薄的PCB板，上面有环氧树脂封装（板上芯片）和简单的橡胶触点按键。

随后，文章将其与售价不到10美元的现代版本进行了比较，该版本宣传为9999合1。不同之处包括更大的屏幕、重新定位的扬声器、新增的“上”和“重置”按钮、更薄的设计以及一体式橡胶控制板。菜单现在使用数字（1–23）而非字母来表示游戏类型。赛车游戏经过了重新设计，并出现了非俄罗斯方块的新游戏，例如打砖块和需要按上键的坦克游戏。音乐也已改变（不再有《Korobeiniki》）。打开新型号，发现一块将控制键和LCD连接整合在一起的PCB板，上面有一个完美的圆形环氧树脂封装，日期为2025.10.27，表明是近期制造的。作者注意到一个幽默的“NO/OFF”标签。

总体而言，文章强调，尽管技术不断发展，砖块游戏仍然作为一种廉价、以俄罗斯方块为主的掌上设备而存在，面向那些无法接触现代游戏设备的孩子。新旧版本共享设计传承，但内部完全不同，很可能使用了不同的微控制器芯片。

---

## 26. 最新空客单通道飞机创新

**原文标题**: Latest Airbus single aisle aircraft innovations

**原文链接**: [https://www.airbus.com/en/newsroom/stories/2026-07-how-the-a321xlr-is-redefining-single-aisle-comfort-for-passengers](https://www.airbus.com/en/newsroom/stories/2026-07-how-the-a321xlr-is-redefining-single-aisle-comfort-for-passengers)

**摘要：**  
无法访问标题为“空客最新单通道飞机创新”的请求文章。页面仅显示错误信息：“请求失败。Incapsula事件ID：1571000780033066405-49830773311869838。”这表明网站的安保服务（Incapsula）阻止了该请求，很可能是由于技术或安全问题。因此，未能获取或总结关于空客最新单通道飞机创新的任何信息。

---

## 27. PImpl惯用法与C++26 std::indirect类型

**原文标题**: The PImpl idiom and the C++26 std:indirect type

**原文链接**: [https://mariusbancila.ro/blog/2026/07/23/the-pimpl-idiom-and-the-cpp26-stdindirect-type/](https://mariusbancila.ro/blog/2026/07/23/the-pimpl-idiom-and-the-cpp26-stdindirect-type/)

提供的文本只是一个“机器人验证”页面，并非实际文章。我无法在没有原文的情况下总结“PImpl惯用法与C++26 std::indirect类型”的内容。请提供完整文章或链接，以便我能给出准确的总结。

---

## 28. 编程语言在线历史百科全书

**原文标题**: Online Historical Encyclopaedia of Programming Languages

**原文链接**: [https://hopl.info/](https://hopl.info/)

**HOPL（在线编程语言历史百科全书）** 是一部全面记录从18世纪至今**8,945种编程语言**的数字资源库，包含**7,800条影响链接**（谱系关系）和**超过11,000条引文**以支撑其条目。网站设有谱系树，可视化展示语言之间的关系。

主要板块包括：
- **关于HOPL** —— 解释导航方式及“Gernsback机器”（一种概念性界面）的设计理念。
- **定义** —— 阐明何谓计算机语言。
- **分析与报告** —— 提供语言分类与谱系方面的见解。
- **参考文献** —— 列出来源及外部链接。
- **致谢** —— 感谢图书馆员：**Diarmuid J. Pigott**（负责1989年之前的早期资料）和**Bruce M. Axtens**（1990年至今），以及**Steve Poulson**担任司务长，处理“内部编程（模拟）”。
- **版权** —— © Diarmuid Pigott 1995–2020，附有严格的“禁止复制、禁止转载”声明。
- **联系方式** —— 勘误及崩溃报告请发送至 hopl.acquisitions@gmail.com。

这部百科全书作为编程语言历史、谱系及相互影响的学术参考，由两位主要贡献者历经数十年维护而成。

---

## 29. JEP 541：弃用 macOS/x64 端口以待移除

**原文标题**: JEP 541: Deprecate the macOS/x64 Port for Removal

**原文链接**: [https://openjdk.org/jeps/541](https://openjdk.org/jeps/541)

**JEP 541 摘要：弃用 macOS/x64 端口以准备移除**

JEP 541 提议弃用 JDK 的 macOS/x64 端口，并计划在未来版本中将其移除。其动机在于苹果已全面转向 AArch64（Apple Silicon）并逐步淘汰对 x64 的支持，这使得维护 macOS/x64 端口成为 Oracle 工程师的沉重负担。该端口的维护工作将在 JDK 27 中停止。

主要变更：
- 配置 macOS/x64 构建时默认将因弃用错误而失败。
- 新增 `--enable-deprecated-ports` 构建选项可抑制该错误并允许构建，但会发出警告，指出该端口已弃用，可能无法正常构建或运行。
- JDK 仓库的 GitHub Actions 将默认禁用 macOS/x64 端口，以避免阻碍主线开发。
- 文档将把该端口及相关特性标记为已弃用，准备移除。

替代方案：如果在 JEP 整合之前有可信的开发者团队主动维护该端口，则该 JEP 可被撤回。整合之后但在移除之前，可通过后续 JEP 撤销弃用。

---

## 30. 我尝试用AI构建一个真正的应用。花了一年时间。

**原文标题**: I Tried Building a Real App with AI. It Took a Year

**原文链接**: [https://www.alexhyett.com/videos/tried-building-app-with-ai-it-took-a-year/](https://www.alexhyett.com/videos/tried-building-app-with-ai-it-took-a-year/)

文章讲述了亚历克斯·海耶特（Alex Hyett）耗时一年，利用AI构建一款名为 **HabitTed** 的iOS习惯追踪应用的经历。由于对现有应用（Streaks、HabitKit、Grit）不满——缺少长列表视图、自定义表情符号、发生次数统计、备注和提醒等功能，且订阅费用高昂（例如Grit每月9.99英镑）——他决定自己动手。

他于2025年3月从 **Cursor**（一款AI编码工具）入手，尽管毫无Swift经验。大约 **六小时** 后，他便拥有了一款看似可用的应用，支持习惯记录、自定义图标、目标设定和iCloud同步。然而，代码质量很差——视图文件超过1000行，样式不统一，编译器频频报错。他手动重构了所有代码，随后发现了重大Bug：iCloud同步实际上无法恢复数据，且随着完成记录增多，重复计算导致性能下降。他通过存储统计数据并重新设计数据模型修复了这些问题。

后续挫折来自 **iOS 26**，其透明度Bug破坏了UI。AI无法提供帮助，因为它未针对新操作系统进行训练；苹果在26.1版本中修复了该问题。经过数月的调试和完善，该应用终于发布。免费版可管理最多六个习惯，完整解锁版的价格仅为“一杯咖啡的费用”。

**关键反思：**
- AI能让你 **快速完成80%的工作**，但最后的 **20%却消耗了80%的时间**——尤其在你并不理解生成的代码时。
- 使用AI使海耶特未能真正学习Swift；他感觉自己并未获得实际技能。
- 他对行业感到担忧：初级开发者不再被雇用，资深开发者要么因过度依赖AI而丧失编码能力，要么因编写提示词而过度消耗。
- 如果AI泡沫破裂，可能没有足够称职的开发者来清理这些“AI垃圾”。

这篇文章是一个警示故事：AI是强大的加速器，但无法取代深度理解，而依赖AI的人力成本可能十分高昂。

---

## 31. 展示HN：开放权重OCR便宜到忍不住分享

**原文标题**: Show HN: Open-weight OCR got so cheap I had to share it

**原文链接**: [https://www.openparser.dev/cheapest-ocr](https://www.openparser.dev/cheapest-ocr)

文章介绍了**OpenParser**，这是一个为开源OCR模型**PaddleOCR-VL-1.6**提供的托管API，号称是布局与表格OCR中最经济的选择：在**1,000页免费**额度后，价格为**每1,000页1美元**。

要点：

- **定价**：解析（带格式文本块+Markdown）为1美元/1,000页。填充JSON模式的提取服务则根据所选大语言模型按token单独计费。
- **性能**：PaddleOCR-VL-1.6在独立文档解析基准测试中名列前茅，且模型规模足够小，能以如此低价提供服务。
- **对比**：文章严格区分了**基础文本OCR**（如AWS Detect Text、Azure Read、Google Enterprise OCR，约1.50美元/千页）与**布局+表格OCR**两个赛道。在后一赛道中，OpenParser列出了最低的公开同步费率：1美元/千页，对比Mistral OCR 4（4美元）、Azure Layout（10美元）、Google Layout Parser（10美元）、AWS Textract Tables+Layout（15美元）和Reducto（15美元）。
- **注意事项**：所列价格截至2026年7月24日。未考虑批量折扣（如Mistral的50%批量费率）和阶梯价。所谓“最便宜”仅指布局+表格OCR在同步价目表下的比较，并非所有OCR工作负载。输出形式（纯文本 vs. 完整布局）和计费方式（按页 vs. 按信用点 vs. 按token）会影响实际成本。
- **自托管**：由于PaddleOCR-VL权重开源，用户可以自行运行。自托管将以GPU、运维和维护成本替代按页收费；盈亏平衡点取决于具体部署情况。
- **功能**：解析出的文本块包含置信度分数和边界框（无虚构几何信息）。提取的架构值会引用块ID以便审计。API支持同步、异步和批量模式；提供测试用的Playground；支持团队和账单管理。
- **用量计算器**：页面提供了一个工具，用于比较不同页数下各供应商的成本，显示OpenParser在布局+表格场景中直至100万页仍是最便宜的。

总体而言，文章将OpenParser定位为一种性价比高、基于开源模型的文档结构保留解析方案，同时透明地指出了价目表比较的局限性以及解析与提取分开计费的特点。

---

## 32. 我的 Emacs 配置（Dired）

**原文标题**: My Emacs Configuration (Dired)

**原文链接**: [https://eugene-andrienko.com/2026-07-05-my-emacs-configuration-dired.html](https://eugene-andrienko.com/2026-07-05-my-emacs-configuration-dired.html)

这篇文章详细介绍了作者的 Emacs Dired 配置及日常工作流程，强调了 Dired 作为集成在 Emacs 中的文件浏览器的强大功能。关键要点如下：

**调用方式**：主要使用 `C-x p d`（项目目录）、`C-x C-j`（当前文件所在目录）和 `C-x C-d`（由 `C-x d` 重新绑定）。同时通过外部程序将 Emacs 设为默认文件管理器。

**文件操作**：标记（`m`、`* s`、`* .`、`% m`、`t`、`U`）和标记删除（`d`、`% &`、`% d`）。文件可同时被标记和标记删除，用 `x` 执行删除。例如，通过扩展名删除 `.webp` 文件，再通过 `!` 配合预定义命令将其转换为 JPEG。

**WDired（可写 Dired）**：通过 `C-x C-q` 进入。允许以文本形式编辑文件名——便于批量重命名（例如去除 `.fb2` 后缀、补零）。若设置 `wdired-allow-to-change-permissions`，还可更改权限。

**双窗口复制/移动**：启用 `dired-dwim-target` 后，复制（`C`）或移动（`R`）时会自动将另一个 Dired 缓冲区建议为目标位置，模拟 Midnight Commander 的行为。

**搜索**：`C-s` 搜索文件名（配合 `dired-isearch-filenames`）。`find-name-dired` 和 `find-grep-dired` 可将 `find`/`grep` 结果生成为 Dired 缓冲区。配置了 BSD 特有的 `find` 选项。

**外部程序**：使用 `dired-open-extensions` 通过 RET 打开媒体文件（图像用 sxiv，视频用 mplayer）。`!`（同步）和 `&`（异步）快捷键对标记文件运行 shell 命令，`M-n` 显示按文件类型预定义的命令（通过 `dired-guess-shell-alist-user` 设置）。图像的命令示例包括 `gm convert`、`pngquant` 和 `jpegoptim`。

**配置片段**：提供了垃圾文件正则表达式（LaTeX 副产品）、WDired 权限、dwim-target、find 选项、打开扩展和 guess-shell alist 的配置。

作者赞赏 Dired 的交互性、正则表达式支持以及与 Emacs 编辑功能的集成，认为其在复杂文件管理方面优于命令行或 Midnight Commander。

---

## 33. Drone-Bench：追踪前沿模型的简单无人机监控能力

**原文标题**: Drone-Bench: Tracking simple drone surveillance capabilities of frontier models

**原文链接**: [https://andonlabs.com/evals/drone-bench](https://andonlabs.com/evals/drone-bench)

Drone-Bench是一个基准测试，用于衡量前沿AI模型为低成本无人机硬件编写代码以执行简单监视任务的能力。该测试包含五个连续能力——从办公室视频重建3D环境、在环境中定位无人机、在房间之间导航、根据参考照片检测特定人员以及跟踪该目标——每个能力均以人工编写的基线为评分标准。模型每次运行可提交十次迭代并获得分数反馈，每个模型执行十次运行。目前尚无模型能超越重建基线，因此端到端成功率目前为0%。然而，从Opus 4.8开始，平均提交次数在检测和跟踪任务上超越了基线。最佳前沿模型在一次良好运行中可完成四项任务，但典型运行中所有任务串联成功的概率仅为6%左右。从首次提交到最佳提交，模型平均改进182%，凸显了特权分数反馈（现实部署中缺乏的“特权”）的强大作用。该基准测试将每个任务隔离（提供干净的上游产物）以防止误差累积，这既提升了下限，也限制了上限。根据测量趋势，下一代模型的最佳解决方案预计能通过全部五项任务，而典型运行大约在六个月后赶上。Drone-Bench旨在追踪这些能力——随着AI模型获得物理自主性，从而促进关于滥用和监管的知情公众讨论。

---

## 34. 手写有益于大脑

**原文标题**: Writing by hand is good for your brain

**原文链接**: [https://nealstephenson.substack.com/p/writing-by-hand-is-good-for-your](https://nealstephenson.substack.com/p/writing-by-hand-is-good-for-your)

手写具有显著的认知益处，通过协调字母形态、间距和手臂动作，能够使大脑更多区域参与其中。作者尼尔·斯蒂芬森25年来一直用钢笔在纸上书写自己的所有书籍，从未遭遇过书写痉挛——他将这一问题归咎于糟糕的工具和技巧，而非手写本身。

以下为获取益处的主要建议：

- **避免使用铅笔和廉价圆珠笔**——它们需要过大力度，导致疲劳。钢笔或直液式凝胶笔只需极小压力即可流畅书写。
- **不要在玻璃屏幕上使用触控笔**——摩擦力过小使控制更困难且更易疲劳。轻微的“阻尼感”（摩擦力）可减少脑力和体力消耗。
- **选择兼容的笔/纸组合**——廉价复印纸会吸墨，导致字迹模糊。空白笔记本或含25%以上棉质的纸张效果良好。请测试不同笔与纸张的搭配。
- **不要节省纸张**——仅在单面书写，以保持自然舒适的风格。纸张很便宜，请关注你的大脑和时间。
- **使用连笔书写**——这比逐个字母的印刷体书写省力得多。
- **不必纠结于字迹清晰度或墨渍**——如今，手写主要为自己。偶尔的小墨渍很少见，用废纸轻松吸除即可。
- **左撇子无需担忧**——选择快干墨水（如百乐G-2凝胶笔）可防止蹭脏；钢笔墨水也能迅速干燥。
- **从墨囊开始使用**——比墨水瓶更简单，两种方法都可行。接受偶尔沾墨的手指——它们很容易洗掉。
- **开始行动**——选择适合你生活方式的纸张（活页纸、笔记本、拍纸簿）。如果可能，在商店试用笔。廉价钢笔与昂贵钢笔性能相当；你花费的是材料和造型设计。一支百乐G-2凝胶笔能以低成本提供80%的钢笔体验，但同等价位的普通钢笔使用寿命更长。

归根结底，手写——即便是简单的清单、笔记或日记——能增强记忆力和专注力。关键在于使用合适的工具以避免疲劳和挫败感。

---

## 35. 通量3

**原文标题**: Flux 3

**原文链接**: [https://bfl.ai/blog/flux-3](https://bfl.ai/blog/flux-3)

**FLUX 3：统一多模态基础模型**

FLUX 3 是一种新型多模态基础模型，能够在单一架构中联合学习图像、视频和音频。基于自流方法，它对齐多模态生成与理解，通过扩展算力和数据实现所有模态的同步训练。核心原则：每种模态都是同一底层现实的投影，联合学习可施加相互约束（例如声音匹配冲击、运动遵循质量），从而构建更完整的 world model。

**关键能力**
- **视频与音频：** 生成长达20秒的多样化视频及原生音频，支持文生视频、图生视频（动画或参考）、视频转视频（例如角色迁移）、关键帧过渡和多语言对话。支持多种风格（如摄像机、动画、电影感）及宽高比。
- **图像：** 合成并编辑多种风格的图像，改进复杂提示处理和多语言文本生成（抢先体验即将推出）。
- **动作预测：** 集成原生动作预测，或利用视频主干微调专用动作模型。与 mimic robotics 合作创建 FLUX-mimic 用于灵巧操作，已在奥迪的真实生产任务中测试。

**早期评估（初步）**
FLUX 3 视频在人工评估中优于多个竞品模型（例如 vs. Runway Gen-4.5 为77%，vs. Luma Ray 3.2 为93%），在面部表情、声音事件关联和多语言能力方面尤为突出。能够将片段串联成数分钟且角色一致的序列。

**发布计划**
分阶段推出：视频/音频抢先体验（现已开放），随后是图像合成、通过合作伙伴提供动作预测，最终开源发布多模态骨干模型（FLUX 3 Dev）。所有能力均源自同一底层流匹配模型。

**未来愿景**
将感知、动作和语言预测统一至单一模型，实现交互式编辑、模拟、计算机使用和物理 AI。团队已在研发下一代模型，并在德国和美国招聘。

---

## 36. WebGPU Unleashed：实用教程

**原文标题**: WebGPU Unleashed: A Practical Tutorial

**原文链接**: [https://shi-yan.github.io/webgpuunleashed/](https://shi-yan.github.io/webgpuunleashed/)

**《WebGPU Unleashed：实用教程》摘要**

本文介绍了一本由石岩编写的免费互动在线书籍，教授使用WebGPU进行JavaScript图形编程。作者编写本书旨在解决初学者面对现代图形API（Vulkan、Metal、DirectX 12）时的困惑——这些API强大但平台特定且冗长。WebGPU作为跨平台Web标准及这些API的封装，提供了更简单统一的入口点。它随处可用，并且还有C++和Rust的原生实现。

本书首先概述了GPU驱动程序和图形管线（这些内容在其他资料中常被忽略），然后讲解了绘制三角形（3D图形的基础）、2D渲染以及3D场景控制。高级章节探讨了GPU计算（WebGL之前无法实现的功能）以及尖端技术，如用于逼真实时场景渲染的高斯泼溅。

本书以互动式网页形式呈现，包含视频、链接以及一个在线游乐场，读者可以在其中运行和修改代码示例。所有代码片段均与游乐场交叉引用，文本与代码之间的导航无缝衔接。欢迎读者通过GitHub讨论和问题反馈提供意见。本书旨在以实践动手的方式引导学习者从基础到高级渲染。

---

## 37. 我后悔迁移到Codeberg

**原文标题**: I regret migrating to Codeberg

**原文链接**: [https://xn--gckvb8fzb.com/i-regret-migrating-to-codeberg/](https://xn--gckvb8fzb.com/i-regret-migrating-to-codeberg/)

文章详述了作者从GitHub迁移至Codeberg后的悔意。作者离开GitHub是因为其在微软麾下的“劣化”——迟缓的JavaScript界面、对开源基础设施事实上的垄断性控制，以及随意封禁。Codeberg最初以由欧洲协会运营的免费非营利替代方案吸引了他。

然而，Codeberg最近的服务条款更新禁止了主要由大语言模型（LLM）驱动的项目以及与加密货币相关的项目，将后者归类为“损害Codeberg声誉的内容”。作者批评了这些禁令背后的理由。Codeberg的博文声称LLM项目缺乏真正的社区，作者认为这脱离现实：大多数自由开源项目都是单人开发者的努力，并无社区。作者还指出，Codeberg的基础框架Forgejo本身便源于对Gitea社区的分叉，颇具讽刺意味。

核心反对点不在于具体禁令，而在于审查原则。通过将整个类别标记为有害，Codeberg从托管所有合法、可运行的代码，转向了强制执行意识形态。作者警告这为未来的禁令开创了先例。作者承认现实问题（LLM滥用基础设施、加密货币骗局），但认为分类禁令并非解决方案；更好的方法包括资源配额、声明和免责声明。

作者还批评了流程：尽管经过了Codeberg的“2026年大会”，用户仅在实施当天通过横幅得知变更，此前毫无讨论。因此，尽管作者没有涉及被禁类别的项目，他仍计划离开Codeberg，搭建个人Git托管服务，将平台自由置于任何单一政策之上。

---

## 38. 使Xen的dom0 I/O路径感知NUMA

**原文标题**: Making Xen's dom0 I/O path NUMA aware

**原文链接**: [https://edera.dev/stories/numa-part-4-closing-the-xen-dom0-i-o-gap](https://edera.dev/stories/numa-part-4-closing-the-xen-dom0-i-o-gap)

## 摘要

本文是NUMA感知型Xen I/O系列文章的第四部分，阐述了Edera如何通过解决两个根本性问题——dom0的内存分配及其缺乏NUMA拓扑感知——来弥补“dom0 I/O缺口”。

**首个发现：dom0的内存分布存在偏差。** 原生Xen通过按物理地址顺序遍历主机E820表来分配dom0内存，将所有内存分配给地址最低的NUMA节点。在8节点主机上，dom0可能消耗节点0-2的100%内存，而节点3-7则完全未使用。Edera改用比例E820裁剪法，将dom0内存按各节点RAM占比分配到所有主机节点上。这是前提条件——若每个节点无内存，拓扑合成将毫无意义。

**使dom0具备NUMA感知能力。** 对于拥有固定vCPU（与主机pCPU一一对应）且CPU数量匹配的PVH dom0，hypervisor现在会合成三部分拓扑信息：
- **SRAT** — 将CPU和内存映射到NUMA节点（每个主机节点对应一个）。
- **SLIT** — 直接复制自主机的真实节点间距离。
- **x2APIC ID** — 编码在CPUID中，与合成的拓扑匹配。

三者缺一不可，因为不同的消费者（内核、hwloc、LLVM OpenMP）读取不同来源。遗漏任何一项都会导致某些工作负载的放置策略在无提示下出错。例如，OpenMP使用CPUID而非sysfs来检测插槽/核心。

**过程中修复的Bug：**  
- 节点编号使用了Xen内部ID而非主机邻近域，导致插槽错配。  
- SRAT中的内存范围被错误地均分给各个vnode；已修复为每个物理NUMA块生成一个vmemrange。  
- 比例E820裁剪在子NUMA系统（Intel SNC、AMD NPS）上失效，因为单个区域跨越两个节点；已通过在裁剪前按节点边界分割区域来修复。

**暴露外部页面的位置信息。** 即使dom0具备NUMA感知能力，后端内核线程仍无法获知通过grant映射的环页面位于哪个NUMA节点。struct page显示`NUMA_NO_NODE`，因为`xen_alloc_unpopulated_pages`不追踪外部帧。Edera新增了一个超级调用`XENMEM_get_mfn_pxms`，用于返回一批机器帧的主机邻近域（仅限硬件域）。随后dom0可调用`pxm_to_node()`获取Linux节点ID，并将内核线程/IRQ引导至正确节点。

**结果：** dom0现在能识别8个真实NUMA节点，存储守护进程和容器运行时能够使用准确的拓扑信息，I/O后端可将工作放置在与其处理的外部数据相同的节点上。本文还提到了一个插曲：在基准测试中发现了多vnode vNUMA中一个长期存在的工具栈bug，并已修复。

---

## 39. 从零开始编写调试器

**原文标题**: Writing a Debugger from Scratch

**原文链接**: [https://www.timdbg.com/posts/writing-a-debugger-from-scratch-part-1/](https://www.timdbg.com/posts/writing-a-debugger-from-scratch-part-1/)

本文描述了作者为了学习Rust并创建一个展示核心调试概念的教育工具，从零开始用Rust编写调试器的历程。重点在于Windows上的实时用户态调试，使用最低级别的操作系统API。

关键点包括：

- **动机**：作者两次离开微软的调试器平台团队，每次离开都开始编写调试器。本轮迭代使用Rust，借助现有crate处理符号和反汇编，从而专注于调试器的基础设计。

- **核心Windows API**：调试器依赖一小套调试函数：`DebugActiveProcess`/`DebugActiveProcessStop`用于附加到现有进程，带`DEBUG_ONLY_THIS_PROCESS`标志的`CreateProcessW`用于以被调试状态启动进程，`WaitForDebugEventEx`用于接收调试事件，以及`ContinueDebugEvent`用于恢复目标进程。

- **事件循环**：调试会话围绕事件循环展开。调试器通过附加到目标进程来注册事件。当事件发生时，操作系统冻结目标进程，并通过包含事件类型、进程/线程ID和事件特定数据的`DEBUG_EVENT`结构通知调试器。调试器可以在调用`ContinueDebugEvent`以允许继续执行之前检查或操纵进程状态。

- **实现概述**：文章展示了来自Rust项目（`dbgrs`）的代码片段。调试器解析命令行参数，使用带`DEBUG_ONLY_THIS_PROCESS`和`CREATE_NEW_CONSOLE`标志的`CreateProcessW`启动目标进程，然后进入无限循环调用`WaitForDebugEventEx`。每个事件都会被打印（例如`CreateProcess`、`LoadDll`、`Exception`）。收到`EXIT_PROCESS_DEBUG_EVENT`时循环结束。`ContinueDebugEvent`调用传递`DBG_EXCEPTION_NOT_HANDLED`，让系统正常处理异常。

- **关键观察**：初始异常事件是来自`ntdll!LdrpDoDebuggerBreak`的初始断点，仅在进程被调试时触发。该断点对于处理断点、单步执行和崩溃事件至关重要，这些将在后续文章中介绍。

- **脚注**提供了额外背景：略过时间旅行调试；附加需要足够权限；推荐使用`WaitForDebugEventEx`以获得Unicode支持；这些API是进程级的，无法模块化使用；可以通过清除PEB中的`BeingDebugged`标志来跳过初始断点。

本文为一个最小化但功能完整的调试器奠定了基础，并计划扩展到异常处理和交互式功能。

---

## 40. 3GPP 第19版

**原文标题**: 3GPP Version 19

**原文链接**: [https://www.3gpp.org/specifications-technologies/releases/release-19](https://www.3gpp.org/specifications-technologies/releases/release-19)

## 3GPP第19版概要

3GPP第19版（Rel-19）是第二个**5G-Advanced**版本，已按计划完成，可完全实施的规范于2025年12月底发布。该版本体现了连续性与创新性的平衡，既巩固了先前版本的内容，又为未来工作奠定了基础。

关键要点：

- **范围**：Rel-19完成了继Rel-18之后的第二个5G-Advanced版本的工作。
- **时间线**：优先议题于2023年12月的TSG #102会议上确定。在台北举办的专题研讨会收到了超过500份报告。完整版本报告（TR 21.919）提供43页演示文稿摘要及80多页完整版两种形式。
- **后续步骤**：第20版（2026年期间）将继续满足商用5G-Advanced需求，同时启动关于需求、系统架构、安全及无线演进的首批6G研究。
- **工作计划**：最新工作计划可在3GPP官网查阅，用于跟踪Rel-19进展。
- **标志**：官方5G-Advanced标志（从Rel-18起引入）将出现在Rel-19交付物上，以帮助区分版本能力。

文章还提供了背景资料的链接，包括TSG SA演示文稿及早期与TSDSI合作的研讨会内容。

---

## 41. 初创公司创始人敦促美国政府不要切断中国的开放权重人工智能。

**原文标题**: Startup founders urge U.S. government not to shut off Chinese open weight AI

**原文链接**: [https://www.politico.com/news/2026/07/22/startup-founders-urge-trump-not-to-shut-off-chinese-open-weight-ai-01008992](https://www.politico.com/news/2026/07/22/startup-founders-urge-trump-not-to-shut-off-chinese-open-weight-ai-01008992)

无法访问文章链接。

---

## 42. 植物大战僵尸 PlayStation 2版

**原文标题**: Plants vs. Zombies for PlayStation 2

**原文链接**: [https://github.com/OptiJuegos/pvz-ps2](https://github.com/OptiJuegos/pvz-ps2)

## 摘要

本文介绍 **re-plants-vs-zombies**，这是宝开《植物大战僵尸：年度版》（GOTY）的一个反编译分支项目。该项目旨在对游戏引擎进行现代化改造，并将其移植到多个平台。

### 主要目标
- 用 **SDL + OpenGL** 替换传统的 DirectDraw/Direct3D7 渲染器。
- 用**跨平台**代码（基于 GLFW）替换仅限 Windows 的代码。
- 用 **SDL Mixer X**（基于 libopenmpt 分叉以支持 MO3 格式）替换 DirectSound/BASS/FMod。
- 添加 **main.pak** 压缩资源支持（建议使用以避免加载缓慢或崩溃）。
- 优化控制台移植的内存使用（部分完成）。

### 支持的平台及状态
- **Windows（SDL2）** – 可用
- **Linux（SDL2）** – 可用
- **Haiku（SDL2）** – 部分可用（无音乐）
- **任天堂 Switch** – 在真机和 Citron 模拟器上可用
- **任天堂 3DS** – 开发中；因内存限制可能仅支持 New 3DS
- **任天堂 Wii U** – 已规划，尚未开始开发

### 如何游玩
- 从 PvZ GOTY（已购买副本）获取原始游戏数据。
- 将 `main.pak` 和 `properties` 文件夹放在可执行文件所在目录（或特定控制台的数据路径）中。
- 或者解压 `.pak` 文件，使用松散文件。

### 项目背景（摘自原始 README）
该项目基于 SexyAppFramework（宝可的开源引擎）以及 Miya（Kopie）对 PvZ v0.9.9 的反编译成果。重点包括：
- 添加 **x64 支持**（部分完成）
- 用 **GLFW** 替换旧渲染器（进行中）
- 集成 **GOTY 特性**：成就（部分完成）、Zombatar
- 未来计划：模组 API（从文件解析僵尸、植物、地图；用脚本支持自定义关卡）

### 安装
- **Windows**：使用 Visual Studio Community – 打开 CMakeSettings.json 所在文件夹，等待缓存生成，然后构建。
- **其他环境（VS Code、MSYS2 等）**：运行 `cmake -G Ninja -B cmake-build`，然后运行 `cmake --build cmake-build`。
- 将生成的可执行文件复制到原始游戏根目录。

### 致谢
- 基于 headshot2017 的分支（其本身源于 Patoke 的 GOTY 反编译项目）。
- 感谢 @rspforhp、@ruslan831、GLFW 团队、宝开以及所有贡献者。

**免责声明**：本项目不含宝开的 IP；用户必须合法拥有原始游戏文件。

---

## 43. IBM PC 第一部分：问世

**原文标题**: The IBM PC, Part 1: Arrival

**原文链接**: [https://technicshistory.com/2026/07/24/the-ibm-pc-part-1-arrival/](https://technicshistory.com/2026/07/24/the-ibm-pc-part-1-arrival/)

20世纪80年代初，个人电脑市场格局分散，雅达利、苹果、康懋达等品牌的产品互不兼容。当时占据主导地位的大型机制造商IBM尚未涉足这一领域。1980年7月，高管比尔·洛提出了一项激进方案：IBM应建立独立部门，采用外部组件销售渠道开发个人电脑。洛离职后，由唐·埃斯特里奇领导的"象棋计划"团队在一年内成功研制出IBM PC。

以下关键决策奠定了其成功基础：
- **开放式架构**：IBM公开技术规格，鼓励第三方软硬件开发——这与其一贯封闭的做法截然相反。
- **第三方组件**：采用坦登的磁盘驱动器、增你智的电源、爱普生的打印机以及英特尔处理器，有效控制成本。
- **处理器选择**：团队选用英特尔8088芯片，这款16位内芯/8位外设的混合处理器在性能与成本间取得平衡。

软件方面的决策同样至关重要。IBM既需要固化于ROM的BASIC语言，也需要磁盘操作系统。当时规模尚小的微软提供了BASIC，但IBM最初希望从数字研究公司获得CP/M操作系统。在与加里·基尔代尔进行了一场气氛紧张的会面后，双方未能达成协议。杰克·萨姆斯转而找到微软，后者得知西雅图计算机产品公司的蒂姆·帕特森编写了一款名为86-DOS的CP/M克隆系统。微软以授权方式向IBM提供该系统并命名为PC-DOS，随后以5万美元及向SCP提供永久授权为代价购入完整版权。这使微软得以将同一系统以MS-DOS之名销售给其他厂商，为其市场主导地位奠定基础。

1981年问世的IBM PC采用开放标准并通过电脑天地等第三方渠道销售。其兼容性叠加IBM的品牌效应催生了大量兼容机，最终实现市场标准化。文章结尾指出，这个生态系统实为"以开放缔造封闭"——IBM开放架构的决定在无意中将控制权拱手让予微软与兼容机厂商，从而重塑了此后数十年的计算机行业格局。

---

## 44. 为何编程如此迷人，却又如此令人痛苦？

**原文标题**: Why is programming so captivating, yet so agonizing?

**原文链接**: [https://elsewhere.news/en/zhenfund/why-is-programming-so-captivating-yet-so-agonizing](https://elsewhere.news/en/zhenfund/why-is-programming-so-captivating-yet-so-agonizing)

## 摘要

本文探讨了编程的双重本质——既令人着迷又令人痛苦——借鉴了弗雷德里克·布鲁克斯五十年前《人月神话》中的文章《焦油坑》。

**焦油坑隐喻**  
布鲁克斯将大型系统编程比作陷入焦油坑的史前巨兽。没有哪个单一问题能击垮项目；真正的危险是无数问题同时涌现并相互纠缠，将整个努力拖入更深处。

**从程序到产品再到系统**  
由作者本人可运行的"程序"只是起点。要成为有用的"产品"，它必须经过泛化、全面测试和文档化——成本至少增加三倍。要成为"系统组件"，它必须符合接口规范、资源预算，并通过组合测试——成本再翻三倍。既是产品又是组件的程序，其成本是简单程序的**九倍**。

**编程之乐**  
- 创造之乐：类似孩子玩泥巴的创意满足感。  
- 成果之悦：看到他人因你的创造而受益。  
- 解谜之趣：环环相扣的逻辑逐步展开。  
- 持续学习：问题很少重复。  
- 工作媒介的易控性：纯粹的思想产物化为现实——移动、打印、绘图、作用于世界。

**编程之苦**  
- 完美的必要性：一个字符错误就会打破魔咒；人类对此并不习惯。  
- 责任大于权力：目标和资源往往超出个人掌控。  
- 依赖他人的程序：设计差、无文档、不完整的代码浪费时间。  
- 调试的苦差：进度在尾声时放缓；顽固的bug比初期bug耗时更长。  
- 过时之虞：你的劳动可能在完成前就已过时——但面对真实需求，实际产品仍具不可替代的价值。

**结论**  
编程是一个困住许多努力的焦油坑，却通过创造价值带来深层次的快乐。真正的挑战是在给定的时间和资源内，为真实问题找到真正解决方案。

---

## 45. 纽约法律后，亚马逊打击卖家使用AI图像

**原文标题**: Amazon cracks down on use of AI images by sellers after New York law

**原文链接**: [https://www.cnbc.com/2026/07/23/amazon-makes-sellers-label-ai-generated-people-in-images-after-ny-law.html](https://www.cnbc.com/2026/07/23/amazon-makes-sellers-label-ai-generated-people-in-images-after-ny-law.html)

亚马逊宣布，第三方卖家必须在包含“人工智能生成人物”的产品图片或视频上添加标签，以响应纽约州一项要求广告中对“合成表演者”保持透明的新法律。该法律于上月生效，规定企业必须在广告中使用数字生成且看似真实人物的内容时予以披露。亚马逊已通知卖家这一政策变更，要求他们在上传前使用特定元数据关键词标记图片及“A+内容”（详情页上的视频或图形）。该要求不涉及包含电视、电子游戏或电影角色的内容，也不涉及经AI修改的真实人物。亚马逊将在适用商品详情页添加标识，但显示标签的具体标准尚不明确。

此举紧随亚马逊对AI更广泛的布局，包括优化面向AI系统的详情页信息、投资于Alexa购物功能，以及推出实时AI生成产品建议。越来越多的第三方卖家正使用亚马逊AI工具生成商品图文。这些卖家贡献了亚马逊商城超过60%的销售额。

目前尚无联邦法律要求披露AI生成的广告内容。纽约州和加利福尼亚州等已采取行动；加州现要求大型AI提供商嵌入水印。其他平台——Meta、TikTok、Pinterest和YouTube——也已添加AI内容标签，尽管TikTok和Meta因未充分标注那些由AI网红发布误导性说法的广告而受到批评。

---

## 46. 利用Linux进程的高性能网络仿真（2022）

**原文标题**: Co-Opting Linux Processes for High-Performance Network Simulation (2022)

**原文链接**: [https://www.usenix.org/conference/atc22/presentation/jansen](https://www.usenix.org/conference/atc22/presentation/jansen)

**《共选Linux进程实现高性能网络模拟》摘要**

该论文荣获USENIX ATC 2022最佳论文奖，提出了一种用于分布式系统高性能、可扩展网络模拟的新型工具**Phantom**。作者Rob Jansen（美国海军研究实验室）、Jim Newsome（Tor项目）和Ryan Wails（乔治城大学与美国海军研究实验室）解决了现有模拟工具的关键局限——这些工具要么在大规模下效率低下，要么受架构问题掣肘。

**核心创新：** Phantom直接在离散事件网络模拟器中以**Linux进程形式执行未经修改的二进制应用**。与需要修改代码或虚拟机的传统方法不同，Phantom通过综合三种关键机制——“共选”真实进程：**高效进程控制**、**系统调用截获**和**数据传输方法**。这使得模拟器能够拦截并重定向所有与网络相关的系统调用（如socket、send、recv）至模拟网络拓扑，同时CPU真实执行无虚拟化开销。

**设计亮点：**
- **系统调用截获**使用轻量级内核模块（或ptrace）捕获网络系统调用，并通过模拟器的离散事件引擎重放。
- **同步时间推进**确保模拟时间确定性前进，实现可复现实验。
- **零拷贝数据传输**在进程与模拟器之间最大限度降低延迟和开销。

**性能评估：** Phantom与Shadow、NS-3及gRaIL在大规模点对点（P2P）和Tor网络模拟中进行了基准测试。关键结果：
- 在大规模P2P基准测试中，速度**比Shadow快2.2倍，比NS-3快3.4倍，比gRaIL快43倍**。
- 在大规模Tor网络模拟中性能与Shadow相当，同时保持完全的应用程序兼容性。

**意义：** Phantom使研究人员能够以高保真度和高性能测试真实、未经修改的分布式系统（如Tor、比特币、P2P协议）。通过结合离散事件模拟的准确性与原生进程执行的实用性，它降低了现实网络实验的门槛。该论文通过USENIX开放获取，并提供幻灯片和视频在线资源。

---

## 47. 树之游戏 – OpenBSD团队基于Git的版本控制

**原文标题**: Game of Trees – Git-based version control from OpenBSD folks

**原文链接**: [https://www.gameoftrees.org/](https://www.gameoftrees.org/)

## 《Game of Trees》(Got) 概述

Game of Trees (Got) 是由 OpenBSD 开发者及贡献者开发的一款版本控制系统。它优先考虑易用性和简洁性而非灵活性，目前仍在积极开发中。虽然其主要目标用户是 OpenBSD 开发者，但 Got 使用 Git 仓库存储版本化数据，从而确保与 Git 的兼容性。用户可以在同一仓库中同时使用 Got 和 Git，并且对于 Got 尚未实现的任何功能，都可以使用 Git 来完成。

主要特性与原则：
- **设计优先考虑简洁性**——相比许多替代方案，灵活性较低但更易于使用。
- **开源**——基于 BSD 许可证发布，可自由使用和再发行。
- **与 Git 共存**——始终可以在同一仓库中使用这两种工具。

该网站提供了丰富的文档与资源：
- 手册页、示例、常见问题解答、源代码
- 与 CVS、SVN 和 Git 的比较
- 在 EuroBSDcon 和 FOSDEM 上的演示（例如关于 `gotd` 和 `gotwebd`）
- 邮件列表、提交通知、IRC 及 Matrix 聊天室

针对多种操作系统提供了安装说明：
- OpenBSD（原生）
- FreeBSD、NetBSD、Linux、DragonflyBSD、MacOS（通过便携版）

还提供了一个名为 **Game of Trees Hub** 的托管服务。

近期发布版本包括：
- Game of Trees 0.127（2026年7月20日）
- Game of Trees 便携版 0.127（2026年6月20日）

页面结尾引用了 OpenBSD 开发者 tedu 的话：“没有关于源代码控制迁移的长篇讨论，任何关于 openbsd 的互联网讨论都不完整”，这凸显了社区对版本控制工具的长期关注。

总之，Got 是来自 OpenBSD 社区的一款基于 BSD 许可证、与 Git 兼容的版本控制系统，专注于简洁性和易用性，并已在多个平台上获得日益增长的支持。

---

## 48. 每天越来越难集中注意力。

**原文标题**: It's getting harder to focus every day

**原文链接**: [https://glyphack.com/attention/](https://glyphack.com/attention/)

作者描述了自己越来越难以集中注意力，不得不设定15分钟倒计时并屏蔽干扰才能写完这篇文章。即使是自己想做的活动，也总被切换任务的冲动打断。他们追溯问题的根源：高中时期（约2015年），他们会避免把手机充电器放在床边，只做有目的性的活动（编程、下棋）。后来，他们发现了浏览HackerNoon和Medium这类网站，这些平台能轻易缓解无聊。工作生活使情况恶化——会议、不间断的聊天（每周8小时的Slack消息）、以及看到同事轻松成功带来的分心常态。大语言模型（LLM）的出现又增加了一个新层面：将任务外包给AI导致了多任务处理、过度刺激，以及对缓慢的手动工作失去耐心。作者发现自己等待LLM回复时，同时思考多个任务，并在得不到即时结果时感到无聊。为了对抗这种情况，他们尝试直播来强制自我问责，之前曾通过Discord协作（现在在伊朗不稳定），并培养了阅读、园艺等线下习惯。目标不是找到完美解决方案，而是理解自己近期效率低下的原因。定时器本身帮助提供了写作的初始动力。

---

## 49. 为什么索尼无法复刻其经典Walkman机型

**原文标题**: Why Sony can't bring back its classic Walkman models

**原文链接**: [https://obsoletesony.substack.com/p/why-sony-cant-bring-back-classic-walkman](https://obsoletesony.substack.com/p/why-sony-cant-bring-back-classic-walkman)

前索尼工程师田中明解释，尽管怀旧情绪和实体媒介兴趣复苏，公司仍无法复刻经典卡带式、CD或MiniDisc版Walkman播放器。他列出了六个关键原因：

1. **零部件已不复存在**——这些播放器使用的微型马达、磁头、光学拾取器及专用集成电路早已停产。供应商已转型，生产设备也已退役。任何新款都需要基于现有组件完全重新设计。

2. **制造技术失传**——后期Walkman型号极其纤薄精密，依赖于专用生产线和调试流程。图纸记录了尺寸，却无法保留产线调校或问题解决中的隐性知识。制造这些精密机械的工厂已不复存在。

3. **经济效益不成立**——新型卡带/CD/MiniDisc播放器市场规模极小（最多数万台）。开发与模具成本无法以此规模回收，低产量更会推高元件价格。最终售价将远超粉丝预期。

4. **MiniDisc媒介正在消失**——索尼已于2025年2月停产可录式MiniDisc光盘，且无后继产品。新款MD播放器推出时空白光盘已停止生产，若不复刻媒介，重新发布便不切实际。

5. **研发资源有限**——索尼专注于安卓系统的高分辨率数字Walkman播放器。公司工程师团队与预算集中于此，而非复活过时的机械格式。

6. **资深工程师流失**——田中本人（曾设计多款Walkman型号）已离开索尼。尽管图纸和专利仍在，但关于部件为何更改、原型机为何失败、生产问题如何解决等深层知识并未完全传承。

田中的解释凸显了当年生产Walkman的世界已基本消失，单纯复刻绝无可能。文章指出索尼极少解释其决策，而田中的第一手描述或许是粉丝能得到的最接近的答案。

---

## 50. 福特将在新自动驾驶系统中使用苹果地图

**原文标题**: Ford Will Use Apple Maps in New Self-Driving System

**原文链接**: [https://www.nytimes.com/2026/07/23/business/ford-apple-software-self-driving.html](https://www.nytimes.com/2026/07/23/business/ford-apple-software-self-driving.html)

无法访问该文章链接。

---

