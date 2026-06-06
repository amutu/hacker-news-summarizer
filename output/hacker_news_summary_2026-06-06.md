# Hacker News 热门文章摘要 (2026-06-06)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Ntsc-rs – 模拟模拟电视与VHS图像效果的开源视频仿真工具

**原文标题**: Ntsc-rs – open-source video emulation of analog TV and VHS artifacts

**原文链接**: [https://ntsc.rs/](https://ntsc.rs/)

**摘要**

ntsc-rs是一款免费开源的视频特效工具，能够精确模拟模拟电视和VHS录像带的成像缺陷。与使用简单颜色查找表或叠加层的其他特效不同，ntsc-rs基于composite-video-simulator和ntscQT等项目中的算法，模拟了NTSC传输和VHS编码的实际物理过程。

该软件采用Rust编写，支持多线程和SIMD加速，能够以高于原始NTSC素材的分辨率实时运行。它提供独立应用程序、网页应用，以及适用于Adobe After Effects、Premiere Pro和所有兼容OpenFX软件（包括DaVinci Resolve、Hitfilm和Vegas）的插件。最新版本为0.9.4，用户可下载或在线试用。

---

## 2. Zeroserve：一款可通过eBPF脚本化的零配置Web服务器

**原文标题**: Zeroserve: A zero-config web server you can script with eBPF

**原文链接**: [https://su3.io/posts/introducing-zeroserve](https://su3.io/posts/introducing-zeroserve)

**Zeroserve 文章摘要**

Zeroserve 是一款零配置 HTTPS 服务器，可直接从单个 tarball 包提供网站服务，并使用 eBPF 作为其脚本层和配置层。它旨在通过将所有配置整合到一个可编程的 eBPF 程序中，由该程序决定请求处理（包括路由、身份验证、速率限制、标头设置和反向代理），从而取代 nginx 和 Caddy。

**主要特性：**
- 直接从 tarball 包提供文件（无需解压），并通过 SIGHUP 信号实现原子热重载
- 所有 I/O 操作均使用 io_uring；每个实例运行单线程事件循环
- 支持 TLS 1.3、HTTP/2、加密客户端问候 (ECH)、SNI 证书选择、JA4 指纹识别

**eBPF 脚本：**
- `.zeroserve/scripts/` 目录下的 C 文件被编译为 eBPF 字节码，并通过 async-ebpf JIT（原生 x86-64）在用户态运行
- 通过内存隔离和抢占定时器（默认为 2 毫秒，生产环境建议 10 毫秒）实现沙箱化
- 脚本共享每个请求的元数据；可通过 `zs_respond` 或 `zs_reverse_proxy` 实现短路处理
- 支持加密、JSON 解析、速率限制、AWS SigV4 签名和 OIDC 登录

**性能（单核，HTTPS）：**
- 小静态文件：每秒 36,681 次请求（nginx 为 31,226 次，Caddy 为 12,830 次）
- 大静态文件：每秒 782 MB（nginx 为 773 MB）
- 在 10 毫秒抢占定时器下，eBPF 脚本性能优于 nginx Lua（每秒 46,945 次请求对比 41,231 次）
- 反向代理（小响应）：每秒 26,486 次请求（nginx 为 21,761 次，Caddy 为 7,683 次）
- 大代理响应：nginx 更快（每秒 585 MB 对比 zeroserve 的 359 MB）
- 内存：每个实例约 15 MB 的按比例集大小 (PSS)，多进程扩展性良好

---

## 3. Meta证实数千Instagram账户因AI聊天机器人漏洞被黑客入侵

**原文标题**: Meta confirms 1000s of Instagram accounts were hacked by abusing its AI chatbot

**原文链接**: [https://this.weekinsecurity.com/meta-confirms-thousands-of-instagram-accounts-were-hacked-by-abusing-its-ai-chatbot/](https://this.weekinsecurity.com/meta-confirms-thousands-of-instagram-accounts-were-hacked-by-abusing-its-ai-chatbot/)

Meta公司发生的一起安全漏洞事件，导致黑客利用其AI驱动的Instagram账户恢复聊天机器人的漏洞，入侵了超过2万个账户。根据向缅因州总检察长提交的数据泄露通知，此次攻击从4月17日左右持续至10月初，至少影响20,225名用户，其中包括缅因州的30人。

该漏洞出现在聊天机器人未能验证用于密码重置的邮箱地址是否与账户持有人的邮箱匹配时。黑客可以请求重置密码，系统会将重置链接发送至黑客控制的邮箱，而非合法用户的邮箱。这使得黑客能够接管Instagram账户及任何关联账户，获取联系人信息、出生日期、帖子、私信及账户活动等数据。

Meta表示该工具按预期运行，但另一条代码路径存在漏洞，绕过了邮箱验证。公司已禁用该聊天机器人，移除漏洞代码，并正在审查其他聊天机器人以防止类似问题重演。受影响用户被指示通过验证渠道重置密码并重新验证身份。Meta称“不清楚”是否有个人信息被获取。此次事件发生之际，Meta近期进行了大规模裁员，同时公司仍在持续大力投资人工智能领域。

---

## 4. 英伟达为Windows PC打造强劲CPU系统

**原文标题**: Nvidia is proposing a beast of a CPU system for Windows PCs

**原文链接**: [https://twitter.com/lemire/status/2062880075117113739](https://twitter.com/lemire/status/2062880075117113739)

提供的内容不包含关于英伟达为Windows PC提出CPU系统的文章。相反，它显示了一个来自X（原Twitter）的错误页面，提示用户的浏览器已禁用JavaScript，导致页面无法加载。文本中包含启用JavaScript或切换到受支持浏览器的通知，并附有网站帮助中心、服务条款、隐私政策及其他标准页脚信息的链接。所列年份为2026年，且没有任何关于英伟达、CPU或Windows PC的实质性内容。因此，无法基于给定文本对所谓文章进行摘要。

---

## 5. 《你逃不掉》

**原文标题**: You Can Run

**原文链接**: [https://magazine.atavist.com/2026/mccann-cocaine-fugitives](https://magazine.atavist.com/2026/mccann-cocaine-fugitives)

**摘要：**

本文讲述了艾琳和梅雷迪思·麦卡恩的故事。1984年，她们在匹兹堡一个富裕郊区度过的田园诗般的童年戛然而止——父母约翰和利亚突然让她们成为逃犯。姐妹俩被告知，父亲因欠税惹上了国税局的麻烦。此后一年半，一家人用假名辗转世界各地，藏匿于马略卡岛、伦敦和不列颠哥伦比亚省等地。

几十年后，已成为律师的艾琳得知，母亲利亚曾藏匿两盒与父亲犯罪生涯相关的政府文件。约翰·H·麦卡恩三世曾是新泽西州市长兼法官，因丑闻辞职。随后他在20世纪70年代的煤炭热潮中入行，最终因财务管理不善及与有组织犯罪的关联指控导致生意崩盘。文章详述了约翰富有魅力却控制欲极强的性格、满口谎言的历史，以及他用奢华生活掩盖的深层危机。在母亲威胁要扔掉这些文件后，艾琳争分夺秒从路边抢回盒子，希望能最终揭开毁灭她们家庭的完整真相。

---

## 6. 展示HN：非欧几里得庞加莱盘中的无限画布笔记

**原文标题**: Show HN: Infinite canvas notes in the non-Euclidean Poincaré disk

**原文链接**: [https://uonr.github.io/poincake/](https://uonr.github.io/poincake/)

本文介绍 **Poincake**，一款基于**双曲几何庞加莱圆盘模型**构建的网页端无限画布笔记应用。

**核心要点：**

- **概念：** 与标准的二维无限画布不同，Poincake 采用非欧几里得空间，将整个无限平面容纳于一个有限的圆内。靠近边缘的对象会急剧缩小，从而实现了真正意义上的无限分层缩放。
- **交互方式：** 用户可点击、拖拽并创建笔记（节点）。平移与缩放融为一种流畅的操作。拖拽对象时，其大小会根据与中心点的双曲距离发生变化。
- **功能特性：** 支持基础文本笔记、类型标签、基于 WebRTC 的实时协作以及浏览器本地数据库的离线存储。
- **独特效果：** 在导航过程中，几何结构会扭曲视角——将笔记移至边缘会导致周围内容看似产生悖论式移动，从而为组织想法创造出全新的空间体验。
- **技术栈：** 采用 React 构建用户界面，并借助自定义 WebGL 着色器在浏览器中高效渲染复杂的双曲几何图形。
- **项目状态：** 开源并托管于 GitHub，供公众使用与贡献。

**核心要义：** Poincake 利用双曲几何重新定义了空间笔记记录方式，在有限的视觉空间内提供了无限深度，使得在非传统、可扭曲变形的画布上组织信息成为可能。

---

## 7. 莱比锡的基准

**原文标题**: Benchmarks in Leipzig

**原文链接**: [https://arxiv.org/abs/2606.05818](https://arxiv.org/abs/2606.05818)

**摘要：**  
文章《莱比锡基准测试》（arXiv:2606.05818，2026年6月）介绍了49位数学家合作创建的一个包含100道研究级数学问题及其已知答案的数据集。该数据集主要是在德国莱比锡马克斯·普朗克数学科学研究所为期三天的研讨会上开发的，用于评估大型语言模型（LLM）的推理能力。  

评估分三个阶段进行：  
1. **第一阶段**：五个最先进的LLM每个问题尝试一次，留下41个未解决问题。  
2. **第二阶段**：其中三个模型每个问题运行20次尝试，未解决问题减少至16个。  
3. **第三阶段**：两个深度思考模型每个问题尝试三次，最终仅剩2个问题未解决。  

结果表明，LLM的数学推理能力正在迅速提升，但仍存在一些挑战。论文包含8个基准统计表和附录中列出的全部100道问题。该工作归类于数学（历史与综述），并与人工智能、代数几何、组合数学和表示论等领域交叉。

---

## 8. 消息人士称，五角大楼将以色列对美间谍威胁提升至最高级别

**原文标题**: Pentagon raised threat of Israeli spying on U.S. to highest level, sources say

**原文链接**: [https://www.nbcnews.com/politics/national-security/pentagon-raised-threat-israeli-spying-us-highest-level-sources-say-rcna348565](https://www.nbcnews.com/politics/national-security/pentagon-raised-threat-israeli-spying-us-highest-level-sources-say-rcna348565)

五角大楼已将针对以色列的反间谍威胁等级提升至"严重"，原因是担忧美方官员遭到的间谍活动加剧。据现任及前任美国官员透露，国防情报局发布内部备忘录指出，以色列为获取美国内部关于中东冲突（特别是对伊朗战争）的决策讨论，具备"严重"级别的人力情报与技术搜集能力。

此警报发布之际，特朗普总统与以色列总理内塔尼亚胡因对伊朗及黎巴嫩的战略分歧关系紧张，包括一次气氛僵硬的通话。特朗普寻求与伊朗达成外交协议，而内塔尼亚胡则倾向于恢复轰炸行动。以色列官员否认对美间谍活动指控，称其"完全虚假"且"出于政治动机"。白宫亦对该报道予以否认。

尽管美方官员在访问以色列时会采取额外防范措施，但两国间的高级别情报共享仍在继续，尤其在伊朗战争相关领域。此次事件令人回想起上世纪80年代乔纳森·波拉德间谍案等历史摩擦。专家指出，以色列长期拥有激进的间谍机构，但当前分歧恐将损害这对紧密盟友间的信任。

---

## 9. 大语言模型的工作原理

**原文标题**: How LLMs work

**原文链接**: [https://www.0xkato.xyz/how-llms-actually-work/](https://www.0xkato.xyz/how-llms-actually-work/)

**LLM工作原理概述**

本文解释了现代基于Transformer的LLM如何运作，聚焦关键组件，无需复杂数学公式。内容包括：

1. **分词**：使用子词单元（如BPE或SentencePiece）将文本转换为整数ID。效率源于将单词拆分为常见片段，但也可能导致计数错误等问题。

2. **嵌入**：通过可学习的嵌入矩阵将Token ID映射为密集向量。语义相似的Token会产生相近的向量，向量运算（如“国王-男人+女人≈女王”）反映了学习到的关系。

3. **位置编码**：注入单词顺序信息。现代LLM使用旋转位置编码（RoPE），基于位置旋转Token向量，从而更好地处理相对距离和长上下文。

4. **注意力机制**：通过查询、键、值向量实现Token间的信息交互。Token计算相似度得分（点积），经Softmax处理得到权重，并对值向量进行加权平均。因果掩码防止从左到右生成时“看到未来”。归纳头通过复制模式实现上下文学习。

5. **多头注意力**：并行运行多个注意力通道（各有可学习的投影），使模型能同时捕捉不同的语言关系。

文章还指出，完整注意力的计算成本很高，不同LLM共享相同的Transformer架构，但在训练数据、规模和后期训练上有所差异。

---

## 10. 谷歌每月将向SpaceX支付9.2亿美元的计算费用

**原文标题**: Google will pay SpaceX $920M per month for compute

**原文链接**: [https://techcrunch.com/2026/06/05/google-will-pay-spacex-920m-per-month-for-compute/](https://techcrunch.com/2026/06/05/google-will-pay-spacex-920m-per-month-for-compute/)

**文章摘要：**

SpaceX通过一份监管文件宣布，已与谷歌达成一项大型计算交易。根据协议，谷歌将从2026年10月至2029年6月，每月向SpaceX支付**9.2亿美元**，以获得约11万块英伟达GPU及其他组件的使用权。该交易规模小于与Anthropic达成的协议（每月12.5亿美元），提供的计算能力约为其一半。

谷歌表示，其AI产品（特别是Gemini Enterprise）需求超出预期，因此需要“过渡性计算能力”。协议包含一项取消条款，双方可在2026年12月31日之后提前90天通知解约。谷歌的计算资源将在2026年9月前逐步提升，期间享受折扣费率；若Spacex未能在2026年9月30日前交付承诺的GPU数量，谷歌有权终止协议，或接受更少的设备并支付更低费用。

该交易恰逢SpaceX即将进行IPO，其目标是以1.75万亿美元的估值融资750亿美元。谷歌是SpaceX的长期投资方，其持股在IPO后预计价值超过1000亿美元。据报道，双方还正在探讨为SpaceX的未来计划建设轨道数据中心。

---

## 11. 《宝可梦 绿宝石》移植至WebAssembly（每秒10万帧）

**原文标题**: Pokemon Emerald Ported to WebAssembly (100k FPS)

**原文链接**: [https://pokeemerald.com/](https://pokeemerald.com/)

一位开发者使用WebAssembly将《宝可梦 绿宝石》移植到网页浏览器中运行，实现了每秒10万帧的惊人性能。界面显示WebAssembly模块的加载画面，并配有映射经典Game Boy Advance按键的简易屏幕控制器：方向键（↑、←、→、↓）、A、B、SELECT和START。按键下方设有速度滑块（默认设置为"1倍速"），同时提供键盘快捷键说明：方向键控制移动、Z键对应A、X键对应B、回车键对应START、Shift键对应SELECT。关键信息点包括创纪录的10万帧刷新率、利用WebAssembly实现跨平台浏览器游玩，以及兼具屏幕触控与键盘映射的无障碍操作设计。

---

## 12. WoofWare.PawPrint——确定性.NET运行时

**原文标题**: WoofWare.PawPrint, a Deterministic .NET Runtime

**原文链接**: [https://www.patrickstevens.co.uk/posts/2026-06-04-announcing-woofware-pawprint/](https://www.patrickstevens.co.uk/posts/2026-06-04-announcing-woofware-pawprint/)

本文介绍了WoofWare.PawPrint，这是一个为.NET 10设计的确定性.NET运行时，已作为早期NuGet包发布。它能直接解释中间语言（IL），不做任何简化处理，仅对基类库（BCL）中即时编译（JIT）内部函数和原生代码进行填充。该运行时支持基础操作，如Console.WriteLine、async void Main、Task.Run、反射以及同步原语（如Monitor）。

PawPrint采用概率性并发测试进行线程调度，以探索有意义的线程排序。作者通过测试六种标准竞态条件（灵感来自Deadlock Empire）验证了该运行时，测试工具在每次测试中几乎都能立即发现这些竞态条件，通常仅需几次试验种子。

该运行时尚未达到生产就绪状态；BCL包含大量必须显式建模的原生代码，因此运行时很可能会崩溃。未来的工作将允许用户接入自定义实现。

PawPrint专为时间旅行调试和来源追踪而设计。每个指针、字节数组和算术结果都能知道其来源（例如，对象引用、原始字节或数组内指针差值）。

作者广泛使用了LLM——包括Sonnet 4.6、Gemini 2 Pro、Claude Opus 4.6/7和GPT-5.5——这显著加速了开发进程。然而，其中一项委托给GPT-5.5的复杂架构决策（使用虚假内存地址表示数组）被证明是灾难性的，最终只能完全由人工重写。作者坚持认为，对架构方向的人工监督仍然至关重要。

---

## 13. Lambda并未泄漏内存，是您的指标在欺骗您

**原文标题**: Lambda isn't leaking memory, your metrics are lying to you

**原文链接**: [https://engineering.taktile.com/blog/onnx-memory-usage-on-lambda/](https://engineering.taktile.com/blog/onnx-memory-usage-on-lambda/)

**摘要：Lambda 内存指标具有误导性——真正元凶是 glibc Arena 囤积行为**

本文详细介绍了一个AWS Lambda函数看似内存泄漏的案例：内存使用攀升至9GB并导致OOM终止。减小`lru_cache`大小反而使问题恶化。关键发现如下：

1.  **@maxMemoryUsed 是水位高点标记：** AWS确认该指标追踪的是执行环境的生命周期峰值，而非每次调用的使用量。单调递增的曲线属于正常现象，不能证明存在内存泄漏。

2.  **真正问题：glibc Arena 囤积行为：** ONNX Runtime使用多线程，每个线程会创建glibc内存竞技场。当内存被释放时，分配器会将这些内存囤积在竞技场内（囤积188MB，实际仅使用40MB），而非归还给操作系统，导致常驻内存集（RSS）居高不下。

3.  **解决方案：** 将`mmap`阈值从128KB降低至32KB，强制glibc对大块分配使用`mmap`。使用`mmap`分配的内存会在调用`free()`时立即归还给操作系统，使囤积内存减少97%（从188MB降至4MB）。

**结果：** 稳态常驻内存集从约625MB降至约415MB，代价是p50延迟增加40毫秒——对于该工作负载而言可以接受。经验教训是：应使用`mallinfo2()`区分实际使用与分配器囤积，切勿依赖Lambda的`@maxMemoryUsed`指标进行内存泄漏检测。

---

## 14. 使用MicroPython和WASM在沙箱中运行Python代码

**原文标题**: Running Python code in a sandbox with MicroPython and WASM

**原文链接**: [https://simonwillison.net/2026/Jun/6/micropython-in-a-sandbox/](https://simonwillison.net/2026/Jun/6/micropython-in-a-sandbox/)

本文发表于2026年6月6日，介绍了作者开发的`micropython-wasm`——一个alpha版Python包，它通过将MicroPython编译为WebAssembly并使用`wasmtime`引擎运行，在沙盒中安全执行不受信任的Python代码。

**核心动机：** 作者需要在Python应用程序（Datasette、LLM、sqlite-utils）中安全运行用户提供或插件代码，同时避免系统受损、内存泄漏或未经授权的网络/文件访问。

**沙盒

**工作原理：** 构建一个自定义的MicroPython WebAssembly二进制文件（约362KB）。该库采用带有请求/响应队列的线程机制：Python端通过`__session_next__`宿主函数发送代码字符串，WASM内的MicroPython使用`eval()`执行这些代码，并在多次`session.run()`调用间维持解释器持久状态。内存限制由`wasmtime`强制执行，CPU限制则利用"燃料"概念（默认2000万次操作）。

**状态与注意事项：** 该包在PyPI上为alpha版本（v0.1a2），可通过`uvx`或在Datasette Agent插件中使用。作者承认C语言胶合代码是在AI辅助下"靠直觉编写"的，但指出WebAssembly中的故障会被限制为异常。他们意识到发布了又一个不成熟的沙盒工具颇具讽刺意味，但仍希望专业团队能采用并改进这一方案。

---

## 15. 英格兰及威尔士警方被要求停止在法庭陈述中使用人工智能

**原文标题**: Police in England and Wales told to halt AI use in court statements

**原文链接**: [https://www.ft.com/content/229e5949-3ebc-4151-8a86-a01b5e259241](https://www.ft.com/content/229e5949-3ebc-4151-8a86-a01b5e259241)

**摘要：**

英国皇家检察署已指示英格兰和威尔士警方停止使用人工智能工具（如聊天机器人）起草法庭陈述和证人摘要。此举源于对严重不准确性和正当程序风险的担忧，包括捏造引文、产生幻觉以及法律文件中出现虚假或误导性内容。该项指令针对警方为法庭程序制作的任何涉及AI生成文本的案件工作，强调所有材料必须由人工警员仔细审查。皇家检察署警告称，不加批判地依赖AI可能危及案件、浪费法庭时间，并削弱公众对司法系统的信心。该指南还强调，AI生成的内容可能显得令人信服，但可能包含根本性错误，并提醒警方，他们仍需对提交给法庭的任何陈述承担全部责任。此举反映了在敏感的法律和公共部门背景下，对使用生成式AI更为谨慎的态度。

---

## 16. 85年之夏：DOSBOS遭ANALOG Computing否定

**原文标题**: Summer of '85: DOSBOS is rejected by ANALOG Computing

**原文链接**: [https://www.goto10retro.com/p/summer-of-85-dosbos-is-rejected-by](https://www.goto10retro.com/p/summer-of-85-dosbos-is-rejected-by)

这篇文章讲述了保罗·勒费弗尔在1985年向《ANALOG Computing》杂志投稿他的第一个重要Atari程序——DOSBOS的经历。DOSBOS是一个BASIC实用工具，允许用户在不退出BASIC的情况下查看磁盘内容并执行基本文件操作。尽管有父亲鼓励并帮忙用绿条纸打印投稿，但《ANALOG》仍以其局限性为由退稿。勒费弗尔至今仍珍藏着那封个性化的退稿信。他解释称，DOSBOS之所以不实用，是因为作为BASIC程序，它需要手动将代码LIST到磁盘，且需使用高行号以避免覆盖其他代码——这一过程比直接使用标准DOS菜单更繁琐。文章附带了原始程序清单（含乱码的反向字符），注明它保存在5.25英寸软盘上，并提供可下载的ATR磁盘映像供好奇者尝试。核心意义在于：首次编程尝试的怀旧价值、杂志退稿的个人记忆，以及Atari BASIC的技术特性。

---

## 17. 超越fork() + exec()模式

**原文标题**: Moving beyond fork() + exec()

**原文链接**: [https://lwn.net/SubscriberLink/1076018/16f01bbbb8e0d1f0/](https://lwn.net/SubscriberLink/1076018/16f01bbbb8e0d1f0/)

**摘要：**

本文讨论了一项在Linux内核中超越传统Unix `fork()`+`exec()`进程创建模型的提案。李晨提出"派生模板"（通过`spawn_template_create()`和`spawn_template_spawn()`系统调用）以优化同一可执行文件的重复启动。该模板缓存文件信息，降低设置成本。基准测试显示仅提升约2%。

Mateusz Guzik和Christian Brauner审阅了该提案，认为其未解决主要成本——即复制整个父进程状态的`fork()`本身。Brauner建议采用更好的方法：基于现有`pidfd`抽象构建新API。这将涉及通过`pidfd_open()`创建空进程，随后调用`pidfd_config()`进行配置（环境、可执行文件等），类似于`fsconfig()`。

关键目标是支持原生、高效的用户空间实现`posix_spawn()`，从而彻底取代高成本的`fork()`/`exec()`模式。李晨认同所描述的API更优，并将朝此方向推进。因此，派生模板补丁集将不会被采纳，但未来工作可能会在Linux中实现完善的`posix_spawn()`。

---

## 18. 标普500拒绝SpaceX，同时禁止OpenAI和Anthropic加入

**原文标题**: S&P 500 rejects SpaceX, also blocking entry for OpenAI and Anthropic

**原文链接**: [https://arstechnica.com/tech-policy/2026/06/sp-500-blocks-fast-spacex-entry-wont-waive-rule-for-unprofitable-ai-firms/](https://arstechnica.com/tech-policy/2026/06/sp-500-blocks-fast-spacex-entry-wont-waive-rule-for-unprofitable-ai-firms/)

标普500指数拒绝了SpaceX加速纳入指数的请求，阻止了该公司以及OpenAI、Anthropic等未来AI企业立即获得数十亿美元被动投资基金的机会。SpaceX曾为其IPO寻求特殊规则变更，包括将强制性的12个月"成熟期"缩短至6个月、豁免至少10%股份公开流通的要求，并取消盈利门槛。由于AI基础设施支出，该公司目前尚未盈利且背负290亿美元债务。

经过一个月的磋商，标普道琼斯指数公司拒绝修改准入规则，声明不会对财务可行性、成熟期或最低公众持股要求做出调整。这一决定也关上了其他AI公司在IPO后加速纳入指数的大门。

据彭博情报估算，若SpaceX成功纳入，将带来140亿美元的被动基金买入。OpenAI可能获得超过80亿美元，Anthropic则能获得46亿美元。不过，标普对标普全市场指数等关注度较低的指数做出了小幅让步。

其他交易所则更为通融：纳斯达克允许SpaceX在15个交易日内纳入纳斯达克100指数，富时罗素也将为其提供进入罗素500指数的快速通道。此番拒绝之前，晨星分析认为SpaceX 1.75万亿美元的IPO估值"严重高估"，其实际估值应为7800亿美元。

---

## 19. 从头构建Rust过程宏

**原文标题**: Building Rust Procedural Macros from the Grounds Up

**原文链接**: [https://www.learnix-os.com/ch02-03-implementing-the-bitfields-proc-macro.html](https://www.learnix-os.com/ch02-03-implementing-the-bitfields-proc-macro.html)

本文提供了一份关于理解和实现Rust过程宏的全面指南，重点聚焦于构建bitflags宏。

文章首先将宏定义为将输入映射为替换输出的规则，其操作对象是源代码（TokenStreams）而非运行时变量。TokenStreams是包含`TokenTree`节点（Ident、Group、Punct、Literal）的基本分词单元。宏在编译时执行，能够实现常规函数无法完成的抽象操作，例如在循环中注入`break`。

文章区分了两种宏类型：**声明式宏**（`macro_rules!`），通过带有元变量（如`$e:expr`）的模式匹配实现简单语法扩展；以及**过程宏**，在编译时运行自定义Rust代码。过程宏需要在`Cargo.toml`中设置`proc-macro = true`的独立crate中实现。

本文涵盖三种过程宏类型：
- **函数式宏**（`#[proc_macro]`）：像函数一样被调用，用生成的代码替换调用本身。
- **派生宏**（`#[proc_macro_derive]`）：应用于结构体/枚举/联合体，追加生成的代码（通常用于trait实现）。
- **属性宏**（`#[proc_macro_attribute]`）：为条目添加可选输入参数的注解，用生成的代码替换该条目及注解。

文章介绍了用于解析Rust源代码为抽象语法树（AST）的**`syn`** crate和用于生成代码的**`quote`** crate。Syn提供了表征Rust语法的结构化类型（如`syn::File`），使token层面的操作更加便捷。最终目标是利用这些工具，基于前一章位域宏的概念实现自定义属性宏。

---

## 20. 从树木到流动再回归：统一决策树与扩散模型

**原文标题**: Trees to Flows and Back: Unifying Decision Trees and Diffusion Models

**原文链接**: [https://arxiv.org/abs/2605.00414](https://arxiv.org/abs/2605.00414)

**《从树到流再回归：统一决策树与扩散模型》摘要**

本文被ICML 2026接收，建立了离散层次决策树与连续扩散过程之间的形式化数学对应关系。通过分析这些模型在适当极限下的行为，作者揭示了一个共享优化原理——**全局轨迹得分匹配（GTSM）**，对此原理而言，梯度提升的理想化版本是渐近最优的。

该理论统一通过两个实际应用得到验证：

1.  **TreeFlow：** 一种结合决策树与扩散模型的表格数据生成模型。相比标准扩散模型，它在生成质量上具有更高保真度，并实现了**2倍计算加速**。

2.  **DSMTree：** 一种新颖的蒸馏方法，将层次化决策逻辑从决策树迁移至神经网络。在多个基准测试中，其性能与教师模型差距在**2%**以内。

关键洞见在于：决策树与扩散模型虽看似根本不同，却可视为同一基础数学结构的不同表现形式，从而在效率与性能上实现跨领域改进。这项工作弥合了离散与连续模型类别之间的鸿沟，为生成式建模与模型压缩提供了全新设计原则。

---

## 21. Python JIT 项目被要求暂停开发

**原文标题**: Python JIT project was asked to pause development

**原文链接**: [https://discuss.python.org/t/an-announcement-from-the-steering-council-regarding-the-jit-project/107638](https://discuss.python.org/t/an-announcement-from-the-steering-council-regarding-the-jit-project/107638)

**摘要：**

Python指导委员会已正式要求暂停CPython主分支中实验性即时编译器的新开发。委员会在认可团队技术工作与性能提升的同时，强调该JIT依据信息性PEP 744作为实验性功能合并，但遗留了关键问题——如长期维护、安全审查、工具支持及对重新分发者的影响。

委员会现要求提交一份**标准流程PEP**，论证JIT作为受支持的非实验性功能的合理性。该PEP需涵盖维护承诺、与现有CPython功能（包括自由线程、性能分析器、调试器）的兼容性、明确的性能与平台指标、与第三方JIT（如CinderX、Numba）的关系，以及架构稳定性。委员会还鼓励提出支持多种策略的灵活JIT基础设施方案，而非单一实现。

在该PEP获批前，**主分支不得合并任何新JIT特性、优化或性能改进**；仅允许错误修复与安全补丁。委员会设定了**六个月的提交与解决窗口期**；若无PEP获批，则必须从主仓库移除JIT代码。委员会将此视为迈向清晰规划与正式承诺的一步，而非对贡献者工作的批评。

---

## 22. Mbodi AI（YC P25）正在招聘创始机器学习工程师（机器人方向）

**原文标题**: Mbodi AI (YC P25) Is Hiring Founding Machine Learning Engineer (Robotics)

**原文链接**: [https://www.ycombinator.com/companies/mbodi-ai/jobs/WYAcNkX-founding-machine-learning-engineer](https://www.ycombinator.com/companies/mbodi-ai/jobs/WYAcNkX-founding-machine-learning-engineer)

**Mbodi AI 创始机器学习工程师职位招聘摘要**

Mbodi AI 是一家由 Y Combinator 孵化（YC P25）的初创公司，正在为其纽约团队招聘一名创始机器学习工程师。该公司构建具身人工智能平台，使工业机器人能够像人类一样通过自然语言学习和操作，用户可通过对话教会机器人新技能，数分钟内即可部署。公司成立于2024年，资深小团队与全球工业伙伴（如ABB）及制造业、物流、实验室领域的财富100强客户合作。

该职位薪资为10万至25万美元，附带0.50%–2.00%的股权。职责包括生成式AI与机器人学交叉领域的应用研究，设计机器人学习算法（感知、规划、技能泛化），构建连接基础模型与物理执行的可扩展系统，并从第一天起主导技术方向。

理想候选人需具备3年以上AI、机器人学或ML经验；精通Python和PyTorch；掌握现代技术（Transformer、扩散模型、VLM、模仿/强化学习）；并拥有实际系统交付经验。公司重视可靠性、延迟及故障模式处理。提供签证赞助，并有机会与创始人共同攻克AI最艰巨的难题之一：将智能带入物理世界。

---

## 23. 新型方法将海水转化为饮用水，且无废弃物产生

**原文标题**: New method turns ocean water into drinking water, without waste

**原文链接**: [https://www.rochester.edu/newscenter/what-is-desalination-definition-ocean-water-704732/](https://www.rochester.edu/newscenter/what-is-desalination-definition-ocean-water-704732/)

**摘要**

这篇题为《新方法将海水转化为饮用水，且无废物产生》的文章重点介绍了罗切斯特大学的一项创新成果，该大学被誉为光学领域的顶尖学府。尽管文中未详述具体方法，但突出了该校的卓著声誉——尤其是其光学研究所，近一个世纪以来授予了美国半数以上的光学学位。核心观点是，研究人员开发了一种将海水淡化为饮用水且不产生废物的新技术，这相较于传统常产生盐水副产品的工艺是一大进步。该校将自身定位为学习与工作的首选之地，旨在通过此类前沿研究改变世界。本文似乎是针对这一突破的介绍或推广文章，更多侧重于该机构的专业实力，而非新海水淡化过程的技术细节。

---

## 24. 现代相机镜头维修的复杂性（2024）

**原文标题**: The intracies of modern camera lens repair (2024)

**原文链接**: [https://salvagedcircuitry.com/sigma-45mm.html](https://salvagedcircuitry.com/sigma-45mm.html)

**适马45mm f/2.8镜头维修总结**

作者（一名业余维修爱好者）以低于二手价四分之一的价钱购得一支损坏的适马45mm f/2.8镜头。该镜头外观完好，但安装时阻力较大，且无任何电子功能——无法对焦、调整光圈，相机也无法操控。

**诊断与工具：** 内部问题出在电路上。必备工具包括JIS十字螺丝刀、异丙醇和万用表。拆解后露出控制PCB板，作者顺着镜头触点块的输入电源进行排查。

**故障点：** 电源走线通至一颗TI TPS62140RGTR DC-DC降压转换器。其输入端附近有一颗标记为“N”的微小贴片保险丝，经测量呈开路状态。该保险丝很可能因长时间大电流（如连续自动对焦搜索）而熔断。维修更换为一颗2A松下快断保险丝（型号ERB-RE2R00V）。

**维修与结果：** 焊下旧保险丝，清洁焊盘，再焊上新保险丝。维修成功——镜头现在工作完美，手动对焦顺滑，光圈环功能正常。

**进一步排查提示：** 若保险丝完好，下一步应检查DC-DC输出电压（应为3.3V，供ARM Cortex-M3微控制器使用），并用逻辑分析仪探测测试点或SPI闪存。适马在GrabCAD上提供的免费3D CAD文件有助于制作测试夹具，以便在线测量电压。

---

## 25. 致敬：汽车艺术家山田二郎（1960-2025）[视频]

**原文标题**: Tribute to Jiro Yamada, Automotive Artist (1960-2025) [video]

**原文链接**: [https://www.youtube.com/watch?v=rJ2gQ5Md60U](https://www.youtube.com/watch?v=rJ2gQ5Md60U)

这段文字并非一篇文章，而是YouTube页面的页脚或法律免责声明部分。其中不包含任何关于“致敬山田次郎，汽车艺术家（1960-2025）”的信息。

所提供的内容由标准的YouTube版权、隐私、服务条款及联系信息组成，包括谷歌总部地址、免费支持电话（0807-882-594）、电子邮件地址（yt-support-solutions-kr@google.com），以及一项声明：创作者展示的产品由第三方商家销售，YouTube对此不承担责任。文中还包含2026年，表明这只是一个模拟版或草稿。

**总结：** 这段文字是YouTube的法律与联系页脚，缺少关于山田次郎或任何致敬视频的详细信息。

---

## 26. 《Splash是一种颜色格式》

**原文标题**: Splash Is a Colour Format

**原文链接**: [https://www.todepond.com/lab/splash/](https://www.todepond.com/lab/splash/)

**《“Splash是一种色彩格式”摘要》**

Splash是一种简化的色彩系统，使用三位数字（000–999）表示RGB通道，每个通道取值范围0至9。例如，900代表纯红，000代表黑色，999代表白色。该系统通过将色彩数量限制在1000种，帮助避免决策瘫痪，使选择变得快速而直观。

本文解释了如何将Splash转换为十六进制：将每个数字（0–9）映射到0–255范围，再转换为十六进制。但作者强调灵活性——开发者可以手动调整映射关系（例如使用自定义查找表）以适应特定主题。在Cellpond项目中，作者为每个通道精心挑选十六进制值，使色彩呈现出微妙的偏黑或更柔和的效果，展示了Splash的可定制性。

由于1000种色彩易于管理，文章提供了完整的静态查找表。这种格式被描述为"简洁流畅"，无需库即可轻松实现，非常适合追求高性能和简单用户界面的场景。它鼓励在色彩选择中拥抱不完美与创作自由。

---

## 27. 《世界构建者必读：前现代军队解析·第一部：为何而战》

**原文标题**: Pre-Modern Armies for Worldbuilders, Part I: Why They Fight

**原文链接**: [https://acoup.blog/2026/06/05/collections-pre-modern-armies-for-worldbuilders-part-i-why-they-fight/](https://acoup.blog/2026/06/05/collections-pre-modern-armies-for-worldbuilders-part-i-why-they-fight/)

本文是世界构建者前现代军队系列文章的首篇，指出军事体系是其母体平民社会的直接映射。要创作可信的虚构军队，必须先理解其诞生的社会。

关于该社会的关键问题包括：它是农业社会吗？是中央集权国家吗？存在何种贵族阶层（例如军事贵族与战士贵族的区别）？普通农民与精英阶层的关系如何（是自由民、佃农，还是耕种国有土地）？

文章核心聚焦于**募兵原则**——即人们服役的*根本原因*。作者提醒不要想当然地认为军队纯粹是雇佣关系（为报酬而工作），因为这在历史上极为罕见，且需要强大的国家官僚体系支撑。相反，以下三种原则更为普遍：

1.  **权利原则：** 服役与公民权利和特权挂钩（例如希腊重装步兵、罗马共和国军团）。
2.  **职业原则：** 服役是一种特定的社会角色，通常面向军事或战士贵族阶层。
3.  **依附原则：** 服役基于个人或社会层面与庇护者的纽带。

文章强调，在前现代社会，募兵通常取决于一个人的*出身*（其血统与社会地位），而非简单的个人选择或强制征兵。这一框架有助于世界构建者避免常见错误，例如在无法支撑专业军队的社会中设置职业军队。

---

## 28. 社交缓存清除

**原文标题**: Social Cache Busting

**原文链接**: [https://www.autodidacts.io/social-cache-busting/](https://www.autodidacts.io/social-cache-busting/)

以下是来自autodidacts.io的文章《社交缓存刷新》的摘要：

**摘要：**

文章《社交缓存刷新》探讨了人类记忆和社交互动常扮演“缓存”角色的概念，其中存储着过时或错误的信息，类似于网页浏览器的缓存。作者解释称，社交“缓存”包括共享的故事、笑话和假设，更新这些内容需要耗费脑力。

**社交缓存刷新** 指有意打破这种记忆循环，用准确、更新的内容替换陈旧信息的技术。作者将其比作浏览器快捷键Ctrl+Shift+R，强制加载全新页面。

关键方法包括：
- **直接提问**：询问“你上次听到关于X的消息是什么时候？”，打破“所有人都了解最新情况”的假设。
- **主动前置纠正**：说出“我以前也这么认为，但我最近了解到……”，以更新听众的思维模型。
- **刻意重复**：多次重复正确信息，覆盖旧的社交记忆。
- **使用类比**：让新概念比过时信息更令人难忘。

文章强调，社交缓存刷新是一种有意识、合作性的行为。它需要耐心和同理心，因为人们可能固守熟悉（旧）的信息。其目标不是“赢得”争论，而是共同刷新共享的心理地图，避免误解，确保所有人基于最新的理解行事。

---

## 29. pg_durable：微软开源数据库内持久化执行

**原文标题**: pg_durable: Microsoft open sources in-database durable execution

**原文链接**: [https://github.com/microsoft/pg_durable](https://github.com/microsoft/pg_durable)

**pg_durable：PostgreSQL的数据库内持久化执行**

微软已开源 **pg_durable**，这是一个将持久化执行直接集成到数据库中的 PostgreSQL 扩展。它允许开发者定义长期运行、容错的 SQL 函数，这些函数可在每个步骤后自动创建检查点，并在崩溃、重启或故障后从最后保存的状态恢复——无需外部编排器或状态表。

**主要特性：**
- **SQL 原生**：使用可组合的 SQL 运算符（`~>`、`|=>`）定义工作流，并以图结构存储。
- **零基础设施**：作为 PostgreSQL 扩展运行，无需 Redis、Temporal 或外部服务。
- **数据库感知**：包含用于调度、条件判断、并行执行和 HTTP 调用的一流原语。
- **运维可见性**：可通过标准 PostgreSQL 表（`df.instances`）查询进度和状态。

**适用对象：** 已在 PostgreSQL 中维护状态、希望替换脆弱的 cron 作业、队列、工作进程和状态表组合的后端工程师、DBA 和数据团队。

**工作流示例：** 向量嵌入流水线、ETL、定期维护、扇出聚合、外部 API 调用。

**局限性：** 最适合 SQL 形态的逻辑；复杂的非 SDK 工作流可能需要包装在 SQL 函数中，或对系统部分使用外部编排器。

**状态：** 预览版。作为 PostgreSQL 17/18 扩展提供，支持 Debian 包和 Docker。

---

## 30. 宇航员在躲避空气泄漏修复后被告知返回国际空间站

**原文标题**: Astronauts told to return to ISS after sheltering over air leak repairs

**原文链接**: [https://www.bbc.com/news/live/c4g44ew3g1kt](https://www.bbc.com/news/live/c4g44ew3g1kt)

国际空间站（ISS）上的宇航员接到指令，暂时在各自的航天器中避难，作为安全预防措施，同时俄罗斯舱段的新漏气点正在进行修复。两名俄罗斯宇航员致力于修复星辰号服务舱转移通道的漏气点。美国国家航空航天局（NASA）确认，该舱段“一段时间以来”一直存在裂缝和漏气问题，且这并非首次发生此类事件。俄罗斯联邦航天局（Roscosmos）报告称，发现了两处漏气点，其中一处已修复，并表示无论是宇航员还是空间站系统均未处于危险中。NASA随后暂停了结构修复工作以评估测量数据和信息，之后宇航员被告知返回空间站。

---

