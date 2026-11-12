# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-13.md)

*最后自动更新时间: 2026-11-13 04:56:17*
## 1. 黄仁勋辞职

**原文标题**: Jensen Huang resigns

**原文链接**: [https://apnews.com/article/nvidia-megaspeed-china-singapore-huang-5403f152a601cf82ce939f1d24fffa0f](https://apnews.com/article/nvidia-megaspeed-china-singapore-huang-5403f152a601cf82ce939f1d24fffa0f)

无法访问该文章链接

---

## 2. Gemini 4 Hydrogen 与 Orchestrator 编排器发布

**原文标题**: Gemini 4 Hydrogen and Orchestrator

**原文链接**: [https://antigravity.google/blog/gemini-4-hydrogen-in-google-antigravity/](https://antigravity.google/blog/gemini-4-hydrogen-in-google-antigravity/)

Google Antigravity 平台今日推出 Gemini 4 Hydrogen 模型及 Orchestrator 编排功能。Orchestrator 将前沿推理模型 Carbon 与高性价比模型 Hydrogen 动态组合：Carbon 负责依赖探索、方案规划与歧义消解，Hydrogen 执行代码编写、包更新与测试；遇阻时 Carbon 接管修复并恢复执行，实现单任务轨迹内的动态双向切换，克服了静态模型路由难以适应任务演变的缺陷。在 Terminal-Bench 4.1 上，Orchestrator 接近 Carbon 的任务成功率，同时配额消耗降低 24%、速度提升 19%。开发者还可通过 Antigravity SDK 构建显式多模型管道，例如以 Hydrogen 处理 issue 分流与快速迭代，Carbon 负责大型重构与安全审查。作为独立模型，Hydrogen 在 Artificial Analysis 智能指数获 51 分（最高 54 分），Terminal-Bench 4.1 达 57%，并提供低、中、高、xhigh 四级推理深度可选。Hydrogen 面向 AI Pro 及 Ultra 付费用户开放，Orchestrator 仅限 Ultra 用户，企业可通过 Gemini 商业版获取。

---

## 3. 新矮行星候选体2026 ED138现身，绕日公转周期约281年

**原文标题**: Dwarf planet candidate appears which takes roughly 280 years to orbit our sun

**原文链接**: [https://www.smithsonianmag.com/smart-news/astronomers-found-a-mysterious-object-orbiting-far-beyond-pluto-it-could-be-a-new-dwarf-planet-hidden-in-our-solar-system-180989857/](https://www.smithsonianmag.com/smart-news/astronomers-found-a-mysterious-object-orbiting-far-beyond-pluto-it-could-be-a-new-dwarf-planet-hidden-in-our-solar-system-180989857/)

美国史密森尼天体物理研究所高级天体物理学家马修·霍尔曼在分析智利维拉·C·鲁宾天文台数据时，发现一颗编号为2026 ED138的新矮行星候选体。该天体距太阳约46个天文单位，公转周期约281.1年，轨道倾角近25度，可能曾受海王星引力扰动。团队通过比对过去十年影像，甚至在1937年的哈佛天文底片中找到其踪迹，确认了它的真实存在。目前估计其直径在595至1496公里之间，可能足够大以在自身引力下呈球形，从而满足矮行星标准。但确认尺寸仍需借助红外热辐射观测或凌星观测，相关工作正在推进。当前太阳系仅确认五颗矮行星（冥王星、阋神星、鸟神星、妊神星和谷神星），此发现意味着可能还有更多类似天体尚未被探测。ED138所在区域正对银河系核心方向，背景恒星密集，属长期观测盲区，且位于南天，此前被忽视；鲁宾天文台凭借全球最大数码相机正弥补这一空白。该天体的研究或有助于揭示太阳系的形成与早期演化历史，霍尔曼表示，太阳系外围可能仍存在火星乃至地球大小的未知天体，尚未被排除。

---

## 4. Rust 1.100 发布

**原文标题**: Rust 1.100

**原文链接**: [https://blog.rust-lang.org/2026/11/12/Rust-1.100.0/](https://blog.rust-lang.org/2026/11/12/Rust-1.100.0/)

Rust 1.100.0 正式发布，核心更新包括：Never 类型（!）历经十年、五次尝试后终于稳定，可在任意位置命名，Infallible 成为其别名；edition 2024 之前版本的 never 类型回退从 () 改为 !（破坏性变更）。分配器 API 稳定，通过 Allocator trait 支持自定义分配器，目前适用于 Vec 和 Box。新增 DropGuard，在 return、?、panic 等所有退出路径运行闭包，便于实现事务式回滚。新增 std::mem::conjure_zst 作为创建零大小类型的专用方式。Cargo 方面：新增未使用依赖警告；引入 min-publish-age（依赖冷却期），可配置等待窗口以延缓采纳新发布版本，降低供应链攻击风险；改进构建目录布局以减少缓存碰撞。此外稳定化大量 API，涵盖 Allocator 相关实现、Box/Vec/Rc/Arc 的 map 方法、str 与 slice 的 trim_prefix/trim_suffix 等。用户可通过 rustup update stable 更新至本版本。

---

## 5. 数据中心耗电巨大，低收入与农村居民承受代价

**原文标题**: Data centers need power – lower income, rural residents pay the price

**原文链接**: [https://news.cornell.edu/stories/2026/11/data-centers-need-power-lower-income-rural-residents-pay-price](https://news.cornell.edu/stories/2026/11/data-centers-need-power-lower-income-rural-residents-pay-price)

摘要：康奈尔大学团队在《自然·能源》发表研究，分析2020至2025年美国四大电网数据，发现数据中心推动输电投资从200亿美元激增至340亿美元，却仅承担相关基建成本的38%（约31.2亿美元），剩余62%（51.3亿美元）由居民分摊，低收入家庭额外能源支出最高达收入的28%。研究显示，数据中心在主要用电区域推高批发电价近10%以上，弗吉尼亚涨幅15%、加州湾区达20%；农村地区家庭能源负担（支出超收入6%）增幅比城市高76%，且农村居民使用AI工具的比例更低，利益与代价严重错配。由于成本分摊仍依赖历史用电模式，新建数据中心在投产前不消耗电力，基建费用转嫁至普通家庭，且电网跨区域连接使新泽西、宾州、俄亥俄居民也需为弗吉尼亚的数据中心买单。研究同时指出每吉瓦数据中心可带动1.5万个就业岗位，强调需平衡利弊。团队建议：数据中心在每年22个高峰时段错峰减载、按新增需求直接收费、将税收激励与就业及工资增长挂钩，并设立专项补贴救助低收入家庭。目前六州已为大型用电者制定专项条款，七家科技巨头签署了白宫"费率纳税人保护承诺书"。

---

## 6. Show HN：300美元绣花机竟要订阅收费，于是我自建了软件

**原文标题**: Show HN: My $300 embroidery machine needed a subscription, so I built my own app

**原文链接**: [https://github.com/simpsoka/zigzag](https://github.com/simpsoka/zigzag)

摘要：ZigZag 是一款用 Rust 构建的开源刺绣设计编辑器，源于开发者对绣花机订阅收费的不满。该工具支持 SVG 导入，经编辑后导出 PES、DST、EXP、JEF、VP3 等主流格式，并可通过蓝牙直连 Brother Skitch 等机型发送设计。编辑器界面仿 Adobe Illustrator，提供钢笔、形状、路径等全套矢量工具及智能参考线、圆角、路径简化等功能；内置缎面、填充、跑针、十字绣、百叶、贴布等多种针迹，具备宽缎面自动拆分、重叠去除、走线规划、修剪控制等数字化能力。项目集成 MCP 协议，用户可在 Agent 面板调用 Claude Code 或 Codex 辅助设计，代理仅限操作设计工具，无系统权限。此外支持位图描摹转矢量，提供 Brother、Janome 等品牌线盘调色板匹配。已发布 macOS 与 Windows 预编译安装包，Linux 需自行构建，完全开源。

---

## 7. Outlook 服务中断，微软状态页面亦同步宕机

**原文标题**: Outlook is down, and so is Microsoft's status page

**原文链接**: [https://gvwire.com/2026/11/12/microsoft-outlook-down-for-thousands-of-users-downdetector-shows/](https://gvwire.com/2026/11/12/microsoft-outlook-down-for-thousands-of-users-downdetector-shows/)

无法访问该文章链接

---

## 8. 模组制作者完成被遗弃的《雷神之锤4》扩展，现已可游玩

**原文标题**: Abandoned Quake 4 expansion finished by modders and now playable

**原文链接**: [https://www.moddb.com/mods/openq4/downloads/openq4-0141-windows-x64](https://www.moddb.com/mods/openq4/downloads/openq4-0141-windows-x64)

无法访问该文章链接

---

## 9. Gemini 4 Hydrogen 正式发布

**原文标题**: Gemini 4 Hydrogen

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-hydrogen/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-hydrogen/)

谷歌DeepMind发布Gemini 4 Hydrogen，定位为面向大众的快速高效模型，主打日常编码与智能体工作流。该模型在Artificial Analysis智能指数上以默认高思考模式（51分）超越旗舰Argon（50分），xhigh模式达54分，定价为每百万输入token 1.50美元、输出7.50美元，支持100万token上下文。相比前代Gemini 3.8 Flash，速度提升2.5倍，Terminal-Bench 4.1得分从18.2%跃至57%，虚构声明减少超5倍，在代码调试、多步智能体执行、多模态知识处理及前端开发等场景均领先同级模型。新推出的Orchestrator功能可在同一会话中动态切换Carbon与Hydrogen，任务成功率接近Carbon同时节省24%配额、提速19%。模型设低、中、高、xhigh四档思考层级，按需平衡质量、速度与成本。消费端，Hydrogen全面升级Gemini应用与Google搜索，提升多轮对话一致性、工具调用精准度及搜索意图理解能力。安全方面，智能体越权行为减少81%，抗提示注入能力提升2.3倍，健康类问题误拒率低于0.4%。Hydrogen已面向开发者、企业及全球用户上线，覆盖Gemini API、AI Studio、Google Antigravity、Gemini应用及搜索等全平台。

---

## 10. 22年PostgreSQL旧漏洞竟成远程代码执行：一次类型混淆的发现之旅

**原文标题**: 22-Year-Old PostgreSQL Bug Turned into Remote Code Execution

**原文链接**: [https://mehmetince.net/part-3-6-how-i-ended-up-turning-a-22-year-old-postgresql-type-confusion-primitive-into-rce-cve-2026-6460/](https://mehmetince.net/part-3-6-how-i-ended-up-turning-a-22-year-old-postgresql-type-confusion-primitive-into-rce-cve-2026-6460/)

摘要：安全研究员Mehmet讲述了他在2026年6至8月间，从利用pg_clickhouse扩展内存破坏漏洞出发，逐步深入PostgreSQL核心，最终发现一个存在22年之久的类型混淆零日漏洞的完整过程。研究起点是pg_clickhouse将ClickHouse值转换为PostgreSQL Datum时存在的缺陷。为理解该机制，他借助AI代理系统学习了PostgreSQL类型体系：Datum本身不携带类型标签，类型信息完全依赖pg_type目录中的OID标识及typinput/typoutput函数选择。他首先发现LANGUAGE internal特性可强制将int4 Datum交由textout处理，造成类型混淆崩溃。关键突破来自与伴侣讨论预编译语句时获得的灵感——数据库可先完成解析再等待执行，期间可修改类型定义。他利用复合类型（composite type）的ALTER ATTRIBUTE功能，在预编译语句构建后、执行前将字段类型从UUID改为bytea，使PostgreSQL以错误类型解释原始数据，触发可靠的内存损坏原语。该漏洞影响PostgreSQL核心，与任何扩展无关。本文是其"托管PostgreSQL行业系统性风险"系列第三篇，完整呈现了从扩展漏洞到核心零日的发现路径。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 2 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 3 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 4 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 5 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 6 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 7 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 8 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 9 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 10 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 11 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 12 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 13 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 14 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 15 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 16 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 17 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 18 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 19 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 20 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 21 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 22 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 23 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 24 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 25 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 26 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 27 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 28 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 29 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 30 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 31 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 32 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 33 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 34 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 35 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 36 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 37 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 38 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 39 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 40 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 41 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 42 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 43 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 44 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 45 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 46 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 47 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 48 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 49 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 50 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 51 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 52 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 53 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 54 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 55 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 56 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 57 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 58 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 59 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 60 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 61 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 62 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 63 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 64 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 65 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 66 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 67 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 68 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 69 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 70 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 71 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 72 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 73 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 74 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 75 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 76 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 77 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 78 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 79 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 80 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 81 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 82 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 83 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 84 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 85 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 86 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 87 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 88 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 89 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 90 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 91 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 92 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 93 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 94 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 95 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 96 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 97 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 98 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 99 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 100 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 101 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 102 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 103 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 104 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 105 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 106 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 107 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 108 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 109 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 110 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 111 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 112 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 113 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 114 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 115 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 116 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 117 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 118 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 119 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 120 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 121 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 122 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 123 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 124 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 125 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 126 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 127 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 128 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 129 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 130 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 131 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 132 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 133 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 134 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 135 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 136 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 137 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 138 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 139 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 140 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 141 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 142 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 143 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 144 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 145 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 146 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 147 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 148 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 149 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 150 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 151 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 152 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 153 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 154 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 155 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 156 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 157 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 158 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 159 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 160 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 161 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 162 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 163 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 164 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 165 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 166 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 167 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 168 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 169 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 170 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 171 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 172 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 173 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 174 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 175 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 176 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 177 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 178 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 179 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 180 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 181 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 182 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 183 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 184 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 185 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 186 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 187 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 188 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 189 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 190 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 191 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 192 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 193 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 194 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 195 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 196 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 197 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 198 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 199 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 200 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 201 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 202 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 203 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 204 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 205 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 206 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 207 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 208 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 209 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 210 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 211 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 212 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 213 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 214 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 215 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 216 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 217 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 218 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 219 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 220 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 221 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 222 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 223 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 224 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 225 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 226 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 227 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 228 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 229 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 230 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 231 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 232 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 233 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 234 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 235 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 236 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 237 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 238 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 239 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 240 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 241 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 242 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 243 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 244 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 245 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 246 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 247 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 248 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 249 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 250 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 251 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 252 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 253 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 254 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 255 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 256 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 257 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 258 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 259 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 260 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 261 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 262 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 263 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 264 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 265 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 266 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 267 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 268 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 269 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 270 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 271 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 272 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 273 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 274 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 275 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 276 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 277 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 278 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 279 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 280 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 281 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 282 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 283 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 284 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 285 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 286 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 287 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 288 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 289 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 290 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 291 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 292 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 293 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 294 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 295 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 296 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 297 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 298 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 299 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 300 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 301 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 302 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 303 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 304 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 305 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 306 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 307 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 308 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 309 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 310 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 311 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 312 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 313 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 314 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 315 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 316 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 317 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 318 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 319 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 320 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 321 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 322 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 323 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 324 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 325 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 326 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 327 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 328 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 329 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 330 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 331 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 332 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 333 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 334 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 335 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 336 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 337 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 338 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 339 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 340 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 341 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 342 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 343 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 344 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 345 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 346 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 347 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 348 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 349 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 350 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 351 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 352 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 353 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 354 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 355 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 356 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 357 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 358 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 359 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 360 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 361 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 362 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 363 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 364 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 365 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 366 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 367 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 368 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 369 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 370 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 371 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 372 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 373 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 374 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 375 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 376 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 377 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 378 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 379 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 380 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 381 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 382 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 383 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 384 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 385 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 386 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 387 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 388 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 389 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 390 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 391 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 392 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 393 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 394 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 395 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 396 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 397 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 398 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 399 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 400 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 401 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 402 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 403 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 404 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 405 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 406 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 407 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 408 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 409 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 410 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 411 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 412 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 413 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 414 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 415 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 416 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 417 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 418 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 419 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 420 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 421 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 422 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 423 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 424 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 425 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 426 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 427 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 428 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 429 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 430 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 431 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 432 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 433 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 434 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 435 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 436 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 437 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 438 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 439 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 440 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 441 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 442 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 443 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 444 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 445 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 446 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 447 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 448 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 449 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 450 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 451 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 452 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 453 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 454 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 455 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 456 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 457 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 458 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 459 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 460 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 461 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 462 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 463 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 464 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 465 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 466 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 467 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 468 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 469 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 470 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 471 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 472 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 473 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 474 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 475 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 476 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 477 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 478 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 479 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 480 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 481 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 482 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 483 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 484 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 485 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 486 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 487 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 488 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 489 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 490 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 491 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 492 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 493 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 494 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 495 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 496 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 497 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 498 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 499 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 500 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 501 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 502 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 503 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 504 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 505 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 506 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 507 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 508 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 509 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 510 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 511 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 512 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 513 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 514 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 515 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 516 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 517 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 518 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 519 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 520 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 521 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 522 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 523 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 524 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 525 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 526 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 527 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 528 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 529 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 530 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 531 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 532 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 533 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 534 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 535 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 536 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 537 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 538 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 539 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 540 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 541 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 542 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 543 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 544 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 545 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 546 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 547 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 548 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 549 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 550 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 551 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 552 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 553 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 554 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 555 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 556 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 557 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 558 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 559 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 560 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 561 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 562 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 563 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 564 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 565 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 566 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 567 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 568 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 569 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 570 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 571 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 572 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 573 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 574 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 575 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 576 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 577 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 578 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 579 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 580 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 581 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 582 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 583 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 584 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 585 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 586 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 587 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 588 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 589 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 590 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 591 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 592 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 593 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 594 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 595 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 596 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 597 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 598 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 599 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
