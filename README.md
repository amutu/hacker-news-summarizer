# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-24.md)

*最后自动更新时间: 2026-02-24 20:35:00*
## 1. 我正在帮我的狗编写游戏代码。

**原文标题**: I'm helping my dog vibe code games

**原文链接**: [https://www.calebleak.com/posts/dog-game/](https://www.calebleak.com/posts/dog-game/)

本文详述了一个项目，作者在其中训练自己的狗狗Momo利用AI“编写”电子游戏。系统通过将狗狗随机的键盘敲击解读为给Claude Code的神秘游戏设计指令，从而在Godot中生成可玩的游戏。

关键组件包括：用于过滤和路由按键的自定义设置（树莓派上的DogKeyboard应用）、用于强化训练的自动零食投喂器，以及增强工具——允许Claude通过截图和模拟输入来测试并调试自己的创作。

作者通过迭代式的提示工程优化流程，并设置防护机制以确保游戏基本功能。虽然早期成果参差不齐，但随着工具和AI模型的改进，最终生成了多种功能简单的游戏。该项目展示了一个富有创意、自动化的“人类离环”系统，将动物训练与AI辅助开发相融合。

---

## 2. 我于1978年十岁时向迪士尼乐园提议建造过山车。

**原文标题**: I pitched a roller coaster to Disneyland at age 10 in 1978

**原文链接**: [https://wordglyph.xyz/one-piece-at-a-time](https://wordglyph.xyz/one-piece-at-a-time)

1978年，10岁的凯文·格利克曼受迪士尼乐园太空山过山车的启发，设计了一款包含四个环道的过山车，并将其命名为“四重回环”。他用轻木和手工弯曲的塑料环制作了精细模型，随后将宝丽来照片和阐述创意的信件寄给了迪士尼乐园。数月后，他收到了来自WED企业（迪士尼幻想工程部门）的个性化回信，由汤姆·菲茨杰拉德签名，信中感谢了他的投稿，并称赞其设计“堪称一场冒险”。

这封礼貌的拒绝信并未让凯文气馁，反而因获得认可而欣喜不已。这份早期的鼓励培养了他一生面对拒绝时的韧性。他持续投身发明，后来改造了魔方并创造了获专利的桌游。成年后，他成为一名演员——这也是个充满拒绝的领域——但他始终保持着十岁时的创造精神。这段经历教会他“一次只专注一步”的坚持，这种心态至今仍指引着他前行。

---

## 3. HuggingFace 代理技能

**原文标题**: HuggingFace Agent Skills

**原文链接**: [https://github.com/huggingface/skills](https://github.com/huggingface/skills)

HuggingFace Agent Skills是针对AI/ML工作流程（如数据集创建、模型训练和评估）的标准化、自包含任务定义。它们以文件夹形式打包，内含包含说明和脚本的`SKILL.md`文件，使其兼容OpenAI Codex、Anthropic Claude、Google Gemini和Cursor等主流编程智能体工具。

该资源库包含多个开箱即用的技能，例如执行Hugging Face CLI操作、管理数据集、运行评估、训练模型和发布研究论文。安装后，用户可在指令中通过名称引导编程智能体使用特定技能，智能体会自动加载相关指导。

贡献者可通过复制现有文件夹、更新其`SKILL.md`文件并运行提供的脚本重新生成元数据，来创建或自定义技能。所有技能均列于便于发现的资源市场文件中，并配有面向人类用户的定制化描述。

---

## 4. 附近眼镜

**原文标题**: Nearby Glasses

**原文链接**: [https://github.com/yjeanrenaud/yj_nearbyglasses](https://github.com/yjeanrenaud/yj_nearbyglasses)

**附近眼镜**是一款免费开源的Android应用，通过扫描蓝牙低功耗（BLE）信号来检测附近的智能眼镜。该应用利用BLE广播数据包中的制造商ID识别设备，主要针对Meta、Luxottica（雷朋）和Snapchat等公司的产品。

当检测到这些制造商的设备处于可配置的信号强度范围内（默认-75 dBm，在开阔环境中约10-15米）时，应用会通过通知提醒用户。开发者强调可能出现误报，因为相同制造商ID也用于VR头显等其他产品，且检测结果并非绝对准确。建议用户谨慎判断，勿完全依赖应用提醒。

主要功能包括可调节的扫描设置、可选调试日志以及维持扫描的前台服务。该应用不收集用户数据，无广告或遥测功能，日志仅在使用者导出时本地存储。

开发者因担忧智能眼镜的隐私风险（如隐蔽录制和人脸识别）而创建此工具。未来可能增加更多制造商支持、深化蓝牙数据包分析功能并推出iOS版本。该应用采用PolyForm非商业许可协议。

---

## 5. 我认为从iPhone连接Mac终端，WebRTC比SSH更好用。

**原文标题**: I think WebRTC is better than SSH-ing for connecting to Mac terminal from iPhone

**原文链接**: [https://macky.dev](https://macky.dev)

本文推广了一款基于WebRTC的应用，支持从iPhone安全访问Mac终端，并论证其优于SSH。

核心论点是WebRTC提供了更安全、更用户友好的连接。安全性通过四层机制凸显：端到端加密传输（DTLS-SRTP）、结合主密码的双重身份验证、设备白名单机制，以及采用隐私优先设计、从不接触终端数据的信令服务器。

该应用提供原生Shell体验（Zsh/Bash），并集成了AI编程助手（Claude Code、Codex）。它强调易用性，无需复杂配置。

定价包括免费的“基础版”（单次会话限时5分钟）和一次性付费29美元的“专业版”（支持无限会话、多设备、连接日志及后台持续连接）。

主机端需macOS 15+系统，远程端需iOS 18+系统。用户评价称赞其连接即时、操作便捷，并能替代多种工具。

---

## 6. 国税局针对Meta的策略开辟了企业税务战的新战线

**原文标题**: IRS Tactics Against Meta Open a New Front in the Corporate Tax Fight

**原文链接**: [https://www.nytimes.com/2026/02/24/business/irs-meta-corporate-taxes.html](https://www.nytimes.com/2026/02/24/business/irs-meta-corporate-taxes.html)

无法访问文章链接。

---

## 7. 致谷歌关于强制开发者注册以分发应用的公开信

**原文标题**: Open Letter to Google on Mandatory Developer Registration for App Distribution

**原文链接**: [https://keepandroidopen.org/open-letter/](https://keepandroidopen.org/open-letter/)

在一封日期为2026年2月24日的公开信中，一个由民间社会团体、非营利组织和科技公司组成的联盟强烈反对谷歌的新政策，该政策要求所有安卓应用开发者必须在谷歌进行集中注册，即使是在应用商店之外分发应用也不例外。

签署方认为，这种涉及费用和身份验证的强制注册从根本上破坏了安卓历史性的开放性。他们的主要担忧包括：
1.  将谷歌的审核控制权扩展到所有应用分发渠道。
2.  为小型开发者、开源项目、活动人士和人道主义组织设置了巨大的进入壁垒。
3.  通过建立全球开发者数据库，带来了严重的隐私和监控风险。
4.  存在任意执法和账户终止的风险，形成了一个单一故障点。
5.  具有反竞争影响，使谷歌能够掌握所有安卓开发的情报。
6.  与全球要求平台更加开放的监管趋势相悖。

公开信指出，现有的安卓安全措施（如沙盒机制、用户警告和Play Protect）已经足够，没有证据证明这种集中控制的合理性。它呼吁谷歌立即撤销该政策，进行透明对话，并承诺保持平台中立，同时警告称此举将威胁创新、竞争和数字主权。

---

## 8. 改造旧Kindle以显示公交车到站时间

**原文标题**: Hacking an old Kindle to display bus arrival times

**原文链接**: [https://www.mariannefeng.com/portfolio/kindle/](https://www.mariannefeng.com/portfolio/kindle/)

本文详细介绍了作者如何将一台旧的Kindle Touch改造成实时公交到站信息显示屏。整个过程包含五个主要步骤：越狱设备、安装KUAL启动器和MRPI安装器、设置SSH访问权限、创建用于生成定制图像的网页服务器，以及构建控制显示的KUAL应用程序。

服务器从新泽西公交的公共API获取公交数据，并使用`wkhtmltoimage`将格式化HTML转换为600x800像素的PNG图像，随后传输至Kindle。Kindle上的自定义脚本通过`curl`每分钟获取该图像，并用`eips`命令显示。该显示屏包含通过菜单键退出的功能，此操作会终止脚本并重启Kindle的常规界面。

作者指出两个持续存在的问题：长时间使用后的屏幕残影现象，以及约五天的电池续航。尽管如此，该项目仍是一个功能完备且经济实惠的商业电子墨水屏替代方案，成功实现了实时交通信息的展示。

---

## 9. Steel Bank Common Lisp

**原文标题**: Steel Bank Common Lisp

**原文链接**: [https://www.sbcl.org/](https://www.sbcl.org/)

Steel Bank Common Lisp（SBCL）是一款高性能、开源的ANSI Common Lisp编程语言编译器。它采用宽松许可证分发，不仅包含编译器和运行时系统，还提供了交互式开发环境，内置调试器、性能分析器和代码覆盖率分析器等工具。

SBCL支持跨平台运行，兼容的操作系统包括Linux、多种BSD变体、macOS、Solaris和Windows。截至本文撰写时，最新的稳定版本为2026年1月发布的2.6.1版。

完整的文档以HTML和PDF格式在线提供，源代码采用TexInfo格式维护。用户可通过项目的Launchpad缺陷数据库提交问题，或发送邮件至专用邮件列表获取技术支持。

---

## 10. 我们安装了一个单向旋转门以保安全。

**原文标题**: We installed a single turnstile to feel secure

**原文链接**: [https://idiallo.com/blog/installed-single-turnstile-for-security-theater](https://idiallo.com/blog/installed-single-turnstile-for-security-theater)

本文通过个人经历对比了“安全表演”与真正的安全。公司被收购后，推行了一系列高调的安全措施：所有门、电梯和停车场都安装了门禁读卡器，随后每栋大楼大堂增设了单向旋转闸机。这导致日常运作严重受阻，员工仅为了到达工位就需排队等候一个多小时。

身为软件工程师的作者将这种混乱与内部Jira管理工具中一个隐形却关键的安全漏洞进行对比：用户凭证以base64编码形式存储在cookie中，而非采用恰当的身份验证令牌。修复此漏洞耗费了一个月时间撰写文档和申请审批，且未获得任何认可。

旋转闸机尽管成本高昂且影响效率，却在公司邮件中被大肆宣扬，让管理层得以“显得”注重安全。与此同时，真正系统性的漏洞却被静默处理。核心论点是：真正的安全往往是隐形的工程基础，而“安全表演”则是可见的、应付检查的表面功夫，重形式而轻实质。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 2 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 3 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 4 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 5 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 6 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 7 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 8 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 9 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 10 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 11 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 12 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 13 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 14 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 15 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 16 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 17 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 18 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 19 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 20 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 21 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 22 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 23 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 24 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 25 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 26 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 27 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 28 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 29 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 30 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 31 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 32 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 33 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 34 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 35 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 36 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 37 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 38 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 39 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 40 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 41 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 42 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 43 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 44 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 45 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 46 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 47 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 48 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 49 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 50 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 51 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 52 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 53 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 54 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 55 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 56 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 57 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 58 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 59 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 60 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 61 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 62 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 63 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 64 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 65 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 66 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 67 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 68 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 69 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 70 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 71 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 72 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 73 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 74 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 75 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 76 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 77 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 78 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 79 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 80 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 81 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 82 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 83 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 84 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 85 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 86 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 87 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 88 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 89 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 90 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 91 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 92 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 93 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 94 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 95 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 96 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 97 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 98 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 99 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 100 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 101 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 102 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 103 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 104 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 105 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 106 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 107 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 108 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 109 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 110 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 111 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 112 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 113 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 114 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 115 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 116 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 117 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 118 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 119 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 120 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 121 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 122 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 123 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 124 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 125 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 126 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 127 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 128 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 129 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 130 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 131 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 132 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 133 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 134 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 135 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 136 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 137 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 138 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 139 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 140 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 141 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 142 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 143 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 144 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 145 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 146 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 147 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 148 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 149 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 150 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 151 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 152 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 153 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 154 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 155 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 156 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 157 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 158 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 159 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 160 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 161 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 162 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 163 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 164 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 165 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 166 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 167 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 168 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 169 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 170 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 171 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 172 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 173 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 174 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 175 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 176 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 177 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 178 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 179 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 180 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 181 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 182 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 183 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 184 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 185 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 186 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 187 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 188 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 189 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 190 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 191 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 192 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 193 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 194 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 195 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 196 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 197 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 198 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 199 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 200 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 201 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 202 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 203 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 204 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 205 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 206 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 207 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 208 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 209 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 210 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 211 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 212 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 213 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 214 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 215 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 216 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 217 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 218 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 219 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 220 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 221 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 222 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 223 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 224 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 225 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 226 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 227 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 228 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 229 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 230 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 231 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 232 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 233 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 234 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 235 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 236 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 237 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 238 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 239 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 240 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 241 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 242 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 243 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 244 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 245 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 246 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 247 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 248 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 249 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 250 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 251 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 252 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 253 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 254 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 255 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 256 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 257 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 258 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 259 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 260 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 261 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 262 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 263 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 264 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 265 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 266 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 267 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 268 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 269 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 270 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 271 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 272 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 273 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 274 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 275 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 276 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 277 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 278 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 279 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 280 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 281 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 282 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 283 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 284 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 285 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 286 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 287 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 288 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 289 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 290 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 291 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 292 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 293 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 294 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 295 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 296 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 297 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 298 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 299 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 300 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 301 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 302 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 303 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 304 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 305 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 306 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 307 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 308 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 309 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 310 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 311 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 312 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 313 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 314 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 315 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 316 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 317 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 318 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 319 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 320 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 321 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 322 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 323 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 324 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 325 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 326 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 327 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 328 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 329 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 330 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 331 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 332 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 333 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 334 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 335 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 336 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 337 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 338 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 339 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
