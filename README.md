# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-09.md)

*最后自动更新时间: 2026-10-09 04:57:48*
## 1. Whistle：仅 16.9MB 的端侧语音识别

**原文标题**: Whistle: Speech to Text in 16.9 MB

**原文链接**: [https://cactuscompute.com/blog/whistle](https://cactuscompute.com/blog/whistle)

Cactus Compute 发布 Whistle，一款仅 16.9MB 的端侧语音识别模型，纯 C++ 引擎、零依赖、CPU 即可运行，适用于手机、穿戴设备、机器人、智能家居、汽车及微控制器。模型支持英语、德语、法语、西班牙语、意大利语、荷兰语和波兰语，单次处理最长 30 秒音频，提供转录、词级时间戳与概率、语音嵌入（每 80 毫秒一帧）三项功能。架构上，编码器由 8 层 Simple Attention 块加卷积提取组成；解码器采用 8 层 Laddered Attention 块配合门控交叉注意力读取编码器输出，经 5 束搜索并支持 Aho-Corasick 关键词偏置，大部分模块与 Needle 文本模型共享代码。性能方面，Whistle 体积仅为 Whisper base 的 1/8.6，首 token 延迟 11.1 毫秒（对比 73.2 毫秒），解码速度达 1319 tokens/秒（对比 266），在 LibriSpeech、SPGISpeech、Earnings-22 等多项基准上领先。引擎覆盖 17 个目标平台，含 Android、iOS、浏览器等，C API 仅三个函数，开发可通过 pip install cactus-needle 快速接入。

---

## 2. 不直奔主题的价值

**原文标题**: The value of not getting to the point (2015)

**原文链接**: [https://ken.arneson.name/2015/11/the-value-of-not-getting-to-the-point/](https://ken.arneson.name/2015/11/the-value-of-not-getting-to-the-point/)

作者分享了一个重要顿悟：聚会时的饮食与寒暄并非虚度，而是为敏感对话提供心理缓冲的社交仪式。作为内向者，他一度以为不善言辞只是自身缺陷，直到女儿一通电话让他意识到，任何人表达深层感受前都需要漫长的"热身"——从无关闲话慢慢过渡到真正想说的话。语言本身不精确，情感难以直接转化为言语，而表达脆弱感需要充分的安全感为前提，这正是寒暄、咖啡等仪式存在的意义。作者由此反思Twitter等平台的140字限制：它迫使人直截了当，剥夺了对话中不可或缺的迂回空间，使在线交流远比面对面更为艰难和充满摩擦。文章本身也践行了这一理念——绕了大半篇的弯才道出主旨，以此示范"不直奔主题"本身就是一种必要的沟通策略。作者坦诚，写下这些对旁人或许显而易见的内容，既是对自身盲点的承认，也是对"一切表达都伴随脆弱"这一事实的拥抱。

---

## 3. Theranos世界

**原文标题**: Theranos.World

**原文链接**: [https://www.theranos.world/](https://www.theranos.world/)

摘要：本文呈现的是一款以"Theranos"血检骗局事件为主题的沉浸式互动媒体作品界面。整体UI模仿macOS风格，设有Finder、File、Edit等菜单栏及100%缩放显示，时间锚定在周三上午9:41，文件类型涵盖文档、演示文稿与电子表格，暗示对案发现场的还原。核心环节要求用户通过"Elizabeth Holmes"（伊丽莎白·霍姆斯，Theranos创始人）的登录页进入，提示"无需密码，点击登录或按回车键"。进入后，用户处于一个虚拟空间，可通过点击椅子坐下、按Esc键站起、拖拽环顾四周、双指捏合缩放等操作自由探索场景，兼具桌面端与移动端交互逻辑。整体设计以游戏化、沉浸式叙事手法，将Theranos这一曾颠覆血液检测行业、最终因数据造假而崩塌的商业帝国，转化为可体验的虚拟世界，引导用户在操作中感知事件始末与其中荒诞。

---

## 4. 为什么业界对 DeepSeek 4.1 Flash 无动于衷？

**原文标题**: Why isn't the industry freaking out about DeepSeek 4.1 Flash?

**原文链接**: [https://www.dgt.is/blog/2026-10-07-deepseek-freek-out/](https://www.dgt.is/blog/2026-10-07-deepseek-freek-out/)

作者深度使用 DeepSeek 4.1 Flash 近一个月，横跨十余个项目，认为其能力、速度与交互体验与 Claude Opus 等前沿模型几乎无异，但成本相差数个数量级。中国蒸馏模型虽在时间上或落后一两个月，已足以胜任同等工作负载。文章核心观点是"够用即好"：当模型足以支撑高质量无人值守任务时，追逐最新旗舰已无必要。作者以每月 10 美元订阅实现近乎无限使用，全天会话成本通常不足 1 美元，彻底改变了开发节奏——复杂规划与执行主要由 DeepSeek 承担，Opus 等仅用于最终审查和"换双眼睛"。技术层面，4.1 Flash 将 KV 缓存较 V1 缩减约 437 倍，是长会话成本骤降的根源，也带来环境可持续性上的利好。作者借此批评 FAANG 以最高预算换取最强智能的军备竞赛，认为忽视成本、伦理与可持续性的做法不可持续。此外，在如此低廉的 API 价格下，自托管已无经济价值，但缓存优化趋势终将让本地运行成为现实。作者的关注点并非短期省钱，而是高智能的民主化与长期可持续。

---

## 5. 用LED柔性灯丝手工打造可穿戴"霓虹"T恤

**原文标题**: Show HN: Making a flexible "neon" t-shirt with LED filaments

**原文链接**: [http://scottbezek.blogspot.com/2026/10/making-flexible-neon-t-shirt-with-leds.html](http://scottbezek.blogspot.com/2026/10/making-flexible-neon-t-shirt-with-leds.html)

一位工程师为配合公司霓虹主题活动，在不足一周内用LED柔性灯丝手工完成了一件可穿戴"霓虹"T恤。他选用3V、12V、24V等不同规格灯丝，以十字绣硬质布为衬底，借助组织纸模板将灯丝用黑线回针缝合于黑色T恤上。背面以一条1200mm 24V红色灯丝连续勾勒羊驼轮廓，正面用三段300mm 3V灯丝焊接串联成约900mm霓虹文字，两侧各用600mm暖白灯丝作边框。电路部分以ESP32为核心，通过TPS61169恒流驱动配合PWM模拟霓虹闪烁；背部高电压灯丝由廉价升压模块加串联电阻供电；边框灯丝则经ULN2003A三极管阵列由5V降压驱动。巧思包括用黑色热缩管遮挡不发光段（类似真实霓虹灯遮光漆），以及无合适长度时焊接多段串联补长。全部电子元件收纳于3D打印小盒中，USB电池供电，经织带从腋下穿至口袋。项目最终效果获得同事一致好评，虽不可水洗、不具实用性，但作为一次快速的艺术与工程融合实验非常成功。

---

## 6. Show HN：K10s——可点击的 Kubernetes 终端 UI（Go + Bubble Tea）

**原文标题**: Show HN: K10s – A Clickable Kubernetes TUI (Go, Bubble Tea)

**原文链接**: [https://github.com/p10node/k10s](https://github.com/p10node/k10s)

K10s 是一款用 Go 和 Bubble Tea 构建的 Kubernetes 终端 UI 工具，面向 k9s 用户，核心差异在于全面支持鼠标点击操作。主要特性：懒加载启动，首帧零阻塞；统一搜索框（Ctrl+P）同时检索资源类型与对象；内置 AI 问答（Ctrl+A），自动注入当前命名空间与选中对象上下文，支持 OpenAI 兼容及 Anthropic 等接口；自我更新（/update 校验后原子替换二进制）；兼容 k9s 插件格式；提供离线 Demo 模式，无需真实集群即可体验。界面涵盖 30 种资源类型并自动发现 CRD，单键即可触发日志跟踪、端口转发、交互式 Shell、扩缩容、Cordon/Drain 等日常运维操作，内置八款配色主题并支持自定义。与 k9s 相比，k10s 刻意收窄功能面，强调新手友好——可用操作直接列在动作面板中，无需记忆快捷键，更适合作为团队共享工具。支持 macOS、Linux、Windows 全平台预编译，一行命令安装。作者坦诚该项目尚未在真实生产集群验证，建议先用 kind 测试。

---

## 7. A Terminal Protocol for Program Status (OSC 7501)

**原文标题**: A Terminal Protocol for Program Status (OSC 7501)

**原文链接**: [https://mitchellh.com/writing/program-status-osc7501](https://mitchellh.com/writing/program-status-osc7501)

文章之前已经处理过

---

## 8. 阶跃星辰100万上下文MoE模型Step 5 Preview上线OpenRouter

**原文标题**: Step 5 Preview, a 1M-context MoE from StepFun, shows up on OpenRouter

**原文链接**: [https://openrouter.ai/stepfun/step-5-preview](https://openrouter.ai/stepfun/step-5-preview)

无法访问该文章链接

---

## 9. 男子发现父母咖啡机10天内竟产生1TB数据流量

**原文标题**: Man discovers his parents' coffee machine used 1TB of data in 10 days

**原文链接**: [https://www.dexerto.com/entertainment/man-discovers-his-parents-coffee-machine-used-1tb-of-data-in-10-days-3416399/](https://www.dexerto.com/entertainment/man-discovers-his-parents-coffee-machine-used-1tb-of-data-in-10-days-3416399/)

一位从事IT工作逾十年的男子Nomad在远程管理父母家庭网络时，发现其智能咖啡机在短短10天内产生了高达1TB的数据流量，遂在社交平台X上发帖曝光并公开质疑Keurig品牌。帖文迅速走红后，他进一步排查发现，这1TB流量绝大多数仅在家庭局域网内部流转，并未上传至互联网。他判断该设备存在程序缺陷，异常流量已导致家中无线接入点被严重占满，影响了正常网络使用。基于安全考量，Nomad决定彻底断开该物联网设备的网络连接，并为父母另购新机。他强调，保留一个可能突发异常、造成网络拥塞的智能设备，风险远大于便利。此事件反映出智能家居与物联网设备在数据行为透明度及网络资源消耗方面的潜在隐患，也提醒消费者在选购智能家电时不应忽视其背后的网络活跃度。

---

## 10. 迪亚曼蒂纳断裂带一处530万年历史的深海鲸类墓地

**原文标题**: A 5.3M-year-old deep-sea whale necropolis in the Diamantina Zone

**原文链接**: [https://www.nature.com/articles/s41586-026-10546-z](https://www.nature.com/articles/s41586-026-10546-z)

摘要：2023年，研究团队利用"奋斗者"号全海深载人潜水器，在印度洋东南部迪亚曼蒂纳断裂带（水深4616–7001米）发现一处绵延约1200公里的深海鲸类墓地，包含5个活跃鲸落群落及476件鲸类化石。活跃鲸落处于硫化物阶段，伴生动物群涵盖35个宏动物类群，以化能共生双壳类、蛀骨管虫（Osedax）、骨螺及脆星等为主，局部密度达每平方米2840个个体；这些物种在周围背景沉积物中缺失，表明其高度专性。化石鉴定出5种喙鲸及1种须鲸，包括已灭绝的翼头鲸和Izikoziphius，并描述新种翼头鲸Pterocetus diamantinae。锶同位素定年显示化石年代跨度为0.12–5.26百万年，其中灭绝种最早可追溯至约530万年前的早上新世，证实该区域鲸落事件至少始于该时期。最深活跃鲸落位于6789米，刷新已知深度记录。该发现拓展了鲸落生态系统的深度与生物地理学认知，确立了深海海底作为鲸类演化化石档案库的重要价值。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 2 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 3 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 4 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 5 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 6 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 7 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 8 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 9 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 10 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 11 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 12 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 13 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 14 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 15 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 16 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 17 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 18 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 19 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 20 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 21 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 22 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 23 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 24 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 25 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 26 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 27 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 28 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 29 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 30 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 31 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 32 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 33 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 34 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 35 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 36 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 37 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 38 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 39 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 40 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 41 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 42 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 43 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 44 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 45 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 46 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 47 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 48 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 49 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 50 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 51 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 52 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 53 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 54 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 55 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 56 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 57 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 58 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 59 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 60 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 61 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 62 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 63 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 64 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 65 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 66 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 67 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 68 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 69 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 70 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 71 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 72 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 73 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 74 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 75 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 76 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 77 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 78 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 79 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 80 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 81 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 82 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 83 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 84 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 85 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 86 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 87 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 88 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 89 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 90 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 91 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 92 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 93 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 94 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 95 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 96 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 97 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 98 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 99 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 100 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 101 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 102 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 103 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 104 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 105 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 106 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 107 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 108 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 109 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 110 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 111 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 112 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 113 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 114 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 115 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 116 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 117 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 118 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 119 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 120 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 121 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 122 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 123 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 124 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 125 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 126 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 127 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 128 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 129 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 130 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 131 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 132 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 133 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 134 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 135 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 136 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 137 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 138 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 139 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 140 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 141 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 142 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 143 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 144 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 145 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 146 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 147 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 148 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 149 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 150 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 151 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 152 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 153 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 154 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 155 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 156 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 157 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 158 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 159 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 160 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 161 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 162 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 163 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 164 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 165 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 166 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 167 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 168 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 169 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 170 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 171 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 172 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 173 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 174 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 175 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 176 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 177 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 178 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 179 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 180 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 181 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 182 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 183 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 184 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 185 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 186 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 187 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 188 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 189 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 190 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 191 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 192 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 193 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 194 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 195 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 196 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 197 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 198 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 199 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 200 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 201 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 202 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 203 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 204 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 205 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 206 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 207 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 208 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 209 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 210 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 211 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 212 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 213 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 214 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 215 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 216 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 217 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 218 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 219 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 220 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 221 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 222 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 223 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 224 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 225 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 226 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 227 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 228 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 229 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 230 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 231 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 232 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 233 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 234 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 235 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 236 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 237 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 238 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 239 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 240 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 241 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 242 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 243 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 244 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 245 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 246 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 247 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 248 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 249 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 250 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 251 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 252 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 253 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 254 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 255 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 256 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 257 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 258 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 259 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 260 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 261 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 262 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 263 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 264 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 265 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 266 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 267 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 268 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 269 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 270 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 271 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 272 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 273 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 274 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 275 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 276 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 277 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 278 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 279 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 280 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 281 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 282 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 283 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 284 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 285 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 286 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 287 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 288 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 289 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 290 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 291 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 292 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 293 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 294 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 295 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 296 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 297 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 298 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 299 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 300 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 301 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 302 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 303 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 304 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 305 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 306 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 307 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 308 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 309 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 310 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 311 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 312 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 313 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 314 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 315 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 316 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 317 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 318 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 319 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 320 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 321 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 322 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 323 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 324 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 325 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 326 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 327 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 328 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 329 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 330 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 331 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 332 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 333 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 334 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 335 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 336 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 337 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 338 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 339 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 340 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 341 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 342 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 343 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 344 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 345 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 346 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 347 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 348 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 349 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 350 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 351 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 352 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 353 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 354 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 355 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 356 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 357 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 358 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 359 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 360 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 361 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 362 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 363 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 364 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 365 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 366 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 367 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 368 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 369 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 370 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 371 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 372 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 373 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 374 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 375 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 376 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 377 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 378 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 379 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 380 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 381 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 382 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 383 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 384 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 385 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 386 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 387 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 388 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 389 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 390 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 391 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 392 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 393 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 394 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 395 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 396 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 397 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 398 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 399 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 400 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 401 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 402 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 403 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 404 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 405 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 406 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 407 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 408 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 409 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 410 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 411 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 412 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 413 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 414 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 415 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 416 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 417 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 418 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 419 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 420 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 421 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 422 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 423 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 424 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 425 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 426 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 427 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 428 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 429 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 430 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 431 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 432 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 433 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 434 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 435 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 436 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 437 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 438 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 439 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 440 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 441 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 442 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 443 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 444 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 445 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 446 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 447 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 448 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 449 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 450 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 451 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 452 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 453 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 454 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 455 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 456 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 457 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 458 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 459 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 460 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 461 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 462 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 463 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 464 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 465 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 466 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 467 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 468 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 469 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 470 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 471 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 472 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 473 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 474 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 475 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 476 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 477 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 478 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 479 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 480 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 481 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 482 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 483 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 484 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 485 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 486 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 487 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 488 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 489 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 490 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 491 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 492 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 493 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 494 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 495 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 496 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 497 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 498 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 499 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 500 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 501 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 502 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 503 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 504 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 505 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 506 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 507 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 508 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 509 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 510 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 511 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 512 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 513 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 514 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 515 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 516 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 517 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 518 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 519 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 520 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 521 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 522 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 523 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 524 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 525 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 526 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 527 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 528 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 529 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 530 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 531 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 532 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 533 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 534 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 535 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 536 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 537 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 538 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 539 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 540 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 541 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 542 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 543 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 544 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 545 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 546 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 547 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 548 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 549 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 550 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 551 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 552 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 553 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 554 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 555 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 556 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 557 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 558 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 559 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 560 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 561 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 562 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 563 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 564 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
