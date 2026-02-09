# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-09.md)

*最后自动更新时间: 2026-02-09 20:36:40*
## 1. 同一天内GitHub再次发生服务中断。

**原文标题**: Another GitHub outage in the same day

**原文链接**: [https://www.githubstatus.com/incidents/lcw3tg2f6zsd](https://www.githubstatus.com/incidents/lcw3tg2f6zsd)

**摘要：**

2026年2月9日，GitHub发生了一次重大的多服务中断事件。事故始于协调世界时（UTC）约19:01，最初报告显示Actions、Git操作和Issues等服务性能下降。

此次故障迅速扩大，影响了包括Webhooks、Pull Requests、Packages、Pages和Codespaces在内的广泛核心服务。客户在这些平台上经历了请求缓慢或失败、Actions作业延迟以及整体性能下降的问题。

GitHub工程团队在协调世界时约19:29采取了缓解措施，此后服务开始出现恢复迹象。至协调世界时20:08，所有服务已恢复正常处理，事故于协调世界时20:09正式标记为已解决。

初步状态更新中未披露此次中断的根本原因，GitHub表示后续将分享详细分析。此次事件凸显了GitHub服务之间的高度互联性，一个领域的问题可能迅速波及众多其他服务。

---

## 2. 将沃尔玛3.88美元的模拟时钟改装成基于ESP8266的Wi-Fi时钟

**原文标题**: Converting a $3.88 analog clock from Walmart into a ESP8266-based Wi-Fi clock

**原文链接**: [https://github.com/jim11662418/ESP8266_WiFi_Analog_Clock](https://github.com/jim11662418/ESP8266_WiFi_Analog_Clock)

本项目详细介绍了如何将一台售价3.88美元的标准模拟石英钟改造为基于ESP8266微控制器的Wi-Fi联网自动校时时钟。

核心硬件改造包括拆开时钟机芯，将内部的拉维特步进电机线圈从石英电路中分离，并在其引脚上焊接导线，以便通过ESP8266进行外部控制。微控制器运行定制的Arduino程序，每15分钟从NTP服务器获取精确的本地时间，并自动调整夏令时。

软件运行机制为每秒十次对比时钟显示时间与NTP时间。若时钟走时偏慢，ESP8266会向电机线圈发送精确计时的双极性脉冲来推动秒针前进。关键挑战在于时钟缺乏位置反馈功能。为此，项目采用外部EERAM芯片持续保存指针位置数据，使系统在断电后能恢复正确时间。

首次启动时，ESP8266会生成网页设置界面供用户手动输入指针初始位置。正常运行后，设备将提供状态显示页面，可展示当前时间及可选的钟面图形化界面。

---

## 3. Discord下月起将要求面部扫描或身份验证以获取完整访问权限。

**原文标题**: Discord will require a face scan or ID for full access next month

**原文链接**: [https://www.theverge.com/tech/875309/discord-age-verification-global-roll-out](https://www.theverge.com/tech/875309/discord-age-verification-global-roll-out)

Discord将于2026年3月在全球范围内推行强制年龄验证。所有账户将默认设置为“青少年适用模式”，限制访问年龄受限的服务器与频道，并暂缓开放Stage频道等功能，同时过滤内容与消息。

用户需完成成人验证方可恢复完整权限。Discord提供两种主要验证方式：通过视频自拍进行AI面部年龄评估（公司称该过程在本地处理），或向第三方服务商提交政府身份证件（据称验证后图像将立即删除）。平台还将采用推理模型分析用户行为，自动为部分成年用户完成验证。

此举是网络年龄验证行业趋势的一部分。Discord此前曾面临验证规避手段的挑战，以及前合作验证服务商的数据泄露事件（该公司表示已更换服务商）。虽然承认新规可能导致部分用户流失，但Discord表示已为此做好准备。

---

## 4. Luce：首款电动法拉利，由LoveFrom设计。

**原文标题**: Luce: First Electric Ferrari. Designed by LoveFrom

**原文链接**: [https://www.ferrari.com/en-US/auto/ferrari-luce](https://www.ferrari.com/en-US/auto/ferrari-luce)

**《Luce：首款电动法拉利，由LoveFrom设计》摘要**

文章介绍了法拉利首款纯电动车型Luce，这标志着其动力技术的历史性转变。该车由Jony Ive的创意团队LoveFrom合作设计，被呈现为一个融合法拉利性能传承与前瞻性可持续愿景的新篇章。

主要细节包括：
*   **设计理念：** Luce在意大利语中意为“光”，其设计强调“连贯与纯粹”。它拥有流畅、极简的轮廓，一改传统的凌厉线条，专注于优雅曲面和简化的视觉复杂度，旨在打造永恒且富有情感共鸣的设计。
*   **合作：** 与LoveFrom的合作被强调为一次专注于深刻简约与永恒美学的思想交融，旨在创造一款既熟悉又焕然一新的法拉利。
*   **技术愿景（概念）：** 虽未提供具体性能参数，但文章强调电动动力总成将带来法拉利标志性的即时响应与激动人心的性能。同时暗示了针对电动时代打造独特真实声浪的新方法。
*   **内饰与体验：** 座舱被描述为“圣所”，采用可持续材料，并以驾驶者为中心的界面减少干扰，旨在增强人车之间的情感联结。

本质上，法拉利Luce不仅定位为一款电动汽车，更是对品牌未来的全面重新构想——将其核心的情感与性能价值，与创新的可持续技术以及纯粹的设计语言相结合。

---

## 5. 为什么天空是蓝色的？

**原文标题**: Why is the sky blue?

**原文链接**: [https://explainers.blog/posts/why-is-the-sky-blue/](https://explainers.blog/posts/why-is-the-sky-blue/)

天空之所以呈现蓝色，是因为阳光在地球大气中发生散射。虽然大部分阳光能穿透大气，但波长较短的蓝光和紫光更容易被空气中的氮分子和氧分子散射。这种被称为瑞利散射的现象使蓝光向各个方向散开，让整个天空看起来是蓝色的。紫光散射得更厉害，但人眼对紫光不太敏感，因此我们看到的天空是蓝色的。

日出和日落时，阳光需要穿过更厚的大气层。这段更长的路径散射掉了大部分蓝光和绿光，使波长较长、不易散射的红光和橙光得以凸显，从而形成绚丽的晚霞。

云朵呈现白色，因为它们由更大的水滴组成。这些水滴会均匀散射所有波长的光，混合后便形成了白光。

天空的颜色取决于大气中的成分。例如，火星白天的天空是红色的，因为其大气中含有能吸收蓝光的细微尘埃。然而，火星的日落却呈现蓝色，因为这些尘埃对蓝光的向前散射效果强于红光，从而在落日周围形成一圈蓝色的光晕。

---

## 6. 麻省理工学院生活工资计算器

**原文标题**: MIT Living Wage Calculator

**原文链接**: [https://livingwage.mit.edu/](https://livingwage.mit.edu/)

麻省理工学院生活工资计算器是一种工具，旨在估算特定地区全职工作者为满足家庭基本生活开支所需的本地工资。它针对许多低薪工作无法提供足够收入以达到最低生活标准的问题而设计。

该计算器允许用户在全美50个州和哥伦比亚特区的县级、都会区或州级层面，探索12种不同家庭类型（例如单身成人、有子女的家庭）的生活工资。其主要目的是向个人、社区、雇主和政策制定者展示特定地区实现基本财务稳定所需的收入水平。

该计算器的数据最近更新于2025年2月10日。

---

## 7. 急刹车事件作为路段碰撞风险的指标

**原文标题**: Hard-braking events as indicators of road segment crash risk

**原文链接**: [https://research.google/blog/hard-braking-events-as-indicators-of-road-segment-crash-risk/](https://research.google/blog/hard-braking-events-as-indicators-of-road-segment-crash-risk/)

这项谷歌研究证实，急刹车事件是评估路段碰撞风险的重要先导指标。研究利用来自Android Auto的聚合匿名数据，在加利福尼亚州和弗吉尼亚州的公开数据中，确立了急刹车事件频率与实际碰撞率之间具有统计学意义的正相关性。

急刹车事件相较于传统碰撞统计数据的关键优势在于数据密度：其覆盖路段数量是碰撞数据的18倍，能提供连续、高频的信号，从而克服了罕见碰撞事件的数据稀疏性和滞后性。通过控制交通流量和道路几何特征等因素的统计模型证实，在所有道路类型中，急刹车事件率较高的路段始终具有更高的碰撞率。

以加利福尼亚州一处问题高速汇流区为例的案例研究展示了实际应用价值。该路段平均每六周发生一起碰撞事故，同时其急刹车频率也位列前1%——这验证了急刹车事件无需依赖多年历史碰撞数据即可识别高风险路段的能力。

此项研究推动了安全管理从被动应对向主动预防的转变。谷歌正将这些发现整合至其道路管理洞察平台，使交通管理部门能够利用实时、覆盖全网的路段急刹车数据来识别危险区域，并优先实施改善标识或道路重新设计等基础设施干预措施。

---

## 8. Game Boy Advance音频插值

**原文标题**: Game Boy Advance Audio Interpolation

**原文链接**: [https://jsgroth.dev/blog/posts/gba-audio-interpolation/](https://jsgroth.dev/blog/posts/gba-audio-interpolation/)

本文阐述了如何通过用更高级的重采样技术替代硬件基础的最邻近插值，来提升Game Boy Advance（GBA）模拟器的音频质量。GBA原始音频硬件常产生显著的混叠和噪声，尤其在游戏使用低PCM采样率（例如约13 kHz）时。

核心方法在于绕过GBA内部的PWM重采样阶段。模拟器根据每个PCM通道的定时器设置计算其源采样率，并直接使用高质量算法（如6点三次埃尔米特插值和加窗sinc插值）将其重采样至输出率（例如48 kHz）。虽然sinc插值在技术上更能消除混叠，但可能使低采样率音频听起来过于沉闷，因此在多数情况下三次埃尔米特插值更受青睐。

次要挑战在于处理PSG（声音芯片）通道，这些通道在PCM插值后仍保留高频噪声。作者建议对PSG输出应用动态低通滤波器，其截止频率基于PCM采样率，以更好地融合两种音频源。该方法显著减少了混叠和部分噪声，但无法完全消除原始8位样本中的所有瑕疵。此增强适用于所有GBA游戏，但会带来明显的性能开销。

---

## 9. JavaScript的UEFI绑定

**原文标题**: UEFI Bindings for JavaScript

**原文链接**: [https://codeberg.org/smnx/promethee](https://codeberg.org/smnx/promethee)

**《UEFI JavaScript 绑定》概述**

本文介绍了开源项目 **Promethee**，该项目为统一可扩展固件接口（UEFI）提供了 JavaScript 绑定。这使得开发者能够使用 JavaScript 而非传统的低级语言（如 C）来编写 UEFI 应用程序和驱动程序。

其核心思想是利用 JavaScript 的易用性和高级特性来简化 UEFI 编程，使其对更广泛的开发者群体更易上手。这些绑定基于 **Eclipse OMR JitBuilder** 库构建，该库使得在受限的 UEFI 环境中编译和执行 JavaScript 成为可能。

要点包括：
*   **目的：** 使 JavaScript 成为 UEFI 的脚本语言，便于编写固件工具、引导程序或诊断工具等任务。
*   **技术：** 它使用即时编译器（通过 OMR）直接在 UEFI 运行时上运行 JavaScript 代码，无需完整的操作系统。
*   **项目状态：** 作为概念验证展示，证明了在 UEFI 中运行 JavaScript 在技术上是可行的。代码库包含源代码和构建说明。
*   **潜力：** 作者认为这可以降低 UEFI 开发的入门门槛，并为固件级脚本编程开辟新的可能性。

本质上，Promethee 是连接高级、广泛使用的 JavaScript 生态系统与低级系统固件世界的一座实验性桥梁，探索了 UEFI 应用开发的一种新颖途径。

---

## 10. 潜伏外壳：攻击者正在Ivanti EPMM中植入休眠后门

**原文标题**: Sleeper Shells: Attackers Are Planting Dormant Backdoors in Ivanti EPMM

**原文链接**: [https://defusedcyber.com/ivanti-epmm-sleeper-shells-403jsp](https://defusedcyber.com/ivanti-epmm-sleeper-shells-403jsp)

本文详细描述了一场针对未打补丁的Ivanti终端管理器移动版（EPMM）系统的复杂网络攻击活动，攻击者利用关键漏洞（CVE-2026-1281和CVE-2026-1340）展开行动。与立即进行明显攻击不同，攻击者部署了一个潜伏后门。

关键载荷是一个上传至`/mifs/403.jsp`的Java类（`base.Info`）。这个内存加载器并非活跃的网页外壳；它保持休眠状态，直到被特定的HTTP参数（`k0f53cf964d387`）激活。一旦触发，它能够直接在内存中加载并执行第二阶段的Java类，无需写入磁盘。

此次攻击的模式——建立访问权限、验证植入程序有效、然后将其闲置——是初始访问中介（IAB）的典型特征。这表明被攻陷的访问权限可能正在被准备出售或移交给其他威胁行为者，以供未来利用。

防御者被敦促将所有相关活动视为已遭入侵，即使没有后续行动。关键步骤包括立即打补丁、重启应用服务器以清除内存，并追踪诸如特定请求路径、参数名称和响应标记（例如`3cd3d`）等入侵指标。该后门安静而耐心的特性使其成为一种特别隐蔽且危险的威胁。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 2 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 3 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 4 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 5 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 6 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 7 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 8 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 9 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 10 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 11 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 12 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 13 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 14 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 15 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 16 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 17 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 18 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 19 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 20 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 21 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 22 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 23 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 24 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 25 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 26 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 27 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 28 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 29 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 30 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 31 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 32 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 33 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 34 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 35 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 36 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 37 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 38 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 39 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 40 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 41 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 42 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 43 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 44 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 45 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 46 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 47 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 48 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 49 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 50 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 51 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 52 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 53 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 54 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 55 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 56 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 57 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 58 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 59 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 60 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 61 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 62 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 63 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 64 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 65 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 66 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 67 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 68 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 69 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 70 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 71 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 72 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 73 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 74 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 75 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 76 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 77 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 78 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 79 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 80 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 81 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 82 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 83 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 84 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 85 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 86 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 87 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 88 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 89 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 90 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 91 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 92 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 93 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 94 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 95 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 96 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 97 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 98 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 99 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 100 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 101 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 102 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 103 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 104 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 105 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 106 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 107 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 108 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 109 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 110 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 111 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 112 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 113 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 114 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 115 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 116 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 117 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 118 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 119 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 120 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 121 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 122 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 123 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 124 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 125 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 126 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 127 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 128 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 129 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 130 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 131 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 132 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 133 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 134 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 135 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 136 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 137 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 138 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 139 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 140 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 141 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 142 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 143 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 144 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 145 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 146 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 147 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 148 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 149 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 150 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 151 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 152 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 153 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 154 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 155 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 156 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 157 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 158 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 159 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 160 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 161 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 162 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 163 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 164 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 165 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 166 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 167 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 168 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 169 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 170 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 171 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 172 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 173 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 174 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 175 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 176 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 177 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 178 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 179 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 180 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 181 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 182 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 183 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 184 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 185 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 186 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 187 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 188 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 189 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 190 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 191 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 192 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 193 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 194 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 195 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 196 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 197 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 198 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 199 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 200 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 201 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 202 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 203 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 204 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 205 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 206 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 207 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 208 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 209 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 210 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 211 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 212 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 213 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 214 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 215 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 216 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 217 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 218 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 219 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 220 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 221 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 222 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 223 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 224 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 225 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 226 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 227 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 228 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 229 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 230 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 231 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 232 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 233 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 234 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 235 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 236 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 237 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 238 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 239 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 240 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 241 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 242 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 243 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 244 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 245 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 246 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 247 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 248 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 249 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 250 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 251 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 252 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 253 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 254 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 255 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 256 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 257 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 258 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 259 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 260 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 261 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 262 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 263 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 264 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 265 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 266 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 267 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 268 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 269 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 270 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 271 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 272 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 273 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 274 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 275 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 276 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 277 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 278 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 279 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 280 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 281 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 282 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 283 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 284 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 285 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 286 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 287 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 288 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 289 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 290 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 291 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 292 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 293 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 294 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 295 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 296 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 297 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 298 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 299 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 300 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 301 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 302 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 303 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 304 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 305 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 306 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 307 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 308 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 309 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 310 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 311 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 312 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 313 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 314 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 315 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 316 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 317 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 318 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 319 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 320 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 321 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 322 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 323 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 324 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
