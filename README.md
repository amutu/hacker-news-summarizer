# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-30.md)

*最后自动更新时间: 2026-06-30 20:32:54*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 2 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 3 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 4 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 5 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 6 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 7 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 8 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 9 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 10 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 11 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 12 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 13 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 14 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 15 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 16 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 17 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 18 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 19 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 20 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 21 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 22 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 23 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 24 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 25 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 26 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 27 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 28 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 29 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 30 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 31 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 32 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 33 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 34 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 35 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 36 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 37 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 38 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 39 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 40 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 41 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 42 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 43 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 44 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 45 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 46 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 47 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 48 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 49 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 50 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 51 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 52 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 53 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 54 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 55 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 56 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 57 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 58 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 59 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 60 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 61 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 62 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 63 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 64 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 65 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 66 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 67 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 68 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 69 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 70 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 71 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 72 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 73 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 74 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 75 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 76 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 77 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 78 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 79 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 80 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 81 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 82 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 83 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 84 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 85 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 86 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 87 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 88 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 89 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 90 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 91 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 92 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 93 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 94 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 95 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 96 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 97 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 98 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 99 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 100 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 101 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 102 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 103 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 104 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 105 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 106 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 107 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 108 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 109 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 110 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 111 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 112 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 113 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 114 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 115 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 116 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 117 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 118 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 119 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 120 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 121 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 122 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 123 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 124 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 125 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 126 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 127 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 128 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 129 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 130 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 131 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 132 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 133 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 134 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 135 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 136 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 137 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 138 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 139 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 140 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 141 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 142 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 143 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 144 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 145 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 146 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 147 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 148 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 149 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 150 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 151 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 152 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 153 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 154 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 155 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 156 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 157 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 158 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 159 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 160 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 161 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 162 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 163 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 164 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 165 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 166 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 167 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 168 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 169 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 170 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 171 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 172 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 173 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 174 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 175 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 176 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 177 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 178 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 179 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 180 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 181 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 182 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 183 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 184 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 185 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 186 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 187 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 188 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 189 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 190 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 191 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 192 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 193 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 194 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 195 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 196 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 197 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 198 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 199 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 200 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 201 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 202 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 203 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 204 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 205 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 206 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 207 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 208 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 209 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 210 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 211 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 212 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 213 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 214 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 215 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 216 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 217 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 218 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 219 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 220 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 221 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 222 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 223 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 224 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 225 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 226 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 227 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 228 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 229 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 230 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 231 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 232 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 233 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 234 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 235 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 236 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 237 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 238 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 239 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 240 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 241 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 242 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 243 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 244 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 245 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 246 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 247 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 248 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 249 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 250 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 251 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 252 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 253 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 254 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 255 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 256 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 257 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 258 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 259 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 260 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 261 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 262 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 263 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 264 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 265 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 266 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 267 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 268 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 269 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 270 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 271 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 272 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 273 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 274 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 275 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 276 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 277 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 278 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 279 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 280 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 281 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 282 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 283 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 284 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 285 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 286 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 287 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 288 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 289 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 290 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 291 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 292 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 293 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 294 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 295 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 296 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 297 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 298 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 299 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 300 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 301 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 302 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 303 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 304 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 305 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 306 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 307 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 308 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 309 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 310 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 311 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 312 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 313 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 314 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 315 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 316 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 317 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 318 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 319 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 320 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 321 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 322 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 323 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 324 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 325 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 326 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 327 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 328 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 329 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 330 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 331 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 332 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 333 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 334 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 335 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 336 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 337 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 338 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 339 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 340 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 341 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 342 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 343 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 344 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 345 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 346 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 347 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 348 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 349 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 350 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 351 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 352 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 353 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 354 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 355 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 356 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 357 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 358 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 359 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 360 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 361 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 362 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 363 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 364 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 365 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 366 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 367 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 368 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 369 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 370 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 371 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 372 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 373 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 374 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 375 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 376 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 377 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 378 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 379 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 380 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 381 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 382 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 383 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 384 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 385 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 386 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 387 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 388 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 389 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 390 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 391 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 392 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 393 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 394 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 395 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 396 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 397 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 398 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 399 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 400 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 401 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 402 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 403 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 404 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 405 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 406 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 407 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 408 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 409 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 410 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 411 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 412 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 413 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 414 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 415 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 416 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 417 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 418 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 419 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 420 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 421 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 422 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 423 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 424 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 425 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 426 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 427 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 428 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 429 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 430 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 431 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 432 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 433 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 434 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 435 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 436 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 437 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 438 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 439 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 440 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 441 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 442 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 443 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 444 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 445 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 446 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 447 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 448 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 449 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 450 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 451 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 452 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 453 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 454 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 455 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 456 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 457 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 458 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 459 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 460 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 461 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 462 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 463 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 464 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 465 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
