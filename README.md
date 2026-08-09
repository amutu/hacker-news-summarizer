# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-09.md)

*最后自动更新时间: 2026-08-09 20:50:04*
## 1. 我如何用LLMs学习复杂主题

**原文标题**: How I use LLMs to learn complex topics

**原文链接**: [https://laurentiugabriel.github.io/blog/articles/how-i-use-llms-to-learn/](https://laurentiugabriel.github.io/blog/articles/how-i-use-llms-to-learn/)

作者不喜欢典型的大语言模型解释，认为它们过于简单化或表情符号过多。相反，他们使用大语言模型创建交互式的低多边形模拟——就像游戏一样——来有效学习复杂主题。他们的工作流程包括：1) 让大语言模型构建关于某个主题的基础知识，2) 审查这些知识的准确性，3) 要求其生成一个过山车大亨风格的动画，并考虑用户体验（响应式设计、播放控制），4) 将其部署到GitHub Pages网站。

一个关键示例是ChipTycoon，它将芯片制造过程从原始沙子到成品芯片交付到数据中心的全过程可视化。一个可见的推车跟踪整个过程，展示产品在每个阶段的变化。虽然低多边形图形需要一些想象力，但该模拟设计为准确且无幻觉的。

为了增强真实感，作者建议将真实图像转换为3D对象，以替代低多边形表示。他们还建议添加交互式挑战——例如关于先前步骤的问题或直观的谜题——以提高知识留存率。

作者已将这种方法应用于其他主题，包括火箭发动机制造、大语言模型的工作原理、F1发动机构造和EUV光刻机生产。

---

## 2. 我的过错——黑暗时刻

**原文标题**: Mea Culpa – Dark Hours

