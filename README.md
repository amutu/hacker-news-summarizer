# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-24.md)

*最后自动更新时间: 2026-09-24 04:54:15*
## 1. Claude发现具CRISPR样重复序列的新型酶系统

**原文标题**: Claude discovers a novel enzyme system with CRISPR-like repeats

**原文链接**: [https://www.anthropic.com/news/claude-discovers-novel-enzyme-system](https://www.anthropic.com/news/claude-discovers-novel-enzyme-system)

2026年9月，Anthropic宣布成立生命科学研究组及实验平台，以Claude开展基础生物学研究。其早期成果为Claude自主发现了一种名为"阵列关联逆转录酶"（ART）的新型酶系统，主要存在于噬菌体中，由逆转录酶、相邻伴侣基因及一段DNA重复序列阵列三部分组成，结构特征与CRISPR高度相似。发现过程中，人类仅提供高层方向，约950个Claude代理在21小时内消耗2.1亿token，自主完成数据库检索、异常模式识别与候选筛选，从逾20万条逆转录酶序列中锁定该目标。初步实验表明ART阵列可表达为多种短RNA，暗示其或具备类似CRISPR的可编程功能，但具体机制仍有待阐明。基因编辑先驱Feng Zhang评价该发现"令人振奋"。Anthropic强调其实验室仅涉及BSL-1/2级别研究，所有湿实验均由人类操作。团队已发布预印本，希望借此展示AI自主假设生成的科学价值，并诚邀更多研究者合作探索。

---

## 2. 修复波托贝洛警局塔楼时钟

**原文标题**: Fixing the Portobello Police Station Clock

**原文链接**: [https://pointinthecloud.com/2026-04-11-211700.html](https://pointinthecloud.com/2026-04-11-211700.html)

2026年4月11日，作者应友人之邀前往爱丁堡波托贝洛区一座旧警察局，协助社区组织修复塔楼上的百年时钟。该建筑始建于1877年，历经市政厅、图书馆、警察局等用途，近期由苏格兰土地基金购入归社区所有，但社区未能破解钟塔报时的操作方法。

钟机疑为1877年原件，后经改装加装电机驱动及一块含PIC 16F628微控制器的电路盒（约2001年制）。作者攀上陡峭高梯进入塔楼，找到齿轮上的拨爪拨开后，手动旋转主轴成功设定时间。报时盒操作颇为隐蔽，经反复摸索发现：长按"advance"键后松开即可触发报钟，每按一次递增一小时，以此设定当前小时。

下午四点整，钟楼成功敲响四声，修复宣告成功。因附近居民可能尚未适应，作者随即断开报钟电机。此后众人在附近酒吧庆祝，还畅想了多项改进设想，包括调整报时时段、节日特殊报钟、节日彩灯等。这是一次愉快而难忘的社区参与经历。

---

## 3. 我们如何两周内将 claude.ai 提速三倍

**原文标题**: How we made claude.ai 3x faster in two weeks

**原文链接**: [https://claude.dev/blog/how-we-made-claude-ai-faster/](https://claude.dev/blog/how-we-made-claude-ai-faster/)

摘要：2026年8月，Anthropic团队在一个为期两周的冲刺中，将 claude.ai 网页版及桌面端的核心体验平均提速3.1倍。团队在 Slack 中设立专用频道，由"Claude Tag"（约 Opus 5.5 级别的研究模型）与工程师协作，完成了从定位瓶颈、构建基准、提交修复到灰度发布的完整闭环，最终合并逾三千项变更，实现零事故、零回滚。团队聚焦四大用户旅程——启动、开启对话、加载对话、发送消息，共13项关键指标，第三天即达成其中十二项目标。核心策略包括：将编辑器烘焙进 HTML 以实现 React 初始化前即可输入、预编译 V8 代码缓存、会话悬停预取、侧边栏重渲染削减90%等。方法论上，团队确立了"一旦能衡量，就能优化"的原则，用 Valgrind 指令计数替代噪声较大的墙钟时间作为 CI 门禁，并让 Claude 在实验室中自主验证。同时并行运行超150个优化线程，Claude 自主发现大量隐藏问题，如6900个 React hook 的无效重渲染、单个 :has() 选择器拖慢24毫秒、每日50万次隐藏页面刷新，以及 em dash 触发 UTF-16 编码导致代码高亮卡顿等，逐一修复。

---

## 4. 这个亚马逊骗子为何能一直不发货还继续经营？

**原文标题**: How can this Amazon scammer keep going, not shipping any goods?

**原文链接**: [https://www.amazon.de/sp?language=en&ie=UTF8&seller=A29EBN4DXM8UCL&asin=B0CGBFF8K9&ref_=dp_merchant_link](https://www.amazon.de/sp?language=en&ie=UTF8&seller=A29EBN4DXM8UCL&asin=B0CGBFF8K9&ref_=dp_merchant_link)

无法访问该文章链接

---

## 5. Windows 滚动条快捷键简史

**原文标题**: A brief history of Windows scroll bar shortcuts

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20260922-00/?p=112719/](https://devblogs.microsoft.com/oldnewthing/20260922-00/?p=112719/)

Windows 滚动条从最初仅有的五种基础鼠标操作（上下箭头逐行滚动、空白区逐页滚动、拖动手柄定位），历经演进。Windows 7 为其增设右键菜单，引入"在此处滚动"功能——右键点击目标位置即可跳转，省去拖拽手柄的麻烦。同期还隐藏了一条 Shift+点击直接跳转的技巧。然而如今 Win32 原生滚动条已几近淘汰，各框架自定义滚动条的支持程度参差不齐：Electron 等 Web 应用采用 Chromium 滚动条，支持 Shift+点击但无右键菜单；WPF 两项兼备；WinUI 则两者皆无；Qt 虽提供多种配置开关，但最终取决于各应用开发者的选择。作者不禁感慨：刚学会 Shift+点击这一快捷键，生态已高度碎片化，再也无法指望它成为跨应用的通用操作。

---

## 6. 意大利议会投票通过重返核能法案

**原文标题**: Italian parliament votes for return to nuclear energy

**原文链接**: [https://apnews.com/article/italy-nuclear-chernobyl-4891b6b7c7791ae84db6b0bf0f7cf567](https://apnews.com/article/italy-nuclear-chernobyl-4891b6b7c7791ae84db6b0bf0f7cf567)

无法访问该文章链接

---

## 7. DoorDash曾斥资140万美元阻击万曼尼当选市长，1.315亿和解揭开原委

**原文标题**: DoorDash Spent $1.4M Trying to Stop Mamdani from Becoming Mayor. Now We Know Why

**原文链接**: [https://theintercept.com/2026/09/23/doordash-delivery-nyc-mamdani-wage-theft-settlement/](https://theintercept.com/2026/09/23/doordash-delivery-nyc-mamdani-wage-theft-settlement/)

摘要：2025年纽约市长选举中，外卖巨头DoorDash花费约140万美元反对候选人佐兰·万曼尼，其中向反万曼尼超级政治行动委员会"Fix the City"捐款100万美元，向支持前州长库奥莫的协会捐款180万美元。"Fix the City"总耗资3100万美元，甚至篡改万曼尼照片使其胡须更浓更黑，被其本人斥为"赤裸裸的伊斯兰恐惧症"。万曼尼竞选期间承诺加强配送行业监管，因而获得配送工人团体支持。然而，在万曼尼任内，DoorDash与纽约市达成1.315亿美元和解——为该市史上最大规模工人赔偿，涉及26.4万名被克扣工资的配送员，其中工人补发超1.15亿美元、罚款超1600万美元。万曼尼表示："和解规模彰显了工资盗窃对工人群体造成的损害，也说明执法至关重要。"DoorDash回应称"我们搞砸了"。值得注意的是，该和解金额是DoorDash选举支出的百倍以上。此前该公司已在2024年和2025年因违规问题两次与纽约达成和解。工人权益组织指出，DoorDash本质上是在"用金钱购买城市的民主"。

---

## 8. Gemini 3.8 文本转语音：开启声音生成新纪元

**原文标题**: Gemini 3.8 text-to-speech

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-8-text-to-speech/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-8-text-to-speech/)

谷歌于2026年9月23日发布Gemini 3.8 Flash TTS与Flash-Lite TTS两款文本转语音模型，将语音生成从静态预设升级为动态创意工作室。Flash TTS面向深度创作，支持用自然语言提示从零设计语音角色，覆盖逾100种语言及方言，坐拥2000余个生产级声音；仅需30秒音频样本即可复制声音，并配有同意验证机制。模型支持逐行导演表演，精细控制语调、节奏、方言切换及笑声、叹息等自然对话元素，可输出数小时高质量连续音频，原生支持双人多轮对话场景。Flash-Lite TTS则针对高并发、低成本场景，适用于批量配音与语音客服代理。性能上，两款模型在Hume AI语音设计基准测试中分列第一、第二名。安全方面，所有生成音频均嵌入SynthID不可感知水印并支持C2PA凭证，助力防范AI语音滥用。模型已上线Google AI Studio、Gemini API、Gemini Notebook及Google Vids，企业版即将通过Gemini Enterprise开放，并已与Figma、HeyGen等合作伙伴整合，服务于有声书、播客、游戏配音及实时语音代理等场景。

---

## 9. Radicle：网络协议漏洞披露

**原文标题**: Radicle: Disclosure of Vulnerability in the Network Protocol

**原文链接**: [https://radicle.dev/2026/09/23/disclosure-of-vulnerability-in-network-protocol](https://radicle.dev/2026/09/23/disclosure-of-vulnerability-in-network-protocol)

Radicle（基于Git的点对点代码协作平台）披露了两项网络协议关键漏洞：一是节点间通信为明文传输，路径上的攻击者可窃取数据；二是握手认证机制存在缺陷，攻击者可伪造节点ID，冒充白名单成员直接拉取私有仓库。两项漏洞在所有已发布版本中均存在。由于Git对象与签名引用仍具备完整性校验，攻击者无法篡改代码或伪造身份，核心风险为信息泄露，对私有仓库威胁最大。官方建议用户立即停止私有仓库的网络同步与传播，将已传输内容视为已泄露，并轮换相关密钥与凭据。使用Tor、I2P等加密隧道虽可限制窃听，但无法防御身份冒充，不构成有效防护。修复方案为将网络传输层从Noise协议迁移至开源iroh协议栈，该变更不向后兼容，将触发大版本升级，目前开发进行中。官方选择提前披露，旨在让用户立即采取应对措施。

---

## 10. 25行Python实现Jev

**原文标题**: Jev in 25 Lines of Python

**原文链接**: [https://www.nobodywho.ai/posts/jev-in-25-lines/](https://www.nobodywho.ai/posts/jev-in-25-lines/)

摘要：这是一篇戏仿性质的技术博客（作者来自NobodyWho，发布于2026年9月），用约25行Python代码实现了一个Jev分类器，以此讽刺当下AI圈对"Jev"范式的热炒。文章使用llama-cpp加载本地小型GGUF模型（Qwen3-0.6B），将垃圾邮件分类任务转化为三选一选项（合法/垃圾/钓鱼），取模型最后一层输出节点的logits，经softmax归一化得到概率分布，即可完成分类。作者以反讽语气强调：没有调用云端API、没有合成数据、没有用强化学习进行决策校准（RLCD），也没有训练专用模型——但本质上，Jev就是"给选项、出概率"的分类器，这个25行脚本已完整体现其核心思想。同时突出其优势：推理速度快、完全本地运行、数据不出本机，契合隐私保护需求。文末注明本文为恶搞，并推荐OpenJev、openjev-sglang等更完整的开源实现，鼓励读者为NobodyWho的GitHub开源项目点赞支持。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 2 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 3 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 4 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 5 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 6 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 7 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 8 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 9 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 10 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 11 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 12 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 13 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 14 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 15 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 16 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 17 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 18 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 19 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 20 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 21 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 22 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 23 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 24 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 25 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 26 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 27 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 28 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 29 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 30 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 31 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 32 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 33 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 34 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 35 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 36 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 37 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 38 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 39 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 40 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 41 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 42 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 43 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 44 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 45 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 46 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 47 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 48 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 49 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 50 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 51 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 52 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 53 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 54 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 55 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 56 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 57 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 58 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 59 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 60 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 61 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 62 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 63 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 64 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 65 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 66 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 67 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 68 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 69 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 70 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 71 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 72 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 73 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 74 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 75 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 76 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 77 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 78 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 79 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 80 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 81 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 82 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 83 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 84 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 85 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 86 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 87 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 88 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 89 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 90 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 91 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 92 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 93 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 94 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 95 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 96 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 97 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 98 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 99 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 100 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 101 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 102 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 103 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 104 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 105 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 106 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 107 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 108 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 109 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 110 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 111 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 112 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 113 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 114 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 115 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 116 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 117 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 118 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 119 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 120 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 121 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 122 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 123 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 124 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 125 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 126 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 127 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 128 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 129 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 130 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 131 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 132 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 133 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 134 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 135 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 136 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 137 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 138 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 139 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 140 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 141 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 142 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 143 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 144 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 145 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 146 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 147 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 148 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 149 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 150 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 151 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 152 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 153 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 154 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 155 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 156 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 157 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 158 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 159 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 160 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 161 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 162 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 163 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 164 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 165 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 166 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 167 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 168 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 169 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 170 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 171 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 172 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 173 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 174 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 175 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 176 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 177 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 178 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 179 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 180 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 181 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 182 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 183 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 184 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 185 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 186 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 187 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 188 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 189 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 190 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 191 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 192 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 193 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 194 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 195 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 196 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 197 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 198 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 199 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 200 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 201 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 202 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 203 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 204 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 205 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 206 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 207 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 208 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 209 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 210 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 211 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 212 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 213 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 214 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 215 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 216 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 217 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 218 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 219 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 220 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 221 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 222 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 223 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 224 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 225 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 226 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 227 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 228 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 229 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 230 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 231 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 232 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 233 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 234 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 235 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 236 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 237 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 238 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 239 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 240 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 241 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 242 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 243 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 244 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 245 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 246 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 247 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 248 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 249 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 250 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 251 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 252 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 253 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 254 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 255 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 256 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 257 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 258 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 259 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 260 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 261 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 262 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 263 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 264 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 265 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 266 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 267 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 268 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 269 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 270 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 271 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 272 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 273 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 274 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 275 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 276 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 277 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 278 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 279 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 280 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 281 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 282 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 283 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 284 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 285 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 286 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 287 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 288 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 289 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 290 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 291 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 292 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 293 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 294 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 295 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 296 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 297 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 298 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 299 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 300 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 301 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 302 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 303 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 304 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 305 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 306 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 307 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 308 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 309 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 310 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 311 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 312 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 313 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 314 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 315 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 316 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 317 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 318 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 319 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 320 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 321 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 322 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 323 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 324 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 325 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 326 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 327 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 328 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 329 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 330 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 331 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 332 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 333 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 334 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 335 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 336 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 337 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 338 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 339 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 340 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 341 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 342 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 343 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 344 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 345 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 346 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 347 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 348 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 349 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 350 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 351 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 352 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 353 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 354 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 355 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 356 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 357 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 358 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 359 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 360 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 361 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 362 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 363 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 364 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 365 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 366 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 367 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 368 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 369 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 370 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 371 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 372 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 373 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 374 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 375 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 376 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 377 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 378 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 379 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 380 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 381 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 382 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 383 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 384 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 385 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 386 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 387 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 388 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 389 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 390 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 391 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 392 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 393 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 394 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 395 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 396 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 397 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 398 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 399 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 400 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 401 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 402 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 403 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 404 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 405 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 406 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 407 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 408 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 409 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 410 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 411 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 412 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 413 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 414 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 415 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 416 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 417 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 418 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 419 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 420 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 421 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 422 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 423 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 424 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 425 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 426 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 427 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 428 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 429 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 430 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 431 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 432 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 433 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 434 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 435 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 436 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 437 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 438 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 439 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 440 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 441 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 442 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 443 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 444 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 445 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 446 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 447 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 448 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 449 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 450 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 451 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 452 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 453 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 454 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 455 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 456 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 457 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 458 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 459 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 460 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 461 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 462 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 463 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 464 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 465 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 466 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 467 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 468 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 469 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 470 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 471 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 472 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 473 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 474 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 475 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 476 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 477 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 478 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 479 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 480 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 481 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 482 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 483 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 484 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 485 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 486 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 487 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 488 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 489 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 490 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 491 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 492 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 493 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 494 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 495 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 496 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 497 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 498 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 499 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 500 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 501 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 502 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 503 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 504 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 505 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 506 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 507 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 508 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 509 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 510 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 511 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 512 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 513 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 514 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 515 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 516 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 517 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 518 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 519 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 520 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 521 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 522 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 523 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 524 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 525 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 526 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 527 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 528 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 529 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 530 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 531 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 532 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 533 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 534 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 535 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 536 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 537 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 538 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 539 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 540 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 541 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 542 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 543 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 544 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 545 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 546 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 547 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 548 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 549 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
