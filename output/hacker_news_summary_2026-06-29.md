# Hacker News 热门文章摘要 (2026-06-29)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Qwen 3.6 27B 是本地开发的最佳选择

**原文标题**: Qwen 3.6 27B is the sweet spot for local development

**原文链接**: [https://quesma.com/blog/qwen-36-is-awesome/](https://quesma.com/blog/qwen-36-is-awesome/)

文章评述了**Qwen 3.6 27B**——作者Piotr Migdał认为首个适用于本地开发的"通用智能"本地AI模型。该模型有两个变体：快速混合专家版（35B A3B）和更慢但更强大的密集模型（27B），推荐使用后者。

**关键要点：**
- **性能**：Qwen 3.6 27B体现出超越自身参数规模的实力，得分可与2025年中期前沿模型（如GPT-5或Claude Sonnet 4.5）相媲美。它成功处理了限制性写作、六边形扫雷应用（Node包）以及单条指令的UI任务。
- **本地运行**：使用`llama.cpp`（而非Ollama）配合Hugging Face GGUF文件（如8位量化）。示例命令：`llama-server -hf unsloth/Qwen3.6-27B-MTP-GGUF:Q8_0 --spec-type draft-mtp ...`。多令牌预测（MTP）可提升速度。
- **速度**：在Macbook Max M5（128 GB）上，启用MTP后达到**32 tok/s**，占用42 GB内存。在RTX 5090上，用户报告Q6量化下可达50 tok/s。
- **对比**：本地性能优于Gemma 4 31B。35B A3B速度快3倍但质量较低。DeepSeek V4 Flash（DwarfStar4）性能类似但需要更激进的量化。
- **为何选择本地**：模型不会被收回，可微调，且能保护敏感数据。作者预测未来模型将分离智能与知识，使本地设备更小巧。

---

## 2. 火箭实验室收购铱星公司

**原文标题**: Rocketlab acquires Iridium

**原文链接**: [https://investors.rocketlabcorp.com/news-releases/news-release-details/rocket-lab-acquire-iridium-historic-deal-creating-fully](https://investors.rocketlabcorp.com/news-releases/news-release-details/rocket-lab-acquire-iridium-historic-deal-creating-fully)

无法访问文章链接。

---

## 3. Ornith-1.0：面向智能体编程的自我改进开源模型

**原文标题**: Ornith-1.0: self-improving open-source models for agentic coding

**原文链接**: [https://github.com/deepreinforce-ai/Ornith-1](https://github.com/deepreinforce-ai/Ornith-1)

**Ornith-1.0 概要**

Ornith-1.0 是一系列开源、自我进化的编程智能体AI模型，采用MIT许可证发布，无地域限制。提供9B-Dense、31B-Dense、35B-MoE和397B-MoE四种规格（基于Gemma 4与Qwen 3.5构建），在SWE-bench、Terminal-Bench、NL2Repo及OpenClaw等编程基准测试中均达到业界领先水平。

**核心特性：**
- **自我进化训练：** 采用强化学习联合优化解决方案生成与驱动推理的脚手架系统，持续改进搜索路径与解的质量。
- **推理模型：** 在输出最终答案前通过`<think>`标签输出思维链推理过程。
- **工具调用：** 生成结构化函数调用，兼容OpenAI风格API。

**部署

**基准测试亮点：** 397B模型在SWE-bench Verified上取得82.4%得分，Terminal-Bench 2.1（Claude Code）上获78.2%成绩，超越众多闭源方案。

所有检查点均以bf16、FP8和GGUF格式发布在Hugging Face平台，支持通过vLLM、SGLang、Ollama或直接集成Hugging Face Transformers进行灵活部署。

---

## 4. SSH本地图形化外壳

**原文标题**: A native graphical shell for SSH

**原文链接**: [https://probablymarcus.com/blocks/2026/06/28/native-graphical-shell-for-SSH.html](https://probablymarcus.com/blocks/2026/06/28/native-graphical-shell-for-SSH.html)

本文介绍 **Outer Shell**，一款开源的 SSH 图形化外壳，可让服务器和边缘设备提供基于浏览器的交互界面。其核心理念是用图形化应用取代终端应用，每个应用作为小型 HTTP 服务器运行。这些服务器使用 **Unix 域套接字文件** 而非本地主机端口，从而确保明确的用户权限与安全性，加密则由 SSH 处理。

该外壳提供应用主屏幕及应用间通信的 API——例如，文本编辑器应用可打开文件管理器中的文件。应用可以是常规网页应用，或是为特定平台定制的 **原生 outerframe 应用**，作者认为在人工智能辅助编码的当下，这类应用已切实可行。

作者指出，尽管存在各类基于网页的服务器工具（如 Jupyter），但缺少一个统一的应用交付生态系统。Outer Shell 旨在填补这一空白。文章附带了浏览器功能文档（outerloop.sh）、Shell API（outershell.org）及原生应用开发文档（outerframe.org）的链接，并提供了录屏演示。文章总结道，这一架构——轻量场景用 HTML，严肃工作用原生应用——代表了网页的自然演进方向。

---

## 5. WATaBoy：将Game Boy指令即时编译为WASM，性能超越原生解释器

**原文标题**: WATaBoy: JIT-Ing Game Boy Instructions to WASM Beats a Native Interpreter

**原文链接**: [https://humphri.es/blog/WATaBoy/](https://humphri.es/blog/WATaBoy/)

本文介绍了一款概念验证型Game Boy模拟器WATaBoy，其通过即时编译至WebAssembly（Wasm）的技术，规避了苹果对iOS应用JIT编译的限制。由于网页浏览器允许对JavaScript和Wasm进行JIT编译，作者在运行时生成Wasm字节码，再由浏览器将其编译为原生机器码。

关键技术实现包括：
- 使用Rust语言中的`wasm-encoder`框架为Game Boy CPU指令生成Wasm字节码
- 通过JavaScript链接生成的Wasm模块，由JS完成模块编译并将函数添加至主Wasm模块的间接函数表
- 通过`call_indirect`指令调用JIT编译的函数

针对三种方案的10秒运行基准测试结果显示：
- 在运行《宝可梦 蓝》时，JIT转Wasm方案比原生运行的解释器快约1.2倍
- JIT转Wasm方案比同样运行在Wasm环境中的解释器快约1.5倍
- Safari浏览器在JIT模式下的表现优于Chrome和Firefox

作者指出仍需进一步优化，特别是预测PPU中断以减少回退至解释器的情况。虽然这仅是Game Boy模拟器，该技术或可惠及更多受限于CPU性能的模拟器，但目前仍属概念验证，尚未达到生产级解决方案的标准。

---

## 6. Wallace 6英寸f/2.8望远镜：制作与徒步携带指南

**原文标题**: Wallace the 6 inch f/2.8 telescope, building it, and hiking with it

**原文链接**: [https://lucassifoni.info/blog/hiking-with-wallace/](https://lucassifoni.info/blog/hiking-with-wallace/)

**摘要：**  
本文介绍了定制打造的153mm f/2.8超广角望远镜“华莱士”，将技术构建细节与作者徒步携镜观测的个人叙事融为一体。作者描述了徒步至悬崖、架设望远镜并开展观测的“环境印象”，着重强调自然感官体验（风声、虫鸣、脚步声）与天文学的交融。  

**技术亮点：**  
- “华莱士”配备153mm主镜（焦比f/2.84，因研磨误差略快于原计划的f/3），59mm副镜遮挡了镜面上的中央孔洞。  
- 镜片历经两次尝试：首次因深度划痕失败。最终镜面在仪器内斯特雷尔比约达0.92，对NGC7000等深空天体的表现极为出色。  
- 彗差校正采用4片式GSO校正镜（由Roger Ceragioli设计），经修改后将后截距调整为79mm（原为56mm）以实现最优性能。  
- 镜筒采用双模块鸠尾板结构（灵感源自Coulter CT-100），使用3D打印深蓝色ASA部件及六根6mm碳纤维杆，主镜座为6点三杆式设计。  
- 使用100°目镜时真实视场超过4度，在66%视场范围内校正效果极佳。  
- 下一代版本将采用轻量化弯月形镜坯（金刚石生成），以实现更快热平衡并提升便携性，目标斯特雷尔比>0.95。  

文章附有Astrosurf、Cloudynights及Webastro上的讨论链接，并注明设计文件已在Printables上免费开放。

---

## 7. 《辐射暴露谎言》

**原文标题**: The Radiation Exposure Lie

**原文链接**: [https://worksinprogress.co/issue/how-to-lie-about-radiation/](https://worksinprogress.co/issue/how-to-lie-about-radiation/)

本文认为，核事故低剂量辐射的危害被夸大，导致过度严格的法规阻碍了核电发展。文章以台湾钴-60公寓事件作为关键案例：逾万名居民在二十年间平均受到400毫西弗的慢性辐射。初期研究出人意料地显示癌症发病率较低，但后续分析（Hwang等，2017）声称发现白血病、乳腺癌等特定癌症风险升高。然而，本文批评这些研究存在"p值操纵"——在未预先注册假设的情况下分析77种癌症亚型，仅在其中少数得到显著结果——而受暴露群体的总体癌症发病率仍比台湾普通人口低35%，作者将此差异归因于未经证实的社会经济因素。

文章将核灾难恐惧与现实对比：切尔诺贝利事故造成数百人死亡和6000例甲状腺癌（多可预防），而死亡人数远超核事故的博帕尔毒气泄漏、板桥水库溃坝等灾难却鲜受关注。结论认为低剂量辐射危害缺乏充分证据支撑，援引存在缺陷的台湾研究，并指出即便严谨的INWORKS研究也仅发现每100毫西弗辐射使癌症死亡率增加5%。文章主张，对辐射的无端恐惧已使核电丧失经济可行性，可能阻碍这项强大的清洁能源技术发展。

---

## 8. 美国最高法院裁定，地理围栏搜查令需受宪法保护

**原文标题**: US Supreme Court rules geofence warrants require constitutional protections

**原文链接**: [https://www.theguardian.com/us-news/2026/jun/29/supreme-court-geofence-warrants-case-decision](https://www.theguardian.com/us-news/2026/jun/29/supreme-court-geofence-warrants-case-decision)

美国最高法院在*查特里诉美国案*中以6比3裁定，"地理围栏搜查令"（即强制科技公司交出犯罪现场附近所有人员手机定位数据）构成第四修正案意义上的搜查行为，必须受到宪法隐私保护。大法官埃琳娜·卡根撰写了多数意见，指出个人对其手机定位记录享有"合理的隐私预期"，即便使用了谷歌等第三方服务亦不例外。法院驳回了政府关于调取短期定位数据或自愿选择加入即放弃隐私权的论点。

该案涉及利用谷歌"位置记录"功能数据定罪银行抢劫犯奥凯洛·查特里。其律师主张该搜查令过于宽泛。隐私倡导者称赞该裁决，指出此类搜查令可能波及数千名无辜用户，并可能被用于监控抗议活动、诊所或宗教场所。最高法院未就该搜查令的合理性作出具体裁定，而是将相关问题发回下级法院重审。这是自2018年具有里程碑意义的手机定位需搜查令裁决以来，首个重要的第四修正案隐私权判决。

---

## 9. 运行CUDA内核时会发生什么？

**原文标题**: What happens when you run a CUDA kernel?

**原文链接**: [https://fergusfinn.com/blog/what-happens-when-you-run-a-gpu-kernel/](https://fergusfinn.com/blog/what-happens-when-you-run-a-gpu-kernel/)

本文详细解析了在RTX 4090上运行简单CUDA内核（`vadd`）从源代码到执行的复杂流程。

**编译流水线：** `nvcc` 调用多个编译器。首先，`cicc` 将设备代码转换为 PTX（一种虚拟的、与设备无关的指令集架构）。随后，`ptxas` 将 PTX 编译为 SASS（特定于设备的机器码）。最终生成的二进制文件将 SASS 与 PTX 打包在宿主可执行文件的"fatbin"中——PTX 可作为未来架构上即时编译的回退方案。

**主机端启动：** 隐藏的构造函数负责注册内核。`vadd<<<...>>>` 语法被替换为存根函数，该函数将参数（指针 `da`、`db`、`dc` 和整数 `n`）打包到缓冲区中，这些参数与 SASS 使用的常量组偏移量相对应。存根函数调用 CUDA 运行时，运行时将打开 `libcuda.so`（用户态驱动）并创建上下文。

**GPU通信：** 驱动程序会延迟将 SASS 上传至 GPU 显存，直至首次内核启动时才开始。随后，驱动程序构建一个包含网格维度、寄存器数量与程序地址的"QMD"（启动描述符）。驱动程序在主机内存的推送缓冲区中写入命令（方法），并通过 GPFIFO 环形缓冲区进行索引。最终，驱动程序通过 `ioctl` 系统调用更新门铃寄存器（MMIO）。GPU 读取 GPFIFO，处理推送缓冲区，在所有线程上执行内核，并发出完成信号——所有这一切，都只是为了计算那个 `1+1=2`。

---

## 10. 欧洲互联网服务提供商要求版权方对过度屏蔽造成的损失承担责任

**原文标题**: European ISPs Want Rightsholders Held Accountable for Overblocking Damage

**原文链接**: [https://torrentfreak.com/european-isps-want-rightsholders-held-accountable-for-overblocking-damage/](https://torrentfreak.com/european-isps-want-rightsholders-held-accountable-for-overblocking-damage/)

由EuroISPA代表的欧洲互联网服务提供商（ISP）已正式敦促欧盟委员会追究权利持有人因过度屏蔽造成的损害责任。在向委员会提交的关于《数字单一市场版权指令》审查意见中，EuroISPA警告称，部分欧盟成员国的网站屏蔽措施正日益变得不成比例且极端。

这些ISP指出，委员会自身对《2023年打击现场活动盗版建议》的评估仅发现“有限的积极效果”，这表明问题在于现有法律的执行不力，而非立法空白。他们反对新增执法义务，强调应优先落实现行法律。

该文件列举了多起过度屏蔽事件：意大利的“盗版盾牌”系统对7700多个域名造成附带损害；西班牙的LaLiga屏蔽令针对共享IP地址，导致数百万用户无法访问银行应用和支付平台；思科因屏蔽令撤回了在法国和比利时的OpenDNS服务。EuroISPA警告称，将屏蔽义务扩展至DNS解析器和VPN提供商是一个日益严重且存在问题的趋势。

其主要诉求包括：依据现行《欧盟知识产权执法指令》，要求权利持有人对过于宽泛的屏蔽行为造成的附带损害承担责任，并建立明确的赔偿机制。他们还批评快速屏蔽要求（如意大利的30分钟截止时限）对小型服务商造成不成比例的负担。EuroISPA反对进一步扩大屏蔽权力，敦促委员会聚焦于现行法律的有效执行。

---

## 11. JumpServer：开源特权访问管理

**原文标题**: JumpServer: Open-Source Privileged Access Management

**原文链接**: [https://github.com/jumpserver/jumpserver](https://github.com/jumpserver/jumpserver)

**JumpServer** 是一款开源的**特权访问管理（PAM）**平台，也称为堡垒机。它使 DevOps 和 IT 团队能够通过 Web 浏览器安全地访问 SSH、RDP、Kubernetes、数据库和 RemoteApp 端点。

**快速部署：** 使用一条 curl 命令在干净的 Linux 服务器（64 位，≥4核8G）上部署。默认登录信息：`admin` / `ChangeMe`。

**核心组件：**
- **Lina** – Web 用户界面
- **Luna** – Web 终端
- **KoKo** – 字符协议连接器
- **Lion** – 图形协议连接器
- **Chen** – Web 数据库
- **Client** – JumpServer 客户端
- **Tinker** – 远程应用连接器（Windows）
- **Panda** – 远程应用连接器（Linux）
- **Razor** – RDP 代理
- **Magnus** – 数据库代理
- **Nec** – VNC 代理
- **Facelive** – 人脸识别（企业版）

**第三方集成：** 集成 Grafana 仪表盘。

**许可证：** GNU 通用公共许可证 v3.0（GPLv3），版权所有（c）2014–2026 FIT2CLOUD。

---

## 12. 宣布推出.self：一款旨在支持自托管的新顶级域名

**原文标题**: Announcing .self: A New Top-Level Domain Designed to Support Self-Hosting

**原文链接**: [https://hccf.onmy.cloud/2026/06/21/reclaiming-our-digital-selves-hccfs-vision-for-a-human-centered-top-level-domain/](https://hccf.onmy.cloud/2026/06/21/reclaiming-our-digital-selves-hccfs-vision-for-a-human-centered-top-level-domain/)

无法访问文章链接。（该网址似乎是私有或非标准域名，无法获取其内容。）

---

## 13. 《你对形式化验证一无所知》

**原文标题**: You Don't Know Jack About Formal Verification

**原文链接**: [https://queue.acm.org/detail.cfm?id=3819084](https://queue.acm.org/detail.cfm?id=3819084)

**摘要**

本文认为，软件工程师常常误解形式化验证（FV），认为其不切实际或仅适用于安全关键系统。实际上，现代FV工具已取得显著发展，能够捕捉测试遗漏的细微缺陷——如竞态条件、整数溢出或逻辑错误。作者澄清了常见误解：FV既不需要数学博士学位，也不要求事先提供完整的规约。相反，轻量级技术（如有界模型检测或基于断言的验证）可集成到现有CI/CD流水线中。

关键要点包括：
- **证明与测试**：测试显示存在缺陷；FV针对特定属性证明其不存在。
- **自动化**：现代SMT求解器和模型检测器自动化了大部分证明过程，使普通开发者也能使用FV。
- **实际用例**：亚马逊云服务、微软等公司已将FV用于云基础设施、密码学和并发正确性验证。
- **入门指南**：Z3、CBMC和Alloy等工具支持渐进式采用——从验证简单不变量（如数组边界、锁协议）开始。

作者总结道，FV并非全有或全无的尝试。即使部分验证也能及早发现代价高昂的错误，节省调试时间。真正的障碍并非技术，而是思维方式：团队应将FV视为补充工具，而非神话般的银弹。

---

## 14. 《微代理：以模型API内部协作超越前沿模型》

**原文标题**: Micro-Agent: Beat Frontier Models with Collaboration Inside Model API

**原文链接**: [https://vllm.ai/blog/2026-06-29-micro-agent-frontier-models](https://vllm.ai/blog/2026-06-29-micro-agent-frontier-models)

**摘要：**

本文介绍了 **vLLM语义路由器**，该系统将AI编排从应用层关注点迁移至服务基础设施本身。该路由器并非将请求路由至单一模型，而是充当主动的"控制面"，能够在单个API调用中编排 **微代理**。

核心创新在于**循环器（looper）**——一个受限运行时系统，可在统一且稳定的模型身份（`vllm-sr/auto`）背后执行多模型间的协作模式（配方）。关键模式包括**置信度**（成本感知的层级升级）、**评分**（有上限的并行集成）、**ReMoM**（广度+综合）、**融合**（以分歧作为依据）以及**工作流**（基于角色的受限代理步骤）。

关键之处在于，系统采用**自动配方**：任务难度或延迟等信号为每个请求选择最佳协作模式。评估表明，该方法可在保持单一API接口的同时，媲美甚至超越前沿模型（例如，在GPQA-Diamond上达96%，在LiveCodeBench上达92.6%）。

核心启示：**微代理应属于路由器内部**，而非应用胶水层。这使协作具备可编程性、可观测性并受基础设施管控——将路由器转变为主动构建能力的系统，而不仅仅是传递请求。

---

## 15. 17至18世纪艺术中的威尼斯桥头斗殴

**原文标题**: Venetian Bridge Brawls in 17th and 18th Century Art

**原文链接**: [https://publicdomainreview.org/collection/venice-bridge-fights/](https://publicdomainreview.org/collection/venice-bridge-fights/)

《17-18世纪威尼斯桥梁斗殴艺术》一文探讨了描绘威尼斯桥上组织化拳斗（意大利语：*battagliole sui ponti*）的独特绘画题材。这些暴力却程式化的斗殴曾是流行的公共娱乐形式，常涉及不同街区或社会阶层的敌对派系。核心要点包括：

- **历史背景**：斗殴作为独特的威尼斯传统，被当局容忍甚至鼓励，视为疏导市民攻击性的可控出口。
- **艺术表现**：贾科莫·瓜尔迪与加布里埃莱·贝拉等艺术家捕捉这些混乱场景，强调动作、动态以及"拳击桥"等桥梁建筑特征。
- **社会意义**：打斗既反映城市社会分化与社群认同，又兼具公共景观与争端解决机制的双重功能。
- **衰落**：18世纪末，随着威尼斯共和国衰落，受谴责公共秩序的启蒙思想影响，此类斗殴遭禁止。
- **遗产**：这些艺术品为研究前现代威尼斯的日常生活、流行文化与暴力娱乐提供了珍贵视角，架起艺术史与社会史的桥梁。

总结强调这些画作作为历史文献的价值，记录了一种兼具市民自豪感、阶级冲突与可控混乱的消逝传统。

---

## 16. 桑迪亚国家实验室SA3000 8085中央处理器

**原文标题**: Sandia National Labs SA3000 8085 CPU

**原文链接**: [https://www.cpushack.com/2026/06/03/sandia-national-labs-sa3000-8085-cpu/](https://www.cpushack.com/2026/06/03/sandia-national-labs-sa3000-8085-cpu/)

桑迪亚国家实验室于20世纪80年代初开发了SA3000，这是一款基于英特尔8085 CPU的抗辐射CMOS芯片。该实验室自1978年起自建晶圆厂，旨在为核武器和太空任务生产能够承受极端辐射的元件，而商用芯片在此类环境中会失效。到1982年，他们升级为4英寸、2微米工艺，随后采用3微米节点制造SA3000。

将英特尔8085从HMOS转换为CMOS过程复杂，晶体管数量从6500个增至18000个。最终SA3000芯片工作电压为4.5–11V（为辐射容限留出空间），可承受1×10⁶拉德辐射，性能仅下降25%——远超1×10⁵拉德的目标。桑迪亚还生产了配套芯片（SA3001、SA3002等），并为伽利略号木星探测器制造了超过5万块集成电路。

SA3000被用于W88核弹头（配备三叉戟II型导弹）和CRRES卫星。1984至1985年间，晶圆厂管理权有争议地移交给了联合信号公司，导致生产放缓。此后，哈里斯公司将这一设计商业化，推出HS1-80C85RH和HS9-80C85RH型号，规格为5V工作电压和较低运行速度，专供航天与军事领域使用。

---

## 17. 面向切面编程的回归

**原文标题**: The Return of Aspect Oriented Programming

**原文链接**: [https://thomaswc.com/blog/the_return_of_aop.html](https://thomaswc.com/blog/the_return_of_aop.html)

**概述：**

本文认为现代编程让开发者不堪重负，需要同时兼顾正确性、效率、安全性、日志记录等众多关注点。文章重新审视了面向切面编程（AOP）这一旨在让程序员能分别处理各关注点的旧概念。作者批评了AOP的原始实现——基于调用栈运行时模式匹配的“连接点模型”——认为其脆弱、难以调试，类似于“COME FROM”指令这个笑话。

然而，作者提出了一种由大语言模型赋能的新型AOP。程序员不再进行运行时织入，而是为每个关注点分别编写文档（例如，一个维护性风格指南，一个正确性规范）。大语言模型充当“织入器”，根据这些文档生成最终程序。

这种方法改进了旧式AOP，因为大语言模型能利用其背景知识来匹配关注点（例如“每次打开文件后记录日志”），而无需依赖脆弱的字符串模式。其输出是静态且可读的代码（而非字节码）。尽管大语言模型无论如何都会生成代码，但关键在于，AOP的关注点概念为组织输入到大语言模型的提示词提供了一个有用的框架——无论是作为单个文档，还是通过多个从不同角度进行批判的专业化智能体。

---

## 18. .garden顶级域名（TLD）沦落为不良社区

**原文标题**: .garden TLD's change to a bad neighborhood

**原文链接**: [https://discourse.ifin.network/t/garden-tlds-change-to-a-bad-neighborhood/627](https://discourse.ifin.network/t/garden-tlds-change-to-a-bad-neighborhood/627)

文章报道了2026年.garden顶级域（TLD）声誉的急剧下滑。主要发现包括：

- **注册量激增**：从2025年的约2500个域名（平均风险评分55）增长到2026年的147000个（平均风险评分84），风险评分上升了29点。
- **主要原因**：68000个.garden域名使用**AliDNS**（alidns[.]com）域名服务器，平均风险评分为87。若结合注册商Spaceship（65000个域名，风险评分87）或Dominet（3000个域名，风险评分94），风险更高。
- **其他高风险域名服务器**：dnsowl[.]com（3500个域名，风险评分93）。
- **值得注意的非影响因素**：Cloudflare（19000个域名，风险评分81）低于平均水平，排除后不改变整体风险均值。
- **建议措施**：封锁整个.garden顶级域，仅按需列入白名单。同时考虑基于AliDNS域名服务器或Dominet注册进行封锁。

---

## 19. Instagram将用户照片用于Meta眼镜广告中

**原文标题**: Instagram is incorporating users' photos in ads for Meta Glasses

**原文链接**: [https://twitter.com/i/status/2071277885646868536](https://twitter.com/i/status/2071277885646868536)

Instagram正将用户的照片整合进Meta眼镜的广告中，这标志着广告向高度个性化方向的转变。根据贾斯汀·摩尔（@venturetwins）于2026年6月28日发布的帖子（该帖获得了显著互动：1.95万次浏览、931次点赞、10.24万次分享、545条评论），该平台现利用用户现有内容为Meta智能眼镜创建定制化广告。这一策略通过展示用户自己的照片来提升广告相关性，可能增强广告效果与用户参与度。该帖子凸显了人们对隐私与同意的日益担忧，因为用户可能并未选择允许自己的照片被用于此类商业场景。此举标志着广告个性化进入新时代，即借助Instagram庞大的用户数据来推动Meta硬件产品的认知。摘要：Instagram利用用户照片投放个性化Meta眼镜广告，引发隐私与同意争议。

---

## 20. 字体系列推荐

**原文标题**: Font-Family Recommendations

**原文链接**: [https://chrismorgan.info/font-family](https://chrismorgan.info/font-family)

**字体族推荐摘要**

作者反对依赖命名字体或网络字体，主张仅使用通用字体族的最小化字体栈。要点如下：

1. **没有绝对安全的字体**——网络字体可能因网络问题、安全拦截或用户偏好（例如禁用远程字体）而失效。务必包含一个通用后备字体。

2. **等宽文本务必要包含 `monospace`**，并应包含 `serif` 或 `sans-serif` 作为合适的后备。避免列出过长的特定字体列表（如 `Menlo, Monaco, Consolas...`），因为仅使用 `monospace` 就已能解析出质量不差的字体。

3. **限制命名字体数量**——最多使用一种本地字体（例如 `Georgia, serif`）。网络字体加载更慢且可能导致布局偏移；可考虑仅使用通用字体族。

4. **浏览器的等宽字体默认值已有所改进**，因此应摒弃过时的字体栈。使用 `monospace, monospace`（或手动设置 `font-size`）可避免某些浏览器中 81.25% 的字体大小 bug。

5. **避免为正文内容使用 `system-ui` 和 `ui-*`**——UI 字体专为短文本设计，可能缺乏多语言支持，且常被滥用作更优默认字体的替代。作者认为 `system-ui` 是一个失误。

**结论**：最简洁、最稳健的做法是使用 `font-family: sans-serif`（或 `serif`、`monospace`），信任用户与浏览器的默认设置，而非猜测字体列表。

---

## 21. ACL 1.0：面向AI时代的源代码可用商业许可协议

**原文标题**: ACL 1.0: A source-available commercial license for the AI era

**原文链接**: [https://www.auditablelicense.org/](https://www.auditablelicense.org/)

**ACL 1.0 简介**

可审计商业许可证（ACL）v1.0 是一种面向 AI 时代的新型源代码可用许可证，填补了 BUSL、Elastic 2.0 和 PolyForm 等现有许可证的空白。

**其三大核心特性如下：**

1.  **可审计性：** 被许可方拥有明确的权利来阅读、审查和审计源代码，以确保安全性与合规性，超越了隐含的许可范畴。
2.  **AI 保护：** 第 2.3 节明确禁止将许可作品用作 AI 训练数据。它包含知识限定条件、正常 AI 工具使用的安全港条款，以及对 AI 供应商的传导义务——这在商业许可中尚属首次。
3.  **自动过期：** 每个版本将在四年后自动转换为 Apache 2.0 许可证，从而避免对许可方的永久依赖。

**与其他许可证的比较：** ACL 1.0 独特地结合了源代码可用性、托管服务限制、AI 训练保护、四年后自动转换为 OSI 批准许可证、内置分级结构以及企业知识产权赔偿——这些功能在大多数现有许可证中均缺失。

用户可通过填写许可方名称、年份、管辖权和发布元数据来生成定制的许可证。该许可证可作为 `LICENSE.md` 文件下载。

---

## 22. 哈尔瓦创业指南

**原文标题**: Halvar's Guide to Entrepreneurship

**原文链接**: [https://thomasdullien.github.io/guides/entrepreneurship/](https://thomasdullien.github.io/guides/entrepreneurship/)

《哈尔瓦创业指南》一文分享了作者创立两家B2B软件公司（一家白手起家，一家获风险投资支持）的经验教训。要点包括：

1. **创业的动因**：作者强调内省。个人动机包括：需要自主权以解决问题、与优秀且"特立独行"的人共事、避开官僚层级、协调技术、经济与意识形态利益。目标是打造让客户满意的产品。

2. **选择目标市场**：这是最关键的决定。市场分为四种类型：
   - **无市场**（年收入低于100万美元）——陷阱。
   - **成长型利基市场**（100万至5000万美元）——最适合白手起家，退出选择有限。
   - **健康专业化市场**（5000万至数十亿美元）——适合资本效率型投资者，通常保持私有化。
   - **巨大市场**（数十亿美元）——典型风投支持初创企业，创始人常失去控制权。

3. **融资与风险**：市场决定融资方式。风险资本适用于巨大市场，但风险高且创始人失去控制权。白手起家适合较小市场，但可能陷入回报适中的"陷阱"。

4. **风投运作机制**：风投基金需要超额回报（如20倍）以支撑其模式。与多元化投资者不同，创始人面临的中位数结果接近零。随着潜在回报增加，成功概率反而下降。

---

## 23. 潮汐AI政策

**原文标题**: Tidal AI Policy

**原文链接**: [https://tidal.com/ai-policy](https://tidal.com/ai-policy)

**Tidal AI 政策摘要**  

Tidal 的 AI 政策明确了其在音乐流媒体平台中关于人工智能使用的立场。该政策禁止未经明确许可，对 Tidal 内容（包括音频、元数据和用户数据）进行爬取、抓取或用于训练 AI 模型及机器学习系统。Tidal 强调其曲库受版权保护，任何基于其素材的 AI 训练必须尊重艺术家的权利及许可协议。  

该政策还涉及平台上 AI 生成音乐的使用：Tidal 要求在内容由 AI 创建或显著修改时进行明确披露，以保持对听众的透明度。此外，Tidal 保留移除或限制违反这些规则（包括未经授权的 AI 创作作品）的访问权限。该公司表示致力于支持人类创造力并保护艺术家的生计，将这些规则定位为对抗剥削性 AI 实践的保障。最后，Tidal 鼓励用户与开发者联系，获取合法的许可机会。  

*注：摘要基于政策最新版本在提供 URL 上的公开文本。*

---

## 24. 三星、SK海力士、美光在美国因涉嫌内存价格操纵被起诉

**原文标题**: Samsung, SK Hynix, Micron Sued in US over Memory Price Fixing

**原文链接**: [https://en.sedaily.com/international/2026/06/29/samsung-sk-hynix-micron-sued-in-us-over-memory-price-fixing](https://en.sedaily.com/international/2026/06/29/samsung-sk-hynix-micron-sued-in-us-over-memory-price-fixing)

无法访问该文章链接。

---

## 25. Mullvad的首席执行官是瑞典Örebro党派的主要资助者

**原文标题**: The CEO of Mullvad is the main financer of the Swedish Örebro party

**原文链接**: [https://det.social/@lostgen/116820546568940358](https://det.social/@lostgen/116820546568940358)

文章声称 Mullvad VPN 的首席执行官是瑞典厄勒布鲁党（Örebro party）的主要资助者。文中引用了用户 Jörg Seidel 在 Mastodon 上的一条帖子，该用户对此关联表示失望。该内容强调了一种潜在的利益冲突，因为 Mullvad 以推广隐私和匿名性而闻名，而政治资助可能引发对透明度的担忧。帖子附带了 det.social 上完整讨论的链接，但摘要聚焦于核心论断：该首席执行官对厄勒布鲁党的资金支持。

---

## 26. CachyOS 2026年6月发布版

**原文标题**: CachyOS June 2026 Release

**原文链接**: [https://cachyos.org/blog/2606-june-release/](https://cachyos.org/blog/2606-june-release/)

**CachyOS 2026年6月更新摘要**

CachyOS发布了2026年第四次更新，新增 **Hyprland Noctalia桌面** 选项、**DNS-over-QUIC** 支持，以及Python（扩展PGO）和GCC（分支误预测优化）的性能改进。关键软件包变更包括：将 `proton-cachyos` 重命名为 `proton-cachyos-native`，为pacman脚本添加网络隔离，并修复了高核心数CPU上的OpenBLAS回归问题。

**安装程序** 新增带预览视频的Noctalia桌面，将GNOME系统监视器替换为Resources，为MangoWM使用SDDM，并将realtime-privileges添加至音频组。Paru已被移除，转而使用Shelly。

**CachyOS-Welcome** 现支持通过blocky实现DNS over QUIC，新增故障排除页面、Ptyxis终端支持以及阿塞拜疆语/希腊语翻译。同时修复了设置无法读取或未安装`cachyos-pi`时选择"安装应用"导致的崩溃问题。

**chwd** 新增土耳其语本地化，解决多GPU驱动冲突（如混合NVIDIA代际），并为虚拟机包含32位Vulkan驱动。**cachyos-settings** 对用户服务强制执行15秒启动超时和10秒关闭超时，以防止延迟。

值得注意的修复包括：修正键盘布局/处理方式、正确复制pacman配置、移除残留的Calamares目录，以及修复通过polkit的调整检测。

现有用户只需运行 `sudo pacman -Syu`。桌面版和手持版的新ISO映像可通过多个镜像站获取。

---

## 27. 花粉试图删除我的文章，而谷歌正在协助这一行为。

**原文标题**: Pollen tried to remove my article and Google is assisting with it

**原文链接**: [https://blog.pragmaticengineer.com/pollen-tried-to-remove-my-article-about-callum-negus-fancey-and-google-is-assisting-to-it/](https://blog.pragmaticengineer.com/pollen-tried-to-remove-my-article-about-callum-negus-fancey-and-google-is-assisting-to-it/)

文章描述了作者2022年关于活动科技公司Pollen倒闭的曝光报道，如何因一份伪造的DMCA删除通知而被谷歌搜索结果移除。Pollen在2022年融资1.5亿美元，但很快裁员200人，停发工资和养老金，因欠费导致JIRA服务中断，并于2022年8月破产。英国广播公司（BBC）后来就此丑闻制作了一部纪录片，其中提到首席技术官向客户重复收费320万美元且从未退款。

四年后，有人——很可能是Pollen、其创始人卡勒姆·内格斯-范西，或是一家受雇的声誉管理公司——提交了一份虚假版权声明。这份声明由一个名叫"埃莉·皮耶"的虚假账户提交，声称来自无人居住的布维岛，指控该文章抄袭了1998年《纽约邮报》的一篇文章——尽管两者并无相同语句。谷歌移除了这篇文章，但作者已提出上诉。

作者指出正在进行的法律诉讼：加利福尼亚州一起针对Pollen及其高管（卡勒姆·内格斯-范西、利亚姆·内格斯-范西、詹姆斯·埃利斯）的诉讼，涉及未支付工资、损失的退休金以及可能的欺诈行为。作者警告了斯特赖桑德效应，并表达了重新报道此事的兴趣。

---

## 28. Mag 7开始表现不佳 [pdf]

**原文标题**: Mag 7 starting to underperform [pdf]

**原文链接**: [https://www.apollo.com/content/dam/apolloaem/pdf/daily-spark/2026/jun/28/062826-Mag7.pdf](https://www.apollo.com/content/dam/apolloaem/pdf/daily-spark/2026/jun/28/062826-Mag7.pdf)

根据PDF元数据和结构，这是一份由博士Torsten Slok制作的演示文稿，标题为**《“七巨头”开始表现不佳：市场转向优质与自由现金流》**。

该演示文稿共32页，聚焦于市场出现的一种转变：以“华丽七雄”为代表的科技股（如苹果、微软、英伟达等）正开始表现不佳。其核心论点是，投资者正将资金从这些高增长的巨型股转向基本面更强劲的公司，尤其是那些强调**优质**和**自由现金流**的企业。

关键要点包括：
- 该演示文稿很可能将“七巨头”近期的表现与大盘进行了对比。
- 它论证市场正将焦点从投机性增长转向更可持续、能产生现金的业务。
- 作者Torsten Slok作为主讲人，暗示了其机构或经济研究视角。
- 幻灯片包含了支撑这一资金轮动与表现不佳叙事的图表和数据可视化内容（图片）。

总而言之，文章警示，随着市场在宏观环境变化下转向纪律严明、现金流为正的公司，“华丽七雄”的主导地位正在减弱。

---

## 29. 为Windows XP构建Principia

**原文标题**: Building Principia for Windows XP

**原文链接**: [https://voxelmanip.se/2026/06/28/building-principia-for-windows-xp/](https://voxelmanip.se/2026/06/28/building-principia-for-windows-xp/)

文章描述了作者成功让开源游戏 **Principia** 重新在 **Windows XP** 上运行的过程。

**背景：** Principia 原本支持 XP，但现代工具链和依赖（如 UCRT、LLVM 的 libc++ 和 libstdc++）破坏了兼容性。

**解决方案：** 作者基于 Martin Storsjö 的脚本，构建了一个针对 Windows XP 的自定义交叉编译工具链。关键步骤包括：
- 切换到 **MSVCRT** 并将 `WIN32_WINNT` 设置为 `0x0501`。
- 修补了 **GCC 16**（C23 标准）和 **GMP** 的问题。
- 对 libstdc++ 打补丁，使其 `GetDynamicTimeZoneInformation` 调用变为动态，避免对 Vista 的依赖。
- 构建依赖项（curl 8.17.0、Freetype、libjpeg-turbo、libpng、SDL、zlib）。
- 跳过 GTK3，改用更新的 **Dear Imgui** 对话框（尽管部分尚未实现）。

**结果：** 修复了 TMS 的 `pipeline.c` 中的调用约定问题后，游戏编译成功。在真实的 Windows XP 机器（Phenom II X4 955）上测试通过——游戏启动至主菜单，证明了工具链的有效性。主要限制是部分硬件缺少驱动以及部分对话框未实现。

---

## 30. 2026年德克奇幻训练营

**原文标题**: Decker Fantasy Camp 2026

**原文链接**: [https://itch.io/jam/decker-fantasy-camp-2026](https://itch.io/jam/decker-fantasy-camp-2026)

**概要：德克尔奇幻营地 2026**

“德克尔奇幻营地 2026”是由互联网管理员在itch.io上举办的一场游戏创作马拉松，时间从2026年7月1日持续到8月1日。参与者需使用多媒体工具**德克尔**创作任意项目，例如视觉小说、诗歌、街机游戏、实用工具或小杂志。

**主要规则：**
- 提交作品必须是原创、可在线游玩且通过德克尔导出的HTML文件。
- 禁止使用生成式AI工具（如图像模型或大语言模型）。
- 允许使用已进入公共领域、采用知识共享许可的资源，或来自德克尔社区的材料。
- 欢迎组队参赛，也接受多次提交。
- 加入鸡的元素并非强制，但会受到赞赏。

**参考资料**包括德克尔社区论坛、芬克塞尔的田野笔记（互动教程）、德克尔GitHub页面及官方文档。往届创作马拉松作品可通过itch.io上的#decker标签查找。本次赛事强调创意、数字工艺与社区参与。

---

