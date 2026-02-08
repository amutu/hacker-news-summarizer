# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-08.md)

*最后自动更新时间: 2026-02-08 20:36:50*
## 1. 担保

**原文标题**: Vouch

**原文链接**: [https://github.com/mitchellh/vouch](https://github.com/mitchellh/vouch)

Vouch是一个面向开源项目的实验性信任管理系统，要求用户在参与项目中特定、可配置的模块前必须获得他人担保。它通过转向明确的信任模型来解决低质量、AI生成内容的问题，即由受信任的社区成员为他人提供担保。

该系统具有通用性，但通过GitHub Actions和基于Nushell构建的CLI工具提供了开箱即用的GitHub集成功能。项目可自动检查拉取请求作者是否已获担保，并允许协作者通过议题或讨论评论为用户提供担保或提出谴责。

其核心功能是能够构建信任网络——项目可以从其他项目的信任名单中导入信任决策（包括担保与谴责），从而形成共享的信任生态。

信任数据以简洁可解析的`.td`（Trustdown）文件格式存储，每行记录一位用户。该格式支持平台特定标识符（如`github:用户名`）、以`-`前缀标记的谴责记录及可选的说明理由。该系统目前已在Ghostty项目中投入使用。

---

## 2. 我在Game Boy Color上应用了实时3D着色器。

**原文标题**: I put a real-time 3D shader on the Game Boy Color

**原文链接**: [https://blog.otterstack.com/posts/202512-gbshader/](https://blog.otterstack.com/posts/202512-gbshader/)

在此项目中，开发者为一款不具备硬件3D支持或浮点运算功能的Game Boy Color（GBC）设备创建了实时3D着色器。核心技术采用预渲染的法线贴图——以球面坐标形式存储在ROM中——通过朗伯着色器模拟光照效果。

为克服GBC缺乏乘法指令的局限，该系统采用8位对数查找表。通过加法实现乘法运算，并采用自定义编码方案处理负值。着色器的核心计算简化为每像素处理程序，仅需三次加减运算和两次查表操作。

通过每帧处理至少15个图块，并占用约89%的CPU时间来实现性能要求。关键优化包括采用自修改代码在汇编循环中硬编码变量值，从而显著节省运行周期。

工作流程涉及在Blender中创建法线贴图动画，并使用加密遮罩实现特定色彩控制。开发者指出，该项目大部分代码均为手动编写，仅进行了有限且基本未成功的尝试——使用AI生成复杂的SM83汇编代码。

---

## 3. Roundcube Webmail：SVG feImage绕过图像屏蔽以追踪邮件打开状态

**原文标题**: Roundcube Webmail: SVG feImage bypasses image blocking to track email opens

**原文链接**: [https://nullcathedral.com/posts/2026-02-08-roundcube-svg-feimage-remote-image-bypass/](https://nullcathedral.com/posts/2026-02-08-roundcube-svg-feimage-remote-image-bypass/)

本文详细介绍了Roundcube Webmail中的一个安全漏洞，该漏洞允许攻击者绕过“阻止远程图像”设置来追踪邮件打开行为。该漏洞存在于1.5.13之前版本以及1.6.13之前的1.6.x版本中。

问题源于`rcube_washtml`清理器。虽然该清理器能正确阻止常见图像元素（如`<img>`、`<image>`和`<use>`）的外部URL，但未能正确处理SVG元素`<feImage>`。清理器的逻辑错误地将`<feImage>`的`href`属性通过宽松的链接检查函数（`wash_link()`）处理，而非使用更严格的图像阻止函数（`is_image_attribute()`）。

因此，攻击者可在邮件中嵌入特制的隐形SVG。当邮件被打开时，浏览器会自动从攻击者服务器获取外部图像，从而确认邮件已打开，并可能泄露受害者的IP地址和浏览器指纹。

该漏洞在提交26d7677中得以修复，通过更新`is_image_attribute()`函数使其检查包含`feimage`元素，确保在禁用远程图像时阻止其`href`属性。建议用户升级至Roundcube 1.5.13或1.6.13版本。

---

## 4. 《小布尔末日》（2025）

**原文标题**: The Little Bool of Doom (2025)

**原文链接**: [https://blog.svgames.pl/article/the-little-bool-of-doom](https://blog.svgames.pl/article/the-little-bool-of-doom)

本文详述了在Fedora Linux大规模重建chocolate-doom软件包时遇到的编译错误。该问题源于GCC 15采用的新默认C标准C23将`false`和`true`设为关键字，与chocolate-doom自定义布尔枚举中定义的相同标识符产生冲突。

作者最初的修复方案是让代码在C23编译时使用内置的`bool`类型。但上游维护者选择将项目声明为C99标准并使用`stdbool.h`。这一改动暴露了更深层的错误：使用C99的`_Bool`类型导致游戏启动时崩溃。

调试发现，精灵初始化数组通过`memset`填充了`-1`（即0xFF）。当存储到1字节的`_Bool`中时，该值变为255。编译器生成的`_Bool`与`false`比较汇编代码仅检查最低有效位。由于255（0xFF）的最低有效位为1，被错误判定为`true`，从而触发致命错误。而旧版4字节枚举比较能正常运作，是因为其将完整整数值与0进行比较。

核心问题在于对非标准布尔值（`-1`）的依赖。解决方案是确保代码仅将正确的布尔值（`0`或`1`）赋给`_Bool`变量，从而修复了编译器升级暴露的底层逻辑错误。

---

## 5. 展示HN：我根据金·斯坦利·罗宾逊的火星系列小说创作了一款火星殖民地角色扮演游戏

**原文标题**: Show HN: I created a Mars colony RPG based on Kim Stanley Robinson's Mars books

**原文链接**: [https://underhillgame.com/](https://underhillgame.com/)

这是一则关于新浏览器游戏《地下城：火星殖民游戏》的公告。该游戏是一款以火星生存与建设为核心的角色扮演游戏（RPG），其灵感直接来源于金·斯坦利·罗宾逊广受赞誉的科幻系列作品《火星三部曲》。

游戏创作者艾莉亚·阿拉马尔霍达伊提供了社交媒体（X）链接，供玩家关注项目进展、提供资金支持及反馈意见。公告将游戏定位为可直接在浏览器中游玩的体验，邀请用户即刻参与。

---

## 6. RFC 3092 – “Foo”一词的词源（2001年）

**原文标题**: RFC 3092 – Etymology of "Foo" (2001)

**原文链接**: [https://datatracker.ietf.org/doc/html/rfc3092](https://datatracker.ietf.org/doc/html/rfc3092)

这份于2001年4月1日发布的RFC文件，以正式而戏谑的方式追溯了常见元语法变量“foo”“bar”和“foobar”的词源——这些词汇曾出现在超过200份技术文档中却从未被解释。

文件将“foo”的起源追溯至二战前的流行文化，尤其是比尔·霍尔曼的漫画《斯莫基·斯托弗》，其中该词被用作无意义字词。二战期间，“foo”在军事俚语中流行起来，例如用“foo fighters”指代不明飞行物，以及首字母缩略词FUBAR（意为“彻底损坏无法修复”）——而“foobar”很可能由此衍生。1960至70年代，这些术语被麻省理工学院、DEC等机构的早期计算机社群采纳，逐渐成为编程示例中的标准占位符。

该RFC还幽默地列举了多种反向首字母缩写（例如“FTP Operation Over Big Address Records”），并附有附录收录了大量使用这些术语的RFC文件。其目的在于为互联网社群正式记录这些无处不在的行话背后非正式的历史渊源。

---

## 7. 运行你自己的AS：在FreeBSD上使用FRR、GRE隧道和策略路由实现BGP

**原文标题**: Running Your Own As: BGP on FreeBSD with FRR, GRE Tunnels, and Policy Routing

**原文链接**: [https://blog.hofstede.it/running-your-own-as-bgp-on-freebsd-with-frr-gre-tunnels-and-policy-routing/](https://blog.hofstede.it/running-your-own-as-bgp-on-freebsd-with-frr-gre-tunnels-and-policy-routing/)

本文详细介绍了个人如何利用FreeBSD在公共互联网上运行自己的自治系统（AS）。主要动机在于获取独立于服务提供商的IPv6地址，使得网络资源能够在不同托管服务商之间迁移而无需更改IP地址。

该方案需要从区域互联网注册机构（RIR）通过赞助的本地互联网注册机构（LIR）获取AS号码和IPv6地址前缀。核心架构采用一台中央FreeBSD BGP路由器，通过FRR（自由范围路由）软件与两个上游提供商建立对等连接。这台路由器向全球互联网宣告所有者拥有的`/48` IPv6地址前缀。

为分配地址空间，路由器通过GIF（IPv6-in-IPv4）隧道连接下游服务器，并通过GRE隧道连接一个上游提供商。特定子网（如`/64`和`/62`）通过这些隧道进行路由。FRR配置至关重要，需实施严格的入站路由过滤以拒绝虚假路由，并运用BGP团体属性和AS路径预置进行流量工程。

该系统还解决了关键运维挑战：通过为聚合前缀设置黑洞路由来防止未分配子网的路由环路；详细的PF防火墙配置在保障控制平面（BGP、SSH）安全的同时允许数据平面转发。最终构建出一个具备弹性、自主可控的网络环境，使服务能够使用稳定、全球可路由且独立于单一提供商的地址。

---

## 8. GitHub 智能代理工作流

**原文标题**: GitHub Agentic Workflows

**原文链接**: [https://github.github.io/gh-aw/](https://github.github.io/gh-aw/)

**GitHub 智能工作流**是 GitHub Next 与微软研究院联合推出的工具，它通过在 GitHub Actions 中集成 AI 编程代理（如 GitHub Copilot、Claude 或 Codex），实现仓库维护的自动化。该工具支持“持续 AI”——即系统化、自动化地将 AI 应用于软件协作。

其核心理念是使用自然语言在简单的 Markdown 文件中定义自动化任务，随后将其编译为安全的 GitHub Actions 工作流。这些工作流可按计划（如每日）或按需运行，执行生成状态报告、分类议题、重构代码、改进文档、分析 CI 故障等任务。

关键特性包括安全优先的设计：工作流默认以只读权限运行，任何写入操作（如创建议题）均需通过预先审核的“安全输出”获得明确批准。执行过程被沙盒化隔离以确保安全。

流程包含三个步骤：1）编写包含指令的 `.md` 文件；2）使用 `gh aw compile` 命令行工具将其转换为锁定的 `.yml` 工作流；3）由 GitHub Actions 执行该工作流。此方法旨在通过具备上下文感知能力的 AI 自动化增强传统 CI/CD，同时通过严格的安全护栏保障仓库安全。

---

## 9. 利用已签名的引导程序绕过UEFI安全启动

**原文标题**: Exploiting signed bootloaders to circumvent UEFI Secure Boot

**原文链接**: [https://habr.com/en/articles/446238/](https://habr.com/en/articles/446238/)

本文详细介绍了通过利用已签名的引导加载程序来绕过UEFI安全启动的方法。安全启动旨在防止在启动过程中执行不受信任的代码，要求软件必须由受信任的密钥（通常是微软的密钥）签名。作者的目标是创建一个无需禁用安全启动即可使用的通用恢复USB驱动器。

探讨了两种主要方法：
1.  **超级UEFI不安全启动盘**：该方法结合了已签名的shim引导加载程序、一个禁用签名验证的修改版PreLoader以及修改后的GRUB2。它需要用户通过MokManager进行一次交互以注册密钥，之后即可引导任何未签名的软件。
2.  **静默UEFI不安全启动盘**：该方法利用了卡巴斯基救援盘18中已签名的GRUB引导加载程序的一个漏洞，该版本缺乏安全启动限制。通过修改其链式加载模块，作者创建了一个可以静默引导任何未签名的.efi文件的启动盘，无需任何用户交互，这代表了一个更严重的安全漏洞。

文章总结指出，此类安全性不足且由微软签名的引导加载程序（如卡巴斯基的版本）的存在构成了风险，因为它们既可用于合法的恢复目的，也可用于恶意引导工具的安装。作者预计，存在漏洞的卡巴斯基证书很可能会通过Windows更新被撤销。

---

## 10. Omega-3与早发性痴呆风险呈负相关。

**原文标题**: Omega-3 is inversely related to risk of early-onset dementia

**原文链接**: [https://pubmed.ncbi.nlm.nih.gov/41506004/](https://pubmed.ncbi.nlm.nih.gov/41506004/)

本研究探讨了血液中ω-3脂肪酸水平与早发性痴呆（EOD，定义为65岁前确诊）风险之间的关联。研究人员利用英国生物银行超过21.7万名40-64岁参与者的数据，平均追踪8.3年内的新发痴呆病例。

关键发现表明两者存在显著负相关：血液中总ω-3水平越高，EOD风险越低。具体而言，总ω-3水平处于最高两个五分位数组（Q4和Q5）的参与者，其EOD风险比最低组（Q1）降低约40%。特定的ω-3成分DHA与非DHA型ω-3也显示出类似的保护性关联。当ω-3作为连续变量分析时，这种关系依然成立，且未发现与痴呆遗传风险因子APOE-ε4存在交互作用。

作者总结称，这些发现将ω-3对晚发性痴呆的已知益处延伸至早发性病例。他们提出，在生命早期增加ω-3摄入可能有助于延缓EOD发展，但指出仍需在不同人群中进行更多研究以验证结果。本研究的优势包括大规模队列及采用客观血液生物标志物测量ω-3暴露水平。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 2 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 3 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 4 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 5 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 6 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 7 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 8 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 9 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 10 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 11 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 12 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 13 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 14 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 15 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 16 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 17 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 18 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 19 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 20 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 21 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 22 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 23 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 24 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 25 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 26 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 27 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 28 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 29 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 30 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 31 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 32 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 33 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 34 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 35 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 36 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 37 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 38 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 39 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 40 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 41 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 42 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 43 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 44 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 45 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 46 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 47 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 48 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 49 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 50 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 51 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 52 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 53 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 54 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 55 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 56 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 57 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 58 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 59 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 60 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 61 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 62 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 63 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 64 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 65 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 66 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 67 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 68 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 69 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 70 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 71 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 72 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 73 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 74 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 75 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 76 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 77 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 78 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 79 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 80 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 81 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 82 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 83 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 84 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 85 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 86 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 87 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 88 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 89 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 90 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 91 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 92 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 93 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 94 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 95 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 96 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 97 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 98 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 99 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 100 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 101 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 102 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 103 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 104 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 105 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 106 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 107 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 108 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 109 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 110 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 111 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 112 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 113 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 114 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 115 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 116 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 117 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 118 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 119 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 120 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 121 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 122 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 123 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 124 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 125 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 126 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 127 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 128 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 129 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 130 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 131 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 132 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 133 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 134 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 135 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 136 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 137 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 138 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 139 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 140 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 141 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 142 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 143 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 144 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 145 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 146 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 147 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 148 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 149 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 150 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 151 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 152 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 153 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 154 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 155 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 156 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 157 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 158 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 159 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 160 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 161 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 162 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 163 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 164 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 165 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 166 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 167 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 168 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 169 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 170 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 171 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 172 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 173 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 174 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 175 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 176 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 177 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 178 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 179 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 180 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 181 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 182 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 183 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 184 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 185 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 186 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 187 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 188 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 189 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 190 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 191 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 192 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 193 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 194 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 195 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 196 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 197 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 198 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 199 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 200 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 201 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 202 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 203 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 204 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 205 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 206 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 207 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 208 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 209 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 210 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 211 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 212 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 213 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 214 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 215 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 216 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 217 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 218 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 219 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 220 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 221 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 222 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 223 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 224 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 225 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 226 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 227 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 228 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 229 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 230 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 231 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 232 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 233 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 234 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 235 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 236 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 237 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 238 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 239 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 240 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 241 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 242 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 243 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 244 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 245 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 246 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 247 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 248 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 249 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 250 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 251 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 252 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 253 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 254 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 255 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 256 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 257 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 258 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 259 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 260 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 261 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 262 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 263 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 264 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 265 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 266 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 267 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 268 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 269 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 270 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 271 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 272 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 273 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 274 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 275 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 276 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 277 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 278 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 279 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 280 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 281 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 282 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 283 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 284 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 285 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 286 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 287 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 288 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 289 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 290 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 291 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 292 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 293 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 294 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 295 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 296 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 297 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 298 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 299 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 300 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 301 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 302 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 303 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 304 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 305 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 306 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 307 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 308 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 309 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 310 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 311 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 312 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 313 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 314 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 315 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 316 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 317 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 318 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 319 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 320 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 321 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 322 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 323 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
