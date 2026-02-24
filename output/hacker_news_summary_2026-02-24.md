# Hacker News 热门文章摘要 (2026-02-24)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 我正在帮我的狗编写游戏代码。

**原文标题**: I'm helping my dog vibe code games

**原文链接**: [https://www.calebleak.com/posts/dog-game/](https://www.calebleak.com/posts/dog-game/)

本文详述了一个项目，作者在其中训练自己的狗狗Momo利用AI“编写”电子游戏。系统通过将狗狗随机的键盘敲击解读为给Claude Code的神秘游戏设计指令，从而在Godot中生成可玩的游戏。

关键组件包括：用于过滤和路由按键的自定义设置（树莓派上的DogKeyboard应用）、用于强化训练的自动零食投喂器，以及增强工具——允许Claude通过截图和模拟输入来测试并调试自己的创作。

作者通过迭代式的提示工程优化流程，并设置防护机制以确保游戏基本功能。虽然早期成果参差不齐，但随着工具和AI模型的改进，最终生成了多种功能简单的游戏。该项目展示了一个富有创意、自动化的“人类离环”系统，将动物训练与AI辅助开发相融合。

---

## 2. 我于1978年十岁时向迪士尼乐园提议建造过山车。

**原文标题**: I pitched a roller coaster to Disneyland at age 10 in 1978

**原文链接**: [https://wordglyph.xyz/one-piece-at-a-time](https://wordglyph.xyz/one-piece-at-a-time)

1978年，10岁的凯文·格利克曼受迪士尼乐园太空山过山车的启发，设计了一款包含四个环道的过山车，并将其命名为“四重回环”。他用轻木和手工弯曲的塑料环制作了精细模型，随后将宝丽来照片和阐述创意的信件寄给了迪士尼乐园。数月后，他收到了来自WED企业（迪士尼幻想工程部门）的个性化回信，由汤姆·菲茨杰拉德签名，信中感谢了他的投稿，并称赞其设计“堪称一场冒险”。

这封礼貌的拒绝信并未让凯文气馁，反而因获得认可而欣喜不已。这份早期的鼓励培养了他一生面对拒绝时的韧性。他持续投身发明，后来改造了魔方并创造了获专利的桌游。成年后，他成为一名演员——这也是个充满拒绝的领域——但他始终保持着十岁时的创造精神。这段经历教会他“一次只专注一步”的坚持，这种心态至今仍指引着他前行。

---

## 3. HuggingFace 代理技能

**原文标题**: HuggingFace Agent Skills

**原文链接**: [https://github.com/huggingface/skills](https://github.com/huggingface/skills)

HuggingFace Agent Skills是针对AI/ML工作流程（如数据集创建、模型训练和评估）的标准化、自包含任务定义。它们以文件夹形式打包，内含包含说明和脚本的`SKILL.md`文件，使其兼容OpenAI Codex、Anthropic Claude、Google Gemini和Cursor等主流编程智能体工具。

该资源库包含多个开箱即用的技能，例如执行Hugging Face CLI操作、管理数据集、运行评估、训练模型和发布研究论文。安装后，用户可在指令中通过名称引导编程智能体使用特定技能，智能体会自动加载相关指导。

贡献者可通过复制现有文件夹、更新其`SKILL.md`文件并运行提供的脚本重新生成元数据，来创建或自定义技能。所有技能均列于便于发现的资源市场文件中，并配有面向人类用户的定制化描述。

---

## 4. 附近眼镜

**原文标题**: Nearby Glasses

**原文链接**: [https://github.com/yjeanrenaud/yj_nearbyglasses](https://github.com/yjeanrenaud/yj_nearbyglasses)

**附近眼镜**是一款免费开源的Android应用，通过扫描蓝牙低功耗（BLE）信号来检测附近的智能眼镜。该应用利用BLE广播数据包中的制造商ID识别设备，主要针对Meta、Luxottica（雷朋）和Snapchat等公司的产品。

当检测到这些制造商的设备处于可配置的信号强度范围内（默认-75 dBm，在开阔环境中约10-15米）时，应用会通过通知提醒用户。开发者强调可能出现误报，因为相同制造商ID也用于VR头显等其他产品，且检测结果并非绝对准确。建议用户谨慎判断，勿完全依赖应用提醒。

主要功能包括可调节的扫描设置、可选调试日志以及维持扫描的前台服务。该应用不收集用户数据，无广告或遥测功能，日志仅在使用者导出时本地存储。

开发者因担忧智能眼镜的隐私风险（如隐蔽录制和人脸识别）而创建此工具。未来可能增加更多制造商支持、深化蓝牙数据包分析功能并推出iOS版本。该应用采用PolyForm非商业许可协议。

---

## 5. 我认为从iPhone连接Mac终端，WebRTC比SSH更好用。

**原文标题**: I think WebRTC is better than SSH-ing for connecting to Mac terminal from iPhone

**原文链接**: [https://macky.dev](https://macky.dev)

本文推广了一款基于WebRTC的应用，支持从iPhone安全访问Mac终端，并论证其优于SSH。

核心论点是WebRTC提供了更安全、更用户友好的连接。安全性通过四层机制凸显：端到端加密传输（DTLS-SRTP）、结合主密码的双重身份验证、设备白名单机制，以及采用隐私优先设计、从不接触终端数据的信令服务器。

该应用提供原生Shell体验（Zsh/Bash），并集成了AI编程助手（Claude Code、Codex）。它强调易用性，无需复杂配置。

定价包括免费的“基础版”（单次会话限时5分钟）和一次性付费29美元的“专业版”（支持无限会话、多设备、连接日志及后台持续连接）。

主机端需macOS 15+系统，远程端需iOS 18+系统。用户评价称赞其连接即时、操作便捷，并能替代多种工具。

---

## 6. 国税局针对Meta的策略开辟了企业税务战的新战线

**原文标题**: IRS Tactics Against Meta Open a New Front in the Corporate Tax Fight

**原文链接**: [https://www.nytimes.com/2026/02/24/business/irs-meta-corporate-taxes.html](https://www.nytimes.com/2026/02/24/business/irs-meta-corporate-taxes.html)

无法访问文章链接。

---

## 7. 致谷歌关于强制开发者注册以分发应用的公开信

**原文标题**: Open Letter to Google on Mandatory Developer Registration for App Distribution

**原文链接**: [https://keepandroidopen.org/open-letter/](https://keepandroidopen.org/open-letter/)

在一封日期为2026年2月24日的公开信中，一个由民间社会团体、非营利组织和科技公司组成的联盟强烈反对谷歌的新政策，该政策要求所有安卓应用开发者必须在谷歌进行集中注册，即使是在应用商店之外分发应用也不例外。

签署方认为，这种涉及费用和身份验证的强制注册从根本上破坏了安卓历史性的开放性。他们的主要担忧包括：
1.  将谷歌的审核控制权扩展到所有应用分发渠道。
2.  为小型开发者、开源项目、活动人士和人道主义组织设置了巨大的进入壁垒。
3.  通过建立全球开发者数据库，带来了严重的隐私和监控风险。
4.  存在任意执法和账户终止的风险，形成了一个单一故障点。
5.  具有反竞争影响，使谷歌能够掌握所有安卓开发的情报。
6.  与全球要求平台更加开放的监管趋势相悖。

公开信指出，现有的安卓安全措施（如沙盒机制、用户警告和Play Protect）已经足够，没有证据证明这种集中控制的合理性。它呼吁谷歌立即撤销该政策，进行透明对话，并承诺保持平台中立，同时警告称此举将威胁创新、竞争和数字主权。

---

## 8. 改造旧Kindle以显示公交车到站时间

**原文标题**: Hacking an old Kindle to display bus arrival times

**原文链接**: [https://www.mariannefeng.com/portfolio/kindle/](https://www.mariannefeng.com/portfolio/kindle/)

本文详细介绍了作者如何将一台旧的Kindle Touch改造成实时公交到站信息显示屏。整个过程包含五个主要步骤：越狱设备、安装KUAL启动器和MRPI安装器、设置SSH访问权限、创建用于生成定制图像的网页服务器，以及构建控制显示的KUAL应用程序。

服务器从新泽西公交的公共API获取公交数据，并使用`wkhtmltoimage`将格式化HTML转换为600x800像素的PNG图像，随后传输至Kindle。Kindle上的自定义脚本通过`curl`每分钟获取该图像，并用`eips`命令显示。该显示屏包含通过菜单键退出的功能，此操作会终止脚本并重启Kindle的常规界面。

作者指出两个持续存在的问题：长时间使用后的屏幕残影现象，以及约五天的电池续航。尽管如此，该项目仍是一个功能完备且经济实惠的商业电子墨水屏替代方案，成功实现了实时交通信息的展示。

---

## 9. Steel Bank Common Lisp

**原文标题**: Steel Bank Common Lisp

**原文链接**: [https://www.sbcl.org/](https://www.sbcl.org/)

Steel Bank Common Lisp（SBCL）是一款高性能、开源的ANSI Common Lisp编程语言编译器。它采用宽松许可证分发，不仅包含编译器和运行时系统，还提供了交互式开发环境，内置调试器、性能分析器和代码覆盖率分析器等工具。

SBCL支持跨平台运行，兼容的操作系统包括Linux、多种BSD变体、macOS、Solaris和Windows。截至本文撰写时，最新的稳定版本为2026年1月发布的2.6.1版。

完整的文档以HTML和PDF格式在线提供，源代码采用TexInfo格式维护。用户可通过项目的Launchpad缺陷数据库提交问题，或发送邮件至专用邮件列表获取技术支持。

---

## 10. 我们安装了一个单向旋转门以保安全。

**原文标题**: We installed a single turnstile to feel secure

**原文链接**: [https://idiallo.com/blog/installed-single-turnstile-for-security-theater](https://idiallo.com/blog/installed-single-turnstile-for-security-theater)

本文通过个人经历对比了“安全表演”与真正的安全。公司被收购后，推行了一系列高调的安全措施：所有门、电梯和停车场都安装了门禁读卡器，随后每栋大楼大堂增设了单向旋转闸机。这导致日常运作严重受阻，员工仅为了到达工位就需排队等候一个多小时。

身为软件工程师的作者将这种混乱与内部Jira管理工具中一个隐形却关键的安全漏洞进行对比：用户凭证以base64编码形式存储在cookie中，而非采用恰当的身份验证令牌。修复此漏洞耗费了一个月时间撰写文档和申请审批，且未获得任何认可。

旋转闸机尽管成本高昂且影响效率，却在公司邮件中被大肆宣扬，让管理层得以“显得”注重安全。与此同时，真正系统性的漏洞却被静默处理。核心论点是：真正的安全往往是隐形的工程基础，而“安全表演”则是可见的、应付检查的表面功夫，重形式而轻实质。

---

## 11. 用Prolog扩展C语言（1994）

**原文标题**: Extending C with Prolog (1994)

**原文链接**: [https://www.amzi.com/articles/irq_expert_system.htm](https://www.amzi.com/articles/irq_expert_system.htm)

基于《扩展C语言与Prolog（1994）》一文，以下是简明摘要：

该文章提出了一种将逻辑编程语言Prolog与命令式语言C结合以构建专家系统的方法。核心思想是在C应用程序中嵌入Prolog推理引擎，使C程序能够调用Prolog解决逻辑查询并返回结果。

主要动机在于结合两种语言的优势：C语言用于高效的低层系统任务（如示例中的硬件中断处理），而Prolog用于高层的符号推理和基于规则的知识表示。文章以个人计算机的中断请求（IRQ）冲突解决器为例，其中C语言处理硬件检测，Prolog则包含诊断冲突和提出解决方案的规则。

技术方法涉及将Prolog“外壳”编译并与C代码链接。随后，C程序可以初始化Prolog引擎、声明事实（如检测到的硬件设置）、调用Prolog目标（例如`diagnose`），并将结果绑定（诊断与修复方案）返回到C变量中以供显示或执行。

文章强调的主要优势包括关注点分离清晰、便于独立于应用程序代码维护和更新专家系统的知识库（Prolog规则），以及能够在传统C程序中实现复杂的推理能力。该文章为这种创建智能知识型系统的混合编程技术提供了实用指南。

---

## 12. 二极管——构建、编程与仿真硬件

**原文标题**: Diode – Build, program, and simulate hardware

**原文链接**: [https://www.withdiode.com/](https://www.withdiode.com/)

**Diode** 是一个在线平台，允许用户直接在网页浏览器中构建、编程和模拟电子硬件电路。它提供了一个虚拟工作坊环境，无需物理组件。

其核心功能是一个数字元件库——包括电阻、电容、晶体管（NPN 和 PNP）、LED、555 定时器集成电路和触控开关等——用户可以将这些元件连接起来创建电路。集成的仿真功能使用户能够实时测试和调试设计。

该平台的主要价值主张是通过将完整的电子工作坊体验带到网络上，使硬件原型设计变得便捷易用。它作为免费工具推出，鼓励用户注册并开始创作。首页还设有一个特色社区项目专区，暗示这是一个供灵感交流和学习的共享资源库。

---

## 13. Verge（YC S15）正在招聘计算生物学总监及人工智能科学家/工程师

**原文标题**: Verge (YC S15) Is Hiring a Director of Computational Biology and AI Scientists/Eng

**原文链接**: [https://jobs.ashbyhq.com/verge-genomics](https://jobs.ashbyhq.com/verge-genomics)

**Verge Genomics（YC S15）正在招聘计算生物学与人工智能领域的关键职位，以推动其人工智能驱动的药物发现平台发展。**

公司正在积极招募一名**计算生物学总监**及多名**人工智能科学家/工程师**。这些职位对Verge的使命至关重要：利用人类数据和人工智能，以比传统方法更快、更高成功率的方式开发针对ALS、帕金森病、阿尔茨海默病等复杂疾病的疗法。

**计算生物学总监**将领导团队构建并扩展计算模型，从Verge专有的全转录组人类疾病数据集中获取洞见。该职位需要深厚的基因组学、机器学习及团队领导专业能力。

**人工智能科学家/工程师**将负责开发并实施新型机器学习模型，重点是通过分析多模态生物数据来识别新的治疗靶点和生物标志物。

总体而言，该招聘信息凸显了Verge的发展势头及其核心战略：依托独特的人类数据平台和内部人工智能能力，变革药物发现流程。这些开放职位对扩展公司技术能力、推进创新疗法研发管线至关重要。

---

## 14. 三星升级再造承诺

**原文标题**: Samsung Upcycle Promise

**原文链接**: [https://www.xda-developers.com/samsung-promised-make-old-phones-useful-galaxy-upcycle/](https://www.xda-developers.com/samsung-promised-make-old-phones-useful-galaxy-upcycle/)

2017年，三星与iFixit合作宣布了雄心勃勃的"Galaxy升级再造"计划，承诺为旧款Galaxy手机解锁引导程序，并创建开源应用市场，让用户能将设备改造为智能家居传感器、游戏机或Linux电脑。然而，经过数年沉寂，三星在2021年推出了大幅缩水的"家庭版Galaxy升级再造"应用，仅提供基础声光检测功能，未开放引导程序解锁，且设备与地区支持极为有限。

文章批评三星背弃了最初愿景，很可能因为真正的升级再造计划与其销售新手机的核心业务相冲突。尽管如此，三星仍凭借这个简化版计划获得了可持续发展奖项。作者指出，三星后续与iFixit合作的自助维修等项目也因零件价格高昂和政策限制而失败。

结论表明，虽然用户可通过第三方应用或自定义ROM独立改造旧手机，但三星锁定的引导程序增加了操作难度。2017年设想的由制造商支持的完整生态系统至今未能实现，这凸显了企业可持续发展承诺与销售新硬件的商业驱动之间的根本矛盾。

---

## 15. Show HN：用于音视频测试的混沌猴（支持WebRTC和UDP）

**原文标题**: Show HN: Chaos Monkey but for Audio Video Testing (WebRTC and UDP)

**原文链接**: [https://github.com/MdSadiqMd/AV-Chaos-Monkey](https://github.com/MdSadiqMd/AV-Chaos-Monkey)

AV Chaos Monkey是一个分布式混沌工程平台，专为视频会议系统的负载测试而设计，能够模拟多达1,500名以上的WebRTC参与者。它生成逼真的H.264视频和Opus音频流，并注入网络劣化（如丢包、抖动和带宽限制）以验证系统的弹性。

该架构采用媒体处理流水线，利用FFmpeg进行高效共享编码，将CPU负载降低约90%。控制平面通过REST API管理测试生命周期并调度混沌事件。为支持扩展，平台采用Kubernetes，自动将参与者分区到各个Pod中，每个Pod处理约150名参与者。UDP中继链将所有流聚合为单一连接，供被测系统接收。

平台支持三种部署模式：本地开发（1-100名参与者）、Docker Compose（100-500名参与者）以及适用于生产级测试的完整Kubernetes部署。可选的Prometheus和Grafana可观测性堆栈提供实时指标。平台包含UDP和WebRTC接收器的客户端示例，并提供全面的API用于测试控制和混沌注入。

---

## 16. 大阪：关西机场自豪于从未丢失过一件行李（2024年）

**原文标题**: Osaka: Kansai Airport proud to have never lost single piece of luggage (2024)

**原文链接**: [https://japannews.yomiuri.co.jp/features/japan-focus/20241228-229891/](https://japannews.yomiuri.co.jp/features/japan-focus/20241228-229891/)

自1994年启用以来，大阪关西国际机场保持着旅客行李零丢失的完美记录。这一持续30年的成就使其在2024年世界机场大奖中第八次荣获"全球最佳行李运送机场"称号。

该机场高峰时段每日处理行李量达3万件。其精密系统将自动化分拣与人工监管相结合，通过传感器巡查与人员巡逻防止行李错置。服务中一个引人注目的细节是：地勤人员会手动将所有行李箱把手朝向抵达转盘的旅客——这一做法赢得了国际旅客的广泛赞誉。

尽管成绩斐然，机场仍意识到未来挑战，包括人手短缺以及2025年大阪关西世博会带来的客流增长压力。相关负责人表示，将通过技术升级提升系统效率，以维持零失误的服务水准。

---

## 17. 展示 HN：Emdash – 开源智能体开发环境

**原文标题**: Show HN: Emdash – Open-source agentic development environment

**原文链接**: [https://github.com/generalaction/emdash](https://github.com/generalaction/emdash)

**Emdash** 是一款开源的智能体开发环境，允许开发者并行运行多个 AI 编程智能体（如 Claude Code、Qwen Code 和 Codex）。它不依赖特定服务商，支持超过 15 种 CLI 智能体，并将每个智能体的工作隔离在独立的 Git 工作树中，以保持变更清晰。用户可直接将 Linear、GitHub 或 Jira 中的任务单分配给智能体，并并排查看代码差异。

核心功能包括通过 SSH/SFTP 在远程服务器上进行开发（含安全凭证存储），以及与问题跟踪工具的集成。该应用适用于 macOS、Windows 和 Linux 系统，支持通过原生安装程序或包管理器安装。

Emdash 采用本地优先架构以保障隐私，将应用状态存储在本地 SQLite 数据库中，仅收集极少的匿名遥测数据（可禁用）。但需注意，使用第三方 AI 智能体时，代码和提示词将根据相应服务商的数据政策发送至其 API。该项目欢迎贡献新服务商和功能扩展。

---

## 18. OpenAI、美国政府与Persona共同构建了一套身份监控系统。

**原文标题**: OpenAI, the US government and Persona built an identity surveillance machine

**原文链接**: [https://vmfunc.re/blog/persona/](https://vmfunc.re/blog/persona/)

本文详述了对一个据称由OpenAI、美国政府及身份验证公司Persona共同构建的监控系统的调查。研究人员发现了一个专用的隔离谷歌云服务器（openai-watchlistdb.withpersona.com），该服务器自2023年末开始运行——远早于OpenAI公开宣布身份验证要求的时间。服务器名称暗示其功能为“监控名单数据库”。

此次调查仅使用SSL证书和DNS记录等公开数据，发现Persona的政府专用平台（withpersona-gov.com）在身份验证过程中收集大量用户数据，包括自拍和证件照片等生物特征信息，随后通过人脸识别技术对照监控名单及“负面媒体”进行筛查。据报道，该系统会向美国金融犯罪执法局提交可疑活动报告。

关键发现包括：有证据表明该政府平台与OpenAI的API及其他追踪服务商集成；新子域名（onyx.withpersona-gov.com）的出现可能与美国移民海关执法局的监控项目相关。文章将此系统定性为以“信任与安全”为名构建的大规模监控基础设施，在数百万用户未充分知情的情况下主动实施筛查。

---

## 19. 特斯拉在欧洲的注册量暴跌17%，而纯电动车市场整体增长14%

**原文标题**: Tesla registrations crash 17% in Europe as BEV market surges 14%

**原文链接**: [https://electrek.co/2026/02/24/tesla-eu-registrations-crash-january-2026-bev-growth/](https://electrek.co/2026/02/24/tesla-eu-registrations-crash-january-2026-bev-growth/)

2026年1月，特斯拉在欧洲（欧盟、欧洲自由贸易联盟和英国）的车辆注册量同比下降17%，仅为8,075辆，而同期整个纯电动汽车市场增长了13.9%。这一下滑尤为显著，因为它发生在已经疲软的2025年1月之后，削弱了此前将原因归咎于新款Model Y生产过渡期的解释。

尽管整体纯电动车市场在扩张，特斯拉的表现却拖累了该行业的增速。若排除特斯拉，纯电动车注册量本应增长15.9%。与之形成鲜明对比的是，中国汽车制造商比亚迪的注册量飙升165%，达到18,242辆，是特斯拉的两倍多。

文章指出，特斯拉的困境源于多种因素，包括持续的消费者抵制运动以及挪威等关键市场电动汽车补贴的结束。与此同时，欧洲汽车市场正加速电动化转型，汽油车注册量暴跌，插电式混合动力车则大幅增长。

结论是，随着比亚迪、大众和斯特兰蒂斯等竞争对手抢占不断增长的市场需求，特斯拉在欧洲电动汽车市场面临被边缘化的风险。

---

## 20. 报告称：以军在2025年大屠杀中近距离射杀加沙援助人员

**原文标题**: IDF killed Gaza aid workers at point blank range in 2025 massacre: Report

**原文链接**: [https://www.dropsitenews.com/p/israeli-soldiers-tel-sultan-gaza-red-crescent-civil-defense-massacre-report-forensic-architecture-earshot](https://www.dropsitenews.com/p/israeli-soldiers-tel-sultan-gaza-red-crescent-civil-defense-massacre-report-forensic-architecture-earshot)

2025年3月23日，以色列士兵在加沙泰勒苏丹地区杀害了15名巴勒斯坦援助人员。Earshot与法证建筑学联合调查指出，这是一场蓄意屠杀。该报告通过音像分析和幸存者证词还原了袭击过程。

以色列部队伏击了一支标识清晰、应急灯开启的救护车队。士兵发射了超过900发子弹，其中至少844发集中在五分半钟内。他们从视野开阔的高处向援助人员徒步逼近并持续开火。分析显示至少有八发子弹是在一米内的近距离行刑式射击。尸检报告指出，死者头胸部的伤痕与此类处决方式吻合。

以色列军方内部调查称未发现处决证据，并将该地区定性为敌对作战区，建议不追究刑事责任。袭击发生后，以军碾碎应急车辆并掩埋，后在一处乱葬坑中发现遗体。此事引发国际谴责，并被视作以色列加沙战争整体背景中的证据之一。

---

## 21. λProlog：高阶逻辑中的逻辑编程

**原文标题**: λProlog: Logic programming in higher-order logic

**原文链接**: [https://www.lix.polytechnique.fr/Labo/Dale.Miller/lProlog/](https://www.lix.polytechnique.fr/Labo/Dale.Miller/lProlog/)

λProlog是一种基于高阶直觉主义逻辑构建的逻辑编程语言，为高级编程概念提供了坚实基础。其核心特性包括直接支持模块化编程、抽象数据类型、高阶编程，以及最显著的高阶抽象语法（HOAS），可优雅处理语法结构中的绑定变量。

该语言持续积极开发，目前主要有两个现代实现：**ELPI**（用OCaml编写、可嵌入并与Coq集成的解释器）和**Teyjus**（支持分离计算与受限高阶合一等特性的编译器）。

λProlog拥有丰富的文档资源，包括基础教材《高阶逻辑编程》、在线视频教程以及各类学术论文与课程资料。该语言与**Abella定理证明器**紧密相关，后者采用λProlog的子集作为其规范逻辑，用于推理涉及绑定的计算过程。

代码示例可见于发行版本和教材中，ELPI实现甚至支持在网页浏览器中直接运行λProlog程序。

---

## 22. 计算机教育中缺失的一学期——2026年修订版

**原文标题**: The Missing Semester of Your CS Education – Revised for 2026

**原文链接**: [https://missing.csail.mit.edu/](https://missing.csail.mit.edu/)

《计算机科学教育中缺失的一学期》是麻省理工学院于2026年1月开设的一门课程，旨在填补传统计算机科学课程中的一个关键空白：对核心开发工具的实践运用能力。课程指出，尽管学生学习的是前沿的计算机科学理论，但命令行、文本编辑器、版本控制等基础工具的使用往往需要他们自行摸索——而这些技能对职业生涯中的工作效率影响深远。

2026年的修订版明确将人工智能工具与工作流融入课程体系，将其视为跨领域的能力提升要素，贯穿于每个主题的教学中，而非单独开设讲座。课程致力于让工具使用变得流畅高效，从而帮助学生更有效地解决复杂问题。

课程为期九天，涵盖从Shell基础、开发环境到调试、Git、代码打包、“智能体编程”及代码质量等多个主题。所有讲座材料（包括视频）均免费在线公开，课程在开源社区中广泛传播，并在Hacker News、Reddit、Discord等平台设有讨论区。

本课程由麻省理工学院开放学习项目及SIPB支持，其讲义与代码采用开放共享许可（CC BY-NC-SA）。全球社区已将其翻译为多种语言，进一步推动了这门课程为广大计算机科学学生与实践者提供“缺失”教育的使命。

---

## 23. 再见InnerHTML，你好SetHTML：Firefox 148中更强大的XSS防护

**原文标题**: Goodbye InnerHTML, Hello SetHTML: Stronger XSS Protection in Firefox 148

**原文链接**: [https://hacks.mozilla.org/2026/02/goodbye-innerhtml-hello-sethtml-stronger-xss-protection-in-firefox-148/](https://hacks.mozilla.org/2026/02/goodbye-innerhtml-hello-sethtml-stronger-xss-protection-in-firefox-148/)

Firefox 148 通过 **Sanitizer API** 引入了一种新的标准化防御机制，用于对抗跨站脚本（XSS）攻击。XSS 作为一种长期位居榜首的网络漏洞，允许攻击者通过用户生成的内容注入恶意脚本。

其核心功能是 **`setHTML()` 方法**，该方法在将不可信的 HTML 插入 DOM 之前，默认会对其进行清理。例如，它会自动移除危险元素和属性，如 `<img onclick="alert('XSS')">`。这为开发者提供了一个更安全、更易采用的替代方案，以取代容易出错的 `innerHTML`，且只需极少的代码改动。

该 API 还可自定义，并能与 **Trusted Types** 结合使用，提供更强大的保护，在全站范围内阻止不安全的 HTML 插入方法。虽然 Firefox 率先实现了这一功能，但该标准旨在推动更广泛的浏览器采用。

Sanitizer API 的开发得到了 Mozilla 安全工程师的深度参与，其目标是使强大的 XSS 防护成为所有网络开发者的默认、易用功能，而无需依赖专门的安全团队。

---

## 24. 陶哲轩，8岁时（1984年）[pdf]

**原文标题**: Terence Tao, at 8 years old (1984) [pdf]

**原文链接**: [https://gwern.net/doc/iq/high/smpy/1984-clements.pdf](https://gwern.net/doc/iq/high/smpy/1984-clements.pdf)

该文档是一个损坏或不完整的PDF文件，并非可读的文章。所提供的文本混合了PDF代码、二进制数据和乱码字符，其中没有关于陶哲轩1984年8岁时的可辨识文章内容可供总结。

“内容”包括：
1. PDF结构命令（例如`%PDF-1.7`、`obj`、`endobj`、`stream`）。
2. 大量编码的二进制数据块（可能代表图像或压缩文本）。
3. 零星可读的文本片段，但这些内容毫无意义、顺序混乱，且似乎是损坏的数据碎片（例如“x�c```��”、“L^���@d�#”、“on�bsj!=”）。

因此，主要结论是：所提交的数据并非功能性文档，而是一个损坏或部分下载的PDF文件的技术转储，其中不包含任何可供总结的连贯信息。

---

## 25. OpenAI调整支出预期，从1.4万亿美元降至6000亿美元

**原文标题**: OpenAI resets spending expectations, from $1.4T to $600B

**原文链接**: [https://www.cnbc.com/2026/02/20/openai-resets-spend-expectations-targets-around-600-billion-by-2030.html](https://www.cnbc.com/2026/02/20/openai-resets-spend-expectations-targets-around-600-billion-by-2030.html)

OpenAI大幅调整了其长期支出与收入预期。公司目前告知投资者，计划到2030年在计算基础设施上投入约6000亿美元，较首席执行官萨姆·阿尔特曼此前提及的1.4万亿美元承诺额大幅缩减。这一调整旨在使支出更贴近预期收入——OpenAI预计2030年收入将超过2800亿美元。

财务方面，OpenAI报告2025年营收达131亿美元，超出目标；80亿美元的运营支出则低于预期。公司即将完成一轮超1000亿美元的巨额融资，主要来自英伟达、软银和亚马逊等战略投资者。此轮融资可能使OpenAI估值达到7300亿美元。

产品方面，ChatGPT周活跃用户数已突破9亿，从2024年末的增长低谷中恢复；编程工具Codex周活跃用户数则超过150万。这些进展正值OpenAI应对谷歌、Anthropic等竞争对手激烈交锋之际。

---

## 26. 丹佛市放弃Flock，将合同授予Axon

**原文标题**: Denver dumps Flock, awards contract to Axon

**原文链接**: [https://www.9news.com/article/news/local/denver-removing-flock-cameras-new-axon-contract/73-640b5af3-7c87-4fea-8aa1-2510ad3257b8](https://www.9news.com/article/news/local/denver-removing-flock-cameras-new-axon-contract/73-640b5af3-7c87-4fea-8aa1-2510ad3257b8)

丹佛市正终止与当前自动车牌识别（ALPR）摄像头供应商Flock Safety的合同，并将新合同授予Axon。这一决定是在持续一年的争议后作出的——调查显示Flock公司将丹佛市的追踪数据置于一个可供移民执法机构访问的全国性网络中，并与美国边境巡逻队存在秘密合作关系，导致其与丹佛市议会关系恶化。市议会成员对Flock首席执行官曾否认存在联邦合同后又被证据反驳感到愤怒。

尽管市长迈克·约翰斯顿曾以公共安全需求为由两次单方面延长Flock合同并增设隐私违规处罚条款，市审计长蒂姆·奥布莱恩近期因法律责任风险拒绝会签该合同。Axon在与Flock分拆后推出了自有竞品ALPR系统，其新合同需经市议会批准。Axon声明其未运营类似Flock的全国性数据共享网络。

此次更换供应商虽回应了对Flock的具体投诉，但有专家指出，转换供应商未必能解决ALPR系统固有的数据收集与隐私隐患。丹佛市与Flock的合同将于三月底到期。

---

## 27. 对象存储中单个JSON文件内的分布式队列

**原文标题**: A distributed queue in a single JSON file on object storage

**原文链接**: [https://turbopuffer.com/blog/object-storage-queue](https://turbopuffer.com/blog/object-storage-queue)

本文介绍了turbopuffer如何利用对象存储（如Google Cloud Storage）上的单个JSON文件构建了一个简单、可扩展的分布式作业队列。该队列用于协调异步索引工作。

核心设计采用一个包含作业列表的`queue.json`文件。客户端（推送者和工作者）通过比较并交换（CAS）操作原子性地更新该文件，无需复杂锁机制即可确保强一致性。

为克服对象存储写入延迟高、写入速率受限的问题，系统采用了**分组提交**机制。该机制将多个请求在内存中批量处理后再一并写入，从而将请求速率与写入速率解耦。

为避免多个客户端争用单一文件，系统引入了**无状态代理**。所有客户端均与代理通信，代理运行单一的分组提交循环，成为对象存储的唯一写入者。这使得系统能够扩展到大量客户端。

为实现高可用性，代理地址存储在JSON文件中。若代理发生故障，新代理可启动并接管工作。为确保作业可靠性，工作者会向代理发送**心跳信号**，这些信号被记录在队列中。若心跳超时，其他工作者可接管该作业，从而实现至少一次交付。

最终构建的系统可靠、高效，并利用对象存储可预测、可扩展的基础特性，以最小复杂度实现了分布式队列。

---

## 28. 心肺健康与较低的愤怒和焦虑水平相关。

**原文标题**: Cardiorespiratory fitness is associated with lower anger and anxiety

**原文链接**: [https://linkinghub.elsevier.com/retrieve/pii/S000169182600171X](https://linkinghub.elsevier.com/retrieve/pii/S000169182600171X)

**摘要**

一项发表在《运动与锻炼心理学》期刊上的研究发现，心肺健康与情绪调节之间存在显著关联。研究表明，体能水平较高的人经历的愤怒和焦虑程度较低。

该研究通过分级运动测试评估参与者的心肺健康水平，并通过标准化问卷测量他们的情绪反应。结果显示存在明显的负相关关系：随着体能水平的提高，参与者自我报告的暂时性愤怒焦虑状态和长期性愤怒焦虑特质均有所下降。

研究人员认为，这种联系可以通过多种生理和心理机制来解释。改善心肺健康能增强身体管理生理唤醒和应激反应的能力。它还与涉及情绪控制的大脑区域（如前额叶皮层）功能改善有关，并可能导致神经递质系统的积极变化。此外，定期锻炼这一行为本身为压力提供了一个建设性的宣泄途径，并能提升自我效能感。

关键结论是，心肺健康不仅有益于身体健康，也是情绪健康的有力预测指标。研究结果表明，通过定期进行有氧运动来提高体能，可能是减少愤怒和焦虑的有效策略，为促进心理健康提供了一种非药物途径。

---

## 29. Discord终止与身份验证软件Persona的合作关系。

**原文标题**: Discord cuts ties with identity verification software, Persona

**原文链接**: [https://fortune.com/2026/02/24/discord-peter-thiel-backed-persona-identity-verification-breach/](https://fortune.com/2026/02/24/discord-peter-thiel-backed-persona-identity-verification-breach/)

Discord已终止与身份验证服务商Persona的短暂合作，起因是研究人员发现Persona的前端代码（含验证流程细节）在美国政府服务器上可公开访问。泄露文件显示Persona执行包括人脸识别比对监控名单、筛查恐怖主义等"负面媒体"在内的广泛审查。

此次事件是Discord第三方合作安全失误的延续。去年另一家服务商5CA的数据泄露事件曾导致超7万用户政府身份证信息曝光。近期Discord还因计划默认启用青少年安全设置引发用户不满，该设置要求通过Persona进行年龄验证才能使用部分功能。Discord后续澄清验证对多数用户将保持可选。

Persona首席执行官Rick Song声明泄露文件为已公开的未压缩前端数据，不构成重大漏洞。他辩护称产品运行正常，用户数据在处理后立即脱敏。Song否认公司与Palantir或ICE存在商业关联，并表示正在为员工安全服务申请FedRAMP认证，该服务与年龄验证系统相互独立。

争议已引发针对Persona员工的网络威胁。Song本人也因未使用公开头像遭到批评，他回应称在隐私争议背景下要求公开"面部信息"的行为充满反乌托邦讽刺意味。

---

## 30. 我将Coreboot移植到了ThinkPad X270上

**原文标题**: I Ported Coreboot to the ThinkPad X270

**原文链接**: [https://dork.dev/posts/2026-02-20-ported-coreboot/](https://dork.dev/posts/2026-02-20-ported-coreboot/)

作者在一周内成功将Coreboot移植到ThinkPad X270（Kaby Lake型号）。过程包括备份原始BIOS并提取必要组件，如英特尔闪存描述符和GbE部分。初次刷写尝试因意外碰掉一个电容而变得复杂，后来该电容被识别并更换。

移植基于现有的X280代码，但由于硬件差异（如缺少Thunderbolt接口、WiFi和NVMe设备的PCIe时钟分配不同）需要大量调整。初次构建后，系统能启动但无法识别NVMe硬盘和WiFi网卡。在Libreboot社区的帮助下，作者诊断出问题源于设备树中PCIe配置错误。

修正WiFi/WWAN和NVMe插槽的CLKREQ映射后，问题得以解决，系统成功引导Guix OS并完全正常运行。作者正将修改提交至Coreboot和Libreboot项目上游，并计划更换为自由无线网卡。文章最后表达了对Libreboot的推荐，并感谢社区的支持。

---

