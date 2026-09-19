# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-20.md)

*最后自动更新时间: 2026-09-20 04:56:14*
## 1. 我早在一年前就用强化学习构建了非自回归决策模型

**原文标题**: I built non-autoregressive decision models with RL a year ago

**原文链接**: [https://laya.convaiinnovations.com/](https://laya.convaiinnovations.com/)

作者于2025年3月即发表非自回归RL决策模型论文并开源权重，而TypeSafe AI（ChatGPT共同发明者创立）在2026年9月推出概念相同的Jev，却无论文及开源数据。作者随后构建完全开源的系统1决策模型家族Laya，基于双向编码器与RLCD训练，包含choice、score、noul三种决策原语，单次前向传播输出校准概率，从架构上杜绝幻觉。Laya提供三个检查点（英语/多语言/类型化决策），内置亚毫秒级Unicode多脚本路由器，覆盖百种语言，路由开销不超推理时间的2%。性能方面，Laya单问题延迟32.8毫秒，较Jev快7.8倍，批量场景快20倍；校准误差仅为Jev的三分之一；在typed-decisions、AG News、DAIR Emotion等基准上全面领先，且支持自托管、零API费用、Apache 2.0全开源。作者同时坦诚局限：选项超20个时精度下降、零样本表现有限、需温度标定。核心观点：高频分类、路由与 triage 场景无需生成式大模型，35毫秒内基于双向编码器的确定性决策模型才是生产级最优解。

---

## 2. AI生成的海报不必千篇一律

**原文标题**: AI-generated posters don’t have to be horrible

**原文链接**: [https://john.hartnup.uk/2026/06/07/ai-event-posters.html](https://john.hartnup.uk/2026/06/07/ai-event-posters.html)

摘要：如今AI生成的活动海报因风格高度雷同而令人审美疲劳。作者为证明AI能产出更多样化的设计，向ChatGPT提交虚构的村野集市信息，并刻意要求"干净、明快、避免柔和油画风"。第一轮结果仍显平庸，于是作者要求换一种完全不同的美学，ChatGPT给出了包豪斯/几何极简风格，并主动归纳了瑞士国际主义、里索印刷、马蒂斯剪纸、粗野主义、九十年代锐舞传单、孟菲斯设计、日本极简、路标导视系统、九十年代鼓打贝斯传单等十余种风格供选择。作者逐一尝试，又尝试了"设计师Republic专辑封面风""儿童水彩加专业字体""八十年代地下朋克小报""九十年代分形3D"等趣味方向，效果各异且颇具辨识度。文章最后指出，Claude和Gemini还可输出可编辑的HTML、PDF格式，便于后续调整；作者本人据此整理了一份涵盖100种海报风格的提示词图鉴。核心观点是：AI海报的关键不在于"像不像AI画的"，而在于是否摆脱了千篇一律的默认模板——只要主动指定具体的设计语言，同样的AI也能产出风格鲜明、令人眼前一亮的作品。

---

## 3. 母巢之战基准测试

**原文标题**: Brood War Bench

**原文链接**: [https://bw.swerdlow.dev/report](https://bw.swerdlow.dev/report)

本文介绍了一项让AI模型对战《星际争霸：母巢之战》的基准测试，以19种模型及努力等级配置进行全循环对决，评估AI在实时策略游戏中的实际表现。核心结论是：所有参测模型均未超越初学者水平，任何掌握基础光子冲锋的玩家都能击败它们。Codex Astra（xhigh）以100%胜率领跑，策略以骚扰打断见长，常派探机跨图攻击对方农民，但宏观生产薄弱，子代理间缺乏协调，常逐个小规模送死。Claude Fable游戏意愿最强，会持续发展经济、攀升科技树，曾产出异化虫并获胜，但执行力不足难以将经济转化为战斗力。Grok 4.6表现最差，大量时间消耗于推理却极少下达指令，一局43分钟仅发出6条命令，未造出一兵一卒，属于典型的"思考型瘫痪"。测试还发现旧版模型将RTS当作回合制操作，思考期间即被摧毁；部分模型在主力全灭后仍具韧性，如将最后指挥中心运往地图角落存活六分钟。作者认为该基准远未触及天花板，AI在策略游戏领域仍有巨大提升空间。

---

## 4. 两个平行的神经外胚层祖细胞参与大脑发育

**原文标题**: Two parallel neural ectoderm progenitors contribute to the developing brain

**原文链接**: [https://med.stanford.edu/news/all-news/2026/09/two-separate-brains.html](https://med.stanford.edu/news/all-news/2026/09/two-separate-brains.html)

斯坦福医学院Kyle Loh团队在《自然·神经科学》上发表研究，揭示大脑发育的根本性秘密：人类大脑并非由单一祖细胞发育而成，而是由两个互斥的神经外胚层祖细胞种群平行发育构建。表达Otx2基因的前部神经外胚层发育为前脑和中脑，主管语言、意识等高级功能；表达Gbx2基因的后部神经外胚层则发育为后脑（即脑干），控制呼吸、心跳等基本生命活动。两者在胚胎发育最早期即锁定各自命运，如并行轨道上的列车永不交汇。这一发现推翻了数十年来"单一起源"的主流模型，也解释了科学家长期无法在实验室培养脑干神经元的困境——既往研究试图将前脑祖细胞转化为后脑细胞，而两者在染色质构型等表观遗传层面根本无法互转。基于此，团队首次成功将人类多能干细胞诱导为具备电活动特征的后脑运动神经元。进化证据表明，这种双起源模式在5.5亿年前的远古生物中已存在。该成果为脊髓性肌萎缩症（SMA）和肌萎缩侧索硬化（ALS）等脑干相关疾病的基础研究与再生治疗开辟了新路径，也为理解司美格鲁肽等减肥药的饥饿调控机制提供了新视角。

---

## 5. 经典基准测试盲区：Btrfs/ZFS/bcachefs 真实工作负载性能评测

**原文标题**: Btrfs/ZFS/bcachefs under workloads classic benchmarks skip

**原文链接**: [https://bartosz.fenski.pl/modern-fs-benchmark/](https://bartosz.fenski.pl/modern-fs-benchmark/)

无法访问该文章链接

---

## 6. ZK-JPEG：基于零知识证明的图像编辑与压缩

**原文标题**: ZK-JPEG: Zero-Knowledge Image Editing and Compression

**原文链接**: [https://eprint.iacr.org/2026/2039](https://eprint.iacr.org/2026/2039)

随着深度伪造图片工具的泛滥，图像认证技术对验证数字图像能否溯源至真实相机拍摄愈发重要，但此类工具必须能耐受合理的图像变换。相机证明依赖数字签名确认图片来源，然而JPEG等有损压缩、区域模糊或打码等操作均会导致签名失效。此前基于零知识证明（ZK）的方法虽可验证图像编辑历史，却无法在有损编码下保持有效。本文提出ZK-JPEG，一种面向JPEG压缩的密码学工具，可证明公开发布的图像确由某个已提交的秘密输入经正确压缩而来，并能将大量图像变换以极小开销融入JPEG压缩流程加以验证。该系统快速、灵活，可基于现成ZK工具直接实例化；作者利用PicoZK将Python图像编辑代码转换为行点零知识（LPZK）证明系统的ZK电路。论文发表于SCN 2026。

---

## 7. 测量网络审查，共建全球最大开放数据集

**原文标题**: Measure internet censorship. Contribute to the largest open dataset

**原文链接**: [https://ooni.org/install](https://ooni.org/install)

OONI Probe 是开放网络调查（OONI）推出的开源工具，旨在帮助用户检测互联网审查，并为全球最大的网络审查开放数据集贡献力量。该工具覆盖多平台，包括移动端（Android/iOS）、桌面端（Windows/macOS）及命令行（Linux/macOS），并提供相应的用户指南与安装说明。OONI Probe 主要具备以下功能：1）检测封锁网站——运行后可查看所在国家或地区被屏蔽的网站；2）测量网络速度——通过由 M-Lab 联合开发的 NDT 测试评估网络性能；3）检测应用封锁——可测试 WhatsApp、Facebook Messenger、Telegram 等通讯应用是否被屏蔽，并验证网络规避工具是否有效。用户每次运行 OONI Probe，测试结果将自动以近实时方式发布，助力全球网络审查信息的透明化。该项目汇集了来自世界各地的测量数据，任何人都可探索这些数据，了解全球互联网审查现状。

---

## 8. CUA-S1：面向计算机操作的高效决策模型

**原文标题**: Show HN: CUA-S1 – A System One Model for Computer Use

**原文链接**: [https://github.com/trycua/cua](https://github.com/trycua/cua)

Cua 为 AI 代理提供端到端的计算机操作能力，涵盖开源桌面自动化、隔离云桌面、本地 macOS 虚拟机、专用决策模型及评估基准。其核心理念"Computer-Use 2.0"强调代理可在同一任务中灵活切换代码、API 与图形界面。项目包含五大组件：Cua Fleets 提供隔离云 Linux 桌面，通过 Sandbox SDK 执行命令并截图；CUA-S1 是一族小型"系统一"模型，擅长在表单等结构化界面上快速做出有界决策，而非逐 token 生成，模型代码以 MIT 协议开源，权重托管于 Hugging Face；Cua Driver 可操作 macOS、Windows、Linux 上的原生应用与浏览器，支持后台运行而不抢占焦点；Lume 利用 Apple 虚拟化框架在 Apple Silicon 上创建本地 VM；Cua Bench 用于构建与评估计算机操作任务。项目兼容 Claude Code、Cursor 等主流 AI 编码代理，欢迎社区贡献，整体采用 MIT 许可。

---

## 9. 苏珊·奇亚尼的布赫拉食谱

**原文标题**: Suzanne Ciani's Buchla Cookbook

**原文链接**: [https://echo.orpheusinstituut.be/article/suzannes-buchla-cookbook](https://echo.orpheusinstituut.be/article/suzannes-buchla-cookbook)

无法访问该文章链接

---

## 10. TIN：面向 Postgres 的全文检索扩展

**原文标题**: Tin: full-text search for Postgres

**原文链接**: [https://planetscale.com/blog/introducing-tin](https://planetscale.com/blog/introducing-tin)

2026年9月，ParadeDB正式发布TIN（Text INdex）——一款面向Postgres的全文检索扩展GA版本。TIN原生支持布尔表达式、短语与跨度查询、模糊/通配符/正则匹配、大小写及重音折叠、COUNT(*)统计与BM25排序top-k查询，同时兼容连接、复杂WHERE子句、持续更新、复制与备份等生产需求。性能方面，在85GB的Stack Exchange语料上，TIN混合查询QPS达199次/秒，为ParadeDB的25倍、Postgres GIN的541倍，p99延迟分别低26倍和1356倍；并发写入场景下TIN仍保持125 QPS，而竞品大幅衰减；索引完全载入内存时（Wikipedia语料），TIN的COUNT查询可达10260 QPS。架构上，TIN的核心创新是以Postgres ctid（行物理地址，48位）直接作为文档标识，省去竞品维护独立ID映射的开销，并利用每页至多291条元组的特性采用两层级位图编码，将存储压缩至接近1 bit/posting。索引构建仅需8分钟，体积约为语料的50%–61%。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 2 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 3 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 4 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 5 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 6 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 7 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 8 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 9 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 10 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 11 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 12 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 13 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 14 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 15 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 16 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 17 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 18 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 19 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 20 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 21 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 22 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 23 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 24 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 25 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 26 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 27 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 28 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 29 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 30 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 31 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 32 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 33 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 34 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 35 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 36 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 37 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 38 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 39 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 40 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 41 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 42 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 43 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 44 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 45 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 46 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 47 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 48 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 49 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 50 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 51 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 52 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 53 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 54 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 55 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 56 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 57 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 58 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 59 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 60 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 61 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 62 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 63 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 64 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 65 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 66 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 67 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 68 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 69 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 70 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 71 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 72 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 73 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 74 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 75 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 76 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 77 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 78 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 79 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 80 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 81 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 82 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 83 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 84 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 85 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 86 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 87 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 88 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 89 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 90 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 91 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 92 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 93 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 94 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 95 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 96 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 97 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 98 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 99 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 100 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 101 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 102 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 103 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 104 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 105 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 106 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 107 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 108 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 109 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 110 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 111 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 112 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 113 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 114 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 115 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 116 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 117 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 118 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 119 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 120 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 121 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 122 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 123 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 124 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 125 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 126 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 127 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 128 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 129 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 130 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 131 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 132 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 133 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 134 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 135 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 136 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 137 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 138 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 139 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 140 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 141 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 142 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 143 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 144 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 145 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 146 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 147 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 148 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 149 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 150 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 151 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 152 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 153 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 154 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 155 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 156 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 157 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 158 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 159 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 160 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 161 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 162 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 163 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 164 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 165 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 166 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 167 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 168 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 169 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 170 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 171 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 172 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 173 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 174 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 175 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 176 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 177 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 178 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 179 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 180 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 181 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 182 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 183 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 184 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 185 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 186 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 187 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 188 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 189 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 190 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 191 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 192 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 193 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 194 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 195 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 196 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 197 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 198 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 199 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 200 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 201 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 202 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 203 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 204 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 205 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 206 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 207 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 208 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 209 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 210 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 211 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 212 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 213 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 214 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 215 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 216 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 217 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 218 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 219 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 220 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 221 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 222 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 223 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 224 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 225 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 226 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 227 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 228 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 229 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 230 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 231 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 232 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 233 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 234 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 235 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 236 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 237 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 238 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 239 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 240 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 241 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 242 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 243 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 244 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 245 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 246 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 247 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 248 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 249 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 250 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 251 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 252 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 253 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 254 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 255 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 256 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 257 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 258 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 259 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 260 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 261 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 262 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 263 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 264 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 265 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 266 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 267 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 268 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 269 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 270 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 271 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 272 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 273 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 274 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 275 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 276 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 277 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 278 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 279 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 280 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 281 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 282 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 283 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 284 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 285 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 286 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 287 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 288 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 289 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 290 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 291 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 292 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 293 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 294 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 295 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 296 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 297 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 298 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 299 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 300 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 301 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 302 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 303 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 304 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 305 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 306 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 307 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 308 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 309 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 310 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 311 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 312 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 313 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 314 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 315 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 316 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 317 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 318 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 319 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 320 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 321 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 322 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 323 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 324 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 325 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 326 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 327 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 328 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 329 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 330 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 331 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 332 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 333 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 334 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 335 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 336 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 337 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 338 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 339 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 340 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 341 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 342 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 343 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 344 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 345 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 346 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 347 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 348 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 349 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 350 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 351 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 352 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 353 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 354 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 355 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 356 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 357 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 358 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 359 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 360 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 361 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 362 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 363 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 364 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 365 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 366 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 367 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 368 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 369 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 370 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 371 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 372 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 373 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 374 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 375 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 376 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 377 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 378 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 379 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 380 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 381 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 382 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 383 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 384 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 385 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 386 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 387 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 388 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 389 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 390 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 391 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 392 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 393 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 394 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 395 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 396 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 397 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 398 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 399 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 400 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 401 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 402 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 403 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 404 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 405 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 406 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 407 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 408 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 409 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 410 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 411 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 412 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 413 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 414 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 415 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 416 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 417 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 418 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 419 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 420 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 421 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 422 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 423 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 424 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 425 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 426 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 427 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 428 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 429 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 430 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 431 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 432 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 433 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 434 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 435 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 436 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 437 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 438 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 439 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 440 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 441 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 442 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 443 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 444 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 445 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 446 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 447 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 448 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 449 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 450 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 451 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 452 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 453 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 454 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 455 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 456 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 457 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 458 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 459 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 460 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 461 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 462 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 463 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 464 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 465 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 466 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 467 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 468 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 469 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 470 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 471 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 472 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 473 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 474 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 475 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 476 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 477 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 478 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 479 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 480 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 481 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 482 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 483 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 484 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 485 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 486 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 487 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 488 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 489 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 490 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 491 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 492 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 493 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 494 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 495 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 496 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 497 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 498 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 499 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 500 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 501 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 502 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 503 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 504 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 505 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 506 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 507 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 508 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 509 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 510 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 511 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 512 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 513 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 514 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 515 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 516 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 517 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 518 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 519 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 520 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 521 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 522 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 523 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 524 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 525 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 526 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 527 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 528 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 529 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 530 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 531 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 532 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 533 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 534 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 535 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 536 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 537 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 538 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 539 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 540 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 541 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 542 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 543 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 544 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 545 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
