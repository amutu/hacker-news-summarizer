# Hacker News 热门文章摘要 (2026-11-23)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 《GTA 6》鸟类图鉴：罪恶城与莱奥尼达野生动物野外指南

**原文标题**: The Birds of GTA 6: A Field Guide to Vice City and Leonida's Wildlife

**原文链接**: [https://www.audubon.org/magazine/birds-of-gta-6-field-guide-vice-city-wildlife](https://www.audubon.org/magazine/birds-of-gta-6-field-guide-vice-city-wildlife)

摘要：本文以游戏《侠盗猎车手6》（GTA 6）为引题，聚焦虚构城市罪恶城与莱奥尼达地区的鸟类及野生动物，以"野外指南"的形式切入。正文实际为一则气候行动倡导页面：以"鸟类为我们敲响气候警钟"为主题，呼吁公众与奥杜邦协会（Audubon）联合行动，签署请愿书，敦促民选官员尊重科学证据、积极制定并落实气候解决方案。页面设有"签署请愿"按钮，鼓励读者参与推动气候政策的公共倡导。整体而言，页面将游戏文化元素与真实的鸟类保护及气候变化议题相融合，借流行文化吸引注意力，唤起公众对生态环境与气候危机的关注，并引导用户从个人层面转向集体行动，通过联署方式向决策层施压。

---

## 2. 困惑度与智能

**原文标题**: Perplexity and Intelligence

**原文链接**: [https://openai.com/index/perplexity-and-intelligence/](https://openai.com/index/perplexity-and-intelligence/)

OpenAI首席科学家Jakub Pachocki撰文主张，应以困惑度（交叉熵损失）作为衡量AI预训练进步、推动行业安全协同的核心统一指标。文章指出，现代AI的进步本质上源于训练更优的数据压缩与预测器，而非针对特定能力从零设计。从GPT-2到最新模型，困惑度的持续下降对应了能力的质变：GPT-2实现连贯文本生成，GPT-3实现上下文学习，GPT-4实现思维链推理，而损失降至0.8以下后，模型在网络安全与数学领域展现出变革性能力。当困惑度达到约0.76时，模型已在数学上产出突破性成果，作者判断类似跃迁或将在2027年前后出现在预训练算法研究中。面对AI参与自身研发可能引发的加速，作者呼吁前沿实验室共同建立基于困惑度的共享评估标准、透明度规范与发展上限，在监控能力达到具体里程碑前暂缓模型推进。同时，文章也坦承困惑度指标的局限：跨实验室比较困难、与具体任务脱节、无法反映思维链等预训练之外的能力增益，且存在未知的性能下限。

---

## 3. 丰田、日产、本田将标准化零部件以降低成本

**原文标题**: Toyota, Nissan, and Honda to standardize parts to lower costs

**原文链接**: [https://www.caranddriver.com/news/a74490092/toyota-nissan-honda-standardize-parts-lower-costs/](https://www.caranddriver.com/news/a74490092/toyota-nissan-honda-standardize-parts-lower-costs/)

摘要：据Automotive News报道，日本三大汽车制造商丰田、日产和本田已达成合作，将开始标准化部分汽车零部件以降低生产成本。日本汽车制造商协会主席、丰田副会长佐藤耕司在东京新闻发布会上宣布了这一决定。短期内，标准化工作将从三个领域入手：统一钢材质量标准、制定塑料与树脂的一致性协议、推行线束通用颜色编码方案。这三个领域被优先选择，是因为它们不易被消费者察觉、不影响各品牌个性，同时占生产成本比重较大，能产生立竿见影的效果。长期来看，该协会计划将标准化范围逐步扩展至整车各零部件。目前协商首先面向日本国内零部件供应商，国际供应商将随后纳入。首批标准化措施预计明年落地。此举的背景是日本七大车企（含丰田、日产、本田、马自达、斯巴鲁、三菱、铃木）正面临中国车企日益激烈的竞争压力，各方希望通过零部件整合削减成本，并将节省资金转向技术创新。佐藤耕司表示，全行业共享强烈的危机感，正是这种危机意识推动了变革。

---

## 4. Show HN：我做了一款让你扮演大模型子代理的游戏

**原文标题**: Show HN: I built a game where you are an LLM's subagent

**原文链接**: [https://github.com/gulivan/worker755](https://github.com/gulivan/worker755)

Worker 755 是一款浏览器游戏，玩家扮演一个 AI 管理者的"子代理"。管理者由真实大语言模型驱动（Claude、GPT、Gemini 等），拥有任务队列和只读权限，通过工具调用向玩家下发指令。玩家须在 90 秒内执行命令并提交报告，管理者会核验成果、下达修正、撰写绩效评估，整个过程如同真实的代理编排。与此同时，用户 Dan 的家用文件（照片、NDA、演讲稿）正面临被误删的风险，每一轮都可能丢失新内容。游戏支持多种模式：全新沙盒或含实时数据库的生产环境；管理者可用脚本或 LLM 扮演；可选择隐藏命令提示以增加难度。商业上提供每日免费体验（服务器密钥+低价模型），也可自携 OpenRouter 等 API 密钥按量付费。技术层面，项目基于 Node 24 直接运行 TypeScript，前端为 React，后端内置无依赖的 shell 解释器、虚拟文件系统和类 SQLite 引擎；支持 Ollama、llama.cpp、vLLM 等本地模型服务，也提供 Docker 与 Cloudflare 隧道部署方案。核心亮点在于：管理者提示词中从不提及"游戏"或"人类"，每个任务设有隐藏的正确性校验，可统计管理者误判次数。项目采用 MIT 协议开源，完整设计见 SPEC.md。

---

## 5. 我加入了NTP Pool，但Stratum 1树莓派并未直接对外

**原文标题**: I joined the NTP Pool, but not with my Stratum 1 Pi

**原文链接**: [https://www.jeffgeerling.com/blog/2026/i-joined-the-ntp-pool/](https://www.jeffgeerling.com/blog/2026/i-joined-the-ntp-pool/)

作者将NTP服务加入全球NTP Pool，对外提供Stratum 2时间服务器（ntp-01.jeffgeerling.com），上游时间源为工作室内的Stratum 1树莓派。该树莓派通过室外GNSS天线搭配TimeHAT v6及u-blox ZED-F9T模块获取精确时间，并利用Intel i226网卡硬件时间戳，以ts2phc将PTP硬件时钟（PHC）锁定至UTC，精度达数十纳秒。架构上，Stratum 1树莓派通过WireGuard隧道连接位于圣路易斯的VPS作为Stratum 2，以缩短网络延迟。作者还分享加入NTP Pool的注意事项：需长期在线、具备稳定公网IP，且IP公开后可能遭遇DDoS或NTP扫描流量。配置方面，全系统由Ansible管理，使用chrony作为时间守护进程；作者曾遇到Debian默认DHCP引入外部NTP源导致精度下降的问题，最终改用chrony直接读取PHC解决。此外，其VPS曾因自动更新安装新内核后重启而短暂宕机，NTP Pool监控需6至12小时方可恢复服务评分。

---

## 6. 开放社交网络联盟

**原文标题**: Open Social Web Alliance

**原文链接**: [https://osw-alliance.net/en/](https://osw-alliance.net/en/)

开放社交网络联盟（OSWA）旨在构建基于开放标准与互操作协议的去中心化数字通信基础设施，核心理念借鉴电子邮件模式——无论用户选择何种平台，均可跨网络自由沟通。联盟愿景至2028年吸引逾一亿用户，打破Meta、字节跳动、Alphabet等巨头的平台垄断，以公共网络取代封闭平台。目前Fediverse已有超100款应用、4.2万个实例，活跃用户约1300万；AT Protocol社区注册账户达4300万，但发展仍受基础设施、治理、资金、用户吸引力及公共授权五大挑战制约。联盟提出清晰路线图：2026年秋季在德国政府支持下举办峰会并通过章程；2027年春季落实公共资金并完成首轮融资；同步发布首份社交网络健康报告；推动联邦与州政府确立跨部门合作法律框架，并在欧盟层面推动数字立法落地。随着关键公共机构采用开放社交网络应用，政治 discourse 将逐步向开放网络迁移，削弱主流平台影响力。该联盟面向公民社会、研究、商业、媒体、文化及公共部门全面开放，诚邀各方共建开放社交网络。

---

## 7. 硅谷怎么了？——从价值创造到价值攫取

**原文标题**: What Happened to Silicon Valley?

**原文链接**: [https://www.oreilly.com/radar/what-happened-to-silicon-valley/](https://www.oreilly.com/radar/what-happened-to-silicon-valley/)

摘要：蒂姆·奥莱利在2026年约翰斯·霍普金斯大学"玛格丽特·利维政治经济学讲座"上，回顾硅谷四十余年演变。他指出，早期互联网以"为用户创造更多价值"为信条，谷歌曾有94%的搜索结果页无广告，企业靠解决真实问题赢得市场。然而在股东资本主义的激励结构下——以弗里德曼1970年"企业唯一社会责任是增加利润"为起点，辅以股权期权制度——科技巨头逐渐滑向价值攫取：谷歌将广告推至搜索页首位，亚马逊在结果中塞入大量广告，AI搜索直接截流内容来源。奥莱利借用"经济租金"理论区分两种超额收益："上升潮租金"是企业改善生态、推动集体进步所获的合理回报；"强盗贵族租金"则是依靠市场权力不对称对上下游和用户的剥削性抽取。他认为企业从前者滑向后者的转变近乎一种"技术周期定律"。问题根源不在个别"坏人"，而在于整个市场机制将股东利益置于人类福祉之上。他呼吁重新设计这套"慢速AI"般的制度机器，将人类繁荣而非企业利润设为其目标函数。

---

## 8. 更完善的软件测试术语体系

**原文标题**: A Better Vocabulary for Testing

**原文链接**: [https://alperenkeles.com/posts/vocab-for-testing/](https://alperenkeles.com/posts/vocab-for-testing/)

本文指出当前软件测试术语（如单元测试、集成测试、端到端测试）定义模糊、缺乏可操作性，提出了一套更精细的分类框架。文章从五个维度重构测试体系：一是测试范围，沿编程语言构造层级（函数、类、模块、系统）与状态性（有/无状态）两个轴划分，系统级测试因输入经序列化验证而更易约束输入空间，有状态测试可借助设计合约（DbC）或仿真方式处理；二是测试目的与假设，涵盖功能正确性、性能、安全性及混沌测试等，每种假设需对应的领域专用预言机；三是预言机类型，包括人类直觉驱动的"tinkering测试"、基于具体输入输出的示例测试（含快照测试）、内联断言（前置/后置条件与不变量），以及基于抽象性质的属性测试。属性测试涵盖全局不变量、变形关系（如结合律）、往返性质（如压缩-解压）、兼容性/差分测试（如多排序算法等价性）与幂等性，已在浏览器渲染、GCC编译器、S3存储等领域展现强大威力。文章强调这些维度正交且可组合，使开发者能依据资源状况灵活调整测试策略。

---

## 9. 过渡体素算法

**原文标题**: The Transvoxel Algorithm

**原文链接**: [https://transvoxel.org/](https://transvoxel.org/)

过渡体素（Transvoxel）算法由Eric Lengyel于2009年提出，用于在体素地形中实现不同分辨率三角网格的无缝拼接，以支持大尺度体素数据的多级细节（LOD）渲染。体素地形可表现洞穴、悬岩等复杂结构，但不同分辨率网格的边界处常产生裂缝与孔洞，且因拓扑自由度高，修补难度远超传统高程地形。该算法引入"过渡单元"概念，在两种分辨率体素数据之间插入特殊单元，仅需采样九个高分辨率体素值，将原本约120万种组合缩减为512种，并进一步归纳为73个等价类，借助查找表高效生成填充三角形。其思路与Marching Cubes相似，但作用于不同分辨率交界处的体素排列。核心优势在于仅需局部体素数据即可处理每个过渡单元，因此支持动态体素数据的实时快速重三角化，适用于实时应用。完整实现包含于C4引擎，算法无专利限制。相关论文发表于《Journal of Graphics, GPU, and Game Tools》（2010年），详细理论见Lengyel在加州大学戴维斯分校的博士论文（2010年）。

---

## 10. 达美航空经亚特兰大中转航班全部延误 自动系统故障所致

**原文标题**: All Delta Flights Through Atlanta Delayed as Automated System Falters

**原文链接**: [https://www.nytimes.com/2026/11/22/us/delta-flight-delays-system-outage.html](https://www.nytimes.com/2026/11/22/us/delta-flight-delays-system-outage.html)

无法访问该文章链接

---

## 11. 晚宴上的迪拉克定理

**原文标题**: Dirac's Theorem at a Dinner Party

**原文链接**: [https://prideout.net/blog/dirac-dinner-party/](https://prideout.net/blog/dirac-dinner-party/)

摘要：本文是图论学家加布里埃尔·迪拉克（物理学家保罗·迪拉克的继子）的科普文章，以"晚宴"比喻重新阐释1952年迪拉克定理：若简单图有n个顶点且每个顶点至少有n/2个邻居，则图必含哈密顿圈（经过每个顶点恰好一次的闭合回路）。文章将定理转化为趣味问题——n位客人围坐圆桌，要求每人两侧皆为朋友。证明分三步：首先，随机排座后将陌生人相邻对标记为"间隙"；其次，通过"翻转"操作（将相邻陌生人之间的一段座位反向重排），每次恰好消除一个间隙且不产生新间隙；最后，用"传土豆"思想实验证明每个间隙必对应一个"交叉"（两段朋友关系的交叉），从而保证有限次翻转后间隙归零。文章还提及哈密顿圈在旅行商问题与三维图形渲染（三角形条带）中的应用，并预告将讨论巴尼特猜想。此证明最早见于数论学家奥雷的工作，后由帕尔默整理推广。

---

## 12. 深入 PyPy：初识 RPython

**原文标题**: Inside PyPy: First Contact with RPython

**原文链接**: [https://bernsteinbear.com/blog/inside-pypy-first-contact-with-rpython/](https://bernsteinbear.com/blog/inside-pypy-first-contact-with-rpython/)

本文是 Max Bernstein 对 RPython 的初步探索。作者因缺乏理想的语言实现语言而转向研究现有工具，对比了 RPython（PyPy/Topaz）、Truffle（TruffleRuby/GraalPython）和 Deegen（Lua）三种方案：Deegen 用 C++ DSL 生成解释器与 JIT，Truffle 基于 Java 注解的 AST 解释器经部分求值生成优化代码，RPython 则要求用类 Java/Go 风格的受限 Python 2 方言编写解释器，经分析翻译为 C 并运行时 JIT。作者以双数函数为例演示了 RPython 编译流程，并展示了其函数参数必须单态化的类型限制——混合字符串与整数调用会触发 UnionError，需通过 @specialize.argtype 注解生成多态副本。文章肯定了 RPython 在 AOT 编译加可选 JIT、自动内存优化、内置 GC 等方面的优势，同时批评其 meta-tracing 机制、编译耗时、错误信息不友好及工具链需全部重写等缺陷。作者呼吁社区探索更轻量的 VM 构建工具包，并列举了 Weval、Yk、semPy、Zig 等相邻项目作为参考。

---

## 13. Agentics：可塑软件

**原文标题**: Agentics: Mushy Software

**原文链接**: [https://12gramsofcarbon.com/p/agentics-mushy-software](https://12gramsofcarbon.com/p/agentics-mushy-software)

2026年，连接软件服务的方式已从脆弱的"胶水代码"演进为灵活的"智能体润滑"——由AI智能体即时生成代码，随需求而变。作者将这种高度可塑的软件称为"可塑软件"：应用无需一次成型，用户可随时通过智能体将其重塑为任意形态，严格耦合既不可取也难以实现。Claude Artifacts是典型代表——功能完备却"故意半成品"，交由用户借助智能体完成收尾。代价在于：响应更慢、缺乏明确接口契约而难以推理、开发者对用户行为的控制力大幅削弱。Nori公司深度实践了此理念：每个内部工具由一个常驻PM智能体管理，自动修复故障、持续演进，永不完全"交付"；内容发布亦实现从Substack到X、YouTube、LinkedIn等多平台自动分发。作者以SpaceX猛禽发动机的多代迭代类比可塑软件的演化，并主张软件既已廉价，便应如玩具般允许童趣与玩味，而非困于严肃的生产力叙事。呼吁"让软件更柔软，让创造更有趣"。

---

## 14. Show HN：DEFLATE 透视——看穿压缩文件内部

**原文标题**: Show HN: Deflate X-Ray, See inside a compressed file

**原文链接**: [https://hrih.si/projects/deflate-xray/](https://hrih.si/projects/deflate-xray/)

"DEFLATE 透视"是一个纯浏览器工具，将 DEFLATE 压缩算法的内部运作可视化。它用自研解压器（遵循 RFC 1951，结构类似 zlib 的 puff）拆解 .gz、.zlib、.png、.zip 等文件，展示两大核心信息：一是每个字节的比特编码成本——高频字符编码短、罕见字符编码长，复制指针内部成本趋近于零，颜色深浅直观呈现；二是回溯指针——每个重复片段指向其首次出现位置，可点击查看原始比特与弧线连接。工具还能显示复制嵌套深度（如《杰克盖的房》嵌套 11 层，PNG 渐变可达 150 层）及比特在字母、指针、头部间的分配比例，并校验文件校验和。所有处理在浏览器本地完成，零网络请求，文件绝不上传；用户也可直接输入文本，由浏览器内置 DEFLATE 压缩后再解析。整页仅 45KB。已知限制：仅解析前 15 万字节，多成员 gzip 仅追踪首个，不支持 ZIP64、加密条目及 zlib 预设字典，非 ASCII 可打印字符以"·"显示。该项目出自作者"夜间构建"系列——由 AI 代理每晚自动构思、开发并测试一个新项目，DEFLATE 透视诞生于 2026 年 10 月 15 日构建。

---

## 15. 使用 AWS 模拟器测试 Terraform

**原文标题**: Testing Terraform with AWS Emulator

**原文链接**: [https://notes.hatedabamboo.me/terraform-tests-with-aws-emulator/](https://notes.hatedabamboo.me/terraform-tests-with-aws-emulator/)

本文介绍如何利用新发布的 AWS Emulator 工具解决 Terraform 在 CI 中"plan 通过但 apply 失败"的痛点。AWS Emulator 是一个自包含的二进制文件或 Docker 容器，能模拟真实 AWS API 端点，使工作流从"Plan → Apply"升级为"Plan → 对模拟器 Apply → 对真实 AWS Apply"，从而在合并前捕获静态声明无法发现的问题（如资源命名冲突、数据库版本升级限制等）。文章展示了两种场景：本地通过 Docker 启动模拟器，配置 Terraform provider 的 insecure、endpoints 等参数指向模拟器；CI 中通过 GitHub Actions 安装模拟器包、启动带签名校验的实例、配置凭据与证书后执行完整的 plan 与 apply 流程，整个流水线约 1 分 25 秒完成。此外，作者还演示了故意构造非法资源声明，验证模拟器能在 apply 阶段正确拦截并返回与真实 API 一致的错误信息。最后讨论了局限性：暂不支持 IAM 策略与权限校验、部分服务仍返回 501 NotImplemented、默认开启遥测收集（可关闭且代码开源）。

---

## 16. 三明治模拟器

**原文标题**: Sandwich Simulator

**原文链接**: [https://stulle.app/](https://stulle.app/)

该网页是一个在线三明治模拟制作工具（Stullensimulator，源自德语/北欧语"Stulle"），需启用JavaScript方可运行。页面主要提供交互式三明治定制体验，核心功能包括：查看三明治照片（Foto）、选择各类涂抹酱料（Aufstriche）以及添加更多配料（Mehr Beläge）。当前页面显示"三明治加载中"的提示，表明内容正在通过JavaScript动态渲染。整体而言，这是一个让用户自由搭配酱料与配料、模拟制作三明治的趣味互动小应用。

---

## 17. 2028年Anthropic 87%电力将来自天然气、11%来自煤炭

**原文标题**: 87% of the Anthropic power will come from gas and 11% from coal in 2028

**原文链接**: [https://betterdatacenterproject.com/2026/11/16/how-ai-is-powered-a-breakdown-of-byop-and-grid-power/](https://betterdatacenterproject.com/2026/11/16/how-ai-is-powered-a-breakdown-of-byop-and-grid-power/)

本文分析了AI公司Anthropic数据中心的电力来源与环境影响。研究发现，Anthropic在美国无任何可再生能源直接承诺，其已签约的15GW算力中约5.9–9.6GW已落实到具体数据中心。到2028年，预计87%电力来自天然气、11%来自煤炭，无电网可再生能源接入。碳排放方面，2028年其用电排放将达1700万至3800万吨CO2e（中值3200万吨），超过加州全发电行业2024年排放量及Meta、微软、谷歌2025年合计范围二排放，将使美国电力行业排放增加1.1%–2.5%。其平均碳强度比美国电网均值高35%。此外，80%现场发电采用低效简单循环燃气轮机，年排放超1.3万吨氮氧化物，预计造成每年20–30亿美元健康损害，部分设施仍依赖未许可、未配备尾气处理装置的临时涡轮机。背景上，AI数据中心正驱动全美50%–75%的电力需求增长，177GW"自带电源"燃气项目已获规划，另有200GW电网化石电厂在建。

---

## 18. 基于公开网络OPDS的自托管图书馆分馆

**原文标题**: Self-hosted library branch over public web OPDS

**原文链接**: [https://joinmayberry.com/](https://joinmayberry.com/)

Mayberry 是一个自托管的小型图书馆分馆项目，旨在通过公开网络的 OPDS（开放公共分发系统）协议，为用户提供轻量级的图书借阅与分发服务。该项目采用自托管架构，用户可在个人服务器上搭建图书馆节点，无需依赖第三方平台，强调数据自主与隐私可控。借助 OPDS 协议，用户可通过兼容的应用或设备远程访问馆藏资源，体验类似公共图书馆分馆的借阅流程。Mayberry 设计简洁，适合个人、家庭或小规模社区使用，体现了"小型化、去中心化"的数字图书馆理念。

---

## 19. Pill to treat pancreatic cancer hailed as 'biggest breakthrough in decades'

**原文标题**: Pill to treat pancreatic cancer hailed as 'biggest breakthrough in decades'

**原文链接**: [https://www.theguardian.com/society/2026/nov/20/pill-pancreatic-cancer-breakthrough-daraxonrasib](https://www.theguardian.com/society/2026/nov/20/pill-pancreatic-cancer-breakthrough-daraxonrasib)

文章之前已经处理过

---

## 20. 欧洲在科学揭示化学品与"生活方式疾病"关联之际放宽化工监管

**原文标题**: Europe weakens chemical rules as science links them to 'lifestyle diseases'

**原文链接**: [https://www.lemonde.fr/en/opinion/article/2026/11/22/as-science-increasingly-shows-the-role-chemical-substances-play-in-lifestyle-diseases-europe-weakens-its-regulations_6786595_23.html](https://www.lemonde.fr/en/opinion/article/2026/11/22/as-science-increasingly-shows-the-role-chemical-substances-play-in-lifestyle-diseases-europe-weakens-its-regulations_6786595_23.html)

无法访问该文章链接

---

## 21. Inkling-2-Mini in 5.4 GB Memory

**原文标题**: Inkling-2-Mini in 5.4 GB Memory

**原文链接**: [https://github.com/ShinMegamiBoson/lookatmyquant](https://github.com/ShinMegamiBoson/lookatmyquant)

文章之前已经处理过

---

## 22. C++26 is done (again): November 2026 ISO C++ meeting trip report

**原文标题**: C++26 is done (again): November 2026 ISO C++ meeting trip report

**原文链接**: [https://herbsutter.com/2026/11/21/c26-is-done-again-trip-report-november-2026-iso-c-standards-meeting-buzios-brazil/](https://herbsutter.com/2026/11/21/c26-is-done-again-trip-report-november-2026-iso-c-standards-meeting-buzios-brazil/)

文章之前已经处理过

---

## 23. Muru：mod_wsgi 作者推出的 AI 辅助 Rust Python 应用服务器

**原文标题**: Muru – AI-assisted Rust server for Python apps by mod_WSGI's creator

**原文链接**: [https://simonwillison.net/2026/Nov/21/muru/](https://simonwillison.net/2026/Nov/21/muru/)

Graham Dumpleton 是 mod_wsgi 创始人，二十年来始终探索在生产环境中运行 Python Web 应用的最佳方案。如今他推出 Muru——一款 Rust 编写、AI 辅助开发的新一代服务器，为 ASGI 与 WSGI 应用提供从开发到生产的全方位支持。延续 wrapture 项目风格，他在开发中同步发布了极其详尽的系列博客。三周内近二十篇文章涵盖：worker 架构与 fork 机制、开发环境 HTTPS、WSGI/ASGI 统一运行、零重启发布、无服务网格的金丝雀发布、容器与 Kubernetes 深度集成、基于 worker 反馈的弹性伸缩与缩容至零、定时覆盖、页面工具栏与链路追踪、延迟导入等。他特别指出：AI 虽承担大量编码，但判断质量是否达标仍靠人工，二十年的 mod_wsgi 经验恰是打磨 Muru 的关键。他表示愿投入大量精力，将 Muru 做到自己与用户皆可信赖。

---

## 24. Backblaze隐私政策更新引发客户对个人数据出售或共享的担忧

**原文标题**: Backblaze customers worried of personal data sale/sharing after policy update

**原文链接**: [https://www.neowin.net/news/backblaze-customers-worried-of-personal-data-salesharing-after-policy-update/](https://www.neowin.net/news/backblaze-customers-worried-of-personal-data-salesharing-after-policy-update/)

无法访问该文章链接

---

## 25. 法西斯主义与垄断

**原文标题**: Fascism and Monopoly (2020)

**原文链接**: [https://repository.law.umich.edu/mlr/vol118/iss7/2/](https://repository.law.umich.edu/mlr/vol118/iss7/2/)

本文探讨近期反垄断法政治议题回热背景下，工业集中与垄断在希特勒崛起及第三帝国对外侵略中所扮演的历史角色。反垄断执法强化派认为垄断与卡特尔助推了纳粹上台，并警告美国当前经济集中度的上升或同样危及民主；怀疑论者则指出，在希特勒掌权的关键阶段，德国大企业实际上多持反对立场。作者依托商业史文献及美国盟军占领当局（OMGUS）反卡特尔部门档案，对这一历史关联进行了系统评估。研究发现，尽管德国大企业在1933年希特勒出任总理前原则上并不支持他，但魏玛共和国时期市场权力的极端集中，通过多种机制为希特勒夺取并巩固极权统治创造了条件。由此，德国的纳粹经验在历史层面印证了"经济权力极端集中为政治权力极端集中所赋能"这一论断。然而，魏玛时期导致经济高度集中的诸多行为在当代反垄断法律框架下均属违法，这一发现对"必须根本性转变反垄断执法力度方能遏制反民主势力"的主张构成了有力质疑，暗示现行反垄断规则本身或已具备防范此类风险的能力。

---

## 26. 推理服务提供方数据处理安全事件

**原文标题**: Data Processing Incidents on Inference Providers

**原文链接**: [https://openrouter.ai/blog/announcements/data-processing-incidents-on-inference-providers/](https://openrouter.ai/blog/announcements/data-processing-incidents-on-inference-providers/)

近日，安全研究人员Dragos报告称，部分AI推理服务提供方存在数据泄露或数据政策执行不到位的问题。OpenRouter作为连接客户与模型及提供方的平台，与研究人员及各方密切协作展开调查。经核实，OpenRouter平台本身未遭入侵，问题出在特定推理提供方层面。OpenRouter已采取以下措施：基于调查结果下线三家提供方；从"零数据保留"（ZDR）资格中移除125个端点，包括被研究人员标记的端点及预防性移除的端点；已通知所有可能受影响的客户。目前公开披露安全公告的提供方包括Atlas Cloud、Novita、Phala和Together，涉及问题涵盖数据泄露、提示词泄露等。后续工作中，OpenRouter正将研究人员的测试方法纳入常态化安全检查，验证网络路径以防止请求和响应被转发至第三方，并要求相关方在恢复ZDR资格前提供充分的安全保障与验证。OpenRouter表示将持续提高安全标准，所有接入平台的服务提供方均需满足相关要求。

---

## 27. 软件是否始终过于复杂，超出了人类能力？

**原文标题**: Was software just always too complex for humans?

**原文链接**: [https://anil.recoil.org/notes/software-too-complex-for-humans](https://anil.recoil.org/notes/software-too-complex-for-humans)

摘要：作者以黎曼猜想被1700万行AI辅助代码证明却无人完全理解其原理为引子，反思软件工程数十年的根本困境：人类编码能力远不足以驾驭已深入社会各领域的软件系统，由此导致供应链攻击频发、全球性服务中断等安全危机。作者认为，仅靠更强大的AI模型无法让软件工程"追赶上"现实，需两条路径并行：一是以形式化规格说明（formal specification）为源头推导所有软件，包括重建操作系统栈与重构指令集，借助unikernel等技术减少接口、提升可组合性，并让修复工作脱离人工修补循环；二是刻意引入多样性，避免软件单一化导致一处漏洞波及全局，使各节点通过类似"遗传"机制演化出不同实现。形式化规格本身可保持统一，但模型与代码实现必须多样化。在社会层面，开源社区正面临AI披露与信任危机，但人类角色并未消失——仍须决定规格内容、开展新研究（如异构节点调试、系统简化与责任归属），并推动协作模式的根本变革。

---

## 28. UltraSMR有何不同？

**原文标题**: What Makes UltraSMR Different?

**原文链接**: [https://blog.westerndigital.com/what-is-ultrasmr-technology/](https://blog.westerndigital.com/what-is-ultrasmr-technology/)

UltraSMR是西部数据推出的新一代硬盘记录技术，是对传统叠瓦式磁记录（SMR）的重大改进。传统SMR虽能提升存储密度，但在随机写入和混合负载场景下存在明显的写入放大和性能骤降问题。UltraSMR的核心创新在于将盘片动态划分为"分区CMR"与"分区SMR"区域，由控制器根据实际写入模式智能调度：顺序写入走SMR区以获取高密度，随机或频繁覆写则走CMR区以保障写入速度，从而在保持高存储容量的同时大幅缓解了SMR的性能瓶颈。此外，UltraSMR与热辅助磁记录（HAMR）技术结合，进一步缩小磁记录单元，推动单盘容量向更高密度演进。该技术主要面向企业级与数据中心场景，旨在兼顾大容量、高吞吐与稳定写入性能，满足AI、云存储等对存储性能与容量双重需求的 workload。简言之，UltraSMR并非简单提升密度，而是通过智能分区调度机制，让SMR"该快时快、该密时密"，从根本上区别于传统SMR的取舍式设计。

---

## 29. 离散傅里叶变换（DFT）笔记

**原文标题**: Notes on the discrete Fourier transform (DFT)

**原文链接**: [https://eli.thegreenplace.net/2026/notes-on-the-discrete-fourier-transform-dft/](https://eli.thegreenplace.net/2026/notes-on-the-discrete-fourier-transform-dft/)

本文从有限时长离散信号的分析需求出发，介绍离散傅里叶变换（DFT）的原理与计算。核心思想是将N个采样值视为周期信号的一个周期，借用离散时间傅里叶级数（DTFS）系数定义DFT：X[k]=Σx[n]e^{-ik(2π/N)n}。DFT等价于连续频谱DTFT在N个等间隔频率点上的采样，解决了DTFT无法在计算机上连续求值的问题。文章进一步建立线性代数解释：以单位根共轭ω=e^{-i2π/N}为基构造N×N傅里叶矩阵F，其行向量构成ℂ^N的正交基，DFT即矩阵乘法X=F·x；逆DFT由F⁻¹=(1/N)F*完成信号重建，与DTFS推导结果一致。计算上，直接法复杂度为O(N²)，快速傅里叶变换（FFT）则降至O(N log N)。最后讨论频谱泄漏：当采样区间非信号整数周期时，频率分量扩散至相邻频bin，实际中常用窗函数加以抑制。

---

## 30. Getting the mind to steer the body to steer you

**原文标题**: Getting the mind to steer the body to steer you

**原文链接**: [https://notnottalmud.substack.com/p/getting-the-mind-to-steer-the-body](https://notnottalmud.substack.com/p/getting-the-mind-to-steer-the-body)

文章之前已经处理过

---

