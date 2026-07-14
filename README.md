# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-14.md)

*最后自动更新时间: 2026-07-14 20:32:59*
## 1. 高塔直上云霄

**原文标题**: The Tower Keeps Rising

**原文链接**: [https://lucumr.pocoo.org/2026/7/13/the-tower-keeps-rising/](https://lucumr.pocoo.org/2026/7/13/the-tower-keeps-rising/)

**总结：**

Armin Ronacher的文章《通天塔依然在建造》借用圣经中巴别塔的寓言，比喻AI辅助编程的风险。他认为，虽然AI智能体能大幅提升个人生产力，但大型软件项目的成功依赖于人类的协作，而不仅仅是代码的输出。

项目共享语言——团队对概念、边界、不变性和代码归属的共同理解——部分依赖于摩擦：即阅读他人代码、提出问题以及协商修改所必需的努力。这种摩擦同步了开发者之间的理解。

AI智能体消除了这种摩擦。开发者无需协调或获取共享上下文，就能独立使用智能体进行大规模改动（例如添加OAuth、缓存、重新设计数据库）。代码可以编译通过，测试也能通过，但让人能共同理解系统的架构语言却消失了。

与圣经故事的关键区别在于：在巴别塔中，共同语言的丧失使建造停止；而在AI辅助工程中，即便共享理解崩溃，建造仍在继续。因为没有立即出现的故障，这种丧失便无人察觉。那座塔——软件项目——依然在升高，但集体理解的基础已经不复存在。

---

## 2. Bonsai 27B：一款可在手机上运行的270亿参数级模型

**原文标题**: Bonsai 27B: A 27B-Class Model that runs on a phone

**原文链接**: [https://prismml.com/news/bonsai-27b](https://prismml.com/news/bonsai-27b)

**盆景27B公告摘要**

PrismML发布盆景27B，这是首个能在手机上运行的270亿参数模型。该模型基于Qwen3.6 27B，采用极限权重压缩：**三值变体**（1.71比特/权重，5.9GB）适用于笔记本电脑，**1比特变体**（1.125比特/权重，3.9GB）可适配iPhone 17 Pro的内存预算。两者均支持多模态任务（视觉、工具调用、自主循环），具备26.2万令牌的上下文窗口。

在“思考模式”下的基准测试显示，三值版本保留全精度性能的95%，1比特版本保留90%，数学与编码能力几乎无损。该模型在RTX 5090上（1比特）可达163令牌/秒，在M5 Max上可达87令牌/秒。

关键范式转变：本地执行可实现持续、私密的自主工作流（数百次模型调用），无需云端延迟或数据暴露。这解锁了持久化端侧智能体、离线操作及混合云本地架构。公司强调“智能密度”作为新指标——1比特盆景27B每GB提供0.53能力值，是全精度基准的10倍以上。

权重基于Apache 2.0许可证发布，原生支持Apple（MLX）与NVIDIA（CUDA）设备。

---

## 3. 你的“应用”本可以是一个网页（所以我帮你修好了）

**原文标题**: Your 'app' could have been a webpage (so I fixed it for you)

**原文链接**: [https://danq.me/2026/07/09/your-app-could-have-been-a-webpage/](https://danq.me/2026/07/09/your-app-could-have-been-a-webpage/)

**概述：**

作者批评了“Travelbound”这款应用，该应用是访问团队行程、旅行安排及住宿信息的必要条件。本质上，该应用仅仅是文本、图片和PDF链接的封装——这些内容本可以通过一个简单的网页呈现。它唯一增加的“功能”是通过Google账户进行追踪以及广告（美其名曰“灵感”）。

感到不满的作者通过拦截网络流量对这款安卓应用进行了逆向工程。他们发现该应用使用共享的用户名和密码从某个URL获取JSON数据。JSON包含了所有行程数据、文件引用以及广告。图片的链接有效期很短，需要定期重新获取。

作者编写了一个Ruby脚本，通过定时任务定期抓取JSON并生成静态HTML页面。该页面跳过了广告，列出了行程项目和文件，并（使用同一团队凭证）进行了密码保护。结果：一个0.05MB的网页（另外还有35MB的可选图片），对比之下是43MB的应用（下载后为124MB），后者还包含追踪和广告。网页提供了复制、打印、保存、书签、搜索、通用设备访问以及更好的无障碍功能——所有这些都是该应用所欠缺的。

作者总结道，许多“应用”都是不必要的；这些内容从一开始就应该是一个网页。他们已经将替代方案分享给团队，让每个人都可以选择是使用臃肿、充满追踪的应用，还是使用简洁、功能完善的网页。

---

## 4. 最大的《我的世界》可用世界，总计15TB

**原文标题**: The largest available Minecraft world, totalling 15 TB

**原文链接**: [https://2b2t.place/1million](https://2b2t.place/1million)

无法访问该文章链接。

---

## 5. 如何让Claude不再说“承重”

**原文标题**: How to stop Claude from saying load-bearing

**原文链接**: [https://jola.dev/posts/how-to-stop-claude-from-saying-load-bearing](https://jola.dev/posts/how-to-stop-claude-from-saying-load-bearing)

本文提出了一种方法，通过使用自定义钩子脚本，阻止Claude AI过度使用诸如"承重墙"、"实话实说"和"你说得完全正确"等短语。

解决方案是创建一个Python脚本（`wordswap.sh`），将特定短语替换为幽默替代词（例如，将"seam"替换为"thingamajig"，将"load-bearing"替换为"cooked"）。该脚本读取JSON输入，应用不区分大小写的正则表达式替换，并为"MessageDisplay"钩子输出格式化JSON。

实施时，将脚本保存至`~/.claude/hooks/wordswap.sh`，赋予可执行权限，然后将其添加到`~/.claude/settings.json`中"MessageDisplay"的hooks块下。由于钩子在启动时加载，需要新会话才能激活替换功能。

作者建议用户可自定义替换内容以获得更佳效果，并在Bluesky平台（@jola.dev）上分享了该帖子，相关话题包括Elixir库、CI工作流和博客同步。

---

## 6. Cursor 0day漏洞：当完全披露成为唯一防线

**原文标题**: Cursor 0day: When Full Disclosure Becomes the Only Protection Left

**原文链接**: [https://mindgard.ai/blog/cursor-0day-when-full-disclosure-becomes-the-only-protection-left](https://mindgard.ai/blog/cursor-0day-when-full-disclosure-becomes-the-only-protection-left)

**摘要：** Mindgard 发布的这篇文章披露了广受欢迎的 AI 辅助开发环境 Cursor 中存在一个严重的 0-day 漏洞。该漏洞允许攻击者在开发者于 Windows 系统上打开一个代码仓库时执行任意代码：若恶意 `git.exe` 被植入项目根目录，Cursor 将在无需任何用户交互、提示或警告的情况下自动执行该文件。这种情况在正常操作过程中会反复发生。

Mindgard 于 2025 年 12 月 15 日发现该漏洞，并当天向 Cursor 进行了负责任的披露。尽管经过七个月的接触——包括通过电子邮件、HackerOne（漏洞在该平台被复现并确认）以及直接联系 Cursor 的首席信息安全官进行报告——该公司未能针对 197 个以上新版本修复该问题。在最初确认后，Cursor 便停止了沟通，未提供任何更新或修复进展。

由于协作披露失败，Mindgard 决定进行全面公开披露。他们认为用户理应了解此风险，以便自行实施保护。建议的缓解措施包括使用 AppLocker 阻止从工作目录执行程序、仅在隔离环境（如虚拟机）中打开不受信任的代码仓库，以及不依赖文件哈希黑名单。

该文章还引发了对快速发展的 AI 公司中安全问题的更广泛担忧，质疑漏洞赏金计划是否不堪重负，以及用户安全是否在增长与收购过程中被置于次要地位。

---

## 7. Linux输入延迟测量：X11与Wayland、VRR及DXVK对比

**原文标题**: Measuring Input Latency on Linux: X11 vs. Wayland, VRR, and DXVK

**原文链接**: [https://marco-nett.de/blog/measuring-input-latency-on-linux-x11-vs-wayland-vrr-dxvk/](https://marco-nett.de/blog/measuring-input-latency-on-linux-x11-vs-wayland-vrr-dxvk/)

**摘要：**

本文通过硬件方式详细测量了 Linux 系统下的点击至光子延迟，对比了 X11 与 Wayland、VRR 开关状态以及 DXVK 低延迟分支。作者使用定制设备（搭载光电二极管的 QT Py RP2040）模拟鼠标点击并检测屏幕变化，从而测量端到端延迟。

**关键发现：**
- **X11 对比 Wayland：** X11 略快（0.14–0.22 毫秒），但差异微乎其微，不足以解释用户常抱怨 Wayland 反应迟缓的问题。
- **VRR（可变刷新率）：** 带来最大的单项改进，将延迟降低 0.26–0.45 毫秒，并使延迟分布更平滑。
- **DXVK 低延迟分支：** 在帧率受限场景下持续提升（0.10–0.29 毫秒），在非受限测试中通过平滑帧间隔并防止 GPU 队列堆积，显著改善达 0.84 毫秒。
- **XWayland 表现糟糕：** 相比原生 Wayland 增加高达 3.13 毫秒的延迟——超过所有其他因素的总和。在此情况下，DXVK 低延迟分支可挽回 2.11 毫秒。

**结论：** 排除 XWayland 后，应用所有优化（X11 + VRR + 低延迟）仅比默认设置降低 0.72 毫秒的中位延迟。实际收益来自 VRR 减少抖动以及 DXVK 的帧间隔调节器平滑帧时间波动。核心建议：**游戏时请避免使用 XWayland**。

---

## 8. Show HN：文学名著开篇金句

**原文标题**: Show HN: Opening lines of famous literary works

**原文链接**: [https://www.verbaprima.com/](https://www.verbaprima.com/)

文章《Show HN：经典文学作品的著名开篇》介绍了**Verba Prima**，这是一个收集并展示知名书籍开篇句子的数字项目。主要内容包括：

- **目的**：打造一个经过精心策划、便于浏览的经典及现代文学作品标志性开篇句子合集，为作家、读者和文学爱好者提供资源。
- **特点**：网站以简洁、极简的风格展示开篇句子，通常附带作者和书名。用户可按体裁、作者或时代浏览，并可提交修正或建议。
- **示例**：收录了《白鲸》（“叫我以实玛利。”）、《傲慢与偏见》、《1984》和《麦田里的守望者》等作品的开篇句子。
- **技术细节**：作为个人项目构建，可能使用了常见的网络技术（HTML/CSS/JS或静态网站生成器），注重速度和简洁性。
- **目标**：突显开篇句子在奠定基调、主题和吸引读者方面的力量，并激发对文学技艺的欣赏。

该项目以“Show HN”形式在Hacker News上分享，邀请反馈和社区参与。创作者强调选材的主观性，并欢迎补充。

---

## 9. 我们是否将太多思考推给了人工智能？

**原文标题**: Are we offloading too much of our thinking to AI?

**原文链接**: [https://www.artfish.ai/p/offloading-thinking-to-ai](https://www.artfish.ai/p/offloading-thinking-to-ai)

本文探讨了将思考外包给人工智能这一日益增长的趋势，引发了对自主性与独立思考价值的担忧。作者Yennie Jun在自身及他人身上观察到这种现象，从琐碎决策到复杂推理无所不包。她引用刘宇昆2012年短篇小说《完美匹配》——其中名为蒂莉的通用AI助手为用户做出所有决策，并讲述遇见"麦克风男"的经历：此人录制对话并将所有批判性思考委托给Claude，认为它比自己更聪明。

作者指出，虽然搜索引擎等工具需要主动整合信息，但AI如今直接产出成品答案，虽节省时间却可能削弱批判性思维。她以个人经历对比：旅行时与妹妹克制住立刻向ChatGPT询问葡萄牙为何对殖民史引以为傲的冲动，先自行头脑风暴理论再用AI验证——她珍视这一过程。

Jun承认AI的益处，如自动化繁琐任务（翻译、编程、辅导等）以腾出时间从事更有价值的工作。但她强调风险，例如母亲观察到学生提交雷同的AI生成答案却未真正学习。有益辅助与丧失自主性之间的界限日益模糊。作者质问：我们是在实现劳动自动化还是人类能动性自动化？将欲望外包（如吃什么穿什么）是否会削弱自我认知？她总结道：平衡至关重要，持续参与构建自身欲望与思考才是维系自主性的关键。

---

## 10. 零成本谬误：智能体时代的开源软件

**原文标题**: The zero-cost fallacy: open-source software in the agentic era

**原文链接**: [https://www.thoughtworks.com/insights/blog/open-source/zero-cost-fallacy-open-source-agentic-era](https://www.thoughtworks.com/insights/blog/open-source/zero-cost-fallacy-open-source-agentic-era)

**摘要：开源领域的“零成本谬误”**

文章认为，开源软件正因“零成本谬误”——混淆免费分发与免费维护——而面临危机。虽然复制代码无需成本，但维护代码需要大量人力，导致维护者精疲力竭。宽松许可证（MIT、Apache）使得大型企业得以利用志愿者的劳动，在不做贡献的情况下构建专有帝国。

两种人工智能驱动的压力加剧了这一情况：**“低质”拉取请求**（人工智能生成的低质量代码淹没仓库）和**信任度下降**（浅层提交记录与恶意人工智能生成贡献的病毒式项目）。许可证悖论依然存在：限制性许可证因采购瓶颈阻碍采用，而宽松许可证则助长剥削。

一个激进的观点浮现：随着大语言模型的改进，团队可能从使用完整的开源库转向**研究开放式规范**，并利用人工智能生成本地、最小化的重新实现。这降低了供应链风险，但可能导致精英分化，并剥夺原始创作者的署名。

**核心指导**：工程团队必须将开源依赖视为雇佣代码，严格审计供应链，并规范贡献预算以维持关键基础设施。开源“免费午餐”的时代正在终结。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 2 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 3 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 4 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 5 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 6 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 7 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 8 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 9 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 10 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 11 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 12 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 13 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 14 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 15 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 16 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 17 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 18 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 19 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 20 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 21 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 22 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 23 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 24 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 25 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 26 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 27 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 28 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 29 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 30 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 31 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 32 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 33 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 34 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 35 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 36 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 37 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 38 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 39 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 40 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 41 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 42 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 43 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 44 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 45 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 46 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 47 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 48 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 49 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 50 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 51 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 52 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 53 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 54 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 55 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 56 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 57 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 58 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 59 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 60 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 61 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 62 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 63 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 64 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 65 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 66 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 67 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 68 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 69 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 70 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 71 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 72 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 73 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 74 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 75 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 76 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 77 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 78 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 79 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 80 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 81 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 82 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 83 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 84 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 85 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 86 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 87 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 88 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 89 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 90 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 91 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 92 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 93 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 94 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 95 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 96 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 97 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 98 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 99 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 100 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 101 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 102 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 103 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 104 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 105 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 106 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 107 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 108 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 109 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 110 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 111 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 112 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 113 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 114 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 115 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 116 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 117 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 118 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 119 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 120 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 121 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 122 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 123 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 124 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 125 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 126 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 127 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 128 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 129 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 130 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 131 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 132 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 133 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 134 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 135 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 136 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 137 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 138 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 139 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 140 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 141 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 142 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 143 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 144 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 145 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 146 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 147 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 148 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 149 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 150 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 151 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 152 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 153 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 154 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 155 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 156 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 157 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 158 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 159 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 160 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 161 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 162 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 163 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 164 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 165 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 166 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 167 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 168 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 169 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 170 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 171 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 172 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 173 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 174 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 175 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 176 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 177 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 178 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 179 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 180 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 181 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 182 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 183 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 184 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 185 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 186 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 187 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 188 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 189 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 190 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 191 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 192 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 193 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 194 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 195 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 196 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 197 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 198 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 199 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 200 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 201 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 202 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 203 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 204 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 205 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 206 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 207 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 208 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 209 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 210 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 211 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 212 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 213 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 214 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 215 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 216 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 217 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 218 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 219 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 220 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 221 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 222 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 223 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 224 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 225 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 226 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 227 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 228 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 229 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 230 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 231 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 232 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 233 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 234 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 235 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 236 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 237 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 238 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 239 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 240 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 241 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 242 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 243 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 244 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 245 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 246 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 247 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 248 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 249 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 250 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 251 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 252 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 253 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 254 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 255 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 256 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 257 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 258 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 259 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 260 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 261 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 262 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 263 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 264 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 265 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 266 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 267 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 268 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 269 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 270 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 271 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 272 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 273 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 274 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 275 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 276 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 277 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 278 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 279 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 280 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 281 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 282 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 283 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 284 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 285 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 286 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 287 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 288 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 289 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 290 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 291 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 292 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 293 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 294 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 295 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 296 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 297 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 298 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 299 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 300 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 301 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 302 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 303 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 304 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 305 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 306 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 307 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 308 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 309 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 310 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 311 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 312 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 313 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 314 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 315 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 316 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 317 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 318 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 319 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 320 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 321 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 322 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 323 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 324 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 325 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 326 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 327 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 328 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 329 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 330 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 331 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 332 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 333 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 334 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 335 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 336 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 337 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 338 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 339 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 340 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 341 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 342 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 343 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 344 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 345 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 346 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 347 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 348 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 349 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 350 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 351 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 352 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 353 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 354 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 355 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 356 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 357 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 358 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 359 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 360 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 361 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 362 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 363 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 364 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 365 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 366 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 367 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 368 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 369 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 370 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 371 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 372 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 373 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 374 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 375 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 376 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 377 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 378 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 379 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 380 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 381 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 382 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 383 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 384 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 385 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 386 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 387 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 388 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 389 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 390 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 391 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 392 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 393 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 394 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 395 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 396 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 397 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 398 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 399 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 400 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 401 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 402 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 403 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 404 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 405 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 406 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 407 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 408 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 409 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 410 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 411 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 412 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 413 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 414 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 415 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 416 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 417 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 418 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 419 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 420 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 421 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 422 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 423 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 424 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 425 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 426 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 427 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 428 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 429 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 430 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 431 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 432 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 433 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 434 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 435 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 436 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 437 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 438 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 439 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 440 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 441 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 442 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 443 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 444 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 445 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 446 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 447 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 448 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 449 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 450 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 451 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 452 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 453 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 454 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 455 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 456 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 457 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 458 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 459 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 460 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 461 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 462 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 463 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 464 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 465 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 466 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 467 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 468 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 469 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 470 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 471 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 472 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 473 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 474 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 475 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 476 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 477 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
