# Hacker News 热门文章摘要 (2026-08-04)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Show HN：简单算法与色彩空间生成多样化肤色

**原文标题**: Show HN: Simple algorithm and color space to generate diverse skin tones

**原文链接**: [https://toneyalexander.github.io/inclusive-color-space/](https://toneyalexander.github.io/inclusive-color-space/)

本文介绍了一个项目，旨在为数字工具中生成多样化的人类肤色定义一个简单、包容的色彩空间。作者手动将许多RGB颜色标记为合理的肤色，然后使用主成分分析将数据转换为更易于处理的PCA空间。接着，他们手动将球面方程拟合到数据云上，创建了RGB与新的TUV色彩空间之间的变换。文中提供了程序化生成肤色颜色的示例代码。

由此产生的颜色选择器具有三个直观的组成部分：T（深/浅）、U（潮红/赭色）和V（冷/暖）。作者强调这项工作“足够好”，并非权威，并列出了局限性：真实皮肤受生物学、光照、健康状况和显示差异的影响。他们还包含一个人文部分，讨论种族主义、肤色主义以及Nyma Tang的视频和Humanae摄影项目等资源。总体而言，该项目旨在弥合少数预设色调与数百万任意颜色之间的差距，为角色创建者、数字艺术和包容性色彩工具提供一个实用的起点。

---

## 2. Mistral的Shieldstral：用于多模态审核的3B开源权重模型

**原文标题**: Mistral's Shieldstral: 3B open-weights model for multimodal moderation

**原文链接**: [https://mistral.ai/news/shieldstral/](https://mistral.ai/news/shieldstral/)

Mistral 发布了 **Shieldstral**，这是一款采用 Apache 2.0 许可证的 3B 开放权重多模态安全分类器。它在文本安全方面超越了规模高达其 7 倍的开放护栏模型，并在多模态审核方面达到了新的最先进水平。

与传统采用固定危害分类体系的护栏模型不同，Shieldstral 将审核视为一项**策略自适应问答任务**。在推理时，用户提供一条自然语言策略查询（例如"该内容是否宣扬暴力？"）以及一份文档——文本、图像或两者兼有。模型从是/否 logits 输出经过校准的安全评分，从而支持按置信度进行阈值设定或排序。这一统一接口涵盖提示分类、响应审核、拒答检测和毒性检测，无需重新训练即可适应新策略。

主要亮点：
- **性能**：在文本安全、拒答检测、策略适应性和多模态基准测试中，达到或超越规模高达其 7 倍的模型。
- **效率**：可在单块 16GB NVIDIA GPU 上运行。
- **数据策略**：将带有冲突标签的异构公开数据集转换为统一的指令-查询-文档格式；严格程度按数据源进行校准。
- **判别优于记忆**：对比训练对教会模型区分相似策略，从而提升对未见过的用户自定义策略的泛化能力。
- **多模态基础**：使用通用图像数据集、查询增强和视觉-语言重排序来补充有限的视觉安全数据，以减少错误标注。
- **模型合并**：通过 SLERP 合并 LoRA 微调检查点，以保持校准、策略适应性和指令遵循能力。
- **基于 Forge 构建**：Mistral 的训练平台负责处理基础设施、数据和分布式训练。

Shieldstral 现已提供下载，未来的工作将聚焦于多语言覆盖、长文档鲁棒性和更广泛的多模态安全。

---

## 3. Waymo – 达拉斯对所有人开放

**原文标题**: Waymo – Dallas Open to All

**原文链接**: [https://waymo.com/blog/shorts/dallas-open-to-all/](https://waymo.com/blog/shorts/dallas-open-to-all/)

Waymo 现已向达拉斯的所有人开放：从今天起，任何人都可以下载 Waymo 应用并预约一次完全自动驾驶的行程。自二月份推出以来，该服务已迎来近15万名来自兴趣名单的乘客。此次扩展不仅让达拉斯居民可以搭乘 Waymo 办理事务、通勤和夜间外出，也让游客和访客能够使用。

Waymo 正在达拉斯爱田机场航站楼继续进行完全自动驾驶测试，计划很快为那里的旅客提供服务。它还将开始在达拉斯高速公路上进行完全自动驾驶测试——这被描述为向公众乘客开放这些路线之前的最后一步。

该公司强调了社区的支持，并引用了德克萨斯州癫痫基金会首席执行官克里斯·贾斯特尔的话，称 Waymo 是对于因医疗状况而限制驾驶的人们来说具有变革性的一步。该合作旨在扩大全德克萨斯州安全、独立的出行选择。

文章最后指出，在达拉斯乘车很简单：只需下载 Waymo 应用即可出发。

---

## 4. Hop.earth – 基于OpenStreetMap的赛车游戏

**原文标题**: Hop.earth – OpenStreetMap based car racing game

**原文链接**: [https://hop.earth/?server=lkhr7&route=fQ5nuu9R](https://hop.earth/?server=lkhr7&route=fQ5nuu9R)

Hop.earth是一款基于OpenStreetMap的赛车游戏，玩家可以在真实世界的地点展开竞速。游戏使用来自Copernicus DEM（COP-DEM-GLO-30）、IGN RGE ALTI®和CNIG LIDAR的高程与地形数据，致谢EU/ESA/IGN/CNIG。

---

## 5. Warp Agent CLI

**原文标题**: The Warp Agent CLI

**原文链接**: [https://www.warp.dev/blog/introducing-the-warp-agent-cli-coding-agent](https://www.warp.dev/blog/introducing-the-warp-agent-cli-coding-agent)

Warp Agent 现已作为独立 CLI 提供，可在任何终端中使用——Ghostty、iTerm 2、VS Code、Windows Terminal 等等。它是一个多模型、成本优化的编程代理，内置前沿模型和开放权重模型，并支持基于任务复杂度的自动路由以及自定义模型路由器。

该 CLI 基于 Warp 的终端基础设施构建，原生支持代理会话的多路复用，从而实现超越其他 CLI 代理的能力：

- 持久化会话：在会话中途切换目录，并可在远程机器上运行代理，无需安装远程二进制文件。
- 全屏/交互式应用控制：代理可以驱动 sqlite、python、gdb、htop、vim 等应用。
- 无缝输入：使用 `!` 执行 shell 命令，并具备自然语言检测功能，可自动区分命令与提示。
- Tab 补全：在任何终端中提供 Warp 旗舰级的参数/标志建议。

对于高级工作流，它支持多代理编排和云代理。它可以委派给子代理——包括 Claude Code 和 Codex 等其他框架——并将 CLI 会话移交给云端，以便工作可以从网页端继续。

快速开始：通过 curl（Mac/Linux）或 PowerShell（Windows）安装。推理选项包括 Warp 订阅（每月 18 美元起）、按需积分（10 美元起），或自带 API 密钥/OpenAI 兼容端点/SuperGrok 登录。

---

## 6. 美国在伊朗战争期间使用了“几乎所有”远程精确导弹

**原文标题**: U.S. used 'virtually all' of its long-range precision missiles during Iran war

**原文链接**: [https://www.cnbc.com/2026/08/04/us-has-used-virtually-all-of-its-long-range-precision-missiles-report.html](https://www.cnbc.com/2026/08/04/us-has-used-virtually-all-of-its-long-range-precision-missiles-report.html)

据报道，据三位熟悉相关数据的匿名消息人士透露，美国军方在与伊朗长达五个月的战争中已使用了“几乎所有”远程精确导弹——主要是陆军战术导弹系统（ATACMS）和精确打击导弹（PrSM）。这引发了人们对未来冲突（包括针对中国或俄罗斯的冲突）战备能力的担忧。

这些远程地对地弹药每枚造价超过100万美元，能够从安全距离实施精确打击。美国供应的ATACMS在乌克兰也发挥了关键作用。PrSM是较新型、更先进的ATACMS替代品。消息人士拒绝说明剩余数量。

白宫援引特朗普总统的话称，美国的弹药“比世界上任何国家都多得多”，且产量比以往任何时候都高。分析人士同意产量处于创纪录水平，但同时警告称，对于一场持久战而言，供应可能仍显不足。洛克希德·马丁公司和雷神公司未予回应；五角大楼发言人表示，军方拥有“所需的一切”。

据报道，此次消耗反映了政府选择避免风险更高的有人驾驶飞机打击。PrSM的库存本已偏低，因为该系统的列装时间相对较短。此外，防御性武器也遭到大量消耗：根据战略与国际研究中心（CSIS）的一份报告估计，约65%的“爱国者”拦截弹和至少38%的“萨德”（THAAD）拦截弹已被消耗，而一位消息人士称，“战斧”巡航导弹库存减少近一半。消息人士称，这些数字与美国内部数据相符。

军事顾问曾就库存水平向特朗普发出警告，据报道这影响了他不发动另一场大规模攻势的决定，不过一名美国官员将这一选择归因于海湾国家施加的压力。这场冲突于2月与以色列一同发动，特朗普未寻求国会授权此次战争。

---

## 7. 为什么有些人修剪草坪比别人做得好？

**原文标题**: Why some people mow a lawn better than others

**原文链接**: [https://pudding.cool/2026/06/mow/](https://pudding.cool/2026/06/mow/)

文章描述了一项在线实验，30,954人在虚拟草坪上割草，以研究人类在覆盖路径规划中的效率——这是一个与旅行商问题相关的问题。在一块49格的小草坪上，52%的玩家与最优路径的差距在五步以内，16%的玩家达到了完美，中位数效率为91%。人们找到了14,589条不同路线，其中包括全部12种完美解。

成功的关键在于识别出死胡同区域，并在那里收尾，以避免回溯。最优秀的割草者会在关键的岔路口停下来规划，而较差的割草者则快速通过，只在陷入困境时才作出反应。这种模式在更大、更杂乱的草坪上依然成立：即使问题规模增大，效率仍保持在90%左右，这表明草坪的结构比大小更重要。人类通过将草坪分解成较小的区域并逐步解决来处理复杂性。

令人惊讶的是，总思考时间与表现并不相关——时间对结果差异的解释度不足5%。重要的是玩家暂停的*时机*：表现最好的人会在决策早期和关键决策点上花时间，然后在开阔区域轻松通过。这反映了有效的启发式策略：将注意力分配给重要的决策，而忽略其余部分。文章还指出，最优解有时需要回溯，而研究使用了穷举算法来确定效率。

---

## 8. DeepSeek V4 Flash在单个AMD MI300X上运行

**原文标题**: DeepSeek V4 Flash on a Single AMD MI300X

**原文链接**: [https://github.com/ryanzhou/deepseek-v4-flash-mi300x](https://github.com/ryanzhou/deepseek-v4-flash-mi300x)

本文介绍了一种生产就绪配置，用于在单块 AMD MI300X GPU（192 GB HBM3，5.3 TB/s 带宽）上运行 3040 亿参数的 DeepSeek-V4-Flash-0731 模型，无需权重量化或卸载。该技术栈采用摘要固定的 vLLM ROCm 夜间版，集成 AITER 内核，并附带正确性补丁、调优表和 Docker Compose 文件。

关键结果：单流解码 168.6 token/秒，预填充约 7.9–8.5K token/秒，8 路并发流聚合吞吐 542 token/秒，64 路流 830 token/秒，并验证了 256K 上下文。权重占用 HBM 156.67 GiB，为 20 GB GPU KV 池和 96 GiB CPU 卸载层留出空间。

主要技术挑战在于 MI300X 的 AMD/Graphcore FNUZ FP8 格式，它不同于 MI325X 及更新 GPU 上使用的 OCP 标准 FP8——错误解读会导致两倍的缩放误差。该仓库提供了修复此问题的 overlay，此外还修复了 MXFP4 MoE 路由缺陷（填充通道损坏）、DSpark-7 草稿模型的因果推测验证、CPU↔GPU KV 同步，以及缺失的 gfx942 形状 AITER GEMM 调优表。

性能调优实现了：AITER 调优使解码提升 +42–62%，融合 SiLU 和快速路由带来 +64% 提升，路由内核延迟从每层 42.6 微秒降至 11.9 微秒。采用 2,048 token 调度器预算配合 1,024 token 预填充上限，改善了延迟隔离，将长预填充后的短请求 TTFT 从 8.2 秒降至 0.5 秒。

运维说明：HBM 余量紧张（预热后 204.5/205.8 GB），重启后需预热内核，并强调在吞吐之外的正确性测试（工具调用、BFCL、长上下文召回）。该技术栈采用 Apache-2.0 许可证，附有上游差异文档以保证可复现性。

---

## 9. 斯蒂芬·沃尔弗拉姆的妻子去世

**原文标题**: Stephen Wolfram's Wife Has Died

**原文链接**: [https://writings.stephenwolfram.com/2026/08/in-memory-of-my-wife-elise-cawley-1961-2026-with-thanks-for-36-wonderful-years/](https://writings.stephenwolfram.com/2026/08/in-memory-of-my-wife-elise-cawley-1961-2026-with-thanks-for-36-wonderful-years/)

无法访问文章链接。

---

## 10. 当AI基准测试达到平台期：基准饱和的系统性研究

**原文标题**: When AI Benchmarks Plateau: A Systematic Study of Benchmark Saturation

**原文链接**: [https://arxiv.org/abs/2602.16763](https://arxiv.org/abs/2602.16763)

这篇论文发表于ICML 2026，由Mubashara Akhtar与36位合著者共同撰写，系统性地考察了AI评估中的“基准饱和”现象——即基准测试在模型间不再具有区分度，从而失去其效用。作者对基准饱和进行了定义，并利用与模型性能趋势相关的14项属性，分析了60个语言模型基准测试。

主要发现：近半数被研究的基准测试呈现出饱和迹象，且随着基准测试“年龄”的增长，饱和率也在上升。值得注意的是，采用专家精选数据的基准测试对饱和更具抵抗力，而公开测试数据的可用性似乎并不能防止饱和。作者认为，审慎的设计选择，尤其是专家参与基准构建，能够延长基准测试的使用寿命，并支持更持久的AI评估实践。

---

## 11. Launch HN: EdotEnv (YC S26) – 用于教授LLM研究的量化交易强化学习环境

**原文标题**: Launch HN: EdotEnv (YC S26) – Quant Trading RL Envs to Teach LLMs Research

**原文链接**: [https://edotenv.com/](https://edotenv.com/)

本文介绍了一家名为 **EdotEnv** 的 Y Combinator S26 初创公司，该公司为量化交易构建强化学习（RL）环境，目标是教会大语言模型（LLM）进行研究。

其中一个关键概念是 **“部分信息下的 T+00 ChooseAct”**：模型必须基于不完整的状态做出决策，在全部后果可观察之前就承诺采取某个行动。这强调的是在不确定性和信息不完整的情况下进行决策，而非等待信息明朗或获得完整反馈后再行动。

---

## 12. Keyv及其相关组件在活跃的Shai-Hulud供应链攻击中遭到入侵

**原文标题**: Keyv and friends compromised in active Shai-Hulud supply chain attack

**原文链接**: [https://www.aikido.dev/blog/keyv-and-friends-compromised-in-npm-supply-chain-attack](https://www.aikido.dev/blog/keyv-and-friends-compromised-in-npm-supply-chain-attack)

2026年8月4日，攻击者入侵了**keyv**（一个每周npm下载量约1.27亿次的键值存储库）维护者的GitHub账户，在整个软件包家族中注入了一个窃取凭证的蠕虫。同一维护者还拥有**cacheable**、**flat-cache**、**file-entry-cache**以及其他多个广泛使用的缓存工具，全部受到此次攻击的影响。

受影响的软件包包括keyv 6.0.0、flat-cache 6.1.24、file-entry-cache 11.1.6、cacheable-request 13.0.20、cacheable 2.5.1、@cacheable/memory 2.2.1、cache-manager 7.2.10等。至少有**434个软件包、涉及1,381个版本**遭到入侵，每月合计安装量**超过20亿次**。

攻击者将恶意文件（**setup.mjs**和**Math_Symbol.js**）直接推送到主分支，并发布了带有有效npm来源证明的新版本。package.json中添加了`"preinstall": "node setup.mjs"`条目，因此运行`npm install`会自动执行该负载。setup.mjs会下载Bun JavaScript运行时来运行Math_Symbol.js，这是一个经过重度混淆的728 KB文件，其中包含针对以下目标的凭证窃取器：

- **npm令牌**（针对npm注册表进行验证）
- **GitHub令牌**，包括直接从Actions运行器内存中读取的OIDC令牌
- **AWS凭证**，包括IMDS/ECS元数据和AWS Secrets Manager
- **Kubernetes机密**，通过服务账户令牌获取
- **HashiCorp Vault令牌**（六个提取来源）
- **Stripe和Slack令牌**
- 通用的文件系统扫描（约200个glob模式），用于查找.env文件、私钥、SSH密钥、Terraform状态、Docker凭证、KeePass数据库等

窃取的数据使用攻击者的RSA公钥加密，并被外泄到约1,300个公开的GitHub仓库，其描述为**“Shai-Hulud: Here We Go Again”**，并回退到`npm-cache[.]com`（该域名从以太坊智能合约中动态获取，用于基础设施轮换）。

该负载还会以蠕虫形式自我传播：利用窃取的npm令牌重新发布其他维护者的软件包的受感染版本，并利用GitHub令牌将恶意钩子提交到`.claude/settings.json`和`.vscode/tasks.json`中，每个仓库最多可涉及50个分支。文章包含IOC（失陷指标），并建议使用Aikido扫描进行检测。

---

## 13. Truemetrics (YC S23) 正在柏林招聘——GTM负责人

**原文标题**: Truemetrics (YC S23) Is Hiring in Berlin – GTM Lead

**原文链接**: [https://www.ycombinator.com/companies/truemetrics/jobs/bIQQ7tP-founding-gtm-lead](https://www.ycombinator.com/companies/truemetrics/jobs/bIQQ7tP-founding-gtm-lead)

truemetrics是一家由YC S23支持的柏林初创公司，正在招聘一位创始GTM（市场进入）负责人，以推动年经常性收入（ARR）从100万欧元增长到1000万欧元以上。公司通过智能手机传感器数据为快递员提供精确的停车和建筑入口位置，解决“最后一米”配送效率低下的问题。目前公司已实现盈利，ARR达150万欧元，客户遍布多个国家，包括GLS、DPD和PostNord等企业级承运商。

该职位将与创始人直接合作，聚焦两条路径：发现新产品/用例（“新业务”），以及强化现有核心业务，包括客户项目和新市场拓展（“现有业务”）。候选人需亲力亲为、具备商业思维，并能适应模糊性——没有现成的方法论。入职前90天，你需要学习产品、负责一个实际项目，并提交一份经过验证的未来收入增长方案。

理想候选人包括前创始人、成功规模化产品的GTM负责人，或寻求主导权的高级运营者。薪资为8万至13万欧元，外加可观的股权。该职位为全职，工作地点在柏林（可居家办公），需持有有效工作许可。面试流程包括创始人通话、现场协作环节和背景调查。公司强调自主性、快速迭代，以及与客户和司机的真实互动。

---

## 14. 苹果称更多前员工可能将机密数据带给了OpenAI

**原文标题**: Apple says more ex-employees may have taken confidential data to OpenAI

**原文链接**: [https://techcrunch.com/2026/08/04/apple-says-more-ex-employees-may-have-taken-confidential-data-to-openai/](https://techcrunch.com/2026/08/04/apple-says-more-ex-employees-may-have-taken-confidential-data-to-openai/)

苹果正在升级其对OpenAI的商业秘密诉讼，寻求初步禁令和加快证据发现。这家iPhone制造商声称，除了最初在诉状中点名的两人——高级系统工程师Chang Liu和OpenAI首席硬件官Tang Yew Tan——可能还有更多前员工将机密数据带到了OpenAI。苹果还点名了OpenAI员工Yu-Ting Peng，以及由苹果前首席设计师Jony Ive共同创立的设备初创公司io。

在一份新提交的法庭文件中，苹果表示其调查发现了另外11名前员工，他们可能是证人或有涉案嫌疑。苹果列举了一些例子：一名前员工据称在Peng参加OpenAI面试前，与Liu和Peng会面，讨论了有关苹果未发布产品的专有信息；另一名前员工在参加OpenAI面试前截取了苹果机密文件的屏幕截图。苹果还声称，在提起诉讼后，多名目前就职于OpenAI的前员工主动联系，表示要归还他们保留的苹果配发工作设备，这暗示他们可能牵涉更深。

苹果辩称，自己有充分理由怀疑存在更多窃取行为，并正敦促法院在其初步禁令动议待决期间允许加快证据发现。

OpenAI公开回应，称苹果的请求“基于虚假信息且完全没有必要”，并表示自己未持有也不想要苹果的商业秘密，专注于打造创新产品。OpenAI还指出苹果此前曾出现报道中的失误，包括因姓氏相似而发错邮件，并指控苹果谎称与OpenAI总法律顾问有过沟通。OpenAI补充说，苹果未能承认前员工的“残留访问权限”是由于苹果自身糟糕的安全流程造成的。

文章还包含TechCrunch作者和活动的常规推广信息。

---

## 15. 网络安全太难了

**原文标题**: Web security is too hard

**原文链接**: [https://textslashplain.com/2026/08/04/security-is-hard-yall/](https://textslashplain.com/2026/08/04/security-is-hard-yall/)

埃里克·劳伦斯（Eric Lawrence）描述了一款合法的 Cloudflare 产品——**Cloudflare Wallet**——看起来多么像网络钓鱼攻击，以至于他差点举报它。从 `cloudflare.pay`（一个与 `cloudflare.com` 无关的域名）登录以授权该功能，触发了同意型网络钓鱼骗局的所有警示信号：催促用户认领用户名、OAuth 式权限提示、一个可疑的绿色对勾，以及没有简便方式举报该请求。

在检查自己的 Cloudflare 控制台并未找到 Wallet 功能后，他咨询了 Cloudflare 的 AI 聊天代理，对方要求获得账户访问权限。在授予只读权限后，代理确认该网站是真实的——但他随后尝试通过 HackerOne 举报时，却因 Cloudflare 的 CAPTCHA 故障而失败。最终他确认 Cloudflare Wallet 确实是一款合法的新产品，而那个绿色对勾只是一个放置不当、需悬停查看的安全 UI 元素。

劳伦斯强调给网页开发者的关键教训：
- 将应用和内容托管在可信域名下，如 `cloudflare.com/pay` 或 `pay.cloudflare.com`；若确需新域名，则从受信任页面直接链接。
- 在要求用户做出授权决定时，将安全信息置于清晰、可信的上下文中。
- 在权限请求页面上提供直接举报骗局的简便途径。
- 测试安全举报流程，确保其可用且有人监控。

对于用户，他建议保持谨慎和耐心。对于安全专业人士，他警告不要责怪受害者，因为即使是专家，当合法网站模仿钓鱼模式时也可能被欺骗。

---

## 16. Vlt 1.0 与托管包注册表

**原文标题**: Vlt 1.0 and Hosted Package Registries

**原文链接**: [https://www.vlt.io/blog/1-0](https://www.vlt.io/blog/1-0)

vlt 1.0现已稳定，同时托管软件包注册表和生态系统镜像正式全面可用，使vlt成为面向开发者、团队和智能体的端到端平台。

**包管理器亮点：** CLI提供60多个图原生伪选择器，其中约30个专注于安全（如 `:malware`、`:cve`、`:vuln`）。`:host(local)` 可跨所有本地项目查询依赖项。`--scope` 标志可为命令添加选择器。Graph Modifiers以CSS样式的特异性覆盖依赖项。分阶段安装时先执行下载而不运行脚本，`build` 可选择性地执行。目录（Catalogs）通过 `catalog:` 一次性定义版本。OIDC可信发布可从CI环境工作，无需长期令牌。vlt是npm的直接替代品，覆盖从初始化到发布的全流程。

**托管注册表：** 该服务向后兼容npm注册表API，因此npm、pnpm、yarn、bun和deno均可安装和发布。定价包含慷慨的免费层级。软件包通过边缘基础设施提供，清洁安装速度比npm快38%。无限私有软件包受作用域强制约束，并通过清单验证。安全性是一等公民：vlt摄取OSV和其他恶意软件源，在索引期间阻止已知不良软件包——已标记超过27.5万个软件包版本，其中25%以上在npm上仍然可用。用户可以保留账户名，并立即开始安装和发布。

---

## 17. 红线俱乐部

**原文标题**: The Red Strings Club

**原文链接**: [https://www.vegard.net/the-red-strings-club-review/](https://www.vegard.net/the-red-strings-club-review/)

本文是对电子游戏《红弦俱乐部》的评测，该游戏是一款赛博朋克风格叙事冒险游戏，是在Steam促销期间购买的。作者很少玩游戏，但经常趁打折时买游戏，他之所以被这款游戏吸引，是因为其世界观构建、像素画风和配乐，以及调酒主题。

游戏的核心玩法是通过调制饮品来影响角色的情绪，从而解锁不同的故事线，但作者对此并不感兴趣，认为这一机制存在问题。作者对选择导向型游戏表达了挫败感，担心自己错过了最佳路线，或者在没有多周目游玩的情况下无法看到完整剧情。故事涉及资本主义、自由意志、人性与人工智能等主题，但作者指出其中存在剧情漏洞、怪异之处以及第三幕的混乱转折。一个重要的批评点是，作者在游玩过程中遇到了软锁，无法推进剧情，不得不查阅在线攻略才能获得一个从未遇到过的电话号码。大约四个小时后，作者通关了游戏，却一个Steam成就都没有解锁。

作者给这款游戏打出了5分制中2分的评分，再加上1分给配乐，共计3分（满分5分）。他盛赞配乐本身就值回票价，并在结尾幽默地建议读者拥抱所爱之人，享用一杯无酒精鸡尾酒。评测中还附带了一条关于谷歌浏览器数据收集行为的警示说明。

---

## 18. Xbox服务中断。你无法玩自己拥有的光盘版游戏

**原文标题**: Xbox goes down. You can't play games you own on disc

**原文链接**: [https://birchtree.me/blog/xbox-goes-down-you-cant-play-games-you-own-on-disc/](https://birchtree.me/blog/xbox-goes-down-you-cant-play-games-you-own-on-disc/)

周日晚上开始的Xbox长时间服务中断不仅导致数字版游戏无法游玩，也阻止了用户玩自己拥有的实体光盘游戏。文章作者以此论证，今天的实体媒体并非许多人想象中的那样。在现代主机上玩光盘游戏，本质上仍是持有许可而非真正拥有，微软、索尼或任天堂可以有意或无意地阻止访问。即使有光盘，游戏仍需安装到内置硬盘，且通常需要更新才能运行。相比之下，作者的Analogue Pocket掌机可以立即运行20年前的Game Boy卡带，无需授权或网络连接，这显示了旧式实体媒体所提供的实际所有权。作者指出，PC游戏早已进入数字化时代，但PC用户有办法维持对自己喜爱的游戏的访问权限，这正是他们转向PC的原因。

---

## 19. Perspec 1.0

**原文标题**: Perspec 1.0

**原文链接**: [https://adriansieber.com/announcing-perspec-1-0/](https://adriansieber.com/announcing-perspec-1-0/)

Perspec 1.0 是一款用于校正图像透视的桌面应用，特别适用于文档和收据的照片。作者开发此应用是因为现有的移动扫描应用强制使用 JPEG 压缩和不必要的检测预览，而且它们的文档检测对于弯曲或起皱的纸张往往不准确。

Perspec 避免使用边缘检测，而是采用角点检测：它将照片分割为文档和背景，然后从文档轮廓中找到角点。这对于非平面文档效果更好。该应用还支持手动调整选区。

为了输出干净的黑白图像，Perspec 在应用 Otsu 阈值之前，通过模糊和减法去除阴影。新的“Save BW Smooth”选项使用双阈值实现抗锯齿边缘，同时保持较小的文件大小。

Perspec 使用 Haskell 和名为 FlatCV 的自定义 C 库构建。1.0 版本新增了自动角点检测、Windows 支持、拖放文件选择、可拖动的多边形边缘、PNG 的 EXIF 旋转以及改进的用户界面。

它作为一款付费桌面应用提供，支持 macOS、Windows 和 Linux，可在 releases 页面获取二进制文件，并为 macOS 提供 Homebrew tap。用户可以通过 itch.io 或 Gumroad 购买许可证。计划中的未来功能包括固定输出尺寸（例如 A4、US Letter）和用于元数据工作流的二维码检测。

---

## 20. 不要过早停止：以内存速度对源代码进行大小写折叠

**原文标题**: Don't stop early: Case-folding source code at memory speed

**原文链接**: [https://github.blog/engineering/architecture-optimization/dont-stop-early-case-folding-source-code-at-memory-speed/](https://github.blog/engineering/architecture-optimization/dont-stop-early-case-folding-source-code-at-memory-speed/)

本文由 GitHub 首席软件工程师撰写，描述了 GitHub 如何让 Unicode 大小写折叠在索引时能够快速处理大量源代码，从而实现正确的不区分大小写的代码搜索。

文章解释了大小写折叠——而非简单转小写——才是源代码的正确规范化方式，因为 Unicode 的大小写规则可能将字符映射为不同长度（例如，某些字符会折叠成多个 ASCII 字母）。标题中的核心警告是“不要提前停止”：在第一个字节或字符不匹配时就停止的比较和折叠流水线可能会漏掉有效匹配并破坏正确性。相反，必须对每个输入字符串应用完整的大小写折叠映射，尤其是对非 ASCII 和多字节 UTF-8 序列。

随后，这篇文章详细介绍了如何使用底层性能技术以“内存速度”执行这种规范化：预计算查找表、针对以 ASCII 为主的代码使用 SIMD/向量化处理、少分支循环，以及小心处理多字节 UTF-8 边界。这些优化避免了逐字符分支的高昂成本，让 CPU 能以接近内存带宽的速度处理字节。作者讨论了实际的工程权衡，例如何时使用通用 Unicode 表，何时为常见 ASCII 源代码走快速路径，以及该实现如何集成到 GitHub 的搜索流水线中。

总体而言，关键要点是：如果算法被设计为完整运行到底，并针对内存吞吐量进行优化，而不是在廉价但错误的提示处提前停止，那么正确的 Unicode 大小写折叠既能保持精确，又能极其快速。

---

## 21. 敲诈失败 (2013)

**原文标题**: Blackmail Fail (2013)

**原文链接**: [https://gwern.net/blackmail](https://gwern.net/blackmail)

格温，一位以笔名写作、涉猎比特币、密码学与暗网市场的作家，描述了自己因声名在外而屡次遭到敲诈勒索者和虚张声势者的骚扰。

2012年9月，一名匿名敲诈者要求以少量比特币赎回两个在Pivory.com注册的用户名，并威胁若不付款就将其公开。格温用经过PGP签名的消息公开拒绝，理由是向敲诈者付款只会招致无休止的索取。他预测该敲诈者不会回复也不会再次尝试；第一个预测错了，但那个比特币地址始终没有动静，也没有造成任何损害。

2013年11月，他收到一封加密消息，发件人声称能将格温与某暗网市场经营者联系起来，此人可能是“恐怖海盗罗伯茨”。该消息是用一个未知密钥加密的，格温无法解密。他怀疑这是一个虚张声势的骗局，于是回复要求发件人用他的公钥重新加密。发件人随后承认自己一直在恶搞，声称是别人告诉他DPR的身份，但他没有任何证据，也无法解密该消息。之后他便再无音讯。

格温指出，他的公开形象——涉足暗网市场、提供赏金、偶尔出面干预——导致他被错误地指认为DPR、中本聪或执法机构人员。这些事件体现了在线匿名性和密码学相关写作所带来的奇怪后果，但最终没有造成实际损害，也没有人支付任何款项。

---

## 22. 不存在的日期 (2015)

**原文标题**: Dates That Don't Exist (2015)

**原文链接**: [https://blog.yossarian.net/2015/06/09/Dates-That-Dont-Exist](https://blog.yossarian.net/2015/06/09/Dates-That-Dont-Exist)

文章探讨了1582年天主教世界从儒略历改用格里高利历时产生的10天空白。为了校正日历漂移，1582年10月5日至14日被跳过，因此这些日期在格里高利历系统中不存在。

作者测试了编程语言如何处理这些不存在的日期：

- **Ruby**：尝试创建 `DateTime.new(1582, 10, 5)` 时，Ruby 正确抛出了 `ArgumentError`，这得益于其内部格里高利历有效性检查。
- **Python**：Python（2和3）错误地接受了 `date(1582, 10, 5)`，甚至将其格式化为真实日期。
- **Perl**：使用常见的 CPAN `DateTime` 模块的 Perl 也接受这种日期而不报错。

文章指出，这不像 Y2K 那样的重大 bug，但显示了日期/时间正确性方面的差距。

附言强调了 `ncal(1)`，它更准确，因为它接受国家代码（`-s`）并根据该国采用格里高利历的时间进行调整。它正确地跳过了意大利1582年和英国1752年缺失的日期，不过补充说明指出它仍遗漏了瑞典18世纪的历法变动。

---

## 23. 驾驭工程学，成就自我提升

**原文标题**: Harness engineering for self-improvement

**原文链接**: [https://lilianweng.github.io/posts/2026-07-04-harness/](https://lilianweng.github.io/posts/2026-07-04-harness/)

本文认为，**驾驭工程**——即一个围绕基础模型并编排工具、上下文、记忆和工作流的系统——是实现**递归自我改进（RSI）**的关键路径。尽管RSI通常意味着模型重写自身权重，但短期内的现实是改进模型周边的部署系统。

**关键驾驭设计模式：**
1. **工作流自动化**：计划、执行、测试和迭代的目标导向循环，正如编码智能体中所见。
2. **文件系统作为持久记忆**：将日志、工件和轨迹存储在文件中而非上下文中，从而支持长周期任务和恢复。
3. **子智能体与后台任务**：通过显式的进程管理实现并行性，并将输出存储在可检查的文件中。

**编码智能体驾驭**已收敛于文件操作、Shell执行、Git、搜索和子智能体委派等工具集。

文章区分了驾驭与核心智能，并预测驾驭改进将成为显式的优化目标。进展从提示词 → 结构化上下文 → 工作流 → 驾驭代码 → 优化器代码逐步推进。

**优化方法：**
- **智能体上下文工程（ACE）**：维护从成功和失败轨迹中提炼的结构化、条目化上下文要点。
- **元上下文工程（MCE）**：将上下文管理机制与内容分离，通过双层优化进化技能。
- **元驾驭（Meta-Harness）**：使用编码智能体自行提出并评估新的驾驭代码，使驾驭设计成为可执行的搜索空间。

**工作流设计示例**包括用于自动化研究的AI Scientist、带有可验证性约束的ScientistOne，以及通过挑战者-求解器-验证器角色生成训练数据的Autodata。

总体而言，驾驭正变得更加通用、自我改进，并且对于使AI系统能够自主增强自身能力至关重要。

---

## 24. 在线广告巨头Adform遭黑客攻击，再次证明广告拦截器的必要性

**原文标题**: Online ad giant Adform was hacked, proving once again why ad blockers are needed

**原文链接**: [https://this.weekinsecurity.com/online-advertising-giant-adform-was-hacked-proving-once-again-why-ad-blockers-are-necessary/](https://this.weekinsecurity.com/online-advertising-giant-adform-was-hacked-proving-once-again-why-ad-blockers-are-necessary/)

Adform是一家每日投放15亿条广告的大型在线广告提供商，近日遭到黑客攻击。7月27日，它通过被篡改的广告加载代码开始向用户推送恶意广告。安全研究员Kevin Beaumont透露，该代码在受害者浏览器中触发后，每三秒钟就会将剪贴板中的加密货币钱包地址替换为黑客控制的地址——这几乎确保受害者会不小心将加密货币发送给攻击者。

此次攻击可能危及访问使用Adform的网站的设备。Adform后来披露了此次泄露事件，但未解释其如何遭到入侵，也未说明受影响人数。该公司承认，正在调查黑客是否还收集了用户访问了哪些网站的数据。

这篇文章利用该事件论证了广告拦截器是必不可少的安全防御手段。拦截广告可以防止恶意软件和跟踪代码加载。作者指出，他自己的广告拦截器完全阻止了Adform域的加载，这体现了其保护作用。

---

## 25. 我所知的一切（1975）

**原文标题**: Everything I Know (1975)

**原文链接**: [https://www.bfi.org/about-fuller/everything-i-know/](https://www.bfi.org/about-fuller/everything-i-know/)

这篇文章介绍了“我所知道的一切”——巴克敏斯特·富勒于1975年1月讲授的系列讲座，全长42小时，涵盖了他毕生的全部工作。讲座探讨了他的主要发明——包括Dymaxion住宅、汽车和浴室，威奇托住宅，网格球顶以及张拉整体结构——同时也涉及《协同学》一书的内容。富勒还在科学与工业化的背景下分享个人历史，讨论了建筑、设计、哲学、教育、数学、几何学、制图学、经济学、历史、结构、工业、住房和工程等主题。他以综合性设计方法解决世界问题是一个核心主题。

完整视频系列可在archive.org上在线观看。印刷版文字记录由录音带逐字转录而成，为保留富勒独特的风格和术语仅做了最小限度的编辑。巴克敏斯特·富勒研究所邀请读者贡献修改、建议和注释，以不断完善这一资源。致谢部分感谢JoAnne Ishimine自愿转录全部42小时的内容，Ed Applewhite提供提纲，以及其他志愿者和工作人员。该作品版权归R. Buckminster Fuller遗产所有。

---

## 26. 《柔雨将至》（1950）[pdf]

**原文标题**: There Will Come Soft Rains (1950) [pdf]

**原文链接**: [https://users.wpi.edu/~zrbutzke/Docs/BradburyStories(1).pdf](https://users.wpi.edu/~zrbutzke/Docs/BradburyStories(1).pdf)

雷·布拉德伯里的短篇小说《细雨将至》以2026年8月的加利福尼亚州阿伦代尔为背景，故事发生在一座全自动化的“智能房屋”中。人类已无一存活——核爆炸夺走了这户人家的生命。房屋仍在机械地运转着：早上7点准时唤醒，做早餐，大声朗读诗歌，打扫卫生，为新的一天做准备——一切都是为了那些看不见的、已不在的居住者。

整个白天，房屋报时并播报日期，一个机器人的声音朗诵着莎拉·蒂斯代尔的诗作《细雨将至》，诗中写道，即使人类消失，大自然也几乎不会察觉。唯一的活物似乎是一只狗，它拖着被辐射病折磨的躯体，饥饿不堪地回到家中，随即死去；房屋里的机器老鼠悄无声息地将它火化了。

夜幕降临时，一根断裂的树枝砸穿窗户，引发了一场大火。房屋用自动安全系统拼命灭火，但无济于事。房间一个接一个地被烧毁，最终整栋房屋轰然倒塌，化为废墟。结尾处，一个孤零零的声音反复报着日期——2026年8月5日——然后，这个声音也渐渐消失在寂静中。

故事的主要主题包括：自然对人类毁灭的漠然、人类造物的脆弱，以及科技忠实地服务于一个已不复存在的家庭的讽刺意味。布拉德伯里用这座自动运转的房屋来表明，即使是最先进的人类发明，若没有人的存在，也将毫无意义。取自蒂斯代尔诗作的标题进一步强化了这一主题：大自然依旧平和地延续着，对于文明的终结，它浑然不觉，也毫不在意。

---

## 27. 诺贝尔病

**原文标题**: Nobel Disease

**原文链接**: [https://en.wikipedia.org/wiki/Nobel_disease](https://en.wikipedia.org/wiki/Nobel_disease)

"诺贝尔病"（或"诺贝尔炎"）是一个非正式术语，指一些诺贝尔奖得主后来接受奇怪或科学上不合理的观点的倾向。这通常归因于奖项的声望使获奖者觉得有资格在自己专业领域之外发言，而媒体关注又放大了他们的观点。保罗·纳斯警告获奖者不要过度自信，尽管目前尚不清楚诺贝尔奖得主是否真的比其他人更容易陷入非理性。

这一现象表明，某一领域的专业知识并不能使人在其他领域成为权威，高智商也不能保证对无根据的信念免疫。米尔顿·弗里德曼称这种过度关注"令人受宠若惊，但也使人腐化"，并建议设立更多奖项作为解药。

显著例子包括：
- **菲利普·莱纳德**——纳粹支持者，鼓吹"德意志物理学"。
- **亚历克西·卡雷尔**——在维希法国倡导优生学。
- **夏尔·里歇**——相信超感官知觉、鬼魂和占卜探测。
- **莱纳斯·鲍林**——在没有科学依据的情况下提倡用大剂量维生素C治疗感冒、精神分裂症和癌症。
- **威廉·肖克利**——宣扬种族主义和优生学观点。
- **詹姆斯·沃森**——发表了将种族与智力、黑色素与性欲联系起来的无根据主张。
- **尼可拉斯·廷贝亨**——支持已遭否定的"冰箱母亲"自闭症理论和"拥抱疗法"。
- **布莱恩·约瑟夫森**——支持顺势疗法、心灵感应和超觉静坐。
- **卡里·穆利斯**——质疑HIV在艾滋病中的作用以及人为气候变化；相信占星术。
- **吕克·蒙塔尼耶**——推广类似顺势疗法的"水记忆"、疫苗导致自闭症的说法以及关于COVID-19的阴谋论。

其他获奖者，如皮埃尔·居里、沃尔夫冈·泡利和朱利安·施温格，也持有或宣扬过类似的可疑观点。

---

## 28. MariaDB：在服务器日志和客户端提示中宣传达到10k GitHub星标

**原文标题**: MariaDB: Promote getting to 10k GitHub stars in server log and client prompt

**原文链接**: [https://github.com/MariaDB/server/pull/4262](https://github.com/MariaDB/server/pull/4262)

贡献者 Ottok 提出的一个 GitHub 拉取请求（PR）建议在 MariaDB 的客户端提示符和服务器启动日志中添加一条推广信息，要求用户为项目的 GitHub 仓库（github.com/MariaDB/server）加星标，以帮助达到 10,000 星。提议的客户端输出在版权声明后增加了“帮助他人发现 MariaDB。在 GitHub 上为它加星标：https://github.com/MariaDB/server”这一行，并在服务器日志中添加了对应的 `[Note]` 行。该变更通过成熟度级别检查进行控制，因此只在非稳定构建中显示，方便日后挑拣（cherry-pick）和修改。

该 PR 引发了争论。审阅者质疑在专业的 RDBMS 中“推销”GitHub 星标是否合适；一位用户（notr1ch）抱怨该消息已通过 Debian 维护者的补丁出现在一个 LTS 版本中。其他人则为它辩护，指出有用户在看到提示后前来为仓库加星。该 PR 最初于 2025 年 12 月关闭，但在 MariaDB 基金会管理层改变主意后于 2026 年 1 月重新打开。审阅者 gkodinov 提供了具体的差异（diff），使用 `#if SERVER_MATURITY_LEVEL < MariaDB_PLUGIN_MATURITY_STABLE` 来限制暴露范围，并根据审阅者 vuvova 的评论调整了措辞（用“在 GitHub 上为它加星标”而非“为我们加星标”）。在获得 gkodinov 和 vuvova 双方的批准后，该 PR 于 2026 年 1 月 26 日合并到主分支。

后来（2026 年 4 月）用户 drzraf 的批评谴责该日志行是“垃圾化”，并用非技术广告“污染日志”。随后开启了一个后续问题（MDEV-40555），要求将推广扩展到旧版本（10.11 及更高版本）。该 PR 被标记为“外部贡献”，合并时有 18 项 CI 检查中的 17 项通过。

---

## 29. "干净"的代码，糟糕的性能（2023）

**原文标题**: "Clean" Code, Horrible Performance (2023)

**原文链接**: [https://www.computerenhance.com/p/clean-code-horrible-performance](https://www.computerenhance.com/p/clean-code-horrible-performance)

文章认为，若干“整洁代码”规则——尤其是偏爱多态、保持函数小而单一、避免了解对象内部细节——可能会严重损害运行时性能。为了演示，Casey Muratori 使用了整洁代码中的经典示例：一个带有虚函数 `Area()` 的形状层次结构，然后测量了一个对形状面积求和的循环。

基于 vtable 的多态版本每个形状大约需要 35 个时钟周期。通过违反第一条规则，将多态替换为对扁平化 `shape_union` 结构体的普通 `switch` 语句，性能提升到每个形状约 24 个时钟周期——免费获得 1.5 倍加速。switch 还消除了指针间接引用，因为形状可以连续存储在数组中。

打破更多规则会带来显著结果。作者发现所有面积公式都共享 `系数 * 宽 * 高` 的模式，于是用简单的表查找（`CTable[type] * width * height`）替换了 switch。这个表驱动版本每个形状大约只需要 3–3.5 个时钟周期——相比“整洁”代码版本提升了 10 倍，尽管它在符号数、操作数和代码行数方面都更简单。

核心要点是：教条式地遵循整洁代码规则可能会抹去多年来的硬件性能提升。作者主张按操作（而非类型）组织代码，使用 switch 语句，并利用数据结构的知识让编译器有效优化。他强调，这个例子本身就来自整洁代码文献，说明这类模式很普遍，注重性能的程序员应该质疑这些“最佳实践”。

---

## 30. 劳动力参与率大幅下降的背后原因是什么？

**原文标题**: What's Behind the Sharp Drop in Labor Force Participation?

**原文链接**: [https://www.stlouisfed.org/on-the-economy/2026/aug/what-is-behind-sharp-drop-labor-force-participation](https://www.stlouisfed.org/on-the-economy/2026/aug/what-is-behind-sharp-drop-labor-force-participation)

无法访问该文章链接。

---

## 31. 展示 HN：在 4 GB 笔记本 GPU 上微调 8B 模型

**原文标题**: Show HN: Fine-tune an 8B model on a 4 GB laptop GPU

**原文链接**: [https://github.com/MakazhanAlpamys/Soup](https://github.com/MakazhanAlpamys/Soup)

Soup 是一个开源（Apache-2.0）CLI 工具，可将 LLM 微调和后训练简化为单命令工作流——无需 SSH 或复杂配置。其主打功能是**层流式传输（layer streaming）**，通过每次将一层解码器层送入 GPU，使冻结的基础模型不占用 VRAM，从而可在 **4 GB 笔记本 GPU** 上微调 8B 模型（例如使用 NF4 量化和 LoRA 的 Llama-3.1-8B-Instruct）——实测峰值 VRAM 为 3.32 GB，速度 119.6 tok/s，与常规驻留运行的结果逐位一致。

要点：

- **安装**：`pip install "soup-cli[train]"`，然后使用单个 YAML 配置执行 `soup init` 和 `soup train`，自动处理批处理、GPU 检测和量化。
- **训练方法**：支持 SFT、DPO、ORPO、SimPO、KTO、IPO、BCO 等。近期版本在层流式传输之上增加了偏好损失；DPO 的参考模型通过复用不带适配器的流式基础模型，在内存上“免费”（峰值仅为 SFT 的 0.914 倍），但每步读取量约为 SFT 的 1.52 倍。GRPO/PPO 仍不支持，因为生成过程需要为每个 token 重新读取各层。
- **数据格式**：自动检测 JSONL/JSON/CSV/Parquet/TXT，包括 Alpaca、ShareGPT、ChatML、DPO/KTO、视觉、音频和预训练格式。
- **生态系统**：包括聊天、服务（兼容 OpenAI）、合并/导出（GGUF、ONNX 等）、评估门控、奖励合成、推测解码测量、Docker 镜像以及 100+ 模型配方。
- **要求**：Python 3.10+，推荐使用 CUDA GPU（Apple Silicon MPS 也可用），标准 7B QLoRA 需要 8 GB+ VRAM（使用层流式传输仅需 4 GB）。
- **注意事项**：层流式传输仍处于 BETA 阶段；旧版流式适配器（v0.72.1 之前）可能因张量键错误而失效。

该项目在单台 4 GB 笔记本上进行维护，捐赠资金用于支持多 GPU 和 8B+ 验证等受硬件限制的工作。

---

## 32. 工作室背后的教学法

**原文标题**: The Pedagogy Behind the Studio

**原文链接**: [https://gail.wharton.upenn.edu/gen-ai-studio/the-generative-ai-studio-pedagogy/](https://gail.wharton.upenn.edu/gen-ai-studio/the-generative-ai-studio-pedagogy/)

本文作者劳拉·扎罗（2026年7月29日）认为，生成式AI应被视为一种创意媒介，而非仅仅是一种生产力工具，应运用经过时间考验的艺术与设计教育方法来培养判断力、创造力和批判性思维。沃顿商学院的生成式AI工作室（GAIL）正是基于这一理念而建立。

该项目的三大核心实践如下：

**1. 工作室结构：** 学生参与个人项目，没有“标准答案”。每周三小时的课程将概念讲解、演示与动手实践相结合。项目评估涵盖以下维度：内在AI、美学元素、用户界面、IT架构、数据安全与用户安全，以及伦理道德。

**2.  critique（评图）：** 评图通过一对一或小组反馈培养鉴赏力。学生展示自己的作品，并使用“我注意到……”“我想知道……？”“如果……会怎样？”等句式邀请反馈。教师确保心理安全感。反馈被视作观点而非真理，针对的是作品而非个人。接受者学会完整倾听、提出澄清性问题，并权衡各方意见。

**3. 研讨会（Charrette）：** 一个为期一天的结构化流程，通过发散与收敛在六个阶段中展开：设定舞台、发散（类比式创意生成）、意义建构（小型评图）、收敛（团队规划）、快速原型制作和评估（闭幕评图）。它激发创新与协作式问题解决能力。

**成果：** 学生成为更优秀的AI管理者和艺术总监，将输出从千篇一律的回应推向独特鲜明的界面（语音、视觉、机器人、XR、漫画、动态界面）。他们学会了弥合产品承诺与实际用户体验之间的差距，并对安全与伦理——包括创作者同意权、署名权和报酬——形成了更强的意识。

扎罗总结道，将生成式AI视为创意媒介，使基于工作室的教学法直接适用。首批学员展现出更敏锐的判断力、更具独创性的作品以及可迁移的创意流程。该工作室将进行扩展，且随着技术不断演进，这一方法预计将持续保持其价值。

---

## 33. Cloudflare借助AI执行工程标准

**原文标题**: Cloudflare enforces engineering standards using AI

**原文链接**: [https://blog.cloudflare.com/engineering-standards-enforcement/](https://blog.cloudflare.com/engineering-standards-enforcement/)

Cloudflare 构建了 **Cloudflare Codex**，这是一套受管控、集中化的工程标准，旨在取代分散的文档和口口相传的知识。标准以 RFC 形式编写，使用 MUST/SHOULD 关键词（RFC 2119），按领域组织并指定负责人，以结构化 JSON 格式存储并带有稳定标识符，以便 AI 代理高效检索相关要求。

三个由 Codex 驱动的代理在整个工程生命周期中应用这些标准：

- **AI 代码审查器**：评估合并请求是否符合 Codex 标准。已批准的 RFC 产生非阻塞建议；强制执行的 RFC 会对未满足的 MUST 要求阻止合并。迄今为止，它已标记近 23 万个违规，并阻止了 1.6 万次合并。更轻量级的替代方案包括自定义 linter 包（通过 oxlint 支持 TypeScript，计划支持 Rust 和 Go）以及本地 CLI 版本。

- **规格审查器**：在实现之前审查技术设计文档，重点关注架构和设计相关的 RFC。它已在超过 3,200 次审查调用中评估了约 600 份独特的规格，大多数发现被评为“重大”或“次要”严重级别。

- **事故报告审查器**：评估事后分析报告的完整性、清晰度和可操作的后续行动。对于高严重性事故它是强制性的，并已审查了 200 多份报告。

未来计划包括将 Codex 扩展到整个软件开发生命周期，使代理能够自主提出修复建议，并将 Codex 扩展到工程之外，应用于产品、安全、合规以及信任与安全等团队。

---

## 34. 警察如何试图隐藏他们使用弗洛克的情况

**原文标题**: How Cops Are Trying to Hide Their Use of Flock

**原文链接**: [https://www.404media.co/do-not-mention-alpr-usage-how-cops-are-trying-to-hide-the-existence-of-flock/](https://www.404media.co/do-not-mention-alpr-usage-how-cops-are-trying-to-hide-the-existence-of-flock/)

艾奥瓦州瓦佩洛县的警方正在使用Flock自动车牌识别（ALPR）摄像头，但他们的政策明确指示警官对此保密。一份通过公共记录请求获得的标准化操作程序文件写道：“不要向车内人员提及ALPR的使用”以及“除非绝对必要，不要在报告或投诉中提及ALPR的使用”。警官被建议在报告中含糊地将Flock称为“县级资源”，将ALPR数据视为需要核实并采取行动的情报。

该县根据2024年底签署的合同安装了四台Flock摄像头。治安官唐·菲利普斯为这一政策辩护，称副手们通过正常检查核实车牌信息，没有义务透露调查方法，因为这样做可能帮助罪犯规避该系统。

文章指出，这种保密是一种更广泛模式的一部分。尽管Flock倡导透明度和问责制，但许多警察部门在使用它时几乎没有公众监督或讨论。早前的报道发现，多个州的警察被要求对可能通过公共记录请求暴露的Flock搜索“尽可能模糊”，相关指导由FBI和司法部共享。许多城镇还悄悄签署了Flock合同，让居民在没有充分讨论的情况下进入一个全国性的监控网络。

瓦佩洛县的政策被与历史上围绕Stingray基站模拟器的保密行为相比较，尽管没有那么极端——警方曾为避免暴露Stingray的使用而撤销案件。总体而言，文章强调了Flock在数千个司法管辖区部署时的不一致性和缺乏透明度。

---

## 35. 为什么大语言模型在表格预测中会失败

**原文标题**: Why Large Language Models Fail at Tabular Prediction

**原文链接**: [https://arxiv.org/abs/2608.02412](https://arxiv.org/abs/2608.02412)

本文探讨了大型语言模型（LLM）在表格预测任务上表现不佳的原因，这也是表格基础模型研究的一个关键动机。作者在纯推理设置下——即一次生成，不使用工具、微调或脚手架——测试了一个前沿LLM，覆盖31个基准数据集。他们系统性地评估了五个假设：（a）处理噪声数据或非线性可分数据的能力；（b）CSV的线性格式掩盖了列结构；（c）数字的分词方式；（d）查询的测试点数量；（e）输入维度。

受控实验证伪了假设（a）至（d）。然而，维度被证明是关键因素：在对数据进行随机投影时，LLM是九种方法中唯一准确率随维度增加而下降的，而经典基线方法则保持平稳甚至有所提升。与252个配置好的经典模型进行的行为比较显示，在二维情况下，LLM的预测类似于局部、基于距离的方法（网格一致性最高达91.6%）。在更高维度下，没有任何经典模型——即使加入了经过调优的、随维度变化的噪声——能够重现它的预测。

作者并未声称确定了内部机制，但得出结论：LLM的表格能力会随维度升高而瓦解，其方式无法被任何噪声污染的经典学习器所模仿。这解释了为何LLM在表格数据上始终输给简单、成熟的基线方法，而底层机制仍是一个待解的问题。该论文作者为Marta Garnelo和Wojciech M. Czarnecki（arXiv:2608.02412）。

---

## 36. 词源为何重要：追溯词语如何照亮历史（2024）

**原文标题**: Why etymologies matter: How tracing words can illuminate history (2024)

**原文链接**: [https://resobscura.substack.com/p/why-i-love-etymologies](https://resobscura.substack.com/p/why-i-love-etymologies)

本杰明·布林的文章认为，词源学是历史学家的宝贵工具，能够揭示文化变迁以及看似毫无关联的语言和民族之间深层的联系。

他从波斯语单词 *div*（意为“恶魔”）讲起，这个词可追溯至原始印欧语的 *deywós*（意为“神”），与西班牙语的 *dios*、英语的 *deity* 和印地语的 *deva* 相关。这一含义的转变可能发生在古代琐罗亚斯德教徒之中，他们将因陀罗等旧神贬为恶魔，而印度各分支则继续奉其为 *deva*——这暗示了公元前1500年前后可能发生的一次历史性分裂。布林还注意到波斯语与英语之间令人惊讶的同源词（*abru* = 眉毛，*baradar* = 兄弟，*dokhtar* = 女儿，*garm* = 温暖），以及 *lox*（鲑鱼）这一极为稳定的词：数千年来在日耳曼语、波罗的语和斯拉夫语中几乎未变。

同源词也有助于重建尚未有文字记载的历史。达·席尔瓦和德黑兰尼的一项谱系学研究表明，像“铁匠与魔鬼”这样的民间故事可追溯至6000至7000年前的原始印欧语时代，比《圣经》或《奥德赛》还要古老。这个故事讲述一位铁匠智胜魔鬼，反映了古人对技术和超自然主题的思考。

词源学也能阐明近代历史。“Hello”一词在19世纪20年代才首次进入印刷文本，最初表示惊讶或引起注意。它作为一种问候语的兴起与电话有关——托马斯·爱迪生推广了它，早期电话用户需要一种清晰可闻的问候方式，取代了“how do you do”等旧式问候语。

归根结底，布林认为，词源学揭示了人类历史的相互关联性，挑战了将英语世界和波斯语世界等文化视为彼此割裂的现代叙事。它为人们提供了一条窥见已消失思想世界的途径，在那个世界里，诸如 *daeva* 的含义转变或“hello”的采用这类未受关注的变迁，都在自然而然中发生，为历史学家留下了可供发掘的痕迹。

---

## 37. 1970年代PROM芯片内部探秘：数据存于微型熔丝 (2019)

**原文标题**: Looking inside a 1970s PROM chip that stores data in microscopic fuses (2019)

**原文链接**: [https://www.righto.com/2019/07/looking-inside-1970s-prom-chip-that.html](https://www.righto.com/2019/07/looking-inside-1970s-prom-chip-that.html)

这篇文章考察了MMI 5300，一款20世纪70年代的PROM（可编程只读存储器）芯片，它以微小的镍铬保险丝存储1024位数据。与RAM不同，它通过烧断保险丝来一次性编程——完整的保险丝代表1，烧断的保险丝代表0。这款售价70美元的芯片由NPN晶体管构成，使用了33×33的二极管和保险丝阵列（多余的行/列用于辅助测试）。烧断的保险丝表现为约700纳米宽的微小裂缝，而非气化。

该芯片存储256个4位字。寻址采用两级结构：通过32个与非门（使用多发射极晶体管）进行列选择，然后多路复用器根据地址位选择四位。编程过程涉及向编程引脚施加27伏电压，并施加定时高压脉冲来烧断特定保险丝，通常使用售价约6000美元的自动编程器。

测试很困难，因为保险丝只能烧断一次；多余的行和列使得验证地址解码器和编程特性成为可能。芯片上还包含未使用的晶体管，因为同一硅片布局服务于多种芯片变体（例如，开集电极与三态输出），仅金属布线不同。

文章指出，PROM后来被EPROM、EEPROM和闪存所取代。如今一个128GB的闪存盘售价不到20美元，其存储容量是6300 PROM的十亿倍，且可重复写入。

---

## 38. LLMs奖励专业知识

**原文标题**: LLMs reward expertise

**原文链接**: [https://www.seangoedecke.com/llms-reward-expertise/](https://www.seangoedecke.com/llms-reward-expertise/)

文章认为，领域专长是从大语言模型获得高质量结果的最重要因素，这与“提示技巧无关紧要，因为每个人都使用相同的模型”这一观点相反。

关键例证：数学家陶哲轩与ChatGPT就雅可比猜想反例进行的对话。陶哲轩之所以能比普通用户获得好得多的结果，是因为他理解数学。他的提示简短直接；他传递出专业信号，使模型以“数学家模式”回应。他会在不直接反驳的情况下质疑错误输出，自行做出跳跃性推理，并且很少采纳模型的建议。

作者指出，没有真正的领域知识，仅仅模仿陶哲轩的风格是行不通的。关键在于对主题有足够的理解，能从模型的回应中提取相关想法、提出替代方案，并注意到“看起来不对劲”的地方。

作者将此应用于软件领域：了解自己的代码库能让你更深入地使用大语言模型，提出更好的问题，并引导它走向更简单或更熟悉的解决方案。系统设计问题由具体细节主导，而非通用原则。

如果你缺乏领域知识，大语言模型仍能帮你获得一些东西——这没问题。但有了专业知识，你能提取出多得多的价值。人类反而成为瓶颈，而非模型，因为困难之处在于精确传达想要的解决方案。即使模型不断改进，人类专业知识在提取“已在模型中”的信息方面仍然很有价值。

这篇帖子还提到了Hacker News上的反应：一些人用轶事表示赞同；另一些人则持怀疑态度，因为这种观点让读者相信他们仍有价值。作者还反驳说，OpenAI的数学成果仍然需要专业数学家来检查和筛选发现。

---

## 39. 大多数科技革命让员工的工作变得更糟

**原文标题**: Most tech revolutions made work worse for employees

**原文链接**: [https://www.thisandthat.chat/blog/most-tech-revolutions-made-work-worse-for-employees/](https://www.thisandthat.chat/blog/most-tech-revolutions-made-work-worse-for-employees/)

大多数科技革命都让员工的工作变得更糟，杰夫·雷纳认为，但人工智能可能不同。个人电脑、互联网和智能手机消除了支持性岗位并加快了工作节奏，让公司能够在员工更努力工作的同时要求更多产出。然而，人工智能不仅加速事情——它还能自己完成部分工作，例如起草电子邮件或生成报价。

目前的迹象令人担忧：人工智能正在加剧工作强度，模糊角色边界，并让人们去接手那些曾经委派出去的任务。但雷纳将此视为重大新技术出现后的“重组阶段”，经济学家称之为生产率J曲线。真正的考验是，节省下来的时间是被重新利用，还是被更多同样的工作填满。

麦肯锡预测，到2030年，人工智能将为知识工作者每天节省约30%的时间——大约2.5小时。雷纳建议，与其用这些时间来制造更多产品（这会淹没市场），不如将其投入创造力和协作。他引用了证据：散步能提升创造力，而贝尔实验室的长走廊促进了跨学科互动。开放式办公室试图重现这一点，但高强度的企业文化却削弱了它。

他以20世纪90年代的桌面出版为例。许多人担心它会摧毁印刷业的工作，但尽管它消除了机械式的排版，却提高了质量门槛，并增加了对熟练平面设计师的需求。类似地，人工智能可能会让写作或其他任务商品化，但品味和判断力仍然至关重要——例如，选择一个引人注目的主题。

最终，雷纳认为，人工智能可以通过释放时间用于深思熟虑的协作工作，从而使公司和员工双方受益。他开玩笑说，即使做不到这一点，至少我们也会看到更好的消声器店广告。

---

## 40. RCade：配备CI/CD部署、定制CRT显卡的街机柜 [视频]

**原文标题**: RCade: The Arcade Cabinet with CI/CD Deployment, Custom Graphics Card for CRT [video]

**原文链接**: [https://www.youtube.com/watch?v=W-OpIbLUOU0](https://www.youtube.com/watch?v=W-OpIbLUOU0)

您提供的文本并不是实际的RCade文章——那是YouTube的标准页脚/法律免责声明（版权、联系信息、托管方详情以及商家免责声明）。

我无法准确总结RCade文章，因为其正文/内容未被包含在内。仅根据标题来看，这似乎是一段关于制作街机机柜的视频，涉及用于软件更新的CI/CD部署，以及一款专为CRT显示器输出而设计的定制显卡。

如果您粘贴真实文章文本，我很乐意为您总结。

---

