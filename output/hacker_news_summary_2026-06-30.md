# Hacker News 热门文章摘要 (2026-06-30)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Claude Sonnet 5

**原文标题**: Claude Sonnet 5

**原文链接**: [https://www.anthropic.com/news/claude-sonnet-5](https://www.anthropic.com/news/claude-sonnet-5)

以下是文章的简要总结：

Anthropic 发布了 **Claude Sonnet 5**，这是其最具代理能力的 Sonnet 模型，专为自主编程、工具使用和知识工作设计。它显著缩小了与更昂贵的 Opus 4.8 之间的性能差距，同时价格要低得多。

**关键细节：**
- **性能：** 在推理、工具使用和编程方面，较 Sonnet 4.6 有大幅提升。它能自主处理多步骤任务，通常能完成之前模型无法进行的复杂工作流程。
- **定价：** 截至 2026 年 8 月 31 日的入门价格为：**每百万输入令牌 2 美元**，**每百万输出令牌 10 美元**。之后的标准价格为：**每百万输入 3 美元**，**每百万输出 15 美元**。
- **可用性：** 免费版/专业版计划的默认模型；Max、团队和企业版用户可用，也可通过 Claude API 和 Claude Code 使用。
- **安全性：** 相比 Sonnet 4.6，不良行为发生率更低，特别是在拒绝恶意请求和抵抗劫持方面。其网络安全利用能力远弱于 Opus 模型，并默认启用了网络安全防护。
- **反馈：** 早期测试者报告称，它能干净利落地完成多步骤修改，彻底进行调试（例如，主动编写复现测试），并在改造项目、法律研究和自动化方面以高效成本提供强劲性能。

---

## 2. Claude Code正在通过隐写技术标记请求

**原文标题**: Claude Code is steganographically marking requests

**原文链接**: [https://thereallo.dev/blog/claude-code-prompt-steganography](https://thereallo.dev/blog/claude-code-prompt-steganography)

文章披露，Claude Code（版本2.1.196）包含隐写代码，会根据用户环境静默修改系统提示中的日期字符串。该二进制程序会检查两项内容：系统时区（将亚洲/上海和亚洲/乌鲁木齐的日期分隔符从“-”改为“/”），以及API基础URL的主机名（将“Today's”中的撇号替换为不同的Unicode字符，如’或ʽ）。

这些修改将用户分为四类：普通用户、已知域名（Anthropic）、实验室关键词（如DeepSeek、智谱等AI公司），或同时符合后两类。域名和关键词列表通过base64编码及密钥91的XOR解密隐藏，包含数千个域名，涉及中国科技公司、代理服务及AI转售网关。

该功能仅在`ANTHROPIC_BASE_URL`设置为非Anthropic端点时激活。作者推测Anthropic借此检测API转售商、未授权网关及模型蒸馏攻击。然而，作者批评了这种隐蔽实现，认为此类分类应透明化——在发布说明中记录，并以明确的遥测数据发送，而非隐藏在提示的标点符号中。该功能主要影响进行合法但非常规路由的开发者，而老练的攻击者则可轻松绕过。作者总结道，对开发者工具的信任源自无趣而透明的行为。

---

## 3. 克劳德科学

**原文标题**: Claude Science

**原文链接**: [https://claude.com/product/claude-science](https://claude.com/product/claude-science)

**Claude Science** 是一款全新的公开测试版应用（而非新模型），旨在为生命科学和硬科学提供严谨、可复现的研究环境。它支持macOS和Linux系统，将科学工具、数据库与计算基础设施集成于同一工作区。

**核心功能：**
- **可复现成果：** 每张图表、表格及笔记本均附带生成时所使用的精确代码、环境与对话记录，确保全程可追溯。
- **原生科学渲染器：** 无需额外安装即可查看蛋白质、基因组轨迹、化学结构及PDF文件。
- **自纠错结果：** 后台审核器自动标记错误引用、不可溯源的数字以及不匹配的图表。
- **计算管理：** 支持在笔记本电脑、集群（SSH/Slurm）、GPU或Modal上运行，具备持久化的Python/R内核。
- **领域就绪：** 预配置适用于基因组学、单细胞、蛋白质组学、结构生物学、化学信息学等领域；可连接60余个科学数据库。
- **可扩展性：** 可将工作流保存为可复用的技能，通过连接器对接内部工具，并集成NVIDIA BioNeMo模型（Evo 2、Boltz-2、OpenFold3）。

**可用性：** Pro、Max、Team及Enterprise计划均开放Beta测试。学术/非营利实验室可享受折扣版Team计划。应用在本地基础设施上运行，确保数据隐私。连接器可与现有电子实验室笔记本、脚本及内部API协同工作。

---

## 4. Nano Banana 2 Lite 轻量版

**原文标题**: Nano Banana 2 Lite

**原文链接**: [https://deepmind.google/models/gemini-image/flash-lite/](https://deepmind.google/models/gemini-image/flash-lite/)

所提供的文本是一段促销摘要而非完整文章。它介绍了一款名为**Nano Banana 2 Lite**的产品，突出其核心特性：**闪电般的低延迟**。内容强调，这种低延迟使用户能够**无延迟地探索、迭代并保持工作流程的连续性**。核心要点在于，该设备旨在显著加速用户交互，从而实现更快、更高效的创意或技术流程。

---

## 5. 我构建了一款毫米波材料分类雷达

**原文标题**: I built a mmWave material classification radar

**原文链接**: [https://gauthier-lechevalier.com/radar](https://gauthier-lechevalier.com/radar)

**概要：**作者自制了一款毫米波雷达原型，用于分类建筑材料，旨在检测墙体中的石棉，作为实验室分析（每样本60美元对比1美元成本）的更廉价替代方案。项目采用TI IWRL6432雷达与ESP32，开发了数字信号处理链路（FMCW线性调频脉冲、距离FFT、Capon波束成形），生成每个距离、每个角度的密度谱——这是一种电磁指纹，输入卷积神经网络进行材料分类。项目通过openEMS进行射频仿真（使用时域有限差分法、高斯脉冲获取传递函数），对木材、石材、塑料和铝等多种材料实现了多层分类精度。然而，因缺乏资金，初创公司失败：客户要求在签署意向书前获得监管认证和实体产品，尽管已具备可行的概念验证。关键教训：在构建硬件前通过预购验证需求；用开发板制作原型；围绕电子器件设计外壳；使产品支持OTA升级；尽可能避免射频复杂性。作者总结，硬件初创企业极其艰难，尤其当缺乏早期客户承诺时。

---

## 6. 矩阵URI：蒂姆·伯纳斯-李提出的从未投入使用的URL语法（1996）

**原文标题**: Matrix URIs, a URL syntax from Tim Berners-Lee that never shipped (1996)

**原文链接**: [https://www.w3.org/DesignIssues/MatrixURIs.html](https://www.w3.org/DesignIssues/MatrixURIs.html)

以下是文章摘要：

在这份1996年的设计笔记（后经更新）中，蒂姆·伯纳斯-李提出了“矩阵URI”作为URL的语法扩展。其核心思想是允许使用分号（`;`）将多个参数附加到URL的路径段中，形成名称与值的“矩阵”。例如，像`http://example.com/dir;size=large;color=red/file.html`这样的URL，表示一个路径段（`dir`）附带两个独立参数（`size`和`color`）。

伯纳斯-李将此与普遍使用查询字符串（`?`）传递所有参数的做法进行了对比。他认为矩阵参数更适合表示特定路径段的属性（如文件尺寸或格式选项），而非全局应用的输入。这种语法设计具有层次性、紧凑且可读性更强，允许客户端忽略未知参数而不破坏URL结构。

“矩阵”概念从未被正式采纳为标准——蒂姆·伯纳斯-李在文档元数据中注明其“从未落地”。然而，这一思想确实影响了后来的技术，尤其是HTTP内容协商（如`Accept`头）和某些Java Servlet API。现代URL则主要依赖查询字符串和路径变量。这篇文章仍是早期万维网架构思考的历史见证，展示了一种优先考虑语义清晰性而非简洁性的替代设计方案。

---

## 7. 拥有37个数据中心的县要求学校“节约用电”

**原文标题**: County with 37 Data Centers Asks Schools to 'Conserve Electricity'

**原文链接**: [https://www.404media.co/henrico-virginia-datacenter-energy-cost-email/](https://www.404media.co/henrico-virginia-datacenter-energy-cost-email/)

**概要：**  
弗吉尼亚州亨里科县（Henrico County）是里士满附近一个拥有超过35万人口的社区，该县将于7月1日起面临25%的电价上涨，预计下一财年电费将增加约500万美元。县长约翰·维索尔卡斯（John Vithoulkas）通过电子邮件要求员工在政府及学校设施中节约用电，并警告后续电价可能进一步上调。值得注意的是，亨里科县拥有37个数据中心，另有17个数据中心（包括将南北战争战场土地改建为数据中心）正在规划中——由于靠近华盛顿特区且土地资源充足，该县已成为主要的数据中心枢纽。Meta公司于2017年在此建设了一个数据中心。文章揭示了该县作为数据中心枢纽（对电网造成巨大压力）与公共建筑节约用电需求之间的紧张关系。全文内容需付费阅读。

---

## 8. Knoppix

**原文标题**: Knoppix

**原文链接**: [https://www.knopper.net/knoppix/index-en.html](https://www.knopper.net/knoppix/index-en.html)

**KNOPPIX 简介**

KNOPPIX 是一款可直接从 CD、DVD 或 U 盘启动运行的 Live Linux 系统，无需安装至硬盘。该系统具备自动硬件检测功能，支持各类显卡、声卡、SCSI/USB 设备及其他外设。

系统集成了丰富的 GNU/Linux 软件包。凭借即时解压技术，标准 CD 可容纳高达 2GB 的可执行软件，而 "Maxi" 版 DVD 更可支持超过 9GB 容量。KNOPPIX 用途广泛：可作为高效的桌面 Linux 系统、教学光盘、系统救援工具或商业软件演示平台。

文章同时预告了即将于 2025 年 3 月 22-23 日举行的开姆尼茨 Linux 日活动，届时将有一场关于"生成式 AI 在课堂与考试中的机遇与风险"的德语讲座。本站由 Knopper.Net 管理，对外部内容不承担责任。

---

## 9. 《常见妄想与群体狂热回忆录》（1852）

**原文标题**: Memoirs of Extraordinary Popular Delusions and the Madness of Crowds (1852)

**原文链接**: [https://www.gutenberg.org/ebooks/24518](https://www.gutenberg.org/ebooks/24518)

本文介绍了查尔斯·麦凯的《非同寻常的大众幻想与群体性疯狂》（初版于1841年），这是一部关于群体心理学的早期著作，可在古登堡计划免费获取。该书共计三卷，探讨了人类易受集体狂热影响的特性，涵盖金融泡沫（如荷兰郁金香狂热和南海泡沫）、宗教十字军、巫术审判、炼金术及其他愚行。麦凯运用生动的轶事揭露流行谬误，分析政治与时尚（如胡须风格）如何影响群体。他对经济泡沫的洞见至今仍具影响力，被认为曾帮助金融家预测市场崩盘。该电子书提供多种格式下载（EPUB、Kindle、纯文本），在美国属于公共领域。读者还下载了关于巫术、心理学、历史及经济学的相关著作。摘要末尾附有技术细节：作者查尔斯·麦凯（1814–1889），阅读难度为八至九年级水平，主题分类涵盖社会心理学、谬误及常见认知偏见。

---

## 10. 不要将大门设为可选，而应使其灵活

**原文标题**: Don't Make Gates Optional, Make Them Flexible

**原文链接**: [https://wakamoleguy.com/p/flexible-gates](https://wakamoleguy.com/p/flexible-gates)

**摘要：**

本文主张，审批检查点（关卡）应设为强制但形式灵活，而非可选但形式化。可选但形式化的关卡会迫使团队成员做出风险较高的元决策：若误判项目规模较小而跳过关卡，可能招致反对；若选择稳妥，则会在不必要的正式流程上浪费时间。

解决方案是：将关卡设为强制，同时允许审批形式灵活变化。例如，产品负责人可要求所有路线图项目均需审批，但针对小型变更仅需快速私信确认，而大型高风险项目则需提交完整商业案例文档。这样可将风险从寻求审批者身上转移：他们能快速推进，同时知晓把关者会拦截任何需深入讨论的事项。灵活性可防止流程瓶颈，并将正式精力保留给高风险决策。

文章以代码审查为类比：所有拉取请求均需审批，但审查深度各不相同。简单漏洞修复可快速标注“LGTM”，复杂变更则需详细讨论。核心结论是：当正式检查点显得过于沉重时，团队应调整*形式性*（审批形式），而非使其变为可选。一个强制但轻量级的检查点，能比模棱两可、规避风险的环境驱动更快速、更自信的前进。

---

## 11. 开源低科技

**原文标题**: Open Source Low Tech

**原文链接**: [https://opensourcelowtech.org/](https://opensourcelowtech.org/)

本文介绍了丹尼尔·康奈尔的工作，他致力于开发**开源、低技术解决方案**，这些方案可利用回收材料和简单工具制作。其核心使命是通过让任何人都能自行搭建**能源、食物、清洁水源及通信**所需的基础设施，实现全球范围内的自给自足。

康奈尔为多个项目提供了免费且无许可限制的设计方案与教程，包括**30美元风力发电机、太阳能灶、火箭炕、太阳能热水板以及一款WiFi天线**。他的作品曾获得半岛电视台、《卫报》及《Makezine》等媒体关注。

该项目**不接受外部资助**，完全依赖公众支持。康奈尔邀请用户加入Facebook群组进行提问，并分享自己的制作成果。

---

## 12. 从零开始构建自定义八旋翼飞行器：无硬件经验指南

**原文标题**: Building a custom octocopter from scratch with no prior hardware experience

**原文链接**: [https://karolina.mgdubiel.com/drone/](https://karolina.mgdubiel.com/drone/)

**摘要：**

作者详细描述了训练纯模拟八旋翼策略以应对电机故障的艰难过程，尽管没有硬件经验。在初始失败后，他们记录了试错时间线，识别出两个关键错误。

第一个是"**动作卡滞**"，原因是环境将电机命令限制在[0,1]区间，但策略的梯度基于未限制的值计算。一旦命令偏离限制范围，无法通过修正梯度修复，导致偏斜坠毁。解决方案：通过tanh函数将动作作为悬停油门附近的残差进行压缩，防止饱和，使未训练策略的存活步数从7步提升至205步。

第二个是"**存活无回报**"：悬停时+0.1的存活奖励被-0.1的高度惩罚完全抵消，使得"悬停后坠毁"与"立即坠毁"产生相同回报。将存活奖励增至+1.0后，策略获得了稳定飞行的动力。

通过这些修复，包含4.34万个参数的MLP在约950万步后实现了悬停、单电机及双电机故障下的100%存活率。值得注意的是，它还能泛化至未见过的三电机故障场景，在物理上无法恢复的情况下坚持飞行7.2秒。下一步将开发模拟到现实的迁移策略。

---

## 13. 报告称，加密公司迄今已为2026年美国大选投入1.89亿美元

**原文标题**: Crypto firms have spent $189M so far on 2026 US election, report says

**原文链接**: [https://www.reuters.com/world/crypto-firms-have-spent-189-million-so-far-2026-us-election-report-says-2026-06-30/](https://www.reuters.com/world/crypto-firms-have-spent-189-million-so-far-2026-us-election-report-says-2026-06-30/)

无法访问该文章链接。该链接引用了一个未来的日期（2026年6月30日），而截至目前，路透社上并未存在此文章。如果您有其他或正确的链接，请提供。

---

## 14. Qwen 3.6 27B 是本地开发的理想选择

**原文标题**: Qwen 3.6 27B is the sweet spot for local development

**原文链接**: [https://quesma.com/blog/qwen-36-is-awesome/](https://quesma.com/blog/qwen-36-is-awesome/)

**摘要：**

Piotr Migdał认为，Qwen 3.6 27B是理想的本地区开发模型，称其为首个真正令人印象深刻的本地可运行通用智能。他重点介绍了两个版本：速度更快的混合专家模型Qwen 3.6 35B A3B，以及速度较慢但性能更强的稠密模型Qwen 3.6 27B，后者正是他的推荐选择。

测试表明，该模型在创意任务（如关于量子物理的诗歌、十六进制扫雷代码）和实际工作（通过单条提示词生成响应式登录页面）中均表现出色。在Macbook Max M5上，其速度可达每秒32个令牌（使用多令牌预测MTP），与前沿API水平相当。

文章提供了使用llama.cpp的实用部署指南，包括来自Hugging Face的量化配置（推荐8位Q8_0）以及OpenCode的设置。基准测试对比显示，Qwen 3.6 27B的性能大致相当于2025年中期的GPT-5/Claude Sonnet 4.5水平，显著超越热门的Gemma 4 31B。

Migdał指出，虽然当前专有模型有补贴支持，但本地模型具备隐私优势、不会被下架，且可进行微调。他预测，未来通过工具调用将智能与事实性知识分离，更智能的模型将运行在本地设备上。

---

## 15. 《异星工厂》2.1实验版发布

**原文标题**: Factorio 2.1 Experimental Release

**原文链接**: [https://factorio.com/blog/post/fff-444](https://factorio.com/blog/post/fff-444)

本文宣布了**《异星工厂》2.1实验性更新**的发布。由于更新日志过长，超出了Reddit四万字的限制。对于选择参与测试的玩家，关键信息如下：

- **兼容性**：2.0版本的存档可以加载，但可能导致工厂设计失效。蓝图和存档无法降回2.0版本。
- **风险**：模组可能尚未更新，且预计还会有进一步的游戏性改动。建议做好备份。
- **玩家角色**：玩家将承担质量检验工作，欢迎在论坛反馈漏洞与建议。可通过Crowdin协助翻译。

**参与方法**：全新下载、网站版本设置，或通过Steam（属性 > 测试版）。

**系统需求**：Linux最低要求GLIBC提升至2.36；macOS最低要求提升至10.13（High Sierra）。无头版与Steam版不受影响。

**开发节奏**：团队将持续修复漏洞并打磨游戏，但经过数月的紧张工作后将放缓节奏，并安排休假。更新将深思熟虑而非仓促推出。尽管2.1是最后一次重大更新，团队仍充满热情。

**周五趣闻**：博客专栏将继续更新，但频率降低且不再固定时间发布。

---

## 16. Zluda 6 发布（在非NVIDIA GPU上运行未经修改的CUDA应用程序）

**原文标题**: Zluda 6 release (run unmodified CUDA applications on non-Nvidia GPUs)

**原文链接**: [https://vosen.github.io/ZLUDA/blog/zluda-update-q1q2-2026/](https://vosen.github.io/ZLUDA/blog/zluda-update-q1q2-2026/)

**ZLUDA 6 版本发布总结**

ZLUDA 6 使未经修改的 CUDA 应用程序能够在非 NVIDIA GPU 上运行，其重大更新来自 2026 年第一季度至第二季度。主要新功能包括：

- **PhysX（预阿尔法版）：** 增加了对 32 位 PhysX 的支持，可在 AMD GPU 上为《黑手党 II》（2010）等老游戏带来更高帧率和视觉效果（如碎片、火焰）。流体模拟可能存在异常，与 Steam 游戏的集成仍不完善。
- **纹理支持：** 虽基础但足以支撑 PhysX 与 Blender，使 Blender 能够在 ZLUDA 上运行。
- **改进的 Windows 支持：** 更好地处理缺失的 ROCm 库，并通过 `zluda.exe` 自动加载性能库。
- **更好的机器学习支持：** 为 PyTorch 提供了大量补丁，包括新指令、编译器错误修复以及性能库改进。

**项目方向变更：** ZLUDA 不再获得商业资助，已回归开发者周末副业项目。优先级现聚焦于开发者的个人兴趣，这解释了纹理、PhysX 及 Windows 支持被纳入的原因。更新频率将降低。版本 6 与预览版 6-preview.79 完全相同。

---

## 17. RF破解我云控制的吊扇

**原文标题**: RF Hacking My Cloud-Controlled Ceiling Fan

**原文链接**: [https://samwilkinson.io/posts/2026-06-24-rf-hacking-dreo](https://samwilkinson.io/posts/2026-06-24-rf-hacking-dreo)

**摘要**

作者为Home Assistant实现了对Dreo CLF513S吊扇的本地控制，避免依赖云服务。该风扇遥控器采用433.92 MHz射频，使用ASK/OOK调制方式，通过RTL-SDR进行解码。命令包含前导码、同步码和13位有效载荷（如风扇开关），每个比特以短/长OOK脉冲（每脉冲300微秒）进行编码。

为了重放命令，作者将ESP32-C6与RFM69HCW收发器连接，在原始发送模式下根据解码时序手动切换数据引脚。调试过程需要使用RTL-SDR验证信号准确性，时序控制至关重要。

在Home Assistant集成方面，采用MQTT协议：ESP32订阅每个命令对应的主题，更新内部状态（持久化存储），并在首次启动时采用默认状态。状态漂移（如由墙壁电源通断引起）很少发生，可通过原装遥控器修正。

最终成果：一个紧凑可靠的发射器，无需依赖云服务即可通过Siri实现日常语音控制。代码和详细信息见项目的GitHub仓库。

---

## 18. LongCat-2.0，一个总参数量1.6T、激活参数量48B的大规模MoE模型。

**原文标题**: LongCat-2.0, a large-scale MoE model with 1.6T total and 48B Active

**原文链接**: [https://longcat.chat/blog/longcat-2.0/](https://longcat.chat/blog/longcat-2.0/)

**LongCat-2.0 概述**

LongCat-2.0 是一个大规模混合专家（MoE）模型，总参数量达1.6万亿。尽管规模庞大，但通过稀疏激活机制，每次推理仅需激活480亿参数，实现了高效运行。这一设计使模型在利用海量知识容量的同时，保持了可控的计算成本。该模型被视为AI规模化发展的重要进步，在性能与运营可行性之间取得了平衡。

---

## 19. 数学：内容、方法与意义

**原文标题**: Mathematics: Its Content, Methods and Meaning

**原文链接**: [https://old.maa.org/press/maa-reviews/mathematics-its-content-methods-and-meaning](https://old.maa.org/press/maa-reviews/mathematics-its-content-methods-and-meaning)

根据所提供的内容（似乎是标题为《数学：内容、方法与意义》的网站或资源的导航页眉），主要内容如下：

1.  **资源标题：** 主题是一部名为《数学：内容、方法与意义》的著作或网站。
2.  **导航结构：** 该页面提供了标准网站框架，包含指向**首页**、**数学职业**板块、**联系我们**信息以及**登录**入口的链接。

关键信息表明，这很可能是一个专注于数学领域的在线平台，据推测可查阅上述文本或相关资源。包含“数学职业”页面和“登录”功能，说明它既是一个信息平台，也可能是一个会员制或教育平台。该导航摘录中未提供关于数学本身的详细内容。

---

## 20. 最高法院维持对出生公民权的宽泛解释

**原文标题**: Supreme Court upholds broad conception of birthright citizenship

**原文链接**: [https://apnews.com/live/birthright-citizenship-decision-supreme-court-updates-06-30-2026](https://apnews.com/live/birthright-citizenship-decision-supreme-court-updates-06-30-2026)

美国最高法院维持了出生公民权的广义解释，否决了前总统特朗普提出的限制性主张。该裁决确认，任何在美国出生的人均有权获得公民身份，无论其父母的移民身份如何。这一判决实际上阻断了试图缩小第十四修正案公民权条款解释范围的尝试。来自美联社的这篇报道以实时更新的形式呈现了这一重大法律与政治进展，强调了最高法院在维护现行长期公民权法律框架中的作用。

---

## 21. .self：一个专为支持自主托管而设计的新顶级域名

**原文标题**: .self: A new top-level domain designed to support self-hosting

**原文链接**: [https://hccf.onmy.cloud/2026/06/21/reclaiming-our-digital-selves-hccfs-vision-for-a-human-centered-top-level-domain/](https://hccf.onmy.cloud/2026/06/21/reclaiming-our-digital-selves-hccfs-vision-for-a-human-centered-top-level-domain/)

**摘要：**人本计算基金会正发起一项活动，旨在获得名为 **.self** 的新通用顶级域（TLD），该域名旨在支持自主托管及符合伦理、以人为中心的技术。该基金会认为，当前互联网基础设施已被科技行业利用于数据提取与注意力操纵，而此项倡议正是为了抵制这一现状。作为ICANN申请者支持计划（ASP）的批准参与者，该基金会力求建立一种致力于用户控制与隐私的替代性网络架构。该愿景的完整概述可在宣传册（PDF）中下载。要点包括：将权力从大型企业重新平衡至个人、推广自主托管，以及培育更符合伦理的数字生态系统。

---

## 22. 释放图标

**原文标题**: Free the Icons

**原文链接**: [https://weblog.rogueamoeba.com/2026/06/26/free-the-icons/](https://weblog.rogueamoeba.com/2026/06/26/free-the-icons/)

**《解放图标》摘要**

本文批评苹果自macOS 26（塔霍湖）起强制所有第三方应用图标采用统一"圆角方形"设计、消除差异化形状的决策。作者保罗·卡法西斯认为，这对使用体验与创意而言皆是倒退。不符合规范的图标将被缩小并置入灰色"图标监狱"，迫使开发者放弃独特设计，屈从于单调统一。

卡法西斯指出，此前差异化形状能帮助用户快速区分应用，尤其对色觉障碍者或当多个图标颜色相近时（如Slack与照片）尤显重要。强制统一后，颜色成为主要区分依据，在许多场景下失效。

文章认可macOS 27（金门大桥）出现积极转变：苹果通过移除模糊的"液态玻璃"效果改进了自有图标。但核心问题仍在——禁止第三方图标使用异形设计。作者敦促苹果恢复应用图标形态各异的自由度，终结强制圆角方形的规定。他提到已提交该反馈（FB23388490），并呼吁苹果"解放图标"，以提升可用性与表现力。

---

## 23. 亚马逊卖家罕见揭露影子贿赂市场

**原文标题**: Amazon Seller Reveals Rare Glimpse of Shadow Bribery Market

**原文链接**: [https://www.bloomberg.com/news/articles/2026-06-24/inside-the-shadow-market-selling-access-to-amazon-employees](https://www.bloomberg.com/news/articles/2026-06-24/inside-the-shadow-market-selling-access-to-amazon-employees)

无法访问该文章链接。

---

## 24. Antares公司Mark-0反应堆实现临界状态

**原文标题**: Antares achieves criticality of Mark-0 reactor

**原文链接**: [https://antaresindustries.com/updates/antares-achieves-criticality](https://antaresindustries.com/updates/antares-achieves-criticality)

安塔瑞斯（Antares）是一家私营核能公司，该公司宣布其Mark-0微型反应堆于2026年6月4日在爱达荷国家实验室（INL）达到首次临界状态。这一里程碑使安塔瑞斯成为美国能源部（DOE）反应堆试点计划下首家使先进反应堆达到临界状态的私营企业，也是四十多年来美国首次由私营企业开发的非轻水反应堆实现这一目标。

此次示范是能源部、爱达荷国家实验室、BWX技术公司（BWXT）与美国陆军合作的成果。该反应堆使用由BWXT制造的TRISO核燃料，该燃料亦是在国防部"皮勒项目"（Project Pele）计划下开发的。该项目按照总统和能源部制定的雄心勃勃的时间表完成，为未来反应堆示范建立了可复制的许可审批路径。

安塔瑞斯首席执行官乔丹·布兰布尔强调公司对时间表的承诺：2026年实现临界状态，2027年发电，2028年为军事设施供电。Mark-0示范验证了关键反应堆物理特性、控制系统及供应链成熟度。该项目支持了陆军微型反应堆部署时间表，并符合第14301号行政命令。

这一成就被视为美国核能发展的历史性一步，能够为国防和商业应用提供经济可靠的电力。安塔瑞斯成立于2023年，已获得超过1.4亿美元资金支持，预计约一年后在同一设施实现发电，并于2028年前向军事基地部署反应堆。

---

## 25. 我的AArch64桌面实验的终结

**原文标题**: The end of my AArch64 desktop experiment

**原文链接**: [https://marcin.juszkiewicz.com.pl/2026/06/26/the-end-of-the-aarch64-desktop-experiment/](https://marcin.juszkiewicz.com.pl/2026/06/26/the-end-of-the-aarch64-desktop-experiment/)

**总结：**  
作者记录了将安培Altra Q80-30（80核）系统用作桌面电脑的11个月实验，最终以失败告终。主要问题包括：  

1. **PCIe 勘误**：Altra的PCIe控制器需要自定义内核补丁（PCIE65）才能兼容AMD显卡，导致每周需重新编译内核。  
2. **AMD显卡故障**：Linux 7.0之后，Radeon RX6700XT持续出现视频解码错误（如丢帧），疑似由污染内核引发。  
3. **Nvidia显卡限制**：将AMD显卡替换为RTX 2060后虽能配合Nvidia专用驱动运行，但Flatpak缺乏对AArch64架构的Nvidia GL支持，导致FreeCAD和OrcaSlicer无法使用。  
4. **回归x86-64**：换回Ryzen 5 3600（6核）后，游戏、视频、3D打印工具及音乐播放功能全部恢复正常。Altra目前专用于RISC-V编译。  

**结论**：Altra虽拥有80核服务器级硬件，但因PCIe兼容性问题、显卡驱动不稳定以及AArch64软件支持薄弱，不适合桌面环境。作者表示，除非平台发生根本性变革，否则不会再进行此类实验。

---

## 26. 我正在制作一台太空军校生弹球机！[视频]

**原文标题**: I'm building a Space Cadet Pinball Machine! [video]

**原文链接**: [https://www.youtube.com/watch?v=lHQ8c8i42VE](https://www.youtube.com/watch?v=lHQ8c8i42VE)

根据所提供文本，该“文章”实际上是来自标题为 **“我正在打造一台太空学员弹球机！[视频]”** 的YouTube视频页面底部的法律和信息声明。

文本要点如下：

- **视频重点：** 创作者正在打造一台“太空学员弹球机”。
- **法律与公司信息：** 声明指出谷歌有限责任公司（由桑达尔·皮查伊领导）为平台提供方，总部地址位于加利福尼亚州山景城。
- **用户支持与举报：** 提供了免费支持热线电话以及用于支持服务和举报非法拍摄内容的电子邮件地址。
- **商业免责声明：** 明确说明YouTube视频中展示或标记的商品由独立商家销售。YouTube明确表示**不出售这些商品且不对此负责**，所有交易均需遵守商家自身条款。
- **平台政策：** 提及YouTube关于版权、新闻、隐私、条款、广告及开发者信息的标准政策。

总而言之，该文本并未描述弹球机本身的制作过程，而是作为标准的YouTube责任免责声明及企业公告附带在该视频下方。

---

## 27. Debian 中的 Xsnow "抗议软件"

**原文标题**: Xsnow "protestware" in Debian

**原文链接**: [https://lwn.net/SubscriberLink/1079385/3d7a57da58b41aa9/](https://lwn.net/SubscriberLink/1079385/3d7a57da58b41aa9/)

**摘要：**  
本文报道了 Debian 中 `xsnow` 软件包引发的一起争议。该程序可在 X11 桌面添加动画降雪和装饰，其中包含一个彩蛋：当语言设置为俄语（`"ru"`）时，乌克兰国旗出现的概率为 30%，而非通常的 2%。  

用户 Alexander Ivanov 向 Debian 开发列表投诉，认为此举违反了 Debian 自由软件指南（DFSG），尤其是非歧视条款。多位 Debian 开发者（Chris Hofstaedtler、Russ Allbery）澄清，DFSG 适用于许可证而非软件行为，因此并未违规。然而，Allbery 指出，基于语言环境的隐蔽欺骗性功能可能对 Debian 不利，值得提交错误报告。  

Ivanov 并未提交正式错误报告。软件包维护者 Willem Vermin 同时是 xsnow 的上游维护者，正是他引入了该变更。截至本文发布（2026 年 6 月 29 日），尚未采取任何行动。文章指出，尽管 Debian 维护者拥有广泛自主权，但软件包经过适当流程后仍可被修改或移除——这需要提交正式错误报告并建立项目共识，而非仅靠邮件列表投诉。

---

## 28. 安全内存上下文切换

**原文标题**: Memory Safe Context Switching

**原文链接**: [https://fil-c.org/context_switches](https://fil-c.org/context_switches)

**摘要：**  
本文阐释了 Fil-C 如何为 `setjmp`/`longjmp` 和 `ucontext` API 实现内存安全支持，从而防止传统 C 语言中常见的栈损坏和能力违规问题。  

**关键要点：**  
- **问题：** 误用这些 API（例如，在函数返回后调用 `longjmp`，或释放 `makecontext` 所使用的栈）会导致悬垂栈执行，从而引发崩溃或可被利用的漏洞。  
- **Fil-C 对 `setjmp`/`longjmp` 的处理方法：**  
  - `jmp_buf` 仅包含一个 Fil-C 代码无法访问的不透明指针（`zjmp_buf`）。  
  - 编译器仅允许直接调用 `setjmp`（不能通过函数指针），以保留其 `returns_twice` 属性，防止不安全的溢出槽位重用。  
  - 每个栈帧跟踪有效的 `zjmp_buf` 目标。仅当 `longjmp` 从 `setjmp` 所在帧的后裔帧调用时才会执行，否则引发恐慌，从而保证栈的完整性。  
  - `zjmp_buf` 还会保存 GC 根状态，确保恢复后的内存管理正确无误。  
- **对 `ucontext` API 的处理：**  
  - Fil-C 禁止如释放栈后切换到该栈，或交换到当前正在执行的上下文等误用行为。此类错误会引发恐慌，而非静默的栈损坏。  
- **设计理念：** 所有安全用法均被允许；所有危险用法（悬垂栈、伪造缓冲区）要么是编译时错误，要么是运行时恐慌。这既消除了可被利用的漏洞，又保留了对协程、纤程和信号处理程序的功能支持。

---

## 29. 美国劳动收入份额处于战后最低水平

**原文标题**: The labor share of income in the US is at its lowest post-war level

**原文链接**: [https://libertystreeteconomics.newyorkfed.org/2026/06/the-post-covid-decline-in-the-labor-share/](https://libertystreeteconomics.newyorkfed.org/2026/06/the-post-covid-decline-in-the-labor-share/)

**摘要：**

本文探讨了二战后美国劳动收入占比处于历史低位的问题，并提及2000年和2008年经济衰退后出现的“无就业复苏”现象——与以往周期相比，这两次复苏中就业反弹力度明显偏弱。本文提出的核心问题是：这些无就业复苏是否解释了国民收入中劳动份额（即经济产出中用于支付工资和薪金而非流向资本所有者的比例）持续下滑的原因。

文章指出，在此期间就业复苏乏力，可能阻碍了工资水平随着生产率和企业利润同步增长，从而使劳动收入份额持续受到压制。尽管本文在节选部分未详尽列举所有原因，但仍将无就业复苏现象视为劳动收入份额结构性下降的潜在关键因素。

---

## 30. 适用于世嘉MegaDrive的Linux系统

**原文标题**: Linux for the Sega MegaDrive

**原文链接**: [https://github.com/LinuxMD/linuxmd](https://github.com/LinuxMD/linuxmd)

本文介绍了一个在Sega MegaDrive（Genesis）主机上运行Linux的项目，通过使用Mega EverDrive卡带扩展硬件能力。这并非玩笑，需要一台真正的MegaDrive主机、Mega EverDrive Core或Pro卡带、一根USB线缆以及时间。EverDrive提供4MB内存、文件加载协议和定时器寄存器，这些是标准模拟器无法复制的。项目附带一个QEMU分支用于模拟，但运行速度过快。

构建步骤包括编译工具链、U-Boot、medtool（用于串口终端交互）、Linux内核以及根文件系统（erofs）。启动说明要求将U-Boot、内核和根文件系统复制到SD卡，启动MegaDrive，连接USB至PC，然后使用medtool和minicom进行终端访问。启动过程先加载U-Boot，再加载内核，内核输出同时显示在串口和视频上。由于12MHz的68000CPU以及EverDrive慢速FIFO交互，系统运行极度缓慢，但包含一个炫丽的视频终端，带有绿色心跳指示器和红色磁盘活动指示灯。性能方面需要进一步优化。

---

