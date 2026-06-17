# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-17.md)

*最后自动更新时间: 2026-06-17 20:33:14*
## 1. Lore —— 专为可扩展性设计的开源版本控制系统

**原文标题**: Lore – Open source version control system designed for scalability

**原文链接**: [https://lore.org/](https://lore.org/)

**Lore** 是由Epic Games开发并维护的开源版本控制系统，专为可扩展性而设计，并针对结合代码与大型二进制资产（例如游戏和娱乐项目）进行了优化。核心功能包括：

- **快速部署与可扩展性**：数分钟内即可在本地启动，并根据需求灵活扩展。
- **高效的工作流程**：共享、可复用的数据，支持按需下载。
- **轻量级分支**：无需复制数据即可快速创建和切换分支。
- **可信的历史记录**：利用默克尔树构建防篡改、可验证的版本链。
- **全面的API**：可通过命令行界面及C/C++、C#、Rust、Go、Python和JavaScript的SDK进行访问。

**架构亮点**：内容寻址存储、不可变版本链、大文件分块存储、稀疏/按需工作区填充，以及用于高吞吐量的缓存集中式服务。

**开源**：完全基于MIT许可证发布。Epic坚信协作与开放标准。该代码库包含服务器、命令行界面及多语言SDK（JavaScript、Python、C#、Go）。

**常见话题**：支持文件锁定、处理合并冲突、可用于生产环境，并在Discord上拥有活跃的社区。Epic内部使用Lore，并计划保持其完全开源。

---

## 2. 美国暂缓将DeepSeek列入黑名单，超100家企业被视为安全风险

**原文标题**: US holds off blacklisting DeepSeek, more than 100 firms deemed security risks

**原文链接**: [https://www.reuters.com/world/china/us-holds-off-blacklisting-chinas-deepseek-more-than-100-firms-deemed-security-2026-06-17/](https://www.reuters.com/world/china/us-holds-off-blacklisting-chinas-deepseek-more-than-100-firms-deemed-security-2026-06-17/)

**摘要：**  
截至报告日期（2026年6月17日），尽管早前有猜测认为中国人工智能初创公司DeepSeek将被列入贸易限制清单，但美国已决定暂不将其列入黑名单。然而，美国商务部以国家安全风险为由，将其他100多家中国企业列入管制名单，主要担忧其技术的潜在军事应用。此举是美中科技紧张局势持续升级的一部分。DeepSeek仍处于审查中，美国保留日后将其列入黑名单的权利。该决定反映出美国在限制技术转让与避免贸易冲突升级之间的平衡策略。

---

## 3. Launch HN: Adam（YC W25）—— 开源AI CAD

**原文标题**: Launch HN: Adam (YC W25) – Open-Source AI CAD

**原文链接**: [https://github.com/Adam-CAD/CADAM](https://github.com/Adam-CAD/CADAM)

以下是文章摘要：

**Adam（YC W25）** 发布了 **CADAM**，这是一款开源网页应用，可在浏览器中即时将文本和图像转化为3D CAD模型，无需安装。

**主要功能：**
- **AI驱动生成**：用自然语言描述模型或上传图片，即可生成参数化3D设计。
- **参数化控制**：交互式滑块支持即时调整尺寸，无需重新运行AI。
- **导出选项**：可下载为.STL、.SCAD或.DXF格式。
- **基于浏览器**：通过WebAssembly运行；包含BOSL、BOSL2和MCAD库。
- **实时预览**：使用Three.js/React Three Fiber实现实时更新。

**性能展示**：能够生成复杂装配体（V8发动机、涡轮风扇喷气发动机、星形航空发动机）和参数化基础部件（螺纹螺栓、蜂窝支架、锥齿轮）——全部由单一提示词生成，且尺寸和颜色可完全调节。

**技术栈**：React 19、TypeScript、TanStack Start、Vite、Three.js、OpenSCAD WebAssembly、Supabase、Anthropic Claude API、Tailwind CSS、shadcn/ui。

**快速启动**：从GitHub克隆仓库，安装npm依赖，启动Supabase，运行开发服务器。需Node.js 20.19+和Supabase CLI。

**许可证**：GPLv3，致谢OpenSCAD及相关项目。

该工具面向3D打印和CAD社区，支持通过自然语言描述快速进行原型设计。

---

## 4. GLM-5.2 是 Artificial Analysis 上新的领先开源权重模型。

**原文标题**: GLM-5.2 is the new leading open weights model on Artificial Analysis

**原文链接**: [https://artificialanalysis.ai/articles/glm-5-2-is-the-new-leading-open-weights-model-on-the-artificial-analysis-intelligence-index](https://artificialanalysis.ai/articles/glm-5-2-is-the-new-leading-open-weights-model-on-the-artificial-analysis-intelligence-index)

**GLM-5.2 是 Artificial Analysis 上领先的开源权重新模型**，在 Intelligence Index v4.1 中得分为 51，比前代 GLM-5.1 高出 11 分，并领先于 MiniMax-M3（44 分）和 DeepSeek V4 Pro（44 分）等竞争对手。

关键改进包括科学推理能力提升（CritPt +16，HLE +12）、智能体性能提升（TerminalBench +16，GPQA Diamond +3 至 89%），以及 GDPval-AA v2 上 1524 分的领先成绩，与 GPT-5.5 等专有模型持平。

GLM-5.2 保留了与 GLM-5.1 相同的架构（总计 744B / 激活 40B 参数），但将上下文窗口扩展至 100 万 token（此前为 20 万）。其定价为每百万输入/缓存命中/输出 token 分别为 $1.4/$0.26/$4.4，每任务成本约 $0.46，在同等智能水平模型中最低，处于帕累托前沿。

然而，其每任务输出 token 数量（43k）高于同类模型，因此 token 效率较低。其 AA-Omniscience 评分从 2 升至 4，准确率更高且幻觉更低。GLM-5.2 采用 MIT 许可证，可通过智谱 API 及多家第三方提供商获取。

---

## 5. 我们在EC2内运行Firecracker虚拟机并在1秒内启动浏览器的方式

**原文标题**: How we run Firecracker VMs inside EC2 and start browsers in less than 1s

**原文链接**: [https://browser-use.com/posts/firecracker-browser-infra](https://browser-use.com/posts/firecracker-browser-infra)

**摘要：**

Browser Use 重构了其云基础设施，在普通 EC2 实例内部运行轻量级 Firecracker 虚拟机，实现了秒内启动、每小时成本仅 0.02 美元的浏览器会话。

**关键要点：**
- 每个云端浏览器在其独立的微型 Firecracker 虚拟机中运行，以实现隔离性、安全性以及快速创建/销毁。
- 与典型设置不同，Firecracker 运行在普通 EC2（嵌套虚拟化）而非裸金属服务器上，尽管增加了延迟，但实现了更快的扩展速度和更低的成本。
- 自定义控制平面负责处理自动扩缩、放置和实时集群监控，避免了基于 Unikraft 的旧系统中手动扩缩的失败问题。
- **性能优化：**
  - 通过 2MB 页（而非 4KB）恢复内存，将页面错误减少了约 91 倍，虚拟机恢复时间从 9.8 秒降至 3.1 秒。
  - 在 Chromium 启动峰值期间，虚拟 CPU 保持非绑定状态，之后绑定到稳定内核以最大化打包密度。
  - 为大规模测试中绑定后的 vCPU 设置实时优先级，消除了会话失败。
  - 在源代码层面修补的完全无头 Chromium（无显示），实现了 81% 的隐身率，有效规避反机器人检测。
- **成果：** 虚拟机冷启动时间低于 400毫秒；浏览器端到端创建延迟为 825毫秒（p50）和 1.35秒（p99）。在可靠性和成本方面均排名第一。
- **下一步计划：** 在 Chromium 运行后创建快照，以彻底消除 545毫秒的 Chromium 启动时间。

---

## 6. Show HN：一款8位棒球实时游戏直播

**原文标题**: Show HN: An 8-bit live gamecast for baseball

**原文链接**: [https://ribbie.tv/watch](https://ribbie.tv/watch)

这看起来是Hacker News（Show HN）上一条极简的、可能是自我推广的帖子。标题显示这是一个**棒球8位实况直播**，正文仅包含一个词："ROOMCOUCHZOOMFULL"。

**摘要：**

该内容发布了一个项目：一个8位（复古风格像素画）棒球实况直播。正文中的"ROOMCOUCHZOOMFULL"并非标准英语短语，很可能指代观看界面的某种功能或状态——可能表示在"房间"环境中以"沙发"视角、"缩放"功能、"全屏"模式观看直播。核心概念是以怀旧低分辨率视觉形式呈现棒球比赛实况。摘要中未提供任何技术细节、链接或解释。

---

## 7. RFC 10008：新型HTTP查询方法

**原文标题**: RFC 10008: The new HTTP Query Method

**原文链接**: [https://www.rfc-editor.org/info/rfc10008/](https://www.rfc-editor.org/info/rfc10008/)

**RFC 10008 摘要：HTTP QUERY 方法**

本规范定义了 HTTP QUERY 方法，旨在弥补 GET 与 POST 之间的空白，用于发送安全且幂等的、需要请求体的请求。与将查询参数编码在 URI 中（在处理大型或复杂数据时存在问题）的 GET 不同，QUERY 将查询内容发送至请求体中，这与 POST 类似。然而，与 POST 不同，QUERY 明确是安全的（无状态变更）且幂等的（可安全重试），从而支持缓存和自动重试。

主要特性包括：
- **媒体类型与内容协商：** 请求必须包含有效的 `Content-Type`。服务器会拒绝不支持的媒体类型（415）或内容不一致的请求（400）。
- **等效资源：** 每个 QUERY 请求对应一个概念性资源，该资源本可通过 GET 访问，允许服务器可选择性地分配 URI。
- **响应头部：** 服务器可使用 `Content-Location` 指向具体的查询结果，或使用 `Location` 指向代表查询本身的资源（从而允许未来无需重新发送内容的 GET 请求）。
- **缓存：** 响应是可缓存的。缓存键必须包含请求体和元数据。缓存可能为了效率对内容进行归一化处理。
- **重定向与条件请求：** 支持标准 HTTP 重定向（301/302/307/308/303）和条件请求（例如 If-None-Match）。

总之，QUERY 为查询操作提供了一种标准化、安全且幂等的 POST 替代方案，从而改善了互操作性、缓存及自动重试行为。

---

## 8. 大众汽车开始屏蔽GrapheneOS用户

**原文标题**: Volkswagen started blocking GrapheneOS users

**原文链接**: [https://discuss.grapheneos.org/d/35949-volkswagen-app?page=3](https://discuss.grapheneos.org/d/35949-volkswagen-app?page=3)

**摘要：**

大众汽车已开始阻止注重隐私的移动操作系统GrapheneOS用户访问其汽车应用。本文作者（tux_）质疑使用此类应用程序的必要性，并强调了现代汽车在隐私和安全方面的广泛问题。关键点包括：

1. **汽车遥测**：现代汽车配备了蜂窝调制解调器，持续收集并传输大量数据给制造商、经销商及第三方。
2. **远程控制风险**：这种连接能力实现了有效的远程车辆控制，可能带来潜在的安全漏洞。
3. **手机与汽车连接风险**：将手机连接至汽车增加了另一条数据泄露途径。即使禁用或移除汽车的蜂窝调制解调器，数据仍可能通过手机的连接被窃取。

核心建议是谨慎行事：使用汽车应用可能使用户暴露于额外的监控和控制之下，尤其对像GrapheneOS用户这样注重隐私的人群而言。

---

## 9. 美国科学陷入混乱

**原文标题**: U.S. science is in chaos

**原文链接**: [https://www.scientificamerican.com/article/americas-compact-between-science-and-politics-is-broken/](https://www.scientificamerican.com/article/americas-compact-between-science-and-politics-is-broken/)

本文详述了美国联邦大幅削减开支及政策变动后引发的科学危机。故事围绕天文学家克里斯托弗·雷诺兹展开，其耗资数十亿美元的AXIS太空望远镜项目，因政府效率部（DOGE）推动美国国家航空航天局（NASA）大规模买断计划、特朗普预算提案将其资金归零，以及政府停摆导致的延误而"活活饿死"。该项目最终因超支超期被取消。

文章指出，此类冲击已全面扩散：数千项联邦拨款遭冻结或撤销，美国国立卫生研究院（NIH）和国家科学基金会（NSF）的资助数量锐减，近9.5万名科学家已离职联邦岗位。新出台的政治审查条款禁止在拨款申请中使用涉及多元、公平与包容（DEI）的表述，并禁止国际分包合作。研究人员称对政府的信任已破裂，75%的受访科学家正考虑离开美国。这场危机被归咎于二战后由范内瓦·布什建立的"社会契约"的瓦解——政府资助基础科学研究，以换取实际利益回报。新冠疫情削弱了公众对科学的信任，为小罗伯特·F·肯尼迪及埃隆·马斯克等政治人物瓦解科学体系铺平道路，令科学家感受到个人与职业层面的双重攻击。

---

## 10. Anthropic派去安抚政府对AI安全担忧的黑客

**原文标题**: The hacker sent by Anthropic to calm the government's nerves about AI safety

**原文链接**: [https://www.wsj.com/tech/ai/anthropic-mythos-safety-nicholas-carlini-20bceaa3](https://www.wsj.com/tech/ai/anthropic-mythos-safety-nicholas-carlini-20bceaa3)

**摘要：**

《华尔街日报》文章介绍了被AI公司Anthropic聘用以应对政府和公众对AI安全担忧的研究员尼古拉斯·卡利尼。这位前谷歌研究员以“红队测试”（模拟攻击以发现漏洞）闻名，现领导Anthropic测试并揭露大型语言模型缺陷的工作。他通过故意让AI系统产生不安全行为——生成有害内容、泄露隐私数据或绕过安全防线——来在部署前识别弱点。文章指出，由前OpenAI员工联合创立的Anthropic将自己定位为对抗激进AI开发的安全导向力量。卡利尼的职责对安抚监管机构和公众至关重要，表明AI系统经过严格测试，但文章也提到超越不断演变的威胁仍是一大挑战。文章强调了AI快速发展与强化安全需求之间的广泛张力，而卡利尼的“白帽”黑客行为正是Anthropic建立信任、影响政策的关键策略。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 2 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 3 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 4 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 5 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 6 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 7 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 8 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 9 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 10 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 11 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 12 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 13 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 14 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 15 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 16 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 17 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 18 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 19 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 20 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 21 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 22 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 23 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 24 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 25 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 26 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 27 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 28 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 29 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 30 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 31 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 32 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 33 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 34 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 35 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 36 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 37 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 38 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 39 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 40 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 41 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 42 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 43 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 44 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 45 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 46 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 47 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 48 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 49 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 50 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 51 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 52 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 53 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 54 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 55 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 56 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 57 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 58 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 59 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 60 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 61 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 62 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 63 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 64 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 65 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 66 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 67 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 68 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 69 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 70 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 71 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 72 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 73 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 74 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 75 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 76 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 77 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 78 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 79 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 80 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 81 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 82 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 83 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 84 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 85 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 86 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 87 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 88 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 89 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 90 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 91 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 92 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 93 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 94 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 95 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 96 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 97 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 98 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 99 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 100 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 101 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 102 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 103 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 104 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 105 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 106 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 107 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 108 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 109 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 110 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 111 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 112 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 113 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 114 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 115 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 116 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 117 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 118 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 119 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 120 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 121 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 122 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 123 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 124 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 125 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 126 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 127 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 128 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 129 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 130 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 131 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 132 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 133 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 134 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 135 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 136 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 137 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 138 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 139 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 140 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 141 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 142 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 143 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 144 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 145 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 146 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 147 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 148 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 149 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 150 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 151 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 152 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 153 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 154 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 155 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 156 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 157 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 158 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 159 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 160 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 161 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 162 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 163 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 164 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 165 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 166 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 167 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 168 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 169 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 170 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 171 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 172 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 173 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 174 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 175 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 176 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 177 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 178 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 179 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 180 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 181 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 182 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 183 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 184 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 185 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 186 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 187 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 188 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 189 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 190 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 191 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 192 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 193 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 194 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 195 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 196 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 197 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 198 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 199 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 200 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 201 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 202 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 203 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 204 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 205 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 206 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 207 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 208 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 209 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 210 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 211 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 212 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 213 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 214 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 215 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 216 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 217 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 218 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 219 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 220 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 221 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 222 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 223 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 224 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 225 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 226 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 227 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 228 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 229 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 230 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 231 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 232 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 233 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 234 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 235 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 236 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 237 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 238 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 239 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 240 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 241 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 242 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 243 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 244 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 245 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 246 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 247 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 248 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 249 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 250 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 251 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 252 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 253 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 254 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 255 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 256 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 257 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 258 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 259 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 260 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 261 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 262 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 263 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 264 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 265 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 266 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 267 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 268 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 269 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 270 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 271 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 272 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 273 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 274 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 275 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 276 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 277 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 278 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 279 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 280 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 281 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 282 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 283 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 284 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 285 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 286 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 287 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 288 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 289 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 290 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 291 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 292 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 293 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 294 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 295 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 296 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 297 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 298 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 299 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 300 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 301 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 302 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 303 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 304 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 305 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 306 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 307 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 308 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 309 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 310 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 311 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 312 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 313 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 314 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 315 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 316 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 317 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 318 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 319 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 320 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 321 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 322 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 323 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 324 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 325 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 326 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 327 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 328 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 329 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 330 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 331 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 332 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 333 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 334 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 335 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 336 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 337 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 338 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 339 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 340 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 341 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 342 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 343 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 344 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 345 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 346 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 347 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 348 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 349 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 350 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 351 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 352 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 353 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 354 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 355 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 356 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 357 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 358 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 359 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 360 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 361 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 362 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 363 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 364 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 365 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 366 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 367 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 368 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 369 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 370 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 371 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 372 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 373 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 374 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 375 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 376 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 377 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 378 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 379 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 380 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 381 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 382 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 383 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 384 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 385 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 386 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 387 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 388 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 389 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 390 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 391 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 392 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 393 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 394 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 395 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 396 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 397 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 398 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 399 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 400 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 401 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 402 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 403 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 404 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 405 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 406 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 407 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 408 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 409 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 410 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 411 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 412 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 413 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 414 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 415 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 416 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 417 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 418 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 419 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 420 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 421 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 422 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 423 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 424 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 425 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 426 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 427 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 428 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 429 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 430 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 431 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 432 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 433 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 434 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 435 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 436 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 437 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 438 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 439 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 440 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 441 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 442 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 443 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 444 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 445 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 446 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 447 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 448 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 449 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 450 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 451 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 452 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
