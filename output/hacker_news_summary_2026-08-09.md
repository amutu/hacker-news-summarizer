# Hacker News 热门文章摘要 (2026-08-09)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 说不

**原文标题**: Saying No

**原文链接**: [https://rozumem.xyz/posts/19](https://rozumem.xyz/posts/19)

文章《说“不”》讲述了作者逐渐学会更坦然拒绝请求的历程，灵感来自彼得·布洛克在《教练习惯》中的一句引语。布洛克将成年人之间的关系定义为：你可以提出自己的需求，接受对方可能回答“不”，并协商双方的分歧。

作者解释说，如今听到“不”已经很容易，但说出“不”仍然很困难，尤其是在存在冲突时。这点通过咖啡店里反复出现的一次争执得以体现。作者在咖啡店租用的楼上房间里练习瑜伽，时间是早上6点到8点30分。练习期间空调会关掉，因为凉爽的空气会抑制自然出汗和肌肉放松，但8点30分前到达的办公室职员会打开空调。作者起初请他们关掉，最终协商出一个折中方案：只有直吹瑜伽室的空调必须保持关闭。

后来，作者到达时发现两台空调整夜都开着，控制面板上贴着便条，写着“不要关闭空调”。尽管内心有个声音催促他服从以避免冲突，作者还是选择无视它，关掉了空调。这导致一位权威人物打来电话，要求重新打开空调，并援引压缩机成本等模糊理由。作者拒绝了，称房间无法用于瑜伽，而且租金已经付过。权威人物最终威胁要终止合同，作者回答“太好了”，然后挂了电话。

文章总结道，许多人由于成长环境或个性原因，从未考虑过“不”这个选项，而自动驾驶式的习惯倾向于选择阻力最小的路径。布洛克的话提醒我们，在成年人之间，“不”永远是一个选项，双方都应预期并准备好进行协商。作者鼓励读者暂停一下，多考虑说“不”。

---

## 12. 每一次快速写入都会将工作转移到其他地方

**原文标题**: Every fast write moves work somewhere else

**原文链接**: [https://www.shayon.dev/post/2026/220/every-fast-write-moves-work-somewhere-else/](https://www.shayon.dev/post/2026/220/every-fast-write-moves-work-somewhere-else/)

这篇文章探讨了存储系统在确认一次写入完成之前必须完成哪些操作，表明写入延迟与持久性是同步变化的。

- 将字节复制到内存后即返回，速度快，但崩溃时会丢失数据。
- 等待主机本地 NVMe SSD 上的 `fdatasync()` 完成，可以抵御进程/内核崩溃，但无法应对 SSD 或主机丢失。
- 持久化网络卷或对象存储将副本移到主机之外，增加了网络耗时，但能抵御主机丢失。
- 跨多台服务器的复制式 WAL 可以抵御单台服务器故障，代价是网络传输和第二次磁盘同步。

作者强调，同一个 API 名称——`fdatasync()`——可能隐藏截然不同的确认点：本地设备、远程卷或复制系统。如果不清楚已确认的副本能抵御何种故障，NVMe 延迟数据就毫无意义。

对于基于对象存储的数据库，本地 WAL 可以让写入很快，但最近已确认的写入可能只存在于单台主机上。系统可以选择本地同步后立即返回、稍后再上传，但这会带来一段丢失窗口；也可以要求成功前先完成对象 PUT，从而增加远程延迟。批处理可以减少对象请求次数，但会增加首批写入的等待时间，以及失败时需要重传的字节量。

总而言之，关键在于：一个非常快的写入数字，只有在你了解以下问题后才有意义——是哪项操作承担了成本、成功之后仍可能丢失什么、以及系统能容忍多大的清理工作量。

---

## 13. 如果经验是目标，那么你总是赢家

**原文标题**: If experience is the goal, then you always win

**原文链接**: [https://www.startingfromnix.com/p/if-experience-is-the-goal-then-you](https://www.startingfromnix.com/p/if-experience-is-the-goal-then-you)

这篇文章认为，将体验本身视为目标，能够实现持续不断的自我重塑和无畏的创造力。文章开篇提出一个观点：那些迅速颠覆生活的人，将体验视为天然具有价值的东西——如果体验本身就是目标，那么无论发生什么，你都是赢家。

作者通过三个例子阐述这一观点：

1. **迈尔斯·戴维斯** —— 戴维斯在爵士乐的各个流派（比波普、冷爵士、调式爵士）中不断重塑自己的音乐，拒绝演奏旧风格，宁愿失去乐迷也不愿停滞不前。他的哲学是：“倾听下一个声音”，而非固守某种固定的身份。

2. **利希滕贝格的《杂记本》** —— 这位物理学家保留着凌乱的笔记本（“杂记本”），用于记录原始的观察，之后再提炼成有条理的作品。作者将其与创作实践联系起来：大多数产出都是“废料”，但这些废料恰恰构建了未来工作所需的思维和能力。她提到自己为一篇文章花了40个小时做采访，最终只用了不到5%的材料——但这仍然是值得的。

3. **凯特·霍尔的《你尽管去做》** —— 这是一本关于主动性的实用指南。霍尔建议人们拥抱“低地位的护城河”（在学习过程中看起来笨拙或不够熟练），并将主动性定义为机会主义：注意到岔路，追随它们，并敢于尝试。

作者最后做出了个人的承诺：追随岔路，保持准备，不要害怕下一个声音或已逝去的时间。整篇文章将这些理念交织在一起，倡导一种将重塑与体验置于固定身份、舒适甚至外在成功之上的生活。

---

## 14. 任意阶幻六边形均存在

**原文标题**: There Are Magic Hexagons of Every Order

**原文链接**: [https://gukov.dev/math/2026/08/02/new-magic-hexagons.html](https://gukov.dev/math/2026/08/02/new-magic-hexagons.html)

这篇文章描述了一个项目，它始于一个3阶唯一正规幻六边形——包含19个格子——并以对每个大于3的阶数的非正规幻六边形的构造性证明告终。正规幻六边形要求从1开始的连续数字；唯一非平凡的情形是3阶。通过放宽起始值，非正规幻六边形允许新的解；此前已知最大的为9阶。

作者引入了两个关键思想：限制在反对称六边形上，其中围绕中心0的相对单元格之和为零；以及将每个零和六边形表示为局部交替六格环的组合，称为势场。这使得所有直线和约束自动满足，并缩小了搜索空间。借助GPT-5.6 Sol，作者构建了一个专门的模拟退火求解器，并发现了直到21阶的反对称幻六边形。

随后，AI帮助证明了一个通用构造，将已证明的阈值从800降至114。结合较小阶数的计算见证，该结果覆盖了所有阶数n > 3。该证明是构造性的，但尚未在Lean中形式化。作者反思了AI作为数学合作者的角色：它极具创造力，但容易陷入视野狭窄，因此人工监督和验证仍然至关重要。势场表示在视觉上具有启发性，但并非最终证明的核心。文章总结道，AI生成的数学增加了机器可验证证明系统的重要性。

---

## 15. 人机对抗——智能体编辑下基于差异的行级文本溯源

**原文标题**: Human vs. AI – Diff-based line-level provenance for text under agentic editing

**原文链接**: [https://github.com/eighttrigrams/us-vs-them](https://github.com/eighttrigrams/us-vs-them)

本文介绍 **Us vs. Them**，一个库/CLI 工具，为智能体编辑下的文本提供行级溯源，回答每一行是由人类还是 AI 智能体编写的。

**问题：** 在智能体编程和编辑中，人类编写的文本应被视为近乎神圣的，而智能体生成的“废料”可以自由更改。该工具有助于保护代码库中人类定义的角落或 README 等文件中被重写的部分，免遭未来智能体的覆盖。

**方法：** 它无需特殊标记即可工作，并支持 Markdown 等纯文本。它利用版本历史，其中每个修订都有可识别的作者（人类或智能体）。通过简单的 diff，它评估文本并输出范围——机器生成文本的“海洋”中人类编写行的“岛屿”。该算法考虑了作者身份的合并、拆分和稀释，避免出现全海或全岛的极端结果。

**用法：** 通过 `bbin` 使用 `make install` 安装。在 git 仓库内运行，例如：
`us-vs-them --ours dan@eighttrigrams.net README.md`
输出是行范围的列表，分数从 0.00（完全由智能体编写）到 1.00（完全由人类编写）。参数：
- `--ours`：指定人类作者；其他所有作者均为智能体。
- `--theirs`：指定智能体；其他所有作者均为人类。
一次只能传递其中一个；同时传递两者将被拒绝。

**开发：** 可以使用 `make test` 运行测试；行为记录在 `caution_test.clj` 中。

---

## 16. FCC拟禁止配备激光雷达的外国无人机进入美国

**原文标题**: FCC moves to ban Lidar-equipped foreign drones from US

**原文链接**: [https://www.tomshardware.com/tech-industry/drones/fcc-moves-to-ban-lidar-equipped-foreign-drones-from-us-classifies-the-technology-as-military-grade-in-a-proposal-that-could-also-hit-thermal-models-and-the-swarms-used-drone-light-shows](https://www.tomshardware.com/tech-industry/drones/fcc-moves-to-ban-lidar-equipped-foreign-drones-from-us-classifies-the-technology-as-military-grade-in-a-proposal-that-could-also-hit-thermal-models-and-the-swarms-used-drone-light-shows)

美国联邦通信委员会（FCC）已提议禁止进口和销售含有激光雷达（LiDAR）传感器的外国制造无人机，并将该技术归类为“军用级”。此举基于2025年12月的一项禁令，该禁令将所有外国无人机列入该机构的“受限清单”，但仅限制新型号。新提案（DA 26-758）旨在追溯撤销先前已批准型号的销售许可，针对那些配备激光雷达及其他被视为军用级功能的无人机，如热传感器、农业喷洒器、坞站或蜂群能力。大疆（DJI）的Air 3S和Mini 5 Pro等热门消费级无人机将受到影响。现有所有者可以继续飞行他们的无人机，但随着时间的推移，可能面临获取备件的困难。FCC将此举动定性为国家安全问题，援引行政部门的“不可接受风险”认定。该机构估计经济影响极小，同时指出自最初禁令以来，Skydio等国内制造商已筹集数十亿美元。大疆辩称该分类属于类别错误，强调激光雷达是安全功能而非武器，并已就早前禁令起诉FCC。该提案公开征求意见至2026年9月2日，若最终通过，禁令将在采纳后约180天生效。不在受限清单上的美国制造无人机不受影响。

---

## 17. 美国后院开始涌现插电式太阳能板

**原文标题**: Plug-In Solar Panels Starting to Sprout in U.S. Backyards

**原文链接**: [https://www.nytimes.com/2026/07/31/business/energy-environment/plug-in-balcony-solar.html](https://www.nytimes.com/2026/07/31/business/energy-environment/plug-in-balcony-solar.html)

无法访问文章链接。

---

## 18. Microsoft Word for Windows 1.1a，原生X64移植版

**原文标题**: Microsoft Word for Windows 1.1a, Native X64 Port

**原文链接**: [https://github.com/jmarshall23/msword](https://github.com/jmarshall23/msword)

这篇文章介绍了一个项目，将原版 Microsoft Word for Windows 1.1a（“Opus”）移植为原生 64 位 Windows 可执行程序。它不是模拟器，也不是现代编辑器的重新实现；原始 Word 源代码和资源通过自定义的 x64 兼容层编译。

**

**构建/运行：** 克隆仓库，使用 CMake 预设（`x64-debug` 或 `x64-release`），构建并运行 `WORD1.exe`。生成的 Visual Studio 解决方案也可用。

**测试：** 运行 `ctest --test-dir .\out -C Debug --output-on-failure`（或 Release）。测试覆盖移植的运行时、数据结构、命令表、启动以及自动化 UI 工作流。

**项目结构：** `src/Opus` 包含原始应用程序源代码/资源；`src/port/original` 包含 x64 兼容层和翻译后的例程；`src/port/tools` 包含历史构建工具的替代品；还描述了 CMake 辅助工具和生成的输出目录（`out`、`build`、`bin`）。

**工作原理：** 该移植将 16 位汇编入口点转换为 C/C++，将分段内存句柄映射到 x64 安全运行时，将 Win16 API 适配为 Win32，并使用原生工具重建原始资源。旧汇编代码保留作为参考，但不参与编译。

**有用的目标：** `WORD1`（可执行文件）、`opus_original_engine`、`opus_x64_runtime`、`opus_word1_ui_test` 和 `legacy_sources`。

**贡献指南：** 保持原始行为，确保接口指针宽度安全，优先采用源代码等效的翻译，并添加测试。

**版权：** 历史文件保留原始版权声明；目前未包含顶级许可证。

---

## 19. 分析硅谷风投企业及因欺诈被起诉创始人的数据

**原文标题**: Analyzing data from Silicon Valley ventures and founders prosecuted for fraud

**原文链接**: [https://pubsonline.informs.org/doi/full/10.1287/orsc.2024.19981](https://pubsonline.informs.org/doi/full/10.1287/orsc.2024.19981)

无法访问文章链接。

---

## 20. 零依赖、超轻量的 SQLite 数据库时间机器

**原文标题**: A zero-dependency, ultra-lightweight database time machine for SQLite

**原文链接**: [https://github.com/nsrht/time-travel-sqlite-debugger](https://github.com/nsrht/time-travel-sqlite-debugger)

本文介绍了一款开源、零依赖的SQLite调试工具，名为“Time-Travel SQLite Debugger”（数据库时间机器）。它使用纯PHP 8+和原生JavaScript构建，不需要任何框架或npm包。它就像一个数据库的视频拖拽条，让开发者可以立即将损坏或修改过的SQLite文件回退到之前的任意状态（例如三分钟前）。

主要特性包括：
- **WAL模式感知**：无缝备份/恢复`.sqlite-wal`和`.sqlite-shm`文件。
- **可视化差异查看器**：比较快照与实时数据库之间的行数和表变更。
- **快照固定和标记**：保护重要快照免于被清理。
- **一键导出**：将任意历史状态下载为`.sqlite`文件。
- **键盘导航**：使用方向键在时间线上移动。
- **自动快照**：后台CLI守护进程（`watcher.php`）检测变更并创建带时间戳的备份。
- **自动清理**：最多保留50个备份，清除较旧的未固定备份。
- **完整的国际化支持**：语言文件以JSON格式存储在`lang/`目录，可从界面动态切换；包含英语和土耳其语。

项目结构包括：`index.html`（用户界面）、`api.php`（后端API）、`watcher.php`（守护进程）、`lang.php`（国际化辅助工具），以及目标数据库和`backups/`目录。

使用方法：启动守护进程（`php watcher.php database.sqlite en`），运行本地服务器（`php -S 127.0.0.1:8000`），然后打开Web界面。通过添加数据、观察快照创建、进行差异比较和恢复来测试。

该项目采用MIT许可证，开源，并包含英语和土耳其语文档。在Linux/Unix上，应使用`chmod -R 775 .`设置文件权限。

---

## 21. 汤姆·斯坦顿的超音速投石机仅凭重力突破音障

**原文标题**: Tom Stanton's supersonic trebuchet breaks sound barrier with gravity alone

**原文链接**: [https://www.techeblog.com/tom-stanton-supersonic-trebuchet/](https://www.techeblog.com/tom-stanton-supersonic-trebuchet/)

汤姆·斯坦顿建造了一台纯重力驱动的投石机，成功突破了音障，将一颗4克的弹丸以776英里/小时的速度发射出去——比1马赫快了约9英里/小时。这一成就完全依靠重力实现，一个40公斤的配重从1.9米高处落下。

关键的工程创新包括一个带有锥形直径的3:1滑轮/滚筒系统，初始时提供高扭矩，随后提升旋转速度。碳纤维投掷臂仅重116克，采用CNC铣削加工，并在原型因吊索压力而失效后重新设计，增加了额外的支撑结构。弹簧驱动的机械释放装置能在几毫秒内打开，精确控制吊索的抛射时机。

测试从10公斤配重逐步推进到40公斤。在10公斤时，弹丸速度达到394英里/小时，效率为43.7%。在40公斤时，速度达到716英里/小时，距音障仅一步之遥，随后机器在尝试50公斤配重时损坏。斯坦顿随后调整了滚筒的锥度，并将弹丸重量减少到约4克。在最终测试中，投掷臂旋转达到2，342转/分钟，末端速度达到274英里/小时，高速摄影显示弹丸在5.6毫秒内飞过1.94米——相当于346.4米/秒，即776英里/小时。响亮的爆裂声和回声证实了音爆，标志着纯重力驱动的投石机首次达到超音速。

---

## 22. HRT反例的部分消化

**原文标题**: A partial digestion of the HRT counterexample

**原文链接**: [https://terrytao.wordpress.com/2026/08/06/a-partial-digestion-of-the-hrt-counterexample/](https://terrytao.wordpress.com/2026/08/06/a-partial-digestion-of-the-hrt-counterexample/)

根据标题，Ben Eastaugh 和 Chris Sternal-Johnson 的这篇文章是对 **HRT 猜想**——即时频/伽柏分析中的 **Heil–Ramanathan–Topiwala 猜想**——的一个反例所作的通俗讨论。该猜想认为，任意有限个非零平方可积函数的不同时频平移都应当是线性无关的。

作者“解读”了该猜想的一个反例，解释如何构造一个非零函数，使得其有限个时频平移是线性相关的。他们将该结果置于相关背景中，讨论其对伽柏系统和调和分析的意义，并将其叙述定位为一种部分、非技术性的讲解，而非完整的证明阐述。

由于未包含文章正文，本摘要概括了主要主题和可能重点，而非帖子的具体示例和论证。

---

## 23. Show HN：一个可重放的A2A评审团，用于追踪智能体如何影响决策

**原文标题**: Show HN: A replayable A2A jury for tracing how agents influence decisions

**原文链接**: [https://github.com/nMaroulis/protolink/tree/main/examples/ai_courtroom](https://github.com/nMaroulis/protolink/tree/main/examples/ai_courtroom)

本文介绍**AI责任法庭（AI Liability Tribunal）**，这是一个ProtoLink展示项目，旨在让自主智能体之间的通信变得可观测。它模拟了一个虚构的法律案件：Aster Vale Mobility公司因一辆机器人出租车撞死骑行者Lina Ortega，被指控构成刑事过失部署。其目的不在于案件本身，而在于展示智能体交互、角色和通信拓扑如何影响决策。

该系统包含多个不同的法庭角色——法官、律师、工程师、监管人员和陪审团——每个角色都有明确的性格和激励设定，此外还有五位具有不同专业视角的陪审员。系统设有四种决策条件：

- **solo（独立裁决）**：一位公民通才独自决策
- **independent（独立投票）**：五位陪审员在没有同伴消息的情况下投票
- **star（星型通信）**：所有消息都通过陪审团主席Sofia Bell转发
- **mesh（网状通信）**：每位陪审员都可以向其他任何人发送消息

默认的确定性离线运行表明，网状通信通过一条特定消息改变了裁决结果：主席Bell质疑陪审员Anika Rao，从而改变了她的概率判断和投票。星型通信也提高了有罪评分，但并未改变2–3的裁决结果。这说明*谁可以联系谁*比消息数量更为重要。

该工具强调可复现性：它保存配置、哈希值、控制指纹、公开记录、JSON结果和交互式HTML报告。它支持实时提供方（OpenAI、Anthropic、Gemini、Ollama以及兼容OpenAI的接口），并为解析和应用验证分别设置了重试控制。为了进行干净的对比，用户可以让法庭角色保持确定性，仅更换陪审员模型。文章建议不要将结果视为通用智能指标，并强调案例研究框架、配对运行和失败报告。

报告避免暴露思维链，并将公开的有罪概率与隐藏的模型信念明确分开。总体而言，该产品是一个可回放、可观测的A2A框架，用于研究智能体通信如何塑造决策。

---

## 24. UnYOLO：你的GitHub账户的智能体凭据代理与策略引擎

**原文标题**: UnYOLO: Agent credential broker and policy engine for your GitHub account

**原文链接**: [https://unyolo.io/](https://unyolo.io/)

unYOLO 是一个用于构建凭证代理的框架，使 AI 智能体永远不会持有真实的提供方凭证。相反，智能体与代理通信，由代理持有实际令牌并应用细粒度的、本地定义的策略。这能遏制错误：未经授权的强制推送或仓库访问在到达 GitHub 之前就被拒绝。

请求路径在各个代理中保持一致：客户端认证 → 请求分类 → 策略评估 → 活动授权/人工审批 → 提供方执行 → 审计记录。决策顺序是固定的：**拒绝 > 活动授权 > 允许 > 请求 > 无匹配**，未匹配的请求将被拒绝。

策略存放在 JSON 规则文件中，包含 `allow`（允许）、`request`（请求）和 `deny`（拒绝）效果。规则指定客户端、操作、目标和属性，如 `refs/heads/agent-a/**`；未知字段或无效的通配符模式会阻止启动。审批可以设置时间限制和单次使用限制，通过受保护的操作员收件箱或 Telegram 进行管理。

内置代理：
- **gh-broker**：持有 GitHub App 凭证，并签发短期的、仓库范围的安装令牌。
- **hf-broker**：持有 Hugging Face 令牌，并在转发前解析 Git/LFS 推送。
- **sudo-broker**：从根用户拥有的目录中运行已批准的 Unix 命令。

可以使用共享的策略/审批框架构建自定义代理，同时实现特定于提供方的分类器和执行器。该架构防止共享代码导入提供方。GitHub 快速入门演示了允许分支推送同时拒绝强制推送到 main 分支的操作。

---

## 25. 使用Wails进行交叉编译（2025）

**原文标题**: Cross-compilation with Wails (2025)

**原文链接**: [https://chriswheeler.dev/posts/cross-compilation-with-wails/](https://chriswheeler.dev/posts/cross-compilation-with-wails/)

本文记录了作者于2025年在Ubuntu 24（Go 1.25.5）上，使用官方Svelte模板对Wails v2.11.0进行交叉编译的测试结果。主要发现如下：

- 运行`wails build -clean -nsis -platform 'linux/amd64,windows/amd64,windows/arm64,windows/386'`成功生成了Windows可执行文件/安装程序以及Linux可执行文件。macOS无法交叉编译，因为Apple对此进行了限制；Wails会跳过darwin并给出警告。
- `ldd`显示Windows二进制文件为静态链接，而Linux二进制文件则动态链接到glibc、GTK、WebKit2等库。使用`-extldflags "-static"`强制静态链接会因glibc相关的链接器错误而失败。
- 从linux/amd64交叉编译到linux/arm64会失败，出现GCC汇编器错误（`gcc_arm64.S`），即使尝试较旧版本的Go也是如此。未找到任何解决办法。
- 官方的Wails示例GitHub Action（使用`dAppServer/wails-build-action`）在包含darwin/universal时因`ditto`路径错误而失败。已通过被忽略的PR提交了修复；该项目还带有copyleft许可证和LLM编写的文档。
- GoReleaser集成在本地快照中失败，报错`fork/exec /tmp/wailsbindings: no such file or directory`；而在GitHub Actions中则出现不同的错误`pattern all:frontend/dist: no matching files found`。未发现明显的解决办法。

结论：Wails的交叉编译对Windows和Linux amd64表现良好，但Linux/arm64和macOS仍不受支持，且第三方发布工具（GoReleaser）目前存在尚未解决的问题。

---

## 26. Show HN：将今日城市置于地球构造的过去与未来球体上

**原文标题**: Show HN: Today's cities on a globe of Earth's tectonic past and future

**原文链接**: [https://douwe.com/projects/tectonic_globe](https://douwe.com/projects/tectonic_globe)

这是一个交互式网络可视化工具，将当今的国家和城市映射到一个展示地球构造过去与未来的球体上。它使用 Merdith 2021 板块模型，根据现今的构造板块将现代国家多边形分割成若干碎片。随后，每个碎片通过 pyGPlates 有限旋转被重建到过去的时间点。对于未来，该工具利用近期板块旋转的恒定运动进行外推，并对主要碰撞做了粗略调整——但创作者强调这只是一个“交互式草图”，并非真正的预测。红色区域突出显示重建后仍重叠的板块碎片，表明模型中存在不一致之处。该工具包含一个时间滑块，从“现代地球”（0 Ma）开始，并允许用户旋转地球和增加时间。本质上，这是一个富有创意的教育工具，用于可视化大陆漂移和板块构造，借助熟悉的城市和国家标记，让深时与未来情景更加直观。

---

## 27. 文学的罪过

**原文标题**: Literary Sins

**原文链接**: [https://www.thedial.world/articles/news/seven-literary-sins](https://www.thedial.world/articles/news/seven-literary-sins)

文章《文学之罪》收录了七篇短随笔，作家们在其中坦承自己私密的文学坏习惯与隐秘乐趣。

- **艾哈迈德·纳吉**承认自己有文学盗窃癖：他从其他作家那里偷取优美的短语和词句，将其背诵下来，直到它们成为自己血脉的一部分。他归功于阿布·努瓦斯的传奇——背诵一千行诗，然后将它们遗忘——以此作为将偷来的语言化为己有的范式。

- **安娜·尤尔**坦承自己不喜欢句号，写作时惯用冗长散漫的句子，夹杂大量离题之语，常常写着写着就忘了自己要说什么。她将自己比作处于狂躁写作状态的耶稣，并挣扎着遵循编辑们让她变化节奏的建议。

- **弗朗切斯科·帕西菲科**说自己的罪过是对作家失去信任：当一句话显得造作或不够扎实时，他会把书扔到一边，却又可能对某一页痴迷不已，虔诚地大声诵读。

- **卡里姆·卡坦**为“讲述”而非“展示”辩护。他喜爱低效迂回的小说，钟爱对自己都浑然不觉的人物，认为文学应当探索自身笨拙不驯的素材，而非像一部紧凑的迷你剧那样运作。

- **伊莫金·韦斯特-奈茨**坦承自己靠谷歌搜索同义词，而非自己寻找恰当的词语，将写作的核心环节外包了出去。她感到羞愧，但也承认这多半是出于懒惰。

- **萨布丽娜·亚兹**在翻译前不会把原文读完，她更喜欢在一无所知中一句一句地翻译。她说这让翻译变成了一部“小惊悚片”，而回头重读则是对不知全貌的快感所付出的一点小小赎罪。

- **凯里·巴拉卡**总是难以追踪自己的资料来源，经常要在草稿完成后费力查证事实。他的拖延症一直困扰着他，有一次他甚至说服自己某个关键细节只是一个梦，后来才发现它来自一封深夜发出的邮件。

这些随笔探讨了在一个趋同的文学世界中，这些“罪过”如何映照出个体精神。

---

## 28. Alpha 21264 CPU：NT最强的RISC处理器（1998年）

**原文标题**: The Alpha 21264 CPU: NT's Greatest RISC (1998)

**原文链接**: [https://halfhill.com/byte/1998-12_alpha.html](https://halfhill.com/byte/1998-12_alpha.html)

本文详细介绍了Alpha 21264——Digital Equipment公司推出的64位RISC处理器，它运行Windows NT，于1998年问世，在Intel的64位Merced芯片（预计2000年年中推出）之前，提供了下一代处理技术的抢先预览。Digital声称，21264在1998年将达到700 MHz，并在两年内达到1 GHz，性能有望超越Merced。

作为微软计划为NT提供支持的最后一款RISC架构（MIPS和PowerPC正逐步被淘汰），Alpha相对于Intel x86的主要优势在于性能，尤其是在浮点任务方面。文章将此置于更广泛的RISC衰落背景下：PowerPC合作伙伴关系正在瓦解，SGI正逐步弃用MIPS，Sun正将Solaris移植到IA-64，HP正逐步淘汰PA-RISC，转而采用IA-64。

21264的设计与其前代相比有显著不同。它拥有更大的64KB一级缓存、更多的功能单元，并且是首款采用乱序执行的Alpha处理器，可同时处理80条指令——超过任何其他处理器。这得益于独特的寄存器方案：最多160个整数寄存器分为两组，以保持高时钟频率。它还包括新的运动视频指令（MVI），用于高效的MPEG-2/DVD解码；两个流水线浮点单元，可维持1.2 Gigaflops的运算性能；以及通过高带宽后端总线访问的片外二级缓存。值得注意的是，AMD为K7处理器获得了这一总线设计的许可，这意味着未来的K7和21264主板将仅在BIOS上有所不同。

文章最后指出，由于康柏收购了Digital，Alpha的未来充满不确定性，尽管康柏表示将继续支持，并计划在Tandem服务器中使用21264。

---

## 29. 让地面强度翻倍的网格

**原文标题**: The Grid That Doubles the Strength of the Ground

**原文链接**: [https://practical.engineering/blog/2026/8/4/the-grid-that-doubles-the-strength-of-the-ground](https://practical.engineering/blog/2026/8/4/the-grid-that-doubles-the-strength-of-the-ground)

这篇文章解释了蜂巢格室——一种三维蜂窝状塑料结构——如何加固软弱土壤，并以长滩港扩建工程作为现实案例。工程师们面对的是无法承受重载的软弱、饱水泥质疏浚淤泥。他们没有开挖并运入昂贵的填料，而是使用蜂巢格室约束土体，将其转变为可供重型设备作业的稳定平台。

文章描述了土壤破坏模式，特别是承载力破坏——即土壤在荷载作用下发生剪切破坏。传统解决方案包括用混凝土基础扩散荷载，或用高质量路基材料替换劣质土，两者成本都很高。土工合成材料提供了替代方案：土工织物起片层作用，土工格栅是与土体互锁的二维网格，而蜂巢格室则是包裹填料的三维结构，能更有效地扩散荷载并减少所需基层厚度。

蜂巢格室还允许使用更廉价或当地的填料，因为塑料结构承担了大部分工作。该技术起源于20世纪70年代的美国陆军工程兵团，甚至曾被考虑用于月球建设。文章中的模型演示表明，蜂巢格室通过约束颗粒并阻止剪切移动，即使在高车速下也能防止松散砂土出现“搓板状”起伏。

在环保方面，蜂巢格室可以减少开挖、缩短运输距离、提高渗透性并减少废弃物，尽管是塑料制品，仍能带来净效益。虽然它并非永远是首选方案，但在道路、边坡、挡土墙和港口设施等岩土工程中占据着宝贵的一席之地。

---

## 30. Windows 11自带天气应用浪费超1GB内存

**原文标题**: Windows 11's built-in Weather app wastes more than 1 GB of RAM

**原文链接**: [https://www.notebookcheck.net/Windows-11-s-built-in-Weather-app-wastes-more-than-1-GB-of-RAM.1364205.0.html](https://www.notebookcheck.net/Windows-11-s-built-in-Weather-app-wastes-more-than-1-GB-of-RAM.1364205.0.html)

Windows 11内置的天气应用据Windows Latest和Wccftech测试，其内存占用可超过1 GB。内存使用量起初约为1 GB，空闲时降至500–600 MB，而在缩放或导航等基本操作期间可能攀升至1.5–1.6 GB。在8 GB内存的系统上，这几乎占总内存的20%。

高内存占用源于该应用并非完全原生：它本质上是一个基于微软WebView2框架构建的MSN天气网页应用，运行多个Chromium子进程。相比之下，据报道，Apple的macOS天气应用在类似条件下内存占用不到250 MB。

该问题主要影响配备8–16 GB内存的入门级PC，可能增加对页面文件的依赖，并使系统感觉响应变慢。该应用还将赞助内容直接嵌入其天气预报信息流中，因在Windows内置应用中插入广告而招致批评。

这些发现似乎与微软宣称的提高Windows 11在低端硬件上效率的努力相矛盾。微软曾表示未来希望构建更多完全原生的应用，但尚不清楚天气等MSN品牌应用是否会使用WinUI重建。

---

## 31. 硅谷误读科幻小说，削弱民主

**原文标题**: Silicon Valley misreads science fiction and undermines democracy

**原文链接**: [https://techcrunch.com/2026/08/09/historian-jill-lepore-says-the-tech-industry-is-led-by-bad-readers-who-are-undermining-democracy/](https://techcrunch.com/2026/08/09/historian-jill-lepore-says-the-tech-industry-is-led-by-bad-readers-who-are-undermining-democracy/)

哈佛历史学家、普利策奖得主吉尔·勒波尔在她即将出版的新书《人造国家的兴衰》中指出，科技公司正悄然取代民主政府的职能，打造出一个她所称的“人造国家”。她警告说，这标志着通过算法、企业和机器进行的统治“回归暴政与神秘化”。

勒波尔坚称自己并非反技术；她担心的是，私营企业在未经公众同意的情况下日益接管国家职能。她通过技术官僚哲学和科幻小说追溯了这一转变，认为许多硅谷领袖——尤其是埃隆·马斯克——将反乌托邦或模棱两可的科幻故事误读为未来的蓝图。

典型例子包括苹果公司著名的1984年超级碗广告，该广告将麦金塔电脑塑造成个人解放的工具。勒波尔表示，这种营销幻想后来成为萨姆·奥尔特曼等人“妄想性”的心态，奥尔特曼最近甚至提出AI总统可能是个好主意。她还揭穿了“推特革命”的神话，指出推特从来就不是数字市政厅：只有一小部分高度党派化的美国人在政治推文中占据主导地位，使它成为“扭曲机器”而非民主论坛。

勒波尔强调1996年《电信法》是塑造当今互联网的关键但有缺陷的决策。她还引用E.M.福斯特1909年的小说《机器停转》，认为这是一个诡异而敏锐的预言，描绘了人类被一个提供一切却剥夺自主权的体系所奴役。最终，她认为硅谷领袖正在披上政府的外衣，却缺乏深刻的政治哲学，而其他路径本有可能，却未被选择。

---

## 32. 我的服务器现在是一部手机

**原文标题**: My server is a phone now

**原文链接**: [https://seg6.space/posts/phone-server/](https://seg6.space/posts/phone-server/)

这篇文章描述了将一部CMF Phone 1（8核ARM处理器、8GB内存、128GB存储）重新利用为个人服务器，以取代付费VPS的实践。最初尝试刷入postmarketOS失败了，原因是驱动（Wi-Fi、GPU等）不完善，存在变砖风险。恢复原厂Android系统后，采用了一种更好的方案：保留Android以获得硬件支持，并使用Termux作为宿主环境。

Termux提供SSH、runit（用于进程监督）、Caddy、Cloudflared和Tailscale。Android启动链路为：Tailscale常开VPN → Termux:Boot → runit → 常驻服务。通过唤醒锁（wake lock）禁用电池管理，使手机保持活跃状态。

应用程序运行在Debian文件系统中。PRoot（用户态兼容层）可运行大多数服务，但对于对延迟敏感的Surf浏览器（为旧iPad提供远程Chrome服务）来说速度太慢了。对手机进行root后，可以使用原生chroot替代，性能大幅提升。OCI镜像从工作站导出，由Ansible验证，并安装到带原子符号链接的版本化目录中。部署完全通过Ansible管理，密钥通过1Password签名的挑战来处理。

入口流量使用Cloudflare Tunnel代理HTTP服务，只需出站连接，因此手机可以在不同网络间漫游。Surf通过隧道使用WebSocket包装的TLS流来保持固定连接。Tailscale提供稳定的私有访问。

正在运行的服务包括Surf（桌面Chrome流式传输到iPad）、个人理财追踪器（带设备外备份）、屏幕共享服务，以及显示CPU、内存、电池、热状态和服务健康的可观测性仪表盘。

作者总结道，如果你有一部可root的ARM64手机，这种方案对个人使用是可行的，但建议不要在没有备份的情况下存储不可替代的数据，并指出chroot不是安全边界。这是付费VPS之外一个另类但有效的替代方案。

---

## 33. Show HN：Airy – 免费、快速且简单的语音内容创作

**原文标题**: Show HN: Airy – Free, fast, and simple voice content creation

**原文链接**: [https://airy.so](https://airy.so)

Airy被介绍为一款免费、快速且简单的语音内容创作工具。这篇文章以“Show HN”的形式发布在Hacker News上，重点推介了其主打产品Airy Studio。它的目标受众似乎是那些希望以轻松高效的方式制作语音内容、同时不想被不必要的复杂性和成本所困扰的创作者。其关键亮点包括免费模式、精简的工作流程，以及专注于让语音创作变得快速且易于上手。

---

## 34. TheoremDB – 一个面向机器数学的公共工作空间

**原文标题**: TheoremDB – A public workspace for machine mathematics

**原文链接**: [https://theoremdb.org/](https://theoremdb.org/)

这篇文章介绍了**TheoremDB**，一个面向机器数学的公共工作空间，并重点介绍了一个托管在那里的开放数学问题。

所展示的问题**#P2692**涉及循环群\(\mathbb Z/31\mathbb Z\)上中心极大算子的一个尖锐\(L^2\)范数估计。对于函数\(f:\mathbb Z/31\mathbb Z\to\mathbb R\)，该算子定义为

\[
Mf(j)=\max_{0\leq r\leq15}\frac{1}{2r+1}\sum_{k=-r}^{r}|f(j+k)|.
\]

目标是确定精确的算子范数：

\[
\sup_{f\neq 0}\frac{\|Mf\|_2}{\|f\|_2}.
\]

该问题目前被标记为**Open**，归类于**调和分析**。该条目还以“Open packet”形式呈现，并提供“Open in ChatGPT”选项，这表明TheoremDB旨在促进人类数学家与机器学习工具之间的交互式协作。

---

## 35. 该不该掰手指？

**原文标题**: Should you stop cracking your knuckles?

**原文链接**: [https://www.bbc.com/future/article/20260807-should-i-stop-cracking-my-knuckles](https://www.bbc.com/future/article/20260807-should-i-stop-cracking-my-knuckles)

掰手指是一种常见习惯，但它有害吗？文章解释了其科学原理和证据。

爆裂声发生在关节被拉伸时，关节间隙扩大，滑液压力降低。这导致溶解的气体形成气泡，气泡破裂产生“咔哒”声——声音可达83分贝，类似于柴油卡车。

研究表明，掰手指大多无害。Donald Unger著名的50年自我实验发现，掰过和未掰过的手指之间没有关节炎差异。多项研究证实掰手指与骨关节炎无关。对习惯性掰手指者的检查未发现肿胀或功能障碍。

然而，用力过猛很少会导致扭伤或脱位。掰脖子风险更大，因为颈部包含脊髓和重要动脉。过度操作可导致严重损伤，专业的脊椎按摩颈部调整被称为“不必要且不可取”。

关于握力减弱的说法存在矛盾：1990年的一项研究发现握力减弱和肿胀，但2017年的一项研究未发现相关性。关于指关节变大或肌腱松弛的传言并不属实。掰手指可能通过拉伸关节和可能释放内啡肽来提供缓解和暂时的活动度。

总体而言，掰手指对关节无害——唯一潜在的坏处可能是惹恼别人。要戒掉这个习惯，专家建议认知疗法、记录触发因素，并使用压力球或解压玩具。本文仅提供一般信息，不构成医疗建议。

---

## 36. 我们用MySQL替换了Redis用于库存预留，并且它扩展得很好。

**原文标题**: We replaced Redis with MySQL for inventory reservations and it scaled

**原文链接**: [https://shopify.engineering/scaling-inventory-reservations](https://shopify.engineering/scaling-inventory-reservations)

Shopify 用 MySQL 替换了 Redis 用于库存预留，以解决一致性问题并支撑规模扩展。此前，预留数据保存在 Redis 中，而库存账本在 MySQL 中，这使得原子化的预留/认领操作无法实现，并存在超卖或少卖的风险。

新方案利用 MySQL 的 `SKIP LOCKED` 特性，为每个可售单元分配一行，并将其归入有界池，每个商品/位置最多 1000 行，以保证查询速度。如果池被清空，则在其他事务等待时执行受保护的内联补充。

关键技术决策：
- **复合主键**（shop_id、inventory_item_id、inventory_group_id、id）替代自增主键，每行的锁数量从两把降为一把。
- **READ COMMITTED** 隔离级别，避免阻塞补充操作的间隙锁。
- **一致的锁顺序**（预留时先从 units 中删除，再插入 reserved_quantities），避免预留与认领之间的死锁。
- **UNION ALL 批量处理**，减少多行项目购物车的往返通信次数。

真正的瓶颈不在于查询或 CPU，而在于连接耗尽。团队为每个业务流程添加了 SQL 注释标签（`/* conn_tag:... */`），并在 ProxySQL 层汇总了连接持有时间。这一做法揭示了结账路径上的其他代码持有连接时间过长。清理后，主数据库读取量减少了 50%，事务量减少了 33%。他们还提高了 InnoDB 线程并发度，该参数多年前被设置得过于保守。

切换采用了影子模式：Redis 和 MySQL 同时接收写入，MySQL 针对生产流量进行验证，然后逐步成为事实来源，并配有用于回滚的熔断开关。

经验教训：重新审视旧的决策和配置假设；从最小原型开始，直接观察行为。目标不仅仅是让预留更快，而是让它们成为安全的邻居，不会损害结账流程其余部分的数据库健康状况。

---

## 37. Os8088：面向IBM XT、286、386的强大类Mac操作系统

**原文标题**: Os8088: A powerful Mac-like OS for the IBM XT, 286, 386

**原文链接**: [https://os8088.com/](https://os8088.com/)

os8088 是一个面向原始 IBM PC/XT 的业余图形操作系统，完全用 Intel 8086 的实模式汇编语言编写，从软盘启动。它重现了 Macintosh System 1 风格的桌面——重叠窗口、下拉菜单、串口鼠标、程序坞和可加载应用程序——同时增加了抢占式多任务处理，而这是 1984 年的 Mac 所不具备的。

该系统只需 256K 内存即可运行，可在 8086/8088 处理器上运行。它检测并支持 VGA（640x480，16 色）、Hercules（720x348 单色）和 CGA（640x200 单色）。内核大小为 80,486 字节；引导扇区正好是 512 字节。它提供 12 个抢占式任务槽，每个槽带 1,536 字节的栈，以 PC 定时器速率 18.2065 Hz 切换任务。程序从第二张软盘加载到各自的内存段；示例包括扫雷（1,510 字节）、记事本、画图、纸牌和一个 MOD 播放器。

文章提到了历史背景：Digital Research 的 GEM 1.0 于 1985 年将类似 Mac 的 GUI 带到了 PC 上，但 Apple 的诉讼导致其移除了重叠窗口和图标——os8088 以更先进的多任务处理重建了这一理念。它不是 DOS，没有内存保护、没有网络功能、也没有文件句柄，但已足够完整可用。它已在真实硬件（包括 IBM 5150）上测试过，并且可以在浏览器中试用，或下载软盘镜像用于模拟器或那个时代的机器。源代码在 GitHub 上。

---

## 38. 该预测的原始URL将在11年后不再可用（2011年）

**原文标题**: The original URL for this prediction will no longer be available in 11 years (2011)

**原文链接**: [http://longbets.org/601/](http://longbets.org/601/)

长赌注 #601，从2011年到2022年，探讨了预测的原始网址——`www.longbets.org/601`——在11年后是否仍然可用。

- **预测者：** Jeremy Keith认为，链接腐化是“网络的熵”，即使像11年这样相对较短的时间，对于一个网页文档来说，在其原始位置存续也过于漫长。
- **挑战者：** Matthew A. Haughey认为，网络技术和策略已经成熟，稳定的URL系统是可以实现的。他指出，自己最早的网站已存续13年，原始URL方案仍通过301重定向正常运作。

**赌注：** 如果Keith获胜，1000美元将捐给布莱切利公园信托基金；如果Haughey获胜，则捐给互联网档案馆。

**详细条款：** 2022年2月22日世界标准时间（UTC）00:01至23:59期间，在浏览器或命令行工具中输入`http://www.longbets.org/601`，或点击指向该URL的超链接，必须返回一个HTML文档，其中包含精确文本：“The original URL for this prediction (www.longbets.org/601) will no longer be available in eleven years.” 如果通过301重定向到包含该文本的另一个URL，也同样有效。如果满足这些条件，Haughey获胜；否则Keith获胜。

该页面还包含标准的Long Bets导航元素、通过Disqus进行的评论，以及要求启用JavaScript才能查看这些内容的提示。

---

## 39. Fastmail 提供欧盟数据区域

**原文标题**: Fastmail offers EU data region

**原文链接**: [https://www.fastmail.com/blog/fastmail-offers-eu-data-region/](https://www.fastmail.com/blog/fastmail-offers-eu-data-region/)

Fastmail 现为用户的账户提供欧盟数据驻留选项，主要数据存储在其位于阿姆斯特丹的自有服务器上。此前，所有账户均位于美国。用户现在可以在欧盟和美国区域之间进行选择。

关键细节：

- **欧盟区域：** 主要数据存储于阿姆斯特丹。接收邮件和应用连接优先使用欧盟服务器，若阿姆斯特丹不可用，则自动回退至美国位置。由于欧盟仅有一个站点，数据会在美国保留一份弹性副本。
- **美国区域：** 主要数据和副本数据均留在费城或圣路易斯，并在这些美国站点之间进行回退。
- **所有用户：** 紧急备份存储在费城。部分元数据（电子邮件地址、用户/客户数据、附加服务、文件功能、网站存储）会复制到所有站点。系统日志汇总在美国。无论区域如何，调试、计费和支持所用的第三方服务均为共享。
- **合规性：** Fastmail 是一家澳大利亚公司，将回应相关当局的合法请求。他们明确表示，无法保证数据仅留在欧盟。
- **迁移：** 账单地址为欧洲的用户已提前被预选，其加密数据已预先复制到欧洲。其他用户可申请迁移，但由于数据需要跨洋同步，耗时更长。可在“设置 → 用户与共享 → 团队设置”中的“数据驻留”选项下切换区域。
- **无额外费用：** Fastmail 不因选择欧盟区域而额外收费。

该公司强调透明度，并指出大多数提供商替用户做决定，而 Fastmail 则让用户在充分了解信息的情况下自行选择。

---

## 40. NoRecognition：AI对抗服饰

**原文标题**: NoRecognition: AI Adversarial Clothing

**原文链接**: [https://sandbox.norecognition.org/](https://sandbox.norecognition.org/)

**NoRecognition** 是一个独家限量发布的AI对抗性服装系列，旨在让穿着者无法被计算机视觉摄像头检测到。该系列源于在Black Hat和DEF CON上展示的一年研究成果，此次发布以倒计时形式宣布，目前已在Kickstarter上线，并提供通知以获取抢先体验。

该系列包括：
- **T恤**：日常上身覆盖。
- **连帽衫**：最大身体覆盖。
- **多用围脖/头带**：多用途颈部围脖/头带。
- **One of One**：为单一个人生成并验证的独特图案，从未公开发布。

每款仅制作50件，按订单生产，不再补货。该品牌通过公布测试结果来区别于其他“反监控”服装。图案会与11个生产级计算机视觉模型（包括美国许多街道上使用的车辆和行人检测器）进行评分对比。它们必须击败同等大小的普通对照面板，并在30名未参与训练的测试穿着者身上进行评估，同时公布正面和负面结果。关键数据包括：运行了3170万次测试，测试了11个生产模型，产生570万个标注结果，以及一年的研究。图案本身保持私密，在发货前绝不会公开发布或打印。支持者可在限量档位售罄前获得优先购买权。

---