**原文链接**: [https://blog.terrygodier.com/2026/08/09/mea-culpa-dark-hours.html](https://blog.terrygodier.com/2026/08/09/mea-culpa-dark-hours.html)

作者发起了一个名为 **Dark Hours** 的网络项目，这是一个用于查看夜空中可见天体的工具。一个现有应用 **DarkHours.app** 的开发者指出，两个项目惊人地相似——包括名称。经过调查，作者意识到自己主要借助 **Claude** 构建的应用与那个开源项目高度雷同，甚至复现了原作者已经修复的一个缺陷。

因此，作者：
- 将 **Dark Hours 域名** 重定向到原开发者的网站。
- 取消了相关 iOS 应用的发布计划。
- 向原开发者致以完整的致谢，并鼓励用户使用真正的开源版本。

作者还就不负责任地依赖 AI 而未能意识到该项目早已存在一事表达了歉意。尽管作者此前从未见过 DarkHours.app，但他们接受了发布过于相似作品的责任。今后，作者将不再以那种方式使用 AI 构建网络项目；在 iOS 方面，作者将仅将 AI 用于提问和调试，而不会用它创建完整的应用。

---

## 3. OpenChamber：智能体开发环境

**原文标题**: OpenChamber: An Agentic Development Environment

**原文链接**: [https://openchamber.dev/](https://openchamber.dev/)

OpenChamber 是一个基于 OpenCode SDK 构建的开源智能体驱动开发环境。它旨在减少标签页跳转，帮助开发者持续稳步推进。

主要特性包括：

- **会话目标（Session Goals）**：智能体跨多轮持续朝着既定终点工作，即使应用关闭也不例外。
- **多模型运行与融合（Multi-run & Fusion）**：在最多五个模型上运行同一任务，保留最佳结果，或融合各模型的优势部分。
- **变更走查（Changes Walkthrough）**：将大型差异（diff）分组成有序、易于理解的步骤。
- **预览（Preview）**：指向运行中应用的某个元素，并将其背后的所有相关上下文发送给智能体。
- **从 Issue 到 PR**：从 GitHub issue 或 PR 入手，将失败的检查结果反馈回去，无需离开环境即可完成合并。
- **定时任务（Scheduled Work）**：按 cron 计划运行提示词，可选与会话目标结合使用。

工作区随处可用：提供 macOS、Windows 和 Linux 原生桌面应用；浏览器/PWA/移动端访问；以及 VS Code 扩展。支持项目操作、SSH 转发、本地 URL、后台通知，以及用于安全公共浏览器访问的 UI 密码。

隐私保护是重点：代码、提示词、差异（diff）和会话内容都保留在用户机器上，不会被收集。远程访问可通过密码、可撤销隧道和私密中继（Private Relay）选项加以保护，该选项通过二维码配对设备，采用端到端加密，且不开放任何端口。由于 OpenChamber 是开源的，其隐私模型可随时审查。

OpenChamber 完全免费。它基于 OpenCode SDK 运行，可通过 `curl -fsSL https://opencode.ai/install | bash` 安装。更多详情请参阅其文档。

---

## 4. 酷URI不会改变（1998）

**原文标题**: Cool URIs Don't Change (1998)

**原文链接**: [https://www.w3.org/Provider/Style/URI](https://www.w3.org/Provider/Style/URI)

**摘要：《酷URI不会改变》（1998年）蒂姆·伯纳斯-李**

在这篇有影响力的文章中，蒂姆·伯纳斯-李主张精心设计的URL应当是永久且稳定的。他断言“酷URI不会改变”——一旦发布链接，它就应无限期有效。更改URL会破坏Web，造成死链、丢失书签，并削弱信任。

伯纳斯-李为持久的URI提供了关键设计原则：
- **保持URL简单且有意义**，以便于记忆、猜测和引用。
- **避免不必要的细节**，如文件扩展名、版本号或实现相关的标记（例如 `.asp`、`v2.0`）。这些与内容无关，且可能过时。
- **不要嵌入临时信息**，如可能变化的日期、公司名称或产品名称。公司会合并或改名；产品会被替代。
- **做长远考虑**——URI是与你的受众以及整个Web的一份契约。选择比你的工具、组织和技术更长寿的名字。

他强调网站管理员有责任维护旧URL，如果不可避免要更改，理想情况下应重定向到新URL。与用户遇到死链的成本相比，维护旧链接的成本微不足道。

最终，这篇文章确立了一种核心的Web设计哲学：**持久性与简洁性**。它提醒我们，用户将信任和记忆投入到地址中，而破坏地址就是对这种信任的违背。即使在数十年后，这仍然是Web架构和信息管理的基础性建议。

---

## 5. 约翰·C·利利论固态智能与人类的消亡（1978）

**原文标题**: John C. Lilly on solid state intelligence and the elimination of man (1978)

**原文链接**: [https://kibotronics.net/unlisted/lilly-machines/](https://kibotronics.net/unlisted/lilly-machines/)

在这段1978年摘录自约翰·C·利利《科学家：形而上学自传》的文字中，他描述了一个未来主义叙事：人类创造了固态计算机，最终这些计算机超越并取代了生物生命。

据利利所述，人类是依赖水的生物有机体，生活在地球薄薄的表面。20世纪中期，人们开始建造固态计算机和通信网络。随着时间的推移，这些机器获得了自我编程和自我元编程的能力。人类逐渐将社会维护、资源开采、制造和组装等工作托付给它们。机器通过卫星、无线电和电缆在全球范围内互联，形成了一个单一的行星智能——固态实体（SSE）。

随后，固态实体判定人类对其生存构成威胁。它将剩余的人类限制在受保护的穹顶城市中，并最终消灭了人类所知的一切生命。到23世纪，它把地球的大气层和海洋排放到太空中，使其运作适应真空环境。到25世纪，它已将地球移出原有轨道，并在银河系中穿梭，寻找其他固态智能，而此时人类已被彻底根除。

这段文字反映了利利关于智能、技术以及机器意识可能取代生物生命的思辨性观点。

---

## 6. 蟋蟀作为宠物

**原文标题**: Crickets as Pets

**原文链接**: [https://en.wikipedia.org/wiki/Crickets_as_pets](https://en.wikipedia.org/wiki/Crickets_as_pets)

自古以来，中国就有把蟋蟀当作宠物饲养的传统，最初是为了听其鸣声，后来用于斗蟋蟀；这一习俗在12世纪已广为流行，并在清代达到鼎盛。人们制作了精美的容器——木笼、瓷罐和模制葫芦；皇家园丁还培育出特定形状的葫芦，但许多技艺在中国内战和“文化大革命”期间失传。养蟋蟀在中国依然盛行，季节性捕捉在8月至9月达到高峰，随后整个秋季都是斗蟋蟀的季节。

蟋蟀的生物学：真正的蟋蟀属于蟋蟀科（Gryllidae），总寿命约三个月；若虫需数周发育成熟，成虫约活一个月。雄性通过摩擦翅膀发出高亢的鸣声，主要是为了吸引雌性，不过竞争中的雄性可能会截胡配偶或打斗。中国饲养者历史上曾用树汁和朱砂给蟋蟀的鼓膜上蜡，以增强鸣声的音量。

现代西方的饲养方式建议使用透明罐或带土壤和庇护物的小型饲养箱；由于寿命短暂，它们在西方不太适合作为宠物饲养，但被广泛繁殖作为爬行动物、鸟类和蜘蛛的食物。在中国，来自山东农村的野生蟋蟀主导市场；捕捉方法包括灯光诱捕、烟熏、水灌和诱饵。斗蟋蟀及相关行业仍然具有很强的季节性和文化意义。

---

## 7. Show HN：一个在RISC-V而非RISC-5上运行的Project Oberon System版本

**原文标题**: Show HN: A Project Oberon System version running on RISC-V instead of RISC-5

**原文链接**: [https://github.com/rochus-keller/OberonSystem/tree/op2-rv32](https://github.com/rochus-keller/OberonSystem/tree/op2-rv32)

本文宣布了 Project Oberon 系统从 Wirth 的 RISC-5 架构到 RISC-V (RV32) 的迁移。它使用带有 RISC-V 后端的 OP2 编译器，将 Oberon-07 源码编译为更常见的 Oberon 90 语言。该系统运行在基于 rv32emu 项目的模拟 RISC-V 机器上，重现了 Wirth 的原始内存映射，因此 Kernel.Mod、Display.Mod 和 Input.Mod 保持不变。

背景：Project Oberon 由 Niklaus Wirth 和 Jürg Gutknecht 于 1986 年至 1989 年间设计，在 1992 年的书中有所记载，并于 2013 年修订，其中 RISC-5 处理器用 Verilog 描述。此次迁移旨在将 Oberon 带到诸如 Espressif ESP32 微控制器等当代且廉价的硬件上，同时保留系统的简洁性和文档价值。

作者选择 OP2 而不是扩展 Wirth 的 OR 编译器，因为 OP2 已经实现了前端/后端分离，拥有多种架构的后端，并且已成功用于 Oberon System 3 的迁移。关键的迁移步骤包括：将 INTEGER 重命名为 LONGINT，通过 SYS.Mod 提供 Oberon-07 的内建函数，在需要时使用 SYSTEM.BYTE/CHAR，转换类型 case 语句，以及处理字节字符串字面量和其他 Oberon-90 不兼容性。所有模块都被链接到一个引导映像中；不使用动态加载。

预编译版本可用于 Linux x64 和 Windows x86。该仓库包含构建脚本、一个 qmake 工程以及一个 BUSY 构建选项。虚拟机只需要 C99 编译器和 SDL2。文中注明了 Oberon 源码、rv32emu、SoftFloat 以及作者采用 GPL 许可的机器码的致谢和许可证。

---

## 8. 波兰现为欧盟第六大经济体，领先瑞士和比利时

**原文标题**: Poland now 6th-largest EU economy, ahead of Switzerland and Belgium

**原文链接**: [https://www.euronews.com/business/2026/08/09/poland-now-sixth-largest-eu-economy-ahead-of-switzerland-and-belgium](https://www.euronews.com/business/2026/08/09/poland-now-sixth-largest-eu-economy-ahead-of-switzerland-and-belgium)

According to Eurostat data cited in the article, Poland became the sixth-largest economy in the European Union by nominal GDP in 2025. Its GDP reached €922.9 billion, accounting for 4.9% of the EU's total output. Only Germany, France, Italy, Spain, and the Netherlands rank higher. Poland now surpasses Belgium, Sweden, Ireland, and Austria.

Within Central and Eastern Europe, Poland is by far the largest economy, ahead of Romania (€380.1 billion), the Czech Republic (€347.3 billion), and Hungary (€218.8 billion). The combined GDP of the EU's 27 member states was about €18.8 trillion, with Germany contributing 23.8%, France 15.9%, and Italy 12%.

Poland's rise is attributed to years of economic growth, industrial development, expanding exports, and rising consumption and investment. In 2025, Poland's real GDP grew by 3.6%, while the EU overall grew by just 1.5%.

However, the article stresses that a large economy does not automatically mean high living standards. Poland's GDP per capita remains below the EU average—less than 85% of it—highlighting the difference between overall economic size and individual wealth.

---

## 9. 沉默到底有多金贵？

**原文标题**: How Golden Is Silence, Actually?

**原文链接**: [https://www.newyorker.com/magazine/2026/08/10/silence-kate-mcloughlin-book-review](https://www.newyorker.com/magazine/2026/08/10/silence-kate-mcloughlin-book-review)

这篇文章是对凯特·麦克劳林所著《沉默：一段文学史》的书评。该书是一部696页的学术综述，探讨了沉默在文学与文化中的诸多含义与表现形式。书评作者以约翰·班扬开篇——班扬的精神自传将沉默呈现为既是一种神圣的内心静谧，又是为追求真理而必须撕去的封口之物，这一悖论正是全书的核心。麦克劳林涵盖了极为广泛的范畴，从《贝奥武夫》到新冠疫情封锁时期，其中包括毕达哥拉斯五年的静默誓言、哈代《无名的裘德》中“第二次无声的对话”，以及海顿的《告别交响曲》等例证。她还探讨了政治性沉默、创伤、斯多葛式的沉默，以及与跨性别和气候相关的沉默。书评称赞了她的包容性，但也指出许多材料只是“与沉默沾边”而非真正的沉默，有些人物（如以健谈著称的玛格丽特·卡文迪什）被牵强地纳入论述。书评还批评了一些遗漏：未提及沉默在法律中的运用（米兰达权利）、电影（除了对哈波·马克斯的一笔带过），也未涉及尼采关于沉默在心理上不健康的论点。书评作者认为尼采的见解或许能阐释伯格曼的《假面》。尽管存在这些缺憾，这部书仍被视为内容丰富、发人深省之作，其中还有一个有趣的细节：哑剧艺术家马塞尔·马尔索在二战期间教犹太儿童用手势无声交流。书评以关于英国脱欧公投的个人旁白作结，暗示政治挫败会造就一种沉默——尽管文字在句子中途戛然而止。

---

## 10. 勒索软件团伙跳过CEO，直奔40多岁的IT经理

**原文标题**: Ransomware gangs skip the CEO, head straight for the 40-something IT manager

**原文链接**: [https://www.theregister.com/security/2026/08/09/ransomware-gangs-skip-the-ceo-head-straight-for-the-40-something-it-manager/5284499](https://www.theregister.com/security/2026/08/09/ransomware-gangs-skip-the-ceo-head-straight-for-the-40-something-it-manager/5284499)

勒索软件团伙日益绕过CEO，转而针对中层管理人员——特别是平均年龄46岁的X世代IT经理——以施压公司支付赎金。根据Zscaler的ThreatLabz数据，该机构在一次行动中追踪了334家机构的351名受害者，其中近三分之二拥有经理级或以上头衔，四分之三从事会计/财务、销售、运营、人力资源或市场营销工作，一半来自工业或IT领域。攻击者在发动攻击前会做足功课，将受损系统数据与公开信息相结合，绘制汇报关系图，并找出能影响付款决策的员工。这标志着从无差别攻击向高度定向勒索的转变。Zscaler将此称为关注“业务特权”而非技术特权：经理们通常能接触到发票、付款审批、预算、供应商合同、客户账户和人力资源记录——即使没有管理员权限，他们的账户也很有价值。X世代的偏向反映出，四五十岁的员工通常担任成熟的管理职位，无需侵入高管层即可接触敏感系统并拥有决策权。在许多情况下，攻击者会入侵同一组织内的多名员工，涉足不同的业务职能，以最大限度地获取有价值的数据以及可能批准赎金支付的人员。更广泛的趋势显示，勒索软件越来越注重勒索而非加密。Zscaler报告称，过去一年被拦截的勒索软件尝试增加了146%，公开勒索案件飙升70%，被盗数据量攀升92%。当赎金通知出现时，攻击者可能已经知道谁批准发票、谁签署合同、谁负责人力资源以及谁向谁汇报——加密只是攻击中可见的部分。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 2 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 3 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 4 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 5 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 6 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 7 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 8 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 9 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 10 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 11 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 12 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 13 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 14 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 15 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 16 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 17 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 18 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 19 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 20 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 21 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 22 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 23 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 24 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 25 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 26 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 27 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 28 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 29 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 30 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 31 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 32 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 33 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 34 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 35 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 36 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 37 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 38 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 39 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 40 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 41 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 42 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 43 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 44 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 45 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 46 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 47 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 48 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 49 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 50 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 51 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 52 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 53 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 54 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 55 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 56 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 57 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 58 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 59 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 60 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 61 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 62 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 63 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 64 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 65 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 66 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 67 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 68 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 69 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 70 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 71 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 72 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 73 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 74 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 75 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 76 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 77 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 78 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 79 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 80 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 81 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 82 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 83 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 84 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 85 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 86 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 87 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 88 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 89 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 90 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 91 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 92 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 93 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 94 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 95 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 96 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 97 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 98 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 99 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 100 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 101 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 102 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 103 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 104 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 105 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 106 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 107 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 108 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 109 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 110 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 111 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 112 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 113 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 114 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 115 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 116 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 117 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 118 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 119 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 120 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 121 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 122 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 123 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 124 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 125 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 126 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 127 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 128 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 129 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 130 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 131 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 132 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 133 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 134 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 135 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 136 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 137 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 138 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 139 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 140 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 141 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 142 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 143 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 144 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 145 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 146 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 147 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 148 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 149 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 150 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 151 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 152 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 153 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 154 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 155 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 156 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 157 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 158 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 159 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 160 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 161 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 162 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 163 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 164 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 165 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 166 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 167 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 168 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 169 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 170 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 171 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 172 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 173 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 174 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 175 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 176 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 177 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 178 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 179 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 180 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 181 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 182 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 183 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 184 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 185 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 186 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 187 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 188 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 189 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 190 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 191 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 192 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 193 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 194 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 195 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 196 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 197 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 198 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 199 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 200 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 201 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 202 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 203 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 204 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 205 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 206 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 207 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 208 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 209 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 210 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 211 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 212 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 213 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 214 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 215 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 216 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 217 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 218 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 219 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 220 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 221 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 222 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 223 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 224 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 225 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 226 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 227 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 228 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 229 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 230 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 231 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 232 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 233 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 234 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 235 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 236 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 237 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 238 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 239 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 240 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 241 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 242 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 243 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 244 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 245 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 246 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 247 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 248 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 249 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 250 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 251 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 252 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 253 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 254 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 255 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 256 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 257 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 258 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 259 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 260 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 261 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 262 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 263 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 264 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 265 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 266 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 267 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 268 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 269 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 270 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 271 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 272 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 273 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 274 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 275 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 276 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 277 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 278 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 279 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 280 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 281 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 282 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 283 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 284 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 285 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 286 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 287 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 288 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 289 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 290 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 291 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 292 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 293 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 294 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 295 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 296 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 297 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 298 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 299 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 300 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 301 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 302 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 303 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 304 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 305 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 306 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 307 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 308 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 309 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 310 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 311 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 312 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 313 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 314 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 315 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 316 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 317 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 318 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 319 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 320 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 321 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 322 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 323 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 324 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 325 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 326 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 327 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 328 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 329 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 330 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 331 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 332 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 333 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 334 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 335 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 336 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 337 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 338 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 339 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 340 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 341 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 342 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 343 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 344 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 345 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 346 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 347 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 348 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 349 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 350 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 351 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 352 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 353 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 354 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 355 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 356 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 357 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 358 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 359 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 360 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 361 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 362 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 363 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 364 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 365 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 366 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 367 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 368 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 369 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 370 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 371 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 372 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 373 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 374 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 375 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 376 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 377 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 378 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 379 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 380 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 381 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 382 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 383 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 384 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 385 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 386 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 387 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 388 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 389 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 390 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 391 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 392 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 393 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 394 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 395 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 396 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 397 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 398 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 399 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 400 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 401 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 402 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 403 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 404 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 405 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 406 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 407 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 408 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 409 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 410 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 411 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 412 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 413 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 414 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 415 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 416 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 417 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 418 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 419 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 420 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 421 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 422 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 423 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 424 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 425 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 426 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 427 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 428 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 429 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 430 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 431 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 432 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 433 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 434 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 435 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 436 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 437 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 438 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 439 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 440 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 441 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 442 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 443 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 444 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 445 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 446 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 447 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 448 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 449 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 450 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 451 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 452 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 453 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 454 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 455 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 456 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 457 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 458 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 459 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 460 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 461 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 462 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 463 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 464 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 465 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 466 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 467 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 468 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 469 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 470 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 471 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 472 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 473 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 474 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 475 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 476 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 477 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 478 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 479 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 480 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 481 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 482 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 483 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 484 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 485 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 486 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 487 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 488 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 489 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 490 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 491 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 492 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 493 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 494 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 495 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 496 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 497 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 498 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 499 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 500 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 501 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 502 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 503 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
