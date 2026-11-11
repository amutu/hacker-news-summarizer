# Hacker News 热门文章摘要 (2026-11-12)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 谷歌工程师以48个AI智能体解析NASA激光雷达数据，72小时发现未登记玛雅遗址

**原文标题**: Google SWE points 48 AI agents at NASA Lidar, finds unmapped Maya pyramid in 72h

**原文链接**: [https://pietromiotti.com/latest/maya-site/?maya](https://pietromiotti.com/latest/maya-site/?maya)

一名谷歌软件工程师在秘鲁旅行时，受"宾厄姆发现马丘比丘"故事的启发，想到利用激光雷达穿透丛林树冠搜寻古代遗址。他召集48个AI智能体（含Gemini、ChatGPT、Claude、Grok），分析NASA获取的约1200平方公里玛雅地区激光雷达数据。智能体逐张审阅影像，识别出金字塔、广场、庭院等人工结构，并排除自然地形干扰。经文献与档案比对，一个位于山崖边缘、包含8至12米高椭圆金字塔及疑似蓄水池的玛雅村落未被任何已知记录收录。作者随即撰写报告并联系墨西哥国家人类学与历史研究所（INAH），72小时内获官方回复，确认该地点无已登记遗址。11月更新指出，该遗址实已被2025年学术论文记录，仅尚未录入INAH系统，属"重新发现"而非全新发现。作者强调，AI智能体应用远不止编程与数学，正开启全科学领域的变革，未来瓶颈仅剩好奇心与算力，他呼吁对全球进行激光雷达扫描，交由智能体探索未知。

---

## 12. 基于 WebGL2 的超写实沙粒模拟

**原文标题**: Hyper-Realistic Sand with WebGL2

**原文链接**: [https://av.github.io/safe-sand/](https://av.github.io/safe-sand/)

这是一款基于 WebGL2 和 JavaScript 构建的超写实沙粒模拟器，无需安装，直接在浏览器中即可运行，全面兼容手机、平板与桌面设备。用户可通过丰富交互体验逼真玩沙：用手指推移沙粒、倾斜设备让沙子自然滑落、摇晃设备使沙粒四散飞溅，并支持在画面上自由绘制。应用提供"倒沙""铺平""倾斜""摇晃""绘制"等操作模式，设有"沙粒表面"与"沙下层"两种视角切换，可随时倒入新沙补充堆积。此外，模拟器还支持音效与触觉反馈（Haptics），进一步增强沉浸感，让用户在任意屏幕上获得接近真实玩沙的视觉与触觉体验。

---

## 13. Show HN：Yogurt——免费、隐私优先、开源的 Granola 替代品

**原文标题**: Show HN: Yogurt – Free, private, open-source alternative to Granola

**原文链接**: [https://github.com/FrigadeHQ/yogurt](https://github.com/FrigadeHQ/yogurt)

Yogurt 是一款免费且注重隐私的开源 AI 会议笔记工具，定位为 Granola 的开源替代方案。其核心亮点在于记录通话时完全无需向会议中添加机器人（bot），从源头保护用户隐私。Yogurt 支持跨平台运行，覆盖 macOS 14.4+（Apple Silicon）、Windows 10 2004+（x64）及 Ubuntu 22.04+（x64 AppImage），最低要求 8GB 内存。项目采用 MIT 许可证，代码完全开源，用户可自由使用、构建和二次分发。Yogurt 由 Frigade 团队开发，官网为 yogurt.so，提供各平台安装包下载、使用帮助文档及本地构建指南。对于对数据隐私有较高要求的用户和团队而言，Yogurt 提供了一个不依赖云端机器人、可在本地完成会议录音与笔记生成的替代选择。

---

## 14. Atuin Threads：跨设备统一管理你的 AI 代理会话

**原文标题**: Atuin Threads: All your agent sessions on every machine

**原文链接**: [https://blog.atuin.sh/threads-agent-sessions/](https://blog.atuin.sh/threads-agent-sessions/)

Atuin 18.24 版本推出 Threads 功能，解决 AI 编码代理会话分散于不同工具和机器、难以搜索找回的问题。用户可在 Claude Code 上启动任务，再到 Codex 上无缝恢复，上下文完整保留。Threads 基于 Atuin 已有的端到端加密同步引擎构建，代理会话以追加式日志模型存储，支持官方托管、自建服务器或纯本地模式，数据采集为可选开启。目前支持 Claude Code、Codex、Pi、Omp、OpenCode 等代理，更多即将加入。通过 MCP 协议，代理可自主搜索和引用历史会话，无需人工整理上下文。文章展示了多个实用场景：借助历史会话恢复未上线的工作思路；Sentry 告警触发排查时，代理自动关联先前调查记录加速修复；在性能不佳的机器上分叉会话至更快设备继续基准测试，结果回传原机器生成修复方案。团队级会话共享功能正在开发中，旨在让代理上下文像 Git 分支一样可移交。安装后运行 atuin resume 即可使用。

---

## 15. 线性规划能否完成权重空间编程？

**原文标题**: Can a Linear Program Do Weight-Space Programming?

**原文链接**: [https://nathan.rs/posts/weight-space-lp/](https://nathan.rs/posts/weight-space-lp/)

摘要：MIT CSAIL 近期发布的 GPT-6 Astra 展示了"权重空间编程"能力——直接编辑神经网络权重而无需梯度训练。本文剖析了 Astra 修复 Qwen3.5-0.8B 思维循环问题的全过程：该模型 93% 的数学推理会陷入重复循环，Astra 耗时约 8 小时试错调整权重，将 MATH-500 准确率从 7.9% 提升至 48.1%。作者发现，Astra 的搜索本质上等价于一个线性规划问题——先定位残差流中的循环方向 u，再对特定层 MLP 权重做秩-1 修改 ΔW=uvᵀ，通过 LP 选择最优列及幅度。借助 GPU 求解器（约 1 分钟），仅改动约 16,000 个权重（Astra 改约 130,000 个）即可匹配效果。进一步分析表明，该编辑在功能上等价于推理时向残差流添加一个固定引导向量，且有效窗口极窄。作者还指出，拒答、谄媚等许多行为或可通过单一方向引导修正，如何将其嵌入权重应属同一类 LP 问题。

---

## 16. 微型追踪器记录帝王蝶从加拿大到墨西哥的万里迁徙

**原文标题**: The tiny transmitter tracking monarch butterflies' migration, Canada to Mexico

**原文链接**: [https://www.begiant.ca/stories/places/monarch-butterflies-tracking-conservation](https://www.begiant.ca/stories/places/monarch-butterflies-tracking-conservation)

加拿大温尼伯的帝王蝶"Eddie"佩戴重仅60毫克的BlūMorpho太阳能微型追踪器，从Living Prairie Museum出发，途经曼尼托巴、北达科他、明尼苏达等地，飞行1,258公里抵达堪萨斯州。今年秋季，加美两国共标记逾1,300只帝王蝶，其中温尼伯29只属能完成约4,000公里迁徙至墨西哥越冬的"超级世代"。BlūMorpho由新泽西CTT公司研制，每秒发射2.4GHz信号，100米内的智能手机均可接收并上传数据。该项目由82个跨国组织联合的"Project Monarch"推动，旨在填补迁徙路径中段的认知空白。数据显示部分个体已成功抵达墨西哥，但Eddie的信号已19天未更新，前景不明。帝王蝶迁徙依赖沿途"加油站"补能，而除草剂、气候变化和城市扩张正令其主要食物乳草大量消失。Project Monarch的数据帮助社区识别关键栖息地并建立"帝王蝶驿站"，种植本土乳草及蜜源植物，构建横跨加、美、墨三国的蝴蝶迁徙走廊。

---

## 17. Pomerado（YC F26）：将任意网站变为AI智能体的MCP接口

**原文标题**: Launch HN: Pomerado (YC F26) – Turn any website into an MCP for agents

**原文链接**: [https://pomerado.ai/](https://pomerado.ai/)

摘要：Pomerado是获YC F26支持的开源平台，核心功能是将任何网站——无论有无现成API——在数分钟内转化为可供AI智能体调用的MCP/API接口，替代传统浏览器代理方案。主要优势：性能上较Codex等浏览器代理快约7倍，单次任务成本低至2美分，并在25个真实业务应用基准测试中验证了2倍提速、30%更高准确率及千倍成本优势；具备自愈机制，网站界面变更时自动检测、修复并完成任务；支持由Claude Code、Codex等编码代理以自然语言指令直接生成集成；所有集成托管运行，用户零部署；内置多站点认证与2FA托管管理。应用场景覆盖医疗（如Anthem保险理赔查询）、采购（Coupa）、HR、银行、政府门户等。定价分三档：免费版每日100次调用；付费版50美元/月，每日1000次；企业版支持每日10万+调用、私有部署及审计日志。产品定位是为AI代理提供比浏览器自动化更快速、可靠、低成本的网站交互能力。

---

## 18. 利用电压故障注入唤醒矿卡中的A100

**原文标题**: Using voltage glitching to unleash the A100 in my mining card

**原文链接**: [https://blog.kate.land/posts/using-voltage-glitching-to-unlock-the-a100/](https://blog.kate.land/posts/using-voltage-glitching-to-unlock-the-a100/)

摘要：作者发现GA100芯片存在电压故障注入（VFI）漏洞，可操控熔丝控制器吹断任意熔丝，将CMP 170HX 8GB挖矿卡解锁为等效A100-80G。解锁后GPU启用全部可用SM（120–126个），FP16性能达85.858 TFLOP/s，约为零售A100的1.18倍，NVLink、PCIe Gen4、MIG等功能亦可恢复。技术层面，GA100熔丝控制器含16384个eFuse，分为常规、无熔丝（FF）、IFF及RIR四类。FF熔丝采用类JTAG链格式编码各功能模块的禁用选项字，后写入记录可覆盖先前记录，无需物理恢复熔丝。作者通过VFI绕过控制器写保护，向FF区域注入新行，将FBIO、FBPA、GPC、FBP等_disable选项字清零，解除对硬件模块的floorsweep封锁，再配合驱动层配置激活完整显存与全部计算单元。该漏洞已事先披露于NVIDIA安全团队。

---

## 19. 基于 WebAssembly 的浏览器端 Pharo

**原文标题**: Pharo in the Browser with WebAssembly

**原文链接**: [https://massimo-nocentini.github.io/pharo-vm/world.html](https://massimo-nocentini.github.io/pharo-vm/world.html)

摘要：本文展示了一个通过 WebAssembly 技术将 Pharo 虚拟机移植至浏览器环境的在线演示页面。Pharo 是 Smalltalk 语言的现代开源实现，以交互式开发环境著称。页面当前处于加载状态，显示"Loading Pharo…"提示，表明系统正在将 Pharo 虚拟机及其运行时环境以 WebAssembly 字节码形式在浏览器中初始化。该方案无需用户在本地安装任何软件或运行时，即可直接在浏览器中获得完整的 Smalltalk 编程与调试体验，体现了 WebAssembly 在跨平台、即时启动和接近原生性能方面的优势，为 Smalltalk 社区及需要轻量级动态语言环境的开发者提供了全新的使用方式。

---

## 20. 高海拔煮豆：明火炖煮与压力锅对比

**原文标题**: Beans at altitude: stovetop vs. pressure cooker

**原文链接**: [https://highaltitudelife.com/beans-at-altitude-stovetop-vs-pressure-cooker/](https://highaltitudelife.com/beans-at-altitude-stovetop-vs-pressure-cooker/)

高海拔（3000英尺以上）因大气压降低使水的沸点下降，导致豆类炖煮时间显著延长，且易出现受热不均、豆皮破裂等问题。本文对比了明火炖煮与压力锅两种方法在高海拔环境中的表现。明火炖煮优势在于全程可控，适合制作需要浓汤或精确控制豆皮完整度的菜肴，但耗时可达180分钟以上，且需频繁补充热水以防干烧。压力锅将锅内温度提升至240–250°F，大幅缩短烹饪时间（黑豆从近2小时降至20分钟），蒸发少、结果稳定，特别适合鹰嘴豆、大粒豆及存放较久的豆子。关键技巧包括：选用新鲜豆类并标注购买日期；充分浸泡（过夜最佳），浸泡水中加盐；烹饪早期加盐、延后加入番茄等酸性食材；硬水地区使用过滤水；老豆可少量添加小苏打。压力锅建议自然泄压15至20分钟以防泡沫溢出，装量不超过半锅。最佳实践是标准化流程——固定一种锅、一种比例、一种豆子，记录数据并连续测试三批，通过对比实验找到最适合自己的方法。两者并非优劣之分，而是各适其用：追求效率选压力锅，追求风味与掌控选明火。

---

## 21. 该多献几头羊了

**原文标题**: We need more goat sacrifices

**原文链接**: [https://www.experimental-history.com/p/we-need-more-goat-sacrifices](https://www.experimental-history.com/p/we-need-more-goat-sacrifices)

本文以"献祭山羊"喻指推行社会政策前应有的程序性谦卑，核心论点是：大多数善意干预实际上并不奏效。作者列举了跨党派的失败案例——学校改善拨款、"一孩一笔记本"、疫苗宣传、医疗补助工作要求、禁欲教育等，效果皆为零或负面。他引用社会学家罗西的"评估铁律"：大型社会项目的净预期影响为零，越试图改变人的项目越可能失效。文章进而剖析"控制幻觉"：人们因怀有意图便坚信干预必然奏效，却忽视实证。现实中，大量联邦项目和资助的STEM计划根本不做效果评估；亿万富翁为医学院免学费也未能改变学生专业选择；甚至"直接给穷人钱"这一常识方案，随机对照试验也反复显示对幸福感无显著提升。作者并非主张停止一切行动，而是呼吁：在介入他人生活之前，先承认我们一无所知，先用证据验证方案是否有效，而非凭良好意图便贸然推进。

---

## 22. 软件工程中的AI、活动与成果

**原文标题**: AI, activity, and outcomes in software engineering

**原文链接**: [https://cabird.com/talks/shipping-faster/](https://cabird.com/talks/shipping-faster/)

Christian Bird（Dryden Technology Group）于2026年10月30日在加州大学尔湾分校软件工程研讨会上发表演讲，以"为何我们仍未更快交付软件"为切入点，剖析AI对软件工程的真实影响。Bird提出"活动-成果差距"概念，指出AI编码工具虽显著增加了代码生成、审查等"活动量"，却未有效转化为可上线的"成果"，AI本身无法自动解决软件工程问题。演讲关联多篇2026年研究，涵盖：不同代AI编码工具在"写代码"与"交付代码"上的生产力差异（NBER工作论文）；代码审查Agent在缺陷检测中的基准测试；开发者对AI自主性的接受边界——即在哪些环节拒绝全自主决策；以及个体与团队采用生成式AI工具的驱动因素（ICSE 2026）。演讲核心观点是：从"产出代码"到"成功交付"之间存在系统性鸿沟，行业不应将工具使用量等同于工程效能，而应聚焦端到端的交付成果与组织流程变革。

---

## 23. 计算机图形学知识全书

**原文标题**: The Computer Graphics Book of Knowledge

**原文链接**: [https://www.cs.cmu.edu/~ph/nyit/masson/history.htm](https://www.cs.cmu.edu/~ph/nyit/masson/history.htm)

本文系统梳理了计算机图形学（CG）从1940年代至1960年代末的发展脉络。CG最初诞生于1950年代贝尔实验室、波音公司等研究机构，后在MIT、犹他大学等高校蓬勃发展，并于1970年代经Xerox PARC推动进入影视领域。1940年代，MIT的Moon和Spencer教授以数学模型手工拼贴出首个辐射度图像。1950年代，John Whitney Sr.率先以模拟计算机辅助艺术创作；贝尔实验室的VanderBeck、Noll等开创CG动画；Boeing的Bill Fetter进行早期矢量CAD实验；MIT的Whirlwind计算机实现向量图形显示与光笔输入。1960年代，Ivan Sutherland于1962年博士论文提出Sketchpad系统，成为交互式图形学里程碑；Dave Evans在犹他大学建立博士项目，培养Alan Kay、Ed Catmull等业界先驱；Spacewar成为首个流行图形游戏；通用汽车与IBM联合开发DAC-1，为首个计算机辅助绘图系统。John Whitney Sr.从模拟到数字的创作历程贯穿整个时代。本文还涉及ARPA基金对学术的推动及CG在工业、建筑、军事等领域的早期应用。

---

## 24. Show HN：Neovim 浮动窗口版 Godbolt（支持 C/C++/Rust）

**原文标题**: Show HN: Godbolt-in-a-floating-window for Neovim (C, C++, Rust)

**原文链接**: [https://github.com/0xdeadf1sh/AssemblyForNeovim](https://github.com/0xdeadf1sh/AssemblyForNeovim)

AssemblyForNeovim 是一款 Neovim 插件，将 Godbolt 在线汇编查看器的核心功能集成进编辑器，可在浮动窗口中实时展示 C、C++ 和 Rust 代码对应的汇编输出。安装仅需通过 lazy.nvim 添加一行配置。使用方式简洁：普通模式下按 <leader>a 显示光标所在函数的汇编；视觉模式下按 <leader>a 或执行 :'<,'>Asm 可编译选定的代码段。浮动窗口内支持 + 和 - 切换编译器优化级别（-O0 至 -O3），R 键重新编译，q 键关闭。插件要求系统 PATH 中已安装 cc/c++ 或 rustc/cargo，并能自动识别项目中的 compile_commands.json 以获取正确的编译参数，无需额外手动配置。该工具适合在开发或调试阶段快速查看底层机器码，省去在浏览器中切换 Godbolt 网站的步骤，对关注性能与底层实现的开发者尤为实用。

---

## 25. TimeNet：面向时序基础模型的开源数据基础设施

**原文标题**: TimeNet: Open-source data infrastructure for Temporal Foundation Models

**原文链接**: [https://github.com/OpenTSLM/TimeNet](https://github.com/OpenTSLM/TimeNet)

TimeNet是一个预发布的开源项目，旨在解决时序数据集格式不兼容的问题。其核心贡献是统一的TimeF存储格式及一套用于查找、构建、下载和加载时序数据集的API，仅负责数据层，模型训练与评估仍由用户自有框架完成。TimeF版本包含manifest.json（元信息）、control.duckdb（层级与关系）及Parquet/Zarr值平面（信号数据），由连接器将原始数据源转换生成并存入不可变注册表，客户端读取时无需加载对应连接器。项目为uv工作区，含timenet（TimeF模型、读写器、注册表、SDK与CLI）和timenet-connectors（数据集连接器及构建工具）两个包，要求Python 3.11及以上。当前项目正举办在线黑客松，鼓励开发者接入数据集并训练时序AI模型（如OpenTSLM），探索预测、分类、推理等场景。TimeNet采用MIT许可证，但各数据集保留其原始授权条款。

---

## 26. 从注意力到Mamba：跨架构蒸馏方案

**原文标题**: Attention to Mamba: A Recipe for Cross-Architecture Distillation

**原文链接**: [https://machinelearning.apple.com/research/attention-mamba-distillation](https://machinelearning.apple.com/research/attention-mamba-distillation)

状态空间模型（SSM，如Mamba）凭借低内存消耗与高生成吞吐量，已成为Transformer的有力替代。然而，社区在Transformer训练上积累了丰富经验与大量预训练模型。为在复用已有Transformer知识的同时推进SSM的落地，本文提出将注意力模型蒸馏至Mamba架构的有效方案。已有研究表明，Transformer到Mamba的朴素蒸馏难以保持教师性能，常需依赖混合架构弥补。本文提出两阶段蒸馏策略：第一阶段借助核技巧将Transformer蒸馏为线性注意力模型；第二阶段将线性注意力进一步蒸馏为不含任何注意力模块的改进型Mamba。实验显示，在Pythia-1B规模上，蒸馏后纯Mamba模型困惑度为14.01，接近教师模型的13.86，下游任务表现良好，仅在依赖上下文回忆的任务上存在一定差距。此外，文章在10B token规模下开展了系统消融实验，涵盖序列混合器架构对比、模型规模与蒸馏token总量的缩放分析，以及两阶段间token分配的敏感性分析，充分验证了所提方案的有效性与稳健性。

---

## 27. 弗吉尼亚理工大学Mac超级计算机的力量与传承

**原文标题**: The Power and Legacy of Virginia Tech's Mac-Based Supercomputers

**原文链接**: [https://512pixels.net/2026/11/va-tech-system-x-system-g/](https://512pixels.net/2026/11/va-tech-system-x-system-g/)

文章回顾了超级计算机从早期专用机器到采用商用组件的发展脉络，重点讲述弗吉尼亚理工大学以苹果硬件构建超级计算机的传奇历程。2003年，该校用1100台Power Mac G5组装出"System X"（俗称"Big Mac"），以仅520万美元的成本达到10 TFLOPS，位列全球第三、学术机构第一，而当时全球最快的地球模拟器造价高达4亿美元。师生自行开箱装柜，效率惊人。2004年，系统升级为1100台Xserve G5机架服务器，性能提升至12.25 TFLOPS，跻身TOP500第七名，成本仅为同类系统的五分之一。2008年，该校又推出由324台Mac Pro组成的"System G"，主打绿色计算，成为全球首个大规模能效感知研究集群，造价仅120万美元。系统设计师Varadarajan与绿色计算先驱Cameron等人在系列项目中发挥了核心作用。弗吉尼亚理工的Mac超算系列以极低成本实现了顶尖性能，在学术界留下了深远影响。

---

## 28. 展示 HN：Micron——兼具 C 语言能力的 Oberon 编程语言

**原文标题**: Show HN: Micron – Oberon with the Power of C

**原文链接**: [https://github.com/rochus-keller/Micron](https://github.com/rochus-keller/Micron)

Micron（MicroOberon 的缩写）是一种系统编程语言，语法类似 Oberon+，能力对标 C。它融合 Oberon 的模块化、严格性与简洁性，以及 C 的灵活性，可统一用于启动代码、驱动程序、操作系统内核及普通应用，并可直接调用 C 而无需包装。语言引入"级别"机制（0 至 5 级），模块只能导入同级或更低级模块，从而防止内核意外依赖堆内存等高层特性。Micron 用语言特性替代预处理器，并提供泛型编程、内联及编译时过程等能力。项目包含编译器（micc）、MIL 解释器及 IDE，已迁移约 13 万行示例代码，涵盖 Smalltalk-80、1976 年 P4 Pascal 编译器、Scheme 9 虚拟机及 Project Oberon 操作系统（运行于 RISC-V）。项目自 2024 年 1 月启动，目前编译器与解释器已就绪，原生后端和 C 转译器仍在开发中，支持 Linux x86_64 预编译版本及 RISC-V 仿真。另配有免费教材，采用 GPL 2/3 许可。

---

## 29. A C++ Quicksort Faster Than std:sort

**原文标题**: A C++ Quicksort Faster Than std:sort

**原文链接**: [https://tiki.li/blog/about_blqsort](https://tiki.li/blog/about_blqsort)

文章之前已经处理过

---

## 30. 我向所有电视厂商抛出17问：它们究竟如何"监视"你？

**原文标题**: I asked every TV manufacturer 17 questions about how they spy on you

**原文链接**: [https://www.theverge.com/tech/1012372/tv-privacy-acr-questions](https://www.theverge.com/tech/1012372/tv-privacy-acr-questions)

在LG被曝通过电视搜集用户隐私后，The Verge记者向亚马逊、苹果、谷歌、LG、三星、Roku、TCL等11家电视及流媒体公司发出17个是非问题，涵盖麦克风监听、音频存储与传输、屏幕截图采集、观看记录追踪等核心隐私议题。目前前三大电视厂商及主要流媒体设备商均已回应，但海信完全无视、松下、索尼、Vizio均未作答。结果显示，多数厂商的麦克风仅在用户主动触发（按键或唤醒词）时启动，音频默认不存储；自动内容识别（ACR）技术虽普遍使用，但多为可选功能。然而研究显示，即使用户选择退出，Vizio、三星和Roku仍可能继续传输部分数据。文章呼吁厂商以简洁直白的方式回应，而非以冗长隐私政策搪塞，让消费者的知情权和选择权得到切实保障。

---

