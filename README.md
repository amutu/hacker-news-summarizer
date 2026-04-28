# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-28.md)

*最后自动更新时间: 2026-04-28 20:32:51*
## 1. Ghostty 即将离开 GitHub

**原文标题**: Ghostty is leaving GitHub

**原文链接**: [https://mitchellh.com/writing/ghostty-leaving-github](https://mitchellh.com/writing/ghostty-leaving-github)

Ghostty的创建者Mitchell Hashimoto宣布，该项目在每日使用18年后将离开GitHub。他于2008年2月加入GitHub，一直将其用于工作、爱好和热忱——包括发布首个成功的开源项目Vagrant，并期望能借此在GitHub获得一份工作。尽管有着深厚的个人情感，但他对频繁出现的服务中断（如GitHub Actions的问题）越来越感到沮丧，这些中断干扰了他的工作能力。过去一个月中，几乎每次中断影响他工作时，他都会记下一个“X”。他表示，该平台已不再支持严肃的工作。Hashimoto强调，这一决定并非针对Git本身，而是针对其周边基础设施（如问题追踪、拉取请求、Actions）。Ghostty将迁移至其他服务商（具体细节待公布），并在GitHub上保留一个只读镜像。他的个人项目目前仍留在GitHub上。这一决定的时间点恰逢2026年4月27日的一次重大中断，但该决定已酝酿数月。他希望能看到实质性的改进，并愿意回归。

---

## 2. OpenAI模型即将登陆Amazon Bedrock：OpenAI与AWS首席执行官专访

**原文标题**: OpenAI models coming to Amazon Bedrock: Interview with OpenAI and AWS CEOs

**原文链接**: [https://stratechery.com/2026/an-interview-with-openai-ceo-sam-altman-and-aws-ceo-matt-garman-about-bedrock-managed-agents/](https://stratechery.com/2026/an-interview-with-openai-ceo-sam-altman-and-aws-ceo-matt-garman-about-bedrock-managed-agents/)

以下是文章的简洁摘要：

2026年4月28日，一项新的合作正式宣布：OpenAI模型将通过名为“Bedrock托管代理”的新产品在亚马逊云服务（Amazon Bedrock）上提供，该产品由OpenAI驱动。此举紧随OpenAI与微软协议的重大修订之后，该修订结束了Azure在OpenAI模型上的独家经营权。根据新协议，微软仍然是主要的云合作伙伴和主要股东，但OpenAI现在可以在包括AWS在内的任何云提供商上提供其产品。

此次采访邀请了AWS首席执行官马特·加曼和OpenAI首席执行官萨姆·奥尔特曼，他们强调了这一举措的必要性。微软的独家经营权限制了OpenAI的增长，因为企业更倾向于在其现有云平台（通常是AWS）上访问AI模型，这使得Anthropic获得了竞争优势。AWS将此视为一个巨大机遇，重点在于让已经使用AWS的组织能够访问企业级代理（类似于Codex）。

奥尔特曼将AI与之前的重大平台变革（互联网、云计算、移动设备）进行了比较，指出初创公司如今可以比以往任何时候都更快地建立规模化业务。加曼强调，AWS凭借其可靠性、安全性和合作伙伴生态系统，仍然是大多数初创公司的首选。核心产品“Bedrock托管代理”旨在为数据已存储在AWS的企业简化复杂且安全的代理工作流，通过提供更深入的集成和本地安全优势，与亚马逊现有的AgentCore形成差异化。

---

## 3. 一个可玩的DOOM MCP应用程序

**原文标题**: A playable DOOM MCP app

**原文链接**: [https://chrisnager.com/blog/doom-runs-in-chatgpt-and-claude/](https://chrisnager.com/blog/doom-runs-in-chatgpt-and-claude/)

本文介绍如何创建一个可运行的DOOM MCP（模型上下文协议）应用，该应用能内嵌于ChatGPT和Claude等AI客户端内运行，并为其他环境提供备用浏览器链接。

**核心要点：**

- **架构：** 一个简单的MCP服务器，包含两个工具——`create_doom_session`（用于支持内嵌的主机）和`get_doom_launch_url`（用于备用客户端），以及一条使用签名令牌的`/doom/play`浏览器路由。

- **浏览器版DOOM：** 采用cloudflare/doom-wasm，默认使用Freedoom Phase 1作为可再分发的游戏内容，托管于Netlify的`/doom/*`路径下。

- **内嵌渲染难题：** 主要难点在于让DOOM在MCP主机内渲染。解决方案是直接在主机iframe内运行DOOM画布，而非嵌套iframe，从而避免CSP、frame-src及各主机特定限制带来的问题。

- **功能简化：** 移除了存档/读档、截图和持久化适配器等特性，专注于精简稳定的核心功能。取消了基于Blob的预加载机制，将WAD文件与配置直接写入Emscripten文件系统。

- **成果：** 形成独立的会话模型，无需服务器状态即可开始游戏。在支持的MCP主机中内嵌运行，其他环境则回退至浏览器URL。在ChatGPT和Claude的iOS应用中部分可用。

该项目证明，MCP应用能够超越JSON工具响应的局限，在遵守Web环境所有约束的前提下，提供真正的交互式用户界面。

---

## 4. Waymo在波特兰

**原文标题**: Waymo in Portland

**原文链接**: [https://waymo.com/blog/shorts/waymo-in-portland/](https://waymo.com/blog/shorts/waymo-in-portland/)

Waymo将扩展至俄勒冈州波特兰市，首先通过手动测试驾驶使其自动驾驶系统熟悉该市独特的街景，包括桥梁和湿滑的雨道。该公司正与州、市官员及社区合作伙伴合作，为未来部署建立监管路径。市长基思·威尔逊强调Waymo有潜力支持波特兰"零愿景"消除交通死亡事故的目标，并指出Waymo Driver将严重伤害事故减少了13倍。来自MADD的坎迪斯·里德强调了自动驾驶汽车在防止酒驾方面的作用。Waymo邀请居民注册以获取其部署时间表的最新消息。

---

## 5. Warp 现已开源

**原文标题**: Warp is now Open-Source

**原文链接**: [https://github.com/warpdotdev/warp](https://github.com/warpdotdev/warp)

**摘要：Warp 现已开源**

Warp 是一个基于终端构建的智能开发环境，其客户端代码库现已开源。该仓库包含内置编程代理，并支持第三方 CLI 代理，如 Claude Code、Codex 和 Gemini CLI。OpenAI 是创始赞助商，其智能代理工作流由 GPT 模型驱动。

**许可协议：** UI 框架（`warpui_core` 和 `warpui`）采用 MIT 许可；其余代码采用 AGPL v3 许可。

**贡献指南：** 欢迎通过结构化工作流程提交社区贡献。贡献者在提交新问题前应先搜索现有问题。维护者会应用就绪标签：“ready-to-spec”（设计阶段）和“ready-to-implement”（欢迎提交代码 PR）。任何人可通过提及 @oss-maintainers 来认领带标签的问题。

**本地构建：** 分别运行 `./script/bootstrap`、`./script/run` 和 `./script/presubmit` 进行设置、构建和测试。完整工程指南见 WARP.md。

**支持：** 用户可查阅文档、加入 Slack、试用预览版本，并通过 @oss-maintainers 上报问题。

**依赖项：** 主要开源项目包括 Tokio、NuShell、Alacritty、Hyper 和 FontKit。

**行为准则：** 所有贡献者必须遵守行为准则；违规行为可举报至 warp-coc@warp.dev。

---

## 6. 你的手机即将不再属于你

**原文标题**: Your phone is about to stop being yours

**原文链接**: [https://keepandroidopen.org/en/](https://keepandroidopen.org/en/)

**摘要：**

自2026年9月起，谷歌将要求所有Android应用开发者（不仅限于Play Store）进行集中注册、缴纳费用、同意谷歌条款，并提供政府身份证明及签名密钥证据。未合规开发者的应用将在全球所有Android设备上被静默屏蔽。

此举威胁到Android开放性的核心承诺。独立开发者、爱好者、社区团体及F-Droid等开源应用商店（后者称其为“存亡”威胁）将被排挤出局。谷歌提出的侧载应用“逃生通道”需经过9个步骤，并强制等待24小时，该功能深藏于开发者选项中，且通过Google Play服务控制——这意味着谷歌可随时收紧或移除该功能，无需用户同意。

批评者认为安全理由只是幌子；基于身份的把控机制将导致审查，并针对异见人士、记者及弱势群体。超过69个组织（包括电子前哨基金会、Proton、Tor项目及F-Droid）已签署公开信反对该政策。文章呼吁用户安装替代应用商店、联系监管机构并传播信息；要求开发者不要遵守谷歌的注册计划。

---

## 7. Claude.ai无法访问及API出现严重错误

**原文标题**: Claude.ai unavailable and elevated errors on the API

**原文链接**: [https://status.claude.com/incidents/9l93x2ht4s5w](https://status.claude.com/incidents/9l93x2ht4s5w)

2026年4月28日，Anthropic的Claude服务出现重大故障，影响了Claude.ai及底层API。该事件始于UTC时间17:34，用户无法访问网页界面。随后于UTC时间17:41，Anthropic正式确认问题并开始调查。

该问题被迅速识别为认证错误率升高，导致用户无法登录Claude.ai、API及Claude Code。故障期间，多项服务受到影响，包括网站、API、Claude控制台、Claude Code、Claude Cowork以及Claude政府版。

此次中断持续约78分钟，服务在UTC时间18:52左右恢复正常。至UTC时间18:59，Anthropic报告成功率已恢复，并开始监控以防后续问题。UTC时间19:15，该事件被正式宣告解决。Anthropic在其状态更新中未提供具体的故障根本原因。

---

## 8. CJIT：即时编译的C语言

**原文标题**: CJIT: C, Just in Time

**原文链接**: [https://dyne.org/cjit/](https://dyne.org/cjit/)

**CJIT：C语言即时编译**是一款轻量级开源工具，让C代码能够像脚本语言一样使用。它能即时编译并执行C源文件，省去了传统的“编译-链接-运行”流程。

**核心特性：**
- **即时执行**：像Python或JavaScript脚本那样，即时编译并运行C代码。
- **跨平台支持**：单个源文件即可在Windows、macOS和Linux上运行。
- **极简设计**：仅需一个头文件和一个小型C编译器（如TinyCC或GCC）。
- **易于集成**：可嵌入其他项目，也可作为独立的命令行工具使用。
- **无需构建系统**：跳过Makefile或项目文件——只需编写代码即可运行。

**工作原理：**
- 该工具读取C源文件，在内存中编译（使用TinyCC或系统编译器），并立即执行生成的代码。
- 通过简单的`#!/usr/bin/cjit`声明行或命令行参数支持库文件。
- 非常适合快速原型开发、系统管理，以及编写对性能要求高于脚本语言的“胶水”代码。

**应用场景：**
- 用更快的C脚本替代Shell脚本。
- 快速测试C代码片段。
- 无需构建复杂环境来教授C语言。
- 在大型应用中嵌入动态C执行能力。

**获取方式：** 在GitHub上以宽松许可证开源。兼容TinyCC、GCC、Clang或MSVC。

*总结：CJIT让C语言像脚本一样易于运行，同时保留完整的性能和对系统API的访问能力。*

---

## 9. GitHub RCE漏洞：CVE-2026-3854详解

**原文标题**: GitHub RCE Vulnerability: CVE-2026-3854 Breakdown

**原文链接**: [https://www.wiz.io/blog/github-rce-vulnerability-cve-2026-3854](https://www.wiz.io/blog/github-rce-vulnerability-cve-2026-3854)

**CVE-2026-3854摘要：GitHub远程代码执行漏洞**

Wiz Research发现GitHub内部Git基础设施存在一处严重注入漏洞（CVE-2026-3854），影响GitHub.com和GitHub Enterprise Server（GHES）。该漏洞利用用户可控的Git推送选项（含分号）未被清理便直接复制到内部`X-Stat`头部的问题。由于该头部使用分号作为字段分隔符并采用“最后写入者获胜”逻辑，攻击者可以注入任意安全字段。

为实现远程代码执行（RCE），需注入三个字段：`rails_env`（绕过沙箱）、`custom_hooks_dir`（重定向钩子查找路径）和`repo_pre_receive_hooks`（通过路径遍历执行任意二进制文件）。在GHES上，攻击者可完全控制服务器，访问所有托管的代码仓库及密钥。在GitHub.com上，通过注入额外的“企业模式”标志，攻击者在共享存储节点上实现了RCE，暴露了数百万跨租户代码仓库。

GitHub在6小时内修复了GitHub.com上的该问题，并发布了GHES补丁（版本3.14.24、3.15.19、3.16.15、3.17.12、3.18.6和3.19.3）。由于88%的GHES实例仍存在漏洞，立即升级至关重要。这一发现是首批利用AI增强逆向工程发现的严重漏洞之一，获得了GitHub最高额度的漏洞赏金之一。

---

## 10. 补丁应用来自提交消息的虚假差异

**原文标题**: Patch applies fake diffs from commit messages

**原文链接**: [https://samizdat.dev/phantom-patch/](https://samizdat.dev/phantom-patch/)

一名安全研究人员发现，GitHub的`.patch`导出文件中可隐藏恶意“幻影差异”于提交信息内。当通过`wget`/`curl`配合GNU `patch`应用这些补丁时，提交信息中形似差异的文本会被视为补丁的合法部分，从而创建非预期的文件。

**关键要点：**
- GitHub（及其他平台）在`.patch` URL下公开了邮件格式的补丁
- 真实提交可能仅修改一个文件（例如`readme.md`），但若提交信息包含虚假差异文本，GNU `patch`会同时应用真实与虚假差异
- 研究人员通过提交`dd28283`演示了虚假差异如何创建出`SHOULD_NOT_BE_HERE.md`文件，同时伴随真实的`readme.md`修改
- `git apply`与`git am`会拒绝危险路径（如`.git/hooks/`），但依然会接受对普通文件注入的差异内容
- 研究人员不确定此缺陷源于GNU `patch`、GitHub的`.patch`导出，还是补丁格式规范本身

**影响：** 这构成了安全风险——因为简单的`wget`+`patch`工作流（常见操作）可能静默创建意外文件，甚至包括`.git`目录中的可执行钩子。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 2 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 3 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 4 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 5 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 6 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 7 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 8 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 9 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 10 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 11 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 12 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 13 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 14 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 15 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 16 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 17 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 18 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 19 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 20 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 21 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 22 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 23 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 24 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 25 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 26 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 27 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 28 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 29 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 30 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 31 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 32 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 33 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 34 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 35 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 36 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 37 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 38 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 39 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 40 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 41 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 42 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 43 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 44 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 45 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 46 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 47 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 48 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 49 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 50 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 51 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 52 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 53 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 54 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 55 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 56 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 57 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 58 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 59 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 60 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 61 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 62 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 63 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 64 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 65 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 66 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 67 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 68 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 69 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 70 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 71 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 72 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 73 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 74 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 75 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 76 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 77 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 78 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 79 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 80 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 81 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 82 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 83 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 84 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 85 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 86 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 87 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 88 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 89 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 90 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 91 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 92 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 93 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 94 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 95 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 96 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 97 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 98 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 99 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 100 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 101 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 102 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 103 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 104 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 105 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 106 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 107 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 108 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 109 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 110 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 111 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 112 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 113 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 114 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 115 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 116 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 117 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 118 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 119 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 120 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 121 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 122 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 123 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 124 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 125 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 126 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 127 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 128 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 129 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 130 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 131 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 132 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 133 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 134 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 135 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 136 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 137 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 138 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 139 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 140 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 141 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 142 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 143 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 144 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 145 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 146 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 147 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 148 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 149 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 150 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 151 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 152 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 153 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 154 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 155 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 156 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 157 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 158 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 159 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 160 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 161 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 162 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 163 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 164 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 165 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 166 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 167 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 168 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 169 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 170 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 171 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 172 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 173 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 174 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 175 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 176 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 177 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 178 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 179 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 180 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 181 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 182 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 183 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 184 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 185 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 186 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 187 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 188 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 189 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 190 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 191 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 192 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 193 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 194 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 195 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 196 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 197 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 198 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 199 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 200 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 201 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 202 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 203 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 204 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 205 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 206 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 207 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 208 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 209 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 210 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 211 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 212 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 213 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 214 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 215 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 216 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 217 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 218 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 219 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 220 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 221 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 222 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 223 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 224 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 225 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 226 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 227 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 228 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 229 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 230 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 231 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 232 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 233 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 234 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 235 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 236 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 237 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 238 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 239 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 240 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 241 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 242 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 243 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 244 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 245 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 246 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 247 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 248 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 249 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 250 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 251 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 252 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 253 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 254 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 255 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 256 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 257 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 258 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 259 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 260 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 261 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 262 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 263 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 264 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 265 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 266 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 267 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 268 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 269 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 270 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 271 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 272 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 273 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 274 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 275 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 276 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 277 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 278 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 279 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 280 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 281 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 282 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 283 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 284 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 285 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 286 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 287 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 288 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 289 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 290 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 291 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 292 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 293 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 294 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 295 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 296 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 297 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 298 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 299 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 300 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 301 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 302 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 303 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 304 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 305 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 306 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 307 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 308 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 309 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 310 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 311 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 312 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 313 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 314 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 315 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 316 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 317 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 318 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 319 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 320 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 321 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 322 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 323 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 324 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 325 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 326 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 327 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 328 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 329 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 330 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 331 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 332 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 333 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 334 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 335 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 336 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 337 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 338 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 339 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 340 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 341 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 342 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 343 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 344 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 345 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 346 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 347 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 348 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 349 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 350 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 351 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 352 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 353 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 354 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 355 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 356 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 357 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 358 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 359 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 360 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 361 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 362 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 363 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 364 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 365 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 366 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 367 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 368 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 369 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 370 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 371 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 372 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 373 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 374 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 375 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 376 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 377 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 378 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 379 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 380 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 381 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 382 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 383 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 384 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 385 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 386 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 387 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 388 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 389 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 390 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 391 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 392 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 393 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 394 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 395 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 396 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 397 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 398 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 399 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 400 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 401 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 402 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
