# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-20.md)

*最后自动更新时间: 2026-05-20 20:32:22*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 2 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 3 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 4 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 5 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 6 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 7 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 8 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 9 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 10 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 11 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 12 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 13 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 14 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 15 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 16 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 17 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 18 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 19 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 20 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 21 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 22 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 23 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 24 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 25 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 26 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 27 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 28 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 29 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 30 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 31 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 32 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 33 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 34 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 35 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 36 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 37 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 38 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 39 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 40 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 41 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 42 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 43 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 44 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 45 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 46 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 47 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 48 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 49 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 50 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 51 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 52 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 53 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 54 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 55 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 56 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 57 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 58 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 59 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 60 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 61 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 62 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 63 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 64 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 65 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 66 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 67 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 68 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 69 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 70 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 71 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 72 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 73 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 74 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 75 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 76 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 77 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 78 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 79 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 80 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 81 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 82 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 83 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 84 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 85 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 86 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 87 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 88 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 89 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 90 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 91 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 92 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 93 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 94 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 95 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 96 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 97 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 98 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 99 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 100 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 101 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 102 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 103 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 104 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 105 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 106 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 107 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 108 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 109 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 110 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 111 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 112 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 113 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 114 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 115 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 116 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 117 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 118 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 119 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 120 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 121 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 122 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 123 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 124 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 125 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 126 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 127 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 128 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 129 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 130 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 131 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 132 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 133 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 134 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 135 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 136 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 137 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 138 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 139 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 140 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 141 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 142 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 143 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 144 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 145 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 146 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 147 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 148 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 149 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 150 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 151 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 152 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 153 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 154 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 155 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 156 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 157 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 158 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 159 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 160 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 161 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 162 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 163 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 164 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 165 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 166 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 167 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 168 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 169 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 170 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 171 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 172 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 173 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 174 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 175 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 176 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 177 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 178 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 179 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 180 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 181 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 182 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 183 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 184 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 185 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 186 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 187 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 188 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 189 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 190 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 191 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 192 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 193 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 194 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 195 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 196 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 197 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 198 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 199 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 200 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 201 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 202 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 203 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 204 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 205 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 206 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 207 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 208 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 209 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 210 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 211 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 212 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 213 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 214 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 215 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 216 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 217 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 218 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 219 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 220 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 221 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 222 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 223 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 224 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 225 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 226 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 227 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 228 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 229 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 230 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 231 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 232 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 233 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 234 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 235 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 236 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 237 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 238 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 239 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 240 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 241 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 242 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 243 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 244 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 245 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 246 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 247 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 248 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 249 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 250 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 251 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 252 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 253 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 254 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 255 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 256 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 257 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 258 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 259 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 260 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 261 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 262 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 263 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 264 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 265 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 266 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 267 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 268 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 269 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 270 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 271 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 272 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 273 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 274 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 275 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 276 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 277 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 278 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 279 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 280 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 281 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 282 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 283 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 284 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 285 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 286 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 287 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 288 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 289 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 290 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 291 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 292 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 293 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 294 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 295 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 296 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 297 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 298 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 299 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 300 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 301 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 302 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 303 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 304 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 305 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 306 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 307 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 308 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 309 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 310 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 311 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 312 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 313 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 314 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 315 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 316 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 317 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 318 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 319 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 320 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 321 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 322 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 323 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 324 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 325 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 326 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 327 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 328 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 329 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 330 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 331 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 332 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 333 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 334 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 335 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 336 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 337 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 338 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 339 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 340 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 341 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 342 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 343 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 344 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 345 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 346 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 347 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 348 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 349 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 350 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 351 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 352 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 353 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 354 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 355 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 356 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 357 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 358 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 359 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 360 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 361 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 362 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 363 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 364 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 365 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 366 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 367 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 368 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 369 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 370 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 371 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 372 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 373 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 374 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 375 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 376 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 377 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 378 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 379 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 380 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 381 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 382 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 383 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 384 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 385 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 386 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 387 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 388 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 389 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 390 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 391 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 392 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 393 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 394 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 395 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 396 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 397 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 398 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 399 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 400 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 401 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 402 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 403 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 404 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 405 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 406 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 407 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 408 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 409 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 410 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 411 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 412 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 413 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 414 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 415 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 416 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 417 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 418 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 419 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 420 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 421 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 422 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 423 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 424 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
