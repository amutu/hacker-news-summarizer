# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-09.md)

*最后自动更新时间: 2026-11-09 04:55:28*
## 1. 高盛限制交易员和银行家使用Claude Code

**原文标题**: Goldman Sachs Is Pulling Claude Code from Its Bankers and Traders

**原文链接**: [https://www.thestateofai.com/news/goldman-sachs-claude-code-traders-bankers](https://www.thestateofai.com/news/goldman-sachs-claude-code-traders-bankers)

摘要：高盛十月份更新内部指引，将Anthropic的Claude Code和微软GitHub Copilot的使用权限限定为约1.2万名工程师，交易员、策略师和银行家被排除在外。此前这些非技术人员曾用AI工具监控客户交易流向、构建市场模型并生成报告，此次限制引发部分交易员不满。值得注意的是，高盛首席信息官Argenti在七月还曾公开赞扬非技术员工的"氛围编程"实践，仅三个月后即收回权限。今年四月，高盛已因合同条款限制香港银行家使用Claude。限制原因涉及三方面：一是交易员编写的脚本未经代码审查和测试便投入日常使用，存在操作风险；二是银行须维护不同业务部门间的信息隔离，AI生成代码难以纳入合规管控；三是按token计费的代理工具推高了成本。与此同时，高盛与摩根士丹利是Anthropic IPO的主承销商，交易员正面临"推销自己已无权使用的产品"的尴尬。巴克利则走向另一方向——既向工程师开放Claude Code，又借此削减5000个岗位。文章评论认为，限制未审查代码进入交易台是正确之举，但仅以指引更新一刀切收回权限而不提供替代方案，忽视了交易员积累的有效使用场景，管理层应在发放AI代理工具前明确代码归属与责任机制。

---

## 2. 我如何应对AI脑力透支

**原文标题**: How I Fight AI Brain Fry

**原文链接**: [https://sergeykuhne.com/blog/fighting-ai-brain-fry](https://sergeykuhne.com/blog/fighting-ai-brain-fry)

本文分享了一位开发者使用AI编程工具（如Claude Code）时，应对多任务并行导致"大脑过载"的实践经验。当AI回复需要追问或拆分任务时，终端会迅速产生数十个线程，上下文在脑中无法承载，注意力随之崩溃。作者将工作组织为优先级队列，核心解决"排序"与"上下文"两大难题。队列以git为载体，每个任务是一个markdown文件，状态以提交快照保存，信息不依赖聊天窗口或个人记忆。AI代理在循环中自动完成研究、构建、测试与部署验证；涉及敏感代码时在分支上操作并请求人工批准，生产部署始终由人决定。需人工判断的事项汇总至"所有者收件箱"，由脚本生成优先级清单。阅读界面基于Claude Artifact从git实时重建，一个链接即可查看变更全貌，裁决回写git。最关键的机制是"关闭"：处理完一项即归还队列，上下文随之释放，才能专注下一项。作者坦言仍会疲惫，但不再分心迷失。当前挑战在于上下文加载效率和避免任务因等待裁决陷入死循环，系统仍在持续演进。

---

## 3. Dux：免费开源的 Wayland 桌面 Shell，集成文件管理器与主题定制

**原文标题**: Dux: Free, open-source Wayland desktop shell with file manager and theming

**原文链接**: [https://duxlabs.dev/](https://duxlabs.dev/)

Dux 是一款免费开源的 Wayland 桌面 Shell，兼容 niri、Hyprland、Sway、Miracle 等主流 Wayland 窗口管理器。最新版本 DMS 2.1 Stormborn 带来全新系统监控、视频壁纸、媒体播放器改版及界面密度优化。Dux 提供完整桌面生态：Dux Modular Shell 支持动态主题与流畅动画；Dux Files 为键盘优先的文件管理器，支持标签页、分屏、搜索与网络共享；Dux GOP 实现 CPU、内存、GPU 及网络监控；Dux Greeter 提供美观登录界面；Dux Search 支持高速文件检索；Dux Calendar 兼容 Google、iCloud、CalDAV 等日历服务。核心亮点在于"一主题通百应用"——自动为 GTK3、GTK4、Qt 应用及终端、编辑器生成统一配色，并基于自研 dank16 算法构建完整 16 色终端调色板，兼顾明暗模式与对比度。此外，Dux 提供 Zirconium（Fedora + niri）及 Fedora Miracle Spin 等预配置方案，开箱即用。项目完全免费，由 115 余名 Ko-fi 支持者及代码贡献者共同维持运营。

---

## 4. Outlook.com 悄然拒收未配置 DMARC 域名的邮件

**原文标题**: Outlook.com Is Quietly Rejecting Email from Domains Without DMARC

**原文链接**: [https://mailroute.net/blog/outlook-rejecting-email-without-dmarc](https://mailroute.net/blog/outlook-rejecting-email-without-dmarc)

自2026年11月5日起，微软旗下Outlook.com、Hotmail、Live及MSN邮箱开始静默拒收未发布DMARC记录域名的部分邮件（退信码550 5.7.1）。与先前仅针对日发超5000封的大发件人不同，此次波及所有低量发送者，且微软未作任何公告。该问题极具隐蔽性：邮件并非全部退回，而是随机拒收，发送方易误判为偶发故障而忽略，收件人则完全不知情，对依赖邮件沟通的企业而言，账单、确认函等关键信息可能悄然丢失。修复仅需在DNS中添加一条TXT记录（_dmarc，值：v=DMARC1; p=none）。p=none为安全起步策略，仅声明域名启用DMARC并请求报告，不改变其他收件方的处理逻辑，但前提是SPF或DKIM至少一项通过域名对齐验证。经MailRoute中继发送的邮件已自动满足SPF与DKIM条件，添加DMARC记录即可完全解决。当前各主流邮箱正将DMARC从"最佳实践"推为交付底线，p=none也是迈向p=reject、有效防范域名仿冒与钓鱼攻击的第一步。

---

## 5. Declarative Dragging

**原文标题**: Declarative Dragging

**原文链接**: [https://declarative-dragging.github.io/](https://declarative-dragging.github.io/)

文章之前已经处理过

---

## 6. Llama-modchip：64GB内存运行284B DeepSeek，无需GPU

**原文标题**: Llama-modchip: 284B DeepSeek on 64GB RAM, no GPU

**原文链接**: [https://github.com/synchopate/llama-modchip](https://github.com/synchopate/llama-modchip)

llama-modchip（v2.4.0）是一套面向纯CPU推理的ggml/llama.cpp补丁与量化工具集，可在16–64GB内存上运行284B及30B混合专家（MoE）大模型，完全无需GPU。核心突破：通过Fractal-64量化将DeepSeek-V4-Flash（284.33B总参/13.17B激活）从76.87 GiB压缩至56.56 GiB（1.71 bpw），配合256K上下文KV缓存（57.61 GiB VmRSS）锁定64GB内存，实现零交换运行。16核Zen 5上prefill达44.36 tok/s（+77%），decode 9–14.7 tok/s，输出质量与原版完全一致（余弦相似度1.00000）。30B Nemotron在16–32GB内存上达25–60 tok/s，Threadripper 8通道平台达111 tok/s。关键技术包括AVX-512四级缓存多列tiling、非临时MoE流式加载防L3驱逐、Stockfish-PVS推测解码（13ms KV恢复）、O(1)回滚修复。支持AMD Zen 5/4、Apple M4 Max、AWS Graviton、Windows混合GPU等架构，提供Linux/macOS/Windows跨平台一键部署，兼容Qwen3、Nemotron-H-8B等多款模型。

---

## 7. RAM Altman：Linux脚本每日向Sam Altman发送你电脑闲置内存量邮件

**原文标题**: RAM Altman: Linux Script Emails Sam Altman Daily How Much Unused RAM in Your PC

**原文链接**: [https://respawnfirst.com/linux-script-emails-sam-altman-unused-ram-ram-altman/](https://respawnfirst.com/linux-script-emails-sam-altman-unused-ram-ram-altman/)

摘要：因Sam Altman此前声称OpenAI的内存需求优先于消费电子产品，引发全网嘲讽。开源开发者Iain Kay顺势创建了一款名为"Ram Altman"的Linux BASH脚本，用于监控用户电脑闲置内存。当可用内存超过总量10%时，脚本会从预设的讽刺模板中选取一条"邮件"发往Sam Altman，例如："别紧张，我桌上有8.6GiB内存没在数据中心，它今天没有计划，负责任地囤着。"为防仓库被滥用作邮件伪造或DDoS工具，作者默认未配置邮件服务器。项目同时提供--dry-run标志和本地测试套件，允许用户预览生成消息而无需实际发送。FAQ页面也充满幽默，如"这能缓解DRAM短缺吗？""不能。""低于10%说明你的机器已经够惨了。"该脚本迅速走红，最终促使Altman在X上发文澄清，承认言论被断章取义，并表示希望所有人都能获得充足资源。

---

## 8. 英伟达董事会就黄仁勋遭外国情报针对一事启动独立调查

**原文标题**: Nvidia Board of Directors Is Investigating Jensen Huang

**原文链接**: [https://nvidianews.nvidia.com/news/statement-from-nvidia-board-of-directors](https://nvidianews.nvidia.com/news/statement-from-nvidia-board-of-directors)

2026年11月8日，英伟达（NVIDIA）董事会发表正式声明，宣布启动一项独立调查。调查起因是近期有报道称，公司创始人兼首席执行官黄仁勋（Jensen Huang）已成为外国情报活动的目标。此次调查由独立董事委员会牵头，并聘请外部独立律师协助监督。董事会强调，美国国家安全与经济安全是英伟达及全体股东利益的首要考量。目前，董事会尚无证据表明国家安全或公司商业机密遭到泄露，但仍将全面审查所有可得信息，确保万无一失。黄仁勋本人表示完全支持此次审查，并承诺全力配合调查工作。董事会同时表明，对黄仁勋及其领导团队保持充分信心，并将在适当时机向公众发布后续进展。

---

## 9. 写作作为思维工具

**原文标题**: Writing as a thinking tool

**原文链接**: [http://muratbuffalo.blogspot.com/2026/11/writing-as-thinking-tool.html](http://muratbuffalo.blogspot.com/2026/11/writing-as-thinking-tool.html)

文章从作者中学时代用思维导图记笔记的经历切入，提出核心观点：写作不是记录，而是思考本身。作者以图灵机与有限自动机的经典比喻说明写作的力量——失去纸笔，人便退化为有限自动机；拥有写作，便获得图灵机般的计算能力。写作如同"外部内存"，让人能处理更大的问题，审稿、自由写作中常因此涌现新联系。在LLM时代，AI虽博览群书，却不知你脑中尚未成形的直觉，依赖AI生成文本等于放弃思考，而坚持自行写作反成日益扩大的比较优势。最后给出五条写作建议：一是无约束大量产出初稿，不自我批判；二是以陌生读者视角严格删改，大刀阔斧；三是追求简洁明了，复杂往往是思维不清的掩护；四是为自我而写，不以外部反馈驱动；五是固定时间写作，以习惯替代灵感。

---

## 10. Windows 版 A Little Snitch

**原文标题**: A Little Snitch for Windows

**原文链接**: [https://packethound.app/](https://packethound.app/)

Windows 版 A Little Snitch 是一款轻量级网络监控工具，核心理念为"问一次，记一辈子"。当某款应用程序首次尝试建立网络连接时，该工具会弹出提示窗口，清晰展示应用的开发者信息、目标连接地址及所用端口号。用户可据此选择"允许"或"阻止"，并支持多种粒度：既可对整个应用统一设定策略，也可针对特定 IP 地址、主机名或域名分别操作。规则的生效范围同样灵活——可选择永久生效，也可仅在当前应用运行期间有效，应用退出后自动恢复。这种一次授权、长期记忆的机制，既避免了反复弹窗的打扰，又能帮助用户精准掌控各软件的网络行为，是 Windows 平台上管理应用网络权限的便捷利器。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 2 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 3 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 4 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 5 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 6 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 7 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 8 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 9 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 10 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 11 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 12 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 13 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 14 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 15 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 16 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 17 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 18 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 19 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 20 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 21 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 22 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 23 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 24 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 25 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 26 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 27 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 28 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 29 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 30 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 31 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 32 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 33 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 34 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 35 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 36 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 37 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 38 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 39 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 40 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 41 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 42 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 43 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 44 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 45 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 46 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 47 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 48 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 49 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 50 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 51 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 52 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 53 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 54 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 55 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 56 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 57 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 58 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 59 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 60 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 61 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 62 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 63 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 64 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 65 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 66 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 67 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 68 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 69 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 70 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 71 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 72 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 73 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 74 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 75 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 76 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 77 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 78 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 79 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 80 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 81 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 82 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 83 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 84 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 85 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 86 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 87 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 88 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 89 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 90 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 91 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 92 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 93 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 94 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 95 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 96 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 97 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 98 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 99 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 100 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 101 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 102 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 103 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 104 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 105 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 106 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 107 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 108 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 109 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 110 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 111 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 112 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 113 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 114 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 115 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 116 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 117 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 118 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 119 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 120 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 121 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 122 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 123 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 124 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 125 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 126 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 127 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 128 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 129 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 130 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 131 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 132 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 133 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 134 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 135 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 136 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 137 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 138 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 139 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 140 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 141 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 142 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 143 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 144 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 145 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 146 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 147 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 148 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 149 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 150 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 151 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 152 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 153 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 154 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 155 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 156 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 157 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 158 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 159 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 160 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 161 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 162 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 163 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 164 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 165 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 166 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 167 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 168 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 169 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 170 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 171 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 172 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 173 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 174 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 175 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 176 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 177 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 178 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 179 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 180 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 181 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 182 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 183 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 184 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 185 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 186 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 187 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 188 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 189 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 190 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 191 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 192 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 193 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 194 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 195 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 196 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 197 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 198 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 199 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 200 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 201 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 202 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 203 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 204 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 205 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 206 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 207 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 208 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 209 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 210 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 211 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 212 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 213 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 214 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 215 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 216 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 217 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 218 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 219 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 220 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 221 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 222 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 223 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 224 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 225 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 226 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 227 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 228 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 229 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 230 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 231 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 232 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 233 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 234 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 235 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 236 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 237 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 238 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 239 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 240 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 241 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 242 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 243 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 244 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 245 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 246 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 247 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 248 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 249 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 250 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 251 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 252 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 253 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 254 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 255 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 256 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 257 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 258 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 259 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 260 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 261 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 262 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 263 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 264 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 265 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 266 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 267 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 268 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 269 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 270 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 271 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 272 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 273 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 274 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 275 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 276 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 277 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 278 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 279 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 280 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 281 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 282 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 283 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 284 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 285 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 286 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 287 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 288 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 289 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 290 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 291 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 292 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 293 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 294 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 295 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 296 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 297 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 298 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 299 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 300 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 301 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 302 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 303 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 304 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 305 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 306 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 307 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 308 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 309 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 310 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 311 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 312 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 313 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 314 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 315 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 316 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 317 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 318 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 319 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 320 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 321 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 322 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 323 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 324 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 325 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 326 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 327 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 328 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 329 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 330 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 331 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 332 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 333 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 334 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 335 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 336 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 337 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 338 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 339 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 340 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 341 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 342 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 343 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 344 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 345 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 346 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 347 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 348 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 349 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 350 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 351 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 352 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 353 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 354 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 355 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 356 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 357 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 358 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 359 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 360 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 361 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 362 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 363 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 364 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 365 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 366 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 367 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 368 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 369 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 370 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 371 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 372 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 373 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 374 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 375 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 376 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 377 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 378 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 379 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 380 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 381 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 382 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 383 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 384 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 385 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 386 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 387 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 388 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 389 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 390 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 391 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 392 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 393 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 394 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 395 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 396 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 397 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 398 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 399 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 400 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 401 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 402 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 403 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 404 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 405 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 406 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 407 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 408 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 409 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 410 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 411 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 412 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 413 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 414 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 415 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 416 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 417 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 418 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 419 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 420 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 421 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 422 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 423 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 424 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 425 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 426 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 427 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 428 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 429 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 430 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 431 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 432 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 433 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 434 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 435 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 436 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 437 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 438 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 439 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 440 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 441 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 442 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 443 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 444 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 445 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 446 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 447 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 448 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 449 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 450 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 451 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 452 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 453 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 454 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 455 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 456 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 457 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 458 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 459 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 460 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 461 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 462 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 463 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 464 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 465 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 466 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 467 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 468 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 469 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 470 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 471 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 472 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 473 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 474 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 475 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 476 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 477 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 478 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 479 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 480 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 481 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 482 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 483 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 484 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 485 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 486 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 487 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 488 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 489 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 490 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 491 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 492 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 493 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 494 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 495 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 496 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 497 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 498 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 499 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 500 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 501 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 502 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 503 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 504 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 505 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 506 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 507 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 508 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 509 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 510 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 511 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 512 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 513 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 514 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 515 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 516 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 517 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 518 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 519 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 520 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 521 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 522 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 523 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 524 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 525 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 526 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 527 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 528 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 529 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 530 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 531 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 532 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 533 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 534 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 535 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 536 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 537 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 538 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 539 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 540 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 541 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 542 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 543 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 544 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 545 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 546 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 547 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 548 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 549 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 550 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 551 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 552 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 553 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 554 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 555 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 556 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 557 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 558 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 559 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 560 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 561 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 562 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 563 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 564 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 565 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 566 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 567 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 568 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 569 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 570 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 571 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 572 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 573 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 574 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 575 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 576 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 577 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 578 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 579 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 580 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 581 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 582 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 583 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 584 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 585 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 586 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 587 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 588 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 589 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 590 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 591 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 592 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 593 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 594 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 595 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
