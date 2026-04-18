# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-18.md)

*最后自动更新时间: 2026-04-18 20:37:27*
## 1. B-52轰炸机星象跟踪仪内的机电角度计算机

**原文标题**: The electromechanical angle computer inside the B-52 bomber's star tracker

**原文链接**: [https://www.righto.com/2026/04/B-52-star-tracker-angle-computer.html](https://www.righto.com/2026/04/B-52-star-tracker-angle-computer.html)

B-52轰炸机的天文罗盘系统，在GPS问世前便实现了自动化天体导航。其核心部件是一台机电角度计算机，能够解决复杂的球面三角计算，将恒星的固定天体坐标（赤纬和恒星时角）转换为飞机所需的本地方位角与高度角。

该系统通过实体模拟天球运作。计算机内部，一个机械星标指针会根据恒星坐标与飞机纬度，定位在小型半球模型上。随着机构旋转以补偿地球自转（本地时角），机械装置将恒星位置转换为所需的方位角与高度角输出，并通过同步器进行电信号读取。

领航员通过主控制面板输入从《航空年历》中获取的恒星数据。整套天文罗盘系统包含安装在机身穹顶内、由陀螺仪稳定的恒星追踪望远镜，以及驾驶舱内的多个控制与显示单元。这套机电系统能提供高精度、抗干扰的航向指引，无需依赖地面信号，以精妙的模拟技术解决了复杂的实时导航难题。

---

## 2. 从DigitalOcean迁移到Hetzner

**原文标题**: Migrating from DigitalOcean to Hetzner

**原文链接**: [https://isayeter.com/posts/digitalocean-to-hetzner-migration/](https://isayeter.com/posts/digitalocean-to-hetzner-migration/)

本文详细介绍了将生产服务器从DigitalOcean迁移至Hetzner的过程，在实现零停机的同时，将月度成本从1,432美元降至233美元。主要动机源于土耳其地区美元计价成本高昂的经济考量。新的Hetzner AX162-R专用服务器以极低价格提供了更优配置（48核CPU、256GB内存、NVMe存储）。

此次迁移涉及复杂的技术栈：30个MySQL数据库（248GB）、34个Nginx站点、GitLab EE和Neo4j，均需实时服务移动应用流量。迁移策略采用主从MySQL复制，配合**mydumper/myloader**实现快速并行数据传输，在切换前保持双服务器同步。关键步骤包括克隆网站文件、降低DNS TTL值，并将旧Nginx服务器转为反向代理以处理DNS传播期间的流量。

重大挑战之一是从MySQL 5.7升级至8.0，这需要修复架构兼容性问题。团队还发现`SUPER`权限会绕过MySQL的`read_only`设置，因此进行了权限调整。所有流程均通过脚本实现以确保可靠性。

最终实现了用户无感知的平滑过渡，每年节省超14,000美元，并将操作系统从CentOS 7升级至AlmaLinux 9。核心结论是：对于稳态工作负载，专用服务器能提供远超云服务商的性价比。所有自动化脚本已在GitHub开源。

---

## 3. Kdenlive 现状

**原文标题**: State of Kdenlive

**原文链接**: [https://kdenlive.org/news/2026/state-2026/](https://kdenlive.org/news/2026/state-2026/)

2025年，Kdenlive团队通过三次重大版本更新聚焦于稳定性、性能优化和界面打磨。关键特性包括AI驱动的背景移除工具、为提升项目交换效率而彻底重写的OpenTimelineIO支持模块、重新设计的音频混音器、全新停靠系统以及欢迎界面。

展望未来，26.04版本将新增监视器镜像和动画转场预览功能。未来路线图重点包括10/12位色深支持、配备运动曲线编辑器重构的关键帧系统，以及增强的字幕工具。团队也正推进通过微软商店分发应用的工作。

项目社区呈现强劲增长态势，2025年共有38位代码贡献者，其中半数为首次参与者。团队在阿姆斯特丹和柏林举办了高效编程冲刺活动，并参与了Akademy大会。Kdenlive从官方页面下载量突破1150万次，全球用户分布前三名为美国、印度和巴西。

资金支持仍是关键。尽管2025年筹集了9344欧元，团队仍呼吁更多捐赠，以便维护者能投入更多时间，并有望雇佣额外开发人员加速项目进展。

---

## 4. 关于Claude设计的思考与感受

**原文标题**: Thoughts and feelings around Claude Design

**原文链接**: [https://samhenri.gold/blog/20260418-claude-design/](https://samhenri.gold/blog/20260418-claude-design/)

作者认为，由于人工智能的兴起，Figma作为设计“唯一真相源”的时代正在终结。他们指出，Figma复杂且封闭的组件与变量系统属于“前智能体时代”的遗留产物，由于AI模型基于代码训练，很难理解这套体系。随着Claude Design（直接处理HTML/JS）和Claude Code等AI工具让设计师能更轻松地操作代码，真相源将自然回归代码本身，使Figma精密的架构逐渐过时。

作者以Figma自身设计系统文件的复杂性为例进行说明——尽管这些文件被视为行业标杆，但其调试过程如同噩梦。他们预测设计工具将分化为两条路径：一类如Claude Design般坦承基于代码开发，并与AI编程助手无缝集成；另一类则是纯粹、不受限制的可视化探索工具，摆脱系统化设计的束缚。

核心结论是：Figma正面临其“Sketch时刻”——一场颠覆性变革。当行业朝着AI驱动的、统一且以代码为中心的工作流迈进时，Figma却困于非AI原生的手动操作范式之中。

---

## 5. Show HN: MDV – 用于文档、仪表板和幻灯片的Markdown超集，支持数据集成

**原文标题**: Show HN: MDV – a Markdown superset for docs, dashboards, and slides with data

**原文链接**: [https://github.com/drasimwagan/mdv](https://github.com/drasimwagan/mdv)

MDV是一种Markdown超集语言，专为创建数据密集型文档、仪表板和幻灯片而设计。它在严格的CommonMark基础上扩展了四项核心功能：用于元数据和数据引用的YAML前置信息、用于图表和统计的围栏代码块（例如````chart type=bar````）、用于样式化布局的`:::`容器，以及自动生成的目录。

该工具强调简洁性，仅通过命名样式和主题进行格式化，无需CSS选择器、类或自定义代码。它可渲染为自包含的HTML（图表以内联SVG形式呈现，无需JavaScript）和PDF格式。VS Code扩展插件提供实时并排预览功能。

该项目目前处于面向Node.js 20+的预发布v1阶段，包含用于渲染和预览的CLI工具、完整文档，以及一套展示所有功能的示例文件。

---

## 6. 美国法警的年轻儿子们骑马从俄克拉荷马州前往纽约（2018年）

**原文标题**: Young sons of U.S. marshal ride horseback from Oklahoma to New York (2018)

**原文链接**: [https://texascooppower.com/the-astonishing-ride-of-the-abernathy-boys/](https://texascooppower.com/the-astonishing-ride-of-the-abernathy-boys/)

1910年，10岁的路易斯·“巴德”·阿伯内西和6岁的坦普尔兄弟进行了一次非凡的旅程——他们骑马从俄克拉荷马州的弗雷德里克出发，穿越2000英里抵达纽约市。他们的父亲是美国法警杰克·“活捉能手”·阿伯内西（西奥多·罗斯福的朋友），他批准了这次旅行，并为安全制定了规则，包括每日不超过50英里且周日不赶路。

巴德骑着父亲的马萨姆·巴斯，坦普尔则骑着一匹名叫杰罗尼莫的小马。他们只带了极简的物资，夜晚用套索驱蛇，沿途依靠人们的善意接济。当坦普尔的小马在俄克拉荷马州生病后，他们动用应急资金买了新马。这场冒险引起了全国关注，报纸持续报道他们的行程。

兄弟俩的目标是及时赶到纽约，迎接前总统罗斯福从非洲远征归来后的游行。经过两个月的跋涉，他们成功抵达，与父亲及罗斯福的莽骑兵队一同参加了第五大道的庆祝游行，沿途超过百万人见证了他们的风采。

---

## 7. 迈克尔·拉宾去世了

**原文标题**: Michael Rabin has died

**原文链接**: [https://en.wikipedia.org/wiki/Michael_O._Rabin](https://en.wikipedia.org/wiki/Michael_O._Rabin)

迈克尔·奥瑟·拉宾（1931–2026）是以色列开创性的数学家与计算机科学家。他与达纳·斯科特共同获得1976年ACM图灵奖，表彰他们于1959年发表的奠基性论文《有限自动机及其判定问题》，该论文引入了非确定性机器的基础概念。

拉宾在计算机科学领域做出了多项突破性贡献。他共同发明了米勒-拉宾素数测试、拉宾-卡普字符串搜索算法以及拉宾密码系统。他的工作还为计算复杂性理论奠定了基础，包括多项式时间的正式化，并引入了概率自动机、不经意传输和无限树自动机等关键概念。

拉宾曾在希伯来大学和普林斯顿大学求学，并在哈佛大学和耶路撒冷希伯来大学担任教授。他获得的众多荣誉包括以色列奖、哈维奖和丹·大卫奖。拉宾于2026年4月14日逝世，享年94岁。他的女儿塔尔·拉宾同样是一位杰出的计算机科学家。

---

## 8. 科学家在亚利桑那沙漠发现“清洁蚁”，会为巨型蚂蚁梳理身体。

**原文标题**: Scientists discover "cleaner ants" that groom giant ants in Arizona desert

**原文链接**: [https://www.sciencedaily.com/releases/2026/04/260414075641.htm](https://www.sciencedaily.com/releases/2026/04/260414075641.htm)

科学家在亚利桑那沙漠首次发现一种蚂蚁为另一种蚂蚁充当“清洁工”的现象。昆虫学家马克·莫菲特观察到微小的锥蚁正在为体型大得多的收获蚁清理身体，这种行为与海洋生态系统中清洁鱼类的行为高度相似。

整个过程始于收获蚁靠近锥蚁巢穴并静止不动地张开双颚。随后小型锥蚁会爬上大型蚂蚁的身体，用口器舔舐啃咬其体表，甚至进入其张开的颚部内侧。收获蚁在此过程中保持静止，清洁过程可持续数秒至数分钟，结束后收获蚁会抖落清洁蚁并离开。

研究人员认为这是一种互利共生的关系。锥蚁可能从收获蚁体表清除的微小颗粒（可能是种子碎屑）中获取营养，而大型蚂蚁则获得了更彻底的清洁，尤其清除了难以触及部位的寄生虫或碎屑，可能因此降低感染风险。这项发表于《生态与演化》的研究揭示，自然界中复杂的动物互动仍存在大量未知领域。

---

## 9. 作品4.7至4.6版本的通胀率约为45%

**原文标题**: Opus 4.7 to 4.6 Inflation is ~45%

**原文链接**: [https://tokens.billchambers.me/leaderboard](https://tokens.billchambers.me/leaderboard)

本文介绍了一款社区驱动的工具，用于比较Anthropic的Claude Opus 4.6与4.7模型的令牌成本。核心发现是：使用Opus 4.7相比其前代4.6会导致令牌成本增加约45%。

这款名为“Anthropic令牌成本计算器”的工具允许用户匿名提交提示词，以查看两个模型版本的成本差异。它通过汇总“社区平均数据”来展示模型在真实输入场景中的表现。

文章说明该项目为开源工具，仅存储匿名数据，且为独立开发项目，与Anthropic无关联或官方认可。主要结论是：新版Opus 4.7模型存在显著的成本上升，为考虑升级的用户提供了实用数据参考。

---

## 10. 墨田水族馆发布2026年企鹅关系图，剧情跌宕分手频现

**原文标题**: Sumida Aquarium Posts 2026 Penguin Relationship Chart, with Drama and Breakups

**原文链接**: [https://www.sumida-aquarium.com/special/sokanzu/en/2026/](https://www.sumida-aquarium.com/special/sokanzu/en/2026/)

**《墨田水族馆发布2026年企鹅关系图，剧情涵盖恋爱与分手》摘要**

东京墨田水族馆发布了其2026年度的"企鹅关系图"，这是一幅幽默而详细的图表，追踪了馆内52只企鹅群体的社交动态。该图以复杂的肥皂剧或企业组织结构图的形式呈现，描绘了这些鸟类之间各种关系、小团体和戏剧性事件。

图表要点包括：
*   **核心角色：** 群体以一只名为**伊布里**的受欢迎雌性企鹅为中心，她被描绘成许多社交关系的核心。
*   **关系状态：** 图表标明了特定的配对，如已结为伴侣的**贡和诗织**，并注明了其他被标记为"调查中"或已"分手"的关系。
*   **社交团体：** 企鹅们被归入命名的派系，如"美食家团体"、"水滨房产所有者"和"日光浴协会"，这反映了它们被观察到的习性及偏好的水族馆区域。
*   **持续剧情：** 图表突显了企鹅间的紧张关系，包括一只与伊布里团体"关系不佳"的企鹅（**冰河**），以及另一只正试图融入新团体的企鹅（**福丸**）。
*   **目的：** 这一创意项目旨在向游客介绍每只企鹅的个性与社交行为，鼓励游客更细致地观察，并培养与动物更深的情感连接。这已成为该水族馆一项备受欢迎的年度传统。

本质上，水族馆通过这张有趣的"关系图"将其企鹅拟人化，将它们日常的互动变成一个引人入胜的故事，以此提升公众的保护意识和参观兴趣。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 2 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 3 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 4 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 5 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 6 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 7 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 8 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 9 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 10 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 11 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 12 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 13 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 14 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 15 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 16 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 17 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 18 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 19 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 20 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 21 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 22 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 23 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 24 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 25 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 26 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 27 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 28 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 29 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 30 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 31 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 32 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 33 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 34 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 35 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 36 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 37 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 38 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 39 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 40 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 41 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 42 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 43 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 44 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 45 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 46 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 47 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 48 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 49 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 50 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 51 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 52 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 53 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 54 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 55 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 56 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 57 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 58 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 59 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 60 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 61 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 62 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 63 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 64 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 65 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 66 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 67 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 68 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 69 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 70 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 71 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 72 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 73 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 74 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 75 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 76 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 77 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 78 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 79 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 80 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 81 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 82 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 83 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 84 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 85 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 86 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 87 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 88 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 89 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 90 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 91 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 92 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 93 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 94 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 95 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 96 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 97 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 98 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 99 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 100 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 101 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 102 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 103 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 104 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 105 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 106 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 107 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 108 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 109 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 110 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 111 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 112 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 113 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 114 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 115 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 116 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 117 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 118 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 119 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 120 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 121 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 122 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 123 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 124 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 125 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 126 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 127 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 128 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 129 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 130 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 131 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 132 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 133 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 134 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 135 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 136 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 137 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 138 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 139 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 140 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 141 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 142 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 143 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 144 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 145 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 146 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 147 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 148 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 149 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 150 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 151 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 152 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 153 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 154 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 155 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 156 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 157 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 158 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 159 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 160 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 161 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 162 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 163 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 164 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 165 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 166 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 167 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 168 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 169 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 170 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 171 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 172 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 173 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 174 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 175 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 176 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 177 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 178 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 179 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 180 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 181 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 182 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 183 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 184 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 185 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 186 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 187 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 188 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 189 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 190 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 191 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 192 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 193 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 194 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 195 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 196 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 197 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 198 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 199 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 200 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 201 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 202 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 203 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 204 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 205 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 206 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 207 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 208 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 209 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 210 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 211 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 212 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 213 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 214 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 215 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 216 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 217 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 218 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 219 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 220 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 221 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 222 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 223 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 224 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 225 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 226 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 227 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 228 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 229 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 230 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 231 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 232 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 233 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 234 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 235 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 236 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 237 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 238 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 239 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 240 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 241 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 242 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 243 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 244 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 245 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 246 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 247 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 248 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 249 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 250 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 251 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 252 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 253 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 254 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 255 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 256 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 257 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 258 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 259 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 260 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 261 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 262 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 263 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 264 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 265 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 266 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 267 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 268 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 269 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 270 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 271 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 272 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 273 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 274 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 275 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 276 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 277 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 278 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 279 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 280 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 281 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 282 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 283 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 284 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 285 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 286 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 287 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 288 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 289 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 290 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 291 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 292 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 293 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 294 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 295 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 296 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 297 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 298 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 299 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 300 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 301 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 302 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 303 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 304 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 305 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 306 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 307 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 308 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 309 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 310 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 311 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 312 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 313 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 314 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 315 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 316 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 317 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 318 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 319 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 320 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 321 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 322 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 323 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 324 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 325 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 326 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 327 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 328 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 329 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 330 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 331 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 332 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 333 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 334 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 335 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 336 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 337 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 338 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 339 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 340 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 341 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 342 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 343 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 344 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 345 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 346 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 347 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 348 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 349 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 350 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 351 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 352 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 353 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 354 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 355 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 356 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 357 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 358 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 359 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 360 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 361 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 362 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 363 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 364 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 365 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 366 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 367 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 368 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 369 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 370 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 371 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 372 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 373 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 374 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 375 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 376 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 377 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 378 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 379 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 380 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 381 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 382 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 383 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 384 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 385 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 386 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 387 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 388 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 389 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 390 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 391 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 392 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
