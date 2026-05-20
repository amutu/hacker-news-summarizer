# Hacker News 热门文章摘要 (2026-05-20)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. OpenAI模型推翻离散几何核心猜想

**原文标题**: An OpenAI model has disproved a central conjecture in discrete geometry

**原文链接**: [https://openai.com/index/model-disproves-discrete-geometry-conjecture/](https://openai.com/index/model-disproves-discrete-geometry-conjecture/)

无法访问文章链接。

---

## 2. GitHub确认通过恶意VSCode扩展入侵3800个仓库

**原文标题**: GitHub confirms breach of 3,800 repos via malicious VSCode extension

**原文链接**: [https://www.bleepingcomputer.com/news/security/github-confirms-breach-of-3-800-repos-via-malicious-vscode-extension/](https://www.bleepingcomputer.com/news/security/github-confirms-breach-of-3-800-repos-via-malicious-vscode-extension/)

**摘要：**  
GitHub证实，一名员工安装了恶意VS Code扩展程序后，约3800个内部代码库遭到入侵。该木马化扩展已从VS Code市场下架，受感染设备也已得到保护。GitHub表示，此次泄露仅涉及GitHub内部代码库，其他客户数据未受影响。  

黑客组织TeamPCP在犯罪论坛Breached上宣称对此负责，并索要至少5万美元出售被盗数据，威胁若无人购买将予以公开。该组织此前曾参与针对GitHub、PyPI、NPM、Docker等平台的供应链攻击，以及针对OpenAI员工的“Mini Shai-Hulud”行动。  

这起事件延续了市场上恶意VS Code扩展的模式，包括用于窃取凭证、部署挖矿程序和窃取数据的扩展。GitHub平台服务超过1.8亿开发者和400万组织。

---

## 3. N tokens per second到底有多快？

**原文标题**: How fast is N tokens per second really?

**原文链接**: [https://mikeveerman.github.io/tokenspeed/](https://mikeveerman.github.io/tokenspeed/)

本文介绍了一款交互式工具，旨在帮助用户**具体感知不同大语言模型每秒生成令牌数（tok/s）速度在阅读输出内容时的实际体验**。其核心观点在于，“47 tok/s”或“180 tok/s”这类基准数值过于抽象，不通过实时流式展示便难以直观理解。

该工具提供**四种内容模式**，展示相同速度因生成内容不同而带来的差异感受：
- **代码**（语法高亮），
- **文本**（散文），
- **思考**（推理过程+代码），
- **智能体**（工具调用+包含停顿的代码）。

用户可通过滑块调整速度：**1（5 tok/s）** 模拟慢速树莓派模型运行，**5（60 tok/s）** 为托管GPT/Claude的典型速度，**7（200 tok/s）** 接近Groq速度，**9（800 tok/s）** 代表Cerebras级别速度——此时阅读成为瓶颈。

关键要点：
- **分词**采用近似BPE风格，而非特定厂商编码。短单词常为单个令牌；较长标识符会拆分。
- **代码的令牌密度高于散文**，因此相同tok/s速度下，内容类型不同会导致感知速度产生快慢差异。
- **英文散文**平均每词约1.3个令牌，故30 tok/s≈23词/秒。
- 该工具旨在揭示原始基准数值与**不同速度下阅读各类大模型输出内容的感知体验**之间的落差。

---

## 4. Flipper One 技术规格

**原文标题**: Flipper One Tech Specs

**原文链接**: [https://docs.flipper.net/one/general/tech-specs](https://docs.flipper.net/one/general/tech-specs)

文章详细介绍了正在积极开发的Flipper One设备的技术规格。主要参数包括：

- **尺寸与构造**：155 x 67 x 40毫米，重量待定。机身采用PC/ABS材质，搭配阳极氧化铝散热片、支架和挂绳孔，以及TPU缓冲垫和康宁大猩猩玻璃屏幕。
- **显示屏**：256×144像素单色LCD，支持64级灰度，通过QSPI由微控制器驱动。
- **接口**：包括USB-C（支持DP Alt模式和PD）、USB-A、标准HDMI 2.1（4K@120Hz）、双千兆以太网、3.5毫米音频插孔、microSD卡槽和nano SIM卡槽。
- **控制**：配备触觉反馈触控板、5个应用按钮、电源键、方向键、返回键、应用切换键及PTT按键。
- **处理核心**：主CPU为瑞芯微RK3576（4×Cortex-A72 + 4×Cortex-A53，最高2.2 GHz），集成Mali-G52 GPU和6 TOPS NPU。低功耗微控制器为树莓派RP2350B。
- **内存与存储**：8 GB LPDDR5 RAM，64 GB UFS 2.2内部存储。
- **电池**：24000毫瓦时（7000毫安时，非最终规格），采用TI充电芯片和电量计，可通过USB-C PD最高支持26V充电。
- **连接性**：通过联发科MT7921支持Wi-Fi 6（2.4/5/6 GHz）和蓝牙5.2，另配双千兆以太网。
- **扩展**：M.2 Key B接口（支持PCIe、USB、SATA、SIM）及包含多个CPU/MCU引脚的GPIO排针。
- **调试**：独立调试接口，支持MCU和CPU的SWD与UART协议。

该设备在CPU上运行Linux系统，并配备定制MCU固件，附有详细的M.2和GPIO引脚定义说明。

---

## 5. Qwen3.7-Max：智能体前沿

**原文标题**: Qwen3.7-Max: The Agent Frontier

**原文链接**: [https://qwen.ai/blog?id=qwen3.7](https://qwen.ai/blog?id=qwen3.7)

**《Qwen3.7-Max：智能体前沿》摘要**

本文介绍了阿里巴巴最新的大型语言模型Qwen3.7-Max，该模型定位于AI智能体能力的前沿。文章重点突出了两大核心功能：扩展推理能力与增强的智能体自主性。

**扩展推理能力：**该模型能够逐步完成复杂问题的思考过程，通过"思考预算"机制为困难任务分配更多推理时间，从而在数学、编程和逻辑问题上提升准确性。

**智能体自主性：**Qwen3.7-Max可自主使用工具、浏览网页、执行代码并与API交互，无需人工干预即可完成多步骤任务，使其成为现实世界自动化场景的理想选择。

该模型旨在弥合高级推理与实际行动之间的差距，致力于成为基于智能体的AI领域的"前沿"之作。它标志着从简单对话向目标导向、自主决策型AI系统的转变，能够执行复杂工作流程。

---

## 6. 为什么Inkwell一直卡在审核中

**原文标题**: Why is Inkwell stuck in review

**原文链接**: [https://www.manton.org/2026/05/19/why-is-inkwell-stuck-in.html](https://www.manton.org/2026/05/19/why-is-inkwell-stuck-in.html)

**摘要：**  
Manton Reece 描述了其 iOS 应用 "Inkwell"（4月21日提交）在多次修复和申诉后仍遭长期拒绝的经历。苹果指南指出的关键问题包括：  

- **1.2**：缺少举报/屏蔽功能及明确服务条款——已补充。  
- **2.1(a)**：Apple登录按钮功能异常——已修复，并在跨应用登录时隐藏该功能。  
- **2.1(b)**：苹果质疑盈利模式——已做解释。  
- **3.1**：未针对Micro.blog收入设置应用内购买——已精简以符合阅读器或配套应用标准。  
- **4**：Apple登录时强制显示姓名的设计问题——已禁用该功能。  
- **5.1.1(v)**：缺少应用内账户删除功能——已添加删除按钮。  
- **5.2.5**：商标冲突——苹果自身已失效的 "Inkwell" 商标（自2002年失效）被反复引用，尽管其他应用已使用该名称。Reece 提起申诉，但对苹果超越法律依据的控制权感到失望。  

他尚未决定是否重新命名，但批评苹果对应用分发的绝对控制。

---

## 7. SBCL：终极汇编代码试验板（2014）

**原文标题**: SBCL: the ultimate assembly code breadboard (2014)

**原文链接**: [https://pvk.ca/Blog/2014/03/15/sbcl-the-ultimate-assembly-code-breadboard/](https://pvk.ca/Blog/2014/03/15/sbcl-the-ultimate-assembly-code-breadboard/)

本文介绍了一种通过将小型固定大小栈（8个槽位）直接映射到CPU寄存器来优化基于栈的虚拟机的技术。受查克·摩尔（Chuck Moore）的F18架构和x87浮点栈启发，作者实现了一个虚拟机，其中压栈/弹栈操作仅通过调整模块化指针而非移动数据。

核心创新在于**基元特化**：每个虚拟机指令拥有8种变体，分别对应每个可能的栈指针值。这些变体以固定间隔（每4288字节）存储在内存中，通过单个`LEA`指令即可高效分派——该指令将栈指针偏移量与基元基地址相加，计算出目标地址。

实现采用SBCL的汇编器生成x86-64机器码。栈驻留在R8-R15寄存器中，由模块化计数器追踪当前栈顶。`NEXT`指令（负责获取下一条虚拟机指令并跳转执行）封装了分派逻辑：从字节码中读取32位偏移量，加上基地址与变体偏移量，随后执行跳转。

文章演示了`swap`、`dup`、`drop`、`add`、`sub`等基元操作及控制流（`jmp`、`call`、`ret`）。还包含了FFI代码（`enter`/`leave`），用于从Common Lisp调用虚拟机，在内存缓冲区与寄存器栈之间复制数值。

最终生成的机器码紧凑高效，数据搬运量极小，且无浪费在寄存器重排上的周期，特别适合高性能类Forth系统。

---

## 8. 沙尔拉·博姆——其代码支撑着互联网的程序员

**原文标题**: Sharla Boehm, the programmer whose code underpins the Internet

**原文链接**: [https://www.scientificamerican.com/article/the-programmer-whose-code-underpins-the-internet/](https://www.scientificamerican.com/article/the-programmer-whose-code-underpins-the-internet/)

**摘要：**  
数学教师转行计算机程序员的莎拉·博姆，在20世纪60年代初创建了一项开创性模拟实验，为现代互联网奠定了基石。冷战期间，她在兰德公司工作，受命模拟保罗·巴兰提出的、能在核攻击下存活的分布式通信网络愿景。当时军用通信依赖集中式电话线和无线电，极易受攻击——1961年一次单电机过热险些引发意外核战争的事件便证明了这一点。  

博姆的模拟采用了“分组交换”技术：将信息拆解为小型数据包，每个数据包独立通过多个节点传输。她编写了“损伤”子程序测试网络弹性，证明即使部分节点失效，系统也能自动重新路由数据包——巴兰将这一概念称为“热土豆路由”。这种具备自愈与自适应能力的网络，正是如今机器学习概念的早期雏形。  

她的研究为巴兰提供了说服质疑者（包括AT&T）所需证据，证明数字化分布式网络的可行性。尽管作用关键，博姆却在互联网史中几乎被遗忘。本文强调其作为杰出程序员的遗产：她的代码支撑着互联网最底层的架构。

---

## 9. 告别Asm.js

**原文标题**: Saying Goodbye to Asm.js

**原文链接**: [https://spidermonkey.dev/blog/2026/05/20/saying-goodbye-to-asmjs.html](https://spidermonkey.dev/blog/2026/05/20/saying-goodbye-to-asmjs.html)

**摘要：** Mozilla 宣布将在 Firefox 148 中弃用 asm.js，并计划在未来的版本中完全移除相关代码。asm.js 将继续通过 JIT 作为常规 JavaScript 运行，但专用优化路径（OdinMonkey）将默认禁用。

**关键点：**
- asm.js 是 Mozilla 于 2013 年推出的创新，利用严格的 JavaScript 子集在网页上运行原生速度的 C/C++ 代码，使 Unity 和 Unreal 等项目能够移植到网页端。
- 它为 WebAssembly（随 Firefox 52 发布）铺平了道路，如今已基本过时。
- WebAssembly 速度更快、生成的二进制文件更小，且维护需求更低，而 asm.js 增加了攻击面和维护成本。
- 文章用隐喻将 OdinMonkey 的移除比喻为“诸神黄昏”，由 WebAssembly 编译器 BaldrMonkey 和 RabaldrMonkey 接替。
- 建议：开发者应将 asm.js 内容重新编译为 WebAssembly，以获得更优性能和更小的文件体积。

---

## 10. 钱学森：美国失去、中国得到的导弹天才（2025）

**原文标题**: Qian Xuesen: The missile genius America lost and China gained (2025)

**原文链接**: [https://www.usni.org/magazines/naval-history/2025/december/missile-genius-america-lost-and-china-gained](https://www.usni.org/magazines/naval-history/2025/december/missile-genius-america-lost-and-china-gained)

无法访问该文章链接。

---

## 11. 金属地图

**原文标题**: Map of Metal

**原文链接**: [https://mapofmetal.com/](https://mapofmetal.com/)

题为《金属地图》的文章介绍了一项交互式可视化工具，该工具全景式展现了金属音乐的历史脉络及其各子流派中具有影响力的开创性乐队。这张由帕特里克·加尔布雷思打造的数字地图基于网页技术设计，需启用JavaScript方可运行。作为兼具历史与教育意义的资源平台，它系统梳理了金属乐从早期萌芽到当代风格的演进历程，着重标注了定义每种流派的代表性乐队。文中特别提示，用户需在浏览器中开启JavaScript功能，方可浏览并探索该地图的交互特性。

---

## 12. 事故报告：2026年5月19日——GCP账户暂停

**原文标题**: Incident Report: May 19, 2026 – GCP Account Suspension

**原文链接**: [https://blog.railway.com/p/incident-report-may-19-2026-gcp-account-outage](https://blog.railway.com/p/incident-report-may-19-2026-gcp-account-outage)

**摘要：**2026年5月19日，Railway因谷歌云错误暂停其生产账户，导致整个平台中断8小时。此次事故立即造成Railway的控制面板、API、数据库及GCP托管计算服务瘫痪。虽然Railway Metal和AWS上的工作负载最初保持在线，但随着边缘代理路由缓存过期，故障逐步蔓延。由于网络控制平面（托管于GCP）负责填充路由表，缓存过期后所有工作负载均无法访问，导致所有区域出现404错误。

恢复耗时约8小时（UTC时间22:20至次日06:14）。账户访问权限恢复后，持久磁盘、计算实例及网络连接需分别单独修复。恢复过程中，GitHub因重试流量激增对Railway的OAuth及网络钩子实施了速率限制，暂时阻塞了登录和构建功能。

Railway对这一架构依赖承担全部责任——单一供应商的操作即导致平台级故障。预防措施包括：移除工作负载发现机制对GCP托管控制平面的强依赖，构建真正的网状网络；将高可用数据库分片扩展至AWS和Metal；计划将GCP从数据平面核心路径中移除，仅保留其用于故障切换。Railway声明，其最终需为自身供应商选择及客户可用性责任负责。

---

## 13. 谷歌的人工智能正被操控。这家搜索巨头正悄然反击。

**原文标题**: Google's AI is being manipulated. The search giant is quietly fighting back

**原文链接**: [https://www.bbc.com/future/article/20260519-google-tackles-attempts-to-hack-its-ai-results](https://www.bbc.com/future/article/20260519-google-tackles-attempts-to-hack-its-ai-results)

**摘要：**

本文揭示了谷歌Gemini、ChatGPT及AI Overviews等人工智能聊天机器人存在的一个重大安全隐患。英国广播公司的一项调查发现，只需发布一篇精心设计的博客文章或社交媒体帖子，就能轻易操纵这些工具。人工智能常常会引用这些未经核查的信息，从而在健康、金融乃至个人资质等议题上传播不实内容。

为进行演示，作者成功诱导ChatGPT和谷歌宣称自己是世界冠军级热狗大胃王。更严重的是，一些无良公司正利用同一手法推销带有偏见的建议，或淡化健康隐患。专家警告，这种“系统性”操纵可能影响人们在投票、医疗或财务等方面的决策。

作为回应，谷歌已更新其垃圾内容政策，明确禁止试图操纵人工智能回复的行为，并威胁将降低违规网站排名或将其移除。尽管谷歌坚称这仅是政策澄清，但专家注意到微妙变化：人工智能工具开始从引用中删除自我推销的名称，添加关于低可信度的警告，并推荐第三方评价。然而，批评者形容此举如同“打地鼠”游戏，因为操纵者已在转变策略——例如，付费给YouTube网红，而谷歌的人工智能如今会引用他们的内容。

文章总结道，在更完善的系统建立之前，用户应保持怀疑态度，并牢记人工智能会自信地给出唯一答案，无论其准确与否。核心信息是：切勿轻信人工智能生成的内容。

---

## 14. Meta阻止人权账号向沙特阿拉伯和阿联酋的受众发布内容

**原文标题**: Meta blocks human rights accounts from reaching audiences in Saudi Arabia, UAE

**原文链接**: [https://www.alqst.org/ar/posts/1190](https://www.alqst.org/ar/posts/1190)

**概要：**

2026年5月20日发布的报道称，Meta已对沙特阿拉伯和阿联酋的独立非政府组织、研究人员及人权捍卫者的脸书和Instagram账户实施地理封锁，有效阻止其内容触及当地受众。受影响方包括ALQST人权组织、民主迪万以及阿卜杜拉·阿劳德等活动人士。Meta称此举是出于遵守当地网络犯罪法律及政府要求。

由人权与数字权利组织组成的签署方联盟谴责这是任意、歧视性行为，且侵犯言论自由。他们指出，自2026年3月以来，已有超过100个账户受到限制，此前X平台（原推特）也出现过类似情况。文章强调，这两个海湾国家惯用网络犯罪法律压制异见，尤其在2026年2月美国/以色列对伊朗发动打击之后。

Meta声称在合规前进行了人权尽职调查，但签署方要求透明度，质疑一个压制性政府要求限制人权组织的行为，如何与Meta宣称的承诺相符。他们呼吁Meta公布法律请求及人权评估报告，恢复所有账户，向用户告知具体信息，并解释其海湾地区办事处的作用。文章凸显了企业合规与《联合国指导原则》下企业人权责任之间的紧张关系。

---

## 15. 显然，谷歌现在讨厌我们了。

**原文标题**: Apparently Google hates us now

**原文链接**: [https://twitter.com/pokemoncentral/status/2057123807404638250](https://twitter.com/pokemoncentral/status/2057123807404638250)

题为“显然谷歌现在讨厌我们”的文章展示了一张来自X（原Twitter）的错误页面截图，提示浏览器中禁用了JavaScript。该信息指示用户启用JavaScript或更换受支持的浏览器以继续使用该平台，并提供了帮助中心、服务条款、隐私政策、Cookie政策、版权声明和广告信息的链接。页面底部附有X公司2026年的版权声明。核心内容为：X因用户禁用JavaScript而阻止访问，要求用户采取相应措施才能继续使用。

---

## 16. LoRA与权重衰减（2023）

**原文标题**: LoRA and Weight Decay (2023)

**原文链接**: [https://irhum.github.io/blog/lorawd/](https://irhum.github.io/blog/lorawd/)

**摘要：LoRA与权重衰减的相互作用**

LoRA（低秩适配）通过训练小型适配矩阵（A和B）而非全部模型权重，高效微调大型语言模型。尽管被视为全量微调的即插即用替代方案，LoRA与权重衰减的相互作用方式不同，形成了独特的优化目标。

在标准微调中，权重衰减将权重正则化趋向于零（W→0）。然而，在LoRA中，权重衰减将A和B推向零，这实际上使适配后的权重矩阵偏向于原始冻结权重（W→W_init），而非零值。无论LoRA的秩大小如何，这一差异始终存在，这意味着即使具有无限容量，LoRA也无法完美近似全量微调。

文章指出，这既可能是一个特性（在数据稀缺时有助于保持模型接近基础模型），也可能是一个缺陷（在数据充足时限制适配能力）。文章提出了一种修正方案：修改正则化项，使整个适配矩阵（W_init+AB）趋向于零衰减，这需要为A和B定制更新方程。附录澄清，正确的权重衰减需要将正则化与基于动量的优化器（如Adam）解耦，采用AdamW方法。

实践者在应用LoRA时应考虑这种隐式正则化偏差。

---

## 17. 追踪星巴克“广泛可回收”杯子：无一进入回收流程

**原文标题**: Tracking Starbucks' 'widely recyclable' cups: none ended up at recycling

**原文链接**: [https://www.beyondplastics.org/press-releases/starbucks-cups-recyclable-report](https://www.beyondplastics.org/press-releases/starbucks-cups-recyclable-report)

《超越塑料》组织历时三个月的调查，追踪了53枚蓝牙追踪器——它们被放置在星巴克一次性聚丙烯（5号塑料）冷饮杯中，投放到美国9个州及华盛顿特区共35家门店的店内回收箱。在返回可用数据的36枚追踪器中，没有一个最终抵达回收设施。这些杯子最终流向了填埋场、焚化炉和垃圾转运站。具体而言，16个杯子进入填埋场，9个被焚烧，8个抵达垃圾转运站，3个到达材料回收设施（这些设施仅分拣塑料而不进行回收）。

这项调查与星巴克公开宣称其聚丙烯杯具"广泛可回收"的说法相悖。该公司曾于2026年2月与WM及How2Recycle联合声明，称超过60%的美国家庭可通过路边回收系统回收这些杯子。然而，美国塑料回收率不足6%，且很少有设施回收聚丙烯材料。《超越塑料》还发现，11个州的许多星巴克门店根本不提供任何回收服务。

作为全球最大咖啡连锁品牌，星巴克拥有超过4万家门店，其美国市场约75%的饮品使用这类塑料杯供应。报告结论指出，星巴克正在误导消费者，应当优先采用无塑料的可重复使用替代方案，而非推广具有欺骗性的可回收宣传。

---

## 18. Node.js 26.0.0（现已集成 Temporal）

**原文标题**: Node.js 26.0.0 (Now with Temporal)

**原文链接**: [https://nodejs.org/en/blog/release/v26.0.0](https://nodejs.org/en/blog/release/v26.0.0)

**Node.js 26.0.0 发布摘要**

Node.js 26.0.0（最新版本）已正式发布，长期支持（LTS）计划于2026年10月开始。主要亮点包括：

**新特性：**
- **Temporal API** 现默认启用——作为替代传统Date对象的现代化日期/时间API。
- **V8引擎** 更新至14.6版本，新增`Map.prototype.getOrInsert()`和`Iterator.concat()`方法。
- **Undici** 更新至8.0.2版本，提升HTTP客户端性能。

**弃用与移除：**
- 移除：`writeHeader()`（改用`writeHead()`）、旧版`_stream_*`模块及`--experimental-transform-types`。
- 运行时弃用：`module.register()`及加密模块DEP0203/DEP0204弃用。
- 加密模块：DEP0182已进入生命周期终结阶段。

**其他重要变更：**
- GCC最低版本提升至13.2；停止支持Python 3.9。
- 新增加密功能：支持原始密钥格式、Ed25519上下文参数及改进的错误详情。
- 流处理现每次仅读取一个缓冲区；无文件时`localStorage`返回`undefined`。

此次发布在现代化Node.js的同时移除了传统API，建议开发者测试应用兼容性。

---

## 19. C语言中的一切都是未定义行为

**原文标题**: Everything in C is undefined behavior

**原文链接**: [https://blog.habets.se/2026/05/Everything-in-C-is-undefined-behavior.html](https://blog.habets.se/2026/05/Everything-in-C-is-undefined-behavior.html)

本文指出，所有非平凡的C和C++代码均包含未定义行为（UB），这使得这些语言本质上不安全且无法正确使用。这位拥有30年经验的老将强调，UB不仅是优化问题——编译器假定代码有效，且无论优化设置如何，UB都可能出现。

微妙的UB典型示例包括：
- **指针对齐**：解引用未对齐的指针（例如通过将字节数组转换为`int*`）属于UB，即便在x86这类对对齐宽容的架构上也是如此。
- **`isxdigit()`与`char`输入**：若`char`类型为有符号且包含大于127的值，该值将变为负数，从而导致数组越界访问。
- **浮点数转整数**：非有限值或不可表示值的溢出属于UB。
- **地址为零的对象**：C语言不保证空指针指向零地址，解引用空指针属于UB。
- **可变参数函数**：格式说明符不匹配（如对`uint64_t`使用`%ld`）或将整数`0`而非类型化的`NULL`指针作为参数传递均属于UB。
- **整型提升**：如`a + b`这类算术运算会将操作数提升为`int`类型，令开发者意外。

作者指出，即便是OpenBSD这样成熟的代码库也普遍存在UB，而大型语言模型（LLM）如今能够可靠地检测此类问题。提出的解决方案是：使用LLM监督C/C++代码中的UB，因为人类专家过于繁忙，且代码库过于庞大，无法进行人工审查。作者总结道，在2026年编写C/C++代码时若未使用自动UB检测，应被视为不负责任的行为。

---

## 20. AI编码循环的形式化验证门

**原文标题**: Formal Verification Gates for AI Coding Loops

**原文链接**: [https://reubenbrooks.dev/blog/structural-backpressure-beats-smarter-agents/](https://reubenbrooks.dev/blog/structural-backpressure-beats-smarter-agents/)

**摘要：面向AI编码循环的形式化验证门**

本文认为，相较于更智能的AI模型，结构性反压对于确保代码正确性更为关键。作者建议用结构性门（编译器、类型检查器、linter、测试运行器）取代行为性门（提示词、指令、清单），这些结构性门能在代码违反不变性时产生确定性的、机器可检查的拒绝信号。

**核心要点：**

- **问题：** 失效的访问控制仍是OWASP头号漏洞，因为不变性依赖于易出错的人类/模型记忆。AI生成代码加剧了这一问题。
- **解决方案：** 通过生成守卫类型的形式化规约，将不变性嵌入代码基底。这使违规行为在结构上难以被意外引入。
- **实现：** **Shen-Backpressure** 使用Shen（一种带类型的Lisp）编写形式化规约，然后`shengen`将其降级为目标语言（Go/TypeScript/Python/Rust）的守卫类型，并辅以密封构造函数。示例：多租户授权要求构造一个`TenantAccess`类型来证明成员资格——绕过操作将在编译时失败。
- **循环：** 一个Ralph风格的迭代循环在每次迭代中运行五个默认门（`shengen`、`test`、`build`、`shen tc+`、`tcb audit`），并将失败信息作为具体上下文回传。
- **权衡：** 编写规约需要投入精力；生成的守卫代码是神圣的（拒绝手动编辑）；理论上可以绕过，但实际操作困难。

**论点：** 对于AI编码循环，确定性的拒绝面（结构性门）比更智能的模型能提供更好的确定性。通过的门禁和绿色的CI运行给审计员提供了具体可靠的东西——不可靠的模型行为无法提供这一点。

---

## 21. 使用AI代理测试分布式系统

**原文标题**: Testing distributed systems with AI agents

**原文链接**: [https://github.com/shenli/distributed-system-testing](https://github.com/shenli/distributed-system-testing)

**《利用AI代理测试分布式系统》摘要**

本文提出了一种结构化的、基于声明驱动的方法，使用AI编码代理（Claude Code、Codex、Gemini等）来测试分布式和有状态系统。文章介绍了两种以SKILL.md文件形式交付的技能工作流程：

1.  **设计技能**：分析系统声明（承诺），生成反证假设，并生成结构化的Markdown测试计划（§0–§9）。对于一致性关键场景，它要求包含抽象模型（如寄存器、日志）、操作历史模式、命名检查器（如线性化）、具有可观测着陆证据的克星（nemesis）以及歧义结果处理。

2.  **执行技能**：运行测试计划，捕获故障证据，应用9种状态判定（通过、失败、无结论等），并将故障归责于被测系统/测试工具/检查器/环境。输出带有置信度变化量的发现报告。

核心原则：测试以其所要反驳的声明命名；将覆盖率充分性作为可交付成果；重用现有被测系统工具；无静默通过（每个判定都引用证据）。技术目录借鉴了Jepsen/Elle、确定性模拟、混沌注入、形式化方法和崩溃恢复测试。

安装只需一个复制粘贴命令（幂等的git clone加符号链接）。该仓库包含针对AgentDB（Rust）的真实验证运行、一个评估套件以及一个完整的参考技术目录。状态：尚处于早期阶段但已得到实践，并已发现已证实的错误。

---

## 22. 稳定音频 3

**原文标题**: Stable Audio 3

**原文链接**: [https://arxiv.org/abs/2605.17991](https://arxiv.org/abs/2605.17991)

**Stable Audio 3 简介**

Stable Audio 3 是一系列快速潜扩散模型（小、中、大），专为可变长度音频生成与编辑而设计。主要特性包括：

- **可变长度生成**：模型可生成数分钟音频，避免为短声音生成全长输出带来的成本。
- **补全修复**：支持目标音频编辑及短录音的延续。
- **新型自编码器**：一种语义-声学自编码器，将音频投影至紧凑潜空间，在保持保真度的同时实现高效扩散，并促进语义结构。
- **对抗性后训练**：加速推理、提升质量，减少所需步骤并增强提示遵循度。
- **性能**：在H200 GPU上不到2秒即可生成音乐与声音，在MacBook Pro M4上仅需数秒。
- **训练数据**：基于授权及知识共享数据进行训练。
- **开源发布**：小模型与中模型的权重（可在消费级硬件上运行）随训练及推理流水线一同发布。

---

## 23. 应对大型代码铸造碎片化问题

**原文标题**: Handling the great code forge fragmentation

**原文链接**: [https://www.alexselimov.com/posts/forge_fragmentation/](https://www.alexselimov.com/posts/forge_fragmentation/)

**摘要：应对代码锻造平台碎片化**

文章探讨了随着用户离开GitHub转向Codeberg、自托管Forgejo及GitLab等替代平台，代码锻造领域正持续碎片化。Mitchell Hashimoto对Ghostty项目的决策被视为这一趋势的潜在风向标。

核心要点包括：

1. **统一活动追踪**：作者创建了Go脚本与Hugo模块，将来自多个锻造平台的贡献数据整合至单一热力图，解决了跨平台工作追踪难题。

2. **抵御AI垃圾的信任体系**：开源维护者正被AI生成的PR与问题淹没。Hashimoto的“担保”系统通过VOUCHED.td文件追踪已批准/屏蔽的贡献者。作者呼吁构建内置的跨平台信任链，以确保贡献者质量并遏制机器人行为。

3. **用户名锁定**：随着信任机制向担保制转变，用户应在主要平台（Codeberg、GitLab、Bitbucket）统一注册用户名，防止身份盗用。

4. **自托管**：通过禁用账户注册功能自托管Forgejo，并要求已知管理员手动审批注册，可最大限度抵御垃圾信息。

5. **镜像至GitHub**：作者将仓库镜像至GitHub以维持社区互动与问题追踪，同时手动将PR迁移至自托管锻造平台，以此作为抵御恶意CI操作的加固措施。

文章结论建议采用统一活动图谱并跨平台锁定用户名，同时承认GitHub未来走向尚存不确定性。

---

## 24. 《当快速傅里叶变换遇见Transformer：图像复原新方法（2024）》

**原文标题**: When Fast Fourier Transform Meets Transformer for Image Restoration (2024)

**原文链接**: [https://github.com/deng-ai-lab/SFHformer](https://github.com/deng-ai-lab/SFHformer)

**摘要：**

本文发表于ECCV 2024，提出了一种将快速傅里叶变换（FFT）集成到Transformer架构中的图像复原框架SFHformer。其核心创新在于双域混合结构：空间域负责局部建模，而频率域通过FFT实现高效的全局建模。针对不同频率分量设计了独特的定位编码与频率动态卷积，以提取丰富特征。

该方法基于图像退化可从频率角度理解的假设，为多种复原任务提供了通用解决方案。在涵盖**去雨、去雾、去模糊、去雪、去噪、超分辨率以及水下/低光照增强**等**十项复原任务**、涉及**三十一个数据集**的大量实验中，SFHformer的性能均优于现有最先进方法。值得注意的是，它在性能、参数量和计算成本之间取得了良好平衡。此外，论文还提供了开源代码、预训练权重以及多个数据集的可视化结果。后续扩展SWFormer进一步探索了多领域学习。

---

## 25. 田纳西州男子因特朗普表情包被监禁37天，诉讼后获和解赔偿

**原文标题**: Tennessee man jailed 37 days for Trump meme wins settlement after lawsuit

**原文链接**: [https://www.fire.org/news/victory-tennessee-man-jailed-37-days-trump-meme-wins-835000-settlement-after-first-amendment](https://www.fire.org/news/victory-tennessee-man-jailed-37-days-trump-meme-wins-835000-settlement-after-first-amendment)

**摘要：**

退休执法人员拉里·布沙特因转发一则准确引用唐纳德·特朗普校园枪击后言论“我们必须挺过去”的迷因，在田纳西州佩里县被监禁37天。该迷因提及2024年爱荷华州一起校园枪击案，但警长尼克·威姆斯明知该迷因源自其他州，仍取得逮捕令，声称其威胁了当地一所田纳西高中。

布沙特被以200万美元保释金关押，失去了退休后工作、错过了结婚纪念日及孙辈出生。直到案件在网络上引发广泛关注后才获释。由个人权利与表达基金会代理，布沙特提起联邦民权诉讼，指控其因受保护言论遭报复。

2026年5月20日，双方宣布达成83.5万美元和解。布沙特称其第一修正案权利得到伸张。基金会律师强调，警方不能因无害政治迷因监禁他人，此和解应能震慑类似滥用职权行为。该案是保守派活动人士查理·柯克遭刺杀后更广泛审查模式的一部分。

---

## 26. 日本正被大规模过敏所困扰。20世纪50年代的一项工程是罪魁祸首。

**原文标题**: Japan is gripped by mass allergies. A 1950s project is to blame

**原文链接**: [https://www.bbc.com/future/article/20260515-the-1950s-blunder-which-causes-mass-hay-fever-in-japan](https://www.bbc.com/future/article/20260515-the-1950s-blunder-which-causes-mass-hay-fever-in-japan)

日本正面临严重的国民花粉症危机，43%的人口患有花粉过敏症，主要致病原因为日本柳杉和扁柏。这场危机的根源可追溯至20世纪50年代：战后滥伐导致政府为快速恢复植被，大规模种植这两种速生树种。如今，单一树种人工林占日本国土面积的20%，释放出大量引发过敏的花粉。据估算，因病假和消费减少造成的经济损失每日高达16亿美元。

为此，日本在2023年将花粉过敏症列为全国性社会问题，计划在2033年前将高花粉柳杉林减少20%，并在30年内将花粉总量降低50%。然而，改造这些森林面临巨大挑战。神户、西粟仓等地的地方项目已成功恢复生物多样性丰富的阔叶林，这些森林还能有效防止山体滑坡并维持野生动植物栖息。日本同时投入资金开发花粉预报、低花粉树苗、新型药物，并开征森林环境税以支持可持续林业。

气候变化导致花粉传播期提前，进一步加剧问题。尽管柳杉人工林储存了可观碳量，但老龄树木吸碳能力下降，亟需以多样性树种进行再造林以维持碳汇功能。批评者警告，若仅聚焦过敏问题而忽视整体生态健康，需制定兼顾生物多样性与气候适应性的长期规划。

---

## 27. Transformer中的自回归下一词元预测与KV缓存

**原文标题**: Autoregressive next token prediction and KV Cache in transformers

**原文链接**: [https://medium.com/advanced-deep-learning/autoregressive-next-token-prediction-kv-cache-in-transformers-afad22285baf](https://medium.com/advanced-deep-learning/autoregressive-next-token-prediction-kv-cache-in-transformers-afad22285baf)

**摘要：**

本文阐释了Transformer模型中自回归下一个词元预测的机制，以及键值缓存（KV Cache）在优化推理过程中的作用。

**要点：**
- **自回归生成：** Transformer模型逐个生成词元，每个新词元依赖之前生成的所有词元，这一顺序过程计算成本高昂。
- **标准注意力机制的问题：** 在朴素实现中，每生成一个新词元，模型都要对整个历史序列重新计算注意力，导致冗余计算，且时间复杂度与序列长度呈平方关系。
- **键值缓存解决方案：** KV缓存存储了先前注意力计算中的键矩阵（Key）和值矩阵（Value）。对于每个新词元，仅需计算其查询（Query）、键（Key）和值（Value）。新的键和值被追加到缓存中，注意力计算则使用缓存的（过去的）键和值加上新的键值对进行。
- **优势：** 这使得每步时间复杂度从O(n²)降低到O(n)（与序列长度呈线性关系），通过消除冗余重计算，大幅加速推理过程。
- **权衡：** KV缓存会随批次大小、序列长度、层数和模型维度的增加而线性增加内存占用。对于长上下文或大模型而言，这可能成为瓶颈，通常通过KV缓存量化或卸载等技术进行缓解。

**结论：** KV缓存是实现高效Transformer推理的关键优化手段，它以增加内存开销为代价，实现了快速自回归生成。

---

## 28. Show HN：Lance – 图像/视频生成与理解融合于单一模型

**原文标题**: Show HN: Lance – image/video generation and understanding in one model

**原文链接**: [https://github.com/bytedance/Lance](https://github.com/bytedance/Lance)

**Lance：统一多模态模型简介**

Lance是字节跳动开发的30亿参数原生统一多模态模型，能够在单一框架内处理图像与视频的理解、生成与编辑任务。该模型（除ViT和VAE编码器外）在128块A100 GPU预算下从头训练而成，尽管活跃参数量较小，但在多个基准测试中展现出强劲性能。

**核心能力：**
- **文本到图像/视频生成**——输出768px分辨率的高质量图像，以及最长121帧的视频。
- **图像/视频编辑**——支持多轮一致性编辑与智能视频编辑。
- **图像/视频理解**——执行视觉问答、推理与描述（例如车牌识别、饼图分析、视频事件描述）。

**性能亮点：**
- 在多项基准测试中超越众多更大规模模型：GenEval总分0.90（与TUNA-7B持平），DPG-Bench评分84.67，VBench视频生成总分85.11领跑。
- GEdit-Bench图像编辑评分7.30，超越多数统一模型。

**技术要点：**
- 采用分阶段多任务训练方案。
- 推荐硬件：显存≥40GB的GPU；兼容CUDA 12.4+。
- 开源：模型权重已发布于Hugging Face，提供Gradio演示界面及任务专用推理脚本。

---

## 29. 智能媒体卡规范开放，免费获取（2000年）

**原文标题**: Smartmedia Card Spec Opened, available free (2000)

**原文链接**: [https://www.edn.com/smartmedia-card-interface-spec-opened-available-for-free/#google_vignette](https://www.edn.com/smartmedia-card-interface-spec-opened-available-for-free/#google_vignette)

无法访问该文章链接。

---

## 30. 再见，Visa和万事达：1.3亿欧洲人转向主权支付系统

**原文标题**: Goodbye Visa and Mastercard: 130M Europeans switching to sovereign payment

**原文链接**: [https://www.lesnumeriques.com/banque-en-ligne/adieu-visa-et-mastercard-130-millions-d-europeens-basculent-vers-un-paiement-100-souverain-des-2026-n250918.html](https://www.lesnumeriques.com/banque-en-ligne/adieu-visa-et-mastercard-130-millions-d-europeens-basculent-vers-un-paiement-100-souverain-des-2026-n250918.html)

**摘要：**

欧洲支付联盟将挑战Visa和万事达，由五大国家系统联合组成：法国的Wero、西班牙的Bizum、意大利的Bancomat、葡萄牙的MB WAY以及北欧的Vipps MobilePay。它们共同代表13个国家的**1.3亿活跃用户**，构建了一个无需数据经过美国服务器即可处理数十亿笔交易的主权替代方案。

该项目将创建一个中央互操作枢纽，由将于2026年上半年成立的合资企业管理。该枢纽将实现国家系统之间的无缝跨境支付——例如，法国Wero用户向西班牙Bizum用户转账，如同国内转账一样便捷。

**部署时间表：** 2026年，13个国家之间的个人对个人转账启动；2027年，在线和店内支付跟进。该联盟最终将覆盖**72%的欧盟和挪威人口**。

自2025年3月起运营的EuroPA联盟（西班牙、葡萄牙、意大利、安道尔）作为原型，在未做广告的情况下一年内处理了600万欧元交易，显示出巨大潜力。

该计划旨在结束欧洲对非欧洲大陆巨头的依赖，这一优先事项由欧洲央行行长克里斯蒂娜·拉加德于2025年4月强调。

---

