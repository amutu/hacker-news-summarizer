# Hacker News 热门文章摘要 (2026-05-09)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 在Acorn Archimedes上的PipeDream

**原文标题**: PipeDream on the Acorn Archimedes

**原文链接**: [https://stonetools.ghost.io/pipedream-archimedes/](https://stonetools.ghost.io/pipedream-archimedes/)

这篇文章探讨了Acorn Archimedes电脑、其创新但另类的RISC OS操作系统，以及独特的生产力套件PipeDream。文章着重指出，这三个组成部分——一款新颖的ARM处理器、一个非标准的操作系统、一个颠覆范式的应用程序——共同形成了一条“计算死胡同”，然而它们各自都惊人地长寿。

**要点：**
- **硬件：** Acorn公司因发现16位芯片性能不足，为Archimedes开发了ARM处理器。ARM后来在Acorn之外蓬勃发展，为大多数智能手机和苹果生态系统提供动力。
- **操作系统：** RISC OS（最初名为“Arthur”，是一个临时解决方案）是一个协作式多任务WIMP系统，配备三键鼠标（选择、菜单、调整）。其独特之处包括通过中键打开的上下文菜单、拖放式文件保存以及“图标托盘”。作者认为它令人迷失方向，但承认其创新之处，如可缩放抗锯齿字体。
- **PipeDream：** 开发者Mark Colton设想了一个集文字处理、电子表格和数据库功能于一体的单一应用程序。与现代套件不同，PipeDream将所有文档视为灵活的网格，文本、数字和公式在其中无缝共存。它最初诞生于Cambridge Z88，后被移植到Archimedes。
- **用户体验：** 文章详细描述了RISC OS陡峭的学习曲线——不直观的“调整”按钮行为、手动输入路径保存、每次启动时重置设置。PipeDream的统一文档模型因其雄心而受到称赞，但也被指出需要用户进行重大的思维转变。

---

## 12. Meta拥抱人工智能让员工苦不堪言

**原文标题**: Meta's Embrace of A.I. Is Making Its Employees Miserable

**原文链接**: [https://www.nytimes.com/2026/05/08/technology/meta-ai-employees-miserable.html](https://www.nytimes.com/2026/05/08/technology/meta-ai-employees-miserable.html)

无法访问文章链接。所提供的网址似乎指向未来的日期（2026年5月8日），我无法实时浏览互联网或访问外部网站。请直接提供文章文本以供摘要。

---

## 13. 使用Claude Code：HTML那不可思议的高效

**原文标题**: Using Claude Code: The unreasonable effectiveness of HTML

**原文链接**: [https://twitter.com/trq212/status/2052809885763747935](https://twitter.com/trq212/status/2052809885763747935)

**《使用Claude Code：HTML的非同寻常效用》摘要**

本文发布于X（原推特），强调了在使用Anthropic的Claude Code工具时，HTML所展现出的意外强大与高效。核心观点是，HTML不仅是网页的标记语言，更是与AI编程助手交互的高效媒介。

要点：

1.  **HTML作为通用接口**：作者认为，HTML结构化、层级化的特性使其成为向AI模型传达复杂布局、数据结构及UI组件的理想“语言”。Claude Code能够以惊人的精确度解析和生成HTML。
2.  **非同寻常的效用**：此表述意指HTML虽为人类可读的网页内容而设计，但在AI代码生成中却表现出色。Claude Code可依据简单的HTML代码片段，即刻生成功能完备的应用程序、可视化内容或交互式原型。
3.  **实际应用**：示例包括直接根据HTML规范构建仪表盘、数据表格、图表和表单。AI可理解语义化HTML、无障碍属性及响应式设计原则。
4.  **与其他格式的对比**：在描述视觉和交互元素时，HTML常优于JSON、Markdown或纯文本，因为它同时包含了结构与样式提示。
5.  **对开发者的启示**：文章建议开发者不应低估HTML在AI编码时代的作用。精通HTML能让用户获得一个强有力的工具，用以指导代码生成型AI工具。

总体结论是，在软件开发的人机协作中，HTML依然是一种出人意料地多功能且高效的工具。

---

## 14. ROKR木质打字机：细节探秘

**原文标题**: The ROKR wooden typewriter: a closer look

**原文链接**: [http://writingball.blogspot.com/2026/05/the-rokr-wooden-typewriter-closer-look.html](http://writingball.blogspot.com/2026/05/the-rokr-wooden-typewriter-closer-look.html)

本文探讨了ROKR木制打字机，这款来自中国公司ROKR的激光切割模型套件，尽管被警告"非打字工具"，却出人意料地具备打字功能。它能打出大写字母，配有滑动滚轴和墨带，售价119.99美元——为用户提供了一款经济实惠的新型书写设备，尽管手感不如老式安德伍德打字机那般流畅。

文章还附有对设计团队的专访，由王玉珍领衔，该团队以安德伍德五号打字机为原型进行设计。为保证结构稳定和节省空间，团队有意省略了小写字母键和数字键，并使用木材、塑料和金属重新设计了内部机械结构（按键、击打和换行系统），以适应DIY组装。此外还特别加入金属"砧板"，以还原真实的打字手感与声响。

这款打字机共有两个版本：经典黑金款与"魔法（童话）"款，分别面向不同的审美偏好与受众群体。整个项目耗时约1.5年，面临的挑战包括弹簧安装以及如何在真实感与可组装性之间取得平衡。团队已为新型机械结构申请了发明专利。未来构想包括复刻织布机或机械计算器。归根结底，ROKR打字机旨在提供一种动手实践的怀旧打字体验，打破数字世界的单调乏味。

---

## 15. 网络自由至上主义的虚伪

**原文标题**: The hypocrisy of cyberlibertarianism

**原文链接**: [https://matduggan.com/the-intolerable-hypocrisy-of-cyberlibertarianism/](https://matduggan.com/the-intolerable-hypocrisy-of-cyberlibertarianism/)

文章批判了互联网的核心理念——网络自由主义，认为这是一种虚伪且失败的承诺。文章首先承认互联网的实际益处（如GPS终结了纸质地图和迷路自驾游的时代），但指出数字世界建立在“谎言”之上。作者追溯这一谎言至20世纪90年代的宣言，如约翰·佩里·巴洛的《网络空间独立宣言》和《知识时代大宪章》，这些宣言倡导激进个人主义、自由市场绝对主义和技术决定论，同时承诺社群主义乌托邦。

关键人物如巴洛（曾是感恩而死乐队作词人及迪克·切尼竞选经理）和乔治·吉尔德，认为政府监管已过时，并警告社会必须“跟上”否则将被淘汰。作者引用了兰登·温纳1997年的批评，该批评预言这些理想实际上会赋予大公司而非个人权力。温纳指出“追求自由的个人”与追求利润的企业被混为一谈——这一混淆允许公司将放松监管伪装成个人自由。

文章总结道，网络自由主义带来了与其承诺相反的结果：权力集中、企业主导，以及社会危害（如骚扰、剥削）且无可追究的集体责任。一个关键问题——互联网的成果是否值得推广——至今仍未得到行业解答。

---

## 16. LED是如何制造的（2014）

**原文标题**: How LEDs are made (2014)

**原文链接**: [https://learn.sparkfun.com/tutorials/how-leds-are-made/all](https://learn.sparkfun.com/tutorials/how-leds-are-made/all)

**《LED是如何制造的》（2014）摘要**

本文详细记录了参观中国云森LED工厂的过程，逐步解释了直插式LED的制造工艺。

**基本部件：** 生产过程始于以片材形式购入的原始LED晶粒（微型硅芯片）。这些晶粒被放置到冲压金属引线框架上，该框架为每个LED提供基本结构。

**机器设备：**
1.  **固晶机：** 机器将粘合剂涂覆到每个阴极杯中。工人手动将晶粒从薄膜上对准并拨到框架上，每分钟完成超过80次放置。
2.  **焊线机：** 自动机器将一根细如发丝的金线从晶粒顶部连接到阳极引线。

**模具与测试：**
-   **封装：** 引线框架被放入注塑模具中，注入环氧树脂以形成LED外形。形状受模具脱模机构限制，因此定制形状较为困难。
-   **固化：** LED被烘烤45分钟，再经过8至12小时使环氧树脂完全硬化。
-   **隔离与测试：** 切割连接引脚的过多金属。使用弹簧针测试每个LED的电流是否正常；不合格品被移除。随后阳极与引线框架分离。

**关键见解：** 整个生产过程在开放环境中进行，而非洁净室。该行业依赖于专业化的互联供应商，这使得完全定制LED设计颇具挑战。

---

## 17. 人月神话

**原文标题**: Mythical Man Month

**原文链接**: [https://martinfowler.com/bliki/MythicalManMonth.html](https://martinfowler.com/bliki/MythicalManMonth.html)

本文由马丁·福勒于2026年撰写，探讨了弗雷德·布鲁克斯1975年出版的经典著作《人月神话》。福勒指出，尽管书中部分内容已显陈旧，但许多观点仍具现实意义。该书提出了**布鲁克斯法则**："向已延误的软件项目添加人力，只会使其更加延期"，这是因为人员之间沟通路径呈指数级增长。

福勒认为**概念完整性**是他从书中获得的最持久启示。布鲁克斯主张：一套设计理念统一的系统，即便舍弃某些功能，也优于包含众多优秀但互不协调理念的系统。这种完整性源于简洁与直接，影响了福勒的整个职业生涯。

最后，福勒推荐该书的纪念版，其中收录了布鲁克斯同样具有深远影响力的1986年论文**《没有银弹》**。

---

## 18. 最近使用ChatGPT 5.5 Pro的一次经历

**原文标题**: A recent experience with ChatGPT 5.5 Pro

**原文链接**: [https://gowers.wordpress.com/2026/05/08/a-recent-experience-with-chatgpt-5-5-pro/](https://gowers.wordpress.com/2026/05/08/a-recent-experience-with-chatgpt-5-5-pro/)

**摘要：**  
本文描述了ChatGPT 5.5 Pro如何在一小时内完成博士级数学研究，解决了梅尔·纳桑森关于加性数论论文中的开放问题。作者最初提示该大语言模型改进一个关于特定和集大小所需直径的界。ChatGPT通过使用比纳桑森原始构造更高效的西顿集，得出了一个二次上界，该上界是最优的。  

随后，该大语言模型将结果推广至受限和集，并进一步解决了一个更复杂的问题：对于一般的\(h\)重和集，界定实现所有可能和集大小所需的最小直径。基于麻省理工学院学生艾萨克·拉贾戈帕尔的框架，ChatGPT首先将指数界改进为\(O(\exp(n^{1-\varepsilon}))\)，并在进一步提示后得出了一个多项式界。拉贾戈帕尔审阅了这两个结果并确认其正确性，指出关键思想（构建类似于“压缩到多项式区间内的半个几何级数”的集合）既原创又巧妙。  

文章最后讨论了其意义：若此类AI生成结果由人类完成，则具备可发表性，但作者质疑如何存档与归属。建议包括设有审核机制并辅以人工或证明助手验证的存储库。拉贾戈帕尔的客座章节解释了ChatGPT构造背后的数学思想，包括使用\(B_h\)集与来自有限域的\(d\)-游离集。

---

## 19. OpenAI的WebRTC问题

**原文标题**: OpenAI’s WebRTC problem

**原文链接**: [https://moq.dev/blog/webrtc-is-the-problem/](https://moq.dev/blog/webrtc-is-the-problem/)

**摘要：**

文章指出OpenAI使用WebRTC实现语音AI存在根本性缺陷。作者作为曾在Twitch和Discord部署SFU的WebRTC专家，详细阐述了几个核心问题：

1. **产品适配性差：** WebRTC专为低延迟会议设计，在网络拥塞时会激进地丢弃音频包。对于语音AI，用户宁愿等待完整提示词也不愿丢失数据，但WebRTC极小的抖动缓冲区和缺乏音频重传（NACK）机制使其无法满足这一需求。

2. **人为延迟：** 由于TTS生成音频的速度快于实时播放，WebRTC基于时间戳的渲染机制迫使OpenAI加入人为延迟，之后仍然丢弃数据包——这完全违背了初衷。

3. **扩展性噩梦：** WebRTC的连接模型（使用临时端口、ICE/DTLS/SCTP）需要8次以上往返才能建立连接，使负载均衡复杂化，且在IP地址变更时会断开连接。OpenAI的自定义负载均衡器不得不用Redis状态存储作为权宜之计。

4. **协议分支化倾向：** 浏览器端实现由谷歌掌控，迫使应用要么分支要么完全替换WebRTC。

**作者的解决方案：** 用**QUIC**（通过WebTransport）替代WebRTC。QUIC通过以下方式解决这些问题：
- 基于**连接ID**而非IP/端口的路由（应对网络变化）。
- 无需共享数据库的**无状态负载均衡**（QUIC-LB）。
- **任播+单播**实现无需负载均衡器的无缝切换。
- **1次RTT**建立连接（而非8次以上）。

**最终结论：** WebRTC损害了产品质量和扩展性。对于语音AI，应通过WebSocket传输音频，或迁移至QUIC/WebTransport。

---

## 20. “脏片段”漏洞（CVE-2026-43284）：八天内第二个Linux根权限利用漏洞

**原文标题**: "Dirty Frag" (CVE-2026-43284): The Second Linux Root Exploit in Eight Days

**原文链接**: [https://www.copahost.com/blog/dirty-frag-cve-2026-43284/](https://www.copahost.com/blog/dirty-frag-cve-2026-43284/)

**《"Dirty Frag"文章摘要》**

2026年5月7日，八天内第二个重大Linux内核root漏洞"Dirty Frag"（CVE-2026-43284和CVE-2026-43500）被披露。该漏洞允许任何在服务器上拥有代码执行权限的攻击者获取root访问权限。该利用结合了两个漏洞：内核IPsec/ESP网络数据包处理中的一个确定性逻辑缺陷（内核错误地信任了共享内存），以及第二个漏洞（CVE-2026-43500）。两者单独均不完全可靠，但串联使用可在大多数自2017年起构建的Linux发行版上直接实现root权限提升。

此前八天披露了类似的基于页面缓存写入的漏洞"Copy Fail"（CVE-2026-31431）。受影响的发行版包括RHEL、AlmaLinux、Debian、Ubuntu和Fedora。该威胁对网络托管服务至关重要，因为单个被攻破的账户可能导致服务器完全沦陷。

修复方案需要更新内核（5月8日起已有补丁可用）并重启。临时缓解措施包括阻断存在漏洞的`esp4`、`esp6`和`rxrpc`模块，但这会破坏IPsec网络。Dirty Frag和Copy Fail的补丁可通过一次内核更新同步应用。鉴于该漏洞利用已公开且提前披露，攻击者可在数小时内利用未修补的服务器，因此立即修补至关重要。

---

## 21. 美国地毯之都：一个帝国及其有毒遗产

**原文标题**: America's carpet capital: an empire and its toxic legacy

**原文链接**: [https://apnews.com/projects/pfas-forever-stained/](https://apnews.com/projects/pfas-forever-stained/)

以下是文章的简洁摘要：

本文调查了佐治亚州道尔顿市——被称为“世界地毯之都”的地毯产业遗留的有毒污染问题。几十年来，肖氏工业公司和莫霍克工业公司等工厂一直使用PFAS（永久性化学物质）来提供防污功能，并通过废水将其排放到环境中。尽管3M和杜邦公司知道这些化学物质会在人体血液中积累并构成健康风险，但它们仍继续生产。2000年，在3M公司因环保局压力宣布将逐步淘汰Scotchgard产品后，肖氏工业公司首席执行官鲍勃·肖质问3M公司，已经售出的数百万块地毯该如何处理。

该地区成为PFAS污染热点，污染了康纳索加河，并影响了佐治亚州和亚拉巴马州数十万人的饮用水。地毯企业高管将责任归咎于化学品供应商，称供应商向他们保证产品是安全的。与此同时，当地公用事业部门与行业协调，保护企业免受监管。如今，像多莉·贝克这样的居民体内的PFAS水平已危险地偏高，但医学上却几乎无法解答。该行业直到2019年才在美国生产中停止使用PFAS。尽管诉讼不断、污染仍在持续，佐治亚州的监管体系却几乎无所作为，而近期联邦层面的PFAS保护措施也面临被撤销的风险。

---

## 22. GrapheneOS修复了谷歌拒绝修补的Android VPN泄露问题

**原文标题**: GrapheneOS fixes Android VPN leak Google refused to patch

**原文链接**: [https://cyberinsider.com/grapheneos-fixes-android-vpn-leak-google-refused-to-patch/](https://cyberinsider.com/grapheneos-fixes-android-vpn-leak-google-refused-to-patch/)

**摘要：** 注重隐私的安卓系统GrapheneOS发布了更新（2026050400），修复了安卓网络栈中的一个VPN绕过漏洞。该漏洞由安全研究员“lowlevel/Yusuf”披露，允许拥有标准权限（INTERNET和ACCESS_NETWORK_STATE）的应用泄露用户的真实IP地址——即使安卓的“始终开启VPN”和“阻止非VPN连接”保护功能已启用。

该问题影响安卓16，源于一项新的QUIC连接关闭功能。它允许应用向有特权的系统进程system_server注册任意UDP数据负载。当应用的套接字被销毁时，不受VPN路由约束的system_server会直接通过网络传输该负载，从而绕过VPN隧道。

谷歌将该报告归类为“不修复（不可行）”和“NSBC”（非安全公告类别），并于4月29日授权公开披露。GrapheneOS的回应是禁用这项有问题的优化。该更新还包含2026年5月的安全补丁级别、hardened_malloc改进、Linux内核更新、对libpng中CVE-2026-33636的修复，以及扩展的动态代码加载限制。

对于原生安卓用户，临时缓解措施涉及通过ADB禁用close_quic_connection标志，但这需要开发者权限。

---

## 23. 大卫·爱登堡百岁诞辰

**原文标题**: David Attenborough's 100th Birthday

**原文链接**: [https://www.bbc.com/news/articles/cp3pww9g0p5o](https://www.bbc.com/news/articles/cp3pww9g0p5o)

**摘要：**

国王查尔斯三世与卡米拉王后领衔向大卫·爱登堡爵士百岁寿辰致敬，分享了一张1958年他为他们介绍凤头鹦鹉的旧照。爱登堡爵士称自己为祝福"完全倾倒"。威尔士亲王感谢他带来的启发，而苏塞克斯公爵则称其为"世俗圣人"。

由柯斯蒂·杨主持的皇家阿尔伯特音乐厅特别音乐会，呈现了BBC音乐会管弦乐团、冰岛乐队Sigur Rós及丹·史密斯的演出。活动以音乐和《地球脉动II》等标志性系列片段的影像，礼赞其人生。

众多名人致敬，包括大卫·贝克汉姆爵士称其为"国宝"，以及乔安娜·拉姆利。世界自然基金会发布生日视频，由朱迪·丹奇女爵和摩根·弗里曼等明星配音。作曲家汉斯·季默指出，与爱登堡合作关乎"我们星球的存续"。

大卫爵士生于1926年，1952年加入BBC。自然历史博物馆以他的名字命名了一种寄生蜂新种*Attenboroughnculus tau*。BBC已在本周安排特别节目庆贺其百岁诞辰。

---

## 24. Show HN：使用Space CLI创建闪卡

**原文标题**: Show HN: Create flashcards with Space CLI

**原文链接**: [https://getspace.app/cli](https://getspace.app/cli)

**Space CLI 概要**

Space CLI 是一款命令行工具，用户可直接在终端中创建、搜索和导出闪卡。它支持集成任意大语言模型（如Claude、ChatGPT、Ollama等），提供AI驱动的分析与卡片生成功能。该工具通过读取本地Space应用数据库运行，无需登录或API密钥。

核心功能：
- 支持牌组、卡片和分组的相关命令：创建、列表、显示、编辑、删除、搜索、统计、导出
- 可将牌组导出为JSON/CSV格式，并通过管道传输至AI完成特定任务，如识别易混淆词汇对、解析困难卡片或生成追问问题
- 支持本地模型，实现离线隐私保护
- 通过Space应用实现多设备自动同步（无需手动操作）
- 在GitHub上开源

安装方式包括Homebrew（macOS/Linux）、curl安装脚本，或为Windows/macOS/Linux提供手动下载。该工具专为偏好终端工作流、希望结合闪卡与AI能力的用户设计。

---

## 25. 构建TD4 4位CPU

**原文标题**: Building the TD4 4-Bit CPU

**原文链接**: [https://jayakody2000lk.blogspot.com/2026/05/building-td4-4-bit-cpu.html](https://jayakody2000lk.blogspot.com/2026/05/building-td4-4-bit-cpu.html)

**摘要：** 本文详细介绍了作者搭建TD4的经历。TD4是一款4位CPU，出自日本人富波薰所著的《如何制作CPU》一书。该项目涉及翻译书籍、采购元件，并基于开源设计焊接电路板。

TD4是一款采用74系列TTL逻辑IC构建的硬连线逻辑CPU（无微码），其组件包括74HC161寄存器、74HC153多路选择器、74HC283算术逻辑单元，以及用于指令解码的74HC10/32逻辑门。16字节的ROM通过DIP开关和用作单向门以防止反向馈电的1N4148二极管实现。

作者发现组装过程简单直接，最耗时的部分是焊接单个二极管。该板通过USB或排针以5V电压供电，无需固件。编程功能有限但具有教育意义，允许用户观察数据如何从开关经逻辑门传输至寄存器。

为简化编程，作者创建了一个基于网页的汇编器，可将汇编代码直接转换为DIP开关位置。该项目凸显了TD4作为计算机架构“Hello World”的理想范例，通过去除微码、缓存和操作系统等现代复杂性，揭示了硬件与软件之间的关系。

---

## 26. Beaver三元组简介

**原文标题**: Introduction to Beaver Triples

**原文链接**: [https://stoffelmpc.com/stoffel-blog/beaver-triples-tuples](https://stoffelmpc.com/stoffel-blog/beaver-triples-tuples)

文章解释了**Beaver三元组**这一密码学技术，它能够在无需增加重构秘密所需参与方数量的前提下，实现对秘密共享值的安全乘法运算。

以一个餐厅选择场景为例，四位朋友想要计算三家餐厅的团体评分（可负担性 × 口味偏好），同时不泄露各自的输入值。每个输入值被秘密共享为一次多项式，至少需要两位朋友才能重构。然而，直接相乘两个共享值会产生二次多项式，使得重构门槛提升至三人。

Beaver三元组解决了这一问题。一个三元组包含三个秘密共享值（[a]、[b]、[c]），其中c = a × b，且'a'和'b'充当一次性使用的随机掩码。两个共享值[x]与[y]的乘法运算通过以下恒等式完成：

**xy = c + d·b + e·a + d·e**，其中d = x - a，e = y - b。

关键在于，d和e可以安全公开（因为a和b仍保持秘密），从而在不提升多项式次数的情况下完成乘法。

在示例中，朋友们预先计算了12个全新的Beaver三元组（每个乘法运算对应一个）。他们计算出个人层面的评分，然后汇总共享值得到团体层面的餐厅评分（148、212、123）。由于重构门槛仍为两人，任意两位朋友都能揭示最终评分。餐厅B胜出，且无人暴露自己的可负担性或口味偏好。

**核心要点：** Beaver三元组能在保留原始重构门槛的前提下，实现对秘密共享数据的私密且高效的乘法运算。

---

## 27. 闪电的成因是什么？答案正变得越来越有趣

**原文标题**: What causes lightning? The answer keeps getting more interesting

**原文链接**: [https://www.quantamagazine.org/what-causes-lightning-the-answer-keeps-getting-more-interesting-20260506/](https://www.quantamagazine.org/what-causes-lightning-the-answer-keeps-getting-more-interesting-20260506/)

根据查理·伍德2026年5月在《量子杂志》发表的文章，闪电成因之谜至今未解，但新研究揭示了高能物理学驱动的复杂过程。尽管18至19世纪的物理学家曾认为闪电不过是大型电火花——需要每米约300万伏特的电场——但实测显示雷暴云中的电场强度甚至难以达到这一数值的三分之一。

研究人员发现云层会产生意想不到的高能现象，包括通常与超新星和黑洞相关的伽马射线以及X射线。物理学家约瑟夫·德怀尔提出，接近光速运动的"逃逸"电子可形成级联雪崩效应，进而增强电场。该理论表明，这些雪崩会产生伽马射线和反物质正电子，从而引发更大规模的雪崩，最终可能触发闪电。

2023年NASA的"高空闪电观测任务"（ALOFT）在热带风暴上空通过高空飞机观测证实，云层中充斥着伽马射线辉光与闪烁，为德怀尔的亚原子雪崩理论提供了有力证据。然而2025年初在新墨西哥州的观测显示，部分闪电的运动方向与电场存在微小夹角，并未完全如德怀尔理论预测的那样精准对齐。这表明来自深空的宇宙射线簇射粒子可能在触发闪电中同样扮演关键角色。文章总结指出，闪电形成很可能涉及粒子物理学、宇宙事件与电学的综合作用，而非简单的电火花现象。

---

## 28. 复兴IBM Selectric Composer字体（2023）

**原文标题**: Reviving the IBM Selectric Composer Fonts (2023)

**原文链接**: [https://www.kutilek.de/selectric/](https://www.kutilek.de/selectric/)

**摘要：复兴IBM Selectric Composer字体（2023）**

IBM Selectric Composer（1964年）是一款开创性的打字机，引入了比例间距，将字母分配至七个宽度单位之一（每全角3–9单位）。字体大小通过三种颜色编码设置（红、黄、蓝）进行缩放。打字元件（“高尔夫球”）经过精密工程制造。Adrian Frutiger为该机器适配了Univers字体，但IBM为经典字体系列设计的固定单位表导致了妥协：诸如‘g’和‘s’等窄字母必须适配更宽的单位，而‘T’和‘F’则被绘制得过宽。这些特性使Composer文本具有可识别性。

该机器填补了打字机与照相排版之间的空白，在20世纪70至80年代用于德国漫画、手册及小型印刷店，直至桌面出版使其过时。

数字化这些字体需要计算正确的缩放比例。作者设定了一个每全角900单位的网格，使1个Composer单位等于100个字体单位。校正因子调整了每种尺寸/颜色设置的输出（例如，红色10pt为1000 UPM，红色11pt为1100 UPM）。大写高度源自手册数据。

可缩放字体不切实际；每种尺寸需要独立绘制。从目录样本中扫描的字体在Glyphs中手动描摹，并应用了14单位的圆角滤镜。字偶间距调整无必要。作者数字化了Selectric UN 11 Medium并开始了Century风格，添加了缺少的字形，如箭头和@。本文自身即使用该复兴字体排版。

---

## 29. Wi-Fi是什么：解读Wi-Fi 4/5/6/6E/7/8（802.11 n/AC/ax/be/bn）

**原文标题**: Wi is Fi: Understanding Wi-Fi 4/5/6/6E/7/8 (802.11 n/AC/ax/be/bn)

**原文链接**: [https://www.wiisfi.com/](https://www.wiisfi.com/)

本文全面介绍了Wi-Fi世代（4/5/6/6E/7/8）的演进逻辑，帮助读者做出明智的升级决策。文章拆解了路由器常见的营销噱头——其广告中常吹嘘不切实际的聚合速率，并强调**客户端设备**（智能手机、笔记本电脑等）才是真正的性能短板。大多数设备仅支持2×2 MIMO，即便搭配顶级路由器，在80 MHz信道下的Wi-Fi 6实际吞吐量上限也仅为900 Mbps左右。

核心结论是：**距离与障碍物**会显著降低速率。当用户远离路由器时，Wi-Fi性能会急剧下降，而更高阶的调制方式（如Wi-Fi 7的4096-QAM）要求设备极近距离接入。单纯升级Wi-Fi世代并不能保证速度提升，速率改善的根本在于更宽的信道、更多的MIMO流数和更高的MCS等级。

文章推荐**中端Wi-Fi 6路由器**（如TP-Link Archer AX80）为当前最佳性价比之选，支持4×4 MIMO、DFS信道及160 MHz信道。若要扩展覆盖范围，安装**有线接入点**远比无线信号扩展器更高效。最终，用户需评估自己*客户端*的当前物理层速率，判断升级路由器是否真正能改善自身使用场景，而非盲目追逐营销参数。

---

## 30. Show HN：Mochi.js：基于Bun的高保真浏览器自动化库

**原文标题**: Show HN: Mochi.js: bun-native high-fidelity browser automation library

**原文链接**: [https://mochijs.com/](https://mochijs.com/)

**摘要：**  
本文介绍 **Mochi.js**，一款专为 Bun 构建的原生浏览器自动化库，强调高保真指纹一致性。  

核心特性：  
- **关系一致性引擎**：通过 48 条规则的有向无环图（DAG），所有指纹表面（Canvas、WebGL、音频、字体、MediaDevices、WebGPU）均基于单一 `(profile, seed)` 对生成。  
- **无“弗兰肯斯坦”指纹**：确保浏览器配置文件逻辑连贯——例如，Mac 用户代理始终搭配兼容的 Mac WebGL 渲染器，避免指纹出现不匹配或不合逻辑的情况。  

该库旨在通过维持所有指纹维度的内部一致性，实现更真实、难以检测的浏览器自动化。

---

