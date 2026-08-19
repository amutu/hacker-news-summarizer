# Hacker News 热门文章摘要 (2026-08-19)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. OpenRouter 加入 Stripe

**原文标题**: OpenRouter is joining Stripe

**原文链接**: [https://openrouter.ai/blog/announcements/openrouter-is-joining-stripe/](https://openrouter.ai/blog/announcements/openrouter-is-joining-stripe/)

OpenRouter宣布将加入Stripe，交易预计在未来几周内完成。OpenRouter将继续以相同的名称、使命、产品和路线图运营；现有集成不会发生任何变化。

OpenRouter自称是首个也是最大的AI模型市场和网关，每天处理超过10万亿个token，覆盖400多个模型，服务超过1000万开发者和企业。其使命是保持AI的多模型、中立和开放性，确保没有任何单一模型或提供商因惯性而成为默认选择。它始终致力于仅根据用户的最佳利益做出路由决策。

创始人表示，他们只会将公司出售给能够加速其使命且不损害中立性的企业。他们选择Stripe，是因为其世界一流的金融基础设施、开发者优先的API标准、将复杂系统抽象为简单API的共同基因，以及在欺诈和滥用方面的专业知识——这是AI公司日益面临的挑战。Stripe还带来了庞大的客户网络和运营可信全球基础设施的经验。

OpenRouter的领导层感谢了客户、员工和支持者，并计划在发展的同时保持90人初创公司的速度和文化。使命始终不变：构建一个健康、多元的AI生态系统，让众多模型共同繁荣。

---

## 2. Go 1.27

**原文标题**: Go 1.27

**原文链接**: [https://go.dev/blog/go1.27](https://go.dev/blog/go1.27)

Go 1.27 已发布，为语言、工具链、运行时和标准库带来了重大改进。

**语言变化：**
- 现在支持泛型方法，允许类型参数化方法，如 `math/rand/v2.Rand.N[Int]`。
- 结构体字面量可以使用任何有效的字段选择器作为键，包括来自嵌套或嵌入式结构体的字段。
- 函数类型推断现在适用于所有赋值上下文，包括复合字面量、类型转换和通道发送——无需显式类型参数。

**工具改进：**
- `go fix` 新增了多个现代化重构工具：`atomictypes`、`embedlit`、`slicesbackward` 和 `unsafefuncs`。
- `go doc` 支持 `package@version` 查询。
- `go mod tidy` 自动将 `require` 块合并为标准的两块结构：直接依赖和间接依赖。

**性能和运行时：**
- 按大小优化的内存分配将小对象（<80B）的分配成本降低最多 30%，使分配密集型程序提升约 1%。
- `runtime/pprof` 中的 `goroutineleak` 分析功能现已正式可用，用于检测永久阻塞的 goroutine。

**标准库新增：**
- `encoding/json/v2` 提供可配置、更严格的 JSON 处理，并通过 `encoding/json/jsontext` 支持底层流式处理。现有 `encoding/json` 现已由 v2 驱动，在保持兼容性的同时提高了反序列化速度。
- `crypto/mldsa` 实现了后量子 ML-DSA 签名方案（FIPS 204），并集成到 `crypto/x509` 和 `crypto/tls` 中。
- 通过 `uuid` 包提供原生 UUID 生成与解析。
- 通过 `simd` 和 `simd/archsimd` 提供实验性 SIMD 支持。
- `net/http/httptest` 新增 `NewTestServer`，一个与 `testing/synctest` 配合使用的内存模拟网络。

完整发布说明提供了详细内容，后续还有博客文章计划。欢迎用户报告问题。

---

## 3. Unsloth 动态 3.0 GGUFs

**原文标题**: Unsloth Dynamic 3.0 GGUFs

**原文链接**: [https://unsloth.ai/docs/basics/dynamic-3.0-ggufs](https://unsloth.ai/docs/basics/dynamic-3.0-ggufs)

Unsloth Dynamic v3.0 是 Unsloth 量化方法的一次重大升级。它发布了 Qwen3.8-27B GGUFs，在相同体积下，其 top-1% 准确率比其他提供商高出 10% 以上，并且兼容 llama.cpp 和 Unsloth Desktop。新方法使用了更高质量的 imatrix 校准数据集（专注于智能体编码、聊天、多语言数据）、改进的层选择以及更多的量化技术——全部通过训练后量化实现，无需 QAT/QAD。较小的量化版本移除了 MTP 模块以节省约 500MB 空间；1-bit 量化版本（UD-IQ1_S，6.2GB）在体积缩小 89% 的同时，保留了约 72% 的 top-1% 准确率。

基准测试包括新的 Divergence-300 @32 指标（在 300 个预留样本上进行 32 个 token 的贪心解码）和 KL 散度测试。Unsloth 声称在相同磁盘空间下，top-1% 准确率可额外提升最高 10%，尤其是对于较小的量化版本。他们强调使用未见过的数据集进行评估，以避免过拟合。文章还回顾了 Dynamic v2.0 的功能：重新设计的层选择、针对特定模型的量化、额外格式（Q4_NL、Q5.1 等），以及将 KL 散度作为黄金标准指标的重点。文中详细介绍了 Gemma 3 QAT 基准测试（表明 Unsloth 的量化在较小体积下往往比 QAT 表现更佳）以及 Unsloth 为 Llama 4 贡献的 bug 修复。总体而言，该页面突出了 Unsloth 在量化效率、精度保持和跨引擎兼容性方面的持续改进，在质量指标和真实世界基准测试（如 Aider Polyglot）中都取得了优异的结果。

---

## 4. Pixel 11 Pro Fold 感觉像是一个时代的终结

**原文标题**: Pixel 11 Pro Fold feels like the end of an era

**原文链接**: [https://www.theverge.com/tech/981956/google-pixel-11-pro-fold-review](https://www.theverge.com/tech/981956/google-pixel-11-pro-fold-review)

Pixel 11 Pro Fold的评测将谷歌2026年的折叠屏手机描述为一款扎实但日益过时的设备。它保留了厚重、方正的机身设计，折痕明显，而三星等竞争对手已转向更薄、更轻、更宽的“护照式”设计——苹果的折叠屏也即将推出。尽管如此，这款手机仍有诸多优势：IP68防尘防水等级、后置三摄（含5倍潜望长焦）、25W Qi2磁吸无线充电，以及Android 17多任务Bubbles、Camera Looks和Magic Capture等实用软件功能。

硬件变化微乎其微：机身略薄略轻、屏幕更亮、主摄升级至更大的48MP传感器、充电速度更快，并搭载Tensor G6芯片。电池容量略降至4,806mAh，但仍可维持一天续航。备受吹捧的HiLight功能（利用相机闪光灯作为通知灯）被评价为近乎无用的败笔。手机售价1,899美元，涨价100美元却不增加存储空间。

评测总结认为，如果你看重耐用性、相机和充电能力，11 Pro Fold仍是明智之选，但它让人感觉一个时代即将落幕——尤其当竞争对手正在重新定义这一产品形态。作者担心它难以在竞争中长久保持优势，但就目前而言，它是唯一一款具备IP68和磁吸充电的折叠屏手机，其软件新增功能也确实颇具吸引力。

---

## 5. 一个玩笑般的域名购买演变成了地缘政治博弈

**原文标题**: A joke domain purchase turned in geopolitical warfare

**原文链接**: [https://sprocketfox.io/xssfox/2026/08/19/sondehub-and-war/](https://sprocketfox.io/xssfox/2026/08/19/sondehub-and-war/)

SondeHub始于2018年，最初只是一个用于追踪气象气球无线电探空仪的笑话式URL重定向，但后来发展成为一个开源系统，用于接收、预测和共享气球遥测数据。澳大利亚志愿者团队构建了反向预测来估算发射地点，意外地标绘出了军事炮兵阵地和海军舰艇的位置。他们遵从了针对敏感地点的删除请求。

2023年，“中国间谍气球”事件和一枚业余气球被击落之后，流量激增，来自美国军方和政府机构的请求也日益增多。2024年末，API滥用行为被追溯到一家公司；深入调查发现，乌克兰纵深打击小组似乎在使用SondeHub数据和一套Python风向预测脚本来规划无人机或气球打击行动。该团队联系了AWS，以避免切断数据源，并警告说中断可能造成人员伤亡，同时提供了本地运行预测程序的文档。

2025年，美国战争部长办公室请求获取数据；SondeHub向其开具了发票，但从未收到付款。在疑似气球与飞机相撞事件后，NTSB也联系了他们；SondeHub帮助将线索指向了Windborne公司的一只气球。FAA请求协助与气象气球发射实体协调，作者由此指出，他们不得不解释气象气球确实存在且受FAA法规管辖。

文章还提到了一起涉及回收探空仪的肇事逃逸事件、GPS干扰和欺骗模式、古怪的电子邮件职务头衔（包括一个“奶酪占卜师”），以及Meteolabor AG关于不共享数据出于战略原因这一荒谬回应、气候骗局阴谋论和军事浪费。作者在结尾指出，这篇博客之所以推迟发布，是因为要等到气球战争被更广泛地知晓，并分享了SondeHub持续不断的混乱状况。

---

## 6. 警察使用Flock摄像头追踪分居妻子717次

**原文标题**: Police officer used Flock cameras to track estranged wife 717 times

**原文链接**: [https://www.wsbtv.com/news/trending/affidavit-police-officer-used-flock-cameras-track-estranged-wife-717-times/5DVBYU2XTJEVDJR7LPZCBR7M5M/](https://www.wsbtv.com/news/trending/affidavit-police-officer-used-flock-cameras-track-estranged-wife-717-times/5DVBYU2XTJEVDJR7LPZCBR7M5M/)

根据文章标题，关键信息是一名警察滥用Flock车牌读取摄像头追踪其分居妻子717次。这一情况凸显了一起严重的家庭虐待和隐私侵犯案件，据报道，该警官利用其接触监控技术的机会谋取个人目的，而非执行合法的执法职责。Flock摄像头是警方用于追踪车辆的自动车牌识别系统，在此案中，该技术据称被武器化，反复监控妻子的行踪。这篇文章可能强调了警方获取监控数据的权力以及这些数据在家庭纠纷中被滥用的潜在风险。

---

## 7. 新款卡西欧F-B100W——经典F-91W问世40年后的升级之作

**原文标题**: New Casio F-B100W – Upgrade to the iconic F-91W after 40 years

**原文链接**: [https://www.casio.com/uk/watches/casio/product.F-B100W-1A/](https://www.casio.com/uk/watches/casio/product.F-B100W-1A/)

无法访问文章链接。

---

## 8. 解锁一台已锁定/停用的电子废品Cricut Maker

**原文标题**: Unlocking a locked/deactivated e-waste Cricut Maker

**原文链接**: [https://sprocketfox.io/xssfox/2026/07/01/cricut-unlock/](https://sprocketfox.io/xssfox/2026/07/01/cricut-unlock/)

这篇文章描述的是如何让一台被丢弃、已停用的Cricut Maker电子垃圾设备重获新生。这台机器外观完好，只是滚轮磨损——这很可能就是它被扔掉的原因，而滚轮更换起来非常便宜。用12V电压而非18V供电时，它依然能通过自检并与Cricut软件通信，但由于Cricut激进的设备锁定政策，屏幕上显示了“机器已停用”的提示。

作者起初尝试改写EEPROM中的序列号，但发现该设备没有EEPROM，而且缺少MCU的调试器。拦截网络流量也被否定了，因为禁用证书锁定太麻烦。最终成功的方案是拦截切割机与电脑之间的USB CDC通信。作者借来朋友的一块树莓派RP2040，基于TinyUSB的Arduino示例构建了一个USB主机/客户端代理。关键细节包括：USB主机需要超频到240MHz才能正常工作，并且设备的USB元数据要与原设备匹配。该代理会检测包含序列号的数据包，并在硬件层面将其替换为另一个序列号。这一招骗过了软件：设备出现在作者的账户中，甚至可以用Cricut状态页面上不存在的序列号进行注册。清洁机身、更换滚轮（用热水将其泡软）、重新组装，并为RP2040 3D打印了一个外壳之后，这台机器运转起来如同新的一般。

文章还列出了其他可能纯靠软件解决的替代方案：拦截网络流量、修补应用程序、通过USB或蓝牙创建代理驱动、利用固件更新漏洞，或者添加蓝牙侧的改写硬件。作者以澳大利亚版权法的不确定性为由，不愿公开实际代码，但指出其代码高度遵循TinyUSB的示例。这篇文章引发了关于被锁定序列号可能被陌生人认领的安全担忧。

---

## 9. Ornith-1.5：从自我搭建到自我改进

**原文标题**: Ornith-1.5: From Self-Scaffolding to Self-Improvement

**原文链接**: [https://ornith.ai/ornith_1_5.html](https://ornith.ai/ornith_1_5.html)

Ornith-1.5 在自我改进基础模型方面引入了一项重大进展，将 Ornith-1.0 的自我脚手架扩展为完整闭环：模型生成新任务、构建任务专属脚手架，并为强化学习生成解决方案的 rollout，持续扩展自身的课程。

该模型提供三种规模：397B MoE、35B MoE（3B 激活）和 9B 密集模型。397B 模型在 Terminal-Bench 2.1 上达到 86.1，在 DeepSWE 上达到 56.0，与 Claude Opus 4.8 持平，并优于 GLM-5.2 和 DeepSeek-V4-Flash-0731 等同类开源模型。35B 模型在编码和智能体基准测试上超越同尺寸竞品，而可边缘部署的 9B 模型则达到或超过 Gemma 4-31B 和 Qwen 3.6-35B 等更大模型。

每个训练周期包含三个阶段：任务提议、脚手架生成和解决方案 rollout。任务奖励结合了有效性、前沿难度和新颖性，其中难度通过模型自身在接近 0.2 目标附近的成功率来衡量。评估框架奖励强调任务对齐、奖励保真度和抗攻击性。Rollout 奖励直接来自生成的评估框架。所有三个组件通过 GRPO 联合优化，使系统随时间推移生成更难的任务、设计更好的脚手架并产生更强的解决方案。这一闭环推动了推理、编码和智能体任务的持续提升。

---

## 10. 使用几何和CUDA编程对随机岛屿进行地理定位

**原文标题**: Geolocating a random island using geometry and CUDA programming

**原文链接**: [https://yassa9.github.io/osint/gralhix-004/](https://yassa9.github.io/osint/gralhix-004/)

本文是“gralhix004”对Sofia Santos发起的OSINT挑战赛#004的解题报告：根据一张无人机照片识别度假岛屿、其坐标及相机朝向。作者刻意避开Google Lens，而是通过几何学、GIS和CUDA编程解决了问题。

关键步骤：

- **元数据**：没有有用的EXIF/GPS数据。
- **三角形指纹**：手动点击三个可见陆地区域（度假小岛、右侧岛屿、左侧山岛），计算角度和距离比例，允许±20%的容差。
- **全局搜索**：使用OpenStreetMap陆地多边形（EPSG:4326）。筛选条件包括热带纬度（±30°）、低局部密度、20公里内聚类，并生成了约8070万个候选三元组。
- **GPU匹配**：在RTX 3050上自定义CUDA内核处理所有三元组，耗时204毫秒，检查几何形状、面积和边长。去重后剩下8,915个匹配；通过“开放矩形”水域测试将其减少到948个。
- **形状检查**：紧凑度、珊瑚礁小岛光环碎片、以及椭圆纵横比/填充率将候选范围缩小到137个。
- **NDVI植被检查**：通过公共STAC API获取的Sentinel-2卫星数据确认了树木覆盖，剩下66个。
- **高程检查**：Copernicus DEM显示P0低而平坦，P2的山体位于相机±50°正面弧线内，剩下26个候选。
- **最终目视复查**：第8个候选是正确的——一个密克罗尼西亚岛屿。

**答案**：
- 度假村：**Oan**
- 坐标：**北纬7.363444°，东经151.755750°**
- 相机朝向：**西北**（324.97°）

该仓库包含代码、候选数据以及ODbL/Copernicus/Sentinel许可说明。

---

## 11. 大语言模型时代的可扩展软件

**原文标题**: Extensible Software in the age of LLMs

**原文链接**: [https://jeremymorrell.dev/blog/extensible-software-in-the-age-of-llms/](https://jeremymorrell.dev/blog/extensible-software-in-the-age-of-llms/)

文章认为，LLM催生了一代新的**可扩展网络软件**，用户只需用自然语言描述自己想要什么，就能定制应用，而不再被动接受固定的功能集合。

**核心论点：** 大多数软件服务于“需求曲线的顶端”，留下了大量未被满足的个体长尾需求。LLM辅助编程降低了构建“一人软件”的成本——即个人化、量身定制的工具。Y Combinator将这一机遇称为“小软件”。作者指出，**Pi**是LLM原生软件的一个范例：一个稳固的核心，用户可以通过提示词进行扩展，并支持共享定制。

**关键应用：**
- **AI智能体：** 面向非开发人员（会计师、医生）的可扩展框架，让他们无需成为程序员就能获得量身定制的工具。
- **企业内部平台：** 为员工提供安全的空间，在不泄露令牌或违反合规要求的前提下构建定制化自动化流程。
- **支持与可观测性平台：** 提供自定义视图、数据展示以及注入用户逻辑的钩子（例如告警、自定义解析器）。

**挑战：** 网络可扩展性很难实现。执行任意用户代码会引发安全问题：数据外泄、拒绝服务攻击、无限循环、幽灵漏洞、加密货币挖矿等等。Obsidian的插件模型之所以可行，仅仅是因为风险较低。

**先例：** 自2007年以来，Salesforce一直在安全地运行用户编写的Apex代码——这是一个多租户可编程平台，具备REST端点和定时任务，本质上就是无服务器计算的前身。作者表示，现代云原语（比如他所在的Cloudflare Workers）让这种模式变得容易得多。

**结论（原文截断）：** 我们需要一种新的原语，运行成本低、安全且具备沙箱隔离——从而在不重造Salesforce庞大基础设施的前提下，实现安全、网络规模的扩展性。

---

## 12. Kubernetes探针工作原理

**原文标题**: How Kubernetes Probes Work

**原文链接**: [https://ngrok.com/blog/probes](https://ngrok.com/blog/probes)

Kubernetes 探针是 kubelet 定期执行的检查，用于确定容器健康状况，帮助应用具有韧性，并避免重启循环和滚动更新期间请求丢失等问题。

有三种探针类型：
- **启动探针** 验证容器是否已完成初始化。它们会一直运行直到成功，然后停止。失败会杀死容器并应用重启策略。请谨慎选择 failureThreshold 和 periodSeconds——时间太短会导致崩溃循环。
- **就绪探针** 确定容器是否可以接收流量。失败会将 Pod 标记为 NotReady，将其从 Service 负载均衡中移除，从而不会向其发送请求。它们不会重启容器。默认值为 successThreshold=1 和 failureThreshold=3，通常效果良好。
- **存活探针** 检测卡死或死锁的容器。达到 failureThreshold 时会杀死容器并根据 Pod 的 restartPolicy 重启它。

支持的探针类型包括 HTTP GET、TCP 套接字、exec 命令和 gRPC 健康检查，其中 HTTP 状态码 200–399 视为成功。

关键行为：
- 就绪探针和存活探针仅在启动探针成功后才开始运行，从而允许进行特定于启动的检查。启动失败会重启容器，而就绪失败则不会——因此重启可以帮助卡住的容器恢复。
- 没有启动探针的 Pod 在启动后立即被视为 Ready，即使应用仍在初始化，这会导致请求失败。
- 直接访问 IP 的请求会绕过就绪检查，因此需要 Service 和 ReplicaSet 来将 NotReady Pod 排除在流量之外。
- 删除 Pod 会触发优雅终止：先发送 SIGTERM，在 terminationGracePeriodSeconds 之后发送 SIGKILL，同时 Pod 会立即从 Service 中移除以避免新流量。
- 当容器处于 NotReady 状态时，就绪探针可以带外触发（比 periodSeconds 更频繁），以使其更快地变为 Ready。

正确组合启动、就绪和存活探针，可使流量避开正在启动或停止的容器，并提高部署可靠性。

---

## 13. 人工智能时代的数学

**原文标题**: Mathematics in the age of AI

**原文链接**: [https://arxiv.org/abs/2608.16753](https://arxiv.org/abs/2608.16753)

陶哲轩的这篇文章基于他在2026年国际数学家大会上的公开演讲，探讨了数学界应如何回应那些能够执行研究级数学任务的人工智能工具。他没有争论这些能力是否会或何时会到来，而是有意假设它们将会到来，并提出了一个正交的问题：数学研究的真正目标和价值是什么？

他以问题求解作为案例研究，审视了如果人工智能能比人类更快、更好地解决问题，数学的哪些方面可能仍然具有意义。他认为，数学的价值或许不仅在于产出正确的答案，还在于提出问题、构建概念框架、寻找优雅的解释、建立领域之间的联系，以及促进人类的理解与洞见。文章探讨了在未来人工智能成为合作者或竞争者的情况下，数学界如何调整其规范、激励机制和训练方式。

该论文归类于“历史与综述”（math.HO），其MSC分类涉及数学哲学、人工智能和形式系统。全文12页，含四幅图，投稿至《ICM 2026论文集》，并可在arXiv（arXiv:2608.16753）上获取。陶哲轩的这篇文章是一篇前瞻性的反思，旨在帮助数学家为转型中的研究格局做好准备。

---

## 14. Google 用通过 Google Drive 获取的方式取代了某些源代码的 Git 标签。

**原文标题**: Google replaced Git tags for certain source code with obtaining via Google Drive

**原文链接**: [https://grapheneos.social/@GrapheneOS/117057099753905023](https://grapheneos.social/@GrapheneOS/117057099753905023)

谷歌已改变其部分项目源代码的分发方式：不再将Git标签推送到公共存储库，而是通过Google Drive链接提供代码。这一变化由GrapheneOS（一个注重隐私的基于Android的操作系统）在其Mastodon账户上发文指出。受影响的具體项目在现有片段中并未完全说明，但担忧似乎集中在透明度和可验证性方面。Git标签允许开发者追踪和验证特定版本，而将代码托管在Google Drive上则降低了可追溯性，使验证真实性或对比变更变得更加困难。GrapheneOS的帖子暗示这一转变可能使开源审查和问责复杂化。可见文本中未提供进一步的背景、原因或受影响的存储库。文章还指出，查看原始Mastodon帖子需要JavaScript或兼容的应用程序，但该技术细节是次要的。总体而言，要点是谷歌已经至少对部分代码用Drive下载取代了传统的基于Git标签的源码发布方式，引发了GrapheneOS社区对发布流程严谨性和开放性的担忧。

---

## 15. 从量子相对熵到半经典爱因斯坦方程

**原文标题**: From Quantum Relative Entropy to the Semiclassical Einstein Equations

**原文链接**: [https://arxiv.org/abs/2510.24491](https://arxiv.org/abs/2510.24491)

Philipp Dorau和Albert Much的文章提出从量子信息论原理推导半经典爱因斯坦方程。作者认为，半经典爱因斯坦方程源于量子相对熵及其与分叉基林视界上面积变化的比例关系。

利用模理论，他们证明了分叉基林视界上标量量子场的真空态与相干激发之间的相对熵恰好等于穿过视界的能量通量。将该结果与贝肯斯坦-霍金熵面积公式相结合，这一能量通量随即被等同于视界截面表面积的变化。由此识别，半经典爱因斯坦方程便自然导出。

这项工作将Jacobson关于爱因斯坦方程的热力学推导加以推广，用严格定义的量子相对（Araki-Uhlmann）熵取代了经典热力学熵。该结果支持了这样的观点：量子信息在理解引力方面发挥着核心作用，即使在通常被视为完整量子引力理论零阶近似的弯曲时空量子场论层面也是如此。

该论文发表于《物理评论快报》136, 091602 (2026)，全文共六页，强调概念 clarity 而非技术细节。它以简洁的论证将量子信息论、黑洞热力学和半经典引力联系起来。

---

## 16. Ramp 推出模型路由器

**原文标题**: Ramp Launches a Model Router

**原文链接**: [https://router.com](https://router.com)

Ramp 推出了一款新的模型路由器，旨在简化跨多个 AI 模型的任务特定适配。该系统由 PorTAL（Portable Task Adaptation for LoRA，即可移植的 LoRA 任务适配）提供支持，该技术能够以与基础模型无关的形式学习一次任务适配，然后将其迁移至新的冻结模型。PorTAL 无需从头重新训练，只需重新拟合一个轻量的逐基础对齐层。当应用于同一模型族中未见过的新模型时，该方法可恢复按任务 LoRA 所带来性能提升的约 98%；在跨不同模型族移植时，这一比例约为 94%。该公告强调了此方法的效率与可移植性，使在快速变化的基础模型格局中部署任务特定适配变得更加容易。

---

## 17. 研究7700名员工发现：远程工作者幸福感最高

**原文标题**: Remote workers report the highest well-being in study of 7,700 employees

**原文链接**: [https://www.colorado.edu/today/2026/08/12/remote-workers-report-highest-well-being-study-7700-employees](https://www.colorado.edu/today/2026/08/12/remote-workers-report-highest-well-being-study-7700-employees)

一项针对一家大型医疗保健机构7,704名员工的研究发现，完全远程办公的员工幸福感最高，混合办公的员工次之，而完全在办公室办公的员工幸福感最低。这项研究由利兹商学院（Leeds School of Business）的斯特凡妮·约翰逊（Stefanie Johnson）领导，发表于2026年7月的《心理学前沿》（Frontiers in Psychology），它同时也挑战了远程员工感到与同事联系较少的假设。远程员工比混合或现场办公的同事略微更可能用积极的词汇描述其工作场所文化，如团队合作、包容和支持。

该研究还考察了一年后的离职情况。幸福感较高的员工离职的可能性较低，但工作地点本身并不是离职的强直接预测因素。相反，远程工作与更高的幸福感相关，而更高的幸福感又与较低的离职率相关。

约翰逊指出，这一结果让她感到意外；她原本预期混合办公的员工能兼得两者之长。然而，完全远程办公的员工表现最佳。她认为，自主性和灵活性很可能解释了这一发现：远程员工对自己的环境和日常安排有更多控制权，并避免了通勤、育儿后勤以及办公室相关干扰等压力源。

作者们认为，这些数据并不支持要求员工重返办公室的规定，领导者可能是在依赖习惯而非证据。约翰逊强调，灵活性很可能会持续下去，投资于员工幸福感可能比只关注员工的工作地点更有效。她还指出，面对面的时间仍然有助于建立关系，尤其是对早期职业阶段的员工而言，而且一旦人们已经彼此熟悉，远程办公往往效果更好。总体而言，该研究表明，让员工选择如何工作以及在何处工作，有助于提升幸福感和留任率。

---

## 18. Launch HN：OneCLI（YC S26）——面向团队的开源沙箱化智能体工具框架

**原文标题**: Launch HN: OneCLI (YC S26) – OSS sandboxed agent harness for teams

**原文链接**: [https://github.com/onecli/onecli](https://github.com/onecli/onecli)

OneCLI 是一个面向团队的开源、沙箱化代理（agent）框架。它最初是一个基于 Rust 的 AI 代理凭证库，但后来演变成一个平台，让每位员工都能拥有自己安全、私人的代理。代理是持久化的，拥有隔离的文件系统和 shell、对话界面（仪表盘或 Slack）、持久记忆、可复用的技能、定时任务，以及由网关注入的凭证，因此代理永远不会直接看到机密信息。它支持针对敏感操作（如发送电子邮件或删除记录）的人工审批（human-in-the-loop）。

为团队使用而设计，OneCLI 与身份提供商集成，为每个人配置一个代理，对所有代理执行统一策略，并共享团队级连接（LLM 密钥、服务账户）而不会暴露它们。代理通过仅出站连接的运行器运行在您自己的基础设施上——无需入站端口或隧道。

架构由 Next.js 仪表盘、API 服务器（控制平面）、拦截并注入凭证的 Rust 网关、管理沙箱的运行器、沙箱监督器、Slack 频道适配器以及 AES-256-GCM 机密存储组成。本地开发很简单：`pnpm dev` 生成环境、启动 PostgreSQL 并运行完整技术栈。

欢迎通过贡献者许可协议（CLA）进行贡献，安全漏洞应私下报告。该项目采用 Apache-2.0 许可证，但 `ee/` 目录中的企业功能除外，这些功能可免费用于开发/测试，但生产使用需要订阅。

---

## 19. 鲜为人知的winstart.bat批处理文件

**原文标题**: The little-known winstart.bat batch file

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20260811-00/?p=112605](https://devblogs.microsoft.com/oldnewthing/20260811-00/?p=112605)

`WINSTART.BAT` 是 Windows 目录中的一个批处理文件，在 Windows 启动期间运行，但仅在虚拟机管理器初始化系统虚拟机之后、Windows 用户模式内核启动之前执行。因此，它位于 `AUTOEXEC.BAT`（在 MS-DOS 下运行）之后、Windows 图形界面启动之前。

其预期用途是加载**仅对 Windows 应用程序**可用、而对 MS-DOS 程序不可用的 TSR 程序。从 `AUTOEXEC.BAT` 加载的 TSR 程序会同时出现在 Windows 和所有 DOS 虚拟机中；从 `WINSTART.BAT` 加载的 TSR 程序仅出现在 Windows 中；在单个 DOS 虚拟机内部加载的 TSR 程序则仅在该虚拟机中可见。

这对于 Windows 程序需要、但又不希望占用 DOS 程序常规内存的驱动程序，或者无法在多个虚拟机中运行的驱动程序来说非常有用。

尽管通常被认为是 Windows 95 的功能，`WINSTART.BAT` 实际上源自 Windows 3.1——在 Windows 3.1 资源工具包中即已有文档记载。该文章使用图表展示内存布局和虚拟机行为，重点说明 TSR 程序在系统虚拟机与各个独立 DOS 虚拟机之间的可见性机制。

---

## 20. 介绍MicroLighter

**原文标题**: Introducing MicroLighter

**原文链接**: [https://daverupert.com/2026/08/microlighter/](https://daverupert.com/2026/08/microlighter/)

MicroLighter 是一个使用 CSS Custom Highlights API 构建的小型客户端语法高亮器。主要特点：零依赖，压缩并 gzip 后约 2kb，使用 CSS `::highlight()` 而不是注入 span，利用 Textmate 语言语法，支持人类可读的 `light-dark()` 主题，按需加载语言语法，并将额外的 UI 功能移入 `<micro-lighter>` 自定义元素。

作者因为对现有高亮器感到沮丧，并且 Jekyll 博客出现了问题，于是创建了它。核心库仅使用正则表达式模式扫描代码块，并调用 `CSS.highlights.set()`——不修改 DOM。Textmate 语法允许广泛的语言支持，而无需自定义正则表达式。语法会按需自动加载以减少打包体积。Token 类别从 Textmate 中扁平化为更简单、对用户友好的集合。主题使用 `light-dark()`，因此浅色和深色模式共享一个定义。

使用方式：一个自初始化的压缩脚本、带有 `highlightAll()` 的 ESM 版本，以及一个添加行号和复制控制等功能的 web component（自定义元素）。该组件可扩展。主题通过 `--syntax-*` CSS 自定义属性和 `::highlight()` 规则定义。作者强调关注点分离：高亮是库的职责；展示性 UI 属于自定义元素。

---

## 21. 空气特雷门——一款通过摄像头挥手演奏的浏览器特雷门

**原文标题**: Air Theremin – a browser theremin you play by waving at your webcam

**原文链接**: [https://theremin.bizibah.com/](https://theremin.bizibah.com/)

Air Theremin 是一款基于浏览器的特雷门琴，您可以通过在摄像头前移动或倾斜手机来演奏。它提供两种主要输入模式：**手势**（使用笔记本电脑或手机摄像头追踪双手）和**陀螺仪**（使用手机的运动传感器）。如果摄像头和陀螺仪都不可用，也可以使用鼠标控制。

**手势控制：** 将双手分开可增大音量，举起双手可提高音调，身体后仰可获得更低沉、更空旷的音色，双手合拢则可静音。双手必须保持在可见范围内。

**陀螺仪控制（手机）：** 左右倾斜控制音量，前后倾斜控制音调。将标记倾斜到画面之外会完全切断声音。

其他功能包括多种波形（正弦波、三角波、温暖、簧片）、混响、音符吸附、颤音、震音、回声效果，以及录音/暂停功能。界面包含一个开始按钮；在手机上，您需要稳住手机以根据握持方式校准。

该应用由 Pavel Gurov 创建，基于 theremin.site。

---

## 22. 良好社交技能的规则

**原文标题**: Rules of Good Social Skills

**原文链接**: [https://liamrosen.com/2025/07/24/33-rules-of-good-social-skills/](https://liamrosen.com/2025/07/24/33-rules-of-good-social-skills/)

无法访问文章链接。

---

## 23. PostgreSQL 适用于一切

**原文标题**: PostgreSQL for Everything

**原文链接**: [https://www.raphaelbauer.com:443/posts/postgresql-everything/](https://www.raphaelbauer.com:443/posts/postgresql-everything/)

这篇文章认为，PostgreSQL 是一款极其通用的数据库，可以替代许多专用系统，从而简化 IT 基础设施。作者结合自 2003 年以来的经验，着重指出了其三大核心优势：坚如磐石的稳定性、易于安装和扩展，以及处理超越传统关系型数据的多样化工作负载的能力。

PostgreSQL 可以替代：**全文检索引擎**（如 Solr/Elasticsearch，Contentful 和 Instacart 曾采用），凭借出色的 JSON 支持替代**文档存储**（如 MongoDB），利用 `SELECT ... FOR UPDATE SKIP LOCKED` 替代**消息队列**（如 Kafka 和 RabbitMQ），通过 TimescaleDB 扩展替代**时序数据库**（如 Clickhouse），以及使用 `UNLOGGED` 表替代**缓存**（如 Redis）。它还可以借助 pgvector 充当用于 AI 工作流的**向量数据库**，在原始二进制大对象存储方面胜过文件系统，并使用 LTREE 数据类型管理层级数据。此外，PostgreSQL 可以在查询中直接返回 JSON，从而可能替代简单的微服务中间件。

作者的核心观点：在采用新技术之前，先问一句“PostgreSQL 难道不能做这件事吗？”通常答案是能。选择一套稳健的系统可以减少维护、简化运维、节省时间。虽然从字面意义上说它并非万能，但 PostgreSQL 能解决的用例远多于人们通常的认知。

---

## 24. Moderna报告mRNA新抗原疗法在黑色素瘤中首次取得积极的3期临床结果

**原文标题**: Moderna reports first positive Phase 3 for mRNA neoantigen therapy in melanoma

**原文链接**: [https://twitter.com/NoubarAfeyan/status/2090050162441752787](https://twitter.com/NoubarAfeyan/status/2090050162441752787)

Moderna和默沙东宣布，针对完全切除的IIB-IV期黑色素瘤患者， investigational mRNA个体化新抗原疗法intismeran autogene联合KEYTRUDA作为辅助治疗取得了阳性的3期临床结果。该试验INTerpath-001达到了无复发生存期的主要终点和无远处转移生存期的关键次要终点。这被描述为个体化新抗原疗法首个阳性的3期结果，也是mRNA癌症疗法的首个阳性3期结果。

Moderna联合创始人Noubar Afeyan强调了这一里程碑，他指出，2010年Moderna创立时，mRNA作为一种新型药物类别被广泛排斥，而利用mRNA来创建针对个体肿瘤突变的个性化疗法似乎更是遥不可及。他将这一成就归功于开创性的科学、坚持不懈的精神、Moderna和默沙东团队、研究者，尤其是参与研究的患者及其家属，他们的参与使这项研究成为可能。这一公告反映了mRNA医学和个性化癌症治疗领域的重大进展，但未来仍有更多工作要做。

---

## 25. 现实世界中的思维链推理并不总是忠实的

**原文标题**: Chain-of-Thought Reasoning in the Wild Is Not Always Faithful

**原文链接**: [https://arxiv.org/abs/2503.08679](https://arxiv.org/abs/2503.08679)

这篇论文《现实世界中的思维链推理并不总是忠实的》（伊万·阿库斯钦及其同事，ICML 2026）研究了语言模型的言语化思维链（CoT）推理是否能准确反映其内部决策。作者表明，不忠实的CoT不仅出现在人为偏差或对抗性提示下，也会出现在自然措辞、非对抗性的问题中。

通过使用“X比Y大吗？”和“Y比X大吗？”这类配对问题，他们发现模型有时会产生表面上连贯的论证，为同时回答两个“是”或两个“否”进行辩解——尽管这些答案在逻辑上相互矛盾。作者将其归因于模型对肯定或否定回答的隐性偏见，并将这一现象称为**隐性事后合理化**：模型似乎在已经作出有偏见的回答之后，才生成一个看似合理的理由。

测量到的矛盾行为发生率在商用模型中最高可达13%。前沿模型更为忠实，但没有一个模型是完全忠实的；即使是高级推理模型也表现出一定的不忠实性：DeepSeek R1为0.37%，而带思考模式的Sonnet 3.7为0.04%。

该论文还识别出**不忠实的非逻辑捷径**，即模型使用微妙无效的推理，使对困难数学问题的推测性答案看起来像是经过了严格证明。作者总结道，尽管CoT有助于评估输出结果，但它并不能完整可靠地解释产生最终答案的内部过程。因此，在智能体或安全关键场景中应谨慎使用CoT，因为在这些场景中对模型推理的信任尤为重要。

---

## 26. 纯C编写的Microgpt在Apple m5上达到1000万tps

**原文标题**: Microgpt in pure C hits 10M tps on Apple m5

**原文链接**: [https://github.com/vixhal-baraiya/microgpt-c](https://github.com/vixhal-baraiya/microgpt-c)

microGPT-C 是一个极简、零依赖的GPT实现，用单个C文件编写，仅使用libc。它执行字符级Transformer训练与推理——包括前向传播、反向传播、Adam优化和采样——并通过ARM64 NEON或x86-64 AVX2在macOS、Linux和Windows上运行，构建标志由Makefile自动选择。

该模型在约32,000个名字的数据集上训练，典型训练仅需数秒。在所示示例中，它运行了20,000步，最终训练损失约为2.35，平均损失约为2.22。该模型仅有4,192个参数，却具有良好的泛化能力：在20,000个名字上训练后，它在训练数据上达到每字符2.2054纳特，在12,033个未见过的名字上达到2.2039，优于参数数量近五倍的插值三元模型。

训练和推理使用分离的前向传播：`gpt_forward`存储激活值用于反向传播，而`gpt_forward_infer`是专门的单token推理路径，其logits与训练模式输出在fp32舍入范围内匹配。文档更详细地解释了性能限制。

基准测试显示，推理路径在Apple M5 Pro上使用NEON达到每秒10,168,430个token，在AMD Ryzen 5 5600H上使用AVX2达到每秒6,927,775个token。该项目展示了GPT的"原子级"教育实现，强调简洁、可移植性和速度。

---

## 27. 将分子转化为可靠的电子器件

**原文标题**: Turning molecules into reliable electronic devices

**原文链接**: [https://news.mit.edu/2026/turning-molecules-into-reliable-electronic-devices-0803](https://news.mit.edu/2026/turning-molecules-into-reliable-electronic-devices-0803)

麻省理工学院的研究人员开发了一种可扩展的制造平台，能够将脆弱的分子材料无损地集成到电子器件中，为下一代计算、传感和量子技术提供了可能。

该方法将传统半导体制造与分子集成相解耦。首先，使用标准工艺预制器件组件——例如金属电极。然后引入分子，纳米尺度力——溶剂蒸发过程中的毛细力和此后的范德华力——温和地将顶部电极拉至与分子层接触。这种自组装、无损的电接触避免了对脆弱分子材料通常具有破坏性的苛刻化学品。

该团队制造了超过1000个具有亚纳米分子层的器件，平均良率达到96%。这些器件在数万次电循环中保持稳定，未表现出退化——这是迈向实际应用的关键一步。他们还展示了一个互连的分子存储器件阵列，显示了超越孤立研究的电路级集成潜力。

该技术具有通用性，可适应其他材料和架构。研究人员计划将其扩展到新的多功能计算和传感系统中。

这项工作由研究生Sarah Spector和Peter Satterthwaite主导，资深作者为电气工程与计算机科学系副教授Farnaz Niroui，成果发表在《自然·纳米技术》上。该研究得到了DARPA、半导体研究公司、NSF等机构的支持，器件制造在MIT.nano完成。

---

## 28. 支持GrapheneOS的设备预计将于2027年推出

**原文标题**: Devices with GrapheneOS support should be available in 2027

**原文链接**: [https://grapheneos.social/@GrapheneOS/117078064184215730](https://grapheneos.social/@GrapheneOS/117078064184215730)

GrapheneOS，一款注重隐私的移动操作系统，通过Mastodon宣布，预计搭载官方GrapheneOS支持的设备将于2027年上市。该帖子内容简短，提及“首批设备”，表明支持该操作系统的早期硬件将于那年问世。可见文本中未提供更多细节，但核心信息是设备更广泛可用性的时间表。

---

## 29. 重新审视针对Cloudflare Workers的远程Spectre攻击

**原文标题**: A revisit of remote Spectre attacks on Cloudflare Workers

**原文链接**: [https://blog.cloudflare.com/revisiting-spectre-attacks-on-workers/](https://blog.cloudflare.com/revisiting-spectre-attacks-on-workers/)

Cloudflare Workers 此前通过动态进程隔离（Dynamic Process Isolation, DyPrIs）来缓解进程内的 Spectre 攻击，该机制会隔离可疑脚本。2024 至 2025 年的重新评估发现，较新的 Spectre 技术能够在生产环境中绕过这一限制。

Workers 依赖共享同一操作系统进程的 V8 隔离实例。Spectre 攻击利用瞬态执行，通过缓存侧信道泄露跨租户内存。Workers 禁止共享内存、多线程和细粒度定时器，使得远程攻击变得困难。然而，研究人员在 Cloudflare Workers 生产环境中构建了一个有效的远程 Spectre 利用程序。

关键技术：
- **Spectre 小工具（gadgets）**：一个推测性类型混淆小工具会瞬时读取攻击者选定的 64 位指针，将泄露转化为任意地址读取。另一个小工具可泄露压缩堆指针。
- **信号放大**：他们利用基于树的 PLRU 缓存替换行为，将单个缓存命中/未命中放大为许多可观察到的命中/未命中，从而在粗粒度时钟下仍可测量时序。
- **远程定时器**：通过 WebSocket 连接到外部服务器获取时间戳，可提供亚毫秒级分辨率，足以检测放大后的信号。
- **同驻（Co-location）**：攻击者 worker 通过 `fetch()` 调用受害者 worker 时，通常会将两者调度到同一进程中。具有持久 WebSocket 消息的 Durable Objects 可重置 CPU 限制并使隔离实例保持存活数小时。
- **驱逐（Eviction）**：他们避免了精确的驱逐集，而是分配一个超过缓存容量的大型对象池，确保随机位置已被驱逐。

该攻击在生产环境中能够以 99% 的准确率可靠地泄露高达 12 bit/s 的数据。因此，Cloudflare 改进了 DyPrIs，集成了 V8 沙箱，并增加了进程内隔离机制。该攻击已在生产环境中得到缓解；未发现主动利用的证据。该论文由 Albert Pedersen、Haocheng Xiao、Sam Ainsworth、Nigel Topham 和 Martin Schwarzl 共同撰写。

---

## 30. 高德纳长除法中一个存在数十年的错误（TAOCP第二卷，算法4.3.1D）

**原文标题**: A decades-old bug in Knuth's long division (TAOCP Vol II, Algorithm 4.3.1D)

**原文链接**: [https://kolja.rs/algorithm-d/](https://kolja.rs/algorithm-d/)

文章描述了作者在唐纳德·克努斯的算法D（TAOCP第二卷，§4.3.1D）中发现的一个存在数十年之久的错误。算法D是一种用于多精度整数的经典长除法算法。

作者首先解释了密码学中对多精度除法的需求，以及为什么在实践中要避免使用除法。然后他们从头构建该算法：以基数`b`（支数）表示整数，将长除法简化为重复的“中等”除法（n+1支除以n支），并进一步将每个中等除法简化为一次2支除以1支的除法，使用近似试商。引入规范化（对两个操作数进行缩放，使除数的最顶部位至少为`b/2`）是为了将试商的超出量控制在有界范围内（定理B：`q̂ ≤ q+3`）。

关键错误出现在克努斯的D3/D4步骤中。克努斯通过检查除数和被除数的额外一个支来细化试商，声称这可以将最坏情况下的超出量减少至最多1，并确保试商适合在一个支内。作者发现了一个该细化的反例，这意味着算法D可能仍然需要比克努斯步骤所保证的更多的修正——或者直接产生错误结果。这个反例显然在数十年间未被注意到。

文章还提到了在LLVM对该算法的实现中发现的另一个相关“错误”，并简要讨论了该错误为何存活如此之久、是否可以被利用、为什么AI工具没有发现它，以及现代替代方案，如更强的界限或除以常数。帖子在D3步骤的描述中途被截断，但核心发现是明确的：一个基础算法的修正过程中隐藏着一个缺陷。

---

## 31. 有雄心与做父亲

**原文标题**: Being ambitious and being a dad

**原文链接**: [https://nicholascharriere.com/blog/being-ambitious-and-being-a-dad/](https://nicholascharriere.com/blog/being-ambitious-and-being-a-dad/)

作者反思了职业抱负与做一位尽职父亲之间的张力。有了孩子之后，他发现自己的生产力下降了，这与保罗·格雷厄姆所承认的“孩子会让你生产力下降”如出一辙。他指出，许多受人尊敬的创始人——史蒂夫·乔布斯、爱因斯坦、埃隆·马斯克——过去或现在都不是称职的父母，常常把工作置于家庭之上。作者拒绝接受这种取舍：他排斥为了最大化职业产出而将育儿外包给他人的做法，并且他重视与孩子们相处的时间长度，而不仅仅是质量。他承认这很困难——孩子年幼时正值事业黄金期——但他坚称自己并非野心减少；相反，他重新定义了野心，即既要做一个好父亲，也要做一个杰出的创造者。他的策略包括明确工作目标、关注健康、设定严格的界限（工作日与家人共进晚餐、周末留给家庭），以及消除浪费时间的行为，以实现复利式的收益。他写下这些，是因为很少有人公开讨论这种挣扎，他呼吁其他人要有足够的雄心，去做一位有抱负的父亲。

---

## 32. OpenLogi

**原文标题**: OpenLogi

**原文链接**: [https://openlogi.org/en](https://openlogi.org/en)

OpenLogi 是一款按键重映射工具，允许用户自定义设备上的物理按键。它支持将44种内置操作中的任意一种分配给每个按键，并可针对每台设备分别应用设置。除内置命令外，用户还可以创建自定义快捷方式、启动应用程序以及运行脚本操作。该片段还提到了导航和系统控制功能，如返回、浏览器、中键、任务控制、前进、下一个标签页等类似功能。

---

## 33. 赛睿思CS-4

**原文标题**: Cerebras CS-4

**原文链接**: [https://www.cerebras.ai/cs4](https://www.cerebras.ai/cs4)

Cerebras CS-4 是一款基于 Nexus 平台架构的新型机架级 AI 系统，每个系统配备三片 WSE-3 Turbo 晶圆，每片性能可达上一代的 2 倍。

关键性能宣称包括：推理速度比 GPU 系统快 30 倍，每瓦吞吐量比 CS-3 高 10 倍，令牌生成速度比生产级 GPU 快 30 倍。新型互连将晶圆间延迟降低至 2 微秒，使得超过 10 万亿参数的模型每秒可生成超过 1,000 个令牌。

该系统专为超大规模部署而设计，包含三大基础要素：计算、电源和 I/O。模块化晶圆级背包将晶圆、电源转换、液冷、高速 I/O 和控制电子集成在一个紧凑的 3D 封装中，组件数量减少 50%。电源传输距离处理器仅 0.5 毫米，比传统 GPU 板卡近约 100 倍，从而降低功率损耗并实现更高频率。下一代可编程 I/O 子系统将带宽翻倍并降低延迟，无需交换机即可实现机架内和跨机架的晶圆互连。

CS-4 将稳定的电源、冷却和网络与计算分离，因此 PowerRack 可以在计算背包插入之前进行安装和验证。这可将部署时间从数天缩短至数小时，并简化维护和升级。首批 CS-4 将于本季度开始发货。

---

## 34. Taffy：一个灵活、高性能、跨平台的UI布局库

**原文标题**: Taffy: A flexible, high-performance, cross-platform UI layout library

**原文链接**: [https://github.com/DioxusLabs/taffy](https://github.com/DioxusLabs/taffy)

Taffy 是使用 Rust 编写的一个灵活、高性能、跨平台的 UI 布局库。它目前实现了 CSS Block、Flexbox 和 CSS Grid 布局算法，并计划支持更多布局范式。它专为作为其他 UI/GUI 库的依赖而设计，驱动了包括 Servo、Blitz、Bevy、Takumi、iocraft、Slint、Lapce（通过 Floem）和 Zed（通过 GPUI）在内的项目。

使用方式围绕 `TaffyTree` 展开：通过 `new_leaf` 或 `new_with_children` 创建节点，通过 `Style` 结构体定义样式，然后对根节点调用 `compute_layout`。布局结果可通过 `tree.layout(node)` 检查，包括未显式设置的计算尺寸。

Python 绑定通过 `stretchable` 提供，C 和 WASM 绑定正在开发中。由于 Taffy 遵循 CSS Flexbox 和 Grid 规范，建议参考 MDN 等 Web 文档。指南资源包括 Flexbox Froggy、CSS Grid Garden 和 CSS-Tricks 完整指南。

在 M1 Pro 上针对 Yoga 的基准测试显示，Taffy 在宽、深和大型嵌套树上均具有竞争力的性能，不过结果会因基准测试和节点数量而异。项目欢迎贡献、讨论和 PR。

---

## 35. 陨石锻造的戒指可能在古希腊精英阶层中流行一时

**原文标题**: Rings forged from meteorites may have been fashionable among ancient Greek elite

**原文链接**: [https://phys.org/news/2026-08-forged-meteorites-fashionable-ancient-greek.html](https://phys.org/news/2026-08-forged-meteorites-fashionable-ancient-greek.html)

无法访问该文章链接。

---

## 36. 谷歌新款Pixel 11中的人工智能并不实用

**原文标题**: The A.I. In Google's New Pixel 11 Is Not Helpful

**原文链接**: [https://www.nytimes.com/2026/08/19/technology/personaltech/google-pixel-11-review.html](https://www.nytimes.com/2026/08/19/technology/personaltech/google-pixel-11-review.html)

无法访问文章链接。

---

## 37. 活化能是许多事物的良好模型

**原文标题**: Activation Energy is a good model for a lot of things

**原文链接**: [https://homosabiens.substack.com/p/activation-energy-is-a-good-model](https://homosabiens.substack.com/p/activation-energy-is-a-good-model)

文章认为，“激活能”（启动一个过程所需的初始努力）是许多日常情境中的有用模型，而不仅仅是化学领域。邓肯·萨比恩通过例子加以说明：纸张必须达到临界温度才能点燃；静摩擦力大于动摩擦力；神经元只有在足够多的相连神经元同时激活时才会放电。

他以这篇文章本身为例——他之所以写这篇文章，是因为初始努力很低，而其他几篇半成品文章则因激活能较高而一直搁置。他还描述了一段夏日友谊，通过让每次见面都容易开始来维系：一旦“成为那种会约着见面的朋友”被激活，惯性就会让这段关系持续下去。

这一概念适用于人际关系和行为改变：降低伴侣开启困难对话的激活能，可以防止怨恨积累。环境设计往往就是一种激活能干预——把饼干放在高架子上让它们更难拿到；把健身单车放在客厅里让运动更容易开始。

萨比恩认为，许多事情都可以在一段时间内用这个视角来观察：当双方都跨过阈值时性爱就会发生；内向者和外向者从不同的来源汲取能量；人们的驱动力不同，有的靠回避负面事物，有的靠追求积极事物。他建议暂时戴上“激活能眼镜”，去留意什么不费成本、什么成本高但值得、什么一旦开始就会困住你。他提醒不要永久性地采用这一框架，但认为它对反思很有价值。文章结尾简短地呼吁读者付费订阅，以支持他的写作。

---

## 38. 超音速投石机 [视频]

**原文标题**: Supersonic Trebuchet [video]

**原文链接**: [https://www.youtube.com/watch?v=Co57SfcT-h0](https://www.youtube.com/watch?v=Co57SfcT-h0)

所提供的文本并非一篇关于“超音速投石机”的实际文章。它只是标准的YouTube页脚/样板内容。其中包括：

- YouTube版权及法律/联系信息（Google LLC、地址、电话、电子邮件）。
- 政策链接：条款、隐私、版权、安全以及广告/开发者信息。
- 关于YouTube运营方式及测试新功能的声明。
- 说明创作者展示/标记/推荐的产品由商家销售，而非YouTube，YouTube对此不承担责任。
- 针对非法拍摄内容的举报选项。

其中并未提供任何关于超音速投石机或视频内容的信息。

---

## 39. Show HN: Frugal Tokens – 探索不同编码代理的成本与用量

**原文标题**: Show HN: Frugal Tokens – explore costs and usage across coding agents

**原文链接**: [https://demo.frugaltokens.com/](https://demo.frugaltokens.com/)

这篇文章介绍了一款名为 **Frugal Tokens** 的工具，旨在帮助开发者探索和管理不同 AI 编程代理的令牌使用量与成本。该工具能够清晰展示消耗了多少令牌以及相关费用，使用户可以对比不同代理、监控支出，并发现优化机会。其重点在于成本透明度和高效的令牌使用，使开发者和团队在选择或使用编程代理时能够做出更明智的决策。现有内容中未介绍其他具体功能或指标。

---

## 40. 一个由真实FlyWire连接组驱动的macOS桌面端3D果蝇

**原文标题**: A 3D fruit fly on macOS desktop powered by the real FlyWire connectome

**原文链接**: [https://github.com/DenisSergeevitch/desktop-fly](https://github.com/DenisSergeevitch/desktop-fly)

**DesktopFly** 是一款 macOS 应用，将一只 3D 果蝇放到你的桌面上，由 FlyWire 连接组（FAFB v783）的真实神经数据驱动。它运行实时脉冲模拟，并使用真实的果蝇逃逸、梳理、行走和睡眠回路来表现行为。

**关键细节：**

- **大脑窗口：** 23,210 个真实神经元胞体位置（共 139,255 个）的旋转 3D 视图，按细胞类型着色。两个黄色标记是巨纤维——逃逸指令神经元。
- **神经回路：** 一个包含 668 个神经元、约 19,000 个真实突触连接的网络，以 1 kHz 的漏电积分发放模拟运行。包括逼近检测神经元（LC4/LPLC2）、逃逸指令（DNp01/GF）、转向、行走、梳理、后退运动、翅膀神经元，以及感觉和上行伙伴。
- **逃逸是非预设的：** 光标靠近产生逼近输入；只有当巨纤维通过真实突触放电时，逃逸才会发生。快速猛冲会在约 4 毫秒内触发逃逸；缓慢靠近会被容忍。
- **身体行为映射：** 真实神经元放电率驱动起跳、行走速度、转向、梳理、后退急冲、翅膀用力和唤醒。
- **桌面生态：** 果蝇在窗口边缘行走、骑乘拖动的窗口、在窗口关闭时受惊、将点击视为振动做出反应，并具有昼夜节律、睡眠和温度效应。
- **无需权限：** 仅使用光标、窗口框架、点击、热状态和空闲时间 API。
- **控制：** 菜单栏项目可暂停、切换大脑窗口、运行逃逸测试、在显示器之间移动、添加/移除果蝇以及惊吓果蝇。
- **数据：** 附带精简的派生文件；可以从原始 FlyWire Codex 转储重新生成。
- **诚实声明：** 布线是真实的 FlyWire 数据；生理特性、神经递质符号和感觉转导是在该图基础上做的标准建模选择。
- **许可证：** 代码 MIT；数据 CC BY-NC 4.0。引用 Dorkenwald 等人和 Schlegel 等人的 FlyWire 论文。

---

