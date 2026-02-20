# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-20.md)

*最后自动更新时间: 2026-02-20 20:35:50*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 2 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 3 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 4 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 5 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 6 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 7 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 8 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 9 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 10 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 11 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 12 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 13 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 14 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 15 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 16 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 17 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 18 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 19 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 20 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 21 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 22 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 23 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 24 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 25 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 26 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 27 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 28 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 29 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 30 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 31 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 32 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 33 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 34 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 35 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 36 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 37 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 38 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 39 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 40 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 41 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 42 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 43 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 44 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 45 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 46 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 47 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 48 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 49 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 50 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 51 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 52 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 53 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 54 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 55 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 56 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 57 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 58 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 59 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 60 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 61 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 62 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 63 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 64 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 65 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 66 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 67 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 68 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 69 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 70 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 71 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 72 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 73 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 74 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 75 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 76 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 77 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 78 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 79 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 80 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 81 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 82 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 83 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 84 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 85 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 86 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 87 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 88 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 89 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 90 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 91 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 92 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 93 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 94 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 95 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 96 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 97 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 98 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 99 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 100 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 101 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 102 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 103 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 104 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 105 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 106 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 107 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 108 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 109 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 110 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 111 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 112 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 113 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 114 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 115 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 116 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 117 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 118 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 119 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 120 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 121 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 122 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 123 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 124 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 125 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 126 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 127 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 128 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 129 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 130 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 131 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 132 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 133 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 134 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 135 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 136 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 137 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 138 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 139 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 140 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 141 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 142 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 143 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 144 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 145 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 146 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 147 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 148 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 149 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 150 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 151 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 152 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 153 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 154 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 155 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 156 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 157 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 158 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 159 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 160 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 161 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 162 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 163 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 164 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 165 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 166 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 167 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 168 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 169 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 170 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 171 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 172 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 173 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 174 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 175 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 176 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 177 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 178 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 179 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 180 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 181 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 182 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 183 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 184 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 185 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 186 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 187 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 188 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 189 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 190 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 191 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 192 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 193 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 194 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 195 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 196 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 197 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 198 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 199 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 200 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 201 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 202 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 203 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 204 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 205 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 206 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 207 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 208 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 209 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 210 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 211 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 212 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 213 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 214 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 215 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 216 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 217 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 218 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 219 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 220 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 221 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 222 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 223 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 224 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 225 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 226 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 227 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 228 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 229 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 230 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 231 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 232 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 233 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 234 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 235 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 236 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 237 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 238 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 239 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 240 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 241 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 242 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 243 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 244 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 245 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 246 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 247 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 248 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 249 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 250 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 251 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 252 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 253 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 254 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 255 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 256 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 257 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 258 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 259 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 260 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 261 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 262 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 263 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 264 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 265 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 266 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 267 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 268 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 269 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 270 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 271 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 272 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 273 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 274 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 275 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 276 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 277 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 278 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 279 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 280 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 281 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 282 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 283 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 284 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 285 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 286 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 287 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 288 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 289 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 290 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 291 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 292 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 293 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 294 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 295 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 296 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 297 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 298 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 299 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 300 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 301 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 302 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 303 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 304 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 305 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 306 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 307 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 308 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 309 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 310 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 311 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 312 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 313 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 314 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 315 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 316 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 317 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 318 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 319 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 320 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 321 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 322 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 323 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 324 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 325 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 326 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 327 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 328 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 329 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 330 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 331 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 332 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 333 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 334 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 335 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
