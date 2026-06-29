# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-29.md)

*最后自动更新时间: 2026-06-29 20:33:01*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 2 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 3 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 4 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 5 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 6 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 7 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 8 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 9 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 10 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 11 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 12 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 13 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 14 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 15 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 16 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 17 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 18 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 19 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 20 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 21 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 22 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 23 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 24 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 25 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 26 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 27 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 28 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 29 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 30 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 31 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 32 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 33 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 34 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 35 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 36 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 37 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 38 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 39 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 40 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 41 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 42 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 43 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 44 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 45 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 46 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 47 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 48 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 49 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 50 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 51 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 52 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 53 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 54 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 55 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 56 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 57 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 58 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 59 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 60 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 61 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 62 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 63 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 64 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 65 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 66 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 67 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 68 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 69 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 70 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 71 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 72 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 73 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 74 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 75 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 76 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 77 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 78 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 79 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 80 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 81 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 82 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 83 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 84 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 85 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 86 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 87 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 88 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 89 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 90 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 91 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 92 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 93 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 94 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 95 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 96 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 97 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 98 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 99 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 100 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 101 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 102 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 103 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 104 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 105 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 106 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 107 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 108 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 109 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 110 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 111 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 112 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 113 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 114 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 115 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 116 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 117 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 118 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 119 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 120 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 121 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 122 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 123 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 124 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 125 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 126 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 127 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 128 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 129 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 130 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 131 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 132 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 133 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 134 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 135 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 136 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 137 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 138 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 139 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 140 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 141 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 142 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 143 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 144 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 145 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 146 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 147 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 148 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 149 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 150 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 151 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 152 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 153 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 154 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 155 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 156 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 157 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 158 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 159 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 160 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 161 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 162 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 163 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 164 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 165 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 166 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 167 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 168 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 169 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 170 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 171 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 172 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 173 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 174 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 175 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 176 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 177 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 178 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 179 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 180 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 181 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 182 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 183 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 184 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 185 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 186 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 187 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 188 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 189 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 190 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 191 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 192 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 193 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 194 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 195 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 196 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 197 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 198 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 199 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 200 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 201 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 202 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 203 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 204 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 205 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 206 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 207 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 208 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 209 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 210 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 211 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 212 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 213 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 214 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 215 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 216 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 217 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 218 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 219 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 220 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 221 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 222 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 223 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 224 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 225 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 226 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 227 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 228 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 229 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 230 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 231 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 232 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 233 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 234 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 235 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 236 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 237 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 238 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 239 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 240 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 241 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 242 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 243 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 244 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 245 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 246 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 247 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 248 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 249 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 250 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 251 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 252 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 253 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 254 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 255 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 256 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 257 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 258 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 259 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 260 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 261 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 262 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 263 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 264 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 265 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 266 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 267 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 268 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 269 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 270 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 271 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 272 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 273 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 274 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 275 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 276 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 277 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 278 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 279 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 280 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 281 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 282 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 283 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 284 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 285 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 286 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 287 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 288 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 289 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 290 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 291 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 292 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 293 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 294 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 295 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 296 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 297 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 298 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 299 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 300 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 301 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 302 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 303 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 304 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 305 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 306 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 307 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 308 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 309 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 310 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 311 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 312 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 313 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 314 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 315 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 316 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 317 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 318 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 319 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 320 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 321 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 322 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 323 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 324 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 325 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 326 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 327 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 328 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 329 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 330 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 331 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 332 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 333 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 334 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 335 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 336 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 337 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 338 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 339 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 340 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 341 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 342 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 343 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 344 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 345 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 346 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 347 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 348 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 349 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 350 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 351 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 352 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 353 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 354 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 355 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 356 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 357 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 358 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 359 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 360 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 361 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 362 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 363 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 364 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 365 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 366 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 367 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 368 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 369 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 370 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 371 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 372 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 373 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 374 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 375 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 376 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 377 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 378 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 379 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 380 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 381 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 382 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 383 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 384 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 385 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 386 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 387 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 388 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 389 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 390 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 391 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 392 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 393 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 394 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 395 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 396 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 397 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 398 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 399 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 400 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 401 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 402 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 403 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 404 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 405 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 406 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 407 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 408 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 409 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 410 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 411 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 412 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 413 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 414 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 415 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 416 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 417 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 418 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 419 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 420 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 421 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 422 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 423 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 424 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 425 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 426 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 427 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 428 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 429 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 430 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 431 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 432 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 433 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 434 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 435 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 436 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 437 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 438 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 439 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 440 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 441 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 442 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 443 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 444 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 445 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 446 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 447 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 448 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 449 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 450 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 451 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 452 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 453 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 454 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 455 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 456 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 457 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 458 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 459 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 460 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 461 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 462 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 463 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 464 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
