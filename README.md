# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-05.md)

*最后自动更新时间: 2026-10-05 04:57:05*
## 1. 移除并禁用苹果 macOS 27 AI 模型工具

**原文标题**: Remove and Disable Apple Macos27 AI Models Tool

**原文链接**: [https://github.com/omlahore/RemoveMacAI](https://github.com/omlahore/RemoveMacAI)

RemoveMacAI 是一款面向 macOS 27 的轻量工具，用于关闭 Apple Intelligence 全部功能、删除本地 AI 模型并阻止系统重新下载。macOS 27 取消了 Apple Intelligence 的统一开关，关闭功能后模型仍残留磁盘，该工具通过安装配置描述文件解决此问题。工具可关闭 Siri、写作工具、Genmoji、图像生成、邮件与备忘录摘要、Xcode 代码补全等十余项功能，并清除 Apple Intelligence 基础模型及图像、照片清理等专用模型。其原理是通过配置描述文件施加系统限制键，利用 Apple 资产服务完成模型删除，将模型下载重定向至封闭端口以防重新拉取；全程不修改 /System 目录，不发起网络请求，不收集用户数据。安装支持 curl 一行命令或 Homebrew，所有更改均可通过 revert 命令完全撤销，系统更新后配置依然有效。要求 Apple 芯片及 macOS 27 系统，MIT 许可证，基于开源项目 pared 构建。

---

## 2. 消费级硬件以100T/s运行125B大模型——Strata让RTX 4090跑通Qwen 3.8 Flash Next

**原文标题**: Run Qwen 3.8 Flash Next (125B) on consumer hardware (RTX 4090) at 100T/s

**原文链接**: [https://github.com/Niko1221/Strata](https://github.com/Niko1221/Strata)

Strata 是一款免费开源工具，使普通游戏 PC 即可运行 1250 亿参数的 Qwen3.8-Flash-Next 大模型，全程本地处理，数据不出本机。硬件门槛低至 12 GB 显存（兼容 NVIDIA RTX 20–50 系列及多款 AMD 显卡）与 32 GB 内存。实测 RTX 5070 上 Q2_0 压缩版生成速度达 94 词元/秒、长文本读取达 2650 词元/秒；24 GB 显存的 RTX 3090 预计可达 100–140 词元/秒。其核心机制为 MoE 分层部署：24576 个专家中每词仅激活 10 个，显卡驻留高频专家、内存承载全部、CPU 与 SSD 协同处理余下部分，再叠加小模型猜测加校验的推测解码，获得 1.6–1.8 倍加速。安装极为简便，支持 AI 编程助手一键部署，也提供手动脚本；API 兼容 OpenAI 与 Anthropic 协议，可无缝接入 Cursor、Claude Code 等工具。此外支持多 GPU 共享、图像输入及 128K 长上下文。模型由 Qwen 团队出品，经 ISTA-DASLab、UkisAI、Unsloth 等压缩，Strata 以 MIT 许可证开源。

---

## 3. 不当删节曝光谷歌数据中心水电用量

**原文标题**: Improper redaction reveals Google Data Center water and electricity usage

**原文链接**: [https://www.1011now.com/2026/09/30/more-questions-than-answers-about-lincolns-google-data-center-water-electricity-usage/](https://www.1011now.com/2026/09/30/more-questions-than-answers-about-lincolns-google-data-center-water-electricity-usage/)

内布拉斯加州谷歌数据中心在向州水、能源与环境部提交年度报告时，以"商业机密"为由对水电用量数据进行删节。但记者发现，仅用鼠标高亮复制被遮蔽文本即可还原全部数据。位于林肯市的Agate LLC（谷歌数据中心）峰值用电52.65兆瓦，年用水约1300万加仑，相当于20个奥运标准游泳池。谷歌在奥马哈和巴佩尔的两处数据中心也进行了同样删节。截至去年9月30日，全州6个数据中心年总用水达7.65亿加仑，其中巴佩尔的Fireball Group LLC（谷歌）以5.48亿加仑居首。不当删节还意外暴露了退税数据：Agate LLC预期2025年退税约5582万美元，Fireball约3917万美元，奥马哈数据中心约2256万美元。Agate LLC建筑面积约28.85万平方米，相当于五个足球场。据悉，内布拉斯加州长7月签署行政令，要求数据中心自报对水资源、电网及基础设施的影响，相关报告已于9月底提交完毕。

---

## 4. 全球灯塔分布地图

**原文标题**: A map of every lighthouse

**原文链接**: [https://mapped.earth/lighthouses/world](https://mapped.earth/lighthouses/world)

该网页（mapped.earth）以交互式地图的形式，将世界上每一座灯塔逐一标注呈现，让用户直观了解全球灯塔的地理分布。灯塔作为历史悠久的航海导航标志，遍布各大洲的海岸线，从繁忙的商业港口到偏远的岛屿渔村，承载着指引航向、保障海上安全的重要使命。该项目以"照亮世界"为核心理念，汇聚了全球各海域、各区域的灯塔位置信息，涵盖不同时期、不同风格的灯塔建筑，为航海爱好者、历史研究者及地理学习者提供了一个全面而直观的参考平台。

---

## 5. 《我们身边的尼安德特人》书评

**原文标题**: 'Neanderthals Among Us' review

**原文链接**: [https://www.historytoday.com/archive/review/neanderthals-among-us-peter-sahlins-review](https://www.historytoday.com/archive/review/neanderthals-among-us-peter-sahlins-review)

1856年，德国尼安德山谷出土的化石催生了人类首个认可的异种古人类——尼安德特人。彼得·萨林斯的《我们身边的尼安德特人》是首部系统梳理尼安德特人在科学与流行文化中形象变迁的著作。书中追溯了从古代"荒蛮人"传说到近代种族科学的演变：19世纪起，尼安德特人被置于种族等级底层，在小说、影视和广告中长期被塑造为愚笨残暴的"野蛮人"，该词亦被进步派用来贬斥保守势力。二战后，沙尼达尔洞穴中发现带伤却受他人照料的个体及花葬遗迹，挑战了刻板印象。2010年尼安德特人基因组测序更揭示，现代人DNA中仍携带其基因片段，二者实为密切相关的群体。作者以自身2.1%的尼安德特人遗传为例，警示基因不应成为决定论工具，强调尼安德特人基因组实为投射人类自我认知的"罗夏测验"。书中还介绍了2026年最新发现——早期人智交融以尼安德特男性与现代女性交配为主。全书是理解"何为人"的出色导引。

---

## 6. Homa：AI集群中TCP的终结

**原文标题**: Homa: The End of TCP for AI Clusters [video]

**原文链接**: [https://www.youtube.com/watch?v=eZ8WWZzoaR0](https://www.youtube.com/watch?v=eZ8WWZzoaR0)

摘要：本视频介绍了名为Homa的新型网络通信方案，主张在大规模AI训练集群中取代传统TCP协议。随着大模型训练对分布式算力的需求急剧增长，TCP在延迟敏感度、吞吐量弹性及超大规模可扩展性上日益凸显瓶颈，难以满足GPU集群间高频、低延迟的数据交换需求。Homa作为面向AI工作负载定制的网络层协议，预计通过更契合GPU通信模式的传输机制与优化流量控制，缓解集群内部的拥塞与同步延迟问题，从而提升整体训练效率。标题中的"终结"一词暗示，Homa的推出可能意味着TCP在AI数据中心这一特定场景中逐渐退出历史舞台，为下一代超大规模AI基础设施的网络架构提供全新范式。需注意，所提供的网页文本仅为YouTube平台标准页脚信息（版权声明、联系方式、条款等），未包含视频正文或详细描述，以上要点系依据标题合理推断。

---

## 7. 有效利他主义如何席卷全球（又如何可能终结一切）

**原文标题**: How effective altruism conquered the world (and might yet end it)

**原文链接**: [https://www.economist.com/international/2026/10/01/how-effective-altruism-conquered-the-world](https://www.economist.com/international/2026/10/01/how-effective-altruism-conquered-the-world)

无法访问该文章链接。

---

## 8. ASIC逆向谜题揭晓

**原文标题**: Results from the ASIC puzzle

**原文链接**: [https://blog.janestreet.com/asic-puzzle-results/](https://blog.janestreet.com/asic-puzzle-results/)

Jane Street于2026年8月发布了一款ASIC芯片的GDS版图作为逆向工程谜题，要求参与者仅凭物理布局还原芯片功能。文章公布谜底及社区解法。该芯片实为11×11"星战"（Two Not Touch）谜题的硬件校验器，通过逐行、列、区域计数及相邻检测判断输入合法性，成功时输出解密后的解法字符串。共收到30多国约400份提交，参与者涵盖高中生至退休人士，使用了KLayout、Yosys、Z3等工具。解法包括：从版图提取网表、自建仿真器、逆向逻辑分析、SAT求解器直接求解、破解LFSR混淆的输出模块，还有人将芯片移植到FPGA、Minecraft或SPICE模拟中验证。彩蛋包括VCD文件头中隐藏的闰秒日期、金属层摩尔斯电码拼出的拉丁文标语、全零与全一输入的彩蛋输出，以及一个故意保留的悬浮线bug。文章还讨论了AI对硬件分析流程的影响，并推广了Jane Street硬件团队招聘及一场协议仿真器ASIC竞赛（截稿2027年1月）。

---

## 9. 用AI实现创作意图、品质与艺术性的规模化

**原文标题**: How to scale intent, quality, and artistry with AI [video]

**原文链接**: [https://www.youtube.com/watch?v=GLvFTMtw4Jk](https://www.youtube.com/watch?v=GLvFTMtw4Jk)

本视频探讨如何借助人工智能技术，在扩大创作规模的同时保持作品的意图表达、制作质量与艺术水准。内容围绕三个核心维度展开：意图（intent）即创作者的原始表达与叙事目标如何借助AI工具被高效传达；品质（quality）指在批量或高并发产出中维持一致的高标准；艺术性（artistry）则关注AI辅助下审美判断与创意独特性的保留与升华。视频 likely 涉及具体工具链、工作流设计及行业案例，面向内容创作者、艺术从业者与技术决策者，旨在提供可落地的规模化路径。需注意，所提供正文仅为YouTube页面通用页脚信息（版权、隐私政策、联系人及地址等），未包含视频实际字幕或文稿，以上概括基于标题推断。

---

## 10. Show HN：格拉苏蒂废品摆钟——一座仅走半小时的全废品机械摆钟

**原文标题**: Show HN: Glashütte Trash Clock – A 30-minute pendulum clock made from trash

**原文链接**: [https://niklasroy.com/gtc/](https://niklasroy.com/gtc/)

德国艺术家Niklas Roy（祖上为瑞士制表师）于2026年受邀赴萨克森州格拉苏蒂参加NOMOS钟表品牌艺术家驻留计划，以一座旧教堂为工坊，用捡拾的废品打造了一座完整机械摆钟。该钟以曲别针制擒纵轮、折叠尺为摆杆、塑料瓶为摆锤，由装满废金属的油漆罐提供动力，仅能运行约30分钟，显示分与秒，并每分钟以玻璃瓶击响报时。减速机构采用纸板摩擦轮；临近停摆时，钟还触发一个写有"NOW"与"NEVER"的幸运轮，回应"把握当下还是永远错失"的终极追问。经视频追踪测量，该钟"一秒"均值1.004秒（±0.001秒），精度达0.4%。Roy还借此发明了一种戏仿性时间标准"GTC"，融合GMT与UTC概念，以此摆钟为全球基准。文章后半部分深入梳理了GMT、TAI、UTC及闰秒等时间体系的演变，指出地球自转速率不规则导致原子时与天文时持续偏离，而2035年闰秒即将废除，全球时间标准正面临重构。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 2 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 3 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 4 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 5 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 6 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 7 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 8 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 9 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 10 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 11 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 12 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 13 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 14 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 15 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 16 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 17 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 18 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 19 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 20 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 21 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 22 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 23 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 24 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 25 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 26 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 27 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 28 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 29 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 30 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 31 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 32 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 33 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 34 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 35 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 36 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 37 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 38 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 39 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 40 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 41 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 42 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 43 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 44 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 45 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 46 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 47 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 48 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 49 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 50 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 51 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 52 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 53 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 54 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 55 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 56 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 57 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 58 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 59 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 60 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 61 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 62 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 63 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 64 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 65 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 66 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 67 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 68 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 69 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 70 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 71 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 72 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 73 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 74 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 75 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 76 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 77 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 78 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 79 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 80 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 81 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 82 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 83 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 84 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 85 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 86 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 87 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 88 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 89 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 90 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 91 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 92 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 93 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 94 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 95 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 96 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 97 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 98 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 99 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 100 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 101 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 102 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 103 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 104 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 105 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 106 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 107 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 108 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 109 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 110 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 111 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 112 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 113 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 114 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 115 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 116 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 117 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 118 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 119 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 120 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 121 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 122 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 123 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 124 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 125 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 126 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 127 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 128 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 129 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 130 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 131 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 132 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 133 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 134 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 135 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 136 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 137 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 138 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 139 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 140 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 141 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 142 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 143 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 144 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 145 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 146 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 147 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 148 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 149 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 150 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 151 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 152 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 153 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 154 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 155 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 156 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 157 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 158 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 159 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 160 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 161 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 162 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 163 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 164 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 165 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 166 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 167 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 168 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 169 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 170 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 171 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 172 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 173 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 174 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 175 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 176 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 177 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 178 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 179 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 180 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 181 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 182 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 183 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 184 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 185 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 186 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 187 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 188 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 189 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 190 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 191 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 192 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 193 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 194 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 195 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 196 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 197 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 198 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 199 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 200 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 201 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 202 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 203 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 204 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 205 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 206 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 207 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 208 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 209 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 210 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 211 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 212 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 213 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 214 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 215 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 216 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 217 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 218 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 219 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 220 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 221 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 222 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 223 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 224 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 225 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 226 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 227 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 228 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 229 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 230 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 231 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 232 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 233 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 234 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 235 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 236 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 237 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 238 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 239 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 240 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 241 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 242 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 243 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 244 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 245 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 246 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 247 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 248 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 249 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 250 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 251 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 252 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 253 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 254 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 255 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 256 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 257 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 258 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 259 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 260 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 261 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 262 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 263 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 264 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 265 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 266 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 267 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 268 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 269 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 270 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 271 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 272 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 273 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 274 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 275 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 276 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 277 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 278 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 279 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 280 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 281 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 282 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 283 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 284 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 285 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 286 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 287 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 288 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 289 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 290 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 291 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 292 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 293 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 294 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 295 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 296 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 297 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 298 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 299 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 300 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 301 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 302 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 303 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 304 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 305 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 306 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 307 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 308 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 309 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 310 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 311 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 312 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 313 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 314 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 315 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 316 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 317 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 318 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 319 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 320 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 321 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 322 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 323 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 324 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 325 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 326 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 327 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 328 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 329 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 330 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 331 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 332 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 333 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 334 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 335 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 336 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 337 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 338 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 339 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 340 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 341 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 342 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 343 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 344 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 345 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 346 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 347 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 348 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 349 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 350 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 351 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 352 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 353 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 354 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 355 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 356 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 357 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 358 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 359 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 360 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 361 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 362 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 363 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 364 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 365 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 366 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 367 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 368 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 369 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 370 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 371 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 372 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 373 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 374 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 375 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 376 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 377 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 378 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 379 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 380 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 381 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 382 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 383 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 384 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 385 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 386 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 387 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 388 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 389 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 390 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 391 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 392 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 393 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 394 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 395 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 396 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 397 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 398 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 399 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 400 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 401 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 402 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 403 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 404 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 405 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 406 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 407 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 408 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 409 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 410 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 411 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 412 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 413 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 414 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 415 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 416 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 417 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 418 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 419 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 420 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 421 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 422 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 423 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 424 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 425 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 426 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 427 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 428 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 429 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 430 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 431 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 432 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 433 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 434 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 435 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 436 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 437 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 438 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 439 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 440 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 441 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 442 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 443 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 444 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 445 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 446 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 447 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 448 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 449 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 450 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 451 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 452 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 453 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 454 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 455 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 456 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 457 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 458 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 459 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 460 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 461 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 462 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 463 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 464 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 465 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 466 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 467 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 468 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 469 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 470 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 471 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 472 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 473 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 474 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 475 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 476 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 477 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 478 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 479 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 480 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 481 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 482 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 483 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 484 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 485 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 486 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 487 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 488 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 489 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 490 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 491 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 492 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 493 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 494 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 495 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 496 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 497 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 498 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 499 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 500 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 501 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 502 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 503 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 504 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 505 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 506 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 507 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 508 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 509 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 510 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 511 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 512 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 513 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 514 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 515 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 516 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 517 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 518 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 519 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 520 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 521 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 522 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 523 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 524 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 525 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 526 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 527 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 528 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 529 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 530 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 531 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 532 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 533 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 534 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 535 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 536 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 537 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 538 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 539 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 540 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 541 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 542 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 543 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 544 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 545 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 546 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 547 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 548 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 549 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 550 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 551 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 552 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 553 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 554 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 555 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 556 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 557 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 558 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 559 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 560 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
