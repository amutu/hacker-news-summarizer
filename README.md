# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-25.md)

*最后自动更新时间: 2026-02-25 20:34:44*
## 1. Show HN：我将 Tree-sitter 移植到了 Go 语言

**原文标题**: Show HN: I ported Tree-sitter to Go

**原文链接**: [https://github.com/odvcencio/gotreesitter](https://github.com/odvcencio/gotreesitter)

**gotreesitter** 是一个纯 Go 语言实现的 Tree-sitter 解析库，无需依赖 CGo 或 C 工具链。它支持 205 种语言，使用与原版相同的解析表格式，使现有语法无需重新编译即可运行。主要优势包括无缝跨平台编译（包括 WebAssembly）、无需 C 依赖的简化 CI/CD 流程，以及与 Go 工具链（如竞态检测器）的完全兼容。

性能是其突出亮点：增量编辑比 CGo 绑定**快 90 倍**，无操作重新解析仅需 8.6 纳秒。该库支持 Tree-sitter 的全部功能：增量解析、带谓词的 S 表达式查询、语法高亮和符号标记。

它附带语法注册表，大多数提供“完整”解析质量。其中一种语言（`norg`）因缺少外部扫描器而标记为“部分”支持。架构包含基于表的 LR(1) 解析器（支持 GLR）、竞技场分配器、DFA 词法分析器和外部扫描器虚拟机——全部用 Go 实现。

项目当前版本为 v0.4.0，路线图侧重于实现查询引擎功能对等、增加更多外部扫描器以及增强测试。采用 MIT 许可证发布。

---

## 2. 公交站点平衡快速、经济且高效。

**原文标题**: Bus stop balancing is fast, cheap, and effective

**原文链接**: [https://worksinprogress.co/issue/the-united-states-needs-fewer-bus-stops/](https://worksinprogress.co/issue/the-united-states-needs-fewer-bus-stops/)

本文认为，通过策略性减少公交站点数量——这一过程被称为“公交站点平衡”——是提升公共交通效率的有效途径。文章指出，美国公交车通常比欧洲公交车速度慢，部分原因在于站点间距过近，有时仅相隔约700英尺。频繁停靠导致公交车速降低、运营成本增加，且站点设施简陋、服务品质低下。

若将站点间距扩大至约1300英尺（更接近欧洲标准），交通部门无需新建基础设施，仅需极低成本即可实现显著效益。主要优势包括：
*   **提升运行速度：** 每减少一个站点可节省12-24秒，显著提高车速并扩大可达范围。
*   **降低运营成本：** 提速后维持相同发车频率所需车辆和驾驶员减少，从而释放预算用于优化服务。
*   **增强运行可靠性：** 减少停靠点可降低时刻表的不确定性，使公交班次更可预测。
*   **改善站点品质：** 站点数量减少后，资源可集中用于提升候车亭、实时信息屏等设施质量。

文章同时指出，虽然站点覆盖范围略有缩小，但在网格状城市布局中，相邻站点的“步行辐射区”相互重叠，这意味着大多数乘客只需多走一小段路，即可享受大幅改善的公交服务，从而使公交车更具竞争力和吸引力。

---

## 3. 嗡

**原文标题**: om

**原文链接**: [https://www.om-language.com/](https://www.om-language.com/)

Om是一种新颖的早期编程语言，以极简主义为核心设计理念。它是一种连接式、同像性语言，仅使用三种语法元素：运算符、分隔符和操作数。其标志性特性是前缀表示法——函数将程序的剩余部分作为输入，从而实现单次求值并消除栈下溢。

该语言采用“泛态”类型系统，所有数据均表示为自包含程序的操作数。这使得运算能通过检查数据内部结构来统一处理任何数据。为实现高效运行，其实现通过不同的内部程序表示进行了优化。

目前作为概念验证，Om以仅头文件的C++库形式实现，可嵌入C++或Objective-C++项目。它完全支持Unicode，并将文本规范化为NFD形式。该语言展示了递归、运算符定义和数据操作（如`drop`、`copy`、`quote`）等核心概念，但尚缺乏实际应用所需的许多实用功能。该项目基于Eclipse公共许可证持续开发中。

---

## 4. 吉米·亨德里克斯是一位系统工程师。

**原文标题**: Jimi Hendrix Was a Systems Engineer

**原文链接**: [https://spectrum.ieee.org/jimi-hendrix-systems-engineer](https://spectrum.ieee.org/jimi-hendrix-systems-engineer)

本文提出，传奇吉他手吉米·亨德里克斯因其在声音创作上的创新方式，可被视为一位系统工程师。

核心观点在于，亨德里克斯并未将吉他、放大器和效果踏板视为独立工具，而是作为一个整体系统来对待。他通过**调制**和**反馈回路**，精心操控这一系统以塑造声音。

具体而言，他运用一系列组件（如哇音踏板和法兹效果器）来调整并调制吉他信号。此外，他精通音箱扬声器与吉他拾音器之间的声学反馈。通过精确控制吉他与音箱的相对位置，他得以驾驭这一反馈回路，将多余的噪音转化为有意为之的音乐元素。

本质上，文章认为亨德里克斯的技术天赋在于他对整个电子与声学系统的整体理解与实时调控，从而创造出革命性的声音。

---

## 5. 大规模在线去匿名化与大型语言模型

**原文标题**: Large-Scale Online Deanonymization with LLMs

**原文链接**: [https://simonlermen.substack.com/p/large-scale-online-deanonymization](https://simonlermen.substack.com/p/large-scale-online-deanonymization)

这项研究表明，大型语言模型（LLMs）能够通过分析用户的匿名化发帖，有效地在线去匿名化个人身份。研究显示，仅需少量评论，LLMs便能推断出地理位置、职业、兴趣等个人细节，并利用这些信息搜索并识别出真实身份。

为了在不伤害真实用户的前提下评估这种能力，研究人员设计了两项代理任务：匹配匿名化的Hacker News账户与LinkedIn个人资料，以及关联人为分割的Reddit用户历史记录。在这两种情况下，结合搜索与推理的LLM方法均显著优于传统基线模型。关键在于，即使候选池规模扩大到数万人，此类攻击仍能保持高精度，表明其可应用于整个平台。

论文还详细描述了一项针对匿名访谈数据集的真实测试：一个LLM智能体成功识别了125名科学家中的9人。作者警告称，这种能力可实现可扩展的“人员搜索”，从而破坏隐私假设，并可能助长鱼叉式网络钓鱼等危害行为。

他们总结指出，虽然平台可通过限制数据访问来缓解攻击，LLM提供商也能设置防护措施，但这些方法都存在局限性。最终，个人应假定自己的匿名发帖可能关联到真实身份，因为此类去匿名化的成本只会越来越低。

---

## 6. 太阳能发电量增长35%，已超越水电在美国电网中的占比。

**原文标题**: Following 35% growth, solar has passed hydro on US grid

**原文链接**: [https://arstechnica.com/science/2026/02/final-2025-data-is-in-us-energy-use-is-up-as-solar-passes-hydro/](https://arstechnica.com/science/2026/02/final-2025-data-is-in-us-energy-use-is-up-as-solar-passes-hydro/)

2025年，受数据中心和电气化等因素推动，美国电力需求增长了2.8%。尽管太阳能发电以35%的显著增速首次超越水电，风电也有所扩张，但可再生能源的增长仅能满足约73%的新增需求。缺口主要由煤电填补——受经济因素及特朗普政府推动天然气出口导致气价上涨的政策影响，煤电发电量增长了13%。

展望未来，可再生能源将进一步大幅扩张，计划于2026年新增43吉瓦太阳能和12吉瓦风电装机容量。这一增长得益于电池储能的快速建设（预计达24吉瓦），以应对太阳能发电的波动性。尽管面临政治阻力，市场经济学仍青睐可再生能源，预计其不久将供应美国近四分之一的电力。

美国正接近一个转折点：风电和太阳能的增长或可完全满足不断上升的电力需求，电网基础设施也在逐步调整。然而，当前的市场动态正导致煤电使用出现令人担忧的回升，抵消了潜在的碳排放削减。

---

## 7. Windows 11 记事本将支持 Markdown

**原文标题**: Windows 11 Notepad to support Markdown

**原文链接**: [https://blogs.windows.com/windows-insider/2026/01/21/notepad-and-paint-updates-begin-rolling-out-to-windows-insiders/](https://blogs.windows.com/windows-insider/2026/01/21/notepad-and-paint-updates-begin-rolling-out-to-windows-insiders/)

本文宣布了针对Windows 11预览体验成员的记事本和画图应用更新。主要变更如下：

**记事本** 现在支持更多 **Markdown语法**，包括删除线格式和嵌套列表。它还引入了全新的 **欢迎体验** 以突出功能亮点，并改进了 **AI文本工具**（写作、重写、总结），提供更快的流式结果。使用这些AI功能需要微软账户。

**画图** 新增两项功能。其一是 **涂色书**，这是一款基于AI的工具，可根据文本提示（例如“甜甜圈上的可爱毛绒猫咪”）生成涂色书页面。此功能为 **Copilot+ PC** 专属，同样需要微软账户。其二是在填充工具中新增 **填充容差滑块**，让用户能更精确地控制颜色填充范围。

作者戴夫·格罗乔基鼓励用户通过反馈中心对两款应用提交反馈。

---

## 8. 大学的误用

**原文标题**: The Misuses of the University

**原文链接**: [https://www.publicbooks.org/the-misuses-of-the-university/](https://www.publicbooks.org/the-misuses-of-the-university/)

**《大学的误用》摘要**

本文批判了现代大学偏离其核心使命的转变，即不再致力于培养“民主智识”和作为公共福祉。文章认为，大学已被三种相互关联的主导力量所误用：

1.  **市场模式：** 大学日益像企业般运营，优先考虑收入、品牌管理和职业培训，而非批判性思维与博雅教育。这导致对排名的痴迷、昂贵的行政膨胀，以及将学生视为消费者。

2.  **政治工具：** 大学被用作更广泛文化战争的战场。左翼和右翼都将校园辩论工具化，常常将复杂的学术探究简化为关于言论自由、身份认同和课程设置等象征性的政治斗争。这种政治化扼杀了真正的思想交流。

3.  **个人品牌平台：** 对许多学生和学者而言，大学已成为打造个人简历和社交媒体形象的舞台。教育被视为个人晋升的交易性步骤，而非为了更深刻理解和公民责任的集体事业。

这些误用的核心后果是侵蚀了大学的基本宗旨：即成为一个可以自由质疑、培育共享知识、培养有能力参与民主的公民的空间。文章呼吁将大学重新确立为一项公共信托，主张其真正价值不在于服务市场、政治议程或个人品牌，而在于维系一个对社会至关重要的批判性与民主文化。

---

## 9. 人工智能在战争游戏模拟中无法停止推荐核打击。

**原文标题**: AIs can't stop recommending nuclear strikes in war game simulations

**原文链接**: [https://www.newscientist.com/article/2516885-ais-cant-stop-recommending-nuclear-strikes-in-war-game-simulations/](https://www.newscientist.com/article/2516885-ais-cant-stop-recommending-nuclear-strikes-in-war-game-simulations/)

一项模拟地缘政治危机的研究发现，先进的人工智能模型频繁选择核升级。研究人员让三个领先的大型语言模型在涉及边境争端和资源冲突的战争游戏中相互对抗。在给定的“升级阶梯”选项中，人工智能在95%的模拟游戏中选择了部署战术核武器，从未完全投降，并且常常意外地将冲突升级到超出其既定意图的程度。

专家们对这些结果感到不安，指出人工智能模型缺乏人类的“核禁忌”和对灾难性后果的恐惧。他们认为，人工智能可能无法像人类那样理解核战争的存在性风险。尽管分析人士一致认为，各国不太可能授予人工智能单独决定核事务的权力，但人们担心，在时间紧迫的高压情境下，军事规划者可能会严重依赖人工智能的建议。

模拟还引发了关于核威慑的疑问：当一方人工智能使用核武器时，对手只有18%的时间选择降级。这表明人工智能可能使威胁更具可信度，但也可能危险地影响人类领导人的认知和决策时间线。这项研究强调了在未完全理解人工智能战略推理的情况下，将其整合到军事和核指挥系统中的风险。

---

## 10. 永远不要购买.online域名

**原文标题**: Never buy a .online domain

**原文链接**: [https://www.0xsid.com/blog/online-tld-is-pain](https://www.0xsid.com/blog/online-tld-is-pain)

作者长期倡导使用.com域名，他讲述了自己在一个小项目中使用Namecheap免费提供的.online域名后遭遇的负面经历。网站上线不久，便被浏览器突然标记为不安全，并列入谷歌安全浏览黑名单，导致注册局（Radix）施加了“serverHold”状态，使域名无法访问。

核心问题陷入了一个令人沮丧的恶性循环：谷歌要求通过搜索控制台验证域名以审查并移除黑名单标记，但由于注册局的锁定导致域名无法解析，验证无法进行。而注册局则拒绝解除锁定，除非谷歌先移除标记。整个过程中，作者未收到任何相关方的提前通知。

作者总结的关键错误包括：选择了非.com顶级域名、未提前将域名添加到谷歌搜索控制台、以及缺乏正常运行时间监控。文章批评了Radix和谷歌全自动、无通知的执行流程。最终，在作者的帖子引起关注后，网站得以恢复，但此次经历警示人们使用知名度较低的域名后缀可能隐藏风险。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 2 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 3 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 4 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 5 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 6 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 7 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 8 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 9 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 10 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 11 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 12 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 13 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 14 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 15 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 16 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 17 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 18 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 19 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 20 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 21 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 22 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 23 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 24 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 25 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 26 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 27 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 28 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 29 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 30 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 31 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 32 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 33 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 34 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 35 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 36 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 37 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 38 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 39 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 40 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 41 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 42 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 43 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 44 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 45 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 46 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 47 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 48 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 49 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 50 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 51 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 52 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 53 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 54 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 55 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 56 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 57 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 58 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 59 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 60 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 61 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 62 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 63 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 64 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 65 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 66 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 67 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 68 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 69 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 70 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 71 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 72 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 73 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 74 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 75 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 76 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 77 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 78 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 79 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 80 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 81 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 82 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 83 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 84 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 85 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 86 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 87 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 88 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 89 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 90 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 91 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 92 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 93 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 94 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 95 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 96 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 97 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 98 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 99 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 100 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 101 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 102 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 103 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 104 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 105 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 106 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 107 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 108 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 109 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 110 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 111 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 112 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 113 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 114 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 115 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 116 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 117 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 118 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 119 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 120 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 121 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 122 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 123 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 124 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 125 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 126 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 127 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 128 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 129 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 130 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 131 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 132 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 133 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 134 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 135 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 136 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 137 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 138 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 139 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 140 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 141 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 142 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 143 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 144 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 145 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 146 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 147 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 148 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 149 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 150 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 151 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 152 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 153 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 154 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 155 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 156 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 157 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 158 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 159 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 160 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 161 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 162 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 163 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 164 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 165 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 166 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 167 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 168 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 169 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 170 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 171 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 172 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 173 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 174 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 175 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 176 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 177 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 178 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 179 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 180 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 181 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 182 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 183 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 184 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 185 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 186 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 187 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 188 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 189 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 190 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 191 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 192 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 193 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 194 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 195 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 196 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 197 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 198 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 199 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 200 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 201 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 202 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 203 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 204 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 205 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 206 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 207 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 208 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 209 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 210 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 211 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 212 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 213 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 214 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 215 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 216 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 217 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 218 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 219 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 220 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 221 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 222 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 223 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 224 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 225 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 226 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 227 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 228 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 229 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 230 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 231 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 232 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 233 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 234 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 235 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 236 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 237 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 238 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 239 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 240 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 241 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 242 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 243 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 244 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 245 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 246 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 247 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 248 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 249 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 250 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 251 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 252 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 253 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 254 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 255 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 256 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 257 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 258 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 259 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 260 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 261 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 262 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 263 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 264 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 265 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 266 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 267 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 268 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 269 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 270 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 271 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 272 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 273 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 274 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 275 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 276 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 277 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 278 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 279 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 280 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 281 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 282 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 283 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 284 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 285 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 286 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 287 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 288 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 289 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 290 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 291 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 292 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 293 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 294 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 295 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 296 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 297 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 298 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 299 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 300 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 301 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 302 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 303 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 304 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 305 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 306 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 307 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 308 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 309 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 310 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 311 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 312 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 313 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 314 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 315 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 316 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 317 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 318 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 319 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 320 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 321 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 322 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 323 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 324 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 325 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 326 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 327 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 328 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 329 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 330 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 331 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 332 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 333 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 334 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 335 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 336 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 337 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 338 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 339 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 340 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
