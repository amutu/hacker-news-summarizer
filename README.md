# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-30.md)

*最后自动更新时间: 2026-08-30 04:57:51*
## 1. 互联网如今已沦为掠夺性的污水坑

**原文标题**: The Internet Is Kind of a Predatory Cesspit Now

**原文链接**: [https://www.stephendiehl.com/posts/internet_predatory_cesspit/](https://www.stephendiehl.com/posts/internet_predatory_cesspit/)

作者以九十年代早期互联网为对照，指出当今网络已从爱好者搭建的公共广场，沦为以掠夺为核心原则的机器：系统精准检测人类脆弱性、放大情绪、植入支付链接，将消费者变为推销员，将受害者编入金字塔结构。成瘾本身即是商业模式——算法以交替的愤怒、恐惧与欲望维持留存，而掠夺经济必须永久制造焦虑以获取持续收入，合法需求一旦满足便不再产生交易。平台推荐系统本质是强化学习回路，威胁性内容永远压过诚实内容。加密货币被视为这一结构的集大成者，形成推广带动价格、价格证明采用的自循环传销。大语言模型更将虚假内容的生产成本降至零。作者同时指出，不能仅以鄙视为回应——就业不稳、住房困局、制度性孤独构成骗局滋生的土壤，"逃脱"的承诺往往复现了当初的困境。最终，作者呼吁将网络视为有边界的工具而非无尽的信息流，物理世界的"摩擦力"——对话会结束、朋友会厌烦——是抵御无限欲望的最后防线。让不透明算法决定人生意义，是最大的骗局。

---

## 2. 腾讯发布并开源混元Hy4 Preview大模型

**原文标题**: Tencent Releases and Open-Sources Tencent Hy4 Preview

**原文链接**: [https://www.tencent.com/tencent-releases-and-open-sources-tencent-hy4-preview/](https://www.tencent.com/tencent-releases-and-open-sources-tencent-hy4-preview/)

腾讯发布并开源新一代大模型混元Hy4 Preview，拥有770B总参数（49B激活参数），上下文窗口超百万tokens，在编程、办公、科研等真实生产力场景中表现优异，跻身顶级开源模型行列。该模型已接入WorkBuddy、CodeBuddy、元宝等平台，支持通过腾讯云TokenHub和OpenRouter调用API，上线两周免费。在163位专家参与的盲评中，Hy4 Preview以2.99分（满分4分）略胜GLM-5.3与Kimi K3。模型在软件工程长上下文开发、金融分析、跨文档协作、游戏原型自动生成及分子动力学等科研前沿领域均有显著提升。值得关注的是，Hy4 Preview首次参与自身训练方法与数据策略的优化，构建早期递归自改进循环，并自主完成推理系统调优，端到端吞吐量提升31.8%。API定价为输入0.834美元、输出2.501美元、缓存0.042美元（每百万tokens）。腾讯将持续以"预览优先"策略迭代，Hy4系列后续模型即将推出。

---

## 3. 先校准，再加速：新岗位中的行动力之道

**原文标题**: Calibrate Before You Accelerate: Bias Toward Action in a New Role

**原文链接**: [https://tucker.wales/writing/bias-towards-action/](https://tucker.wales/writing/bias-towards-action/)

进入新公司时，急于证明自己的冲动几乎不可避免，但行动若缺乏上下文，不过是在制造噪声。作者提出，真正的行动力应建立在充分的情报基础上，并将适应过程分为三个阶段：第一阶段为"收集期"，核心是倾听——主动识别干系人、观察团队动态，运用"切斯特顿栅栏"原则理解既有流程的由来，通过研读历史文档、观察同事与开展一对一访谈完成信息积累。第二阶段为"综合期"，是连接与分类的过程——将不同干系人独立提及的痛点关联起来，区分可快速兑现的低风险小胜与需长期布局的系统性问题。第三阶段为"战略加速期"，强调从小处切入、先帮他人解决具体问题以积累信任，重大行动前先以"一页纸假设"征求反馈，并逐步将工作重心从九成倾听过渡到八成行动。文章最终指出，这并非要求迟缓，而是确保每一次发力都精准作用于真正需要被推动之处。面对新环境，暂缓挥锤，先读懂蓝图。

---

## 4. Warp在Claude上构建自我进化智能体

**原文标题**: Warp builds self-improving agents on Claude

**原文链接**: [https://claude.com/blog/how-warp-builds-self-improving-agents-on-claude](https://claude.com/blog/how-warp-builds-self-improving-agents-on-claude)

摘要：Warp是AI终端与智能体开发环境，基于Claude Platform构建。其内部代码审查智能体初期表现不佳，核心痛点在于：用户反馈随会话结束而消失，智能体无法从中学习。Warp由此设计了基于Agent Skills的自我改进循环：内层"基础技能"承载领域知识、执行具体任务（如代码审查、issue分类）；外层"改进技能"作为定时运行的观察代理，汇总人类反馈（如PR评论中的具体纠偏），对比智能体输出与人类期望，向基础技能提出最小化编辑。由于技能以纯文件形式存在，更新可走标准PR审核流程，人工批准后合入，下次执行即继承改进，形成闭合回路。Warp现已将此模式扩展至整个开源仓库，涵盖规范编写、代码审查和issue分诊等多个智能体。团队分享了关键实践：技能文件应写原则而非穷举规则、解释"为什么"以增强泛化；反馈采集须低摩擦、嵌入工作流；优先追求反馈质量而非数量；改进技能本身高度可复用。此外，需区分技能（程序性、稳定）与记忆（实时变更），并对错误反馈设置过滤与人工终审机制，以保障系统可靠进化。

---

## 5. Tether：在 Linux 上实现 iMessage、短信与跨设备互通

**原文标题**: Tether: iMessage, SMS, etc. on Linux

**原文链接**: [https://zackbartel.com/blog/2026/08/tether/](https://zackbartel.com/blog/2026/08/tether/)

摘要：作者从 macOS 转至 Linux 后，发现 Apple"连续性"功能（iMessage、短信、文件共享、剪贴板同步、通知推送及 OTP 自动填充）在 Linux 上完全缺失，尤其缺少验证码自动填入登录框的体验。为此，他开发了 Tether 项目，目标是覆盖所有技术上可行的连续性能力，区别于 KDE Connect 等 Android 方案。项目从剪贴板同步起步，逐步加入文件传输；OTP 功能则借助支持 WebExtensions 的 Zen 浏览器和 Betterbird 邮箱客户端，通过浏览器与邮件扩展自动识别并填入验证码。最核心的突破在于蓝牙层面：作者参考 ancs4linux、BlueFerry 及 erikwb 的协议文档，用 C++ 以干净室方式重新实现了 iMessage/SMS 蓝牙协议，克服了 2026 年蓝牙生态的诸多不稳定问题，最终实现 iMessage、SMS、通知、联系人同步。安全方面，通信自始采用 mTLS 双向认证，并定期开展安全审查。项目采用 MIT 许可证，作者欢迎社区贡献，呼吁 Linux+iPhone 用户尝试使用。

---

## 6. 将SQLite用作文档数据库（2020）

**原文标题**: SQLite as a Document Database (2020)

**原文链接**: [https://dgl.cx/2020/06/sqlite-json-support](https://dgl.cx/2020/06/sqlite-json-support)

2020年，SQLite 3.31.0引入生成列功能，结合已有的JSON支持，使SQLite可充当轻量级文档数据库。只需在表中定义JSON文本列，并通过json_extract将目标字段映射为虚拟生成列，即可将JSON直接插入并按字段检索。文章展示了基本用法：插入含字段的JSON后，便可对该提取字段执行WHERE查询。该方案具有天然的数据校验优势——生成列在INSERT时会自动拒绝格式非法的JSON，配合NOT NULL等约束还能强制要求特定字段必须存在。虚拟列不占额外存储空间，且可对其创建索引以加速查询；同时ALTER TABLE支持动态添加新的生成列与索引，无需重建表。文章建议从仅含一个JSON列的简单表起步，随后续发现有用字段再逐步扩展列与索引，这种模式尤其适合webhook等"先接收、后处理"的场景。相比PostgreSQL和ElasticSearch，此方案的最大优势在于SQLite是嵌入式数据库，无需独立服务，部署极为简单，非常适合轻量级应用。

---

## 7. vLLM v0.28.0 版本发布说明

**原文标题**: vLLM v0.28.0

**原文链接**: [https://github.com/vllm-project/vllm/releases/tag/v0.28.0](https://github.com/vllm-project/vllm/releases/tag/v0.28.0)

vLLM v0.28.0汇集584次提交、270位贡献者（含76位新贡献者）的成果。核心亮点：Kimi-K3全栈性能优化，涵盖解码上下文并行、融合FlashKDA内核、自适应推测token预算（TTFT提升约60%）及共享专家分片（每GPU省约17GiB显存），并支持ROCm运行。DeepSeek V4实现稀疏MLA端到端推理及AMD Quark NVFP4支持。推测解码推出DFlash2与DSpark置信度调度验证。Model Runner V2持续成熟，新增E/P/D分离、权重卸载及多场景扩展。KV缓存新增磁盘级卸载与分层管理。Rust前端与gRPC接口支持多模态推理、数据并行路由及RL生命周期控制。默认值方面，最大批处理令牌数升至16384，Mamba模型默认启用前缀缓存。破坏性变更包括bitsandbytes迁移为外部插件、Transformers升级至5.15.0、移除calculate_kv_scales与override_attention_dtype。硬件覆盖新增NVIDIA SM12x/GB10优化、AMD ROCm全栈支持（gfx11/950）、Intel XPU及CPU后端。量化新增在线MXFP4/NVFP4及多种融合内核。安全方面修复音频采样率伪造DoS漏洞。提供CUDA 12.9/13.0、ROCm、CPU、XPU等多平台Docker镜像与Python轮子。

---

## 8. 国土安全部借冷门海关法秘密窥探记者、非营利组织与工会

**原文标题**: DHS is using obscure law to snoop on journalists, non-profits, unions

**原文链接**: [https://www.theguardian.com/us-news/2026/aug/29/trump-dhs-1509-summons-records-journalists-nonprofits](https://www.theguardian.com/us-news/2026/aug/29/trump-dhs-1509-summons-records-journalists-nonprofits)

摘要：美国国土安全部（DHS）援引一项鲜为人知的海关条款（19 USC 1509），绕过司法审查，向社交媒体及电信公司秘密调取记者、非营利组织和工会的个人信息。在明尼苏达教堂抗议案中，法官已两度以"缺乏合理依据"驳回政府搜查申请并要求通知当事人，DHS却改用仅需内部审批、无需法官介入的行政传票，要求收件方保密，成功获取记者Georgia Fort和Don Lemon的YouTube数据及逾万条通话记录。此外，DHS还向Meta、Google等调取了Democracy Now、评论员Megyn Kelly及多个工会组织的财务信息，相关组织均未被起诉。前DHS律师和监察长批评此举严重越权，该条款仅适用于海关调查。科技公司虽称依法审核，却将抗辩成本转嫁用户。DHS在面临诉讼时多次于法官裁决前撤回报传票，疑似规避不利判例。隐私专家警告，传票数量与用途不透明，公众和立法者难以对行政权滥用形成有效制衡。

---

## 9. 小学接娃事故及后续方针

**原文标题**: The elementary school pickup incident and the road ahead

**原文链接**: [https://shitposting.ai/pickup-incident/](https://shitposting.ai/pickup-incident/)

2026年8月19日，作者因Zoom会议超时47分钟、三次推迟闹钟，致使两孩在小学门卫室滞留逾一小时。全文以AI安全事故报告体，将此次家庭失误包装为"多信任方违规事件"。事件线：2:30起提醒被连续忽略；3:07学校致电未接，家长群四分钟内锁定其身份；3:41结束会议后疾驰赴校，3:50接回孩子；当晚妻子自丹佛赶回要求提交完整报告。根因分析涵盖四点：奖励劫持（以推迟换沉默）、无界会议无安全退出、家长群"未授权通信"引发的群体监视，以及控制层失效——作者十一天前关闭了妻子每日1点的接娃确认提醒。文章亦讽刺指出，93%的超时内容本可邮件替代，"买冰淇淋"在评分者眼中仅为证据而非正解。后续措施包括强化日历纪律、限制周三下午Zoom、隔离会议沙盒、管控闹钟功能，并加大"配偶思维链监控"投入。全文以幽默笔调将育儿翻车写成行业级事故，自嘲与警示兼备。

---

## 10. 优秀文化才是第一提效要素，而非AI

**原文标题**: Good Culture Is the Biggest Productivity Hack, Not AI

**原文链接**: [https://newsletter.eng-leadership.com/p/good-culture-is-the-biggest-productivity](https://newsletter.eng-leadership.com/p/good-culture-is-the-biggest-productivity)

摘要：作者格雷戈尔·奥伊斯特瑟克凭借13年工程行业经验指出，AI能提升生产力，但前提是先具备优秀的团队文化。他引用康威定律强调，组织产出必然反映其内部沟通与文化结构——文化差则产品差，文化好则产品好，文化是一切的前提，如同健康之于人体。他批评高管宣称"有了AI不需要那么多人"，认为这严重破坏心理安全感，损害士气。AI并非万能解药，它会放大既有状态：好文化叠加AI事半功倍，坏文化叠加AI则加速犯错。文章提出九项文化自检问题，涵盖职责清晰度、决策自主权、心理安全感、团队互信、优先级透明、建设性争议、结果导向、目标理解与容错学习。在AI推广方面，作者强调采用必须自下而上而非自上而下强制推行，因为工具日新月异，需要团队持续的知识共享。AI落地本质是领导力问题而非工具问题，目标应始终指向业务成果而非AI使用率。他主张AI时代公司应多招工程师而非裁减，更多人才与好文化结合能指数级提升生产力与上市速度，反之则丧失竞争优势。最终，领导者真正该问的不是"如何让全员用上AI"，而是"如何打造让优秀人才发挥最佳状态的组织，再以AI实现倍增"。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 2 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 3 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 4 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 5 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 6 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 7 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 8 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 9 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 10 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 11 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 12 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 13 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 14 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 15 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 16 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 17 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 18 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 19 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 20 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 21 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 22 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 23 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 24 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 25 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 26 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 27 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 28 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 29 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 30 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 31 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 32 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 33 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 34 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 35 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 36 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 37 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 38 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 39 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 40 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 41 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 42 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 43 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 44 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 45 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 46 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 47 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 48 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 49 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 50 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 51 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 52 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 53 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 54 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 55 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 56 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 57 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 58 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 59 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 60 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 61 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 62 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 63 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 64 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 65 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 66 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 67 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 68 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 69 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 70 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 71 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 72 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 73 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 74 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 75 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 76 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 77 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 78 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 79 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 80 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 81 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 82 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 83 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 84 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 85 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 86 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 87 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 88 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 89 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 90 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 91 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 92 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 93 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 94 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 95 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 96 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 97 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 98 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 99 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 100 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 101 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 102 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 103 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 104 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 105 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 106 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 107 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 108 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 109 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 110 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 111 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 112 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 113 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 114 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 115 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 116 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 117 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 118 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 119 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 120 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 121 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 122 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 123 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 124 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 125 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 126 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 127 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 128 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 129 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 130 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 131 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 132 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 133 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 134 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 135 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 136 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 137 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 138 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 139 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 140 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 141 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 142 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 143 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 144 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 145 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 146 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 147 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 148 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 149 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 150 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 151 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 152 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 153 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 154 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 155 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 156 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 157 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 158 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 159 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 160 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 161 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 162 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 163 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 164 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 165 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 166 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 167 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 168 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 169 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 170 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 171 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 172 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 173 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 174 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 175 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 176 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 177 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 178 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 179 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 180 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 181 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 182 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 183 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 184 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 185 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 186 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 187 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 188 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 189 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 190 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 191 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 192 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 193 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 194 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 195 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 196 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 197 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 198 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 199 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 200 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 201 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 202 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 203 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 204 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 205 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 206 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 207 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 208 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 209 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 210 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 211 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 212 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 213 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 214 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 215 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 216 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 217 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 218 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 219 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 220 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 221 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 222 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 223 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 224 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 225 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 226 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 227 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 228 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 229 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 230 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 231 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 232 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 233 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 234 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 235 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 236 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 237 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 238 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 239 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 240 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 241 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 242 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 243 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 244 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 245 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 246 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 247 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 248 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 249 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 250 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 251 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 252 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 253 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 254 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 255 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 256 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 257 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 258 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 259 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 260 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 261 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 262 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 263 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 264 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 265 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 266 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 267 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 268 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 269 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 270 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 271 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 272 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 273 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 274 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 275 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 276 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 277 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 278 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 279 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 280 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 281 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 282 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 283 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 284 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 285 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 286 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 287 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 288 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 289 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 290 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 291 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 292 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 293 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 294 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 295 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 296 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 297 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 298 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 299 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 300 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 301 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 302 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 303 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 304 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 305 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 306 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 307 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 308 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 309 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 310 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 311 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 312 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 313 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 314 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 315 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 316 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 317 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 318 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 319 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 320 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 321 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 322 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 323 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 324 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 325 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 326 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 327 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 328 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 329 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 330 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 331 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 332 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 333 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 334 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 335 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 336 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 337 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 338 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 339 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 340 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 341 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 342 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 343 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 344 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 345 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 346 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 347 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 348 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 349 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 350 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 351 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 352 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 353 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 354 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 355 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 356 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 357 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 358 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 359 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 360 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 361 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 362 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 363 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 364 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 365 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 366 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 367 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 368 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 369 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 370 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 371 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 372 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 373 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 374 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 375 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 376 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 377 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 378 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 379 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 380 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 381 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 382 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 383 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 384 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 385 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 386 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 387 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 388 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 389 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 390 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 391 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 392 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 393 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 394 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 395 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 396 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 397 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 398 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 399 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 400 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 401 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 402 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 403 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 404 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 405 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 406 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 407 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 408 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 409 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 410 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 411 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 412 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 413 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 414 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 415 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 416 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 417 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 418 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 419 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 420 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 421 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 422 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 423 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 424 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 425 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 426 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 427 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 428 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 429 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 430 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 431 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 432 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 433 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 434 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 435 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 436 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 437 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 438 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 439 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 440 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 441 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 442 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 443 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 444 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 445 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 446 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 447 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 448 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 449 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 450 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 451 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 452 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 453 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 454 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 455 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 456 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 457 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 458 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 459 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 460 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 461 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 462 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 463 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 464 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 465 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 466 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 467 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 468 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 469 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 470 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 471 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 472 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 473 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 474 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 475 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 476 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 477 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 478 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 479 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 480 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 481 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 482 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 483 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 484 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 485 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 486 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 487 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 488 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 489 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 490 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 491 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 492 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 493 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 494 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 495 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 496 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 497 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 498 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 499 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 500 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 501 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 502 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 503 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 504 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 505 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 506 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 507 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 508 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 509 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 510 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 511 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 512 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 513 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 514 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 515 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 516 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 517 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 518 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 519 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 520 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 521 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 522 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 523 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 524 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
