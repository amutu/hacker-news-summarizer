# Hacker News 热门文章摘要 (2026-04-27)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 微软与OpenAI终止独家及收入分成协议

**原文标题**: Microsoft and OpenAI end their exclusive and revenue-sharing deal

**原文链接**: [https://www.bloomberg.com/news/articles/2026-04-27/microsoft-to-stop-sharing-revenue-with-main-ai-partner-openai](https://www.bloomberg.com/news/articles/2026-04-27/microsoft-to-stop-sharing-revenue-with-main-ai-partner-openai)

无法访问文章链接。

---

## 2. Easyduino：适用于KiCad的开源PCB开发板

**原文标题**: Easyduino: Open Source PCB Devboards for KiCad

**原文链接**: [https://github.com/Hanqaqa/Easyduino](https://github.com/Hanqaqa/Easyduino)

**Easyduino项目简介**

Easyduino是一项开源计划，为Arduino Uno、Nano、ESP32、ESP32 S3、Raspberry Pi Pico和STM32 Bluepill等主流微控制器开发板提供KiCad PCB设计。该项目旨在统一原始版本中因各国采用不同EDA工具（Eagle、Altium、KiCad）而存在的多样化软件与设计规范。所有设计均采用四层铜箔叠层（JLC04161H-7628）以简化布线，并针对JLCPCB制造进行优化。

每个项目均包含KiCad源文件、一份说明与原始版本差异的README文档（例如替换难以采购的元件如Atmega16u2，或省略昂贵的01005封装器件），以及生产用文件：Gerber文件、BOM表、贴片坐标文件、数据手册，以及原理图和PCB的PDF/PNG文件。非标准封装则存放于专用文件夹中。

本项目需使用KiCad v8.0.0或更高版本（已通过v10测试），并支持利用Jobset功能简化输出生成。欢迎贡献者报告错误或提议新增开发板，但需遵循一致的原理图设计规范。待办事项包括测试RP2040和ESP32 S3板卡的v1.1修订版本，以及探索基于NXP的设计。项目采用CERN OHL v2宽松许可协议，允许自由使用、修改及商业应用，仅需保留原作者署名。

---

## 3. “为什么不直接用精益？”

**原文标题**: “Why not just use Lean?”

**原文链接**: [https://lawrencecpaulson.github.io//2026/04/23/Why_not_Lean.html](https://lawrencecpaulson.github.io//2026/04/23/Why_not_Lean.html)

**摘要**

本文批判了“Lean是形式化数学唯一可行选择”的主流观点，指出该领域已有60年丰富历史。作者（疑似劳伦斯·保尔森）梳理了关键里程碑：AUTOMATH（1968年）形式化了兰道的《分析基础》；博耶和摩尔的ACL2证明了几何不完备定理等结论；基于LCF的系统（HOL Light、Isabelle/HOL）在Lean崛起前就已处理重大成果（四色定理、开普勒猜想）。Lean成功的部分原因在于摒弃了Rocq对“构造性证明”的执念，并被汤姆·黑尔斯选用于定义高级数学对象。然而，作者批评Lean社群的“狂热崇拜”及对“命题即类型”原则的狭隘固守——该原则将证明与庞大且不必要的证明对象混为一谈。相比之下，罗宾·米尔纳的LCF方法通过抽象数据类型高效检查证明而无需存储庞大项，这一教训被依赖类型系统所忽视。作者力挺Isabelle/HOL，称赞其卓越的自动化能力（Sledgehammer）、清晰的结构化证明（Isar），并避免依赖类型的缺陷（不可判定类型检查、宇宙层级）。他指出即便是Lean的mathlib内部也常不鼓励依赖类型。最终，作者认为AI工具或可跨系统转换可读证明，降低对单一证明助手的依赖。作者承认此前遗漏，并预告后续将撰文讨论Mizar。

---

## 4. macOS 27 即将带来的网络功能变化

**原文标题**: Networking changes coming in macOS 27

**原文链接**: [https://eclecticlight.co/2026/04/23/networking-changes-coming-in-macos-27/](https://eclecticlight.co/2026/04/23/networking-changes-coming-in-macos-27/)

**摘要：macOS 27 即将迎来网络功能变更**

苹果公司就预计于2026年9月发布的macOS 27系统，发布了两项关于网络变更的早期预警。

**1. 移除AFP支持：** 苹果长期以来暗示将移除其传统文件共享协议——Apple Filing Protocol (AFP)。在macOS 27中，AFP支持可能最终被取消。这将影响依赖Time Capsules或不支持SMB3的老旧NAS设备的用户。不升级至macOS 27的用户仍可使用AFP，但升级至新系统的Apple Silicon Mac用户可能需要更换其网络存储设备。

**2. 更严格的TLS

**时间表：** 开发者测试版将于2026年6月8日发布；公测版约在2026年7月8日；正式版可能于2026年9月中旬推出。两项变更均不追溯既往。

---

## 5. 中国阻止Meta收购AI初创公司Manus

**原文标题**: China blocks Meta's acquisition of AI startup Manus

**原文链接**: [https://www.cnbc.com/2026/04/27/meta-manus-china-blocks-acquisition-ai-startup.html](https://www.cnbc.com/2026/04/27/meta-manus-china-blocks-acquisition-ai-startup.html)

中国国家规划机构国家发展和改革委员会已下令Meta终止其对新加坡人工智能初创公司Manus价值20亿美元的收购，理由是需要遵守法律法规。该交易于去年12月宣布，曾受到中国和华盛顿方面的审查。中国于今年1月启动调查，而美国立法者则限制美国投资中国人工智能企业。Manus最初在中国创立，后迁至新加坡，这种模式被一些科技创始人和风投机构用来规避两国政府的审查。该初创公司开发通用人工智能代理，截至去年12月（产品发布8个月后），其年经常性收入已达1亿美元。Meta此前表示该收购"完全符合适用法律"。这一干预行动令那些希望借助"新加坡洗白"模式的中国科技创始人和风险投资家感到震惊。一名中国官员暗示，妥善处理此类问题可能有助于推动APEC相关讨论。

---

## 6. 超级ZSNES – GPU驱动的超级任天堂模拟器

**原文标题**: Super ZSNES – GPU Powered SNES Emulator

**原文链接**: [https://zsnes.com/](https://zsnes.com/)

**Super ZSNES 摘要 – GPU 驱动的 SNES 模拟器**

ZSNES 的原班开发人员已重新聚首，开发了 **Super ZSNES**，这是一款完全重写、由 GPU 驱动的 SNES 模拟器。它的目标是在 CPU 和音频核心上实现远超原版的精确度，GPU 驱动的 PPU 核心则支持高分辨率 Mode 7 和针对不同游戏的增强功能。

主要功能包括现代化的经典界面（带飘雪效果）、即时存档、倒带、快进、作弊码和自动存档历史记录。最突出的是 **超级增强引擎**，目前支持七款流行游戏，并计划支持更多。增强功能包括手绘高分辨率艺术图、背景纹理/法线贴图、针对易卡顿游戏的超频、宽屏支持（可用时）、无压缩音频替换以及 3D 高度映射 Mode 7。所有增强功能均可单独开关，且不含任何受版权保护的 ROM 数据——用户必须自行提供 ROM。

下载可适用于 Windows、Mac、Linux 和 Android（iOS 即将推出）。开发人员指出，这是早期版本，存在一些模拟错误，缺少特殊芯片支持（DSP1、SuperFX 等），并且正在进行性能优化。未来计划加入联机游戏和更多增强类型。该软件按“原样”提供，不提供任何担保，且与任何商标公司无关。

---

## 7. 清理SVG文件的烦恼

**原文标题**: The woes of sanitizing SVGs

**原文链接**: [https://muffin.ink/blog/scratch-svg-sanitization/](https://muffin.ink/blog/scratch-svg-sanitization/)

本文详述了Scratch在处理SVG安全策略中反复出现的漏洞，并论证其从根本上不可持续。自2019年起，Scratch试图通过在用户控制的SVG插入主文档处理前，剥离危险内容（如`<script>`标签）来保障安全。

文章列举了该修补式方法的一系列失败案例：

1.  **2019年：** 通过`<script>`标签实现XSS（用正则表达式修复）。
2.  **2020年：** 通过大小写变体和内联事件处理程序绕过正则表达式（用DOMPurify修复）。
3.  **2022年：** 通过`<image href>`造成HTTP泄露（用自定义钩子修复）。
4.  **2023年：** 通过CSS `@import`造成HTTP泄露（用JS CSS解析器修复）。
5.  **2024年：** 通过Paper.js库使用未净化的SVG造成XSS（部分修复）。
6.  **2025年：** 通过CSS `url()`造成HTTP泄露（扩展净化逻辑修复）。
7.  **2026年：** 因之前`url()`修复中的三个漏洞造成HTTP泄露（转义码、多值、CSS变量）。
8.  **2026年：** 利用CSS长过渡动画实现全页面样式篡改（未修复）。
9.  **2026年（披露）：** 通过`image-set()`造成HTTP泄露（未修复）。
10. **20XX年（未来）：** 因CSS新特性如`src()`和`image()`可能造成HTTP泄露（未修复）。

核心论点是：依赖复杂且被动响应的净化方案注定失败。每次修复都会产生新的绕过途径，而未来浏览器的变更必然导致更多漏洞。作者总结道，当前策略不可持续，尤其是针对全页面样式篡改这类问题，根本不存在简单全面的修复方案。

---

## 8. 射频工程的悄然复兴

**原文标题**: The Quiet Resurgence of RF Engineering

**原文链接**: [https://atempleton.bearblog.dev/quiet-resurgence-of-rf-engineering/](https://atempleton.bearblog.dev/quiet-resurgence-of-rf-engineering/)

**摘要：** 作者作为一名航空航天软件工程师，认为射频工程在长期衰退后正经历显著复兴。

该领域因互联网泡沫后电信行业整合以及软件职业兴起（人才从硬件流失）而萎缩。然而射频从未消亡——国防部门使其保持关键地位。如今多个行业同时推动其复兴：

1.  **太空经济繁荣：** 十年内发射次数增长10倍（从260次增至2695次）。每颗卫星和地面站都需要收发器、天线和滤波器。2024年太空经济规模达6130亿美元。
2.  **5G部署：** 5G MIMO无线电使用的射频元件（放大器、开关）是4G基站的8-16倍，推动元件市场迈向500亿美元。
3.  **6G研发：** 亚太赫兹频率及集成传感的早期研究将催生新硬件需求。
4.  **持续驱动力：** 汽车雷达（碰撞规避强制配置）和Wi-Fi 7带来稳定持久需求。

人才供应严重短缺。73%的电气工程雇主无法在六个月内填补职位，半导体行业（受《芯片法案》推动）正争抢同样萎缩的毕业生资源。射频工程师平均年薪已超13万美元。

尽管作者承认软件工程师可学到足够射频知识胜任工作，但设计复杂硬件需要深厚、不可速成的物理直觉。核心结论是：射频领域目前需求旺盛、供给受限，值得认真考虑。

---

## 9. Mercor公司4万名AI承包商处窃取4TB语音样本

**原文标题**: 4TB of voice samples just stolen from 40k AI contractors at Mercor

**原文链接**: [https://app.oravys.com/blog/mercor-breach-2026](https://app.oravys.com/blog/mercor-breach-2026)

一个名为Lapsus$的组织从AI承包商平台Mercor窃取了4TB数据，暴露了超过4万名承包商的语音样本和政府身份证件。与以往的数据泄露不同，此次事件将高质量语音录音（每条时长2至5分钟）与经过验证的身份文件配对，从而能够实现先进的语音克隆和欺诈。

攻击者现在可以利用这些克隆语音绕过银行声纹验证、对雇主发起语音钓鱼攻击、实施深度伪造视频通话诈骗（如2500万美元的Arup案）、进行保险欺诈，以及针对家庭实施冒充诈骗。联邦调查局报告称，2026年老年人欺诈造成的损失达23亿美元，其中紧急冒充电话是增长最快的类别。

对于受害者，文章建议：减少公开音频痕迹；与家人和财务联系人建立口头暗号；在银行和智能设备上删除并重新注册声纹；禁用声纹作为验证因素；对可疑录音进行取证分析。

取证分析服务ORAVYS为每位数据泄露受害者提供最多三个可疑样本的免费检测。分析师会寻找诸如编解码器不匹配、不自然的呼吸模式、微抖动、共振峰轨迹错误、室内声学不一致、韵律平坦以及语速稳定性等方面的痕迹，以检测合成语音。

---

## 10. 海岸巫师联合公司

**原文标题**: United Wizards of the Coast

**原文链接**: [https://unitedwizardsofthecoast.com/news/announcing-united-wizards-coast-cwa](https://unitedwizardsofthecoast.com/news/announcing-united-wizards-coast-cwa)

**摘要：**

2026年4月27日，《万智牌：竞技场》团队的员工宣布成立工会——**海岸巫师联合-CWA**。绝大多数符合条件的竞技场员工签署了工会卡以示支持。该团体已通知海岸巫师（WOTC）领导层其组建工会的意向，并请求自愿承认。

该工会的目标是启动集体谈判，为竞技场团队争取更好的待遇和工作条件。他们强调，此举旨在维护员工的权益与福祉，这不仅对团队而言是重要一步，对整个游戏行业也是如此。声明中附有一封致WOTC领导层的信函链接，敦促其真诚参与。

---

## 11. 《邮购魔法：神秘学如何通过邮寄送达》

**原文标题**: Magic by Return of Post: How Mail Order Delivered the Occult

**原文链接**: [https://publicdomainreview.org/essay/magic-by-return-of-post/](https://publicdomainreview.org/essay/magic-by-return-of-post/)

本文作者艾伦·约翰逊探讨了20世纪初美国邮购神秘学的兴起，指出现代性并未消除精神信仰，而是通过新兴商业与工业手段重塑了其传播方式。核心观点包括：

1. **现代性作为推手**：邮购魔法的兴起得益于技术进步——莱诺排字机、廉价纸浆纸张和扩张的邮政网络，使神秘学知识得以直达消费者。这反驳了马克斯·韦伯的"祛魅"理论，表明精神实践被私有化与个体化而非被根除。

2. **先驱企业家**：芝加哥出版商西德尼·弗劳尔代表了该行业的早期形态。他通过"市场细分"（使用多家公司名称）营造规模效应，售卖催眠术、天眼通乃至邮购业务本身的课程，最终因欺诈性投资计划面临诉讼。

3. **真诚信仰与江湖骗术**：尽管部分经营者缺乏诚信，许多邮购神秘组织实属真诚。它们提供融合玫瑰十字会、神智学与心理学的平价进阶课程，常被视为现代自助文学的雏形。大萧条时期，这类课程为人们提供了基督教传统框架之外的内心满足与成功之道。

4. **持久遗产**：1915年由哈维·斯宾塞·刘易斯创立的古代神秘玫瑰十字会（AMORC）是典型案例——以邮购催眠术课程起家，至今仍活跃运作，宣称拥有完整的玫瑰十字传承体系。

---

## 12. GitHub Copilot 即将采用基于使用量的计费模式

**原文标题**: GitHub Copilot is moving to usage-based billing

**原文链接**: [https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/](https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/)

以下是所提供内容的简明摘要：

这篇文章宣布GitHub Copilot将转向基于使用量的计费模式。文章通过GitHub首席产品官马里奥·罗德里格兹的人物介绍展开叙述。罗德里格兹在微软和GitHub担任领导职务已有20年，近期负责GitHub的AI战略及Copilot产品线，成功推动Copilot在数千家组织和数百万用户中上线并规模化推广。

关键信息在于Copilot定价结构的转变，即从固定订阅制改为按实际使用量付费的模式。文章强调了罗德里格兹作为终身学习者的背景及其对开发工具的热爱。工作之余，他与妻子和两个女儿共同生活，并联合创办了一所专注于推动美国农村地区教育的特许学校，同时担任该校联席主席。

---

## 13. 凝视墙壁的男人们

**原文标题**: Men who stare at walls

**原文链接**: [https://www.alexselimov.com/posts/men_who_stare_at_walls/](https://www.alexselimov.com/posts/men_who_stare_at_walls/)

**摘要：**

本文介绍了一种通过刻意凝视墙壁来提升专注力的技巧。作者指出核心问题在于信息过载，并引用一项研究显示，2008年普通人日均消耗34GB数据，而如今可能已达87GB。这种过载会导致“脑雾”循环，涉及睡眠不佳、咖啡因依赖及持续媒体消费，从而引发多巴胺驱动的生产力下降。

作者提出的解决方案是一个简单习惯：当精神疲惫时，静坐并凝视墙壁5-10分钟。这一做法结合了激活副交感神经系统（利用无焦点的周边视觉）与“放空大脑”（什么都不想）。作者发现这出奇地困难却极为有效，并将这种抗拒感比作锻炼——开始虽难，完成后却收获颇丰。

该技巧无需借助更多咖啡或屏幕，即可恢复专注力与生产力。作者计划继续坚持这一习惯，并在未来报告效果。

---

## 14. 西班牙考古学家在直布罗陀湾发现大量古代沉船

**原文标题**: Spanish archaeologists discover trove of ancient shipwrecks in Bay of Gibraltar

**原文链接**: [https://www.theguardian.com/science/2026/apr/15/hidden-treasures-spanish-archaeologists-discover-trove-of-ancient-shipwrecks-in-bay-of-gibraltar](https://www.theguardian.com/science/2026/apr/15/hidden-treasures-spanish-archaeologists-discover-trove-of-ancient-shipwrecks-in-bay-of-gibraltar)

西班牙考古学家在直布罗陀湾（阿尔赫西拉斯湾）发现了超过30艘沉船，这是加的斯大学领导的三年期项目（赫拉克勒斯项目）的一部分。该海湾作为大西洋与地中海之间的战略要冲，已发现151处考古遗址，其中包括134艘年代从公元前5世纪跨越至第二次世界大战的沉船。记录在案的沉船包括腓尼基、罗马、中世纪及近代早期的船只，以及一台20世纪30年代的飞机引擎。

值得关注的发现包括一艘公元前5世纪的布匿船只、23艘罗马船只，以及一艘18世纪西班牙火炮艇“马约加桥四号”，该艇曾用于对英国船只发动偷袭。在这艘炮艇内部，一个被认为用于间谍活动的书本形盒子实为存放木梳之用。这些遗址正面临港口开发、疏浚工程以及气候变化带来的海平面上升和入侵性藻类等威胁。

研究人员正利用虚拟模型和360度视频吸引公众关注，并倡导遗址保护。该项目凸显了该海湾作为航海史独特缩影的重要性，展现了数千年来人类与海洋的密切互动。

---

## 15. 展示HN：我构建的开源智能体在Gemini-3-flash-preview上的TerminalBench评测中登顶

**原文标题**: Show HN: OSS Agent I built topped the TerminalBench on Gemini-3-flash-preview

**原文链接**: [https://github.com/dirac-run/dirac](https://github.com/dirac-run/dirac)

**Dirac：高性能、高性价比的开源AI智能体**

Dirac是一款开源编码智能体，旨在最大化准确率的同时最小化API成本。它在Terminal-Bench-2排行榜上以65.2%的得分领先Gemini-3-Flash-Preview模型，超越谷歌基线（47.6%）及闭源产品Junie CLI（64.3%）。与Cline、Kilo和OpenCode等竞品相比，Dirac平均实现64.8%的成本削减（降低2.8倍）。

**核心创新包括：**
- **哈希锚定编辑**：使用稳定行哈希替代行号实现精准编辑
- **AST原生精度**：理解TypeScript、Python、C++等语言的语法结构
- **多文件批量处理**：单次LLM往返即可编辑多个文件，降低延迟与成本
- **优化上下文管理**：保持上下文精简，防止长上下文场景下的性能衰退

Dirac支持自主工具调用（文件操作、终端命令、无头浏览器）并提供可选审批流程。它兼容多个API提供商（Anthropic、OpenAI、Gemini等），可作VS Code扩展或CLI工具使用。需注意，该智能体不支持MCP协议。

在复杂重构任务中，Dirac以竞品零头的成本实现100%准确率。例如任务4（Django）仅需0.08美元，而竞品成本为0.17-0.49美元。Dirac基于Apache 2.0许可协议开源，作为Cline项目的衍生版本构建。

---

## 16. 增加团队是一个错误的战略决策

**原文标题**: Adding a team was the wrong strategic decision

**原文链接**: [https://learnings.aleixmorgadas.dev/p/adding-a-team-was-the-wrong-strategic](https://learnings.aleixmorgadas.dev/p/adding-a-team-was-the-wrong-strategic)

**摘要：** 文章描述了一个战略失误：某公司为改善客户支持增设了新的“客户体验部落团队”，却未征询现有工程经理的意见。该决策基于过时的技术组件团队运营模式，与已初见成效的、自下而上的产品导向新结构相冲突。

客户体验团队的做法——构建一个新的微前端仪表盘——忽视了问题的根源：系统设计不佳及对开发人员的依赖导致工单解决时间过长。而工程经理则让现有的产品团队创建简易的内部仪表盘，将手动修复流程自动化。此举通过赋能客户体验团队自行解决问题，将解决时间从数天缩短至数小时。

关键教训：新的客户体验团队处于孤立状态（向部落外汇报），在不用的工具上浪费资源，并引发了领导层摩擦。更成功且更便宜、更快速的替代方案是：将工作整合到现有团队中，培训客户体验人员，并避免在真正需要之前强行采用新平台。该客户体验团队在五个月后被解散。

---

## 17. Pgbackrest 已不再维护

**原文标题**: Pgbackrest is no longer being maintained

**原文链接**: [https://github.com/pgbackrest/pgbackrest](https://github.com/pgbackrest/pgbackrest)

**摘要**

本文宣布，备受欢迎的 PostgreSQL 备份与恢复工具 **pgBackRest 在历经 13 年后将停止维护**。创始人 David Steele 做出这一决定，是因为自 Crunchy Data 被收购后，他无法获得持续的企业赞助或一个允许继续开发的职位。他强调了自己投入的大量个人时间，以及与 pgBackRest 相关岗位的有限就业市场。

尽管停止维护，pgBackRest v2.58.0 仍是当前的稳定版本。该工具功能丰富：支持并行备份/恢复及高效压缩（lz4、zstd）；可通过 TLS/SSH 进行本地或远程操作；支持多存储库；提供全量、差异和增量备份；支持备份轮换与归档过期；具备基于校验和的完整性及页校验和验证功能；支持备份续传、流式压缩、增量恢复、并行异步 WAL推送/拉取；支持表空间、链接、S3/Azure/GCS 对象存储及加密。它兼容十个 PostgreSQL 版本（五个受支持，五个已终止生命周期）。

Steele 预计 **pgBackRest 会被他人分支（fork）**，但指出新项目需自行建立信任。目前项目由 Supabase 赞助；过往赞助商包括 Crunchy Data 和 Resonate。

---

## 18. 解耦式DiLoCo：大规模弹性分布式AI训练

**原文标题**: Decoupled DiLoCo: Resilient, Distributed AI Training at Scale

**原文链接**: [https://deepmind.google/blog/decoupled-diloco/](https://deepmind.google/blog/decoupled-diloco/)

**《解耦DiLoCo：大规模高弹性分布式AI训练》**

本文介绍了由谷歌DeepMind与谷歌研究院开发的新型分布式AI训练架构——解耦DiLoCo。该架构通过将大规模训练任务分割为异步运行的解耦计算"岛屿"（学习单元），显著提升了弹性与灵活性。这种设计能隔离硬件故障，防止单芯片宕机导致整个系统瘫痪。基础设施具备自愈能力，可无缝重新整合故障单元。

基于前期成果（Pathways和DiLoCo），该方法大幅降低带宽需求——仅需2-5 Gbps广域网连接——使得跨数据中心训练成为现实。测试表明，通过消除阻塞性瓶颈，其速度比传统同步方法快20倍以上。

Gemma 4模型实验显示，即便硬件故障率上升，解耦DiLoCo仍能保持高"有效吞吐率"（有效训练），并达到与传统方法相当的机器学习性能。此外，该架构支持混合使用不同代际硬件（如TPU v5p与v6e）进行单次训练，既延长了老旧芯片使用寿命，又增加了总计算容量。这种全栈式方法重新定义了硬件、软件与研究的整合方式，为大规模、高效率、高弹性的AI训练开辟了新路径。

---

## 19. 美国最高法院审查警方使用手机定位数据

**原文标题**: US Supreme Court reviews police use of cell location data

**原文链接**: [https://www.nytimes.com/2026/04/27/us/politics/supreme-court-cell-data-geofence.html](https://www.nytimes.com/2026/04/27/us/politics/supreme-court-cell-data-geofence.html)

无法访问该文章链接。

---

## 20. 树莓派Pico全功能音频DSP固件

**原文标题**: Fully Featured Audio DSP Firmware for the Raspberry Pi Pico

**原文链接**: [https://github.com/WeebLabs/DSPi](https://github.com/WeebLabs/DSPi)

本文介绍 **DSPi**——一款将树莓派 Pico（RP2040）或 Pico 2（RP2350）转变为低成本、高性能数字音频处理器的固件。它可作为内置 DSP 引擎的 USB 声卡使用，提供房间校正、有源分频、参量均衡、时间对齐、响度补偿及耳机串扰消除等工具。

**核心特性：**
- **USB 音频：** 在 macOS、Windows、Linux 和 iOS 上即插即用，支持 44.1、48 和 96 kHz 采样率下的 16/24 位 PCM。
- **输出接口：** 通过 S/PDIF 或 I2S 最多输出 8 通道（RP2350），并配有专用 PDM 低音炮输出。
- **DSP 流水线：** 音频经多阶段处理：每通道前置放大器、10 段参量均衡、RMS 音量均衡器、耳机串扰消除（BS2B）、响度补偿、矩阵混音器、每路输出的均衡/增益/延迟以及主音量控制。
- **平台差异：** RP2350 采用单精度浮点运算，支持更多通道（11 路），并提供混合 SVF/双二阶滤波器以提升低频精度；RP2040 使用定点运算，总通道数较少（7 路）。
- **预设与控制：** 10 槽预设系统支持用户自定义名称。所有 GPIO 引脚可通过配套的“DSPi Console”应用程序在运行时重新分配。
- **性能：** 超频至 307.2 MHz，双核处理，并经过生产级全面测试。

---

## 21. 我们的原则

**原文标题**: Our principles

**原文链接**: [https://openai.com/index/our-principles/](https://openai.com/index/our-principles/)

**《我们的原则》摘要（OpenAI）**

OpenAI提出了一套核心原则，以指导其确保通用人工智能惠及全人类的使命。要点如下：

1. **广泛分配利益**：OpenAI承诺将其对通用人工智能的影响力用于公共利益，避免危害人类或集中权力的用途，致力于创造广泛共享的经济与社会价值。

2. **长期安全与研究**：安全是首要考量，需通过审慎协调与技术研究规避灾难性风险。OpenAI主张以谨慎迭代的方式推进通用人工智能发展。

3. **技术领先与合作**：为实现安全与普惠，OpenAI必须保持人工智能能力的前沿地位，同时承诺积极与其他研究及政策机构合作，构建应对通用人工智能挑战的全球共同体。

4. **民主参与与治理**：在引领发展的同时，OpenAI认识到公众监督的必要性，力求在决策中纳入多元视角，并将在实现安全有益的通用人工智能后，将控制权移交给广泛代表性的机构。

这些原则强调透明度、问责制与长期视野，优先考虑人类利益而非短期利润或单方权力。

---

## 22. FDA批准首个基因疗法治疗遗传性听力损失

**原文标题**: FDA approves first gene therapy for treatment of genetic hearing loss

**原文链接**: [https://www.fda.gov/news-events/press-announcements/fda-approves-first-ever-gene-therapy-treatment-genetic-hearing-loss-under-national-priority-voucher](https://www.fda.gov/news-events/press-announcements/fda-approves-first-ever-gene-therapy-treatment-genetic-hearing-loss-under-national-priority-voucher)

**摘要：**

美国食品药品监督管理局（FDA）已批准礼来公司的*Keveyis*（阿昔神经氨酸缓释片），这是首款用于治疗遗传性听力损失的基因疗法。具体而言，该疗法针对患有耳畸蛋白（OTOF）基因突变的儿童，这是一种罕见的先天性耳聋病因。该疗法通过一次性内耳注射，使用腺相关病毒（AAV）载体递送功能正常的OTOF基因拷贝。临床试验显示，接受治疗的儿童听力显著改善，部分儿童甚至达到了接近正常的言语感知能力。该批准得益于国家优先审评券，该机制可加速针对罕见儿科疾病的疗法审评。这一突破为此类遗传性耳聋提供了首个药物治疗选择，此前仅能通过助听器或人工耳蜗进行干预。

---

## 23. 美国企业支持山姆·奥特曼的“世界身份证”，尽管全球多数地区持反对态度

**原文标题**: U.S. companies back Sam Altman's World ID even as much of the world pushes back

**原文链接**: [https://restofworld.org/2026/sam-altman-worldcoin-zoom-tinder-partnerships/](https://restofworld.org/2026/sam-altman-worldcoin-zoom-tinder-partnerships/)

由萨姆·奥尔特曼（原名Worldcoin）支持的生物识别数字身份项目“World”近期通过与Tinder、Zoom和Docusign合作，在美国企业领域获得关注，旨在打击深度伪造和欺诈行为。然而，该项目因隐私与数据收集问题在全球范围内遭到广泛抵制。

该系统利用球形“Orb”设备扫描用户虹膜，签发“人类身份证明”，并常提供50美元加密货币奖励。尽管World声称已在160个国家拥有超过1800万验证用户，但亚洲、非洲、欧洲及拉丁美洲多国政府已叫停或禁止其运营。主要争议包括欺骗性营销、收集心跳和呼吸等额外生物识别数据、未获知情同意以及违反隐私法规。

肯尼亚、西班牙、葡萄牙、巴西、中国香港、德国、印度尼西亚、菲律宾和泰国等国家和地区已采取调查、临时停运、全面禁令及数据删除令等措施。批评者爱德华·斯诺登指责该项目“为眼球编目”。尽管如此，World仍以公众支持研究和营收增长蓝图为由持续扩张，并受益于美国对生物识别数据和加密货币相对宽松的监管环境。

---

## 24. 最高法院将就具有里程碑意义的农达除草剂案件听取辩论

**原文标题**: Supreme Court to hear arguments in landmark Roundup weedkiller case

**原文链接**: [https://www.nytimes.com/2026/04/26/climate/supreme-court-bayer-monsanto-roundup-glyphosate.html](https://www.nytimes.com/2026/04/26/climate/supreme-court-bayer-monsanto-roundup-glyphosate.html)

**最高法院农达案摘要**

最高法院即将就拜耳旗下农达除草剂涉嫌致癌的标志性案件听取口头辩论。核心法律问题在于联邦法律——具体而言是《联邦杀虫剂、杀真菌剂和灭鼠剂法》（FIFRA）——是否优先于针对该产品制造商提出的州法未履行警示义务索赔。

该案源于癌症患者及其家属提起的诉讼，他们主张农达活性成分草甘膦会导致非霍奇金淋巴瘤，并指控拜耳（2018年收购孟山都）未就这一风险警示消费者。拜耳则辩称，由于美国环保署（EPA）认定草甘膦无致癌性并批准了产品标签，联邦法律应使其免受州级侵权索赔。

下级法院对此存在分歧：部分法院裁定FIFRA优先于索赔主张，另一些法院则允许诉讼推进，导致拜耳面临数十亿美元的陪审团裁决赔偿。最高法院的裁决将产生深远影响：若支持拜耳，可能限制未来诉讼；若支持原告，则可能引发数千起新诉讼并迫使标签重大修改。农业界、化工制造商及公共卫生倡导者对此案高度关注。预计最迟于2026年6月底作出判决。

---

## 25. 翻转圆盘

**原文标题**: Flipdiscs

**原文链接**: [https://flipdisc.io](https://flipdisc.io)

本文介绍了如何利用翻片（或翻点）技术制作大型互动墙面艺术装置——这是一种电磁显示屏，可使小圆片在两种颜色间翻转，并发出类似雨声的柔和声响。

**构建：** 作者采用九块AlfaZeta面板组成3×3网格（共84×42个圆片），由24V 10A电源供电。框架使用80/20铝型材搭建，因圆片易碎需谨慎操作。面板通过RS485串行连接，配有三个USB适配器实现高帧率传输。处理核心选用英伟达Orin Nano进行机器学习任务（语音、视频、图像识别），并搭配摄像头与音频板。

**软件：** 通讯层基于RS485采用自定义Node.js库。软件利用网页技术（PIXI、Three.js、Matter.js）通过画布实现实时可视化，并通过谷歌MediaPipe实现手势与语音交互。REST API与Websocket负责管理场景及实时数据。

**设计与交互：** 显示屏采用抖动算法（Floyd-Steinberg和Bayer）处理图像，使用位图字体显示文字。配套Expo应用支持播放控制、队列管理及手绘功能。

**结语：** 作者希望翻片技术能更易为爱好者所用，并鼓励在新型硬件上开展协作。该项目旨在融合创意约束与交互式AI能力。

---

## 26. 展示HN：Utilyze —— 比nvtop更准确的开源GPU监控工具

**原文标题**: Show HN: Utilyze – an open source GPU monitoring tool more accurate than nvtop

**原文链接**: [https://www.systalyze.com/utilyze](https://www.systalyze.com/utilyze)

**摘要：Utilyze – 一款开源GPU监控工具**

文章指出，标准GPU利用率指标（来自nvidia-smi、nvtop、云仪表盘）具有误导性。它们仅测量是否有**任何**内核在运行，而非GPU的**实际工作强度**。GPU可能显示100%利用率，却仅使用了其实际计算能力的1%。

为此，Systalyze开源了**Utilyze (utlz)** ，这是一款免费工具，通过硬件性能计数器测量真实计算吞吐量。在H200 GPU上的测试中，Utilyze准确显示利用率从2.6%（N=256矩阵乘法）到88%（N=4096）不等，而nvtop对所有工作负载均显示100%。Utilyze的测量结果与理论计算相差不到2%。

这种错误测量会带来实际后果：导致不必要的GPU采购、能源浪费以及错误的优化决策。Utilyze以极低的开销提供准确的实时数据，使团队能够识别标准工具所隐藏的性能空间。文章总结道，精确测量是优化AI部署的坚实基础。

---

## 27. Quarkdown – 拥有超能力的Markdown

**原文标题**: Quarkdown – Markdown with Superpowers

**原文链接**: [https://quarkdown.com/](https://quarkdown.com/)

**Quarkdown 简介——具有超能力的 Markdown**

Quarkdown 将标准 Markdown 扩展为功能强大的全能写作工具，可替代 LaTeX、Notion、GitBook 和 Beamer。它消除了模板代码，让用户专注于写作，同时自动处理格式与布局。

主要功能包括：

- **多种文档类型**（`doctype`）：支持分页（文章/书籍）、纯文本（笔记）、文档（维基/技术文档）以及幻灯片（演示/交互式演讲）。
- **实时预览**：输入时即时编译，结果秒显。
- **脚本能力**：通过自定义函数（例如 `.function` 实现可复用内容块）提供图灵完备、可重复使用的工作流程。
- **丰富扩展**：摘要、边注、图片尺寸、下拉菜单等。

文章还以一篇关于黑洞 `1ES 1927+654` 的天文学新闻样本为例（其冕突然消失又重组——黑洞天文学史上的首次发现），展示了 Quarkdown 富有表现力的格式功能。

---

## 28. 《伟大的驼鹿迁徙》——直播中

**原文标题**: Den stora Älgvandringen – The great moose migration (live)

**原文链接**: [https://www.svtplay.se/video/jXv3A5G/den-stora-algvandringen/idag-00-00](https://www.svtplay.se/video/jXv3A5G/den-stora-algvandringen/idag-00-00)

**摘要：**

《麋鹿大迁徙》（Den stora Älgvandringen）是一档正在播出第八季的直播节目。该节目记录了麋鹿沿着古老的迁徙路线前往富饶夏季牧场的旅程，这条路线它们已经走了数千年。观众可通过SVT Play和电视观看迁徙直播。文章强调该节目正在播出，并提供24小时直播源。

---

## 29. GitHub 当前遇到问题

**原文标题**: GitHub is having issues now

**原文链接**: [https://www.githubstatus.com](https://www.githubstatus.com)

2026年4月27日，GitHub多项服务出现大规模性能降级，主要原因是影响其ElasticSearch集群的基础设施问题。该事件始于UTC时间16:30左右，出现搜索失败的报告，影响了Actions、Issues、Pull Requests和Packages。用户遭遇搜索超时、工作流运行失败以及项目无法加载等问题。

GitHub工程师确定了给ElasticSearch集群带来额外负载的源头并予以禁用，到UTC时间19:50左右出现恢复迹象。然而，间歇性连接问题持续存在，导致Pull Requests及其他下游服务性能降级。截至UTC时间20:06，Pull Requests仍处于性能降级状态，调查工作仍在继续。

状态页面还强调了近期发生的事件，包括4月23日影响合并队列操作（影响2092个拉取请求）的重大中断、Copilot和webhooks问题，以及此前4月22日与ElasticSearch相关的故障。GitHub已解决这些事件，并承诺提供详细的根本原因分析。过去90天内，大多数服务的总体正常运行时间仍保持在99%以上，其中Actions最低，为99.37%。

---

## 30. 管理非管理型交换机

**原文标题**: Managing the Unmanaged Switch

**原文链接**: [https://watchmysys.com/blog/2026/03/managing-the-unmanaged-switch/](https://watchmysys.com/blog/2026/03/managing-the-unmanaged-switch/)

**摘要：**

本文探讨了如何通过利用未网管型TP-Link TL-SG108交换机的Realtek RTL8370N芯片（其内部集成支持Web管理界面的8051微控制器）将其改造为网管型交换机。关键步骤与见解如下：

1. **硬件改造**：TL-SG108原配4Mbit SPI闪存容量过小，无法容纳管理固件。将其替换为32Mbit（4MiB）闪存（如GD25Q32），并刷入同类型网管交换机（Netgear GS308Ev4）的固件，即可添加VLAN管理功能。

2. **MAC地址修正**：由于固件导出文件中仅包含单个MAC地址，用户需在十六进制偏移量0x1fc000处进行修改，以避免在同一二层网络中产生冲突。MAC地址和序列号以明文形式存储。

3. **不足之处**：改造后的交换机将失去LED指示灯功能，复位按键也无法使用；改造所需成本（约5美元）已接近购买二手网管交换机，因此后者更值得推荐。

4. **其他设备**：Araknis AN-110-SW-F-8虽同样采用RTL8370N芯片，但固件刷写未能成功。文章指出，TP-Link已于2024年进行重组，且其他品牌（如水星）的硬件方案与之高度相似。

**结论**：尽管技术层面可行，但作者建议直接购买二手网管交换机（如支持OpenWrt的型号），除非手头已有该硬件，否则不必对未网管型交换机进行改造。

---

