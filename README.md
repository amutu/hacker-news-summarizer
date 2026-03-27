# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-27.md)

*最后自动更新时间: 2026-03-27 20:37:05*
## 1. 让macOS持续糟糕（非反讽）

**原文标题**: Make macOS consistently bad (unironically)

**原文链接**: [https://lr0.org/blog/p/macos/](https://lr0.org/blog/p/macos/)

作者批评macOS 26的窗口圆角过度，更重要的是系统内圆角应用方式的不一致。他们并未采用常见的但会损害安全性的解决方案——即禁用系统完整性保护（SIP）来使窗口变方，而是建议让*所有*窗口保持一致的圆角。

为实现这一目标，他们分叉了一个现有调整工具，并修改它以注入一个动态库，该库通过方法交换（覆盖）私有AppKit方法（`_cornerRadius`、`_topCornerSize`等），强制为所有第三方应用程序窗口（苹果自家应用除外）设置统一的23.0点圆角半径。提供的代码经过编译、签名，并通过启动代理安装，以便在登录时自动加载。

核心论点是：视觉上的不一致比统一的“糟糕”设计更令人沮丧，而该解决方案提供了一种系统性的（尽管有些取巧）方法，在不完全禁用macOS安全功能的情况下强制执行这种一致性。

---

## 2. .claude/文件夹的解剖结构

**原文标题**: Anatomy of the .claude/ folder

**原文链接**: [https://blog.dailydoseofds.com/p/anatomy-of-the-claude-folder](https://blog.dailydoseofds.com/p/anatomy-of-the-claude-folder)

`.claude/` 文件夹是 Claude Code 的核心配置中心，允许用户在项目中自定义其行为。它包含以下几个关键组件：

*   **CLAUDE.md**：加载到 Claude 系统提示中的主要指令手册。它应简明扼要地概述项目特定的命令、架构、规范和注意事项（理想情况下不超过 200 行）。个人的 `CLAUDE.local.md` 可以覆盖这些规则，而不会影响团队。

*   **`rules/` 文件夹**：通过将指导拆分为独立的、聚焦的 Markdown 文件（例如 `code-style.md`、`testing.md`），实现模块化、可扩展的指令。可以使用 YAML 前言将规则限定到特定的文件路径。

*   **`commands/` 文件夹**：存放自定义斜杠命令（例如 `review.md` 变成 `/project:review`）。这些命令可以执行 shell 脚本并接受参数，从而自动化重复性任务。

*   **`skills/` 文件夹**：包含可重复使用的工作流，当任务符合其描述时，Claude 可以自主调用这些工作流。与命令不同，技能附带支持文件，用于复杂操作。

*   **`agents/` 文件夹**：定义专门的子代理角色（如代码审查员），具有专用的系统提示、工具访问权限和模型偏好，用于处理复杂、独立的任务。

*   **settings.json**：控制权限，指定 Claude 可以自动运行哪些工具和命令（`allow`），哪些被阻止（`deny`），以及哪些需要确认。

存在两个 `.claude` 目录：一个是项目级文件夹（提交到 Git 以进行团队范围的配置），另一个是全局 `~/.claude/` 文件夹（用于个人偏好、会话历史记录以及跨项目命令/技能）。理解这种结构可以让团队精确地定制 Claude Code 以适应其工作流程。

---

## 3. 在Brother打印机上使用Certbot安装Let's Encrypt TLS证书

**原文标题**: Installing a Let's Encrypt TLS certificate on a Brother printer with Certbot

**原文链接**: [https://owltec.ca/Other/Installing+a+Let%27s+Encrypt+TLS+certificate+on+a+Brother+printer+automatically+with+Certbot+(%26+Cloudflare)](https://owltec.ca/Other/Installing+a+Let%27s+Encrypt+TLS+certificate+on+a+Brother+printer+automatically+with+Certbot+(%26+Cloudflare))

本文详细介绍了一种使用Certbot在Brother打印机上安装Let's Encrypt TLS证书的方法，并采用Cloudflare DNS进行域名验证。此流程之所以必要，是因为Brother打印机无法使用标准的HTTP-01验证方式，且通常不支持自动证书更新。

核心解决方案涉及使用Certbot的手动模式配合DNS-01验证，并专门针对Cloudflare API进行配置。作者提供了确切的Certbot命令，包括指定域名、首选证书链和密钥类型的参数，并强调了事先设置Cloudflare API凭证的重要性。

文中解决的一个关键技术难点是将生成的证书文件转换为Brother打印机所需的单一`.pem`文件格式。指南包含一个具体的`cat`命令，用于将私钥和证书合并为一个文件。

最后，文章逐步讲解了如何通过Brother打印机的网络界面（路径：网络 > 安全 > 证书）上传此`.pem`文件，从而启用HTTPS访问。文中指出的主要限制是：由于无法在打印机上实现全自动流程，证书必须每90天手动续期并重新安装。

---

## 4. Telnyx软件包在PyPI上被篡改

**原文标题**: Telnyx package compromised on PyPI

**原文链接**: [https://telnyx.com/resources/telnyx-python-sdk-supply-chain-security-notice-march-2026](https://telnyx.com/resources/telnyx-python-sdk-supply-chain-security-notice-march-2026)

2026年3月27日，作为一次大规模供应链攻击的一部分，Telnyx Python SDK的两个未经授权且带有恶意的版本（4.87.1和4.87.2）被上传至PyPI。这些版本在约六小时后被移除。

在此期间安装或升级了`telnyx`软件包的用户将受到影响。Telnyx平台及其核心服务未受影响，因为SDK仅为客户端库。

受影响的用户必须立即降级至4.87.0版本，并轮换所有可访问的密钥（API密钥、凭证等）。同时应检查系统是否连接过攻击者的命令与控制服务器（83.142.209.203:8080），该服务器曾使用WAV隐写术进行数据窃取。

Telnyx已移除恶意软件包，并正在调查发布凭证的获取途径。此次事件与近期其他攻击事件相关，包括Trivy和LiteLLM的入侵事件。

---

## 5. 纳什维尔图书馆启动记忆实验室，助力家庭影片数字化。

**原文标题**: Nashville library launches Memory Lab for digitizing home movies

**原文链接**: [https://www.axios.com/local/nashville/2026/03/16/nashville-library-digitize-home-movies](https://www.axios.com/local/nashville/2026/03/16/nashville-library-digitize-home-movies)

**《纳什维尔图书馆推出记忆实验室，助力家庭录像数字化》摘要**

纳什维尔公共图书馆在其主馆新开设了一个公共记忆实验室，为居民提供保存个人历史的工具和指导。其核心服务是对老旧的家庭录像及其他模拟介质（如VHS、VHS-C、Hi8和MiniDV磁带）进行数字化处理。

该项目的要点包括：
*   **免费服务：** 对持卡读者完全免费。
*   **自助模式：** 读者预约后，在接受馆员培训的基础上，自行使用专业设备进行操作，亲身体验保存过程。
*   **更广使命：** 该实验室是图书馆"社区记忆"项目的一部分，旨在通过保存居民的个人故事与记录，守护纳什维尔的文化遗产。
*   **延伸服务：** 除影片转换外，记忆实验室还提供设备，用于数字化照片、幻灯片、底片和录音磁带。

文章指出，图书馆的这项举措是对抗实体介质自然老化的关键资源，能确保家庭记忆与地方历史记录以持久的数字格式保存，传承给后代。

---

## 6. 探索沙子的隐秘世界

**原文标题**: Explore the Hidden World of Sand

**原文链接**: [https://magnifiedsand.com/](https://magnifiedsand.com/)

本文重点介绍了英国林迪斯法恩（圣岛）沙子的独特地质构成。其关键在于，岛上的沙子源自一种名为**岩床**的特定地质构造——即侵入较古老岩层之间并凝固的水平岩浆层。

因此，放大后的沙粒并非来自单一岩石类型，而是代表了以下成分的**混合体**：
*   **沉积岩**（岩浆最初侵入的原始岩层）；
*   **侵入火成岩**（岩床本身的冷却岩浆）；
*   **喷出火成岩**（可能来自后期的火山活动）。

这种多样化的混合使得林迪斯法恩的沙子成为该地区复杂地质历史的直接记录，在其每一粒沙中浓缩了数百万年的火山与沉积过程。

---

## 7. 打造FireStriker：让公民科技免费普及

**原文标题**: Building FireStriker: Making Civic Tech Free

**原文链接**: [https://firestriker.org/blog/building-firestriker-why-im-making-civic-tech-free](https://firestriker.org/blog/building-firestriker-why-im-making-civic-tech-free)

作者是一名软件工程师，在搬到埃尔帕索后，目睹当地社区因缺乏及时信息而错失影响重大发展决策的关键窗口，这激发了他创建FireStriker的想法。他发现了公民参与中一个根本性的“通知问题”：资金雄厚的利益集团使用昂贵的专业平台追踪立法动态，而草根组织则依赖一堆零散、手动操作的拼凑工具。

为弥合这一差距，他正在开发FireStriker作为一个完全免费的一体化平台。它将基本的公民参与工具（成员管理、活动、会费和通讯）与通常被高价企业软件垄断的高级立法情报功能（法案追踪、立场检测和政府会议监控）相结合。平台的核心原则是绝不从用户捐款中抽取费用。

该项目是在全职工作之余，利用夜晚和周末时间构建的，其驱动力源于一个信念：有效的公民工具应当对所有组织开放，无论其预算多少。FireStriker旨在整合这些功能，例如，一位回复活动邀请的成员可以自动收到与其所在地区相关的立法警报。该平台即将上线，作者正以公开方式推进开发，邀请社区组织者、活动人士和工会前来试用。

---

## 8. 适合在家与猫共事者的书桌

**原文标题**: Desk for people who work at home with a cat

**原文链接**: [https://soranews24.com/2026/03/27/japan-now-has-a-special-desk-for-people-who-work-at-home-with-a-pet-catphotos/](https://soranews24.com/2026/03/27/japan-now-has-a-special-desk-for-people-who-work-at-home-with-a-pet-catphotos/)

日本家具公司Bibilab推出了专为与猫共同居家办公人群设计的“猫屋书桌”。这款书桌融合了多项猫咪专属空间：侧边设有双层猫区、桌面下方配备休息区，并暗藏“惊喜猫洞”，方便猫咪探头互动。这些设计旨在让猫咪感到满足，同时引导它们远离键盘等关键工作区域，从而营造更和谐高效的人宠共享办公空间。

该实用书桌售价24,800日元（约合160美元），配备理线槽和台式主机放置空间，并可搭配Bibilab独立的猫爬架使用。产品针对猫咪常侵占家庭办公区域的普遍难题，提供了既满足宠物需求又兼顾主人高效工作环境的解决方案。

---

## 9. 喵相机

**原文标题**: Meow.camera

**原文链接**: [https://meow.camera/#4258783365322591678](https://meow.camera/#4258783365322591678)

无法访问文章链接。

---

## 10. 在临床试验中采用贝叶斯方法

**原文标题**: Embracing Bayesian methods in clinical trials

**原文链接**: [https://jamanetwork.com/journals/jama/fullarticle/2847011](https://jamanetwork.com/journals/jama/fullarticle/2847011)

**《拥抱临床研究中的贝叶斯方法》概要**

本文主张在临床试验的设计与分析中更广泛地采用贝叶斯统计方法，认为其相较于传统的频率学派方法具有显著优势。

主要观点包括：

*   **灵活性与高效性：** 贝叶斯方法允许将先验知识（例如来自早期试验或真实世界数据）纳入分析。这可以使试验更高效，所需受试者更少，能更精确地回答研究问题，或通过适应性设计更灵活地响应新出现的数据。
*   **直观的解释性：** 贝叶斯分析的结果，如治疗有益的概率或效应大小，通常比频率学派的p值和置信区间更直接、更具临床可解释性。
*   **应对现代挑战：** 这些方法特别适用于复杂的现代试验，包括平台试验、篮式试验以及患者群体稀少的罕见病研究。
*   **克服障碍：** 文章承认历史上存在的采用障碍，包括监管机构的犹豫、研究人员不熟悉以及计算复杂性。但也指出，随着教育的加强、先进软件的出现以及FDA等监管机构日益增长的接受度，这些障碍正在减少。
*   **呼吁加强教育：** 作者总结道，为使贝叶斯方法充分发挥其潜力，加强对临床研究者、统计学家和监管人员的培训至关重要。他们认为贝叶斯方法并非要取代频率学派方法，而是作为一种强大的补充工具包，使临床研究更具信息量和响应性。

本质上，文章将贝叶斯统计学定位为一种现代、实用的框架，在个性化医疗时代，能使临床试验更具适应性、信息性和效率。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 2 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 3 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 4 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 5 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 6 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 7 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 8 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 9 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 10 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 11 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 12 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 13 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 14 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 15 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 16 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 17 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 18 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 19 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 20 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 21 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 22 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 23 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 24 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 25 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 26 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 27 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 28 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 29 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 30 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 31 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 32 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 33 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 34 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 35 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 36 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 37 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 38 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 39 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 40 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 41 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 42 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 43 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 44 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 45 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 46 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 47 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 48 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 49 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 50 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 51 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 52 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 53 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 54 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 55 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 56 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 57 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 58 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 59 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 60 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 61 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 62 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 63 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 64 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 65 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 66 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 67 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 68 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 69 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 70 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 71 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 72 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 73 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 74 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 75 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 76 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 77 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 78 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 79 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 80 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 81 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 82 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 83 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 84 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 85 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 86 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 87 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 88 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 89 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 90 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 91 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 92 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 93 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 94 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 95 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 96 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 97 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 98 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 99 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 100 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 101 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 102 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 103 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 104 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 105 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 106 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 107 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 108 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 109 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 110 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 111 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 112 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 113 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 114 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 115 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 116 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 117 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 118 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 119 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 120 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 121 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 122 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 123 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 124 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 125 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 126 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 127 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 128 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 129 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 130 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 131 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 132 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 133 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 134 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 135 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 136 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 137 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 138 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 139 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 140 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 141 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 142 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 143 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 144 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 145 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 146 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 147 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 148 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 149 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 150 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 151 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 152 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 153 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 154 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 155 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 156 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 157 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 158 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 159 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 160 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 161 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 162 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 163 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 164 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 165 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 166 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 167 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 168 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 169 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 170 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 171 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 172 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 173 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 174 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 175 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 176 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 177 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 178 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 179 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 180 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 181 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 182 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 183 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 184 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 185 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 186 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 187 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 188 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 189 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 190 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 191 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 192 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 193 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 194 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 195 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 196 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 197 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 198 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 199 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 200 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 201 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 202 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 203 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 204 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 205 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 206 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 207 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 208 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 209 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 210 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 211 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 212 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 213 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 214 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 215 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 216 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 217 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 218 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 219 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 220 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 221 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 222 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 223 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 224 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 225 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 226 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 227 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 228 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 229 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 230 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 231 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 232 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 233 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 234 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 235 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 236 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 237 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 238 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 239 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 240 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 241 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 242 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 243 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 244 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 245 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 246 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 247 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 248 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 249 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 250 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 251 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 252 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 253 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 254 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 255 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 256 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 257 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 258 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 259 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 260 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 261 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 262 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 263 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 264 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 265 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 266 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 267 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 268 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 269 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 270 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 271 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 272 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 273 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 274 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 275 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 276 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 277 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 278 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 279 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 280 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 281 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 282 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 283 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 284 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 285 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 286 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 287 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 288 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 289 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 290 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 291 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 292 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 293 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 294 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 295 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 296 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 297 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 298 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 299 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 300 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 301 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 302 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 303 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 304 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 305 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 306 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 307 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 308 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 309 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 310 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 311 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 312 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 313 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 314 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 315 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 316 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 317 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 318 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 319 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 320 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 321 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 322 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 323 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 324 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 325 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 326 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 327 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 328 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 329 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 330 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 331 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 332 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 333 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 334 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 335 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 336 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 337 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 338 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 339 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 340 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 341 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 342 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 343 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 344 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 345 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 346 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 347 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 348 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 349 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 350 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 351 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 352 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 353 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 354 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 355 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 356 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 357 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 358 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 359 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 360 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 361 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 362 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 363 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 364 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 365 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 366 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 367 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 368 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 369 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 370 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
