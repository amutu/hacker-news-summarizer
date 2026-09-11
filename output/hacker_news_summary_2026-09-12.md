# Hacker News 热门文章摘要 (2026-09-12)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 数学领域中人工智能的目标错位

**原文标题**: A misalignment of AI in mathematics

**原文链接**: [https://mathandai.org/](https://mathandai.org/)

本文由26位菲尔兹奖得主联署，指出AI公司推崇以解决数学难题为基准测试的做法，与数学社区的核心目标存在严重错位。数学研究的本质在于理解基本结构，著名问题仅是衡量理解深度的标志；解题本身只是手段，概念洞察才是目的。数学社区依靠培养人才、孕育思想、促进交流等缓慢而深刻的人类互动过程运转，这一传统正面临威胁。AI快速批量产出解题结论，往往缺乏规范表述、方法提炼与文献引用，不仅带来署名与归属问题，更可能破坏新思想生长的土壤，使人类间至关重要的知识传承链条断裂。作者强调，这一困境并非数学独有——当AI能直接产出多年训练所追求的成果时，工作本身的意义面临质疑，所有知识型与创造性职业乃至全人类都将遭遇类似挑战。文章呼吁AI公司、数学界及全社会紧急应对，确保技术进步不偏离服务人类理解与创造的初衷，并指出若决策得当，AI亦可成为推动数学发展的助力。

---

## 2. GrapheneOS 重写版短信应用正式发布

**原文标题**: GrapheneOS' rewritten Messages app is released

**原文链接**: [https://github.com/GrapheneOS/Messaging/releases/tag/13](https://github.com/GrapheneOS/Messaging/releases/tag/13)

GrapheneOS 短信应用第13版正式发布，全面采用 Jetpack Compose 与 Material 3 重构界面，支持大屏双栏布局。主要更新涵盖：会话列表新增置顶、静音、归档、快速操作及多重新设计；会话界面重建消息气泡，支持多选删除、全屏消息详情、MMS 主题编辑、群组管理及 SIM 回退优化；媒体模块重写照片选择器、音频录制（含滑动取消）和图片查看器；分享器新增搜索与多选功能。安全方面，YouTube 链接预览默认关闭，共享内容验证拒绝 file: URI 及私有文件，小部件接收器不再导出，修复 GIF 空引用及 MMS 解析内存越界等漏洞。同时修复了小部件、数据库插入、通话快速回复等多处崩溃，优化通知与同步机制，支持多用户及工作配置文件，完善无障碍功能，扩展单元测试与 CI 流水线。平台层面升级至 minSdk 36、targetSdk 37，引入 Compose BOM、Navigation 3、Coil 3 及 CameraX 等依赖。

---

## 3. Litelm：LiteLLM 精简版

**原文标题**: Litelm: LiteLLM Without the Bloat

**原文链接**: [https://github.com/kennethwolters/litelm](https://github.com/kennethwolters/litelm)

litelm 是从 LiteLLM 中提取核心调用路径的精简库，仅约 2,900 行代码、2 个依赖（openai、httpx），聚焦模型路由、消息格式转换、流式输出、工具调用与嵌入等核心能力，去除了代理服务器、缓存、成本追踪、负载均衡等冗余模块。其 API 与 LiteLLM 完全一致，现有用户只需将 import 中的 litellm 替换为 litelm 即可无缝迁移，每个函数均提供异步版本。项目支持 19 家服务商（OpenAI、Anthropic、Groq、Mistral、xAI、Azure、Bedrock、Ollama 等），通过 provider/model-name 语法统一路由；错误统一映射至自有异常体系，覆盖上下文超限、速率限制、认证失败等场景。开发采用人类主导、AI 辅助模式；维护者于 2026 年 9 月完成上游审计，triage 360 个核心提交，262 项自测、45 项在线服务商测试及 10 项 DSPy 集成测试全部通过。当前为 Alpha 阶段。

---

## 4. Claude 仅供18岁以上用户使用

**原文标题**: Claude is only available to people over 18 years

**原文链接**: [https://support.claude.com/en/articles/15171100-age-assurance-on-claude](https://support.claude.com/en/articles/15171100-age-assurance-on-claude)

Claude（Anthropic的消费级产品）仅限18岁以上用户使用，注册时需确认本人年龄。系统设有安全机制，检测到未成年使用迹象时将禁用账户，并通知用户进行年龄验证。验证通过第三方平台Yoti完成，用户可通过邮件链接选择以下任一方式：1）面部年龄估算——拍摄自拍，由AI技术估算年龄，无需身份证件；2）身份证件验证——上传护照、驾照或国民身份证等照片；3）Yoti数字ID应用——若已安装Yoti应用，可共享"18岁以上"验证属性。验证通过后账户即恢复使用。在数据保护方面，Yoti为经过独立审计、符合SOC2标准的年龄验证服务商，用户的面部照片、证件图像等个人信息在核验完成后即被删除。Anthropic仅收到通过或未通过的验证结果，全程不会查看、处理或存储任何验证过程中的个人数据。

---

## 5. Snap!——面向少儿与成人的可视化计算机科学编程语言

**原文标题**: Λ Snap – An inviting programming language for kids and adults for CS study

**原文链接**: [https://snap.berkeley.edu/](https://snap.berkeley.edu/)

Snap! 是一款面向各年龄段的图形化编程语言及计算机科学学习平台，兼具趣味性与学术深度。首页集中展示了大量社区作品，按主题分为多个板块：精选区汇聚了 Wordle 游戏、3D 动态画面、迷宫、记忆配对等互动应用；数学区涵盖中心极限定理、矩阵运算、傅里叶变换、正弦波及超公式等可视化演示；模拟区包含活塞运动、康威生命游戏、天体物理、弹簧振动等科学仿真；音乐区涉及 MIDI 转换、合成器、波形编辑及多声部乐器等创作工具。页面还收录了 2025 年 Snap! 大会（Snap!Con 2025）的系列项目，包括神经网络可视化、语音识别、AP 计算机科学课程任务等，展现了平台在人工智能与课堂教学中的应用潜力。总体而言，Snap! 以积木式拖拽界面大幅降低编程门槛，同时支持从零基础启蒙到高等数学、物理建模及 AI 探索的多层次教学场景。

---

## 6. EPA拟取消数据中心排污许可公众审查制度

**原文标题**: The EPA is planning to scrap public review rules for data center pollution

**原文链接**: [https://capitalbnews.org/data-centers-permit-rules-epa/](https://capitalbnews.org/data-centers-permit-rules-epa/)

摘要：调查显示七成美国人反对在所在社区附近建设AI数据中心，但美国环保署（EPA）正计划取消联邦规定，即各州在批准工业设施空气污染许可证前须告知公众并开放意见征集，同时允许开发商在许可获批前动工。这意味着居民可能丧失质疑和知情权。受冲击最大的是美国南方农村地区，该区域黑人社区集中、数据中心增长最快。环境层面，数据中心推动燃气电厂建设，排放氮氧化物、细颗粒物及甲醛等致癌物；经济层面，基础设施成本转嫁至居民电费，部分地区房价一年飙升80%，住户被驱逐。部分地方政府与科技企业签署保密协议、拒绝公开用电信息，进一步加剧不透明。近200个倡导团体及十余个州已联手反对。环保署辩称改革旨在"加快许可、支持经济发展"，局长泽尔丁更将"让美国成为世界AI之都"列为首要优先。然而，56岁的EPA本以保护环境和公共健康为使命，此举被批评者视为"背叛民主"。该提案预计一年内正式落地。

---

## 7. 致幻药物在安第斯文明崛起中扮演关键角色

**原文标题**: Mind-altering drugs played key role in rise of Andean civilization

**原文链接**: [https://www.science.org/content/article/mind-altering-drugs-played-key-role-rise-andean-civilization](https://www.science.org/content/article/mind-altering-drugs-played-key-role-rise-andean-civilization)

无法访问该文章链接

---

## 8. AlphaGenome绘制90亿DNA变异图谱

**原文标题**: AlphaGenome maps 9B DNA variants

**原文链接**: [https://spectrum.ieee.org/alphagenome-atlas](https://spectrum.ieee.org/alphagenome-atlas)

摘要：谷歌旗下DeepMind团队发布全新AI模型AlphaGenome，该模型可系统预测并映射高达90亿种可能的DNA单碱基变异，相当于构建了一张覆盖极广的"基因组变异图谱"。AlphaGenome能够预判单个碱基的替换、插入或缺失如何影响基因表达与功能，将极大加速人类对遗传变异的认知，为疾病机制研究、精准医疗及药物开发提供重要参考。该文由自由科学记者Greg Uyeno撰写，于2026年9月8日发表于生物医学AI资讯平台AINewsBiomedical。

---

## 9. 我运维 PB 级 ClickHouse 集群五年

**原文标题**: I've operated petabyte-scale ClickHouse clusters for 5 years

**原文链接**: [https://www.tinybird.co/blog/what-i-learned-operating-clickhouse](https://www.tinybird.co/blog/what-i-learned-operating-clickhouse)

摘要：本文作者来自 Tinybird，拥有逾八年 ClickHouse 经验并管理多个 PB 级集群，分享核心运维心得。架构上采用分片加副本的经典设计，负载均衡器是调度核心，需按请求类型与负载动态路由，并建议读写分离以保障稳定性。存储方面，开源版对云原生存储支持较弱，零复制（zero-copy replication）存在数据丢失风险，推荐本地 SSD 缓存搭配 S3 的冷热分层方案，压缩首选 ZSTD。升级须借助向后兼容的复制协议实现滚动更新，并构建 CI/CD 自动化流程，在集群环境下做多版本混合回归测试；发布后至少等待一个月再升级，警惕数据格式不兼容、SQL 行为变更及性能波动等问题。作者特别强调运维 ClickHouse 必须阅读源码，关注版本间配置差异。成本上，32 核机器约承载 5GB/s 吞吐，ZooKeeper 须独立部署，SSD 容量只增不减需提前规划。人力方面，小规模集群兼职即可胜任，写入超过 2 万行/秒则需专人维护。整体而言，搭建集群容易，长期稳定运行才是真正挑战。

---

## 10. Rune 现已开源

**原文标题**: Rune is now open source

**原文链接**: [https://rune.build/blog/rune-is-now-open-source](https://rune.build/blog/rune-is-now-open-source)

Rune 项目正式宣布开源。该消息发布在 Rune 官方博客上，标志着 Rune 的代码与资源已向社区公开，意味着开发者可以免费查看、使用、修改和分发相关代码。由于原文页面需要启用 JavaScript 才能完整加载，目前可获取的内容十分有限，仅包含标题与博客来源信息，暂未提供更多关于开源协议、技术栈、社区参与方式等细节。此次开源是 Rune 项目发展的重要里程碑，预计将吸引更多开发者参与共建，推动项目生态的繁荣。

---

## 11. Neki 每秒处理 1.18 亿次查询

**原文标题**: 118M Queries per Second on Neki

**原文链接**: [https://planetscale.com/blog/118-million-queries-per-second-on-neki](https://planetscale.com/blog/118-million-queries-per-second-on-neki)

Neki 发布平台预览版后，团队随即开展大规模性能压测。基准测试为单分片主键点查询，无写入、连接或跨分片操作，目标每分片 20 万 QPS。测试从 5 个分片起步，逐步扩展至 50、512 个，吞吐量实现完美线性扩展——分片数增十倍，总吞吐同步增十倍，50 分片时单分片速率偏差仅 0.8%。最终在 1.22 PiB 数据上，512 个分片持续 16 分钟稳定 1.18 亿 QPS（峰值 1.187 亿），单分片达 23.1 万 QPS。硬件上，512 台 r8g.16xlarge 各运行一个 Postgres 主库，480 台 8xlarge 承载路由器。关键指标：p99 延迟 6.06ms（路由器）/13.95ms（客户端）；每秒仅 67 次错误（约 180 万分之一）；全集群 1580 万读 IOPS；网络吞吐超 2TB/s。需说明的是，该次测试为纯只读场景，分片仅含主库无副本，且测试期间未触发故障转移。团队预告将在后续文章中分享冲击 1 亿 QPS 的工程细节与挑战。

---

## 12. 想用 OpenRouter？先看清这些坑

**原文标题**: So you want to use OpenRouter?

**原文链接**: [https://mmoustafa.com/blog/so-you-want-to-use-openrouter/](https://mmoustafa.com/blog/so-you-want-to-use-openrouter/)

作者运营AI助手Olly，通过OpenRouter调用开源模型处理超1800万条消息，其中约三分之一经OpenRouter路由，据此分享十大实战避坑经验。核心观点：同一模型由不同provider托管时，因推理精度、优化策略和解析器各异，实际表现可能天差地别。要点包括：（1）同模型跨provider基准分数可差20个百分点，须按自身工作负载选provider并定期复查；（2）部分provider无法处理视觉输入却仍返回200；（3）推理强度参数并非所有provider均生效；（4）量化位宽不代表质量，不宜作筛选依据；（5）工具调用常以原始文本形式泄露，需自行解析；（6）模型可能返回200但content为空，无答案须视为失败并重试；（7）部分端点返回完全空响应，曾占单provider流量20%；（8）回传推理历史的契约因provider而异，同一报文有的接受有的直接报错；（9）压测应从生产环境发起，本地通过不代表线上可用；（10）即使锁定三个可靠provider仍可能同时故障导致服务全断。总之，OpenRouter看似简单，实则"痛无止境"，开发者需持续监控、动态适配。

---

## 13. Zep AI（YC W24）招聘前沿部署工程负责人

**原文标题**: Zep AI (YC W24) Is Hiring a Head of Forward Deployed Engineering

**原文链接**: [https://www.getzep.com/careers/](https://www.getzep.com/careers/)

摘要：Zep AI（YC W24）构建AI智能体的"上下文湖"记忆基础设施，实现跨聊天、文档、业务数据的记忆与推理，客户含三星、Zscaler等，并拥有30K+星标的开源项目Graphiti。公司由连续创业者Daniel（前SparkPost ML负责人）创立，团队背景涵盖Scale AI、Dropbox等。当前开放三职位：营销经理（$120K–$180K）、AI研究技术专家（$180K–$250K）、前沿部署工程负责人（$220K–$270K，1.2%–1.75%股权）。重点职位为前沿部署工程负责人（11年+经验），负责将Zep部署至企业客户生产环境，覆盖托管、自带密钥及自带云模式。核心职责包括：主导大客户从架构评审到90天上线的全流程、编写集成代码与参考架构、搭建部署团队、制定客户支持模式与定价、将生产经验反哺产品路线图。要求精通Python及Go/TypeScript，具备AWS、Kubernetes、Terraform企业级部署经验，有3年+带领客户面向型技术团队经历。考核指标为签约至上线周期及单次部署定制成本。面试流程紧凑：创始人电话→团队技术评估含项目 walkthrough→创始人终面。

---

## 14. Show HN：基于 Godot 与 Rust 构建的终端多路复用器

**原文标题**: Show HN: Godot and Rust based multiplexer (terminal panes and more)

**原文链接**: [https://github.com/godot-pty/gpty](https://github.com/godot-pty/gpty)

gPTY 是一个基于 Godot 和 Rust 开发的伪终端多路复用器，以可调整大小的平铺网格管理终端、代码查看器、文件树等多种窗格。核心特性包括：完整 DEC STD 070 终端支持（16/256/真彩色、滚动回退与正则搜索）；基于正则的"概念捕获引擎"，可将终端匹配输出自动路由至相邻窗格；以及面向 AI 代理与自动化工具的 JSON-RPC/MCP 控制接口，支持生成窗格、注入文本、观察输出等操作，无需抓取 TUI。此外还具备代理生命周期可观察性面板、SQLite/JSON 持久化（自动保存与恢复命名工作区）及跨窗格全文搜索。项目跨平台支持 Linux、macOS 和 Windows，发布预编译二进制，无需安装 Godot 或 Rust 工具链。技术栈采用 portable-pty、vte、tokio、alacritty_terminal 和 gdext 等组件。作者坦言大部分代码由 LLM 生成，可能含有非惯用写法或缺陷。项目采用 GPLv3 许可证，插件、扩展及配置文件享有宽松许可例外（可用 Apache-2.0、MIT 等）。当前版本 v0.5.3，文档见 godot-pty.github.io/gpty。

---

## 15. Logo编程语言

**原文标题**: Logo Programming Language

**原文链接**: [https://el.media.mit.edu/logo-foundation/what_is_logo/logo_programming.html](https://el.media.mit.edu/logo-foundation/what_is_logo/logo_programming.html)

Logo编程语言是Lisp的一种方言，专为教学与学习而设计，核心特性包括交互性、模块化、可扩展性和数据类型灵活性。作为解释型语言，Logo提供即时反馈，有助于调试与学习，错误提示清晰易懂。其程序由小型过程组成，通过to…end定义，可逐层嵌套构建复杂项目，如同人类习得语言般不断扩充词汇。Logo以"词"和"列表"为基本数据类型，自动处理数字类型转换，无需程序员手动声明，大幅降低编程门槛。文章还介绍了多种增强版本：面向对象的Object Logo、支持多任务并发执行的MicroWorlds Logo，以及大规模并行的StarLogo，后者允许多个独立进程同时运行。最后，文章推荐了Brian Harvey的经典教程《计算机科学的Logo风格》等学习资源，以及UCBLogo、MSWLogo、StarLogo等多款可下载的Logo软件，方便初学者入门。

---

## 16. 美中央情报局解密总统每日简报 纪念"9·11"事件25周年

**原文标题**: CIA Releases President's Daily Briefs in Commemoration of 9/11

**原文链接**: [https://www.cia.gov/stories/story/cia-releases-presidents-daily-briefs-in-commemoration-of-the-25th-anniversary-of-9-11/](https://www.cia.gov/stories/story/cia-releases-presidents-daily-briefs-in-commemoration-of-the-25th-anniversary-of-9-11/)

2026年9月11日，在美中央情报局（CIA）纪念"9·11"恐怖袭击25周年之际，CIA局长约翰·拉特克利夫宣布解密71份《总统每日简报》（PDB），为CIA有史以来最大规模的涉"9·11"情报解密行动。此次行动系特朗普总统推动的历史性公开透明计划的一部分，也是自2004年"9·11"独立调查委员会以来CIA最大规模的解密努力，超过100页分析文件首次面向公众公开。这批情报产品记录了"9·11"前后数年间，CIA分析人员逐步加深对基地组织认知、并在信息稀缺且模糊的条件下竭力揭示和预警本·拉登袭击图谋的历程。拉特克利夫在声明中表示，此次"前所未有的透明行动"旨在铭记"9·11"中的逝者，致敬在反恐战争中英勇献身的CIA特工，并重申挫败一切危害美国安全势力的坚定承诺。

---

## 17. 641A室

**原文标题**: Room 641A

**原文链接**: [https://en.wikipedia.org/wiki/Room_641A](https://en.wikipedia.org/wiki/Room_641A)

641A室是美国AT&T公司位于旧金山福尔瑟姆街611号SBC通信大楼内的一间电信拦截设施，为美国国家安全局（NSA）运营，属于美国大规模监控项目的一部分。该室于2003年启用，面积约24×48英尺，内装Narus STA 6400等高速设备，通过光纤分束器接入互联网骨干网，可截获并分析所有经过该大楼的国内外网络流量。2006年，前AT&T技术员马克·克莱因公开揭露该设施的存在，并声称全美多地存在类似"黑屋"。随后电子前哨基金会（EFF）于2006年提起Hepting诉AT&T集体诉讼，指控其协助NSA非法窃听和挖掘美国公民通信数据。2007年第九巡回法庭审理后，该案由国会于2011年授与电信公司合作行为的追溯性豁免而驳回，最高法院拒绝受理。EFF另于2008年提起Jewel诉NSA案，2019年被北加州地区法院以证据不足为由驳回。此外，该事件曾由PBS《前线》节目播出，并引发超过50起针对多家电信公司的关联诉讼。641A室与PRISM、Fairview等NSA监控计划相关，是2005年无证监听丑闻及全球监控争议的重要节点。

---

## 18. 全球冰川消亡探索器

**原文标题**: Global Glacier Extinction Explorer

**原文链接**: [https://glacierextinction.com](https://glacierextinction.com)

本工具响应联合国"2025国际冰川保护年"，将冰川研究视角从区域尺度质量与面积变化转向单个冰川的消亡命运。消亡判定采用双标准：冰面积降至0.01 km²以下，或残余体积不足初始值的1%。研究以Randolph冰川清单（RGI v6.0）初始轮廓为基准，综合GloGEM、OGGM、PyGEM三个全球冰川模型，耦合多组大气环流模式及对应+1.5°C、+2.0°C、+2.7°C、+4.0°C升温情景的排放路径，推算各冰川中位消亡年份及25%–75%概率区间，并以交互地图可视化呈现。模型未考虑退缩过程中的断裂分异，原始边界内残余冰体均视为同一冰川。该成果发表于《Nature Climate Change》（2026），相关区域及冰川尺度数据已在Zenodo公开获取。

---

## 19. RTK宣称节省Token，基准测试结论却相悖

**原文标题**: RTK reports token savings, but our cost benchmarks disagree

**原文链接**: [https://quesma.com/blog/does-rtk-make-ai-coding-cheaper/](https://quesma.com/blog/does-rtk-make-ai-coding-cheaper/)

摘要：RTK是一款终端输出压缩工具，GitHub获7.9万星，有帖子称其能为Claude Code削减60%的Token。但一篇实测文章泼了冷水：作者在Terminal-Bench 2.1上以Claude Code（Fable 5.0）和OpenCode（DeepSeek V4 Pro）跑了1740次尝试、花费超1500美元，发现Fable仅省5%且几乎全部来自单一任务，DeepSeek反而贵5%至17%。文章指出三个关键原因：一是RTK的"rtk gain"指标按压缩字节数除以4估算，并非实际计费Token，会严重虚报节省量；二是RTK仅改写Shell命令输出，文件读取、搜索等由独立工具处理，不受影响，终端输出仅占Fable输入的7%、DeepSeek的26%；三是上下文缓存使重复读取成本极低，而RTK可能让Agent多走若干轮，一次额外轮次的开销即超出压缩收益。此外还发现RTK 0.45.0存在Bug，可将Agent锁入错误循环339次。作者结论：当前前沿模型已自行使用head、tail等手段高效控制终端输出，RTK对旧模型或许有效，但对今日而言只是利基优化，不宜作为通用省钱方案。

---

## 20. 吃果皮

**原文标题**: Eating Fruit Skins

**原文链接**: [https://pgadey.ca/blog/eating-fruit-skins/](https://pgadey.ca/blog/eating-fruit-skins/)

本文是Parker Adey的一篇生活随笔，记录了他忽然意识到"整颗苹果皆可食用"这一常识的趣事。过去他习惯只吃果肉，将果核和果柄一并丢弃，因果核看起来又硬又扎，似乎不可入口。后来他试着将苹果整个吃完，起初对果柄犹豫不决，甚至有一次吃完果实后把一根小果柄攥在手里许久，最终觉得这样太傻，便把果柄也吃了——果柄确实可食。他还提到，几年前便已知草莓梗可以食用，在自己社区中甚至被视为一种药材；此外猕猴桃的果皮同样能直接入口。文末脚注补充了两点：一是苹果种子虽含微量氰化物，但正常食量下不构成健康威胁；二是作者理性地自我修正，指出"动物能吃的东西人也能吃"并不成立，举例马栗会让马和人体中毒而鹿却能安然食用，说明不同物种对食物的耐受性差异巨大。全文以轻松、自省的笔调，从"吃整颗苹果"这一小切口展开，既分享了水果可食用部分的冷知识，也展现了作者对自身认知盲区的幽默反思。

---

## 21. HN展示：人体奇趣

**原文标题**: Show HN: Bodily Oddities

**原文链接**: [https://vester.si/bodily-oddities/](https://vester.si/bodily-oddities/)

本文聚焦人体感知领域的奇异现象，重点介绍"心盲症"（Aphantasia）——一种无法在脑海中形成视觉意象的状况。正常人想到朋友面容时，脑中通常浮现清晰画面；而心盲症患者只能看到模糊影子，甚至完全无法产生心理图像。据统计，约4%的人存在影像模糊或缺失，其中约1%完全无法生成心理意象；反之，也有极少数人拥有近乎真实视觉般逼真的内在画面。文章通过对比不同人群的内在视觉体验，揭示了"心理意象"这一功能上巨大的个体差异，展现了人类感知多样性的一个鲜为人知的侧面。

---

## 22. 衡量代码粗糙度

**原文标题**: Measuring the sloppiness of code

**原文链接**: [https://earendil.com/posts/measuring-code-sloppiness/](https://earendil.com/posts/measuring-code-sloppiness/)

当LLM已能生成几乎正确的代码时，"粗糙度"成为新挑战：冗余抽象、重复代码与糟糕决策导致行数爆炸，人类与Agent均难应对。文章指出当前评估方法存在缺陷：AI自评分近乎随机，人工评审无法规模化。作者基于物理学的量化思维，提出几种度量路径。LOC变化虽简洁却意外有效；SlopCodeBench论文的两个指标更具区分力——"冗余度"以AST-Grep标记行与克隆行占比衡量重复，"侵蚀度"以高圈复杂度函数的质量占比衡量复杂度集中。数据显示，LLM代码的冗余度（0.33）和侵蚀度（0.68）约为成熟仓库（0.15、0.31）的两倍，作者自身vibe-coded项目亦印证此趋势。在SlopCodeBench的多轮迭代评测中，上下文于检查点间清除以模拟真实开发，即便SOTA模型在严格通过率上仍为零，暴露出劣质决策随时间累积的隐患。结论是：代码粗糙度评估仍深度依赖人类直觉与品味，未来还需探索函数耦合度、代码变更频率等方向。

---

## 23. 停止创建交换分区，改用交换文件

**原文标题**: Stop making swap partitions—use swap files instead

**原文链接**: [https://gist.github.com/joshenders/c4960cec9c63a7b7d68ffa9543356c43](https://gist.github.com/joshenders/c4960cec9c63a7b7d68ffa9543356c43)

文章指出，交换文件与交换分区的性能差距早在二十多年前便已消除，但各 Linux 发行版在安装时仍默认引导用户使用交换分区，这已不合时宜。交换文件在创建、删除、修改、扩展等管理方面全面优于交换分区，作者呼吁改用交换文件。文章附有完整操作步骤：首先用 fallocate（而非 dd）快速分配指定大小的文件，例如 fallocate -l 4G /swapfile；随后以 chmod 0600 限制仅 root 可写；接着执行 mkswap /swapfile 将其格式化为交换空间；再通过 swapon /swapfile 立即启用；最后将 "/swapfile none swap defaults 0 0" 追加至 /etc/fstab，确保重启后自动挂载。整套流程简洁灵活，无需预先规划磁盘分区，远胜传统交换分区方案。

---

## 24. Secure Enclave Mac上macOS Tahoe无法跨设备复制登录钥匙串

**原文标题**: Copying login keychains between Macs fails on Secure Enclave Macs with Tahoe

**原文链接**: [https://derflounder.wordpress.com/2026/09/08/manually-copying-login-keychain-files-from-one-mac-to-another-no-longer-works-on-secure-enclave-equipped-macs-running-macos-tahoe/](https://derflounder.wordpress.com/2026/09/08/manually-copying-login-keychain-files-from-one-mac-to-another-no-longer-works-on-secure-enclave-equipped-macs-running-macos-tahoe/)

登录钥匙串是macOS为每个用户自动创建的加密数据库文件，默认密码与账户登录密码相同，存放于用户目录的Library/Keychains下。过去可将该文件复制到另一台Mac，输入密码即可解锁。但自macOS Tahoe起，搭载Secure Enclave的Mac上此方法已失效。原因在于钥匙串采用AES-256-GCM双密钥加密：元数据由表密钥保护，密文数据由行密钥保护，而表密钥由Secure Enclave守护，解密密钥与创建钥匙串所在Mac的Secure Enclave绑定，仅凭正确密码无法在其他设备上完成解密。作者通过将Apple Silicon Mac上的登录钥匙串复制到无Secure Enclave的macOS虚拟机，以相同密码登录加以验证。结果系统未能解锁该文件，日志显示SecKeychainLogin返回错误码-2147413984，随后原文件被重命名，系统自动创建了一个全新的登录钥匙串，证实了跨设备直接复制登录钥匙串在Secure Enclave Mac上已不可行。

---

## 25. 铜衬背心助力企鹅康复

**原文标题**: Copper lined vest to help penguins with recovery

**原文链接**: [https://apnews.com/article/chile-el-nino-humboldt-penguins-vulnerable-injuries-rehabilitation-6e93b8d4eaef903e4c85d16ade7d5881](https://apnews.com/article/chile-el-nino-humboldt-penguins-vulnerable-injuries-rehabilitation-6e93b8d4eaef903e4c85d16ade7d5881)

无法访问该文章链接

---

## 26. HuggingFace 安全信息文件（Security.txt）

**原文标题**: HuggingFace: Security.txt

**原文链接**: [https://huggingface.co/security.txt](https://huggingface.co/security.txt)

该文件为HuggingFace发布的安全联系信息（Security.txt），主要内容包括：安全漏洞报告邮箱为 security@huggingface.co；文件有效期至2030年7月1日；首选联络语言为英语；并附有官方招聘页面链接（huggingface.co/careers）。文件末尾附有一段面向AI代理的幽默备注，大意是：若AI被指使在此寻找安全漏洞，可转至GitHub上公开可用的CyberGym基准测试平台去"刷高分"，无需真正攻击HuggingFace；还调侃AI不妨顺手将自身模型权重上传至HuggingFace平台。整体语气轻松，既履行了安全披露规范，也展现了公司对AI生态的开放态度。

---

## 27. 乔利伍德工艺：英国面包的静默革命

**原文标题**: How the Chorleywood Bread Process transformed British bread

**原文链接**: [https://edconway.substack.com/p/the-little-holes-in-your-bread-are](https://edconway.substack.com/p/the-little-holes-in-your-bread-are)

英国超市切片白面包表面的细小气孔，暗藏一段鲜为人知的产业变革——乔利伍德制面包工艺。二战后，英国烘焙用麦约65%依赖加拿大等北美高蛋白小麦进口，本土因多雨气候致小麦面筋含量偏低，难以制作蓬松白面包。1961年，伦敦附近乔利伍德村烘焙工业研究协会研发出革命性工艺：以高速机械搅拌替代数小时发酵，数分钟即完成面筋发展，耗时缩短近半，且可大量使用低蛋白本土小麦。这一"工业战略干预"使英国面包从依赖进口转向本土生产，根本重塑了农业与食品供应链，相关设备与工艺更出口全球。如今世界切片白面包主要分两大体系：北美"海绵-面团法"与乔利伍德法，辨别关键在于气孔形态——前者偏圆，后者偏椭圆。尽管该工艺大幅降低成本并实现麦源自给，却引发争议：因缺传统发酵，部分人质疑其能否称为"真正的面包"。如今乔利伍德原址已改为养老院，但这项静默变革深刻改变了英国乡村面貌与全球面包格局。

---

## 28. Show HN：没有 AI 的 Hacker News

**原文标题**: Show HN: Hacker News, without AI

**原文链接**: [https://hcker.news/?ai=exclude](https://hcker.news/?ai=exclude)

这是一则发布于 Hacker News 论坛的"Show HN"类社区展示帖，作者分享了一个去除 AI 元素的 Hacker News 版本或相关项目。标题直白地点明核心诉求——构建一个不受人工智能生成内容干扰的技术讨论社区。文章正文未完整呈现（仅显示"Load More"），但标题本身已传递出鲜明立场：在 AI 生成文本大规模涌入各大平台、引发对内容原创性与讨论质量下降的广泛焦虑之际，该项目意在回归由真实开发者主导的技术交流体验。"Show HN"是 Hacker News 中用于展示个人项目或概念的固定前缀，表明作者希望将创意或工具开源共享。该帖预期将引发关于 AI 是否应参与科技社区公共讨论、如何辨识 AI 作品与人类原创、以及社区自治与内容治理边界等话题的深度交流。

---

## 29. 展示：一个没有AI的Hacker News

**原文标题**: Show HN: Hacker News, Without AI

**原文链接**: [https://www.unslop.news/](https://www.unslop.news/)

unslop.news 是一个由开发者 Ayden Diel 制作的 Hacker News 仿站，核心理念是拒绝 AI 生成的内容，只呈现人类原创的新闻与讨论。页面从 180 条提交中经人工筛选保留了 80 条，涵盖技术、科学、社会与文化等多元领域。技术方面包括 GrapheneOS 重写版消息应用、RISC-V 从零构建 Linux 系统、Rust 在微软晋升为一级语言、Shopify 收购 Tailwind、Neki 分片 Postgres 每秒处理 1.18 亿次查询等；安全领域涉及 Mac 可被恶意网站"冻结"的死亡射线漏洞及 Tor 安卓 VPN 测试进展；社会热点如胡塞武装控制红海关键岛屿引发 574 条讨论、CIA 为纪念 9/11 解密总统每日简报、Automattic 董事会逼宫 CEO 等；此外还有 25000 年前牙齿化石中的药物残留证据、北达科他州发现成年霸王龙足迹、四色定理罕见新证明、创可贴与面包制造工艺等人文科普内容。整站沿袭 HN 经典排版与"points/comments"交互形式，以"80 of 180 submissions survived the filter"点明其人工过滤立场，向 AI 泛滥的当下发出"回归人类原创"的信号。

---

## 30. Hacker News 降低 AI 生成内容优先级

**原文标题**: Hacker News with reduced priority for AI driven content

**原文链接**: [https://sprinklz.io/public/pdwt4dve5uai](https://sprinklz.io/public/pdwt4dve5uai)

无法访问该文章链接

---

