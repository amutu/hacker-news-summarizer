# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-12.md)

*最后自动更新时间: 2026-11-12 04:57:27*
## 1. AWS终于推出了自己的AWS模拟器

**原文标题**: AWS Finally Built Its Own AWS Emulator

**原文链接**: [https://github.com/aws/aws-emulator](https://github.com/aws/aws-emulator)

AWS Emulator是AWS推出的本地API模拟器，开发者无需AWS账户即可在本地、开发服务器或CI环境中测试软件，请求发往本地模拟器而非真实AWS，无额外费用。该工具无图形界面，通过环境变量将CLI或SDK指向模拟器端点即可使用，也支持嵌入Rust测试的进程内模式，并可通过AI编码代理一键配置。模拟器仅适用于开发与测试，不可用于生产或安全场景。从源码构建需Rust工具链、C编译器及至少100GB磁盘，支持Linux（x86_64/aarch64），Windows和macOS建议用Docker运行。项目采用每服务一crate的架构，以Smithy模型驱动协议。遥测默认开启，可通过命令行参数、环境变量或配置文件关闭。软件以CC0 1.0协议发布（vendor目录除外），不接收外部PR，问题通过GitHub Issues反馈。

---

## 2. Tim Peters 逝世

**原文标题**: Tim Peters has died

**原文链接**: [https://discuss.python.org/t/in-memoriam-tim-peters-1952-2026/110028](https://discuss.python.org/t/in-memoriam-tim-peters-1952-2026/110028)

Python之父Guido van Rossum发文悼念Tim Peters，宣布他于今年7月15日离世。Tim Peters是Python早期核心贡献者，对语言发展影响深远，最广为人知的成就是撰写了"Python之禅"（PEP 20）。早在Python发布初期他便加入项目，说服Guido支持整数与浮点数的混合运算，此后从未停止贡献。他长期活跃于Python邮件列表，以"Timbot"昵称为用户耐心答疑，回答中常带温和幽默（以<wink>为标记），并自称"代Guido传话"。他深度参与语言设计讨论，凭借深厚的数学功底与编译器开发经验，多次帮助团队避免设计失误、攻克技术难题，为早期核心开发奠定了严谨而包容的基调。2002年，他为Python列表贡献了Timsort排序算法，该算法后被Java和Android等系统广泛采用。Guido称其为导师与语言共同设计者，感慨道："没有Tim，Python不会成为今天的模样。"

---

## 3. 为何我们仍如此拼命工作？

**原文标题**: Why are we still working this hard?

**原文链接**: [https://wilsoniumite.com/2026/11/11/why-are-we-still-working-this-hard/](https://wilsoniumite.com/2026/11/11/why-are-we-still-working-this-hard/)

1973年以来美国劳动生产率提升2.5倍，原需40小时的工作现仅16小时，但国民工时反而增长10%。凯恩斯1930年预言百年后产出增四至八倍、工作降至十五小时/周，产出目标已实现（2024年达7.8倍），闲暇却从未到来。作者指出工资兼具价格、票据、场所三重功能，工业化时代机器"有力无智"，三者方向一致；如今AI能看、读、写、决策，价格与票据功能开始撕裂。十八小时"消失"的根源在于：自动化首先替代常规岗位，压低普通工资（价格失灵），产出份额向资本与顶层集中（票据受损）。剩余六小时则因工资是唯一生存通道而被迫消耗——人无法拒绝，价格信号失真，大量低效劳动滋生，经济系统无法发出"够了"的信号。作者构建的简单模型显示：机器进步百倍后工资收入占比将从60%降至17%，万倍时不足1%。文章核心追问：当机器全面超越人力，以工资为唯一分配渠道的模式必然崩溃，出路在于在技术跃迁之前重新思考"工资究竟为了什么"，重建分配机制。

---

## 4. 烟雾误报险淹Jane Street纽约数据中心

**原文标题**: A false smoke alarm almost drowned Jane Street's only NYC datacenter

**原文链接**: [https://michael.bacarella.com/2026/11/10/false-smoke-alarm-jane-street-datacenter/](https://michael.bacarella.com/2026/11/10/false-smoke-alarm-jane-street-datacenter/)

摘要：Jane Street系统团队作者 recount 了一起惊险事故：承包商在数据中心隔壁施工时扬起灰尘，误触烟雾报警器。烟雾系统联动关闭机房空调，而喷淋管道随即充水待命——机房温度若攀至150°F，喷淋头将集体爆裂，数据中心面临水淹灭顶之灾。作者住在水街、距公司步行仅9分钟，接到香港同事来电后狂奔上33楼，在酷热中逐排拔除所有设备电源线，温度在143.6°F时停止上升，化险为夷。因美股已收盘，损失甚微。事后团队保留了机房紧邻交易厅的布局——这一设计源于核潜艇出身的合伙人留下的"手动拔线"风险文化——但决定加强监控。作者随即用OCaml编写温度巡检脚本：每分钟轮询所有Linux服务器传感器取均值，异常即报警全组。他坦言，与其依赖空调或专用温湿度传感器的遥测，不如直接"问机器本身"，以最朴素的方式守住最后一道防线。

---

## 5. AWS 模拟器与代理时代工程师的新使命

**原文标题**: AWS Emulator and the engineer's job when agents write the code

**原文链接**: [https://www.allthingsdistributed.com/2026/11/aws-emulator-and-the-engineers-job-when-agents-write-the-code.html](https://www.allthingsdistributed.com/2026/11/aws-emulator-and-the-engineers-job-when-agents-write-the-code.html)

2026年11月，AWS发布AWS模拟器（AWS Emulator），为AI编码代理提供本地化AWS服务测试环境，覆盖逾200项服务、400余个API模型，代码以CC0协议开源。文章由AWS CTO Werner Vogels与架构师Swami Sivasubramanian联合撰写。文章回顾了分布式系统测试的演进：二十年前，团队为基于Paxos协议的分布式锁服务"Alf"在JVM内构建全系统模拟环境，通过故障注入与TLA+形式化推理在上线前消除并发缺陷，但面对如今200多项服务，手工搭建已不可持续。核心创新在于：代理可从公开Smithy API模型出发，通过"保真测试"——先在真实AWS上验证行为，再驱动模拟器通过同一测试——自动构建并修正本地模拟器，全部代码由代理编写与测试，每次变更须经含多个安全代理对抗性审查的合并门禁方可合入。文章强调，当代理承担编码与自检时，工程师职责转向设计规格、测试与合并门禁等"护栏"。Vogels举例：用代理重建Alf复制引擎，无测试环境耗时四个月，提供规格与测试后仅两小时完成。软件质量最终取决于工程师为代理设计的约束体系。

---

## 6. 退休储蓄正助推AI泡沫

**原文标题**: Retirement Savings Are Fueling the AI Bubble

**原文链接**: [https://lpeproject.org/blog/your-retirement-savings-are-fueling-the-ai-bubble/](https://lpeproject.org/blog/your-retirement-savings-are-fueling-the-ai-bubble/)

上周四科技股单日蒸发3.2万亿美元，"科技七巨头"因AI巨额投入沦为"现金焚烧器"，市场恐慌加剧。文章指出一个公众尚未充分意识到的关键问题：普通劳动者的退休储蓄正通过私募股权和私募信贷基金，大规模为AI数据中心建设融资。特朗普政府已首次开放15万亿美元私人退休账户进入私募基金市场，而私募股权公司承担了25%至30%的数据中心融资，使退休投资者在不知情的情况下背负了AI泡沫的巨大风险。当前局面令人联想到2008年金融危机：评级机构警告"超级计算巨头"信用质量持续恶化，信用违约互换交易急剧攀升，数据中心行业融资关系高度交织。近期选举中，选民大规模反对数据中心建设，德州、佐治亚等州新当选官员承诺限建或暂停，但已累积的海量债务风险不会因此消除。文章呼吁养老金受托人撤出与数据中心相关的未公开风险资产，将退休储蓄转向保障性住房、可再生能源等生产性投资，并建议政府建立公共资产管理机构，改变养老金配置结构。迈克尔·伯里警告，最富有的企业投入再多资本也无法阻止泡沫最终破裂，而这一次，危机已清晰可见。

---

## 7. Show HN：我重制了《Papers Please》，玩家化身 YC 投资人决定创业公司去留

**原文标题**: Show HN: I recreated Papers Please but you're deciding which YC startups to fund

**原文链接**: [https://termsheetplease.com/](https://termsheetplease.com/)

摘要：Bo Lau 在 Hacker News 上展示了一款名为《Term Sheet, Please》的网页游戏，灵感源自经典边境检查模拟游戏《Papers Please》。游戏中，玩家扮演 Y Combinator（YC）的投资官，在"路演日（Demo Day）"期间逐一审阅创业公司提交的材料，依据规则与事实做出投资、通过或暂缓（Fund / Pass / Hold）的决策。游戏界面融入了 YC 投资流程的术语，如"Term Sheet（投资条款）""决策表""DEMO DAY ACT 01"等，营造出沉浸感。界面包含"调用下一位创始人""检查文件""点击文件中的事实"等交互环节，整体风格还原了《Papers Please》压抑、紧张的审查氛围。该作品以纯网页形式运行，需启用 JavaScript 才能体验。

---

## 8. 加速检索，提升RAG的效率与质量

**原文标题**: Faster Retrieval for Better, More Efficient RAG

**原文链接**: [https://machinelearning.apple.com/research/faster-retrieval](https://machinelearning.apple.com/research/faster-retrieval)

最大内积搜索（MIPS）是RAG与推荐系统的核心，但传统近似方法假设查询与键分布相似，而RAG中短查询与长文本键差异显著，造成性能损失。Apple团队在ICML 2026提出以学习支撑函数摊销MIPS的新方法，将MIPS重新阐释为凸分析中的支撑函数问题，通过离线预训练小型神经网络加速在线检索。核心方案包含两种网络：SupportNet基于输入凸神经网络（ICNN）逼近各数据簇的支撑函数，将质心路由升级为按支撑分数路由，在Natural Questions数据集上，小模型达到95%路由召回率比质心路由快1.9倍；KeyNet直接预测最佳匹配键，作为查询改写器接入现有IVF索引，达到99%召回率仅需原始方法约1/8时间，扫描量减少约11倍。两者均以回归方式训练，从实际查询分布采样，以穷举搜索结果为监督信号，一次性训练后即可部署。实践建议：追求推理速度选KeyNet，需校准分数或计算受限选SupportNet，超大规模系统可联合使用。

---

## 9. Gemini 决策 API：极速校准的多模态决策引擎

**原文标题**: Gemini Decisions API

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/gemini-decisions-api/](https://blog.google/innovation-and-ai/technology/developers-tools/gemini-decisions-api/)

Google DeepMind 正式发布 Gemini 决策 API，搭载全新 Gemini Decision 1 模型。该 API 支持在单次前向推理中同时处理文本、图像、音频、视频及 PDF 等多模态输入（最高 256K tokens），并一次性评估多达 1000 道是非判断、多选及量表评分题目，端到端延迟仅 150–250 毫秒。模型跳过逐词生成，直接为候选选项输出概率与置信度，零输出 token 费用，输入定价仅 0.10 美元/百万 token，较同类产品便宜近 5 倍。API 提供三种决策原语：是/否（noul）、多选（choice，2–255 项）及有序量表评分（score），每项答案附带 0–1 置信度，便于将模糊结果转交人工复核。内部落地方面，Gemini Notebook 借此实现实时模型路由、降低 40% 延迟；Stitch 完成秒级可交互线框图；CC 在 200+ 表情中即时选择；搜索团队将其用作 MCP 工具的安全层。用户可在 Google AI Studio 免费获取 API 密钥，生态已集成 OpenRouter、LangChain、Vercel、LiteLLM 等平台，Google Cloud 支持即将上线。

---

## 10. IBM量子处理器Nighthawk实现速度与质量新突破，2027年将突破千比特

**原文标题**: IBM Quantum Nighthawk Demonstrates New Levels of Speed and Quality

**原文链接**: [https://newsroom.ibm.com/2026-11-11-ibm-quantum-nighthawk-demonstrates-new-levels-of-speed-and-quality,-with-plans-to-scale-beyond-1,000-qubits-in-2027](https://newsroom.ibm.com/2026-11-11-ibm-quantum-nighthawk-demonstrates-new-levels-of-speed-and-quality,-with-plans-to-scale-beyond-1,000-qubits-in-2027)

2026年11月11日，IBM宣布新一代量子处理器Nighthawk r3，可在520个量子比特上精确执行10,000个量子操作，并计划于2027年将两台r3通过10个l-coupler互联，构建超1,000量子比特的统一系统。当前，Nighthawk r2已实现每秒10万样本的采样速度，支持120量子比特上超7,500个操作。E.ON、Algorithmiq、Q-CTRL等合作伙伴累计在r2上运行超340亿条量子电路，性能提升最高达19倍；E.ON在能源电网量子机器学习上实现15倍加速，IBM与橡树岭国家实验室的合作实验亦达12倍加速。在量子与经典计算融合方面，IBM量子平台将高性能经典计算与量子计算整合于统一环境，与RIKEN合作将量子对角化工作流提速5倍，与克利夫兰诊所合作自动处理6.08亿样本。IBM还联合橡树岭国家实验室及AMD推出量子纠错协同设计平台，将Nighthawk与Umbra高性能计算系统物理共置。IBM强调，迈向容错量子计算需量子与经典资源深度整合。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 2 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 3 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 4 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 5 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 6 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 7 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 8 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 9 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 10 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 11 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 12 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 13 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 14 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 15 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 16 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 17 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 18 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 19 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 20 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 21 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 22 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 23 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 24 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 25 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 26 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 27 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 28 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 29 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 30 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 31 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 32 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 33 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 34 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 35 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 36 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 37 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 38 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 39 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 40 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 41 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 42 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 43 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 44 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 45 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 46 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 47 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 48 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 49 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 50 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 51 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 52 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 53 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 54 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 55 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 56 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 57 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 58 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 59 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 60 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 61 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 62 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 63 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 64 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 65 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 66 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 67 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 68 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 69 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 70 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 71 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 72 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 73 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 74 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 75 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 76 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 77 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 78 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 79 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 80 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 81 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 82 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 83 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 84 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 85 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 86 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 87 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 88 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 89 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 90 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 91 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 92 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 93 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 94 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 95 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 96 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 97 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 98 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 99 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 100 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 101 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 102 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 103 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 104 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 105 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 106 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 107 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 108 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 109 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 110 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 111 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 112 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 113 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 114 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 115 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 116 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 117 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 118 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 119 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 120 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 121 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 122 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 123 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 124 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 125 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 126 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 127 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 128 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 129 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 130 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 131 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 132 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 133 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 134 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 135 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 136 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 137 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 138 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 139 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 140 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 141 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 142 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 143 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 144 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 145 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 146 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 147 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 148 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 149 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 150 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 151 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 152 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 153 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 154 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 155 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 156 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 157 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 158 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 159 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 160 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 161 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 162 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 163 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 164 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 165 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 166 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 167 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 168 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 169 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 170 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 171 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 172 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 173 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 174 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 175 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 176 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 177 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 178 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 179 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 180 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 181 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 182 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 183 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 184 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 185 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 186 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 187 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 188 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 189 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 190 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 191 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 192 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 193 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 194 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 195 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 196 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 197 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 198 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 199 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 200 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 201 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 202 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 203 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 204 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 205 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 206 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 207 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 208 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 209 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 210 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 211 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 212 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 213 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 214 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 215 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 216 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 217 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 218 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 219 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 220 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 221 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 222 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 223 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 224 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 225 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 226 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 227 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 228 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 229 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 230 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 231 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 232 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 233 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 234 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 235 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 236 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 237 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 238 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 239 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 240 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 241 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 242 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 243 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 244 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 245 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 246 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 247 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 248 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 249 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 250 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 251 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 252 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 253 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 254 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 255 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 256 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 257 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 258 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 259 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 260 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 261 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 262 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 263 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 264 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 265 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 266 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 267 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 268 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 269 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 270 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 271 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 272 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 273 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 274 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 275 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 276 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 277 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 278 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 279 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 280 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 281 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 282 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 283 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 284 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 285 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 286 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 287 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 288 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 289 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 290 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 291 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 292 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 293 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 294 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 295 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 296 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 297 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 298 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 299 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 300 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 301 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 302 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 303 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 304 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 305 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 306 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 307 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 308 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 309 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 310 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 311 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 312 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 313 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 314 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 315 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 316 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 317 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 318 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 319 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 320 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 321 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 322 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 323 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 324 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 325 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 326 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 327 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 328 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 329 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 330 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 331 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 332 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 333 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 334 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 335 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 336 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 337 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 338 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 339 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 340 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 341 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 342 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 343 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 344 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 345 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 346 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 347 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 348 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 349 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 350 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 351 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 352 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 353 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 354 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 355 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 356 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 357 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 358 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 359 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 360 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 361 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 362 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 363 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 364 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 365 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 366 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 367 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 368 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 369 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 370 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 371 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 372 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 373 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 374 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 375 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 376 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 377 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 378 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 379 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 380 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 381 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 382 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 383 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 384 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 385 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 386 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 387 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 388 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 389 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 390 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 391 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 392 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 393 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 394 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 395 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 396 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 397 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 398 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 399 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 400 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 401 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 402 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 403 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 404 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 405 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 406 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 407 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 408 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 409 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 410 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 411 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 412 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 413 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 414 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 415 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 416 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 417 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 418 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 419 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 420 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 421 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 422 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 423 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 424 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 425 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 426 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 427 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 428 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 429 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 430 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 431 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 432 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 433 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 434 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 435 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 436 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 437 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 438 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 439 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 440 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 441 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 442 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 443 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 444 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 445 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 446 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 447 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 448 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 449 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 450 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 451 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 452 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 453 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 454 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 455 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 456 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 457 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 458 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 459 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 460 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 461 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 462 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 463 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 464 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 465 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 466 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 467 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 468 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 469 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 470 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 471 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 472 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 473 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 474 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 475 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 476 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 477 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 478 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 479 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 480 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 481 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 482 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 483 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 484 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 485 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 486 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 487 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 488 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 489 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 490 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 491 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 492 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 493 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 494 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 495 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 496 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 497 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 498 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 499 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 500 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 501 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 502 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 503 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 504 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 505 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 506 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 507 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 508 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 509 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 510 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 511 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 512 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 513 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 514 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 515 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 516 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 517 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 518 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 519 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 520 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 521 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 522 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 523 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 524 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 525 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 526 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 527 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 528 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 529 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 530 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 531 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 532 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 533 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 534 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 535 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 536 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 537 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 538 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 539 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 540 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 541 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 542 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 543 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 544 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 545 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 546 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 547 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 548 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 549 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 550 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 551 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 552 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 553 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 554 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 555 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 556 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 557 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 558 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 559 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 560 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 561 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 562 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 563 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 564 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 565 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 566 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 567 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 568 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 569 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 570 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 571 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 572 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 573 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 574 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 575 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 576 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 577 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 578 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 579 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 580 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 581 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 582 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 583 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 584 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 585 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 586 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 587 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 588 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 589 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 590 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 591 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 592 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 593 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 594 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 595 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 596 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 597 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 598 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
