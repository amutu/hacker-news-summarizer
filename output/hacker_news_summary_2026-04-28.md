# Hacker News 热门文章摘要 (2026-04-28)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. VibeVoice：开源前沿语音AI

**原文标题**: VibeVoice: Open-source frontier voice AI

**原文链接**: [https://github.com/microsoft/VibeVoice](https://github.com/microsoft/VibeVoice)

**VibeVoice：开源前沿语音AI概述**

VibeVoice是微软推出的开源语音AI模型系列，兼具文本转语音（TTS）和自动语音识别（ASR）功能。其核心创新在于以7.5赫兹超低帧率运行的连续语音分词器，并结合下一代令牌扩散框架，实现高效、高保真的音频处理。

**主要模型：**
1. **VibeVoice-ASR（7B参数）：** 单次可处理长达60分钟的音频，生成包含说话人识别、时间戳和内容的结构化转录文本。支持50多种语言，并可通过自定义热词提升特定领域的准确性。
2. **VibeVoice-TTS（1.5B参数）：** 可生成长达90分钟的多说话人语音（最多4人），实现自然的轮流发言、富有表现力的细微差别，并支持多种语言（英语、中文等）。
3. **VibeVoice-Realtime（0.5B参数）：** 轻量级实时TTS模型，延迟约300毫秒，支持流式文本输入和稳健的长文本生成（约10分钟）。

**近期里程碑：**
- ASR已集成至Hugging Face Transformers（2026年3月）。
- 开源ASR，附带微调代码并支持vLLM推理。
- 实时TTS新增多语种语音（9种语言）及11种英语风格。
- TTS模型曾被ICLR 2026接收为口头报告论文，后因滥用风险被撤回。

**风险与局限：** 存在深度伪造、偏见及不准确性的潜在风险。仅供研究用途；未经进一步测试不建议商业使用。

---

## 12. 我已正式退出Emacs的使用

**原文标题**: I have officially retired from Emacs

**原文链接**: [https://nullprogram.com/blog/2026/04/26/](https://nullprogram.com/blog/2026/04/26/)

本文宣布作者在每日使用Emacs长达20年后正式退役，期间已逐步过渡到模态编辑和Vim。最终促使这一转变的契机是，他将两款核心Emacs工具——M-x calc和Elfeed——重写为基于wxWidgets的独立C++ GUI应用程序。这一方案实现了快速开发，并在Windows、macOS和Linux上提供原生界面。

新工具包括**stackcalc**（使用GMP/MPFR的多精度计算器，虽缺乏符号处理能力，但速度超越Emacs Calc）和**Elfeed2**（功能已超越原版的源阅读器）。两者均支持跨平台，通过CMake和FetchContent构建，目前已投入日常使用。

作者正为13个仍活跃使用的Emacs软件包（如Elfeed、simple-httpd、json-rpc、skewer、nasm-mode）寻找新维护者，更倾向有可靠贡献记录的开发者。若无人接手，相关项目将被归档但不会删除。

回顾迁移过程，作者指出wxWidgets比Dear ImGui更适合此类应用，能提供原生控件、合理的I/O及路径处理。借助新的“超能力”（很可能指AI辅助编程），原本需要数周的任务如今几天即可完成。文章末尾建议通过作者的公共收件箱开启讨论。

---

## 13. Infisical (YC W23) 正在招聘全栈软件工程师（远程）

**原文标题**: Infisical (YC W23) Is Hiring Full Stack Software Engineers (Remote)

**原文链接**: [https://jobs.ashbyhq.com/infisical/782b9da8-20e1-48b2-919e-6c5430c58628](https://jobs.ashbyhq.com/infisical/782b9da8-20e1-48b2-919e-6c5430c58628)

**摘要：**

Infisical（YC W23）正在招聘一名全栈软件工程师，职位为远程办公，工作地点位于美洲地区。作为Y Combinator支持的初创公司，此次招聘是该企业扩张的一部分。该职位要求求职者启用JavaScript才能查看完整的申请详情，暗示这是基于网页平台的招聘流程。关键信息包括：该职位为全职远程岗位，专注于全栈开发，面向美洲时区的求职者开放。可见文本中未提供职责、资格或福利等额外细节。标题及行动号召（“您需要启用JavaScript才能运行此应用”）构成主要内容，引导用户进入动态申请页面。此次招聘表明Infisical正在扩大其工程团队以支持产品发展。

---

## 14. Localsend：开源跨平台的AirDrop替代方案

**原文标题**: Localsend: An open-source cross-platform alternative to AirDrop

**原文链接**: [https://github.com/localsend/localsend](https://github.com/localsend/localsend)

**LocalSend 简介**

LocalSend 是一款免费、开源、跨平台的应用程序，可在无需互联网连接或第三方服务器的情况下，通过本地网络在附近设备之间安全地共享文件和消息。它采用 REST API 和 HTTPS 加密技术，每台设备均生成 TLS/SSL 证书，以实现最高安全性。

**主要特性：**
- **操作系统：** Android（5.0+）、iOS（12.0+）、macOS（11+）、Windows（10+）、Linux、Fire OS
- **下载方式：** 应用商店（Play Store、App Store、F-Droid、Flathub）、包管理器（Winget、Homebrew、Snap、AUR 等）以及直接安装包（EXE、DMG、APK、AppImage 等）
- **设置：** 开箱即用；可能需要配置防火墙（允许 TCP/UDP 端口 53317）并在路由器上禁用 AP 隔离
- **便携模式：** 自 v1.13.0 起可用，通过在可执行文件目录中创建 `settings.json` 文件启用
- **隐藏启动：** 使用 `--hidden` 标志可最小化启动至系统托盘

**工作原理：** 设备通过基于 HTTPS 的安全 REST API 进行通信，所有数据均已加密，且不依赖外部服务器。

**贡献方式：** 支持通过 Weblate 进行翻译、修复 Bug 以及功能改进。提供了使用 Flutter 和 Rust 构建所有平台的说明。

**故障排除：** 常见问题包括设备不可见（检查 AP 隔离、网络隐私设置和本地网络权限）以及传输速度慢（使用 5 GHz 频段、禁用加密）。

---

## 15. AISLE 在 OpenEMR 医疗软件中发现 38 个 CVE 漏洞

**原文标题**: AISLE Discovers 38 CVEs in OpenEMR Healthcare Software

**原文链接**: [https://aisle.com/blog/aisle-discovers-38-critical-security-vulnerabilities-in-healthcare-software-used-by-100000-providers](https://aisle.com/blog/aisle-discovers-38-critical-security-vulnerabilities-in-healthcare-software-used-by-100000-providers)

**摘要：** AISLE 借助其人工智能分析器，在 OpenEMR 中发现了 38 个 CVE 漏洞。OpenEMR 是一个开源电子健康记录平台，被超过 10 万名医疗服务提供者和 2 亿名患者使用。这一数量占 2026 年第一季度所有 OpenEMR 安全公告的一半以上。这些漏洞仅在一个季度内被发现，而 2018 年由人类团队进行的一次重大审计仅发现了 23 个。

最严重的发现包括两个关键 SQL 注入漏洞（CVE-2026-24908 和 CVE-2026-23627），它们可能导致整个数据库被入侵、受保护健康信息外泄及远程代码执行。其他值得注意的缺陷包括一个 FHIR 患者隔离区绕过漏洞（CVE-2026-24487），该漏洞无视访问令牌，暴露了所有患者数据；此外还有大量授权绕过漏洞、缺失的 ACL 检查以及跨站脚本漏洞。许多漏洞允许已认证用户访问或修改其权限范围之外的数据。

AISLE 为全部 38 个 CVE 生成了自动修复方案，相关修复已在 2026 年 2 月发布的 OpenEMR 8.0.0 及后续补丁中推出。双方通过将 AISLE PRO 集成到 OpenEMR 的代码审查流程中，在漏洞进入生产环境前捕获它们，从而将合作正式化。OpenEMR 基金会对此合作表示赞赏，并强调其对患者安全与数据隐私的重要性。

---

## 16. 谁拥有Claude Code编写的代码？

**原文标题**: Who owns the code Claude Code wrote?

**原文链接**: [https://legallayer.substack.com/p/who-owns-the-claude-code-wrote](https://legallayer.substack.com/p/who-owns-the-claude-code-wrote)

以下是文章的简要总结：

**AI生成代码的所有权**

由Claude Code等AI工具编写的代码，其法律所有权尚不明确，主要取决于三个关键问题：

1. **人类作者身份**：版权仅保护人类创作的作品。缺乏“有意义的人类创作”（例如仅通过提示模型）而由AI生成的代码可能不受版权保护，并落入公共领域。要主张所有权，开发者必须记录架构选择、重大修改等创造性决策。

2. **雇佣合同**：即使代码受版权保护，根据“雇佣作品”原则，其所有权也很可能属于雇主。涵盖“公司授权工具”或“任何使用公司资源的工作成果”的宽泛知识产权条款，可能延伸至个人副业项目。为保护个人项目，应使用完全独立的个人账户、设备及工具。

3. **开源污染**：基于公共代码训练的AI工具可能逐字复现GPL/copyleft授权代码，在不知情中造成许可违规。“不知情”不构成抗辩理由。对商业产品而言，许可证扫描（使用FOSSA或Snyk等工具）至关重要。

**实用建议**：记录您的人类贡献（详细提交说明、设计文档）；开展个人项目前阅读雇佣合同中的知识产权条款；发布商业代码时使用适当的商业版AI方案（非免费版/专业版）。风险最常出现在并购尽职调查阶段，而非法庭诉讼中。

---

## 17. 阿联酋将退出欧佩克

**原文标题**: UAE to leave OPEC

**原文链接**: [https://www.ft.com/content/8c354f2d-3e66-47f1-aad4-9b4aa30e386d](https://www.ft.com/content/8c354f2d-3e66-47f1-aad4-9b4aa30e386d)

无法访问文章链接。

---

## 18. 展示 HN：带 NASA 实时影像的太阳与月球仪表盘

**原文标题**: Show HN: Live Sun and Moon Dashboard with NASA Footage

**原文链接**: [https://www.lumara-space.app/](https://www.lumara-space.app/)

本文介绍了一个**实时日月仪表盘**，展示来自NASA的实时影像。太阳部分由NASA的**太阳动力学观测站（SDO）**提供支持，该观测站每**12秒**以**12种不同波长**捕捉图像。这些波长揭示了从相对低温（5000开尔文）的太阳表面到极端高温（1000万开尔文）的耀斑等离子体等一系列太阳活动，有效展现了太阳动态行为中隐藏的层次。该仪表盘提供了一种交互式方式，可观看持续不断的太阳影像流，并可能结合月球数据，用于实时天文观测。

---

## 19. Laguna XS.2 与 M.1

**原文标题**: Laguna XS.2 and M.1

**原文链接**: [https://poolside.ai/blog/laguna-a-deeper-dive](https://poolside.ai/blog/laguna-a-deeper-dive)

**Laguna XS.2 与 M.1 版本发布摘要**

本文宣布由一家专注于长周期任务智能编码的应用研究机构发布两款新AI模型：Laguna M.1 和 Laguna XS.2。两者均采用混合专家（MoE）架构，专为编码与智能体能力设计。

**Laguna M.1** 总参数量为225B（激活23B），使用6,144块NVIDIA Hopper GPU从头训练，基于30万亿个令牌。其在SWE-bench Pro上达到46.9%的准确率，在Terminal-Bench 2.0上为40.7%。**Laguna XS.2** 是更小的开源权重模型（总33B，激活3B），采用Apache 2.0许可发布。其SWE-bench Pro得分为44.5%，Terminal-Bench 2.0得分为30.1%，在同参数量级模型中表现卓越。

关键技术革新包括：自动化数据混合优化（AutoMixer）、合成数据贡献（约占训练混合的13%，超4.4T令牌），以及自定义分布式Muon优化器——相比AdamW减少15%训练步骤且开销极小。该公司采用异步在线强化学习系统训练模型以应对智能体任务。

两款模型均通过API和OpenRouter限时免费使用。公司还发布了用于智能体训练与评估的代理客户端协议（ACP）服务器。未来计划包括发布Laguna XS.2基础版及扩展框架支持。

---

## 20. Warp 现已开源

**原文标题**: Warp is now open-source

**原文链接**: [https://www.warp.dev/blog/warp-is-now-open-source](https://www.warp.dev/blog/warp-is-now-open-source)

**摘要：** Warp，一款终端与代理开发环境（ADE），已基于AGPL许可证开源。该公司宣布了一项根本性转变：社区成员现可通过其云端编排平台Oz（基于OpenAI的GPT模型驱动）使用代理优先的工作流进行贡献。OpenAI是该新仓库的创始赞助商。

**关键原因：** 主要驱动力是速度。最大瓶颈不再是编写代码，而是人类任务（如规格制定和功能验证）。代理负责实现，将人类解放出来专注于方向把控与质量保障。开源还为社区提供了一个功能完整的开放替代方案，以对抗闭源ADE，让开发者能够塑造代理开发的未来。

**产品改进：** 伴随开源发布，Warp新增了对更多开源模型（Kimi、MiniMax、Qwen）的支持，提供了可定制的界面选项（从基础终端到完整ADE），以及期待已久的设置文件，用于编程控制与可移植性。

**运作方式：** 源代码托管于GitHub。代理负责编码、规划与测试；社区成员贡献创意、方向与验证。公共GitHub Issue将追踪功能，路线图将保持开放。Warp将此举视为战略举措，旨在加速开发、与资金充裕的对手竞争，并创建社区驱动的良性改进循环。

---

## 21. C++26 define_static_array无法实现的功能

**原文标题**: Things C++26 define_static_array can't do

**原文链接**: [https://quuxplusone.github.io/blog/2026/04/24/define-static-array/](https://quuxplusone.github.io/blog/2026/04/24/define-static-array/)

**摘要：**

本文探讨了 C++26 中 `std::define_static_array` 的局限性。该工具用于将编译期容器数据（例如 `constexpr std::vector`）转换为静态存储数组（以 `std::span` 形式返回）。尽管它比手动将数据复制到 `std::array` 的“constexpr 两步法”更为简洁，但存在四个关键缺陷：

1.  **非结构化类型：** 无法处理 `std::optional<int>` 或 `std::string` 等类型，因为它们不是结构化的（即不能用作非类型模板参数，NTTP）。
2.  **指向字符串字面量的指针：** 虽然 `const char*` 是结构化的，但指向字符串字面量的指针不是有效的 NTTP，因此此类指针的数组会失败。
3.  **只移动类型：** 由于 NTTP 必须可复制，`define_static_array` 无法创建只移动类型（例如 `std::unique_ptr`）的数组，而两步法（通过默认构造）可以做到。
4.  **可变数组：** 输出是 `span<const T>`（只读），源于不可变的模板参数对象。两步法可以生成可变静态数组。

作者指出，问题 1-3 可能通过 Barry Revin 的提案（P3380R1）得到解决，该提案允许将用户定义类型标记为显式结构化。然而，关于可变性的根本限制仍然存在。文章总结道，`define_static_array` 并不能完全取代两步法，未来的 C++ 标准可能需要一种新的机制（例如与反射代码生成相关）来解决所有这些情况。

---

## 22. GitHub Actions 是最薄弱的环节

**原文标题**: GitHub Actions is the weakest link

**原文链接**: [https://nesbitt.io/2026/04/28/github-actions-is-the-weakest-link.html](https://nesbitt.io/2026/04/28/github-actions-is-the-weakest-link.html)

本文认为，GitHub Actions因其默认不安全的架构设计，已成为开源供应链攻击的主要载体。文章将Ultralytics、tj-actions（影响2.3万个仓库）、nx和Trivy等重大安全事件追溯到Action的特定功能：

1. **危险触发器**：`pull_request_target`和`issue_comment`以完整密钥权限运行不可信代码，导致凭据窃取。
2. **可变标签**：Action版本作为可强制推送的git引用，缺乏完整性验证，存在标签劫持风险。
3. **默认写入令牌**：旧仓库中`GITHUB_TOKEN`默认拥有写入权限，可将评论注入升级为版本发布。
4. **缓存投毒**：不可信PR任务可污染缓存，后续被合法工作流恢复使用。

作者指出，PyPI、npm等软件包仓库通过基于OIDC的发布机制将信任集中于GitHub Actions，使该平台缺陷成为行业最薄弱环节。

虽然GitHub近期宣布修复方案（锁文件、策略控制），但均为可选功能且需要数月才能就绪。作者主张实施突破性的默认变更：公共仓库使用只读令牌、不对不可信事件数据进行shell扩展、发布工作流采用不可变Action引用。在此之前，建议使用第三方linter工具`zizmor`、锁定SHA值，并在所有工作流中设置`permissions: {}`。

---

## 23. Talkie：一款源自1930年的13B复古语言模型

**原文标题**: Talkie: a 13B vintage language model from 1930

**原文链接**: [https://talkie-lm.com/introducing-talkie](https://talkie-lm.com/introducing-talkie)

文章介绍了"talkie-1930-13b"——一个仅基于1931年前英文文本（2600亿tokens）训练的130亿参数语言模型。该模型由尼克·莱文、大卫·杜韦诺和亚历克·雷德福等研究人员开发，使用户能够"与过去对话"，并在无数据污染的情况下研究AI泛化能力。

关键要点：
- **研究目的**：复古语言模型有助于研究预测、发明预见以及超越训练数据的泛化能力。例如，尽管talkie对数字计算机一无所知，但能通过上下文示例学习基础Python编程。
- **评估结果**：与基于FineWeb训练的现代"孪生模型"相比，talkie在知识基准测试中表现较弱，但剔除时代错位问题后性能差距缩小一半。在核心语言与计算任务上两者表现相近。
- **训练挑战**：需确保无1930年后数据泄露（如罗斯福、二战），OCR质量低下（学习效率仅为人工转录本的30%），且缺乏现代指令微调数据。团队利用历史手册、合成提示及以Claude为评判官的强化学习构建了定制化后训练流程。
- **扩展计划**：将语料库扩展至超万亿tokens，开发针对性的复古OCR系统以提升质量，强化泄露检测，并联合历史学家构建精确的时期人格模型。
- **合作邀请**：团队诚邀历史学家、研究机构及学者在数据、资金与研究方面提供支持。

该项目旨在理解数据多样性如何塑造AI行为，并探索语言模型能否独立得出截止日期后的新发现。

---

## 24. 破产案件增加11.9%

**原文标题**: Bankruptcies increase 11.9 percent

**原文链接**: [https://www.uscourts.gov/data-news/judiciary-news/2026/04/23/bankruptcies-increase-119-percent](https://www.uscourts.gov/data-news/judiciary-news/2026/04/23/bankruptcies-increase-119-percent)

美国法院行政办公室2026年4月23日发布的报告显示，截至2026年3月31日的12个月期间，破产申请数量同比增长11.9%。申请总数从上一年的529080件上升至591850件。企业申请量增长11.4%（从23309件增至25960件），非企业申请量增长11.9%（从505771件增至565890件）。

报告指出，在经历了十多年的持续下降（从2010年9月近160万件的峰值降至2022年6月380634件的低点）之后，自2022年以来，申请总量每个季度均有所增长，但仍远低于历史高位。

数据按年度和破产章节分类提供。完整报告还包括按县统计的申请数据、月度数据以及历年对比分析。

---

## 25. FCC资金申请文件显示，派拉蒙在合并后外资持股比例将为49.5%

**原文标题**: FCC Funding Application Notes Paramount Will Be 49.5% Foreign-Owned Post-Merger

**原文链接**: [https://deadline.com/2026/04/paramount-fcc-request-wbd-merger-middle-east-1236873732/](https://deadline.com/2026/04/paramount-fcc-request-wbd-merger-middle-east-1236873732/)

在向美国联邦通信委员会（FCC）提交的文件中，派拉蒙披露，其与华纳兄弟探索公司（WBD）计划中的1100亿美元合并完成后，新公司将由非美国投资者持有49.5%的股份。这包括来自沙特阿拉伯、卡塔尔和阿布扎比的三家中东投资基金共同持有的38.5%股权，这些基金将出资240亿美元。派拉蒙辩称，该交易提供了更多资本渠道，使其能更有效地竞争。

该公司强调，这些外国利益相关方为被动投资者，不享有投票控制权。然而，引入沙特及海湾国家利益十分敏感，因为合并后的实体将拥有CBS新闻和CNN。该文件被描述为常规监管步骤，不影响主要合并审查。

此合并已扫清大部分监管障碍，预计将于9月完成。包括一些州总检察长在内的反对者正在评估法律选项。此前在谈判中，曾对派拉蒙的制片厂及流媒体业务提出收购要约但遭拒绝的奈飞，也强调了外国所有权问题。

---

## 26. ASML成为尖端芯片的瓶颈

**原文标题**: ASML became the chokepoint for cutting-edge chips

**原文链接**: [https://worksinprogress.co/issue/the-worlds-most-complex-machine/](https://worksinprogress.co/issue/the-worlds-most-complex-machine/)

**摘要：**

荷兰公司ASML垄断了制造全球最尖端计算机芯片所必需的极紫外光刻机。这些设备利用13.5纳米波长的光线，在硅晶圆上蚀刻数十亿个微型晶体管，从而推动计算能力的指数级增长。

ASML的主导地位并非必然。1984年，它作为飞利浦一个挣扎求生的衍生公司起步，在尼康和佳能等对手垂直整合时，它却选择外包零部件。其首款产品遭遇失败，公司险些倒闭，直到PAS 5500系统凭借模块化、易维修的设计获得成功。

两个关键项目奠定了ASML的未来。首先，1997年成立的美国公私合作机构“极紫外有限责任公司”资助了EUV研究。ASML起初被排除在外，后来在收购了唯一一家美国参与方硅谷集团后获准加入，从而独家获得了关键知识产权。其次，ASML利用比利时IMEC研究中心，向台积电等关键客户展示其EUV原型机，赢得了佳能和尼康未能获得的合作伙伴关系。

如今，ASML市值达4000亿美元，并成为地缘政治热点，因为它是生产尖端芯片所需设备的唯一供应商。

---

## 27. 一份好的AGENTS.md是模型的升级，而一份糟糕的则比完全没有文档更糟。

**原文标题**: A good AGENTS.md is a model upgrade. A bad one is worse than no docs at all

**原文链接**: [https://www.augmentcode.com/blog/how-to-write-good-agents-dot-md-files](https://www.augmentcode.com/blog/how-to-write-good-agents-dot-md-files)

**摘要：AGENTS.md 最佳实践研究**

通过对单体仓库中 AGENTS.md 文件的系统研究，发现精心编写的文档可以将代码生成质量提升至相当于从基础版 AI 模型升级到高级版的程度，而糟糕的文档则会对输出产生负面影响。

**主要发现：**
- 同一份文件可能因任务复杂度不同而对一项任务有帮助（最佳实践提升25%），却对另一项任务造成损害（完整性降低30%）
- 最优的 AGENTS.md 文件为 100-150 行，包含聚焦的参考文档，可带来 10-15% 的提升

**有效做法：**
1. **渐进式信息呈现** — 简要涵盖常见案例，将细节推至参考文件
2. **流程化操作指南** — 编号步骤可将接线错误减少 40%，正确率提升 25%
3. **决策表** — 在编码前解决歧义（例如 React Query 与 Zustand 的选择）
4. **真实代码示例** — 3-10 行代码片段使代码复用率提升 20%
5. **领域特定规则** 搭配具体替代方案（"做什么"与"不做什么"）
6. **模块化结构** — 模块级文档优于单一的整体根级文档

**失败做法：**
- 过度使用"不要做"而无"要做"的指导，会导致过度探索和不完整的解决方案
- 过多的架构概览导致阅读无关上下文（80K tokens）
- 代码库中尚不存在的新模式；应采用规范驱动开发

**迁移建议：** AGENTS.md 是唯一能被可靠发现的文档（100%）。需从中直接引用其他文档。应审计周边文档的膨胀（例如 500K 字符的规范），因为即使是优秀的 AGENTS.md 文件也会因此受到削弱。

---

## 28. GitHub Copilot 代码审查将开始消耗 GitHub Actions 分钟数

**原文标题**: GitHub Copilot code review will start consuming GitHub Actions minutes

**原文链接**: [https://github.blog/changelog/2026-04-27-github-copilot-code-review-will-start-consuming-github-actions-minutes-on-june-1-2026/](https://github.blog/changelog/2026-04-27-github-copilot-code-review-will-start-consuming-github-actions-minutes-on-june-1-2026/)

**摘要：** GitHub 宣布，自2026年6月1日起，GitHub Copilot 对私有仓库的代码审查，除了将按新使用量模型以AI积分计费外，还将开始消耗GitHub Actions分钟数。

目前，Copilot代码审查仅消耗高级请求单位（PRU）。变更后，每次审查将通过两种方式计费：作为AI积分计费，并消耗您现有计划中包含的Actions分钟数。超出包含分钟数的使用量将按标准GitHub Actions费率收费。公共仓库不受影响，仍可使用免费Actions分钟数。

此变更适用于所有Copilot计划（Pro、Pro+、Business和Enterprise），包括通过组织直接计费来自未授权用户的审查。用户可通过账户或组织设置中的预算来管理支出。

为做好准备，GitHub建议审查当前的Actions使用情况、检查预算、监控使用指标，并与账单管理员及工程负责人分享此更新。对于已使用GitHub托管运行器的仓库，无需额外设置，但也可使用自定义选项（更大的运行器或自托管运行器）。

---

## 29. 南极冰层深处，长久预言的宇宙低语传来突破

**原文标题**: Deep under Antarctic ice, a long-predicted cosmic whisper breaks through

**原文链接**: [https://phys.org/news/2026-04-deep-antarctic-ice-cosmic-strange.html](https://phys.org/news/2026-04-deep-antarctic-ice-cosmic-strange.html)

无法访问该文章链接。

---

## 30. 你能找到那颗彗星吗？

**原文标题**: Can You Find the Comet?

**原文链接**: [https://apod.nasa.gov/apod/ap260427.html](https://apod.nasa.gov/apod/ap260427.html)

本文展示了2026年4月27日的每日天文一图，标题为“卫星轨迹背后的R3泛星彗星”。这张由乌利·费尔在德国巴伐利亚拍摄的照片中，C/2025 R3（泛星）彗星隐藏在一张由超过十分钟长曝光造成的卫星条纹网中。肉眼观测下，卫星呈现出缓慢移动的光点。由于该彗星在角度上非常接近太阳，目前难以观测。随着它绕太阳运行，未来几周内将在南半球达到最佳观测效果，但此后它将朝着星际空间前进，逐渐暗淡。文章引导观测者将视线投向图像中心稍上方即可找到这颗彗星。

---

