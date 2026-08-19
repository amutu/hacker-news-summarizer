# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-19.md)

*最后自动更新时间: 2026-08-19 20:43:10*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 2 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 3 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 4 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 5 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 6 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 7 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 8 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 9 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 10 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 11 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 12 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 13 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 14 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 15 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 16 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 17 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 18 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 19 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 20 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 21 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 22 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 23 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 24 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 25 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 26 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 27 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 28 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 29 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 30 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 31 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 32 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 33 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 34 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 35 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 36 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 37 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 38 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 39 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 40 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 41 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 42 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 43 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 44 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 45 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 46 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 47 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 48 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 49 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 50 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 51 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 52 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 53 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 54 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 55 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 56 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 57 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 58 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 59 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 60 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 61 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 62 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 63 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 64 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 65 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 66 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 67 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 68 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 69 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 70 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 71 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 72 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 73 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 74 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 75 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 76 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 77 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 78 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 79 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 80 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 81 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 82 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 83 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 84 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 85 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 86 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 87 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 88 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 89 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 90 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 91 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 92 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 93 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 94 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 95 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 96 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 97 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 98 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 99 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 100 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 101 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 102 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 103 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 104 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 105 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 106 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 107 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 108 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 109 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 110 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 111 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 112 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 113 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 114 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 115 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 116 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 117 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 118 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 119 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 120 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 121 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 122 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 123 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 124 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 125 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 126 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 127 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 128 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 129 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 130 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 131 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 132 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 133 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 134 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 135 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 136 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 137 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 138 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 139 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 140 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 141 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 142 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 143 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 144 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 145 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 146 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 147 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 148 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 149 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 150 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 151 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 152 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 153 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 154 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 155 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 156 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 157 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 158 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 159 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 160 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 161 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 162 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 163 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 164 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 165 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 166 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 167 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 168 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 169 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 170 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 171 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 172 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 173 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 174 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 175 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 176 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 177 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 178 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 179 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 180 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 181 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 182 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 183 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 184 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 185 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 186 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 187 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 188 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 189 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 190 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 191 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 192 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 193 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 194 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 195 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 196 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 197 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 198 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 199 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 200 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 201 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 202 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 203 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 204 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 205 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 206 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 207 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 208 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 209 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 210 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 211 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 212 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 213 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 214 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 215 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 216 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 217 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 218 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 219 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 220 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 221 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 222 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 223 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 224 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 225 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 226 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 227 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 228 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 229 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 230 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 231 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 232 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 233 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 234 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 235 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 236 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 237 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 238 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 239 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 240 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 241 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 242 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 243 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 244 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 245 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 246 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 247 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 248 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 249 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 250 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 251 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 252 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 253 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 254 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 255 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 256 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 257 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 258 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 259 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 260 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 261 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 262 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 263 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 264 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 265 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 266 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 267 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 268 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 269 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 270 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 271 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 272 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 273 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 274 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 275 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 276 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 277 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 278 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 279 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 280 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 281 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 282 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 283 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 284 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 285 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 286 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 287 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 288 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 289 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 290 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 291 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 292 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 293 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 294 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 295 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 296 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 297 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 298 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 299 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 300 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 301 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 302 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 303 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 304 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 305 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 306 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 307 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 308 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 309 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 310 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 311 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 312 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 313 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 314 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 315 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 316 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 317 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 318 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 319 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 320 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 321 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 322 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 323 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 324 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 325 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 326 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 327 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 328 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 329 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 330 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 331 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 332 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 333 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 334 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 335 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 336 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 337 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 338 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 339 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 340 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 341 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 342 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 343 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 344 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 345 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 346 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 347 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 348 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 349 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 350 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 351 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 352 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 353 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 354 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 355 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 356 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 357 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 358 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 359 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 360 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 361 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 362 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 363 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 364 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 365 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 366 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 367 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 368 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 369 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 370 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 371 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 372 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 373 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 374 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 375 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 376 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 377 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 378 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 379 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 380 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 381 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 382 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 383 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 384 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 385 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 386 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 387 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 388 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 389 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 390 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 391 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 392 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 393 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 394 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 395 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 396 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 397 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 398 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 399 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 400 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 401 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 402 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 403 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 404 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 405 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 406 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 407 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 408 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 409 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 410 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 411 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 412 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 413 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 414 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 415 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 416 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 417 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 418 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 419 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 420 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 421 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 422 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 423 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 424 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 425 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 426 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 427 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 428 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 429 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 430 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 431 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 432 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 433 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 434 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 435 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 436 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 437 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 438 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 439 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 440 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 441 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 442 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 443 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 444 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 445 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 446 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 447 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 448 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 449 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 450 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 451 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 452 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 453 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 454 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 455 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 456 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 457 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 458 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 459 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 460 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 461 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 462 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 463 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 464 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 465 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 466 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 467 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 468 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 469 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 470 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 471 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 472 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 473 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 474 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 475 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 476 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 477 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 478 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 479 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 480 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 481 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 482 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 483 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 484 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 485 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 486 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 487 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 488 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 489 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 490 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 491 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 492 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 493 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 494 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 495 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 496 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 497 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 498 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 499 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 500 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 501 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 502 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 503 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 504 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 505 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 506 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 507 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 508 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 509 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 510 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 511 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 512 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 513 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
