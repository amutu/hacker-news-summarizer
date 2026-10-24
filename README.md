# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-25.md)

*最后自动更新时间: 2026-10-25 04:54:38*
## 1. 科技业之外，AI回报尚付阙如

**原文标题**: No Signs of AI Payoff Outside the Tech Sector

**原文链接**: [https://www.apollo.com/wealth/insights-news/insights/daily-spark/no-signs-of-ai-payoff-outside-the-tech-sector](https://www.apollo.com/wealth/insights-news/insights/daily-spark/no-signs-of-ai-payoff-outside-the-tech-sector)

2026年10月，Apollo首席经济学家斯洛克指出，尽管AI投资巨大、热度极高，科技行业之外却未见任何财务回报。"Magnificent 7"七大科技巨头的人均收入与利润率持续走高，而标准普尔493家成分公司的相应指标基本持平；AI亦尚未推动全要素生产率增长。主流企业开始将AI支出视为侵蚀利润的成本中心而非增长引擎，逐步缩减投入；风投支持的公司仍大量采购AI模型"代币"，但传统企业既无需求也无意买单。只要AI应用局限于经济的一小部分，其宏观拉动效应将十分有限。

斯洛克提出前瞻性问题：即便模型日益商品化、智能成本不断下降，主流企业能否将廉价AI转化为更高营收与利润率？他认为AI是强大的"计算器"，但商业竞争需要的是"判断力"，而AI无法理解问责、信任、企业文化、潜规则及道德权衡，这些恰恰驱动声誉风险与最终利润。斯洛克强调，AI的经济故事最终将在标普493家公司中决定，而非七大科技巨头，目前科技行业外尚无收入增长或利润率改善的任何证据。

---

## 2. Goose 编程语言

**原文标题**: The Goose Programming Language

**原文链接**: [https://aardappel.github.io/goose/](https://aardappel.github.io/goose/)

Goose 是一种内存安全的系统编程语言，无堆分配、无垃圾回收、无生命周期注解，基准测试中速度达 C++ 的 3.3 倍、安全 Rust 的 1.12 倍，内存占用更低。其核心为数据栈模型：所有动态值内联存放于编译器管理的多段 bump-pointer 栈上，扩容仅移动指针，作用域结束即释放，无分配器与解构器。关键特性包括：引用在数组扩容后保持有效；编译器自动推断引用根，无需任何生命周期标注；嵌套结构与变体 ADT 完全内联存储，消除指针开销；相对引用替代机器指针，使数据结构本身即为可校验的文件格式；值在最终目标位置就地构建，返回值零拷贝；支持跨调用帧的错误返回，无需 Result 类型或栈展开；线程间不共享内存，仅通过类型化队列传递扁平值，无锁无数据竞争；泛型与高阶函数在编译期单态化，零运行时开销；最终编译为单一 C 文件，可直接调用 C 接口，内置 TinyCC 后端支持进程内编译运行。

---

## 3. Roku 开发者代码仓库已从 GitHub 迁移至 GitLab

**原文标题**: Roku developer repositories moved from GitHub to GitLab

**原文链接**: [https://blog.roku.com/developer/gitlab-move](https://blog.roku.com/developer/gitlab-move)

Roku 官方宣布将其开发者代码仓库从 GitHub 平台整体迁移至 GitLab 平台。此次迁移意味着所有 Roku SDK、示例项目及开发工具的源代码托管地址将发生变更，开发者需将原有的 GitHub 仓库链接更新为 GitLab 对应地址，并调整 CI/CD 配置、依赖拉取脚本及自动化部署流程。同时，Issue 追踪、Pull Request（合并请求）及代码审查等工作流也将转移至 GitLab 体系，开发者应及时关注官方公告以获取新的仓库链接及迁移指南，确保开发工作不受影响。

---

## 4. 美国核力量紧急行动消息（EAM）在线监听与解读（11175 kHz）

**原文标题**: Listen and read USA nuclear forces Emergency Action Messages, heard on 11175 kHz

**原文链接**: [https://missileer.watch](https://missileer.watch)

摘要：「导弹兵观察站」（Missileer.Watch）是一个在线平台，致力于监听并解读经由11175 kHz短波频率（上边带/USB）播发的美国核力量紧急行动消息（EAM）。该站点由美国俄勒冈州丹尼尔·弗伦克尔（Daniel Frenkel）及其Valar Systems公司运营，界面时间统一采用UTC（Zulu）制。当前页面展示为开发测试数据而非实时信号，最新EAM及网络节点状态均显示"等待接收中"。技术层面，页面需启用JavaScript方可读取数据流，后台通过获取archive.json和status.json两个公开文件实现信息展示。隐私政策方面，站点不部署追踪cookie；登录为可选操作，仅写入一个会话cookie；访问统计交由Cloudflare Web Analytics匿名完成。网站全部录音与解码成果以CC0 1.0（公共领域）协议发布，允许任何人自由使用，仅建议注明来源为missileer.watch；数据保留与删除细则详见其隐私页面。

---

## 5. 约翰·卡马克谈Goose语言：多数据栈与相对引用

**原文标题**: John Carmack on the Goose Language: multiple data stacks and relative references

**原文链接**: [https://twitter.com/ID_AA_Carmack/status/2113704269274636568](https://twitter.com/ID_AA_Carmack/status/2113704269274636568)

id Software创始人、著名系统程序员约翰·卡马克在社交媒体上对Goose编程语言给予高度评价。他指出该语言具备两大核心亮点：一是能够自动分析并灵活运用多个数据栈及可调整大小的字段，这一机制将语言的能力从"能完成大量工作"直接跃升至"几乎无所不能"；二是其相对引用机制配合内置的二进制结构验证，使数据结构可直接映射至内存，网络数据亦可即时使用，无需传统意义上的解析步骤。卡马克特别强调，现实中文件和网络数据的"解析"操作通常比必要开销高出约一百倍，而Goose语言通过上述设计有效规避了这一性能瓶颈，在数据处理效率上展现出显著优势。

---

## 6. Dream-1：首个通用零样本机器人操控世界动作模型

**原文标题**: Dream-1

**原文链接**: [https://dreamlabs.ai/research/dream-1/](https://dreamlabs.ai/research/dream-1/)

2026年，Dream Labs完成9000万美元种子轮融资，正式推出Dream-1——首个通过公开API提供的世界动作模型，可零样本操控未见机器人完成未见任务。Dream-1以末端执行器位姿为通用动作接口，借助WAM将视频预测与动作生成统一，以"像素"为跨本体通用表征，已在27个仿真机器人和4个真实机器人上验证泛化能力。文章指出，机器人行业长期受制于"先有鸡还是先有蛋"的冷启动困境，而硬件大幅降本（双臂套装仅2000美元）与模型零样本泛化的结合，正打破数据闭环，推动机器人采用飞轮启动。独立机构Robocurve评测显示，Dream-1在RoboDojo基准上性能超越Opus 5.5与Gemini 4 Argon，任务成本仅为后者1/16，速度亦更快。定价为每小时3美元，轻量版flash为2美元。此外，Dream Labs提供FaaS服务，用户可用少量自有数据快速微调，补齐特定短板。

---

## 7. 圣赫勒拿5便士硬币：主角是约190岁的象龟乔纳森

**原文标题**: The St. Helena 5 pence coin shows Jonathan, a roughly 190 year old tortoise

**原文链接**: [https://de.numista.com/9866](https://de.numista.com/9866)

无法访问该文章链接

---

## 8. FreeDNS — 免费DNS与动态/静态DNS托管服务

**原文标题**: FreeDNS

**原文链接**: [https://freedns.afraid.org/](https://freedns.afraid.org/)

摘要：FreeDNS 是一个提供免费 DNS 托管的平台，涵盖动态 DNS、静态 DNS、子域名及域名托管服务，已拥有超过 716 万会员、约 1380 万条 DNS 记录。会员可使用域名管理、子域名管理、网页转发、动态 DNS 更新、IPv6 反向 DNS 及备份 DNS 等功能；公众可浏览主页、FAQ、新闻及路由器配置指南等。用户可通过 curl 命令快速完成 IP 动态更新，IPv6 更新只需访问 v6.sync.afraid.org 对应接口即可。平台适用于将家庭、办公、学校或云服务器的固定域名指向实时变化的 IP 地址，支持公网、局域网及 IPv6 环境。共享注册表收录 23,234 个域名供用户直接挂载。此外，平台提供每月 5 美元的高级计划，增加 50 个子域名、3 个隐私选项及通配符 DNS 解析，并接受比特币支付。当前系统每秒处理约 2,372 条 DNS 查询。

---

## 9. 神经芯片解码脑区间交互作用

**原文标题**: Neural chip decodes interactions between brain regions

**原文链接**: [https://actu.epfl.ch/news/neural-chip-decodes-interactions-between-brain-r-2/](https://actu.epfl.ch/news/neural-chip-decodes-interactions-between-brain-r-2/)

摘要：瑞士洛桑联邦理工学院（EPFL）研究团队开发了一款名为LogSync的可植入神经芯片，能够实时追踪大脑不同区域间的信号通信，识别认知与情绪状态。该芯片仅4×2毫米，功耗低于200微瓦，采用对数计算简化网络级信号处理，在单芯片上完成脑区同步性提取与状态解码。当前深部脑刺激（DBS）治疗多为"开环"模式，无法根据患者脑活动实时调整；LogSync通过机器学习算法提取脑波强度及脑区间同步性等网络级生物标志物，实现闭环自适应刺激，为抑郁症、创伤后应激障碍、强迫症等精神疾病治疗开辟新路径。研究团队利用人类脑记录数据集验证了算法对认知与情绪状态的区分能力，并在大鼠实验中成功按脑电波预设相位生成刺激触发信号。项目获美国国立精神卫生研究所660万瑞士法郎资助，成果发表于《IEEE固态电路期刊》。该芯片的脑网络标志物提取能力还可拓展至帕金森等运动障碍的自适应DBS、无创闭环刺激及聚焦超声等下一代神经技术领域。

---

## 10. 丹麦政府悄然放弃弃用微软Office的计划

**原文标题**: Danish Government silently drops plan to dump MS Office

**原文链接**: [https://www.computerworld.dk/art/297226/digitaliseringsministeriet-har-i-al-stilhed-droppet-stort-anlagt-forsoeg-med-open-source-alternativ-til-microsoft](https://www.computerworld.dk/art/297226/digitaliseringsministeriet-har-i-al-stilhed-droppet-stort-anlagt-forsoeg-med-open-source-alternativ-til-microsoft)

摘要：丹麦政府此前曾提出逐步淘汰微软Office办公软件，以降低对单一商业软件的依赖、推进办公系统数字化转型。然而，该计划并未通过公开声明终止，而是被悄然搁置，引发外界关注。这一决策背后反映出公共部门在软件替代过程中的现实困境：在开源或国产替代方案尚未完全成熟、系统迁移成本高、员工适应周期长的多重压力下，维持现有微软Office生态仍是务实选择。此事也折射出欧洲多国政府在推动技术自主与软件本地化进程中面临的共性难题，即在理想主义政策目标与行政效率、财政预算等现实约束之间寻求平衡。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 2 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 3 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 4 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 5 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 6 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 7 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 8 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 9 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 10 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 11 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 12 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 13 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 14 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 15 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 16 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 17 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 18 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 19 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 20 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 21 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 22 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 23 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 24 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 25 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 26 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 27 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 28 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 29 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 30 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 31 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 32 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 33 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 34 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 35 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 36 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 37 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 38 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 39 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 40 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 41 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 42 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 43 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 44 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 45 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 46 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 47 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 48 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 49 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 50 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 51 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 52 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 53 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 54 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 55 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 56 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 57 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 58 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 59 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 60 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 61 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 62 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 63 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 64 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 65 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 66 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 67 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 68 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 69 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 70 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 71 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 72 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 73 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 74 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 75 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 76 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 77 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 78 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 79 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 80 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 81 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 82 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 83 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 84 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 85 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 86 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 87 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 88 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 89 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 90 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 91 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 92 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 93 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 94 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 95 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 96 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 97 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 98 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 99 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 100 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 101 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 102 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 103 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 104 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 105 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 106 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 107 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 108 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 109 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 110 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 111 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 112 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 113 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 114 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 115 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 116 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 117 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 118 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 119 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 120 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 121 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 122 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 123 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 124 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 125 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 126 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 127 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 128 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 129 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 130 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 131 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 132 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 133 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 134 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 135 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 136 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 137 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 138 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 139 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 140 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 141 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 142 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 143 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 144 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 145 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 146 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 147 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 148 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 149 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 150 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 151 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 152 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 153 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 154 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 155 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 156 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 157 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 158 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 159 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 160 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 161 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 162 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 163 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 164 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 165 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 166 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 167 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 168 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 169 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 170 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 171 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 172 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 173 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 174 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 175 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 176 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 177 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 178 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 179 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 180 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 181 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 182 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 183 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 184 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 185 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 186 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 187 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 188 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 189 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 190 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 191 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 192 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 193 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 194 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 195 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 196 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 197 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 198 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 199 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 200 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 201 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 202 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 203 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 204 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 205 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 206 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 207 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 208 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 209 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 210 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 211 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 212 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 213 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 214 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 215 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 216 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 217 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 218 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 219 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 220 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 221 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 222 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 223 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 224 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 225 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 226 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 227 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 228 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 229 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 230 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 231 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 232 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 233 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 234 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 235 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 236 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 237 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 238 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 239 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 240 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 241 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 242 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 243 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 244 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 245 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 246 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 247 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 248 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 249 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 250 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 251 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 252 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 253 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 254 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 255 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 256 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 257 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 258 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 259 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 260 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 261 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 262 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 263 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 264 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 265 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 266 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 267 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 268 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 269 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 270 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 271 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 272 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 273 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 274 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 275 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 276 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 277 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 278 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 279 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 280 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 281 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 282 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 283 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 284 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 285 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 286 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 287 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 288 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 289 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 290 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 291 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 292 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 293 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 294 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 295 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 296 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 297 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 298 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 299 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 300 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 301 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 302 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 303 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 304 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 305 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 306 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 307 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 308 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 309 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 310 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 311 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 312 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 313 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 314 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 315 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 316 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 317 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 318 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 319 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 320 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 321 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 322 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 323 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 324 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 325 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 326 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 327 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 328 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 329 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 330 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 331 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 332 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 333 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 334 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 335 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 336 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 337 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 338 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 339 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 340 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 341 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 342 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 343 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 344 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 345 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 346 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 347 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 348 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 349 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 350 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 351 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 352 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 353 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 354 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 355 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 356 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 357 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 358 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 359 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 360 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 361 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 362 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 363 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 364 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 365 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 366 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 367 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 368 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 369 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 370 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 371 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 372 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 373 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 374 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 375 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 376 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 377 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 378 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 379 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 380 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 381 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 382 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 383 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 384 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 385 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 386 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 387 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 388 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 389 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 390 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 391 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 392 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 393 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 394 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 395 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 396 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 397 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 398 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 399 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 400 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 401 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 402 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 403 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 404 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 405 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 406 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 407 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 408 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 409 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 410 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 411 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 412 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 413 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 414 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 415 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 416 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 417 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 418 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 419 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 420 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 421 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 422 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 423 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 424 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 425 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 426 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 427 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 428 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 429 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 430 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 431 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 432 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 433 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 434 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 435 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 436 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 437 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 438 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 439 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 440 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 441 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 442 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 443 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 444 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 445 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 446 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 447 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 448 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 449 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 450 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 451 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 452 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 453 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 454 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 455 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 456 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 457 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 458 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 459 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 460 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 461 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 462 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 463 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 464 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 465 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 466 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 467 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 468 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 469 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 470 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 471 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 472 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 473 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 474 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 475 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 476 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 477 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 478 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 479 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 480 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 481 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 482 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 483 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 484 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 485 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 486 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 487 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 488 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 489 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 490 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 491 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 492 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 493 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 494 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 495 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 496 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 497 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 498 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 499 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 500 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 501 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 502 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 503 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 504 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 505 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 506 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 507 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 508 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 509 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 510 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 511 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 512 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 513 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 514 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 515 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 516 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 517 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 518 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 519 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 520 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 521 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 522 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 523 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 524 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 525 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 526 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 527 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 528 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 529 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 530 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 531 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 532 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 533 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 534 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 535 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 536 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 537 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 538 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 539 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 540 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 541 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 542 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 543 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 544 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 545 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 546 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 547 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 548 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 549 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 550 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 551 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 552 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 553 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 554 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 555 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 556 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 557 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 558 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 559 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 560 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 561 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 562 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 563 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 564 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 565 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 566 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 567 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 568 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 569 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 570 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 571 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 572 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 573 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 574 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 575 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 576 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 577 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 578 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 579 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 580 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
