# Hacker News 热门文章摘要 (2026-11-27)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. AMD 显卡专属 Llama.cpp 补丁推荐

**原文标题**: AMD Specific Patches for Llama.cpp

**原文链接**: [https://devnull.land/amd-specific-llama-cpp](https://devnull.land/amd-specific-llama-cpp)

摘要：文章发表于2026年11月，作者推荐AMD显卡用户使用llama-cpp-rdna-boosts项目。当时推理引擎领域涌现大量面向特定硬件的定制引擎（如Strata、Basalt等），虽能大幅提升速度，但为追求吞吐量开始篡改模型推理行为（如Strata优先调用显存中的专家而非本应选中的内存专家），存在准确性隐患。相比之下，llama-cpp-rdna-boosts以最小补丁集形式在llama.cpp基线上提供AMD RDNA架构专属优化，具有维护简单、变更透明、与上游同步等优势。作者通过Podman拉取预构建ROCm镜像完成部署，在AMD R9700（经eGPU连接笔记本）上运行Qwen3.8-27B量化模型，Prefill速度从约700提升至1300 tokens/s，Token生成从35提升至55 tokens/s，提升显著。文章也提及曾尝试vllm-radiance等方案，但因构建复杂度过高而放弃，最终选择了轻量、稳定的rdna-boosts。

---

## 2. "RansomwareHelp"技术总监因电汇欺诈遭起诉

**原文标题**: CTO of 'RansomwareHelp' Indicted for Wire Fraud

**原文链接**: [https://krebsonsecurity.com/2026/11/cto-of-ransomwarehelp-indicted-for-wire-fraud/](https://krebsonsecurity.com/2026/11/cto-of-ransomwarehelp-indicted-for-wire-fraud/)

美国佛罗里达公司RansomwareHelp联合创始人兼CTO胡安·帕拉西奥近日被以电汇欺诈罪起诉。该公司运营六年，声称拥有"先进加密工具"可100%恢复被勒索软件加密的数据，并告诫受害者"切勿支付赎金"。然而FBI设局调查揭露，该公司实为秘密向勒索团伙购买解密密钥，再向受害者大幅加价转卖。在FBI钓鱼行动中，帕拉西奥以约6000美元从"假勒索团伙"购得解密器，却向"假受害者"收取16010美元。另一起案例中，一家遭Lockbit攻击的会计公司收到该公司43.9万美元的恢复报价，而安全公司Soteria介入后发现，RansomwareHelp曾利用远程桌面工具删除受害者系统中的勒索信息，并秘密与Lockbit谈判数日，阻止受害者自行与攻击者沟通。该公司主要瞄准缺乏技术知识、处境绝望的小微企业。此案是近期美国司法部连续打击网络安全行业欺诈行为的最新一例，此前已有多家安全公司高管因类似行为被起诉或判刑。

---

## 3. YouTube 广告惩罚者——广告出现即自动重载

**原文标题**: YouTube Ad Punisher – Auto-reloads YouTube pages when an ad plays

**原文链接**: [https://github.com/antonpictures/youtube-punisher](https://github.com/antonpictures/youtube-punisher)

YouTube 广告惩罚者（YouTube Ad Punisher）是一款浏览器扩展，核心机制极简：检测到 YouTube 广告播放时，立即捕获当前播放时间戳并自动重载页面，YouTube 随即通过 URL 参数 &t=Xs 跳转回原位置，实现零等待跳广告。该方案为纯客户端操作，不拦截任何网络请求，因此可规避 YouTube 反广告拦截检测。检测层每 500ms 轮询并结合 MutationObserver 监听广告相关 DOM 变化，重载设有 3 秒冷却防止死循环。若连续 3 次重载仍未清除广告，则跳转至无广告镜像站 yout-ube.com（附 &loop=0 防循环）；同时自动切换辅助标签页 4 秒再切回，利用 Chrome 对后台标签页的节流让广告状态重置。扩展内置广告历史数据库，记录每次广告的投放商、时长、视频标题、播放位置及操作方式，支持 JSON/CSV 导出，数据完全本地存储，弹窗界面提供统计与高频广告商排行。与 uBlock Origin（拦截请求）、SponsorBlock（跳过赞助段落）等工具互补，推荐组合使用。安装支持 Chrome/Brave/Edge/Opera 加载解压缩包，Safari 提供 AppleScript 实验方案。项目采用 MIT 许可。

---

## 4. OpenAI或已进入降本模式

**原文标题**: OpenAI may be in cost control mode

**原文链接**: [https://micjm.com/blog/openai-is-in-cost-control-mode/](https://micjm.com/blog/openai-is-in-cost-control-mode/)

OpenAI近期发布的Astra 6.2和Sol 6.2遭到广泛批评。数据显示，这两款模型疑似为削减成本进行了调优，具体表现为每个任务的输出token数和推理token数明显下降。在真实工作对抗系统中，与同级对手相比，Astra 6.2和Sol 6.2的推理量显著减少；Astra 6和Sol 6.1表现尚属正常，但6.2版本已沦为推理不足的异常值。统计检验结果进一步证实了这一趋势：输出下降的p值，Sol为0.0055、Astra为0.022；推理下降的p值，Sol为0.00013、Astra为0.0064，均具统计显著性。在成本与能力的权衡中，GPT-6至GPT-6.2的升级虽降低了支出比，Elo评分也出现下滑。综合来看，Astra和Sol 6.2相较前代进行了明显的成本优化，但幅度过大，使其成为"思考不足"的异常模型，实际任务表现因此受损。

---

## 5. Rvoip 0.5：纯 Rust 实现的完整 VoIP 技术栈

**原文标题**: Rvoip 0.5 the complete VoIP stack in Rust

**原文链接**: [https://github.com/eisenzopf/rvoip](https://github.com/eisenzopf/rvoip)

rvoip 是 Rust 编写的完整 VoIP 通信库，将 SIP、RTP、WebRTC、QUIC/WebTransport 及语音 AI 统一于同一对话模型，无需外部 SIP 服务器或媒体引擎。工作区含 47 个 crate，用户仅需引入一个依赖即可运行。性能上，单台 AWS c8i.4xlarge（16 vCPU）SIP over TLS 信令吞吐达 8,348 次/秒，TLS+SRTP 语音呼叫达 1,124 次/秒、支撑约 11,200 路并发，p50 建立延迟仅 1 毫秒。项目提供三条开发路径：SIP 电话（软电话、PBX、IVR、B2BUA）、浏览器与跨传输网关（SIP 与 WebRTC 互通）、语音 AI（对接 Vapi 或自建 ASR/TTS 管线）。架构上，所有传输层统一映射为 Conversation、Session、Participant、Connection 等核心对象，由 Orchestrator 调度桥接。成熟度分 Beta-qualified 与 Developer preview 两档，前者已通过发布门禁及互操作验证。rvoip 已在 Asterisk、FreeSWITCH、Kamailio、OpenSIPS 等主流系统上完成互操作测试并提供签名认证。

---

## 6. 美国：一张《文明》风格的游戏地图

**原文标题**: The USA as a Civilizations-esque map

**原文链接**: [https://karpathy.ai/usaciv/](https://karpathy.ai/usaciv/)

无法访问该文章链接

---

## 7. Intel One Mono 开源等宽字体（2023）

**原文标题**: Intel One Mono font (2023)

**原文链接**: [https://github.com/intel/intel-one-mono](https://github.com/intel/intel-one-mono)

Intel One Mono 是 2023 年推出的开源等宽字体家族，由 Frere-Jones Type 联合 Intel 品牌团队及VMLY&R 设计，专为低视力及法定盲人开发者打造，以高清晰度和易读性为核心，旨在缓解编程视觉疲劳、降低代码错误率。字体支持 200 余种拉丁字母语言，提供 Light、Regular、Medium、Bold 四种字重及对应斜体，涵盖 .otf、.ttf、.woff、.woff2 格式，适配桌面、移动端与网页场景。内置多项 OpenType 特性：编程连字（ss01）、箭头符号（ss02）、"www"连字（ss03）、替代数字"3"（ss04）、上提冒号（ss11/ss12）及上标/下标与分数等。官方同时提供 UFO 源文件（分实例与主文件两层），支持用 RoboFont 等工具编辑后生成字体；TrueType 格式含手动 hinting 优化，重建时建议使用 autohint。文中还详述了在 VSCode、Sublime Text、IntelliJ 等编辑器中安装字体及启用连字的具体方法。

---

## 8. Show HN：一个浏览器标签页中并排运行三个 Linux 虚拟机，各搭载不同浏览器

**原文标题**: Show HN: Three Linux VMs in a browser tab, each running a different browser

**原文链接**: [https://michidk.github.io/sidebyside/](https://michidk.github.io/sidebyside/)

本项目展示了在单个浏览器标签页中同时运行三个独立 Linux 虚拟机的技术演示。三台虚拟机以并排（Side by Side）方式呈现，每台中分别运行一款不同的浏览器，用户可在同一页面内直观对比各浏览器的渲染表现与界面差异。该项目体现了浏览器端轻量级虚拟化技术（如 WebAssembly 结合微虚拟机方案）的实际潜力，使开发者无需离开浏览器，即可在彼此隔离的环境中运行完整 Linux 系统及其桌面应用。此类技术对跨浏览器兼容性测试、前端开发调试、安全沙箱隔离等场景具有实用价值，也展示了现代浏览器在性能与虚拟化方面的持续进步。

---

## 9. 好奇心并非独角戏

**原文标题**: Curiosity Is No Solo Act

**原文链接**: [https://thereader.mitpress.mit.edu/curiosity-is-no-solo-act/](https://thereader.mitpress.mit.edu/curiosity-is-no-solo-act/)

无法访问该文章链接。

---

## 10. 乔治·怀特塞德斯（1939—2026）

**原文标题**: George Whitesides, 1939-2026

**原文链接**: [https://www.science.org/content/blog-post/george-whitesides-1939-2026](https://www.science.org/content/blog-post/george-whitesides-1939-2026)

无法访问该文章链接

---

## 11. 《纽约时报》警告摄影师勿升级Photoshop，AI功能恐影响照片可信度

**原文标题**: The New York Times warns photographers not to update Photoshop over AI features

**原文链接**: [https://www.theverge.com/ai-artificial-intelligence/1041227/the-new-york-times-warns-photographers-not-to-update-photoshop-over-ai-features](https://www.theverge.com/ai-artificial-intelligence/1041227/the-new-york-times-warns-photographers-not-to-update-photoshop-over-ai-features)

摘要：《纽约时报》近期向自由摄影师发送邮件，要求其承担《纽约时报》拍摄任务时避免使用Adobe Photoshop 2027版（28.0.0及后续更新）。该版本新增"AI辅助编辑器"视图、AI编辑助手、提示词图像变换、AI超分辨率及智能重新构图等多项AI功能。核心问题在于，使用这些功能后照片元数据可能被标记为"AI生成或AI编辑"，而《纽约时报》摄影政策仅允许最小限度颜色调整，严禁"润色或数字操控"，AI标记将损害读者对新闻影像真实性的信任。今年8月起，Adobe已在其应用中支持C2PA内容溯源元数据标准。摄影主管Meaghan Looram和Josh Haner在邮件中指出，新版本AI功能"以用户可能无法察觉的方式"运作，故发出禁令。《纽约时报》发言人Graham James已确认该要求。截至发稿，Adobe尚未就具体涉及哪些功能作出回应。

---

## 12. NormalScript：一种再普通不过的脚本语言

**原文标题**: NormalScript: A perfectly normal scripting language

**原文链接**: [https://psychoscript.com/](https://psychoscript.com/)

NormalScript 是一款主打极简的脚本语言，以纯 JavaScript 包的形式嵌入宿主环境，支持 Node.js ≥ 24 或 Bun ≥ 1.4。其核心卖点在于零额外基础设施：无需编译或加载 WASM 模块，无需安装原生插件（native addon），也无需搭建隔离沙箱（isolate）。用户只需调用 Runtime.make 接口，将普通的宿主函数（host functions）直接传入，即可完成运行。这种设计哲学与当前许多脚本引擎追求独立编译、重型沙箱的趋势形成鲜明反差——NormalScript 以最朴素、最"正常"的方式实现了脚本嵌入与执行，将集成成本降至最低，让开发者无需处理任何额外的构建链或运行时配置，开箱即用。

---

## 13. Nextcloud Office 桌面应用

**原文标题**: Nextcloud Office Desktop app

**原文链接**: [https://nextcloud.com/blog/euro-office-comes-to-your-desktop-with-the-nextcloud-office-desktop-app/](https://nextcloud.com/blog/euro-office-comes-to-your-desktop-with-the-nextcloud-office-desktop-app/)

2026年11月13日，Nextcloud正式发布基于Euro-Office引擎的桌面办公应用，支持Windows、macOS和Linux三大平台。Euro-Office是2026年6月推出的欧洲主权协作办公套件，由欧洲团队开发治理。该应用免费开源，集成文字、表格、演示文稿及PDF编辑器，高度兼容Microsoft Office格式（DOCX、XLSX、PPTX）及开放格式（ODT、ODS、ODP）。

核心亮点包括：支持离线编辑，无需网络即可工作；调用本地系统字体（含企业字体），无需管理员介入；提供数字签名功能，确保文件完整性与签署人身份可追溯；支持密码保护和编辑权限控制。用户可将Nextcloud Hub实例连接至应用，实现多账号、多云端切换，并与团队实时协作编辑。

应用采用AGPL v3许可，鼓励社区参与贡献，涵盖Bug反馈、功能建议、代码提交及翻译。此外，Nextcloud还介绍了其ISV合作伙伴计划及Nextcloud Present等新产品，持续强化作为Microsoft Office和Microsoft 365主权替代方案的定位。

---

## 14. Show HN：fuck_data_brokers.py——用Python向数据经纪商说"去你的"

**原文标题**: Show HN: Fuck_data_brokers.py

**原文链接**: [https://github.com/gary23w/f-ck_data_brokers](https://github.com/gary23w/f-ck_data_brokers)

摘要：作者长期从事数据经纪商数据删除兼职，GPT-4问世后经纪商规模暴增千倍，个人已无力覆盖所有人，遂开源此工具。fuck_data_brokers.py 是一个零依赖、单文件的Python脚本，所有数据仅存本地，帮助用户从600余家注册数据经纪商处删除个人信息。核心功能：自动拉取加州、俄勒冈、德州公共注册表中的经纪商名单（合计750+），以用户名义生成符合当地法律的删除/退出信函，支持每批20封批量发送；内置常见推托话术识别（"已删除""未找到记录""请用表单"等），自动判定下一步；两次拒绝后发七日期限最终通知，逾期则指引向隐私监管机构投诉。使用门槛极低，仅需Python 3.8+和一个邮箱，提供菜单与命令行两种模式，亦可作为MCP服务器接入AI助手自动完成全流程，但验证码与证件环节始终由用户本人操作，工具绝不代过验证码、不点击可疑链接、不索取地址或证件。此外，作者另推付费服务"Agent Garrett"，7×24自动持续追踪，解决"删了又收"的反复问题。项目采用MIT许可证，经纪商列表每小时从加州注册表自动更新。

---

## 15. Show HN：SimDrop——在 macOS 访达侧边栏中拖拽管理 iOS 模拟器

**原文标题**: Show HN: SimDrop – Running iOS simulators in the macOS Finder sidebar

**原文链接**: [https://github.com/rxliuli/sim-drop](https://github.com/rxliuli/sim-drop)

SimDrop 是一款 macOS 应用，将已启动的 iOS 模拟器映射为访达侧边栏中的文件夹，用户可像操作本地文件一样拖拽进出。每个模拟器含"照片和视频"与"下载"两个子目录，模拟器关闭后自动消失。安装通过 Homebrew Cask 或 GitHub DMG，需 macOS 15+，已签名公证。架构分三层：主应用负责设置与注册；后台 launchd 辅助进程通过 FSEvents 监听模拟器状态、调用 simctl 导入媒体、管理废纸篓；Finder 扩展（File Provider）读写模拟器文件。照片支持缩略图预览，删除直接修改 Photos.sqlite；下载文件夹支持增删替换，删除移入 Mac 废纸篓可恢复。拖拽默认移动（⌥ 拖拽复制），因 File Provider 限制无法改为默认复制。不支持真机。代码以 GPL-3.0 开源，CI 流程集成 XcodeGen 与 Apple 公证，升级后需手动打开一次以重注册扩展和辅助进程。

---

## 16. 《利昂斯Unix注释：为何被秘密传抄二十年》

**原文标题**: Lions' Commentary on Unix: Why It Was Secretly Copied for 20 Years

**原文链接**: [https://fosscomics.com/posts/17.%20Lions%27%20Commentary%20on%20Unix/](https://fosscomics.com/posts/17.%20Lions%27%20Commentary%20on%20Unix/)

1976年，澳大利亚新南威尔士大学的John Lions为帮助学生理解操作系统，将AT&T Unix第六版内核源码整理为教学注释，用作课堂讲义。该注释因讲解清晰、贴合源码，迅速在持有Unix许可证的院校和研究机构间流传，连贝尔实验室都索要副本。然而1979年，AT&T在USENIX大会上公布第七版新许可条款，严禁教学中披露或讨论源码，利昂斯的注释本随之受到严格管控，流通几近断绝。

在正式出版前的近二十年间，计算机专业学生只能依靠私下非法复印的版本学习，这本"地下教材"培养了一代操作系统开发者，深刻影响了学界对系统内核的认知。期间，Peter H. Salus、Dennis Ritchie等人多次向AT&T、Novell及SC O等公司争取出版授权。1996年，SCO最终同意，Peer-to-Peer Communications正式出版该书，Ritchie亲自撰写序言，感慨此书竟被秘密传抄了二十年。

如今，读者可阅读该书的PDF重建版或在Amazon购买纸质版，Unix第六版源码亦可从TUHS项目获取。

---

## 17. 谷歌强制AI代理接入MCP服务器，Gmail代理却不可发送邮件

**原文标题**: Google Will Make AI Agents Use Its MCP Servers. The Gmail One Can't Send Email

**原文链接**: [https://techstackups.com/articles/google-workspace-ai-agents-mcp/](https://techstackups.com/articles/google-workspace-ai-agents-mcp/)

摘要：谷歌于11月24日正式上线八个Workspace MCP服务器并修订API条款：自2027年2月1日起，所有AI代理必须经MCP服务器访问Gmail、Drive等Workspace服务，直接调用REST API将受限于免费配额且违反条款。然而功能覆盖严重不均——Gmail服务器仅能搜索、读取邮件和创建草稿，发送、回复、转发及编辑草稿均标注为"合作伙伴专属"；Drive亦缺失移动、共享等操作。数据规则要求仅处理用户授权任务，嵌入、记忆索引等保留不超过30天，禁止用于模型训练或竞争产品开发。免费Standard层每日仅5000次MCP请求，部分操作计数更高。"代理"定义极为宽泛，涵盖任何由AI模型驱动的工具，OAuth客户端须勾选AI标识方可接入。大型厂商如Anthropic已获合作伙伴权限，可实现完整邮件收发，独立开发者则被限制在草稿层面。谷歌称此举旨在为AI代理增设策略校验、审批与审计能力，防范提示注入风险，但实质上亦强化了对数据流向和生态竞争的管控。建议开发者尽早迁移至MCP服务器、申请合作伙伴权限，并重新审视数据留存策略。

---

## 18. Show HN：Olumino——Markdown 笔记与间隔重复学习应用

**原文标题**: Show HN: Olumino, a Markdown notes and spaced repetition app

**原文链接**: [https://olumino.app](https://olumino.app)

Olumino 是一款融合 Markdown 笔记与间隔重复闪卡的在线学习应用，无需安装，浏览器即可使用。核心采用 FSRS-7 间隔重复算法（源自艾宾浩斯遗忘曲线研究），用户通过左滑（忘记）、右滑（回忆）、上滑（秒答）三种操作，系统自动安排每张卡片的下次复习时间。卡片以"月相"可视化记忆强度，从新月（未学）到满月（可保持一个月以上）；连续遗忘三次则进入强化复习区。

核心功能完全免费，Plus 版（多设备同步）每月 8 美元。数据优先存于本地，登录后可同步至账户，卡片自动建议功能可关闭。支持 Anki 导入/导出，也兼容 Quizlet、Markdown、电子表格等格式，并提供全量数据一键备份。教师可创建班级、分享链接、追踪学生进度，该功能免费。语言学习方面支持 16 种语音朗读，日语额外提供假名标注、词典和书写练习。应用内置日语、微积分、C++、西班牙语、药理学等多学科内容库，并持续更新博客学习资料。

---

## 19. 垃圾堆中发现诅咒仪式惊动埃及学家

**原文标题**: Discovery of curse ritual in trash dump surprises Egyptologist

**原文链接**: [https://phys.org/news/2026-11-discovery-curse-ritual-trash-dump.html](https://phys.org/news/2026-11-discovery-curse-ritual-trash-dump.html)

无法访问该文章链接

---

## 20. Moat：OpenRouter 的替代方案

**原文标题**: Moat: OpenRouter replacement

**原文链接**: [https://commandcode.ai/moat](https://commandcode.ai/moat)

摘要：该网页未能正常加载文章内容，页面仅显示一条系统提示信息，要求用户启用浏览器的 JavaScript 功能以登录 Code Studio 并加载账户数据。由于页面内容未成功渲染，无法提取有关"Moat"项目本身的有效信息。根据标题可推断，Moat 是一款定位为 OpenRouter 替代品的产品，OpenRouter 是广泛使用的 AI 模型 API 聚合路由平台，提供统一接口接入多家大模型。Moat 可能旨在提供类似或更优的模型路由与 API 聚合服务，但具体功能、架构优势及差异化定位等关键信息因页面加载失败而缺失。建议用户在浏览器中开启 JavaScript 支持后重新访问以获取完整内容。

---

## 21. NP_ℝ ≠ PAR_ℝ：实数永久式没有短证书

**原文标题**: NP_R ≠ PAR_R

**原文链接**: [https://github.com/samueleverett01/bss-permanent-separations](https://github.com/samueleverett01/bss-permanent-separations)

摘要：本文在Blum–Shub–Smale实数计算模型下，证明实数永久式（permanent）的图像虽属于并行多项式时间类PAR_ℝ，却不在非确定多项式时间类NP_ℝ、补类coNP_ℝ、实数多项式层级第二层Σ₂^ℝ、常轮Arthur–Merlin证明类及布尔消息交互证明类BIP_ℝ之中；复数情形下对NP_ℂ与coNP_ℂ有类似分离。两个闭阈值Y≤per_m(X)与Y≥per_m(X)亦满足上述结论。全部分离以永久式border complex性超多项式下界为条件，另有图定理及AM_ℝ[O(1)]=NP_ℝ⊊AM_ℝ[poly]两类结论不依赖该下界。本文受近年VP与VNP问题突破启发，由Everett与Mithal指导ChatGPT及Claude协同完成，结果已在Lean 4中形式化（约36000行，无sorry），所引文献结论以显式假设嵌入而非公理。文章尚未经同行评审，部分文献归属待核实。

---

## 22. Anthropic 广义黎曼假设 Lean 验证精简版

**原文标题**: Much shorter version of GRH Lean verification from Anthropic

**原文链接**: [https://github.com/lsernau/grh-lean](https://github.com/lsernau/grh-lean)

摘要：本项目由 Anthropic 与 Claude 协作完成，基于 Levent Alpöge 的研究成果，在 Lean 4 与 Mathlib 框架下，仅依赖 propext、Classical.choice 和 Quot.sound 三条公理，形式化证明了黎曼假设及 Dirichlet L-函数的广义黎曼假设（GRH）。项目提供两种版本：grh/ 为可读版，约 30 万行；grh-compact/ 为紧凑版，约 7.6 万行，涵盖相同五个定理，各为独立 Lake 项目。构建需 Lean v4.35.0 及指定 Mathlib 版本，12 核 24GB 环境下编译约一至两小时。目前证明仅通过机器检查，尚无数学家人工审读，亦无配套论文。该项目为研究性质，不维护、不接受贡献，采用 Apache 2.0 许可证，版权归 Anthropic, PBC（2026 年）所有。

---

## 23. Holy shit holy shit holy shit holy shit: The magnitude of what’s now happening

**原文标题**: Holy shit holy shit holy shit holy shit: The magnitude of what’s now happening

**原文链接**: [https://scottaaronson.blog/?p=10379](https://scottaaronson.blog/?p=10379)

文章之前已经处理过

---

## 24. 美国国际开发署档案

**原文标题**: The USAID Files

**原文链接**: [https://reclaimthenet.org/usaid-files](https://reclaimthenet.org/usaid-files)

2026年11月，美国国际开发署（USAID）公布大量内部文件，揭露该机构在与科技巨头合作时，其律师建议工作人员将合作内容严格保密，甚至提出"别让《华盛顿邮报》看到""只写能通过《华盛顿邮报》检验的内容"等指示，引发对美国政府秘密介入全球社交媒体内容管控却刻意隐匿行踪的严重质疑。文件包含一场面向内部人员的"虚假信息"专题研讨会，主讲人系统讲解了三种主要传播手段：一是机器人账号，数美元即可购买大量虚假互动以制造人气假象；二是算法操纵，平台算法偏好恐惧、愤怒等情绪内容，使虚假信息的传播速度和广度远超真相；三是专业网络水军，由真人操作，通过骚扰恐吓压制特定群体的政治表达。研讨会还援引两大案例：2016年俄罗斯借虚构账号干预美国大选，以及同年菲律宾杜特尔特竞选采用机器人、水军与虚假影响者的全套社交媒体操纵策略。文件整体揭示了一个推动全球"民主与治理"议程的政府机构，同时秘密介入社交媒体生态并规避公众监督的深刻矛盾。

---

## 25. 从零锥出发的引力代数量子化

**原文标题**: An algebraic quantization of gravity from the null cone

**原文链接**: [https://arxiv.org/abs/2611.34924](https://arxiv.org/abs/2611.34924)

本文提出了一种在四维洛伦兹时空中对真空广义相对论进行背景无关量子化的方案。作者从第一序引力出发，在体子区域相交的零锥上求解引力约束，获得有限牛顿常数下的约化相空间，将其规范泊松括号提升为对易关系，并通过约化作用量的变形定义观测代数。利用规范变量的高斯波函数构造非微扰Hilbert空间表示，该代数生成I类因子。通过组合零锥上制备态间的散射振幅，得到洛伦兹路径积分，其中中间态求和绝对收敛。作为检验，非微扰计算了零锥上引力子对产生与湮灭的振幅，得到有限闭式表达式，而微扰展开却出现对数发散。进一步利用路径积分的微分同胚不变性，证明给定最大尺寸的宏观因果菱形具有有限维Hilbert空间；从洛伦兹迹导出边际陷获面的贝肯斯坦–霍金熵，计算大史瓦西黑洞熵的对数修正，恢复了一圈下森（Sen）经欧几里得方法所得系数。最后，将半经典爱因斯坦方程作为该理论的低能有效极限推导出来。

---

## 26. UI 设计指南存档合集

**原文标题**: Collection of preserved UI style guides

**原文链接**: [https://aresluna.org/ui-style-guides/](https://aresluna.org/ui-style-guides/)

本文为 Aresluna 个人项目，汇集 1980 年代至今各大平台与公司的界面设计指南，涵盖 Amiga、Android、BlackBerry、苹果（Mac/iOS/Newton）、Windows、Nokia、Palm/webOS、GNOME、KDE、NeXTSTEP、Java、微软 Office、三星等数十个品牌。资料以 PDF 与网页镜像两种形式呈现，部分由作者亲自扫描或搭建独立镜像站点，并进行轻度清理（图片像素化、内联图片、修复视频嵌入等）以优化阅读体验。各条目按主题与年代分组，标注关键版本，并附 Wayback Machine 及 Internet Archive 链接以便溯源。文末提供全部指南的打包下载，同时致谢 Chris Silverman、Geof Crowl、Matt Sephton 等多位贡献了同类收藏的个人。该合集完整呈现了界面设计从 GEM、Lisa 到 Aqua、Material Design、Liquid Glass 的风格演变脉络，是研究交互设计史的重要资料库。

---

## 27. 机器学习中的不确定性入门

**原文标题**: An Introduction to Uncertainty in Machine Learning

**原文链接**: [https://chrhenning.com/blog/2026/introduction-to-uncertainty/](https://chrhenning.com/blog/2026/introduction-to-uncertainty/)

摘要：本文系统介绍了机器学习中的不确定性概念与建模方法。文章首先区分两类不确定性：认知不确定性源于知识不足，增加数据即可减少；随机不确定性源于数据本身的不可观测性，无法通过同类数据消除。在决策场景中，仅靠点估计远远不够——不确定性有助于人类自主决策、识别尾部风险、触发人工复核、指导主动学习以及融合多传感器信息。以汽车转向预测为例，文章指出车道分岔时，单一高斯模型（即最小均方误差回归）将左右转向平均为直行，存在安全隐患；而混合高斯模型虽能容纳真实分布，却需更多数据以防止过拟合，体现偏差-方差权衡。面对真实分布超出模型假设空间的误设问题，文章引入贝叶斯推断：以先验编码领域知识，经数据更新得后验，对全部合理解释加权平均，从而量化认知不确定性。文章强调，深入理解问题并选择恰当模型假设是建模者的核心责任。

---

## 28. Minipg：将 PostgreSQL 打包为单一可执行文件

**原文标题**: Minipg: PostgreSQL as a Single Executable

**原文链接**: [https://progrium.github.io/minipg/](https://progrium.github.io/minipg/)

minipg 将 PostgreSQL 打包为单一可执行文件，无需配置独立服务器。数据库以 .pgdb 目录形式存在，内含数据、配置与凭据；服务器按需启动、空闲自动停止。技术上，minipg 嵌入 Docker Hub 的 postgres:18-alpine 镜像，借助 h9（Zig 编写的库）的 Linux 人格直接运行 Postgres 二进制文件，由 Plan 9 内核响应系统调用，无需启动 Linux 内核、虚拟机或 Docker。使用极简：一条命令即可打开 psql 终端、执行 SQL、生成连接 URL 或启动应用；CI 中为静态链接，无需特权或 /dev/kvm。项目支持 Linux（x86_64/arm64）、macOS（Apple Silicon）及浏览器（经 v86 模拟器运行，约 35 MB）。每个 .pgdb 由锁保证单进程管理，psql、pg_dump 等工具各自在短生命周期 h9 机器中运行。需注意项目尚处早期，h9 原生后端性能约为原生的 1/2，作者建议仅用于可重建数据。源码以 MIT 协议开源，构建需 Zig 0.16。

---

## 29. Kagi 儿童手表

**原文标题**: Kagi Watch

**原文链接**: [https://kagi.com/watch](https://kagi.com/watch)

Kagi Watch 是一款以"释放童年"为核心理念的无屏幕儿童可穿戴设备，专为尚未达到智能手机使用年龄的孩子设计，定位为现代版对讲机。产品主打"三无"设计——无应用程序、无信息流、无陌生人社交，从根本上剥离屏幕依赖与数字干扰，让孩子在成长关键期远离网络沉迷及潜在安全风险。Kagi Watch 保留最基本的即时通讯能力，使家长与孩子之间维持安全、可控的联系，同时避免儿童过早接触复杂的数字生态。其目标用户为学龄前及学龄初期儿童，强调回归纯粹的童年体验，通过极简交互激发孩子在现实世界中的互动与创造力，而非将注意力锁定在虚拟内容上。这一产品理念契合当下家长对儿童屏幕时间管理的普遍关切，为市场提供了"去数字化"的替代路径，旨在帮助儿童在健康、安全、专注的环境中自然成长。

---

## 30. 45°C进水已致冷水机组报废，多数人却浑然不觉

**原文标题**: 45°C inlets just killed the chiller. Most people haven't noticed yet

**原文链接**: [https://www.theregister.com/hpc/2026/11/26/45c-inlets-just-killed-the-chiller-most-people-havent-noticed-yet/5311831](https://www.theregister.com/hpc/2026/11/26/45c-inlets-just-killed-the-chiller-most-people-havent-noticed-yet/5311831)

摘要：本文以一则制冷/暖通工程领域的警示短文呈现。作者指出，冷水机组的进水温度已达到45°C，远超设备正常工况，机组已被直接损坏（"killed the chiller"），然而现场大多数人尚未察觉这一严重异常。文章正文仅一句反问——"我们还是人吗？"——以极度简练的语气表达强烈质疑与无奈：如此明显的运行异常竟无人发现，暗示相关人员缺乏基本的安全意识与责任心。全文以情绪化口吻发出行业警示，呼吁重视设备运行参数监控，避免因疏忽导致昂贵制冷设备损毁及潜在的生产安全事故。

---

