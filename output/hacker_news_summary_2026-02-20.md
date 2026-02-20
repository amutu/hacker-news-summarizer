# Hacker News 热门文章摘要 (2026-02-20)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 保持安卓开放

**原文标题**: Keep Android Open

**原文链接**: [https://f-droid.org/2026/02/20/twif.html](https://f-droid.org/2026/02/20/twif.html)

本期《F-Droid周报》主要作为对安卓未来发展的严重警告。F-Droid团队澄清，谷歌计划中对侧载应用的限制（于2025年8月宣布）仍在推进，尽管公众误以为该计划已被取消。团队指出，一场误导性的公关活动营造了虚假的安全感，而社区阻止谷歌成为安卓设备唯一守门人的时间已所剩无几。

作为回应，F-Droid已上线专题网站，并在其官方及基础版应用客户端中添加警示横幅，以提高公众意识并鼓励用户向监管机构表达关切。IzzyOnDroid和Obtainium等其他应用商店也加入了这一行动。

本期更新还涵盖了开发动态：F-Droid Basic 2.0-alpha3版本推出新功能，包括已安装应用的CSV导出和安装历史记录。社区应用亮点包括Conversations/Quicksy（移除了谷歌库）、Dolphin Emulator、ProtonVPN和SimpleEmail的更新。

最后，本周汇总数据显示共有287款应用获得更新，新增1款应用（NeoDB You），另有5款应用从仓库中移除。

---

## 2. Ggml.ai加入Hugging Face，共同确保本地AI的长期发展。

**原文标题**: Ggml.ai joins Hugging Face to ensure the long-term progress of Local AI

**原文链接**: [https://github.com/ggml-org/llama.cpp/discussions/19759](https://github.com/ggml-org/llama.cpp/discussions/19759)

**摘要：** ggml.ai 团队，即广受欢迎的开源项目 llama.cpp 的创建者，将加入 Hugging Face。此次合作的主要目标是确保本地 AI 生态系统的长期可持续性与发展。

**关键点：**
*   **延续性：** ggml 与 llama.cpp 项目将保持 100% 开源并由社区驱动。核心团队将继续全职领导并维护这些项目。
*   **缘由：** 此举旨在正式确立与 Hugging Face 已有的紧密合作，后者一直是这些项目的主要贡献者。这将为项目的规模化发展和繁荣提供所需资源。
*   **未来重点：** 双方将优先致力于：
    1.  与 Hugging Face 的 Transformers 库实现无缝集成，以提供更广泛、更快速的模型支持。
    2.  改进打包和用户体验，使本地 AI 推理更易于使用。
*   **愿景：** 双方的长期共同目标是构建基础技术，使开源 AI 超级智能能够高效地在消费级设备上运行。

此公告获得了社区的广泛祝贺与热烈反响，大家普遍认为 Hugging Face 是这些项目自然而理想的支持平台。

---

## 3. 我在泄露的CIA开发者文档中发现了一个实用的Git单行命令。

**原文标题**: I found a useful Git one liner buried in leaked CIA developer docs

**原文链接**: [https://spencer.wtf/2026/02/20/cleaning-up-merged-git-branches-a-one-liner-from-the-cias-leaked-dev-docs.html](https://spencer.wtf/2026/02/20/cleaning-up-merged-git-branches-a-one-liner-from-the-cias-leaked-dev-docs.html)

本文介绍了一个用于清理过时本地Git分支的命令，该命令是作者在泄露的CIA开发者文档中发现的。

核心问题在于本地Git仓库会积累已合并的分支（如旧的功能或热修复分支），导致`git branch`的输出杂乱。虽然`git branch --merged`能列出这些分支，但逐个删除非常繁琐。

关键命令可自动完成清理：
1. `git branch --merged origin/main`列出已合并到`main`的分支。
2. `grep -vE "^\s*(\*|main|develop)"`过滤并保护当前分支（`*`）、`main`和`develop`分支。
3. `xargs -n 1 git branch -d`安全删除每个剩余分支（使用`-d`确保仅删除完全合并的分支）。

作者建议为此命令创建Git别名（如`ciaclean`），以便在部署后轻松运行，将数十个分支列表恢复为少数几个可管理的分支，从而节省日常维护时间。

---

## 4. 我发现了一个漏洞。他们找来了一个律师。

**原文标题**: I found a Vulnerability. They found a Lawyer

**原文链接**: [https://dixken.de/blog/i-found-a-vulnerability-they-found-a-lawyer](https://dixken.de/blog/i-found-a-vulnerability-they-found-a-lawyer)

2025年4月，一名潜水教练兼平台工程师在旅行期间发现某大型潜水保险公司的会员门户存在严重安全漏洞。该漏洞允许任何人仅通过猜测连续数字用户ID并使用从未被强制更改的静态默认密码，即可访问完整的用户资料——包括姓名、地址、电话号码和出生日期。泄露的数据甚至包含未成年人信息。

研究人员遵循负责任披露原则，将问题同时报告给该机构和马耳他国家网络安全中心（CSIRT Malta），并设定了标准的30天保密期后才公开披露。然而，该机构法律团队不仅未表感谢，反而以马耳他法律下的潜在刑事责任为由威胁研究人员，要求其签署保密协议，并指责用户未修改默认密码。

漏洞在披露后已修复，密码被重置并计划启用双重认证。但研究人员尚未收到确认，证明受影响用户已按《通用数据保护条例》要求获知数据泄露情况。本文揭示了即使敏感数据面临风险，伦理安全研究与企业防御性法律立场之间的紧张关系。

---

## 5. 小趣语言

**原文标题**: Lil' Fun Langs

**原文链接**: [https://taylor.town/scrapscript-000](https://taylor.town/scrapscript-000)

本文重点介绍了一系列ML风格函数式编程语言（如Haskell、OCaml和F#）的小型教学实现。这些项目的突出特点在于用极简的代码量实现了核心功能，包括Hindley-Milner类型推断、代数数据类型、模式匹配和闭包。

作者提供了一个包含20多种语言的对比表格，详细列出了它们的代码规模（从约70行到约30,000行）、实现语言、支持特性以及编译目标（例如解释器、原生代码或仅类型检查器）。第二张表格则分解了添加特定语言功能所需的近似代码量。

关键案例如下：
*   **MinCaml**（约2千行）：严格函数式语言的金标准原生代码编译器。
*   **Algorithm W**与**THIH**（约300-400行）：Haskell类型推断的经典教学实现。
*   **Ben Lynn的编译器**（约2千行）：通过微型C运行时构建近乎Haskell 98编译器的卓越自举链。
*   **Hirrolot的CoC**（约70行）：依赖构造演算的极致精简实现。

本文兼具参考价值与启发意义，论证了精妙的类型系统与语言实现可以简洁构建，同时为读者指明了深入学习所需的基础论文与教程资源。

---

## 6. 将前沿网络安全能力提供给防御者

**原文标题**: Making frontier cybersecurity capabilities available to defenders

**原文链接**: [https://www.anthropic.com/news/claude-code-security](https://www.anthropic.com/news/claude-code-security)

Anthropic推出了Claude Code Security，这是一款新型AI驱动的网络安全工具，目前面向其企业及团队客户提供有限的研究预览。该工具旨在帮助防御者发现并修复传统基于规则的扫描工具常常遗漏的复杂软件漏洞。

与传统的静态分析不同，Claude Code Security能像人类研究员一样阅读和推理代码，理解组件交互与数据流，从而检测出细微且依赖上下文的漏洞。它采用多阶段验证流程以减少误报，为每个发现分配严重性评级，并提供建议的补丁及置信度评分。关键的是，所有修复措施在实施前均需经过人工批准。

这一能力基于超过一年的研究积累，包括竞争性安全测试以及与国家级实验室的合作。借助最新的Claude Opus模型，Anthropic团队已在开源项目中识别出500多个先前未被发现的漏洞。

Anthropic将此次发布定位为一项关键防御措施，并预见AI将很快扫描全球大部分代码。其目标是让防御者能在攻击者利用漏洞前发现并修补弱点，从而提升整体安全基线。公司正为开源维护者提供快速接入通道，并邀请部分客户共同参与工具的优化工作。

---

## 7. 特朗普全球关税政策遭美国最高法院否决。

**原文标题**: Trump's global tariffs struck down by US Supreme Court

**原文链接**: [https://www.bbc.com/news/live/c0l9r67drg7t](https://www.bbc.com/news/live/c0l9r67drg7t)

美国最高法院推翻了前总统特朗普的全球关税计划，令已缴纳关税的企业陷入不确定性。法院裁决未涉及企业是否有权获得退税的问题，这笔款项估计约为1300亿美元。

这一疏漏意味着退税问题很可能将在国际贸易法院进行诉讼。虽然过去曾批准过此类退税，但此次关税规模空前，带来了新的挑战。

特朗普总统表示，他预计退税程序将在法院拖延数年，暗示白宫不会迅速发放资金。尽管可能建立简化的电子索赔流程，但漫长且昂贵的诉讼前景意味着许多小型企业可能无法追索其索赔，最终可能无法获得退款。

---

## 8. 基于行为模型自主测试超级马里奥

**原文标题**: Testing Super Mario Using a Behavior Model Autonomously

**原文链接**: [https://testflows.com/blog/testing-super-mario-using-a-behavior-model-autonomously-part1/](https://testflows.com/blog/testing-super-mario-using-a-behavior-model-autonomously-part1/)

本文介绍了一种基于变异遗传算法的《超级马里奥兄弟》自主测试方法。该系统无需手动编写测试用例，而是通过随机位翻转变异生成输入序列（按键操作），从而探索游戏的状态空间。

核心算法维护着一组“路径”（输入序列）及其适应度评分，评分主要依据马里奥的水平前进距离（x轴位置）。算法选择一条有潜力的路径，将其回放至确定的游戏状态，随后通过新变异的输入进行延伸。导致马里奥死亡的路径会被剔除。这种选择、回放、变异和评估的循环持续进行。

实现细节包括一种混合输入生成器，它结合了随机模糊变异与预定义的类人操作模式，以平衡探索效率与推进速度。路径选择采用加权概率分布，既倾向于高分路径，又保持种群多样性。评分机制优先考量关卡完成度，其次为行进距离，最后是移动速度。

作者将其定义为一种特殊遗传算法：输入序列作为基因型，对应特定的游戏内状态。尽管当前系统仅使用变异（未采用交叉操作），但它有效展示了如何通过演化成功行为策略，以自主探索的方式系统化测试复杂软件。

---

## 9. 通往普及人工智能之路（每秒17千令牌）

**原文标题**: The path to ubiquitous AI (17k tokens/sec)

**原文链接**: [https://taalas.com/the-path-to-ubiquitous-ai/](https://taalas.com/the-path-to-ubiquitous-ai/)

Taalas是一家致力于通过解决人工智能两大主要应用障碍——高延迟和高成本——来让人工智能无处不在的公司。其实现方式是将人工智能模型直接转化为专用的定制硅芯片。

他们的核心创新基于三大原则：1）**完全专业化**，为每个独立模型创建最优硬件；2）在DRAM密度级别上实现**存储与计算的单芯片融合**，消除内存与处理器之间的速度瓶颈；3）**硬件栈的彻底简化**，避免使用HBM和液冷等复杂昂贵组件。

由此诞生了他们的“硬核模型”。其首款产品是一个硬连线的Llama 3.1 8B模型，可实现**每秒17,000个token**的处理速度——比当前领先方案快近10倍——同时构建成本降低20倍，能效提升10倍。他们承认第一代模型因采用激进的量化技术存在质量折衷，而第二代芯片（采用标准4位格式）将解决这一问题。

Taalas强调其精益求精、注重工艺的开发模式，仅用24人团队和3000万美元资金就完成了产品研发。他们正以测试服务形式发布该产品，让开发者能以近乎零延迟和零成本的代价进行实验，为即将推出的中型和前沿模型铺平道路。他们的目标是开创即时、普惠的人工智能新范式。

---

## 10. 脸书彻底玩完了。

**原文标题**: Facebook is absolutely cooked

**原文链接**: [https://pilk.website/3/facebook-is-absolutely-cooked](https://pilk.website/3/facebook-is-absolutely-cooked)

作者描述了时隔八年首次登录Facebook，发现首页动态已被低质量的算法推荐内容淹没。原本应展示好友动态的信息流，如今充斥着AI生成的年轻女性“钓鱼”照片、粗制滥造的梗图以及互动诱饵内容，其中甚至包含一些疑似对未成年人进行性暗示的帖子。

作者震惊于这个“垃圾内容流水线”竟已成为这个定义过社交媒体的平台的核心体验，指出其设计似乎专门利用人类“蜥蜴脑”式的本能参与。他们推测算法可能针对“孤独老年男性”等群体，并质疑这种内容退化对常驻用户是渐进的，还是对自己这类非活跃账户尤为剧烈。

最终，当看到AI生成的未成年模样女孩图像时，作者在厌恶中退出登录，发誓今后仅为学校通知等实际需求才会重返。核心论点是：Facebook的主信息流已退化为一个由AI驱动的、充斥低质量且潜在有害内容的垃圾信息荒原。

---

## 11. 儿童游戏：科技新生代与思考的终结

**原文标题**: Child's Play: Tech's new generation and the end of thinking

**原文链接**: [https://harpers.org/archive/2026/03/childs-play-sam-kriss-ai-startup-roy-lee/](https://harpers.org/archive/2026/03/childs-play-sam-kriss-ai-startup-roy-lee/)

本文聚焦人工智能初创公司Cluely的争议性联合创始人李忠仁（绰号“罗伊”），旨在批判硅谷新一代“高度自主”的价值观——他们崇尚无休止的行动，而非思考。

文章开篇描绘了旧金山疏离的社会氛围：荒诞的科技广告与城市衰败景象交织，为Cluely的颠覆性登场铺设背景。该公司的产品——一款辅助会议与通话的AI工具——被视作深层变革的象征：行业坚信“分化事件”即将来临。文章指出，未来奖赏的将不是智力或专业知识（这些终将被AI取代），而是“自主力”——一种推土机般无需许可、不经反思就行动的人格特质。

罗伊·李正是这一新兴精英阶层的典型代表。他的经历——利用AI作弊完成课业与面试、被哥伦比亚大学开除、创立病毒式传播的初创公司——诠释了其哲学信条：“未来不会奖赏努力，而会奖赏杠杆效应。”文章详述了他 frat-house式的公司文化及其令人不安的直率性格，暗示罗伊及其同辈所构想的未来里，人类只需执行机器指令。

最终，文章借李忠仁与Cluely案例论证：科技界的新思潮正推崇无脑行动，凌驾于人类理性、创造力与思考之上，而那些依赖这些传统能力的人，或将面临被时代淘汰的命运。

---

## 12. 如何审查AUR软件包

**原文标题**: How to Review an AUR Package

**原文链接**: [https://bertptrs.nl/2026/01/30/how-to-review-an-aur-package.html](https://bertptrs.nl/2026/01/30/how-to-review-an-aur-package.html)

本文旨在说明如何审查Arch用户仓库（AUR）软件包的安全性，此举源于近期发生的恶意软件事件。AUR是一个由社区维护的PKGBUILD脚本仓库——这些用于构建软件包的bash脚本可由任何人上传。由于这些脚本会在用户设备上运行，严格审查至关重要。

PKGBUILD包含元数据（如`pkgname`、`pkgver`）和构建函数（`prepare()`、`build()`、`check()`、`package()`）。关键审查步骤包括：

1.  **检查软件源：** 确认下载链接指向官方可信的上游项目，补丁文件应来自合法来源。
2.  **审查构建步骤：** 确保函数仅运行标准打包命令。`build()`、`check()`或`package()`中不应包含下载操作，且脚本绝不应使用`sudo`。
3.  **仔细检查安装脚本与钩子：** 这些内容会在软件包管理期间以root权限运行。此类脚本较为罕见，需格外谨慎对待。

文章建议：若无法理解PKGBUILD内容，请勿安装对应软件包。若怀疑某软件包存在恶意行为，可通过#archlinux-aur IRC频道、论坛或邮件列表向维护者举报以供调查。

最后作者指出，AUR基于信任的开放体系虽显陈旧但仍可运作，其改进需要社区共同努力。

---

## 13. Legion Health（YC）正在招聘顶尖软件工程师，致力于自主心理健康服务。

**原文标题**: Legion Health (YC) Is Hiring Cracked SWEs for Autonomous Mental Health

**原文链接**: [https://jobs.ashbyhq.com/legionhealth/ffdd2b52-eb21-489e-b124-3c0804231424](https://jobs.ashbyhq.com/legionhealth/ffdd2b52-eb21-489e-b124-3c0804231424)

Legion Health是一家获得Y Combinator支持的初创公司，现正招募一位创始工程师加入团队。该公司专注于人工智能原生心理健康护理领域，致力于构建自主系统以提供治疗和支持服务。

公司关键数据表现强劲：年度经常性收入（ARR）已超过330万美元，累计融资总额逾700万美元。

该职位面向资深且能力出众的软件工程师，入选者将在塑造核心技术与产品方面发挥关键作用。作为典型的早期创始团队成员，职位意味着高责任与高影响力，工作重心将围绕开发面向心理健康服务的人工智能驱动解决方案展开。

---

## 14. 学习代码库的未开发途径：构建可视化工具

**原文标题**: Untapped Way to Learn a Codebase: Build a Visualizer

**原文链接**: [https://jimmyhmiller.com/learn-codebase-visualizer](https://jimmyhmiller.com/learn-codebase-visualizer)

本文概述了一种通过构建可视化工具并以特定bug作为学习手段，来理解复杂陌生代码库的方法。作者选择Next.js/Turbopack项目作为案例，探究为何在Turbopack构建过程中未使用的枚举未被移除（即“tree-shaken”）。

该过程始于设定明确的学习目标，而非立即修复bug。作者首先复现问题，随后通过搭建本地开发环境的“支线任务”，在此过程中发现并修复了一个构建脚本的缺陷。

环境就绪后，调查显示Turbopack的实验性tree-shaking功能默认关闭，且在启用时会崩溃。这使得关注点从tree-shaking转向理解整体打包流程。作者运用简单技巧——如添加`println!`语句和搜索文件操作——追踪代码如何被SWC解析并最终写入输出块。

核心启示在于实践探索式学习：以具体问题驱动探索，接受必要的迂回过程，并运用基础策略（如针对性日志记录）逐步梳理系统运作机制，逐块构建对系统的理解。

---

## 15. 你想建立一个用户搜索或闲逛的社区吗？（2021）

**原文标题**: Do you want to build a community where users search or hang? (2021)

**原文链接**: [https://www.mooreds.com/wordpress/archives/3486](https://www.mooreds.com/wordpress/archives/3486)

根据文章所述，作者认为最成功且可持续的在线社区是围绕**搜索**而非**闲逛**建立的。

核心区别在于：
*   **搜索型社区：** 用户带着特定目标或需求而来（例如寻找解决方案、获取建议、研究购买决策）。社区的价值在于其**积累的知识**（常见问题解答、论坛、存档）。例如 Stack Overflow、TripAdvisor 和支持论坛。
*   **闲逛型社区：** 用户主要为社交互动、娱乐或建立联系而来（例如 Facebook、Twitter、Discord 服务器）。其价值在于**实时对话和网络**。

作者的主要观点是：
1.  **搜索型社区更容易启动和维持。** 你可以从创建有价值的资源（如博客或知识库）开始，吸引那些寻找答案的人。这种“内容优先”的方法能提供即时价值。
2.  **它们有更明确的目标和价值主张。** 当社区能解决一个具体的、反复出现的问题时，更容易吸引和留住成员。
3.  **它们更具持久性。** 虽然社交平台和趋势会变化，但人们寻找重要问题答案的需求是恒定的。存档的知识成为持久的资产。
4.  **“闲逛型”社区从零开始构建要困难得多。** 它们需要从一开始就有大量积极参与的用户来产生人们所寻求的社交互动，这就产生了冷启动问题。

文章总结道，创始人应专注于建立用户前来**搜索**有价值信息的社区。虽然“闲逛”可能会随着时间的推移自然形成，但将其作为最初的主要目标是一种风险高得多的策略。

---

## 16. PayPal披露数据泄露事件，用户信息暴露长达六个月。

**原文标题**: PayPal discloses data breach that exposed user info for 6 months

**原文链接**: [https://www.bleepingcomputer.com/news/security/paypal-discloses-data-breach-exposing-users-personal-information/](https://www.bleepingcomputer.com/news/security/paypal-discloses-data-breach-exposing-users-personal-information/)

PayPal已通知客户，其PayPal Working Capital（PPWC）贷款应用程序因软件错误导致数据泄露。该错误暴露了包括姓名、电子邮件地址、电话号码、公司地址、社会安全号码和出生日期在内的敏感个人信息。

此次数据暴露发生于2025年7月1日至2025年12月13日，直至PayPal发现并阻止了对数据的访问。公司将此事件归因于一次特定的代码变更，并已将其恢复。

在后续更新中，PayPal发言人澄清，公司系统并未被直接入侵，大约有100名客户可能受到影响。直接导致少数账户出现未经授权的交易，相关客户已获得退款。

作为补救措施，PayPal为受影响的用户提供两年免费的信用监控和身份恢复服务。公司还重置了所有受影响账户的密码。建议受影响客户监控其账户和信用报告，以防可疑活动。

此次事件之前，PayPal曾在2022年底发生另一起数据泄露事件，并于2025年初因网络安全监管失职向纽约州支付了200万美元的和解金。

---

## 17. 波普尔原则

**原文标题**: The Popper Principle

**原文链接**: [https://theamericanscholar.org/the-popper-principle/](https://theamericanscholar.org/the-popper-principle/)

在《波普尔原则》一文中，罗伯特·扎雷茨基审视了卡尔·波普尔对柏拉图作为极权主义哲学先驱的争议性批判。波普尔作为20世纪科学哲学家，在其1945年的著作《开放社会及其敌人》中提出，柏拉图的理想国——以其僵化的阶级结构、“高贵的谎言”和哲人王统治——是一个旨在扼杀一切社会与政治变革的“封闭社会”蓝图。波普尔认为，从柏拉图的构想到20世纪极权主义政权及其伪科学意识形态，存在着直接的思想脉络。

身为逃离纳粹迫害的犹太流亡学者，波普尔将柏拉图模式解读为根本上与“批判态度”和可错论相悖的体系，而这些正是“开放社会”的核心——在开放社会中，真理通过辩论与实践检验而确立。尽管波普尔承认自己受大屠杀（其家族成员亦遭迫害）影响而笔调激烈，但他始终坚守这一核心论点。

扎雷茨基指出，这只是众多解读之一，且柏拉图对话录的形式本身便鼓励批判性思考。他最后强调波普尔经久不衰的警示：封闭社会的吸引力不仅源于权力饥渴的统治者，也来自畏惧自由不确定性的公民。归根结底，波普尔将历史研究视为对积极捍卫开放社会、理性与正义的呼唤，而非绝望的缘由。

---

## 18. 没有技巧。没有品味。

**原文标题**: No Skill. No Taste

**原文链接**: [https://blog.kinglycrow.com/no-skill-no-taste/](https://blog.kinglycrow.com/no-skill-no-taste/)

本文指出，人工智能生成代码的泛滥暴露了科技行业的一个根本问题：普遍缺乏技能与审美。作者认为，尽管大语言模型营造了“准入门槛降低的假象”，但真正的门槛始终是审美——即辨别何为真正有趣、有用或执行出色的能力。

作者观察到，许多缺乏原创性、仅凭“感觉编码”的衍生应用充斥了Hacker News等平台，这些出自既无技术能力又缺乏审美的构建者之手的“粗制品”泛滥成灾。然而，核心问题并非大语言模型本身的使用。作者指出，即使是简单或存在技术缺陷的项目，只要具备强烈共鸣的审美（例如自毁消息应用或流行的OpenClaw），仍可能获得成功。

文章总结道，大语言模型实际上放大了审美的重要性。随着构建门槛降低，市场将充斥低质量产出，这使得卓越的审美成为关键区分因素。作者建议有志的构建者在公开分享作品前，应优先培养自身的审美能力。

---

## 19. 树莓派Pico 2以873.5MHz频率与3.05V核心电压极限超频

**原文标题**: Raspberry Pi Pico 2 at 873.5MHz with 3.05V Core Abuse

**原文链接**: [https://learn.pimoroni.com/article/overclocking-the-pico-2](https://learn.pimoroni.com/article/overclocking-the-pico-2)

本文详细介绍了对树莓派Pico 2（RP2350）进行的极限超频实验：通过干冰冷却与外接电压供应，成功将其推至873.5 MHz。

初期使用板载稳压器的测试显示，芯片在2.2V电压下可达678 MHz。为进一步突破，团队改用外接电源连接板载测试点，使核心电压突破稳压器限制。在干冰冷却至-80°C的条件下，系统以3.05V电压稳定运行于861.6 MHz，并短暂达到873.5 MHz。

主要发现包括：
*   RP2350展现出卓越的耐受性，可承受高达3.3V的电压与极端低温；
*   电压越高性能增益越有限，电流消耗可达约1A；
*   在极端设置下，通过环形振荡器实现的“自动超频”不如使用晶体振荡器稳定；
*   在CoreMark整数任务测试中，RP2350的RISC-V核心每MHz性能比Arm核心约高5%。

实验证明了Pico 2具备巨大的超频潜力，但需借助极端冷却与外接电源才能达到其最高记录速度。

---

## 20. 维基百科封禁Archive.today，因其发起DDoS攻击并篡改网页存档

**原文标题**: Wikipedia bans Archive.today after site executed DDoS and altered web captures

**原文链接**: [https://arstechnica.com/tech-policy/2026/02/wikipedia-bans-archive-today-after-site-executed-ddos-and-altered-web-captures/](https://arstechnica.com/tech-policy/2026/02/wikipedia-bans-archive-today-after-site-executed-ddos-and-altered-web-captures/)

英文维基百科决定禁止并移除所有指向存档网站Archive.today（及其相关域名）的链接。这一决定源于社区讨论中揭露的两个主要问题：该网站曾被用于对一名博主发起DDoS攻击，且其运营者被发现篡改了已存档的网页内容。

此次DDoS攻击针对的是曾撰写博文推测Archive.today创始人身份的贾尼·帕托卡利奥。在随后的争执中，该存档网站的维护者使用化名“诺拉”对帕托卡利奥发出威胁。维基百科编辑后来发现，Archive.today篡改了存档页面，在网页快照中插入帕托卡利奥的名字以延续私人恩怨。

这种篡改证据直接动摇了保留Archive.today的核心理由——其可验证性价值——因为这些存档已无法再被信任为准确的网页快照。维基百科社区达成共识，决定弃用该网站，将其域名列入黑名单，并开始移除或替换超过69.5万个现有链接，转而使用互联网档案馆等替代服务。

维基媒体基金会也曾表示，可能因DDoS代码带来的安全风险进行干预。帕托卡利奥对此决定表示欢迎，指出这凸显了对可靠存档服务的需求。

---

## 21. 葛饰北斋103幅失传素描重见天日（2021）

**原文标题**: The Rediscovery of 103 Hokusai Lost Sketches (2021)

**原文链接**: [https://japan-forward.com/eternal-hokusai-the-rediscovery-of-103-hokusai-lost-sketches/](https://japan-forward.com/eternal-hokusai-the-rediscovery-of-103-hokusai-lost-sketches/)

2021年，据报道，日本著名艺术家葛饰北斋为未出版作品《万物绘本大全图》绘制的103幅此前遗失的草图被重新发现，并由大英博物馆购得。

这些创作于1824-1833年间的草图原属一项宏大计划，后因葛饰北斋在19世纪20年代遭遇的个人困境而被搁置。这批从未回归日本的画作于2019年6月在巴黎拍卖会上重现欧洲，被一位收藏家辨识后，由大英博物馆在艺术基金资助下购藏。

草图题材包罗万象，涵盖日本及世界各地的历史、神话、宗教人物，以及动物与自然景观。作品展现了葛饰北斋广博的知识储备与非凡创造力，其中包含如道教人物周生试图摘月等生动场景。

此次收购使大英博物馆的葛饰北斋藏品总数突破千件。馆方原计划于2021年举办专题展览，并已将高清数字版本发布于网络。此次发现被视为21世纪重要的艺术发现之一。

---

## 22. 一致性扩散语言模型：速度提升高达14倍，质量无损

**原文标题**: Consistency diffusion language models: Up to 14x faster, no quality loss

**原文链接**: [https://www.together.ai/blog/consistency-diffusion-language-models](https://www.together.ai/blog/consistency-diffusion-language-models)

**摘要**

研究人员提出了一致性扩散语言模型（CDLM），这是一种新方法，能在不牺牲输出质量的前提下显著提升扩散语言模型（DLM）的推理速度。DLM通过迭代优化掩码序列生成文本，具备并行生成潜力，但存在两大低效问题：昂贵且无法缓存的全局双向注意力机制，以及需要大量优化步骤。

CDLM通过一种后训练蒸馏方案解决了这些瓶颈。该方法利用从教师DLM收集的轨迹训练学生模型。学生模型采用分块因果注意力掩码，使得已生成块能够进行精确的键值（KV）缓存——这是相对于标准DLM的一项重大效率提升。训练结合了三个目标：匹配教师预测的蒸馏损失、确保块内多步优化稳定的一致性损失，以及保持通用能力的标准去噪损失。

最终得到的模型能够可靠地在每一步生成多个已确定的词元。评估显示，在数学和编程任务上，CDLM相比基线DLM将所需优化步骤减少了4.1至7.7倍。这相当于延迟最高降低14.5倍，吞吐量更高，同时保持了有竞争力的准确性。分块设计使CDLM处于硬件高效的“最佳平衡点”，在小批量处理时比自回归模型具有更好的计算强度，又无需完全双向DLM的极端算力需求。这项工作表明，通过针对性训练，基于扩散的文本生成可以成为自回归模型的高效替代方案。

---

## 23. AI不是同事，它是外骨骼。

**原文标题**: AI is not a coworker, it's an exoskeleton

**原文链接**: [https://www.kasava.dev/blog/ai-as-exoskeleton](https://www.kasava.dev/blog/ai-as-exoskeleton)

本文主张，使用人工智能最有效的方式不是将其作为自主的“同事”，而是作为增强人类能力的“外骨骼”。文章将其与制造业、军事和医疗领域中的物理外骨骼相类比，这些外骨骼通过增强人的力量和耐力来减少伤害和疲劳，而非取代人类。

作者认为，推动完全自主的“AI代理”往往失败，因为AI缺乏人类所拥有的隐含语境和判断力。相反，成功的方法是将复杂工作分解为独立任务，并利用专注的“微代理”来处理重复性、数据密集型的工作——比如分析代码提交或客户记录——同时确保人类牢牢掌握决策权。

文章以Kasava的“产品图谱”为例进行说明，该图谱结合了来自代码库和工作流程的自动化数据分析与人类提供的战略背景。这种共生关系通过增强团队处理信息的能力，帮助他们做出更明智的决策。

最后，文章建议企业停止追求自主AI，转而识别工作流程中的摩擦点，在这些地方利用AI减轻认知负担和错误，从而将人类的创造力和判断力保留给最关键的决定。文章总结道，AI的未来是集成式增强，而非替代。

---

## 24. Web组件：无框架的复兴

**原文标题**: Web Components: The Framework-Free Renaissance

**原文链接**: [https://www.caimito.net/en/blog/2026/02/17/web-components-the-framework-free-renaissance.html](https://www.caimito.net/en/blog/2026/02/17/web-components-the-framework-free-renaissance.html)

本文认为，现代Web开发正通过Web Components经历一场“复兴”。它使开发者能够基于原生浏览器标准（而非React或Vue等框架）构建复杂、响应式的用户界面。

文章强调的核心优势在于**稳定性和避免频繁变动**，因为Web Components建立在长期的Web标准之上，规避了框架不断升级的循环。文中解释了**自定义元素**、**Shadow DOM**以及原生的**自定义事件**系统如何协同工作，以创建模块化、封装性高且松耦合的组件，并实现高效通信。

文章将**AI助手**定位为学习和应用这些标准的有力工具，使实验探索更为便捷。尽管承认成熟框架在拥有深厚专业知识的团队中仍具价值，但文章为Web Components提出了有力论据——尤其适用于新项目或需要长期可维护性的产品——因其简洁性、更小的打包体积以及直接利用平台内置能力的特点。

结论是一种邀请：相关工具和浏览器支持现已普及，为构建持久耐用的现代Web界面提供了一条稳定而优雅的路径。

---

## 25. 在一家初创公司工作四年后，我认可或后悔的基础设施决策（2024）

**原文标题**: Infrastructure decisions I endorse or regret after 4 years at a startup (2024)

**原文链接**: [https://cep.dev/posts/every-infrastructure-decision-i-endorse-or-regret-after-4-years-running-infrastructure-at-a-startup/](https://cep.dev/posts/every-infrastructure-decision-i-endorse-or-regret-after-4-years-running-infrastructure-at-a-startup/)

本文分享了一家初创公司四年间的基础设施决策，分为推荐、遗憾和喜忧参半三类。

**推荐：** 作者强烈推荐使用AWS，因其支持稳定；同时推荐EKS、RDS、ElastiCache和ECR等托管服务以确保可靠性。关键流程上的成功包括采用GitOps、用Slack机器人自动化事故复盘，以及定期进行成本与告警审查。在SaaS工具方面，Notion、Slack、Linear（优于JIRA）和PagerDuty备受好评。此外，优先考虑团队效率而非外部需求的做法也得到肯定。

**遗憾：** 主要遗憾包括使用EKS托管插件（过于死板）、AWS高级支持（费用过高）以及在Datadog/PagerDuty中管理事故复盘（不够灵活）。未能尽早采用身份平台（如Okta）以及允许多个应用共享数据库，带来了巨大的运维负担。对于Datadog的遗憾主要源于其成本模型不适合动态Kubernetes和AI工作负载。

**喜忧参半：** GitHub Actions受到推荐，但需注意自托管运行器的稳定性问题。通过差异进行数据库模式迁移被视为解决难题的好方法。作者对未使用Terraform Cloud并不后悔，因为已成功用Atlantis替代。

核心主题是：关键组件采用托管服务，尽早投资自动化与清晰流程，并选择在功能、简洁性和成本效益之间取得平衡的工具。

---

## 26. 元素的可见光谱

**原文标题**: Visible Spectra of the Elements

**原文链接**: [https://atomic-spectra.net/](https://atomic-spectra.net/)

**《元素可见光谱》摘要**

本文源自atomic-spectra.net，是一份详细阐述化学元素特征可见光光谱的教育资源。其主要目的是说明当原子受热或放电激发时，每种元素如何产生独特的彩色谱线“指纹”。

文中阐释的核心科学原理是：这些谱线对应原子中电子从高能级跃迁至低能级时释放的特定波长光。由于每种元素都具有独特的原子结构，其谱线图案也各不相同，从而使科学家能够识别遥远恒星、实验室样本及各种光源中的元素。

该文章的核心特色是一个全面的交互式周期表。点击任一元素，即可显示其可见发射光谱，通常以暗背景下的彩色谱线序列或强度随波长变化的连续曲线图呈现。对于许多元素，光谱图会与含有该元素的气体放电管所发光线的实拍照片并列展示，建立起直观的视觉关联。

文章强调，仅有部分元素在电磁波谱的*可见光*区（约380-750纳米）具有强谱线。其中突出的典型例子包括氢（具有红、青、紫谱线）、氖（特征性的亮橙红色）和钠（显著的双黄线）。该资源有效地展示了光谱学如何成为化学和天文学中鉴定物质成分的基本工具。

---

## 27. 从`oapi-codegen`在GitHub开源安全基金项目中汲取的经验教训

**原文标题**: Lessons learned from `oapi-codegen`'s time in the GitHub Secure Open Source Fund

**原文链接**: [https://www.jvt.me/posts/2026/02/17/oapi-codegen-github-secure/](https://www.jvt.me/posts/2026/02/17/oapi-codegen-github-secure/)

本文中，**`oapi-codegen`** 的维护者回顾了其项目参与 **GitHub 开源安全基金** 的经历。加入该计划的主要动机是为了加强项目的安全状况，尤其是在维护者计划扩大贡献者群体之际。作为一个广泛使用的、处理 HTTP 请求和敏感数据的代码生成器，确保其安全性至关重要。

该计划提供了专门的时间和资金，使维护者能够专注于安全改进，同时不忽视其他职责。主要成果包括实施安全政策、加强分支保护、使用 `govulncheck` 设置自动漏洞扫描，以及开始制定威胁模型。这些步骤对于安全地引入新的维护者并保护用户免受潜在的供应链风险至关重要。

文章强调了该计划社区层面的价值，它提供了一个可信赖的空间，供维护者与其他项目维护者讨论安全挑战。文章还指出一个具有讽刺意味的现象：维护活动减少暂时降低了合并漏洞代码的风险，但目标始终是既保持安全又积极维护。

总体而言，这次经历非常积极，GitHub 团队通过研讨会和问答环节提供了出色的指导。维护者总结认为，该计划对于主动保护 `oapi-codegen` 的安全并为其未来发展奠定基础具有不可估量的价值。

---

## 28. 肯德基、Nando's等品牌放弃鸡肉福利承诺。

**原文标题**: KFC, Nando's, and others ditch chicken welfare pledge

**原文链接**: [https://www.bbc.co.uk/news/articles/cm2r6jqm042o](https://www.bbc.co.uk/news/articles/cm2r6jqm042o)

包括肯德基、汉堡王和Nando's在内的八大连锁餐饮品牌已退出"更优鸡肉承诺"倡议，该承诺要求停止使用速生鸡品种。这些企业转而加入了行业主导的替代方案——可持续鸡肉论坛。

"更优鸡肉承诺"要求采购生长周期较长的鸡种，动物福利组织认为这类鸡更健康，并指出速生的"弗兰肯鸡"患病率和早亡率更高。餐饮集团及其行业组织英国酒店业协会表示，可持续鸡肉论坛将聚焦改善动物福利，同时解决环境影响问题并满足激增的消费需求。他们认为饲养慢生鸡会产生更多温室气体排放，且英国本土供应不足。

包括动物福利组织在内的批评者谴责此举是削减成本的措施，将利润置于动物福利之上，称可持续鸡肉论坛是"福利洗白"的公关噱头。他们指出若企业愿意签订采购合同，慢生鸡供应本可得到保障。

虽然这些餐饮品牌已转换阵营，但英国多家大型超市及部分咖啡连锁品牌仍坚守"更优鸡肉承诺"。

---

## 29. 关于澄清手册页的说明

**原文标题**: Notes on Clarifying Man Pages

**原文链接**: [https://jvns.ca/blog/2026/02/18/man-pages/](https://jvns.ca/blog/2026/02/18/man-pages/)

本文探讨了如何改进手册页（许多命令行工具的主要文档）的可用性。作者基于编写速查表及参与Git文档编写的经验，总结了现有手册页中几种有效的模式。

主要建议包括：添加类似`rsync`中的**“选项概览”**部分，以便在详细描述前快速浏览；以及像`strace`那样按**类别**而非字母顺序组织选项，以帮助用户发现功能。作者强调了**示例**的价值，指出其受欢迎程度，并建议将其置于显眼位置，甚至可放在页面开头。

文章还主张在手册页内提供更好的导航，提议在HTML版本中加入**目录**和**内部超链接**，正如Git网站已实现的那样。文中赞扬了使用**表格**（如`man ascii`）清晰呈现参考数据的方式，并提及**`curl`**手册页为每个选项提供示例的做法。

最后，作者提及了替代文档系统，如GNU的**info手册**及社区工具**tldr.sh**，它们侧重于实用示例。核心主题是通过更清晰的摘要、更好的组织和实用的示例，来增强传统且受限的手册页格式，使信息查找更快捷、更轻松。

---

## 30. 通过iokit读取Apple Silicon MacBook上未公开的MEMS加速度计

**原文标题**: Reading the undocumented MEMS accelerometer on Apple Silicon MacBooks via iokit

**原文链接**: [https://github.com/olvvier/apple-silicon-accelerometer](https://github.com/olvvier/apple-silicon-accelerometer)

本文详细介绍了一种访问苹果硅芯片MacBook（M1-M4）中未公开的MEMS加速度计的方法。该传感器由传感器处理单元（SPU）管理，未通过任何公共API公开。作者的项目通过IOKit的HID功能直接与`AppleSPUHIDDevice`交互，以约800赫兹的频率读取原始三轴加速度数据。

核心流程包括在IOKit注册表中定位设备、使用`IOHIDDeviceCreate`打开设备，并注册异步回调以接收22字节的HID报告。加速度值（以重力加速度g为单位）从特定字节偏移量以小端整数形式提取，并通过65,536进行缩放。

该项目包含一个演示，利用冲击心动描记术，通过分析用户手腕放在笔记本机身上时传递的振动来检测心跳。作者强调这是实验性项目，不适用于医疗用途，且由于苹果硅芯片的安全限制需要root权限。代码仅在MacBook Pro M3 Pro上测试过，可能随未来macOS更新而失效。项目采用MIT许可证发布。

---

