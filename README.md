# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-27.md)

*最后自动更新时间: 2026-10-27 04:55:51*
## 1. 类型服务器协议

**原文标题**: Type Server Protocol

**原文链接**: [https://github.com/microsoft/pylance-release/blob/main/docs/tsp/type-server-protocol.md](https://github.com/microsoft/pylance-release/blob/main/docs/tsp/type-server-protocol.md)

类型服务器协议（TSP）是基于 JSON-RPC 的通信协议，用于向类型服务器查询 Python 类型分析数据，涵盖协议版本、快照、搜索路径、导入解析及类型查询等请求。TSP 复用 LSP 的数据格式与约定，方法统一使用 typeServer/ 前缀。连接模型方面，客户端通过主 JSON-RPC 连接（stdio 或 Node IPC）完成初始化与状态同步；可选地，经能力协商开启多连接模式，在主连接外打开仅用于只读 TSP 请求的 IPC 通道，以避免阻塞主连接。协议采用语义化版本（0.x 阶段次版本可能破坏兼容）。核心机制包括：快照以非负整数标识分析时点视图，状态变更时递增，过期快照请求返回 -32802 错误以便客户端重试；类型查询分 computed（流推断）、declared（源码声明）、expected（上下文期望）三种；类型对象为带 kind 判别器的 JSON 标签对象，支持内置、函数、类、联合、模块等十种类型，并通过 TypeReference 实现去重与循环引用。主连接独占所有状态变更流量，额外连接仅允许协议规定的只读 TSP 消息，须拒绝 LSP 流量与状态变更通知。

---

## 2. Sebastian Raschka 从零构建推理模型的编程视频课程

**原文标题**: Sebastian Raschka's from-scratch video course on building reasoning models

**原文链接**: [https://magazine.sebastianraschka.com/p/building-reasoning-models](https://magazine.sebastianraschka.com/p/building-reasoning-models)

Sebastian Raschka 发布了一套共 8 个视频、逾 11 小时的编程课程，使用 Python 和 PyTorch 从零构建推理模型（Reasoning Models）。课程以预训练的 Qwen3 0.6B 模型为起点，依次涵盖：环境搭建与基础模型加载、文本生成与 KV 缓存、数学验证器构建、推理时扩展（温度采样、自一致性、评分与自我修正）、基于可验证奖励的强化学习（GRPO/RLVR）及其训练细节（策略裁剪、KL 散度、格式化奖励等），以及利用 DeepSeek R1 等教师模型进行知识蒸馏。所有实验均在 MATH-500 数据集上评估。课程配套同名书籍《Build a Reasoning Model (From Scratch)》，建议按"阅读章节→观看视频→完成练习"路径深入学习。作者还简述了推理模型与 AI Agent 的关系：推理模型是传统 LLM 的强化升级，Agent 框架则在其外层提供工具调用与上下文管理能力。该课程可作为其前作《从零构建大语言模型》的续篇，也可独立学习，前提仅需掌握 Python 和 PyTorch 基础，后期训练实验建议配备 GPU。

---

## 3. 在Windows 11上仍可运行的最古老图形界面应用

**原文标题**: Oldest GUI application that still runs on Windows 11

**原文链接**: [https://blog.enlyth.com/posts/oldest-windows-gui-app-win-11/](https://blog.enlyth.com/posts/oldest-windows-gui-app-win-11/)

作者探索了一个有趣的问题：在Windows 11上无需修改或模拟即可运行的最古老图形界面应用是什么？由于64位Windows已移除NTVDM，16位程序无法运行，因此需从早期NT时代寻找。最初发现1993年2月Win32s中的FREECELL.EXE可在Win 11上直接运行，已有33年8个月历史。但作者不满足于止步于此，继续深入探索，发现1991年的早期NT 3.1预发布版因PE格式不兼容或cdecl与stdcall调用约定差异导致堆栈溢出而无法运行。最终在Build 347中找到1992年11月的CDPLAYER.EXE，该程序因使用系统自带的crtdll.dll而规避了C运行时兼容性问题，配合虚拟光驱DLL甚至能播放音频，距今近34年。此外，若借助otvdm模拟器（作者称之为"作弊"），还能运行1985年Windows 1.01中的REVERSI.EXE，将纪录推回近40年前。

---

## 4. CSS-Tricks 迎来新东家

**原文标题**: CSS-Tricks has a new owner

**原文链接**: [https://css-tricks.com/css-tricks-has-a-new-owner/](https://css-tricks.com/css-tricks-has-a-new-owner/)

CSS-Tricks 是知名前端网站，2007 年由 Chris Coyier 创建，2022 年被 DigitalOcean 收购。如今，一位在该站工作 12 年的团队成员于 2026 年独立收购网站，使其重归独立，并以此为全职事业。新东家规划多项变革：恢复展示广告、赞助文章等独立广告模式；开发 HTML/CSS 入门课程，回应前端领域技能缺口，让网站更包容不同学习阶段的读者；恢复已停许久的新闻通讯。文章发布频率将降至每周约 1–2 篇，客座投稿通道重启但需排队。作者将自身定位为"编辑"，重心在于发掘和培养其他作者的声音、构建社区文化，而非亲自撰稿。读者可通过加入 Discord 会员社区、购买商店商品或广告位等方式支持运营，转发、订阅等也属有效助力。作者坦言转型充满挑战，语气坦诚而期待，并邀请读者在评论区畅所欲言。

---

## 5. GPT-6.1 泰拉

**原文标题**: GPT-6.1 Terra

**原文链接**: [https://openai.com/index/introducing-gpt-6-1-terra/](https://openai.com/index/introducing-gpt-6-1-terra/)

无法访问该文章链接。

---

## 6. 尼采式调试器——以追问锻造开发者

**原文标题**: Nietzschian Debugger

**原文链接**: [https://github.com/DilawarShafiq/nietzschian-debugger](https://github.com/DilawarShafiq/nietzschian-debugger)

尼采式调试器（Nietzschian Debugger）是一款反常识的AI辅助调试工具，核心理念是"绝不给答案，只提问题"。开发者粘贴bug后，工具不会提供修复方案，而是通过层层追问挑战其假设、迫使审视被忽略的证据、拆解薄弱推理，直至开发者自行抵达顿悟时刻。工具设三档强度：苏格拉底模式（温和引导，适合初学者）、尼采模式（直接对抗，默认）、查拉图斯特拉模式（极度严苛，面向资深开发者）。技术上支持读取本地真实代码文件，融合尼采、塞内加、孙子等不同哲学风格进行情境化追问，并配有成长评分条形图与本地会话记录，便于追踪调试能力变化。安装方式为npx nietzschian-debugger（npm）或pip安装Python源码，需自备Anthropic API密钥，支持Node.js 20+或Python 3.10+。目标用户为拒绝"复制粘贴即交付"、渴望通过挣扎建立真正调试直觉的各级开发者及工程管理者。项目基于Click与Rich构建CLI界面，含121项测试，采用MIT协议开源。

---

## 7. 来自未来的人：冯·诺依曼的抽象艺术

**原文标题**: A Man from the Future: Why Johnny Can't Stop Abstracting

**原文链接**: [http://muratbuffalo.blogspot.com/2026/10/the-man-from-future-why-johnny-cant.html](http://muratbuffalo.blogspot.com/2026/10/the-man-from-future-why-johnny-cant.html)

本文以传记《未来之人》为引，回顾约翰·冯·诺依曼（1903–1957）短暂而辉煌的一生，提出核心论点：他的超能力并非泛泛的"思考"，而是"抽象的艺术"——将复杂问题还原为最简对象与公理，再离去将定理留给后人。文章梳理其跨领域奠基贡献：在量子力学中证明矩阵力学与波力学等价，并以希尔伯特空间给出迄今最严谨的形式化；与摩根斯坦合著博弈论，推出期望效用公理化，奠定现代经济分析基石；提出存储程序计算机架构（EDVAC），并主动公开设计使其无法被专利垄断，堪称开源先驱；以冗余与多数表决证明可从不可靠部件构建任意可靠系统，开辟容错计算；在自复制自动机中分离"指令"与"数据"的双重角色，比沃森和克里克早四年从纯逻辑推导出生物复制的必要结构。早年章节描绘布达佩斯犹太天才群（"火星登陆假说"）、父亲将晚餐变为学术研讨、以多语言训练为家庭备退路等细节。文章亦提及他与纳什在博弈论范式上的分歧及其冷战鹰派形象的讽刺性反差，最终以遗作《计算机与大脑》收束。

---

## 8. 美国环保署悄然终止网络档案

**原文标题**: The EPA Is Quietly Killing Its Web Archive

**原文链接**: [https://www.motherjones.com/environment/2026/10/epa-online-archive-deletion-zeldin-camp-lejeune-trump-clean-power/](https://www.motherjones.com/environment/2026/10/epa-online-archive-deletion-zeldin-camp-lejeune-trump-clean-power/)

美国环保署（EPA）近日低调宣布，计划于2026年底关闭其在线网络档案，数万份可公开获取的环境资源面临永久消失。该档案收录自1990年代以来的环境报告、政策文件及监管记录，是研究人员、立法者和公众进行"民主监督"的关键工具。EDGI联合创始人称这些信息"不可替代"。

EPA此前曾两度尝试关闭：2022年以每年约200万美元维护费为由计划停用，遭环保组织、历史学家和图书馆员多方反对后推迟；2023年改为"退役"状态并无限期延长。如今在特朗普第二任期大幅削减政府透明措施的背景下，EPA再次敲定关闭日期。

该档案曾记录布什"清天计划"、奥巴马"清洁电力计划"等重大政策节点，并在特朗普首任大规模删除气候网页时关键性地保留了相关内容；1989年海军陆战队基地水污染事件的调查文件也存于此。

自由新闻基金会专家警告，此举将在公众对政府信任降至历史低点时进一步损害政府透明度，迫使公众通过繁琐的信息自由法申请查阅本应公开的文件。EPA称可用"快照集合"替代，但鉴于联邦资金与人员遭大幅削减，档案能否完整保存实难预期。EPA未就此事回应置评。

---

## 9. Anthropic首次公开募股注册申报书

**原文标题**: Anthropic S-1

**原文链接**: [https://www.sec.gov/Archives/edgar/data/2130357/000162828026067168/anthropicpbc-sx1.htm](https://www.sec.gov/Archives/edgar/data/2130357/000162828026067168/anthropicpbc-sx1.htm)

无法访问该文章链接。

---

## 10. SIMD-accelerated computer vision on a $2 microcontroller

**原文标题**: SIMD-accelerated computer vision on a $2 microcontroller

**原文链接**: [https://shraiwi.com/blog/simd-fast-esp32s3/](https://shraiwi.com/blog/simd-fast-esp32s3/)

文章之前已经处理过

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 2 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 3 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 4 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 5 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 6 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 7 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 8 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 9 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 10 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 11 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 12 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 13 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 14 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 15 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 16 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 17 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 18 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 19 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 20 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 21 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 22 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 23 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 24 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 25 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 26 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 27 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 28 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 29 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 30 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 31 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 32 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 33 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 34 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 35 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 36 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 37 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 38 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 39 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 40 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 41 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 42 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 43 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 44 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 45 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 46 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 47 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 48 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 49 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 50 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 51 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 52 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 53 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 54 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 55 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 56 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 57 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 58 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 59 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 60 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 61 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 62 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 63 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 64 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 65 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 66 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 67 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 68 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 69 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 70 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 71 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 72 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 73 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 74 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 75 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 76 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 77 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 78 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 79 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 80 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 81 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 82 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 83 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 84 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 85 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 86 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 87 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 88 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 89 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 90 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 91 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 92 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 93 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 94 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 95 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 96 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 97 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 98 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 99 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 100 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 101 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 102 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 103 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 104 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 105 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 106 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 107 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 108 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 109 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 110 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 111 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 112 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 113 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 114 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 115 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 116 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 117 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 118 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 119 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 120 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 121 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 122 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 123 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 124 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 125 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 126 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 127 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 128 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 129 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 130 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 131 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 132 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 133 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 134 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 135 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 136 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 137 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 138 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 139 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 140 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 141 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 142 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 143 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 144 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 145 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 146 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 147 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 148 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 149 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 150 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 151 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 152 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 153 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 154 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 155 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 156 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 157 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 158 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 159 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 160 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 161 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 162 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 163 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 164 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 165 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 166 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 167 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 168 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 169 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 170 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 171 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 172 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 173 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 174 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 175 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 176 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 177 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 178 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 179 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 180 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 181 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 182 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 183 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 184 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 185 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 186 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 187 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 188 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 189 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 190 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 191 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 192 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 193 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 194 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 195 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 196 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 197 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 198 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 199 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 200 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 201 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 202 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 203 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 204 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 205 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 206 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 207 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 208 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 209 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 210 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 211 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 212 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 213 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 214 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 215 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 216 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 217 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 218 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 219 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 220 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 221 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 222 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 223 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 224 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 225 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 226 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 227 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 228 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 229 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 230 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 231 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 232 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 233 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 234 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 235 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 236 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 237 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 238 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 239 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 240 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 241 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 242 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 243 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 244 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 245 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 246 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 247 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 248 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 249 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 250 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 251 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 252 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 253 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 254 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 255 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 256 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 257 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 258 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 259 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 260 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 261 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 262 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 263 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 264 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 265 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 266 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 267 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 268 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 269 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 270 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 271 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 272 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 273 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 274 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 275 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 276 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 277 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 278 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 279 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 280 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 281 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 282 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 283 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 284 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 285 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 286 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 287 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 288 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 289 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 290 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 291 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 292 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 293 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 294 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 295 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 296 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 297 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 298 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 299 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 300 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 301 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 302 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 303 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 304 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 305 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 306 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 307 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 308 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 309 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 310 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 311 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 312 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 313 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 314 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 315 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 316 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 317 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 318 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 319 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 320 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 321 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 322 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 323 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 324 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 325 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 326 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 327 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 328 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 329 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 330 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 331 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 332 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 333 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 334 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 335 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 336 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 337 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 338 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 339 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 340 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 341 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 342 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 343 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 344 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 345 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 346 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 347 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 348 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 349 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 350 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 351 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 352 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 353 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 354 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 355 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 356 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 357 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 358 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 359 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 360 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 361 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 362 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 363 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 364 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 365 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 366 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 367 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 368 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 369 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 370 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 371 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 372 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 373 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 374 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 375 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 376 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 377 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 378 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 379 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 380 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 381 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 382 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 383 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 384 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 385 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 386 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 387 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 388 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 389 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 390 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 391 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 392 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 393 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 394 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 395 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 396 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 397 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 398 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 399 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 400 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 401 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 402 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 403 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 404 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 405 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 406 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 407 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 408 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 409 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 410 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 411 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 412 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 413 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 414 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 415 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 416 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 417 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 418 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 419 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 420 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 421 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 422 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 423 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 424 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 425 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 426 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 427 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 428 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 429 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 430 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 431 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 432 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 433 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 434 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 435 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 436 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 437 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 438 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 439 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 440 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 441 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 442 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 443 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 444 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 445 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 446 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 447 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 448 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 449 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 450 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 451 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 452 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 453 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 454 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 455 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 456 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 457 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 458 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 459 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 460 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 461 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 462 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 463 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 464 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 465 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 466 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 467 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 468 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 469 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 470 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 471 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 472 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 473 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 474 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 475 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 476 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 477 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 478 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 479 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 480 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 481 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 482 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 483 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 484 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 485 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 486 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 487 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 488 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 489 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 490 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 491 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 492 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 493 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 494 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 495 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 496 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 497 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 498 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 499 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 500 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 501 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 502 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 503 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 504 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 505 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 506 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 507 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 508 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 509 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 510 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 511 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 512 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 513 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 514 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 515 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 516 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 517 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 518 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 519 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 520 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 521 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 522 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 523 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 524 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 525 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 526 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 527 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 528 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 529 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 530 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 531 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 532 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 533 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 534 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 535 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 536 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 537 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 538 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 539 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 540 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 541 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 542 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 543 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 544 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 545 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 546 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 547 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 548 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 549 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 550 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 551 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 552 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 553 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 554 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 555 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 556 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 557 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 558 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 559 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 560 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 561 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 562 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 563 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 564 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 565 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 566 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 567 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 568 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 569 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 570 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 571 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 572 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 573 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 574 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 575 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 576 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 577 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 578 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 579 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 580 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 581 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 582 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
