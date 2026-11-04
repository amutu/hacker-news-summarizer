# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-05.md)

*最后自动更新时间: 2026-11-05 04:56:49*
## 1. 人工智能正倒逼行业偿还四十年技术债务

**原文标题**: AI is forcing us to pay off 40 years of technical debt

**原文链接**: [https://spectrum.ieee.org/ai-in-cybersecurity-php2shell-vulnerability](https://spectrum.ieee.org/ai-in-cybersecurity-php2shell-vulnerability)

摘要：IEEE Spectrum计算与硬件编辑Dina Genkina在2026年11月的文章中指出，人工智能的爆发式发展正迫使整个技术行业直面并清偿累积长达四十年的技术债务。所谓技术债务，是过去数十年间软件与基础设施领域为追求开发速度而选择捷径所遗留的系统性问题——包括架构陈旧、代码不规范、遗留系统缺乏维护文档等。文章认为，AI大规模落地与部署对这些"老旧底子"提出了极高要求：训练和运行大模型需要高度结构化、可维护、低耦合的代码环境与计算基础设施，而大量依赖过时语言、非标准化接口和手工维护的旧系统根本无法承载现代AI工作负载。在AI竞赛的紧迫时间线下，企业已无法继续"带病运行"，不得不投入大量资源进行代码重构、系统迁移和基础设施现代化。文章强调，这一轮技术债务清偿并非自愿选择，而是AI时代的外部压力所倒逼的刚性转型，其代价高昂但不可避免。该视角为理解当前企业IT战略中"安全现代化"与"AI就绪化"并重的趋势提供了深层逻辑。

---

## 2. Go 全新 JSON API

**原文标题**: A new Go API for JSON

**原文链接**: [https://go.dev/blog/jsonv2](https://go.dev/blog/jsonv2)

Go 1.27 正式发布了 encoding/json/v2 与 encoding/json/jsontext 两个新包，旨在解决旧版 encoding/json 长期存在的行为缺陷、API 不足与性能瓶颈。旧版存在无效 UTF-8 静默通过、接受重复键名、nil 切片/映射序列化为 null 引发跨语言兼容问题、大小写不敏感匹配及缺乏流式处理等缺陷。新架构将 JSON 处理分为语法层（jsontext，提供真正流式的 Encoder/Decoder）与语义层（json/v2，负责 Go 值与 JSON 值的转换）。新版 API 以选项为一等参数，大幅提升灵活性；新增 MarshalerTo 和 UnmarshalerFrom 流式接口，避免旧版 MarshalJSON/UnmarshalJSON 的双重解析与强制内存分配；并支持调用方通过 WithMarshalers 等函数为任意类型指定自定义序列化逻辑。行为方面，v2 默认拒绝无效 UTF-8 和重复键名、将 nil 切片/映射序列化为空数组/对象、采用大小写敏感匹配、重新定义 omitempty 语义。性能上，序列化速度与 v1 基本持平，反序列化性能提升最高达 10 倍。

---

## 3. Ripple-65B Preview：美国开源权重智能体编程新标杆

**原文标题**: Ripple-65B Preview: U.S. Open-Weight SOTA on Agentic Coding

**原文链接**: [https://www.ricursive.com/ripple](https://www.ricursive.com/ripple)

摘要：Ricursive Intelligence发布开源模型Ripple-65B Preview，在智能体编码基准TerminalBench 2.1上取得80.52分，刷新美国开源权重最先进纪录，显著超越Reflection Beam 501B、Meta Muse Spark等更大参数模型。模型基于12万亿tokens预训练，支持百万级上下文，采用80层稠密Transformer架构而非MoE，兼顾推理性能与低延迟生成，可高效运行于NVIDIA DGX Spark等本地设备。成本上，全程研发仅耗资3200万美元，为前代开源SOTA的十分之一。团队未外购后训练数据，自建合成数据管线与质量过滤体系，通过精心迭代的SFT与强化学习方案，仅用140万条rollout即达80.5分，较前代SOTA减少约70倍。架构采用"窄而深"设计，引入门控注意力、全局NoPE、值残差等技术，经多轮模型阶梯实验，累计将编码计算效率提升16倍。公司定位为全栈AI实验室，核心目标是实现模型与芯片的协同自改进，内部版本已驱动其AI芯片设计平台。模型现已在Hugging Face、Together AI、OpenRouter等平台上线。

---

## 4. 昆虫不再趋附LED灯

**原文标题**: Insects Don't Swarm at LED Lights

**原文链接**: [https://www.birdsoutsidemywindow.org/2026/11/03/insects-dont-swarm-at-led-lights/](https://www.birdsoutsidemywindow.org/2026/11/03/insects-dont-swarm-at-led-lights/)

过去，昆虫被户外灯光大量吸引的现象司空见惯，昆虫学家常借助光源与白布采集夜间昆虫。然而随着LED灯普及，这一现象正悄然消失。罗兰·拉姆回忆，童年时家中白炽灯前昆虫云集，壁虎也随之而来捕食；换成LED后，昆虫骤减，壁虎也消失不见。科学上，飞行昆虫依靠月光中的紫外线辨别方向、维持飞行姿态。白炽灯等传统光源会发射紫外线，使昆虫误以为是月光而不断盘旋聚集；而LED灯几乎仅发出可见光，不含紫外线，对昆虫的吸引力大幅降低。2016年英国布里斯托尔大学的实验证实，冷白与暖白两种LED吸引的昆虫数量均显著少于白炽灯和荧光灯，且两类LED之间无显著差异。昆虫趋光性下降对生态环境而言是利好消息——夜间人工光源对昆虫的干扰已被认为是全球昆虫种群衰退的重要原因之一，LED不发射紫外线的特性有助于减轻光污染对野生动物及食物链的干扰，也有望降低虫媒疾病的传播风险。

---

## 5. 大语言模型可证明推理的研究进展

**原文标题**: Progress on provable inference for large language models

**原文链接**: [https://www.anthropic.com/research/provable-inference](https://www.anthropic.com/research/provable-inference)

摘要：本文介绍Anthropic联合EPFL等机构在"可证明推理"（PI）领域的最新进展，核心成果为开源系统FlashProve。针对用户无法验证AI响应确实来自指定模型的问题，该系统采用zkSNARK（零知识简洁论证）技术，使模型提供方在隐藏权重的前提下，向用户提交可快速验证的密码学证明。在400B参数混合专家模型（Llama 4 Maverick，4-bit量化）上，单张H100 GPU每秒可生成约110个token的证明，证明大小约19MB/1024 tokens，速度为通用推理库vLLM的70–95倍，远超以往开源方案。系统分离线提交权重承诺与在线生成推理证明两阶段，保证证明的完备性与可靠性。作者还以Lean形式化语言对顶层安全保证进行了可审计的形式化验证，并配套交互式定理可视化工具。应用场景涵盖四方面：AI发展节奏监管、推理服务器篡改检测、文本溯源（如验证代码确实经前沿模型审查）、以及合规模型审批。项目以Apache 2.0协议开源了代码（含C++快速验证器与Lean验证器）、技术报告及协议规范，旨在推动PI技术生态发展，兼具AI安全与监管意义。

---

## 6. 高通云AI 100 Ultra——150W AI加速卡，搭载128GB内存与548GB/s带宽

**原文标题**: Qualcomm Cloud AI 100 Ultra – 150W AI Accelerator Card with 128GB at 548GB/s

**原文链接**: [https://www.qualcomm.com/data-center/products/cloud-ai-100-ultra](https://www.qualcomm.com/data-center/products/cloud-ai-100-ultra)

摘要：高通（Qualcomm）发布Cloud AI 100 Ultra，这是一款面向数据中心的高性能AI推理加速卡。该产品单卡功耗为150W，配备128GB大容量内存，内存带宽高达548GB/s，旨在为云端AI推理工作负载提供强大算力支撑。作为高通云AI系列的旗舰型号，Cloud AI 100 Ultra主打高吞吐、低延迟的推理性能，适用于大语言模型生成、多模态推理及大规模并发推理等场景，帮助企业在有限功耗预算内最大化AI加速效率。该产品体现了高通在云端AI基础设施领域的持续投入，为其客户提供从边缘到云端的全场景AI加速方案。

---

## 7. Nvidia RTX Spark 加密固件致 Linux 推理速度降至 35%

**原文标题**: Nvidia RTX Spark encrypted firmware slows inference speed to 35% on Linux

**原文链接**: [https://www.mindstudio.ai/blog/linux-nvidia-rtx-spark-laptop](https://www.mindstudio.ai/blog/linux-nvidia-rtx-spark-laptop)

摘要：RTX Spark平台（MSI Prestige、Asus ProArt、Dell XPS等）搭载与DGX Spark同款GPU及最高128GB统一内存，面向AI开发者。双装Linux（如Omarchy）可行，桌面、4K 120Hz输出与GPU加速均可用，但插电后GPU频率被锁在约780MHz，而Windows下可达2.2GHz。实测GPT-OSS-120B推理：Windows 65.4 token/s，原生Linux仅13.9，性能缩水约65%。根源在于Windows专属的"Nvidia平台控制器与框架"管理CPU与GPU功率共享，其功率表经加密，仅Windows驱动可解密，Linux无法读取。有趣的是，拔掉电源后Linux性能反趋近Windows（61–67 token/s），问题仅在插电时出现，排除散热因素。内存方面，128GB统一内存默认将96GB划给GPU，仅Windows端可调整，Linux需先在Windows中释放。目前WSL是最佳折中方案，它运行于Windows驱动层，继承GPU满频加速，同时支持vLLM等Linux原生AI工具。彻底修复取决于Nvidia将平台控制器的功率管理逻辑移植至Linux驱动，否则原生Linux体验将持续受限。

---

## 8. AMD 预计第四季度营收将首次超越英特尔

**原文标题**: AMD expects to outsell Intel in Q4 for the first time in history

**原文链接**: [https://www.tomshardware.com/pc-components/cpus/amd-expects-to-outsell-intel-in-q4-for-the-first-time-in-history-usd17b-guidance-would-exceed-intels-projections](https://www.tomshardware.com/pc-components/cpus/amd-expects-to-outsell-intel-in-q4-for-the-first-time-in-history-usd17b-guidance-would-exceed-intels-projections)

AMD 公布第三季度财报，营收达 133.77 亿美元，创公司历史新高，同比增长 45%。数据中心业务贡献 85.5 亿美元，占总营收 64%，同比大增 97%，主要受益于 Epyc 服务器处理器需求强劲及 Instinct MI455X AI 加速器的推出，Meta、微软、OpenAI、Oracle 等已部署其 Helios 机架级系统。最引人注目的是，AMD 预计第四季度营收约 170 亿美元（同比增 66%），而英特尔同期预期为 150 至 160 亿美元，这意味着 AMD 季度销售额将史上首次超越英特尔，差距约 15 亿美元。与此同时，客户端与游戏业务营收为 37.22 亿美元，同比下降 8%，游戏产品因主机 SoC 订单减少及独立显卡需求疲软而大幅下滑。公司预计 2027 年 PC 出货量将两位数下跌，但仍计划在企业及高端消费领域保持优势。嵌入式业务营收同比增长 29% 至 11.1 亿美元，受益于航空航天、汽车及通信需求。AMD 展望 2027 年数据中心业务占比将超总营收 80%，服务器及 AI 加速器收入将大幅翻倍，成为公司增长的核心引擎。

---

## 9. 几乎没有人在用AI代理下DoorDash点餐订单

**原文标题**: Basically no one is using AI agents for their DoorDash orders

**原文链接**: [https://arstechnica.com/ai/2026/10/doordash-says-outside-ai-agents-have-only-led-to-hundreds-of-orders-so-far/](https://arstechnica.com/ai/2026/10/doordash-says-outside-ai-agents-have-only-led-to-hundreds-of-orders-so-far/)

DoorDash CEO Tony Xu在第三季度财报电话会上透露，AI代理在其平台上仅产生"数百单"，与当季近十亿总订单相比几乎可以忽略不计。Xu坦言这是"极低频使用场景"，并指出AI代理更适合复杂的高决策成本购买，而点餐这类简单任务，用户仍倾向于直接打开App完成。客观而言，DoorDash的第三方AI接入（MCP连接器）上线不足一个月，目前仅向少量早期合作伙伴开放，主要用于简化企业团餐场景。不过，DoorDash自营的"Ask DoorDash"AI助手数据亮眼：购物车构建速度提升五倍，客单价高出近50%，商品种类多约60%，且近半数订单流向用户此前未尝试过的本地餐厅。文章将当前AI代理点餐的早期阶段类比1994年Pizza Hut首次试水在线订餐，暗示多年后这一方式或将成为主流。Xu态度务实："我不逆技术大势，但也不会自欺欺人。"

---

## 10. OpenAI将收购皮埃尔计算机公司

**原文标题**: OpenAI to acquire Pierre Computer Company

**原文链接**: [https://openai.com/index/openai-to-acquire-pierre/](https://openai.com/index/openai-to-acquire-pierre/)

无法访问该文章链接

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 2 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 3 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 4 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 5 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 6 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 7 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 8 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 9 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 10 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 11 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 12 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 13 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 14 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 15 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 16 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 17 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 18 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 19 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 20 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 21 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 22 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 23 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 24 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 25 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 26 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 27 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 28 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 29 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 30 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 31 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 32 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 33 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 34 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 35 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 36 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 37 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 38 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 39 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 40 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 41 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 42 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 43 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 44 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 45 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 46 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 47 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 48 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 49 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 50 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 51 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 52 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 53 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 54 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 55 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 56 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 57 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 58 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 59 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 60 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 61 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 62 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 63 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 64 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 65 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 66 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 67 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 68 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 69 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 70 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 71 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 72 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 73 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 74 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 75 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 76 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 77 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 78 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 79 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 80 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 81 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 82 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 83 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 84 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 85 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 86 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 87 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 88 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 89 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 90 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 91 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 92 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 93 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 94 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 95 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 96 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 97 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 98 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 99 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 100 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 101 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 102 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 103 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 104 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 105 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 106 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 107 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 108 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 109 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 110 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 111 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 112 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 113 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 114 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 115 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 116 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 117 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 118 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 119 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 120 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 121 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 122 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 123 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 124 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 125 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 126 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 127 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 128 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 129 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 130 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 131 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 132 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 133 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 134 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 135 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 136 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 137 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 138 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 139 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 140 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 141 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 142 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 143 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 144 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 145 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 146 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 147 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 148 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 149 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 150 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 151 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 152 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 153 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 154 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 155 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 156 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 157 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 158 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 159 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 160 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 161 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 162 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 163 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 164 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 165 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 166 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 167 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 168 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 169 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 170 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 171 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 172 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 173 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 174 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 175 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 176 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 177 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 178 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 179 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 180 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 181 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 182 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 183 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 184 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 185 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 186 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 187 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 188 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 189 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 190 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 191 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 192 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 193 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 194 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 195 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 196 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 197 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 198 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 199 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 200 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 201 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 202 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 203 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 204 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 205 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 206 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 207 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 208 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 209 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 210 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 211 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 212 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 213 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 214 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 215 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 216 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 217 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 218 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 219 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 220 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 221 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 222 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 223 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 224 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 225 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 226 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 227 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 228 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 229 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 230 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 231 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 232 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 233 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 234 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 235 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 236 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 237 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 238 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 239 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 240 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 241 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 242 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 243 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 244 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 245 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 246 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 247 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 248 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 249 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 250 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 251 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 252 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 253 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 254 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 255 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 256 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 257 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 258 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 259 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 260 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 261 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 262 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 263 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 264 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 265 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 266 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 267 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 268 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 269 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 270 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 271 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 272 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 273 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 274 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 275 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 276 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 277 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 278 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 279 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 280 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 281 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 282 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 283 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 284 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 285 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 286 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 287 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 288 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 289 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 290 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 291 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 292 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 293 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 294 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 295 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 296 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 297 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 298 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 299 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 300 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 301 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 302 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 303 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 304 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 305 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 306 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 307 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 308 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 309 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 310 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 311 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 312 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 313 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 314 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 315 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 316 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 317 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 318 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 319 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 320 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 321 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 322 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 323 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 324 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 325 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 326 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 327 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 328 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 329 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 330 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 331 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 332 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 333 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 334 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 335 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 336 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 337 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 338 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 339 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 340 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 341 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 342 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 343 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 344 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 345 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 346 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 347 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 348 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 349 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 350 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 351 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 352 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 353 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 354 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 355 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 356 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 357 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 358 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 359 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 360 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 361 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 362 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 363 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 364 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 365 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 366 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 367 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 368 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 369 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 370 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 371 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 372 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 373 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 374 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 375 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 376 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 377 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 378 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 379 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 380 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 381 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 382 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 383 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 384 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 385 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 386 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 387 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 388 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 389 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 390 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 391 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 392 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 393 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 394 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 395 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 396 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 397 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 398 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 399 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 400 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 401 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 402 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 403 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 404 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 405 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 406 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 407 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 408 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 409 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 410 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 411 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 412 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 413 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 414 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 415 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 416 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 417 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 418 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 419 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 420 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 421 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 422 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 423 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 424 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 425 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 426 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 427 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 428 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 429 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 430 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 431 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 432 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 433 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 434 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 435 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 436 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 437 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 438 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 439 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 440 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 441 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 442 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 443 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 444 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 445 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 446 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 447 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 448 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 449 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 450 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 451 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 452 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 453 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 454 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 455 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 456 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 457 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 458 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 459 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 460 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 461 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 462 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 463 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 464 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 465 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 466 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 467 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 468 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 469 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 470 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 471 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 472 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 473 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 474 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 475 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 476 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 477 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 478 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 479 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 480 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 481 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 482 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 483 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 484 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 485 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 486 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 487 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 488 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 489 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 490 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 491 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 492 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 493 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 494 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 495 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 496 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 497 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 498 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 499 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 500 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 501 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 502 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 503 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 504 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 505 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 506 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 507 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 508 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 509 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 510 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 511 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 512 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 513 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 514 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 515 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 516 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 517 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 518 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 519 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 520 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 521 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 522 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 523 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 524 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 525 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 526 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 527 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 528 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 529 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 530 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 531 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 532 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 533 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 534 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 535 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 536 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 537 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 538 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 539 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 540 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 541 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 542 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 543 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 544 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 545 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 546 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 547 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 548 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 549 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 550 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 551 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 552 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 553 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 554 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 555 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 556 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 557 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 558 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 559 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 560 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 561 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 562 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 563 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 564 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 565 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 566 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 567 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 568 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 569 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 570 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 571 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 572 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 573 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 574 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 575 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 576 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 577 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 578 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 579 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 580 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 581 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 582 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 583 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 584 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 585 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 586 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 587 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 588 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 589 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 590 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 591 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
