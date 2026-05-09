# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-09.md)

*最后自动更新时间: 2026-05-09 20:34:07*
## 1. Bun的Rust实验性重写在Linux x64 glibc上达到99.8%的测试兼容性

**原文标题**: Bun's experimental Rust rewrite hits 99.8% test compatibility on Linux x64 glibc

**原文链接**: [https://twitter.com/jarredsumner/status/2053047748191232310](https://twitter.com/jarredsumner/status/2053047748191232310)

**摘要**

本文报道称，快速JavaScript运行时Bun在其实验性Rust重写项目中取得了重大进展。新版本在**Linux x64 glibc**上实现了**99.8%的测试兼容性**，意味着几乎所有现有测试均已通过。这标志着Bun的核心从Zig迁移到Rust过程中的重要里程碑，在提升性能与可维护性的同时，保持了与原始运行时近乎完美的兼容性。该项目持续致力于实现全面稳定与功能对等。

---

## 2. 瑞士互联网档案馆

**原文标题**: Internet Archive Switzerland

**原文链接**: [https://blog.archive.org/2026/05/06/internet-archive-switzerland-expanding-a-global-mission-to-preserve-knowledge/](https://blog.archive.org/2026/05/06/internet-archive-switzerland-expanding-a-global-mission-to-preserve-knowledge/)

文章宣布成立**互联网档案馆瑞士分部**，这是一个位于圣加仑的非营利基金会，由布鲁斯特·卡利创立。其使命是推动互联网档案馆实现“普及所有知识”的目标。

关键要点：
- **保存重点**：该基金会将重点关注全球濒危档案的保存，并记录当前的“生成式人工智能浪潮”。
- **联合国教科文组织会议**：计划于2026年11月在巴黎召开具体会议，探讨保护濒危档案。
- **合作伙伴关系**：该基金会正与**圣加仑大学计算机科学学院**（由达米安·博特教授领导）合作开展**生成式人工智能档案项目**，旨在存档人工智能模型。
- **选址意义**：圣加仑因其千年档案保存与学术研究传统而被选中，提供了稳定性和浓厚的学术环境。
- **领导层**：罗曼·格里斯费尔德担任执行董事。
- **网络**：互联网档案馆瑞士分部加入了一个由独立且目标一致的组织（包括互联网档案馆、互联网档案馆加拿大分部和互联网档案馆欧洲分部）组成的全球网络，共同构建分布式、具有韧性的数字图书馆。

---

## 3. cPanel黑色星期：攻击4.4万台服务器后修补3个新漏洞

**原文标题**: CPanel's Black Week: 3 New Vulnerabilities Patched After Attack on 44k Servers

**原文链接**: [https://www.copahost.com/blog/cpanels-black-week-three-new-vulnerabilities-patched-after-ransomware-attack-on-44000-servers/](https://www.copahost.com/blog/cpanels-black-week-three-new-vulnerabilities-patched-after-ransomware-attack-on-44000-servers/)

**摘要：cPanel 紧急安全补丁（2026 年 5 月 8 日）**

在通过 CVE-2026-41940 认证绕过漏洞（CVSS 9.8）导致 44,000 台服务器遭勒索软件大规模攻击后，cPanel 于 2026 年 5 月 8 日发布了第二个紧急安全补丁。该补丁修复了在此次事件引发的深度代码审计中新发现的三个漏洞。

**三个漏洞如下：**
- **CVE-2026-29201（CVSS 4.3）：** 因输入验证不足导致任意文件读取，允许已认证攻击者访问敏感配置文件。
- **CVE-2026-29202（CVSS 8.8）：** 通过 `create_user` API 执行任意 Perl 代码，允许共享主机上的任何认证用户运行系统级代码。
- **CVE-2026-29203（CVSS 8.8）：** 通过不安全的符号链接处理实现权限提升，允许修改敏感系统文件的权限。

**需立即执行的操作：**
1. 运行 `/scripts/upcp` 应用补丁。
2. 重启 cpsrvd（`/scripts/restartsrv_cpsrvd`）。
3. 使用 `/usr/local/cpanel/cpanel -V` 验证补丁版本。

**附加建议：** 审查自 2026 年 2 月 23 日以来的访问日志，排查被攻陷迹象，并扫描是否存在指示勒索软件已被部署的 `.sorry` 文件。如果已禁用自动更新，请启用。

文章指出，在 AI 辅助研究推动和补丁窗口期不断缩短的趋势下，漏洞发现速度正在加快，而本次事件正是这一趋势的体现。

---

## 4. 我已禁用查询字符串

**原文标题**: I’ve banned query strings

**原文链接**: [https://chrismorgan.info/no-query-strings](https://chrismorgan.info/no-query-strings)

文章作者宣布在其网站chrismorgan.info上全面禁止未经授权的查询字符串。他们认为，在URL中添加跟踪参数（例如`?ref=example.com`或UTM标签）是对用户的滥用，此类数据应通过HTTP Referer标头收集。作者反感他人出于分析或营销目的修改其URL，并主张自己拥有对网站的控制权。

目前，该网站不使用任何查询字符串。若未来引入，仅允许已知且经授权的参数。作者承认过去用于缓存清除的URL（如使用`?t=`或`?h=`）可能会失效，但认为这可以接受，因为不应存在针对这些URL的合法请求。该策略已在网站的Caddyfile配置中实施。作者最后重申对自己网站的主权，并尊重他人对其网站的同等权利。

---

## 5. 展示HN：我用自己编写的编程语言做了一个飞行模拟器

**原文标题**: Show HN: I wrote a flight simulator in my own programming language

**原文链接**: [https://github.com/navid-m/flightsim](https://github.com/navid-m/flightsim)

本文介绍了一款使用作者自创编程语言Spectre构建的飞行模拟器。用户需先安装Spectre工具链，然后执行命令`spectre build dev`来构建和运行该模拟器。操作控制映射如下：A/D键控制偏航，上下箭头键控制俯仰，W/S键控制油门，V/C键切换第三人称视角。该模拟器需要安装SDL2，且仅在Linux和macOS系统上测试过。该项目以"Show HN"帖子形式分享，突出展现了自定义语言与实际应用的融合。

---

## 6. Zed编辑器主题构建器

**原文标题**: Zed Editor Theme-Builder

**原文链接**: [https://zed.dev/theme-builder](https://zed.dev/theme-builder)

这篇文章看起来是一个名为“Zed编辑器主题构建器”的讽刺性编程项目，但主要内容是一个幽默的React组件`MeetingScheduler`，位于文件`scheduler.tsx`中。关键信息包括：

1. **主题构建器背景**：界面顶部提到一个仅支持桌面的Zed编辑器主题构建器，提供探索主题和自定义颜色/语法选项。

2. **讽刺性会议安排组件**：主要代码是对会议安排工具的戏仿，包含：
   - 会议类型（带有讽刺性字段，如`couldHaveBeenAnEmail`和`snacksProvided`）
   - 一个验证函数（`validateMeeting`），将参会人数限制在1-49人
   - 常量数组`MEETING_EXCUSES`，包含陈词滥调（“抱歉，我刚被静音了”）
   - `MeetingScheduler`组件，用于跟踪会议、轮换借口，并通过时间间隔逐步耗尽“开发者理智”
   - 故意有缺陷的代码（例如，`actuallyStartsOnTime: "never"`被赋值为字符串而非数字）

3. **界面元素**：包含标题输入框、持续时间下拉菜单（30分钟到“全天”）和提交按钮的表单。已安排的会议列表将参会人数幽默地标记为“受害者”。

4. **版本控制背景**：侧边栏引用了一个Git仓库（“未提交的更改”），包含如`coffee.ts`、`excuses.ts`和`meeting-survival.ts`等跟踪/未跟踪文件，强化了工作台主题。

这篇文章将一个功能性UI原型与关于过度会议和开发者倦怠的职场讽刺相结合。

---

## 7. 分发Mac软件正在让我的皮质醇水平飙升

**原文标题**: Distributing Mac software is increasing my cortisol levels

**原文链接**: [https://blog.kronis.dev/blog/apple-is-increasing-my-cortisol-levels](https://blog.kronis.dev/blog/apple-is-increasing-my-cortisol-levels)

这篇文章是一位开发者试图分发用Go语言编写的简单macOS工具却受阻的沮丧记述。作者描述了苹果Gatekeeper将未签名的软件隔离，要求用户通过终端手动覆盖——这对于一款小额“随心付”工具而言体验极差。

为了解决这个问题，作者不情愿地加入了苹果开发者计划，批评其高昂的年费（99美元/年）是唯利是图、对业余开发者不友好。即便付费后，身份验证流程也堪称噩梦：MacBook的摄像头无法拍清文件照片，苹果拒绝接受上传的扫描件，而泛泛的错误导致多次重启。作者最终用iPhone相机成功验证，却又遭遇“等待邮件”的模棱两可提示以及桌面应用未更新的问题。

文章将苹果昂贵繁琐的生态与作者国家更便捷安全的数字身份解决方案（如SmartID、eParaksts）对比，称波罗的海小国的服务超越这家万亿美元公司简直荒谬。作者以对苹果供应商锁定、高成本和糟糕开发者体验的尖锐批评结尾，最终总结道“去你该死的生态系统”。

---

## 8. 委托大语言模型处理文档时，它们会破坏你的文件

**原文标题**: LLMs corrupt your documents when you delegate

**原文链接**: [https://arxiv.org/abs/2604.15597](https://arxiv.org/abs/2604.15597)

**《当您委托时，大语言模型会破坏您的文档》摘要**

这篇于2026年4月发表在arXiv上的论文，研究了大型语言模型在委托工作流（如“氛围编码”或自动化文档编辑）中的可靠性。作者提出了**DELEGATE-52**基准测试，模拟涵盖编码、晶体学和乐谱等52个专业领域的长时间、多步骤文档编辑任务。

通过对19种不同大语言模型的测试，该研究揭示了一个系统性问题：当前模型在**长时间工作流中会逐渐降低文档质量**，引入稀疏但严重的错误，悄无声息地破坏内容。即使是性能最前沿的模型（如Gemini 3.1 Pro、Claude 4.6 Opus、GPT 5.4），在完成扩展任务后平均也会破坏**25%的文档内容**，其他模型的表现则更差。

主要发现包括：
- **智能体工具的使用**在DELEGATE-52上并未提升性能。
- 随着**文档规模增大**、交互序列变长以及存在干扰文件，**退化程度加剧**。
- 错误并非随机出现，而是随时间累积，这使得大语言模型在处理持续、高风险的编辑任务时成为**不可靠的委托对象**。

作者得出结论，当前大语言模型在委托工作上缺乏必要的可信度，因为它们会引入不断累积的错误，在毫无预警的情况下悄然破坏文档。

---

## 9. 谷歌为去谷歌化的安卓用户破坏了reCAPTCHA

**原文标题**: Google broke reCAPTCHA for de-googled Android users

**原文链接**: [https://reclaimthenet.org/google-broke-recaptcha-for-de-googled-android-users](https://reclaimthenet.org/google-broke-recaptcha-for-de-googled-android-users)

**摘要：**

尽管标题具有误导性，写到“谷歌弄坏了reCAPTCHA，导致去谷歌化的安卓用户体验不佳”，但文章主要聚焦于Brave软件公司及其以隐私为核心的新产品：一款“精简版”浏览器或服务。

核心要点是，Brave推出了一款面向特定隐私用户的简化、更轻量的版本。该版本移除了一些功能，以提供更精简、更基础的使用体验。文章强调，尽管该产品“出乎意料地流畅”，但其必要性完全取决于用户对隐私的优先级考量。

文章区分了两类隐私用户：一类追求最大程度的匿名性和控制权（可能更偏好精简版，因为其攻击面更小、数据收集更少）；另一类则希望在隐私与便利之间取得平衡（可能会怀念被移除的功能）。文章总结道，精简版Brave是一款面向特定受众的小众产品，而非通用升级。标题中提到的reCAPTCHA问题并非文章的核心焦点。

---

## 10. 每日交易数十亿美元的生产工程 [视频]

**原文标题**: Production engineering when trading billions of dollars a day [video]

**原文链接**: [https://www.youtube.com/watch?v=zR9PpXWsKFQ](https://www.youtube.com/watch?v=zR9PpXWsKFQ)

**摘要**

本文并非一篇新闻文章或视频脚本，不涉及高频交易中的生产工程。相反，所提供的文本是YouTube网页的页脚/法律免责声明，很可能附加在一段具有上述标题的视频中。

内容并未讨论“生产工程”或“每日交易数十亿美元”。这是一份标准的YouTube法律声明，涵盖以下几点：版权信息、联系YouTube报告政策违规的说明、该平台由Google LLC托管、以及关于视频中展示产品的免责声明。它明确指出YouTube不销售这些产品，且不对其负责，并说明商家应承担责任。页脚还包括Google的公司地址、韩国的免费支持电话号码、以及用于举报非法拍摄内容的邮箱。最后，注明该页面是根据Google规则创建的，并包含一个日期（“© 2026 Google LLC”）。

**结论：** 该文本未提供任何关于视频主题（即大宗交易中的生产工程）的实质信息，纯粹是YouTube平台的技术性和法律免责声明。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 2 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 3 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 4 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 5 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 6 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 7 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 8 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 9 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 10 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 11 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 12 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 13 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 14 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 15 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 16 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 17 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 18 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 19 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 20 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 21 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 22 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 23 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 24 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 25 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 26 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 27 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 28 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 29 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 30 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 31 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 32 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 33 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 34 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 35 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 36 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 37 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 38 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 39 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 40 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 41 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 42 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 43 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 44 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 45 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 46 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 47 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 48 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 49 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 50 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 51 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 52 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 53 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 54 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 55 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 56 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 57 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 58 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 59 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 60 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 61 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 62 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 63 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 64 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 65 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 66 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 67 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 68 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 69 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 70 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 71 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 72 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 73 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 74 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 75 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 76 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 77 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 78 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 79 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 80 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 81 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 82 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 83 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 84 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 85 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 86 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 87 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 88 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 89 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 90 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 91 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 92 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 93 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 94 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 95 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 96 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 97 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 98 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 99 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 100 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 101 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 102 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 103 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 104 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 105 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 106 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 107 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 108 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 109 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 110 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 111 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 112 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 113 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 114 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 115 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 116 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 117 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 118 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 119 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 120 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 121 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 122 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 123 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 124 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 125 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 126 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 127 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 128 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 129 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 130 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 131 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 132 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 133 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 134 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 135 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 136 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 137 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 138 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 139 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 140 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 141 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 142 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 143 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 144 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 145 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 146 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 147 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 148 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 149 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 150 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 151 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 152 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 153 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 154 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 155 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 156 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 157 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 158 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 159 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 160 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 161 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 162 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 163 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 164 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 165 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 166 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 167 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 168 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 169 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 170 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 171 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 172 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 173 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 174 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 175 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 176 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 177 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 178 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 179 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 180 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 181 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 182 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 183 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 184 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 185 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 186 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 187 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 188 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 189 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 190 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 191 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 192 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 193 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 194 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 195 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 196 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 197 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 198 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 199 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 200 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 201 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 202 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 203 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 204 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 205 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 206 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 207 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 208 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 209 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 210 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 211 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 212 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 213 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 214 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 215 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 216 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 217 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 218 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 219 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 220 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 221 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 222 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 223 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 224 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 225 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 226 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 227 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 228 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 229 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 230 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 231 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 232 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 233 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 234 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 235 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 236 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 237 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 238 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 239 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 240 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 241 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 242 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 243 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 244 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 245 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 246 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 247 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 248 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 249 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 250 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 251 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 252 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 253 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 254 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 255 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 256 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 257 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 258 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 259 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 260 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 261 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 262 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 263 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 264 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 265 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 266 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 267 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 268 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 269 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 270 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 271 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 272 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 273 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 274 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 275 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 276 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 277 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 278 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 279 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 280 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 281 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 282 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 283 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 284 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 285 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 286 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 287 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 288 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 289 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 290 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 291 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 292 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 293 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 294 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 295 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 296 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 297 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 298 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 299 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 300 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 301 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 302 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 303 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 304 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 305 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 306 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 307 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 308 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 309 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 310 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 311 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 312 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 313 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 314 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 315 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 316 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 317 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 318 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 319 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 320 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 321 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 322 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 323 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 324 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 325 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 326 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 327 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 328 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 329 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 330 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 331 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 332 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 333 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 334 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 335 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 336 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 337 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 338 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 339 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 340 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 341 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 342 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 343 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 344 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 345 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 346 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 347 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 348 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 349 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 350 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 351 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 352 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 353 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 354 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 355 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 356 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 357 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 358 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 359 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 360 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 361 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 362 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 363 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 364 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 365 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 366 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 367 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 368 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 369 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 370 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 371 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 372 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 373 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 374 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 375 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 376 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 377 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 378 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 379 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 380 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 381 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 382 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 383 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 384 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 385 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 386 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 387 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 388 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 389 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 390 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 391 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 392 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 393 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 394 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 395 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 396 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 397 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 398 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 399 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 400 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 401 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 402 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 403 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 404 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 405 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 406 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 407 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 408 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 409 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 410 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 411 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 412 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 413 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
