# Hacker News 热门文章摘要 (2026-02-25)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 我向Claude要了37,500个随机名字，结果它不停地生成马库斯。

**原文标题**: I asked Claude for 37,500 random names, and it can't stop saying Marcus

**原文链接**: [https://github.com/benjismith/ai-randomness](https://github.com/benjismith/ai-randomness)

这项实验测试了Claude AI模型生成随机姓名的能力，结果显示出其严重缺乏真正的随机性。当在不同模型和提示下进行37,500次“随机选取一个姓名”的测试时，AI表现出强烈且一致的偏见。

最引人注目的发现是对“马库斯”这个名字的压倒性偏好，该名字被选中4,367次（占男性姓名的23.6%）。在一次测试中，Opus 4.5模型在100次测试中全部返回了“马库斯”。研究发现，九种不同的模型和提示组合产生了零熵值，意味着它们的输出完全确定，毫无随机性可言。

虽然更复杂的提示使生成独特姓名的数量翻倍，但这仅仅引入了不同的偏见，而非真正的随机性。研究人员还发现，使用随机词作为种子比在提示中添加随机噪声更能有效增加输出多样性。

这项耗资27.58美元API费用的实验揭示了当前大语言模型在处理随机性请求时的根本局限：它们往往默认从训练数据中输出可预测的高概率结果，而非生成多样化结果。

---

## 12. 如何折叠《银翼杀手》折纸独角兽（1996年版）

**原文标题**: How to fold the Blade Runner origami unicorn (1996)

**原文链接**: [https://web.archive.org/web/20011104015933/www.linkclub.or.jp/~null/index_br.html](https://web.archive.org/web/20011104015933/www.linkclub.or.jp/~null/index_br.html)

**《如何折出〈银翼杀手〉中的折纸独角兽（1996年）》摘要**

这篇1996年的存档文章提供了逐步指导，教你如何折出电影《银翼杀手》中标志性的折纸独角兽。该指南基于电影最终剪辑版中实际使用的道具——该道具采用的是日本折纸大师川畑文昭设计的市售折纸样式。

文章通过一系列图示和文字详细说明了折叠过程。它从一张正方形纸开始，引导折纸者先完成一个传统的“鸟形基础”，然后将其改造成独角兽的独特形态：长而带角的头部、强壮的身体和四条腿。文章特别强调了角和颈部的塑形，以还原电影中那个极具辨识度的轮廓。

作者指出，尽管说明清晰，但该模型属于中等难度，需要在多个复杂折叠步骤中保持精准，尤其是头部和腿部。最终成品是一个站立的折纸独角兽，与电影中的道具高度相似——这个道具在影片叙事中是一个强有力的象征。本文旨在保存这一特定折叠顺序，以复刻这段电影历史的独特片段。

---

## 13. Trellis AI（YC W24）正在招聘部署主管，以加速药物获取进程。

**原文标题**: Trellis AI (YC W24) is hiring deployment lead to accelerate medication access

**原文链接**: [https://www.ycombinator.com/companies/trellis-ai/jobs/7ZlvQkN-lead-deployment-strategist](https://www.ycombinator.com/companies/trellis-ai/jobs/7ZlvQkN-lead-deployment-strategist)

Trellis AI（YC W24）是一家专注于构建AI智能体以自动化医疗文书工作（如预授权）的初创公司，现招聘一名首席部署策略师。该职位为远程工作（限美国），负责在复杂的企业医疗环境中部署公司的技术解决方案。

理想的候选人应具备高度条理性、注重细节，并拥有3年以上面向客户的技术部署、咨询或实施经验。他们需要出色的项目管理能力、技术熟练度，以及将AI功能转化为客户可衡量的商业影响的能力。

Trellis AI源自斯坦福AI实验室，每年在全美50个州处理数十亿美元的治疗业务。公司声称能为客户缩短90%以上的治疗时间。该职位薪资范围为8万至18万美元，提供与《财富》500强客户直接合作的机会，并在近期收入增长十倍的快速成长初创企业中享有重要股权。

---

## 14. GNU Texmacs

**原文标题**: GNU Texmacs

**原文链接**: [https://www.texmacs.org/tmweb/home/welcome.en.html](https://www.texmacs.org/tmweb/home/welcome.en.html)

**GNU TeXmacs** 是一款自由开源的科研文档编辑器，作为 GNU 项目的一部分开发。其核心目标是通过用户友好的所见即所得界面，帮助用户创建高质量的科技文档——包括文本、复杂数学公式和图形。

主要特性包括：
*   **高质量排版：** 使用独立的渲染引擎（不基于 TeX/LaTeX），生成适合印刷或演示的专业格式文档。
*   **多样化内容支持：** 统一编辑文本、数学公式、图形、交互式内容和幻灯片。
*   **软件集成：** 可作为多种计算系统（如计算机代数、统计等）的前端界面。
*   **跨平台与可扩展性：** 支持 Unix、macOS 和 Windows 系统。用户可通过 Scheme 编程语言创建新的文档样式并扩展功能。
*   **格式灵活性：** 文档可保存为原生格式、XML 或 Scheme 格式，并导出为 PDF、PostScript、TeX/LaTeX 及 HTML/MathML。

总之，TeXmacs 是一个功能全面的独立编辑平台，专为需要在直观可视化环境中进行数学排版和技术文档编写的科研人员与学者设计。

---

## 15. Claude代码远程控制

**原文标题**: Claude Code Remote Control

**原文链接**: [https://code.claude.com/docs/en/remote-control](https://code.claude.com/docs/en/remote-control)

**Claude Code 远程控制**允许 Pro 和 Max 计划用户从其他设备（手机、浏览器）连接到本地 Claude Code 会话，同时所有工作仍保留在自己的机器上。它能在设备间同步对话，并在中断后自动重连。

**主要功能：**
- 完全本地运行——您的文件、工具和 MCP 服务器保持可访问状态。
- 通过终端中的 `claude remote-control` 命令或现有会话内的 `/remote-control` 启动会话。
- 使用会话 URL、二维码，或在 Claude 应用或 claude.ai/code 中的会话列表进行远程连接。
- 每个本地实例仅支持一个远程会话。

**要求与限制：**
- 需要 Pro/Max 订阅，且需事先通过 `/login` 完成身份验证。
- 终端进程必须保持开启；关闭它将结束会话。
- 网络中断约 10 分钟后会话将超时。

**远程控制与网页版对比：**
使用远程控制可在远程继续本地工作。使用网页版 Claude Code 则适用于无需本地设置的云端任务。所有流量均通过 Anthropic 的 API 进行 TLS 加密保护。

---

## 16. Attyx – 采用Zig语言编写的微型快速GPU加速终端模拟器

**原文标题**: Attyx – tiny and fast GPU-accelerated terminal emulator written in Zig

**原文链接**: [https://github.com/semos-labs/attyx](https://github.com/semos-labs/attyx)

Attyx是一款用Zig编写的GPU加速终端模拟器，注重正确性、清晰度和确定性。其核心是一个纯粹的状态机，相同的输入字节总能产生相同的网格状态。架构严格分离了解析、状态管理和渲染，确保每个功能都能在无窗口或PTY的无头模式下进行测试。

它支持基本的终端功能，如VT序列、SGR颜色、备用屏幕、超链接、鼠标报告和括号粘贴。渲染器在macOS上使用Metal，在Linux上使用OpenGL以提升性能。配置通过TOML文件和命令行标志管理，支持字体、单元格大小、主题、滚动缓冲区、窗口透明度/模糊等选项，并可在运行时重新加载。

Attyx采用增量式构建和测试，拥有超过190项无头黄金快照测试的完整套件。路线图展示了按里程碑推进的系统化开发流程，核心功能、用户界面和平台支持已完成。该项目基于MIT许可证开源。

---

## 17. HN新用户更倾向于使用破折号

**原文标题**: New accounts on HN more likely to use em-dashes

**原文链接**: [https://www.marginalia.nu/weird-ai-crap/hn/](https://www.marginalia.nu/weird-ai-crap/hn/)

作者怀疑Hacker News（HN）上的机器人账号有所增加，并通过对比新账户评论与近期一般评论展开调查。他们对两类各约700条评论的分析显示了两项统计学上的显著差异：

1.  新注册账户的评论**包含长破折号、箭头等符号的可能性高出近10倍**（占比17.47%，而老账户仅1.83%）。
2.  这些评论**提及人工智能和大语言模型（AI/LLM）的频率也更高**（占比18.67%，老账户为11.8%）。

作者认为这些特征——尤其是特殊符号的过度使用——可能是自动化或低质量账户的潜在标志，并暗示此类账号的涌入正在改变平台的氛围。

---

## 18. Racket v9.1

**原文标题**: Racket v9.1

**原文链接**: [https://blog.racket-lang.org/2026/02/racket-v9-1.html](https://blog.racket-lang.org/2026/02/racket-v9-1.html)

Racket v9.1 于2026年2月23日发布，为语言生态系统引入了多项关键改进。一项重要更新允许文档系统按语言族进行专门化，从而提升了Rhombus等语言用户的使用体验。DrRacket集成开发环境在视觉上得到优化，包括曲线语法箭头和更完善的配色方案选择。

重要的语言及库更新包括：为`for`表单新增`#:on-length-mismatch`处理机制；通过`exn-classify-errno`实现可移植的错误分类；以及新增用于访问过时加密算法的`openssl/legacy`库。Racket BC实现现已在字符操作行为上与Racket CS保持一致，虽略有性能折损，但确保了统一性。

其他改进涵盖结构类型创建、共享库的捆绑配置、通过`system-type`增强平台报告功能，以及Typed Racket类型检查的优化。本次发布还包含大量错误修复和文档更新。

由二十余名贡献者组成的开发团队建议用户在升级后运行`raco pkg migrate 9.0`命令。Racket始终是社区驱动的开源项目，并持续欢迎新的贡献者加入。

---

## 19. 基于文本的谷歌路线指引

**原文标题**: Text-Based Google Directions

**原文链接**: [https://gdir.telae.net/](https://gdir.telae.net/)

本文介绍了**基于文本的谷歌路线**，这是一款极简网络服务，专为技术条件有限的用户提供公共交通路线指引。它特别针对功能手机用户、终端浏览器用户或低带宽网络用户，且无需JavaScript支持。

该服务提供**完整版**或**基础版**界面以适应不同设备。关键操作提示是：使用国家选择器并在起点和终点位置包含城市名称，以避免“未找到路线”的错误。文中还特别提示Opera Mini用户开启“移动端视图”以获得最佳体验。

文章最后说明，该服务通过PayPal接受自愿捐赠支持，并附有相关链接区域。

---

## 20. Show HN: Django控制室——在Django管理界面中集成所有工具

**原文标题**: Show HN: Django Control Room – All Your Tools Inside the Django Admin

**原文链接**: [https://github.com/yassi/dj-control-room](https://github.com/yassi/dj-control-room)

**Django控制室**是一个集中式仪表板，它将各种管理和监控工具直接集成到Django管理界面中。它作为一个插件系统运行，开发者可以安装预构建的“面板”来处理常见任务，例如检查Redis连接、监控缓存性能、浏览URL模式以及跟踪Celery任务。

主要特性包括具有暗色模式的现代化响应式用户界面、防止恶意插件的安全包验证系统，以及与现有Django管理侧边栏的无缝集成。通过pip即可轻松安装，配置只需将应用及其面板添加到`INSTALLED_APPS`和项目的URL模式中。

该项目提供了多个官方面板（Redis、缓存、URL、Celery），更多面板（信号、错误监控）正在开发中。它还提供了一个cookiecutter模板，以简化自定义面板的创建。访问权限仅限于Django工作人员用户，确保了安全性。总体而言，Django控制室旨在将开发和运维工具整合到一个统一、连贯的界面中，并置于熟悉的Django管理环境内。

---

## 21. Scipy.stats. Chatterjeexi

**原文标题**: Scipy.stats. Chatterjeexi

**原文链接**: [https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.chatterjeexi.html](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.chatterjeexi.html)

`scipy.stats.chatterjeexi` 函数用于计算 xi 相关系数，这是一种衡量两个变量之间关联性的指标，即使对于非单调关系也有效。与传统相关性度量不同，xi 值在变量独立时趋近于零，在强关联时趋近于一。

主要参数包括 `x` 和 `y`（输入数组）、用于指定计算方向的 `axis`，以及用于 p 值计算的 `method`（渐近法或基于置换法）。当因变量连续时，`y_continuous` 标志可优化性能。该函数返回一个包含相关性统计量及其 p 值的 `SignificanceResult` 对象。

值得注意的是，该统计量在设计上是不对称的，侧重于判断 `y` 是否为 `x` 的函数。当前函数对 `x` 中的并列值处理方式较为随意；文档建议按照原始研究的推荐，添加少量随机噪声以随机打破并列值。

该函数支持数组 API 标准，可与 PyTorch 和 JAX 等库兼容。示例展示了其在完全相关数据和含噪声数据上的应用，说明了系数如何随噪声增加而减小，以及如何通过随机化处理 `x` 中的并列值。

---

## 22. Show HN: Django-xbench – Django 慢端点聚合工具

**原文标题**: Show HN: Django-xbench – slow endpoint aggregation for Django

**原文链接**: [https://github.com/yeongbin05/django-xbench](https://github.com/yeongbin05/django-xbench)

**django-xbench** 是一款轻量级 Django 中间件，用于请求性能分析，通过将请求时间分解为数据库处理与应用程序处理两部分，帮助开发者识别性能瓶颈。它配置简单——只需添加中间件——且无需外部代理或 SaaS 依赖即可运行。

主要功能包括测量总请求时间、数据库时间和应用程序时间（通过总时间减去数据库时间计算得出），同时统计数据库查询次数。它会在 HTTP 响应中添加 `Server-Timing` 和 `X-Bench-Queries` 头部，方便在浏览器开发者工具中查看。可选日志功能以可读格式提供每个请求的指标。

一项实验性功能可在每个进程中聚合内存中的慢速端点，并通过一个简单的仪表板按累积延迟（“损害”）查看最慢的端点。该仪表板仅供内部调试使用，不应公开暴露。

配置方式简单直观，通过设置中的 `XBENCH` 字典即可启用/禁用中间件、日志记录和慢速端点聚合功能。该工具兼容 Python 3.9+ 和 Django 3.2+，并包含一个用于测试的演示项目。其隐私优先的设计确保仅暴露时间统计和查询次数，不泄露查询内容。

---

## 23. 美国命令外交官抵制数据主权倡议

**原文标题**: US orders diplomats to fight data sovereignty initiatives

**原文链接**: [https://www.reuters.com/sustainability/boards-policy-regulation/us-orders-diplomats-fight-data-sovereignty-initiatives-2026-02-25/](https://www.reuters.com/sustainability/boards-policy-regulation/us-orders-diplomats-fight-data-sovereignty-initiatives-2026-02-25/)

**《美国下令外交官抵制数据主权倡议》摘要**

据路透社报道，美国国务院已指示其全球外交使团积极抵制外国推动的"数据主权"倡议。这份详细阐述于外交电报的政策指令，旨在保护美国科技巨头免受可能割裂互联网、阻碍国际数据流动的限制性法律法规影响。

美方的核心论点是，数据主权规则——即要求涉及一国公民或其数字基础设施的数据必须在境内存储和处理——往往是伪装成隐私与安全政策的保护主义措施。美国辩称这些规则会增加企业成本、扼杀创新，并可能被用于国内政治监控。

此次外交攻势特别针对印度、南非和巴西等国的政策，这些国家正在考虑或已实施此类数据本地化要求。美国外交官的任务是游说外国政府、与行业团体接触，并主张采用具备健全法律保障的跨境替代框架（如美国主导的"全球跨境隐私规则"），对隐私保护和经济增长都更为有效。

这场行动反映了美国在贸易和外交政策上的重要优先事项，与其主要云计算和互联网公司的利益一致。此举使美国直接站在了日益增长的全球趋势的对立面——即各国寻求加强对自身数字生态系统的控制，这为围绕全球互联网治理的持续国际争端埋下了伏笔。

---

## 24. Show HN：Linex——每日挑战：在会反击的棋盘上放置棋子

**原文标题**: Show HN: Linex – A daily challenge: placing pieces on a board that fights back

**原文链接**: [https://www.playlinex.com/](https://www.playlinex.com/)

**《Linex》简介**

Linex是一款每日解谜游戏，玩家需在棋盘上放置拼块以连成线条。其独特之处在于棋盘会“反击”——可能指通过步数限制、倒计时或干扰性棋盘元素等约束条件，增加连线难度。

游戏强调社交与竞技性，描述中着重提及“击败好友”。它支持通过WhatsApp、Telegram、电子邮件及二维码轻松分享，表明设计初衷是便于社交圈内进行每日挑战比拼。

界面显示分数为“0”并配有“00:00”计时器，说明游戏可能采用计分与限时机制。标注“/7”或指每日谜题编号（如系列中的第7天），也可能是进度指示器。

简言之，Linex是一款极简风格的每日解谜游戏，将空间连线策略与竞技社交框架巧妙融合。

---

## 25. PL/0

**原文标题**: PL/0

**原文链接**: [https://en.wikipedia.org/wiki/PL/0](https://en.wikipedia.org/wiki/PL/0)

PL/0是一种简单的教育编程语言，由尼古拉斯·沃斯于1976年提出。该语言专为教授编译器构造而设计，是Pascal的极小子集，仅包含整数数据类型、基本算术与比较运算符，以及有限的控制流结构（`if`和`while`）。它支持过程定义但不允许参数传递。其刻意精简的特性使得编译器保持小巧且易于理解。

该语言的语法采用扩展巴科斯范式（EBNF）定义，非常适合实现递归下降解析器。PL/0在计算机科学教育中影响深远，引入了逐步求精、P代码和T形图等核心概念。学生常通过添加新控制结构、参数传递或数据类型等功能来扩展基础编译器。

沃斯后来在其编译器构造教材中用更复杂的Oberon-0取代了PL/0。尽管结构简单，PL/0至今仍是学习编译器构建原理的基础工具。

---

## 26. 丹麦政府机构将弃用微软软件（2025年）

**原文标题**: Danish government agency to ditch Microsoft software (2025)

**原文链接**: [https://therecord.media/denmark-digital-agency-microsoft-digital-independence](https://therecord.media/denmark-digital-agency-microsoft-digital-independence)

为推进数字主权并降低成本，丹麦技术现代化机构正从微软软件转向开源替代方案。数字化部长卡罗琳·斯特格·奥尔森确认，该部门超半数员工将于下月转用LibreOffice，并计划在2025年秋季前完成全面过渡。此举也将帮助避免与过时的Windows 10系统相关的成本。

这一决定紧随丹麦最大城市哥本哈根和奥胡斯的类似举措，其动因包括财政压力、微软的市场垄断地位以及过去与美国的政治紧张关系。该趋势是欧洲更广泛数字独立转型的一部分。值得注意的是，德国石勒苏益格-荷尔斯泰因州近期宣布，将在未来几年用LibreOffice替代微软Office，并迁移至Linux系统。

尽管丹麦数字化部致力于推进变革，但斯特格指出，若过渡过程过于复杂，他们可能重新使用微软产品。截至报道时，微软尚未对此公告发表评论。

---

## 27. 发布HN：TeamOut（YC W22）——规划公司团建的AI助手

**原文标题**: Launch HN: TeamOut (YC W22) – AI agent for planning company retreats

**原文链接**: [https://app.teamout.com/ai](https://app.teamout.com/ai)

TeamOut是一款人工智能驱动的平台，旨在简化公司团建活动的策划流程。其核心功能是运用AI匹配引擎，根据用户对活动需求的简要描述（如地点、团队规模、活动时长和预算），即时生成一份定制化的合适场地列表。

平台强调的关键特性包括：提供全球范围内经人工审核的可靠场地目录，这些场地均具备服务企业团队的经验；以及智能报价系统，平均能在24小时内获取合作场地的报价。该平台注重速度与效率，致力于解决传统策划方式中需等待人工策划师或场地回复数日甚至数周的缓慢流程。

总体而言，TeamOut以人工智能为工具，帮助用户快速寻找、筛选团建场地并获取报价，从而减少企业活动策划中常见的初期繁琐工作和时间延迟。

---

## 28. 拓扑命名问题

**原文标题**: Topological Naming Problem

**原文链接**: [https://wiki.freecad.org/Topological_naming_problem](https://wiki.freecad.org/Topological_naming_problem)

本页面采用名为Anubis的验证码式验证系统，旨在防止网站被大型AI公司的网络爬虫过载。该系统采用工作量证明机制（类似于Hashcash），要求每位用户完成一项微小可控的计算任务。这项任务对人类访客而言微不足道，但对执行大规模数据抓取的自动化机器人来说成本将变得极其高昂，从而有效遏制此类行为。

该系统作为临时措施推出，其根本目标是为开发更先进的识别技术（如浏览器指纹识别和无头浏览器检测）争取时间，以期在不干扰正常用户的前提下精准识别机器人。通知说明必须启用JavaScript才能完成验证，因为AI驱动的数据抓取行为迫使网站采取这些防护措施。同时建议用户暂时停用可能拦截必要JavaScript功能的隐私保护/反指纹浏览器扩展（如JShelter）。目前系统正在开发无需JavaScript的替代解决方案。

---

## 29. LLM=True

**原文标题**: LLM=True

**原文链接**: [https://blog.codemine.be/posts/2026/20260222-be-quiet/](https://blog.codemine.be/posts/2026/20260222-be-quiet/)

本文讨论了开发工具（如Turbo）产生过多无关输出，污染AI编码助手（例如Claude Code）上下文窗口的问题，这不仅浪费令牌还降低了效率。

作者以TypeScript单体仓库为例说明该问题：冗长的构建日志、更新通知和软件包列表使上下文充满噪音。他们描述了一些局部解决方案，例如将Turbo配置为“仅错误”输出，并使用环境变量（如`TURBO_NO_UPDATE_NOTIFIER`、`NO_COLOR`）来抑制不必要信息。然而，助手使用`tail`截断输出的变通方法在构建出错时会失效，因为它会切断关键的堆栈跟踪。

核心建议是让开发者生态系统采用一个通用的`LLM=true`环境变量。这将向工具和库发出信号，表明它们正在AI助手环境中运行，从而促使它们默认禁用动画、颜色和冗长日志，输出最简练的内容。作者认为这将创造“三赢”局面：为用户节省令牌成本、保持上下文窗口质量并降低能耗。

文章最后提出一个引人深思的观点：如果AI助手成为主要编码者，默认设置应从优化人类可读性转向优化助手效率，甚至可能将变量反转为`HUMAN=true`。

---

## 30. PHP百万行数据处理挑战

**原文标题**: 100M-Row Challenge with PHP

**原文链接**: [https://github.com/tempestphp/100-million-row-challenge](https://github.com/tempestphp/100-million-row-challenge)

这是关于“PHP 百万行挑战赛”的摘要。

本次挑战要求参赛者创建最快的 PHP 解析器，以处理一个包含一亿行页面访问记录的 CSV 数据集，并输出特定的 JSON 格式。比赛时间为 2026 年 2 月 24 日至 3 月 15 日。

**核心

**流程：**
1.  复刻仓库，并在提供的 `Parser.php` 文件中实现你的解决方案。
2.  使用命令在本地生成数据并验证输出以进行测试。
3.  通过提交拉取请求参与，请求标题需包含你的 GitHub 用户名。

**规则与奖项：**
*   基准测试在标准化的 Digital Ocean 服务器（2vCPUs, 1.5GB RAM）上运行，禁用 JIT 且不允许使用 FFI。
*   提交作品需经人工验证；禁止抄袭他人代码。
*   速度最快的前三名将获得由 PhpStorm 和 Tideways 赞助的奖品，包括软件许可证和 elephpant 玩偶。

---

