# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-25.md)

*最后自动更新时间: 2026-07-25 00:19:19*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 2 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 3 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 4 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 5 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 6 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 7 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 8 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 9 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 10 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 11 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 12 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 13 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 14 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 15 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 16 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 17 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 18 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 19 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 20 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 21 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 22 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 23 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 24 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 25 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 26 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 27 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 28 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 29 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 30 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 31 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 32 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 33 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 34 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 35 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 36 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 37 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 38 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 39 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 40 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 41 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 42 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 43 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 44 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 45 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 46 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 47 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 48 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 49 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 50 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 51 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 52 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 53 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 54 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 55 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 56 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 57 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 58 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 59 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 60 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 61 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 62 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 63 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 64 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 65 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 66 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 67 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 68 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 69 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 70 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 71 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 72 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 73 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 74 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 75 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 76 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 77 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 78 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 79 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 80 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 81 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 82 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 83 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 84 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 85 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 86 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 87 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 88 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 89 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 90 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 91 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 92 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 93 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 94 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 95 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 96 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 97 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 98 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 99 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 100 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 101 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 102 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 103 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 104 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 105 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 106 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 107 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 108 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 109 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 110 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 111 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 112 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 113 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 114 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 115 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 116 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 117 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 118 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 119 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 120 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 121 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 122 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 123 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 124 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 125 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 126 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 127 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 128 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 129 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 130 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 131 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 132 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 133 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 134 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 135 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 136 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 137 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 138 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 139 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 140 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 141 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 142 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 143 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 144 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 145 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 146 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 147 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 148 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 149 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 150 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 151 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 152 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 153 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 154 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 155 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 156 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 157 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 158 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 159 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 160 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 161 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 162 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 163 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 164 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 165 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 166 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 167 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 168 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 169 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 170 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 171 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 172 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 173 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 174 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 175 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 176 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 177 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 178 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 179 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 180 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 181 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 182 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 183 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 184 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 185 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 186 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 187 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 188 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 189 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 190 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 191 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 192 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 193 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 194 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 195 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 196 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 197 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 198 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 199 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 200 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 201 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 202 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 203 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 204 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 205 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 206 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 207 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 208 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 209 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 210 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 211 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 212 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 213 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 214 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 215 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 216 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 217 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 218 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 219 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 220 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 221 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 222 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 223 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 224 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 225 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 226 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 227 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 228 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 229 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 230 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 231 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 232 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 233 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 234 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 235 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 236 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 237 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 238 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 239 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 240 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 241 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 242 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 243 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 244 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 245 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 246 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 247 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 248 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 249 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 250 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 251 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 252 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 253 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 254 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 255 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 256 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 257 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 258 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 259 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 260 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 261 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 262 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 263 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 264 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 265 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 266 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 267 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 268 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 269 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 270 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 271 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 272 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 273 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 274 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 275 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 276 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 277 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 278 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 279 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 280 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 281 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 282 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 283 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 284 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 285 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 286 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 287 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 288 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 289 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 290 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 291 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 292 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 293 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 294 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 295 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 296 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 297 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 298 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 299 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 300 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 301 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 302 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 303 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 304 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 305 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 306 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 307 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 308 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 309 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 310 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 311 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 312 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 313 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 314 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 315 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 316 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 317 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 318 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 319 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 320 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 321 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 322 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 323 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 324 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 325 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 326 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 327 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 328 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 329 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 330 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 331 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 332 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 333 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 334 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 335 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 336 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 337 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 338 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 339 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 340 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 341 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 342 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 343 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 344 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 345 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 346 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 347 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 348 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 349 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 350 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 351 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 352 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 353 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 354 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 355 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 356 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 357 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 358 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 359 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 360 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 361 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 362 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 363 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 364 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 365 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 366 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 367 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 368 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 369 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 370 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 371 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 372 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 373 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 374 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 375 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 376 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 377 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 378 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 379 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 380 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 381 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 382 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 383 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 384 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 385 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 386 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 387 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 388 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 389 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 390 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 391 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 392 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 393 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 394 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 395 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 396 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 397 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 398 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 399 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 400 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 401 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 402 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 403 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 404 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 405 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 406 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 407 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 408 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 409 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 410 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 411 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 412 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 413 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 414 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 415 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 416 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 417 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 418 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 419 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 420 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 421 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 422 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 423 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 424 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 425 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 426 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 427 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 428 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 429 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 430 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 431 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 432 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 433 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 434 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 435 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 436 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 437 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 438 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 439 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 440 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 441 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 442 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 443 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 444 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 445 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 446 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 447 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 448 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 449 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 450 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 451 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 452 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 453 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 454 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 455 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 456 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 457 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 458 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 459 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 460 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 461 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 462 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 463 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 464 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 465 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 466 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 467 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 468 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 469 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 470 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 471 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 472 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 473 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 474 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 475 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 476 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 477 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 478 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 479 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 480 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 481 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 482 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 483 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 484 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 485 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 486 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 487 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 488 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
