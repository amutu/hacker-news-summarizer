# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-23.md)

*最后自动更新时间: 2026-11-23 04:54:23*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 2 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 3 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 4 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 5 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 6 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 7 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 8 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 9 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 10 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 11 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 12 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 13 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 14 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 15 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 16 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 17 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 18 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 19 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 20 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 21 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 22 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 23 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 24 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 25 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 26 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 27 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 28 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 29 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 30 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 31 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 32 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 33 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 34 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 35 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 36 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 37 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 38 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 39 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 40 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 41 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 42 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 43 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 44 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 45 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 46 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 47 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 48 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 49 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 50 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 51 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 52 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 53 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 54 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 55 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 56 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 57 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 58 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 59 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 60 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 61 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 62 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 63 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 64 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 65 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 66 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 67 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 68 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 69 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 70 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 71 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 72 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 73 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 74 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 75 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 76 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 77 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 78 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 79 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 80 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 81 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 82 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 83 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 84 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 85 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 86 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 87 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 88 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 89 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 90 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 91 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 92 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 93 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 94 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 95 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 96 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 97 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 98 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 99 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 100 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 101 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 102 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 103 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 104 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 105 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 106 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 107 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 108 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 109 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 110 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 111 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 112 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 113 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 114 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 115 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 116 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 117 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 118 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 119 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 120 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 121 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 122 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 123 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 124 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 125 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 126 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 127 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 128 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 129 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 130 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 131 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 132 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 133 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 134 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 135 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 136 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 137 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 138 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 139 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 140 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 141 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 142 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 143 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 144 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 145 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 146 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 147 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 148 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 149 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 150 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 151 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 152 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 153 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 154 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 155 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 156 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 157 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 158 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 159 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 160 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 161 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 162 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 163 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 164 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 165 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 166 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 167 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 168 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 169 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 170 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 171 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 172 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 173 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 174 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 175 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 176 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 177 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 178 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 179 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 180 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 181 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 182 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 183 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 184 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 185 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 186 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 187 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 188 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 189 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 190 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 191 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 192 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 193 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 194 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 195 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 196 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 197 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 198 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 199 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 200 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 201 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 202 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 203 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 204 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 205 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 206 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 207 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 208 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 209 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 210 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 211 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 212 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 213 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 214 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 215 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 216 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 217 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 218 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 219 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 220 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 221 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 222 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 223 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 224 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 225 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 226 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 227 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 228 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 229 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 230 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 231 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 232 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 233 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 234 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 235 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 236 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 237 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 238 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 239 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 240 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 241 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 242 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 243 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 244 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 245 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 246 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 247 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 248 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 249 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 250 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 251 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 252 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 253 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 254 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 255 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 256 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 257 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 258 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 259 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 260 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 261 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 262 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 263 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 264 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 265 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 266 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 267 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 268 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 269 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 270 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 271 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 272 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 273 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 274 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 275 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 276 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 277 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 278 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 279 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 280 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 281 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 282 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 283 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 284 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 285 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 286 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 287 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 288 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 289 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 290 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 291 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 292 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 293 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 294 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 295 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 296 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 297 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 298 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 299 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 300 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 301 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 302 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 303 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 304 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 305 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 306 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 307 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 308 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 309 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 310 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 311 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 312 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 313 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 314 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 315 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 316 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 317 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 318 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 319 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 320 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 321 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 322 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 323 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 324 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 325 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 326 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 327 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 328 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 329 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 330 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 331 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 332 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 333 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 334 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 335 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 336 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 337 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 338 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 339 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 340 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 341 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 342 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 343 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 344 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 345 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 346 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 347 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 348 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 349 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 350 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 351 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 352 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 353 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 354 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 355 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 356 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 357 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 358 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 359 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 360 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 361 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 362 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 363 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 364 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 365 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 366 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 367 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 368 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 369 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 370 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 371 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 372 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 373 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 374 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 375 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 376 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 377 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 378 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 379 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 380 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 381 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 382 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 383 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 384 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 385 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 386 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 387 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 388 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 389 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 390 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 391 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 392 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 393 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 394 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 395 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 396 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 397 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 398 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 399 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 400 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 401 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 402 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 403 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 404 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 405 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 406 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 407 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 408 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 409 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 410 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 411 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 412 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 413 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 414 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 415 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 416 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 417 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 418 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 419 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 420 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 421 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 422 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 423 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 424 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 425 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 426 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 427 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 428 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 429 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 430 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 431 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 432 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 433 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 434 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 435 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 436 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 437 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 438 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 439 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 440 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 441 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 442 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 443 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 444 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 445 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 446 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 447 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 448 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 449 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 450 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 451 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 452 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 453 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 454 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 455 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 456 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 457 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 458 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 459 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 460 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 461 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 462 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 463 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 464 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 465 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 466 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 467 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 468 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 469 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 470 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 471 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 472 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 473 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 474 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 475 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 476 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 477 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 478 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 479 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 480 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 481 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 482 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 483 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 484 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 485 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 486 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 487 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 488 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 489 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 490 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 491 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 492 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 493 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 494 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 495 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 496 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 497 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 498 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 499 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 500 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 501 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 502 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 503 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 504 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 505 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 506 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 507 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 508 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 509 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 510 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 511 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 512 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 513 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 514 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 515 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 516 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 517 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 518 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 519 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 520 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 521 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 522 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 523 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 524 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 525 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 526 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 527 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 528 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 529 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 530 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 531 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 532 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 533 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 534 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 535 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 536 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 537 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 538 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 539 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 540 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 541 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 542 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 543 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 544 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 545 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 546 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 547 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 548 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 549 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 550 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 551 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 552 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 553 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 554 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 555 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 556 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 557 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 558 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 559 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 560 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 561 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 562 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 563 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 564 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 565 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 566 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 567 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 568 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 569 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 570 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 571 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 572 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 573 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 574 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 575 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 576 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 577 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 578 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 579 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 580 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 581 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 582 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 583 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 584 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 585 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 586 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 587 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 588 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 589 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 590 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 591 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 592 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 593 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 594 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 595 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 596 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 597 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 598 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 599 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 600 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 601 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 602 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 603 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 604 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 605 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 606 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 607 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 608 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 609 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
