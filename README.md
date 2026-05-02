# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-02.md)

*最后自动更新时间: 2026-05-02 20:32:56*
## 1. Dav2d

**原文标题**: Dav2d

**原文链接**: [https://code.videolan.org/videolan/dav2d](https://code.videolan.org/videolan/dav2d)

**摘要：**  
该内容介绍了网站保护机制 **Anubis**，用于应对 AI 公司大量爬取网站内容导致服务器崩溃的问题。Anubis 采用类似 **Hashcash** 的工作量证明（Proof-of-Work）机制，对单个用户影响微小，但能显著增加大规模爬虫的累积成本，从而遏制恶意抓取。  
此方案为**临时措施**，旨在争取时间开发更先进的指纹识别技术（如识别无头浏览器的字体渲染差异），避免给合法用户直接显示工作量证明页面。  
使用限制：需要现代 JavaScript 功能；插件如 **JShelter** 可能阻挡验证，用户需为相关域名停用此类插件。开发者承认无 JavaScript 的解决方案仍在开发中，并强调 AI 公司已改变网站托管的社会契约，故需采取此类保护。

---

## 2. 过去十年中，电池再利用与回收领域的发明数量增长了七倍

**原文标题**: Inventions for battery reuse and recycling increase seven-fold in last decade

**原文链接**: [https://www.epo.org/en/news-events/news/inventions-battery-reuse-and-recycling-increase-more-seven-fold-last-decade](https://www.epo.org/en/news-events/news/inventions-battery-reuse-and-recycling-increase-more-seven-fold-last-decade)

根据欧洲专利局（EPO）与国际能源署（IEA）联合报告，过去十年间，电池再利用与回收领域的发明数量激增七倍以上。受全球电池需求飙升（预计报废电动汽车电池将从2030年的120万块增至2040年的1400万块）推动，自2017年以来，电池循环利用领域的专利以年均42%的复合增长率增长，而可充电电池制造业的增长率仅为16%。

亚洲目前处于领先地位，2023年亚洲企业占国际专利家族（IPFs）总数的63%。2013至2023年间，中国在电池循环利用领域IPFs占比从5%升至29%，其在电池金属精炼领域的国内专利申请现占全球总量的70%。而欧洲在收集与化学转化技术领域实现显著增长，欧洲申请人在远程操控（占IPFs的34%）和隔离固定化（占30%）方面保持领先。

报告强调，扩大创新规模对欧洲降低成本和提升效率至关重要。欧盟近期政策举措（如《电池法规》和《工业加速法案》）旨在强化工业能力与循环价值链整合。欧洲专利局已更新其清洁能源平台及深度技术查找器，纳入电池循环利用技术，并提供近60家活跃于该领域的欧洲初创企业及大学的可检索领域与资料。

---

## 3. 请勿追踪

**原文标题**: Do_not_track

**原文链接**: [https://donottrack.sh/](https://donottrack.sh/)

**摘要：请勿跟踪（DO_NOT_TRACK）**

本文提出一个标准化的环境变量 `DO_NOT_TRACK=1`，用于简化在命令行工具、SDK 和框架中退出遥测、分析、崩溃报告及非必要网络请求的操作。

**问题：** 许多软件工具默认收集遥测数据，但各自使用独特的退出方式（例如 `DOTNET_CLI_TELEMETRY_OPTOUT=1`、`SAM_CLI_TELEMETRY=0`、`HOMEBREW_NO_ANALYTICS=1`）。这种碎片化令用户感到困惑且繁琐。

**建议：** 采用单一通用环境变量：`export DO_NOT_TRACK=1`。用户可将其加入 shell 配置文件（`.bashrc`、`.zshrc`、`config.fish`、PowerShell `$PROFILE`）或设置为 Windows CMD 的系统变量。当此变量设为 `1` 时，应禁用所有跟踪功能。

**对软件作者的建议：** 鼓励开发者检查 `DO_NOT_TRACK=1` 变量，并在现有退出机制的基础上尊重该设置。文章还建议将遥测默认设为选择加入而非选择退出。

**参考：** 此倡议借鉴了 `NO_COLOR` 和 `FORCE_COLOR` 标准的模式，旨在为隐私保护创建一个简单、用户友好且跨工具的统一标准。

---

## 4. NetHack 5.0.0

**原文标题**: NetHack 5.0.0

**原文链接**: [https://nethack.org/v500/release.html](https://nethack.org/v500/release.html)

**NetHack 5.0.0 版本发布概要**

NetHack开发团队于2026年5月2日宣布发布NetHack 5.0.0。这一重大更新增强了这款源自Rogue和Hack的经典地牢探索游戏，继3.6版本之后推出。

主要技术改进包括：使源代码符合C99标准，并支持交叉编译，允许游戏为某一平台构建后可在另一平台上运行。构建工具已现代化：基于旧版"yacc和lex"的关卡与地牢编译器，以及来自"makedefs"的任务文本处理，已被在游戏过程中加载的Lua文本替代方案取代。

发布说明列举了超过3100项修复与变更，详见`doc/fixes5-0-0.txt`。用户需注意，现有存档文件和遗骨文件与5.0.0版本不兼容。

如需验证，可使用`certUtil`检查Windows二进制文件的SHA256校验和。命令`nethack --showpaths`有助于定位游戏文件。团队欢迎反馈，鼓励通过问题表格提交错误报告，并建议先查阅已知错误列表。此版本标记为.0版本，因此可能仍存在部分错误。

---

## 5. 我不推荐Bitwarden

**原文标题**: I Do Not Recommend Bitwarden

**原文链接**: [https://xn--gckvb8fzb.com/i-do-not-recommend-bitwarden/](https://xn--gckvb8fzb.com/i-do-not-recommend-bitwarden/)

以下是文章《我不推荐 Bitwarden》的简要总结：

作者在多年通过 Vaultwarden 自托管 Bitwarden 后，强烈建议不要使用它。核心问题有三点：公司的发展方向、有缺陷的客户端应用以及糟糕的用户体验。

首先，作者批评 Bitwarden 从以社区为中心的开源转向由投资者驱动的增长，这从 1 亿美元的投资中可见一斑。官方服务器被描述为依赖微软技术栈的“笨重巨兽”，而社区制作的轻量级版本（Vaultwarden）虽被广泛使用，但未被官方采纳，即便其主要开发者已被雇佣。一项有争议的专有 SDK 许可（后撤回）表明，其开源性质已退居 SaaS 业务之后。

其次，客户端应用因核心功能损坏而饱受诟病。一个关键例子是十年后仍缺乏简单的“移动条目”功能；官方变通方案（导出未加密的 JSON）既不安全，还会丢失附件和密码历史等数据。导入功能不可靠，自动客户端更新曾导致密码库无法访问。

最后，用户界面被评价为“糟糕”，同步缓慢（甚至离线模式下），UI 设计反直觉（点击登录条目会打开详情而非自动填充），CLI 默认暴露所有凭据。安全性记录也受到质疑。作者总结认为，Bitwarden 的开源外观只是付费产品的诱饵，其底层软件不值得作为密码管理器信任。

---

## 6. 无符号大小：一个五年的错误

**原文标题**: Unsigned Sizes: A Five Year Mistake

**原文链接**: [https://c3-lang.org/blog/unsigned-sizes-a-five-year-mistake/](https://c3-lang.org/blog/unsigned-sizes-a-five-year-mistake/)

C3语言团队在这篇博客中解释了他们在五年后决定将默认的尺寸和长度类型从无符号整数切换为有符号整数的原因。

**关键要点：**

- **无符号的陷阱：** 无符号类型引入了微妙的错误，例如无限循环（`x >= 0` 永远为真）以及有符号值和无符号值之间错误的比较。虽然 C3 增加了安全措施，但根本问题依然存在。

- **强制转换问题：** 有符号/无符号之间的转换迫使我们要么进行大量机械的强制转换（这会掩盖真正的错误），要么采用复杂的隐式转换规则。C3 最初为了便利允许隐式转换，但这掩盖了问题。

- **临界点：** 看似简单的表达式 `(foo + a) % 2` 在 `foo` 超过 `INT_MAX` 时会产生错误结果，因为 C3 将 `int + uint` 提升为有符号类型。这表明混合有符号/无符号的算术运算不可预测，尤其是在除法和取模运算中。

- **无符号的范围问题：** 无符号整数在零附近（即“不安全”的边界）最容易出错，并会产生看似合理但实际错误的溢出结果，而有符号整数则因其负值结果能标示出错误。

- **解决方案：** C3 现在默认使用有符号的尺寸类型（重命名为 `sz`）。这消除了隐式有符号/无符号转换的需要，简化了代码，并在迁移过程中揭示了隐藏的 bug。此变更受到 Go 和 Java 等语言的启发，这些语言成功使用了有符号的尺寸类型。

- **结果：** 在转换之后，尽管最初有些不适应，代码变得更容易推理且更正确。作者反思道，最初选择无符号尺寸类型是一个根深蒂固但错误的习惯。

---

## 7. Flue 是一个用于构建下一代智能体的 TypeScript 框架

**原文标题**: Flue is a TypeScript framework for building the next generation of agents

**原文链接**: [https://flueframework.com/](https://flueframework.com/)

**Flue** 是一个用于构建自主 AI 智能体的 TypeScript 框架，提供可编程的“整合器”（harness），将模型与文件系统、沙箱和内存能力相结合。与典型的 SDK 或现成 AI 工具不同，Flue 赋予开发者对智能体架构的完全控制权。

**主要特性：**
- **智能体 = 模型 + 整合器** – 智能体能够规划、收集上下文、写入文件、生成子智能体并解决问题（类似 Claude Code 或 Codex）
- **内置虚拟沙箱** – 为智能体处理任务提供零配置环境；同时支持远程沙箱（如 Daytona）和自定义文件系统
- **技能系统** – 通过验证工具（Valibot）实现结构化输出的可复用工作流
- **基于会话的提示** – 智能体跨步骤保留上下文，并支持 shell 访问、文件操作及细粒度的令牌安全控制

**部署灵活性：**
- 通过 CLI（`flue run`）运行智能体，用于本地任务或 CI
- 将智能体打包成 HTTP 服务器，部署到 Node.js、Cloudflare Workers、GitHub Actions、GitLab CI/CD 等平台

**用例展示：** 问题分类（22 行 TypeScript 代码）、数据分析、编码智能体、客户支持

**理念：** 停止租赁通用 AI 工具——构建适配你的产品、数据和工作流的专属智能体，从模型到沙箱全栈掌控。

---

## 8. 加州将对违反交通法规的无人驾驶汽车开具罚单

**原文标题**: California to begin ticketing driverless cars that violate traffic laws

**原文链接**: [https://www.bbc.com/news/articles/clypjx3rg2go](https://www.bbc.com/news/articles/clypjx3rg2go)

加州将于7月1日起对违反交通法规的无人驾驶汽车开罚单。根据该州机动车辆管理局公布的新规，作为2024年更广泛法案的一部分，这些规则允许警察直接向车辆制造商（而非驾驶员）开具“自动驾驶车辆违规通知”。此前，执法人员难以追究自动驾驶车辆的责任——例如去年9月，一辆Waymo汽车在圣布鲁诺非法掉头，但因没有人类驾驶员而无法开具罚单。新规还要求自动驾驶公司在30秒内响应紧急救援人员，并对驶入活跃紧急区域的行为实施处罚。此前发生过多起事件，如去年12月旧金山大规模停电导致多辆Waymo汽车在繁忙路口抛锚，加剧交通拥堵。Waymo是旧金山湾区和洛杉矶的主要运营商，特斯拉也持有测试许可证。机动车辆管理局称这些是“全美最全面的自动驾驶车辆法规”，并强调公共安全的重要性。

---

## 9. 《小杂志回归》

**原文标题**: Little Magazines Are Back

**原文链接**: [https://wsjfreeexpression.substack.com/p/little-magazines-are-back](https://wsjfreeexpression.substack.com/p/little-magazines-are-back)

**摘要：**

与以往预测相反，印刷文化正在复苏。巴顿·斯威姆在《华尔街日报》撰文指出，电子书并未取代纸质书，许多转为数字版的杂志正回归印刷版，例如《纽约太阳报》、《Saveur》和《野外与溪流》。新闻集团还推出了《加州邮报》印刷版。

在此背景下，斯威姆介绍了《门廊》——一本由米卡·马蒂克斯编辑、宗教与公共生活研究所出版的全新文学季刊。《门廊》是一本专注于严肃文学艺术的“小杂志”。其首期84页的刊物收录了关于爵士乐、马尔科姆·考利以及一部被遗忘电影的文章，此外还有马克·赫尔普林的小说和形式主义诗歌。

在该杂志的发布会上，诗人克里斯蒂安·威曼表示，创作诗歌时，他通过词语的声音发现意义。斯威姆反思了书刊如何塑造自己的教育历程，并指出，尽管印刷文化的黄金时代或许已逝，但一个充满希望的新时代可能就在前方。

---

## 10. 为什么黑色粉丝版需要这么久才发布？

**原文标题**: Why does it take so long to release black fan versions?

**原文链接**: [https://www.noctua.at/en/expertise/blog/how-can-it-take-so-long-to-release-black-fan-versions](https://www.noctua.at/en/expertise/blog/how-can-it-take-so-long-to-release-black-fan-versions)

无法访问该文章链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 2 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 3 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 4 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 5 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 6 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 7 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 8 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 9 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 10 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 11 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 12 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 13 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 14 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 15 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 16 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 17 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 18 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 19 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 20 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 21 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 22 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 23 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 24 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 25 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 26 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 27 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 28 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 29 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 30 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 31 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 32 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 33 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 34 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 35 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 36 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 37 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 38 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 39 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 40 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 41 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 42 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 43 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 44 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 45 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 46 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 47 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 48 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 49 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 50 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 51 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 52 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 53 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 54 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 55 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 56 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 57 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 58 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 59 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 60 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 61 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 62 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 63 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 64 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 65 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 66 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 67 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 68 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 69 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 70 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 71 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 72 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 73 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 74 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 75 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 76 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 77 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 78 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 79 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 80 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 81 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 82 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 83 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 84 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 85 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 86 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 87 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 88 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 89 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 90 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 91 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 92 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 93 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 94 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 95 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 96 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 97 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 98 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 99 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 100 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 101 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 102 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 103 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 104 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 105 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 106 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 107 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 108 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 109 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 110 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 111 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 112 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 113 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 114 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 115 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 116 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 117 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 118 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 119 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 120 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 121 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 122 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 123 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 124 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 125 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 126 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 127 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 128 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 129 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 130 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 131 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 132 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 133 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 134 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 135 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 136 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 137 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 138 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 139 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 140 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 141 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 142 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 143 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 144 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 145 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 146 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 147 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 148 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 149 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 150 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 151 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 152 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 153 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 154 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 155 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 156 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 157 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 158 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 159 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 160 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 161 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 162 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 163 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 164 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 165 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 166 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 167 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 168 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 169 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 170 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 171 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 172 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 173 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 174 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 175 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 176 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 177 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 178 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 179 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 180 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 181 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 182 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 183 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 184 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 185 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 186 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 187 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 188 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 189 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 190 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 191 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 192 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 193 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 194 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 195 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 196 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 197 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 198 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 199 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 200 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 201 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 202 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 203 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 204 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 205 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 206 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 207 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 208 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 209 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 210 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 211 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 212 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 213 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 214 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 215 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 216 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 217 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 218 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 219 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 220 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 221 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 222 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 223 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 224 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 225 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 226 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 227 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 228 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 229 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 230 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 231 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 232 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 233 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 234 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 235 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 236 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 237 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 238 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 239 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 240 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 241 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 242 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 243 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 244 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 245 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 246 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 247 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 248 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 249 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 250 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 251 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 252 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 253 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 254 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 255 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 256 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 257 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 258 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 259 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 260 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 261 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 262 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 263 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 264 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 265 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 266 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 267 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 268 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 269 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 270 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 271 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 272 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 273 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 274 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 275 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 276 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 277 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 278 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 279 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 280 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 281 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 282 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 283 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 284 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 285 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 286 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 287 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 288 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 289 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 290 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 291 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 292 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 293 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 294 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 295 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 296 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 297 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 298 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 299 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 300 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 301 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 302 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 303 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 304 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 305 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 306 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 307 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 308 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 309 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 310 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 311 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 312 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 313 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 314 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 315 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 316 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 317 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 318 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 319 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 320 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 321 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 322 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 323 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 324 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 325 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 326 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 327 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 328 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 329 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 330 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 331 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 332 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 333 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 334 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 335 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 336 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 337 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 338 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 339 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 340 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 341 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 342 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 343 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 344 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 345 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 346 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 347 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 348 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 349 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 350 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 351 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 352 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 353 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 354 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 355 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 356 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 357 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 358 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 359 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 360 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 361 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 362 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 363 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 364 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 365 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 366 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 367 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 368 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 369 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 370 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 371 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 372 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 373 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 374 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 375 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 376 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 377 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 378 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 379 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 380 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 381 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 382 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 383 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 384 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 385 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 386 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 387 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 388 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 389 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 390 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 391 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 392 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 393 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 394 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 395 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 396 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 397 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 398 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 399 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 400 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 401 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 402 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 403 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 404 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 405 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 406 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
