# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-21.md)

*最后自动更新时间: 2026-10-21 10:09:46*
## 1. 《模拟城市：审批篇》

**原文标题**: SimCity, but with Permits

**原文链接**: [https://permit.petercai.com/](https://permit.petercai.com/)

本文以经典城建游戏《模拟城市》为引，探讨城市治理中"许可证"背后的利益博弈逻辑。核心观点在于：任何城市改进都会不可避免地制造新的反对力量——新建住宅压低租金、激怒业主；发展工业虽带来就业却产生污染；改善交通吸引开发，而开发又催生新的冲突群体。由此形成恶性循环：每解决一个问题，就催生出一批新的不满与愤怒的投票群体。文章揭示，在《模拟城市》中加入审批机制，本质上是对真实城市规划中永恒零和博弈的模拟：没有一项政策能令所有人满意，每次决策都意味着部分群体获益、另一群体受损。"许可"制度正是这种多方博弈的制度化表达，城市治理者始终在相互矛盾的诉求间艰难取舍。

---

## 2. 联邦调查人员怀疑勒索谈判人员运营ShinyHunters勒索网站

**原文标题**: Feds suspect ransom negotiator ran ShinyHunters extortion site

**原文链接**: [https://krebsonsecurity.com/2026/10/feds-suspect-ransom-negotiator-ran-shinyhunters-extortion-site/](https://krebsonsecurity.com/2026/10/feds-suspect-ransom-negotiator-ran-shinyhunters-extortion-site/)

美国联邦调查人员在追查ShinyHunters黑客组织时发现，两家勒索软件谈判公司高层与该组织关系异常密切。加拿大高管Dubrovsky已被FBI逮捕，一名美国知名咨询公司（超千名合伙人）的执行高层则涉嫌协助运营勒索网站shinywire.com，但尚未被起诉。

ShinyHunters自2019年起实施数十起重大数据泄露，今年已勒索超7000万美元。其控制权近期移交至约旦少年"Rey"，后者已被拘押并配合调查。9月，该组织攻破FBI招聘网站，窃取员工医疗及身份等敏感数据，促使FBI加速追捕。荷兰方面逮捕核心成员Van der Stap后，其Signal通讯记录成为关键证据，揭示其与多起未遂雇凶杀人案的关联。

文章还揭示了勒索谈判行业的利益冲突：部分公司按赎金比例收费，客观上激励攻击者提高要价，损害受害者利益。Coveware等公司长期警告受害者勿向ShinyHunters付款，但该组织成员对此展开报复威胁，FBI亦发布同类警示。专家指出，赎金支付后无法验证数据是否真正删除，受害者仍面临二次勒索风险。

---

## 3. Voxtral 3：Mistral 实时语音智能体模型与开发套件

**原文标题**: Voxtral 3

**原文链接**: [https://mistral.ai/news/voxtral-3/](https://mistral.ai/news/voxtral-3/)

Mistral 发布 Voxtral 3，一套涵盖语音转文字、文字转语音及实时语音代理 SDK 的模型家族，面向呼叫中心、虚拟助手等场景。转写方面，Voxtral Small Transcribe 3 支持 50 余种语言，在 FLEURS 等基准上超越 Whisper、Scribe v2 等竞品，兼具说话人分离与上下文偏置能力，实时延迟低于 500 毫秒。合成方面，Voxtral Mini TTS 3 覆盖 35 种语言、50 余种方言，可依据对话语境自动调节情感、语速与重音，定价仅每百万字符 13 美元，性价比优于 ElevenLabs 等同类产品；其 Pro Voice 功能仅需 30 分钟音频即可克隆说话人独特音色与情感风格。核心亮点在于实时语音代理 SDK，将"倾听—推理—调用工具—回应"整合为端到端流水线，支持多步骤业务操作，如示例中代用户完成皮肤科预约。模型支持欧盟托管 API 或私有化部署，保障数据主权，用户可自主控制音频处理与留存策略。

---

## 4. 谷歌开源 TorchTPU：面向 TPU 的原生 PyTorch 后端

**原文标题**: Google open-sources TorchTPU, a native PyTorch back end for TPUs

**原文链接**: [https://github.com/google-pytorch/torch_tpu](https://github.com/google-pytorch/torch_tpu)

谷歌开源了 TorchTPU 项目，为 PyTorch 提供原生 TPU（张量处理器）后端，使用户无需额外框架即可在 TPU 上运行和优化 PyTorch 模型。项目核心特性包括：为多种 PyTorch 操作实现自定义 ATen kernel；基于 XLA 的编译缓存以优化执行效率；支持数据并行与张量并行的分布式训练；提供 Llama、Qwen、ResNet、DLRM、minGPT、UNet 等模型的训练与推理示例；可与 torch.compile() 集成以实现图模式执行；并附带调试与性能基准测试工具。项目要求 Python 3.11 及以上，支持通过 pip 安装预发布版本（0.2.0）或使用 Bazel 从源码构建，构建时需注意指定 --config=wheel_common 以避免重复静态注册问题，并通过 --extra-index-url 安装 CPU 版 torch 而非 CUDA 版。文档采用 Marimo 交互式笔记本形式，需搭配 TPU VM（推荐 v6e 实例）使用。项目采用 Bazel 进行依赖管理，推荐开发者使用 VSCode clangd 插件辅助 C++ 代码导航。该项目采用 Apache 2.0 许可证开放，欢迎社区贡献。

---

## 5. 另一场流行病：试图戒除苯二氮卓类药物

**原文标题**: The Other Epidemic: Trying to get off benzodiazepines

**原文链接**: [https://www.thebeliever.net/the-other-epidemic/](https://www.thebeliever.net/the-other-epidemic/)

无法访问该文章链接

---

## 6. 学者有责任捍卫维基百科等开放知识体系

**原文标题**: Academics have a duty to defend open knowledge systems like Wikipedia

**原文链接**: [https://blogs.lse.ac.uk/impactofsocialsciences/2026/10/19/academics-have-a-duty-to-defend-open-knowledge-systems-like-wikipedia/](https://blogs.lse.ac.uk/impactofsocialsciences/2026/10/19/academics-have-a-duty-to-defend-open-knowledge-systems-like-wikipedia/)

无法访问该文章链接

---

## 7. 我该教儿子什么？

**原文标题**: What shall I teach my son?

**原文链接**: [https://stevekrouse.com/ends](https://stevekrouse.com/ends)

一位程序员兼准父亲在AGI时代深感编程技能贬值，困惑于"该教儿子什么"。他重读尼尔·波兹曼1995年的《教育的终结》，获得深刻共鸣。文章援引爱迪生等人曾预言技术将取代教师和学校，但这些预言从未应验——学校凭借Lindy效应顽强存续至今。作者梳理了教育的多重目的：成为好人、合格公民、谋生手段、改善世界、掌握基础知识。他曾将教育核心概括为"善用资源解决问题的能力"，然而AI代理已完美实现这一目标。当AI削弱了"经济价值"这一最客观的教育标尺，教育便失去了锚点。文章随即转向波兹曼提出的新方向：地球共同体意识、对文明的好奇与担当、创造塑造人类自身的工具与叙事。作者深受"媒介即信息"及阿尔菲·科恩"与孩子共同行动而非施加于孩子"的理念影响，最终决定：与其替孩子预设教育的终点，不如坦诚相告，与孩子一同探索意义本身。

---

## 8. SlopCodeBench 2026年10月更新——Astra总榜夺冠，高推理强度反成累赘

**原文标题**: SlopCodeBench 10/2026 – Opus 5.5, Astra wins overall, xhigh considered harmful

**原文链接**: [https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/benchmarking-new-models-on-slop-code-bench.md](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/benchmarking-new-models-on-slop-code-bench.md)

摘要：SlopCodeBench于2026年10月发布Q4测评更新，该基准模拟真实软件开发中需求逐步演变的场景，对编程代理的代码维护能力进行分阶段、分检查点评估。本轮测试36道题、196个检查点，涵盖Opus 5.5、GPT-6 Astra/SOL、Fable 5.1、GLM 5.3等前沿模型。GPT-6 Astra以16.3%的严格通过率（全测试含回归测试均通过）登顶，较5月的14.8%仅提升1.5个百分点，进步缓慢。核心通过率（仅主功能测试）则在65%–74%之间，说明模型能完成新需求却难以保证旧功能不退化。值得注意的是，高推理强度（XHigh）并未带来稳定收益：Opus 5.5在Medium模式下严格通过数（28）反而高于XHigh（25），且成本高出4.22倍；Astra是唯一提升者。成本方面，各方案从178美元到1,550美元不等，差距悬殊。代码质量层面，各模型仍残留大量临时文件和冗余代码，Opus XHigh的"Slop占比"最低（77.75%），但其严格通过数仍不及自身Medium模式。作者总结：行业对代码库的长期维护能力确在改善，但远未达到外界预期的速度，"维持系统运转"仍是长期课题。

---

## 9. 逆势巧字

**原文标题**: Good type against all odds

**原文链接**: [https://unsung.aresluna.org/good-type-against-all-odds/](https://unsung.aresluna.org/good-type-against-all-odds/)

本文围绕排版中"逆势而巧"的细节展开。作者首先以某逐行刷新显示设备为例，说明文字因刷新机制（类似摄影中的滚动快门）而自然向右倾斜，并指出本可反向设计——向右滚动或自底向上刷新——使文字向左倾斜。英语中的阅读方向与斜体向右倾斜皆为约定俗成，并无天然优劣，借此强调：在设计的每个岔路口选对方向，有时便能"免费"获得精妙效果。随后，文章列举一系列令人惊喜的排版实例：利用5×7像素字体拼出火车车厢与体育场图标；精巧的小写字母；巧妙的装饰填白；Gorton品牌塑料件上通过去除行高形成的垂直连字；以斜体替代下划线来强调"NOT"；从简单下划线到三维立体下划线的创意演进；老式排字机上的疑似彩蛋；以及键盘上令人意外的连字与旧式缩略。作者认为这些细节或出于匠心，或纯属巧合，是否算"工艺"见仁见智，但都值得一看，呼应标题"在险阻中成就好字"的主旨——真正的巧思，往往藏在那些最不经意的地方。

---

## 10. 苹果破坏iPad一项关键的投屏演示功能

**原文标题**: Apple broke an essential presentation feature of iPads

**原文链接**: [https://teddysvoronos.com/2026-10-19-apple-broke-an-essential-presentation-feature-of-ipads/](https://teddysvoronos.com/2026-10-19-apple-broke-an-essential-presentation-feature-of-ipads/)

摘要：一位教育者在博客中反映，iPadOS 27 严重破坏了 AirPlay 投屏时的多窗口演示体验。该作者依赖 iPad 通过 AirPlay 将手写讲义投射到教室大屏，同时借助其他窗口操控 Mac 上的 PPT、查看备课笔记与点名信息、隐藏投票结果等。iPadOS 27 引入了致命回归：投屏过程中点击非演示窗口（无论是否开启 Stage Manager），外部屏幕会立即切换为显示整个 iPad 桌面，导致学生看到本应保密的点名记录和未公布的投票结果，频繁闪烁的窗口也严重干扰课堂。各应用表现不一：GoodNotes 切回应用可恢复，Keynote 直接退出演示，PowerPoint 则需重启。作者认为 iPadOS 26 的切换机制虽不直观，但远没有当前版本糟糕，并建议处于演示模式的 App 应始终优先控制外部显示，直至演示结束或应用退出。自9月起，作者已在 Mac Power Users 节目上呼吁关注，但截至最新测试版仍未修复。他已提交 Apple 反馈（编号 FB23615646），呼吁受影响用户跟进反馈或分享变通方案，并表示在问题修复前无法推荐该系统的 iPad 用于教学与演示。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 2 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 3 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 4 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 5 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 6 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 7 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 8 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 9 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 10 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 11 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 12 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 13 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 14 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 15 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 16 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 17 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 18 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 19 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 20 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 21 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 22 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 23 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 24 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 25 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 26 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 27 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 28 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 29 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 30 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 31 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 32 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 33 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 34 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 35 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 36 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 37 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 38 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 39 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 40 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 41 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 42 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 43 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 44 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 45 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 46 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 47 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 48 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 49 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 50 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 51 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 52 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 53 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 54 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 55 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 56 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 57 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 58 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 59 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 60 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 61 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 62 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 63 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 64 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 65 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 66 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 67 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 68 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 69 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 70 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 71 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 72 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 73 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 74 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 75 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 76 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 77 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 78 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 79 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 80 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 81 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 82 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 83 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 84 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 85 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 86 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 87 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 88 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 89 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 90 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 91 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 92 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 93 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 94 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 95 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 96 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 97 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 98 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 99 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 100 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 101 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 102 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 103 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 104 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 105 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 106 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 107 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 108 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 109 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 110 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 111 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 112 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 113 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 114 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 115 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 116 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 117 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 118 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 119 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 120 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 121 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 122 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 123 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 124 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 125 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 126 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 127 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 128 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 129 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 130 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 131 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 132 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 133 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 134 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 135 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 136 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 137 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 138 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 139 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 140 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 141 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 142 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 143 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 144 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 145 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 146 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 147 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 148 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 149 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 150 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 151 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 152 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 153 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 154 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 155 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 156 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 157 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 158 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 159 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 160 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 161 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 162 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 163 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 164 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 165 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 166 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 167 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 168 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 169 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 170 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 171 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 172 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 173 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 174 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 175 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 176 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 177 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 178 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 179 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 180 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 181 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 182 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 183 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 184 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 185 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 186 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 187 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 188 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 189 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 190 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 191 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 192 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 193 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 194 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 195 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 196 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 197 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 198 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 199 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 200 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 201 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 202 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 203 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 204 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 205 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 206 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 207 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 208 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 209 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 210 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 211 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 212 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 213 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 214 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 215 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 216 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 217 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 218 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 219 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 220 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 221 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 222 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 223 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 224 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 225 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 226 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 227 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 228 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 229 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 230 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 231 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 232 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 233 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 234 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 235 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 236 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 237 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 238 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 239 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 240 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 241 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 242 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 243 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 244 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 245 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 246 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 247 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 248 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 249 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 250 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 251 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 252 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 253 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 254 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 255 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 256 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 257 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 258 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 259 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 260 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 261 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 262 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 263 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 264 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 265 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 266 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 267 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 268 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 269 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 270 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 271 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 272 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 273 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 274 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 275 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 276 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 277 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 278 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 279 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 280 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 281 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 282 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 283 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 284 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 285 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 286 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 287 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 288 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 289 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 290 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 291 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 292 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 293 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 294 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 295 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 296 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 297 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 298 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 299 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 300 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 301 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 302 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 303 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 304 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 305 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 306 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 307 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 308 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 309 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 310 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 311 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 312 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 313 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 314 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 315 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 316 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 317 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 318 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 319 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 320 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 321 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 322 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 323 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 324 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 325 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 326 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 327 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 328 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 329 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 330 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 331 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 332 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 333 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 334 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 335 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 336 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 337 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 338 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 339 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 340 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 341 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 342 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 343 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 344 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 345 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 346 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 347 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 348 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 349 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 350 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 351 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 352 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 353 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 354 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 355 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 356 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 357 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 358 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 359 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 360 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 361 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 362 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 363 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 364 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 365 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 366 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 367 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 368 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 369 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 370 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 371 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 372 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 373 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 374 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 375 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 376 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 377 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 378 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 379 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 380 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 381 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 382 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 383 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 384 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 385 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 386 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 387 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 388 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 389 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 390 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 391 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 392 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 393 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 394 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 395 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 396 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 397 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 398 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 399 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 400 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 401 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 402 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 403 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 404 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 405 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 406 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 407 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 408 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 409 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 410 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 411 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 412 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 413 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 414 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 415 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 416 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 417 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 418 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 419 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 420 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 421 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 422 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 423 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 424 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 425 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 426 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 427 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 428 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 429 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 430 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 431 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 432 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 433 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 434 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 435 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 436 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 437 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 438 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 439 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 440 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 441 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 442 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 443 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 444 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 445 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 446 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 447 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 448 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 449 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 450 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 451 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 452 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 453 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 454 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 455 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 456 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 457 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 458 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 459 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 460 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 461 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 462 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 463 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 464 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 465 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 466 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 467 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 468 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 469 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 470 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 471 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 472 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 473 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 474 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 475 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 476 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 477 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 478 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 479 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 480 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 481 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 482 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 483 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 484 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 485 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 486 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 487 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 488 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 489 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 490 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 491 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 492 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 493 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 494 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 495 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 496 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 497 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 498 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 499 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 500 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 501 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 502 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 503 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 504 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 505 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 506 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 507 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 508 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 509 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 510 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 511 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 512 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 513 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 514 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 515 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 516 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 517 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 518 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 519 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 520 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 521 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 522 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 523 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 524 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 525 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 526 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 527 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 528 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 529 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 530 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 531 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 532 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 533 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 534 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 535 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 536 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 537 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 538 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 539 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 540 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 541 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 542 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 543 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 544 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 545 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 546 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 547 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 548 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 549 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 550 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 551 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 552 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 553 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 554 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 555 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 556 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 557 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 558 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 559 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 560 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 561 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 562 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 563 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 564 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 565 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 566 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 567 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 568 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 569 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 570 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 571 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 572 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 573 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 574 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 575 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 576 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
