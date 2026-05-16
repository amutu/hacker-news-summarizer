# Hacker News 热门文章摘要 (2026-05-16)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 铠侠与戴尔将10 PB容量塞进纤薄2RU服务器

**原文标题**: Kioxia and Dell cram 10 PB into slim 2RU server

**原文链接**: [https://www.blocksandfiles.com/flash/2026/05/14/kioxia-and-dell-cram-10-pb-into-slim-2ru-server/5240574](https://www.blocksandfiles.com/flash/2026/05/14/kioxia-and-dell-cram-10-pb-into-slim-2ru-server/5240574)

**摘要：**

铠侠与戴尔合作打造了一款高密度全闪存存储服务器——戴尔PowerEdge R7725xd，在纤薄的2U外形中容纳了9.8 PB的存储容量。这一成果通过集成40块铠侠LC9 QLC固态硬盘实现，每块硬盘采用E3.L规格，容量达245.76 TB。该服务器搭载AMD EPYC 9005系列处理器，并支持最多五个400 Gbps网卡以实现快速数据传输。

双方高管强调了其优势：戴尔的Arun Narayanan指出，该方案提升了存储密度和能效，有助于扩展AI基础设施；铠侠的Neville Ichhaporia则表示，该产品能以更小占用部署海量数据摄取流并扩展数据湖，从而改善总体拥有成本。理论上，单机柜可容纳20台此类服务器，存储容量可达196 PB。

文章还指出，美光、闪迪、SK海力士（及其子公司Solidigm）和三星等其他制造商正在开发或计划推出类似的高容量硬盘。三星未来的近线级固态硬盘被视为潜在的机械硬盘杀手，其产品路线图指向1 PB容量的硬盘。

---

## 2. Windows 9x Linux 子系统

**原文标题**: Windows 9x Subsystem for Linux

**原文链接**: [https://codeberg.org/hails/wsl9x](https://codeberg.org/hails/wsl9x)

无法访问文章链接。

---

## 3. SANA-WM：一款2.6B参数的开源世界模型，可生成1分钟720p视频

**原文标题**: SANA-WM, a 2.6B open-source world model for 1-minute 720p video

**原文链接**: [https://nvlabs.github.io/Sana/WM/](https://nvlabs.github.io/Sana/WM/)

**SANA-WM 简介**

SANA-WM 是一款拥有26亿参数的开源世界模型，旨在生成720p分辨率的高质量、时长一分钟的视频。其关键创新在于，无需巨大计算成本即可实现高效的长时视频生成。

该模型采用**稀疏注意力机制**，结合**3D-VAE（变分自编码器）**与**DiT（扩散Transformer）**架构。这种稀疏方法降低了计算复杂度，使其能够处理长序列（30帧/秒下最长30秒），并保持时间一致性。

SANA-WM支持**端到端视频生成**以及基于输入帧的**视频续写**。在维持长时物体恒存与运动连贯性方面（这是基于扩散模型的一个公认难题），它表现出了强大的性能。该模型在多样化数据集上训练，能够生成逼真及风格化的视频。

通过开源发布SANA-WM，开发者旨在让研究和创意应用能够更广泛地使用先进的世界建模技术，助力模拟、视频编辑及自动驾驶场景生成等任务。这标志着在消费级硬件上实现实用、实时的世界模拟迈出了重要一步。

---

## 4. 《加速》（2005）

**原文标题**: Accelerando (2005)

**原文链接**: [https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html](https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html)

无法访问文章链接。所提供的网址指向antipope.org上的特定页面，但该网站的架构可能阻止直接文本提取，或内容位于动态界面之后。

---

## 5. 澳大利亚青少年团队让乡村学校负担得起射电天文学

**原文标题**: An australian teen team is making radio astronomy affordable for rural schools

**原文链接**: [https://mag.openrockets.com/p/how-an-australian-teen-team-is-making-radio-astronomy-affordable-for-rural-schools-4894opuisyhfdisubgi/?b=2](https://mag.openrockets.com/p/how-an-australian-teen-team-is-making-radio-astronomy-affordable-for-rural-schools-4894opuisyhfdisubgi/?b=2)

无法访问文章链接。

---

## 6. 告别Tailwind，学习如何构建我的CSS

**原文标题**: Moving away from Tailwind, and learning to structure my CSS

**原文链接**: [https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/](https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/)

作者在使用Tailwind CSS八年后迁移至原生CSS，认为这一过程既有趣又富有教育意义。他们意识到Tailwind教会了他们组织CSS的宝贵方法论，如今正手动复现这些实践。

核心要点包括：
- **重置样式：** 复制了Tailwind的预检样式（如`box-sizing: border-box`）。
- **组件化：** CSS按组件组织，每个组件拥有独立类名与专属文件，避免跨组件干扰。
- **颜色与字号：** 定义为CSS变量（如`--pink`、`--size-lg`），保持全站视觉一致性。
- **工具类：** 保留极少量可复用类（如`.sr-only`）。
- **基础样式：** 最小化全局样式（如章节宽度、链接颜色），审慎应用。
- **间距控制：** 通过“猫头鹰选择器”（`*+*`）将间距交由父级布局组件管理。
- **响应式设计：** 采用弹性CSS网格（如`auto-fit`、`minmax`）而非大量媒体查询，突破Tailwind的限制实现复杂布局。
- **构建系统：** 开发阶段依赖原生CSS的导入与嵌套，仅在生产打包时使用esbuild。

放弃Tailwind的原因包括：对构建系统的过度依赖、文件体积膨胀、对“非标准”CSS的限制、需维护混合原生/Tailwind项目，以及理念转变——作者希望珍视CSS专业能力而非贬低其价值的工具，受批判Tailwind对CSS社区影响的博文启发。如今，他们将CSS视为一门严肃且不断演进的技术。

---

## 7. Δ-Mem：面向大型语言模型的高效在线内存

**原文标题**: Δ-Mem: Efficient Online Memory for Large Language Models

**原文链接**: [https://arxiv.org/abs/2605.12357](https://arxiv.org/abs/2605.12357)

**《Δ-Mem：面向大型语言模型的高效在线记忆机制》摘要**

本文提出Δ-Mem，一种轻量级记忆机制，旨在增强大型语言模型在长期任务中的表现，无需昂贵的上下文扩展或全参数微调。其核心思想是：在冻结的全注意力骨干网络上，附加一个紧凑的、固定大小的在线状态矩阵作为联想记忆。

Δ-Mem通过Delta规则学习更新该状态，高效压缩历史信息。在生成过程中，模型读取该状态并生成低秩修正项，直接耦合到骨干网络的注意力计算中。这一设计使模型能够有效回忆并复用历史信息。

该方法以极低的开销实现了显著性能提升：仅使用8×8的记忆状态，Δ-Mem便将平均得分提升至冻结骨干网络的1.10倍，比最强非Δ-Mem基线高出1.15倍。在记忆密集型基准测试上增益尤为明显，在MemoryAgentBench上达到1.31倍，在LoCoMo上达到1.20倍，同时较好地保留了通用能力。

核心启示是：通过一个直接集成到注意力计算中的紧凑在线状态，即可实现有效的记忆功能，无需全参数微调、替换骨干网络或显式扩展上下文。

---

## 8. 前沿AI打破了开放CTF的赛制

**原文标题**: Frontier AI has broken the open CTF format

**原文链接**: [https://kabir.au/blog/the-ctf-scene-is-dead](https://kabir.au/blog/the-ctf-scene-is-dead)

**摘要：作者认为，前沿人工智能模型已摧毁了开放式在线CTF竞赛的竞技公平性。**

要点如下：

1.  **人工智能已自动化大部分解题过程**：从GPT-4开始，尤其是Claude Opus 4.5和GPT-5.5 Pro，AI可以一次性解决中高难度挑战（包括堆漏洞利用）。编排多个AI代理的战队可以自动解决计分板上的大部分问题。

2.  **计分板已失效**：当前的表现反映的是AI编排能力和Token消耗，而非人类的安全技能。开放式CTF已变成“付费即赢”的游戏，CTFTime排行榜也不再反映真实能力。

3.  **对新手有害**：让新手逐步提升技能的正反馈循环已被打破。新手在培养核心直觉之前就被迫使用AI，而当计分板被自动化解题所主导时，可见的进步会令人沮丧。

4.  **组织者无力反抗**：试图让挑战对AI不友好的努力，往往会让挑战对人类而言更糟糕。针对AI使用的规则无法强制执行。

5.  **“只要适应就好”是空洞的说辞**：没有具体说明要适应什么，这种建议忽视了竞技形式的核心目的——衡量人类技能——已经不复存在。

6.  **社区衰退**：顶尖战队（例如TheHackersCrew）参赛减少。久负盛名的CTF赛事（例如Plaid CTF）已停办。顶尖从业者报告称失去兴趣。

作者总结道，当前形式的开放式在线CTF已经消亡，但敦促通过社交活动、线下聚会和学习平台来保留社区。

---

## 9. 名声！一种误解：阿尔贝·加缪完整笔记新译本

**原文标题**: Fame! A Misunderstanding: A new translation of Albert Camus's complete notebooks

**原文链接**: [https://lareviewofbooks.org/article/albert-camus-complete-notebooks-ryan-bloom-existentialism-absurd/](https://lareviewofbooks.org/article/albert-camus-complete-notebooks-ryan-bloom-existentialism-absurd/)

本文评述瑞安·布鲁姆对阿尔贝·加缪《全集笔记》的新译作，指出该译本纠正了长期以来公众对加缪的误解。尽管其作品在逝世后陆续出版，但加缪始终被片面地描绘为存在主义哲学家或荒诞派哲人。这些笔记——尤其是1938至1942年间首次译介的《奥兰笔记》——揭示出加缪始终将自己定位为艺术家而非哲学家。其著作《西西弗神话》明确声明这不是哲学论著，而是对"精神疾病"的文学描述；他更批评"主题小说"背离了真实体验。文章追溯了误读的源头：1943年萨特的评论将《西西弗神话》错误简化为哲学体系，并将《局外人》视为其注脚；1945年萨特与波伏娃掀起的"存在主义攻势"将加缪归入该流派；1946年《局外人》在美国出版时更被包装为"存在主义小说"。加缪曾多次否认自己是存在主义者。笔记还展现了他对"哲学式自杀"（用抽象概念取代生命体验）的批判，以及1938年因个人自杀危机而衍生出对政治性谋杀的反对立场。布鲁姆的译作提供了理解这些成长经历的新视角，厘清了加缪作为真正艺术家和反哲学家立场的本质。

---

## 10. 集群变得个人化（正如个人电脑一样）

**原文标题**: Clusters become personal (like PCs did)

**原文链接**: [https://aranya.tech/blog/arrival-of-the-personal-cluster](https://aranya.tech/blog/arrival-of-the-personal-cluster)

本文展望了计算的未来，提出**个人集群**——由Kubernetes等编排软件管理的多计算机协同系统——将很快像个人电脑（PC）曾经那样普及。

作者克里斯蒂安·翁达杰认为，我们已间接通过人工智能交互消费了集群级计算。他预测这种使用方式将从企业服务转向个人拥有，首先出现在工作场所，随后进入个人生活。

个人集群的普及预计将沿三大历史脉络演进：
1. **工作场所脉络**：类似PC的崛起，在工作中使用Kubernetes的技术人员将推动更简单的集群操作系统需求，最终使雇主在新员工入职时发放个人集群。
2. **爱好者脉络**：类似Linux的发展史，爱好者将构建并围绕开源集群操作系统聚集，培育社区驱动的生态系统。
3. **游戏玩家脉络**：受早期电脑游戏启发，开发者将创造原生支持集群的游戏，使强大计算变得触手可及且充满乐趣。

为实现这一未来，作者已开发并开源了**clusterdOS**——一款个人集群分布式操作系统。其背后的Aranya公司旨在让更多人获得强大计算能力，同时构建可持续发展的商业模式。文章最后坚信：下一代计算将是个人化、强大且基于集群的。

---

## 11. HTML 列表

**原文标题**: HTML Lists

**原文链接**: [https://blog.frankmtaylor.com/2026/05/13/you-dont-know-html-lists/](https://blog.frankmtaylor.com/2026/05/13/you-dont-know-html-lists/)

根据您要求的格式，以下是文章的简明摘要：

**《你不知道的HTML：列表》摘要**

本文认为HTML有五种截然不同的列表类型，挑战了人们通常只关注`<ul>`和`<ol>`的认知。作者提供了选择指南：

1.  **控件列表（`<select>`/`<option>` 或 `<input>`/`<datalist>`）：** 用于表单中的用户输入。固定选项使用`<select>`（通过`<optgroup>`分组，`multiple`属性实现多选），建议性可编辑选项使用`<datalist>`。关键警告：避免在`<datalist>`选项中使用`value`属性，否则会覆盖显示的标签文本，造成用户困惑。
2.  **有序列表（`<ol>`）：** 当改变项目顺序会改变列表含义时使用（例如食谱、算法、字母顺序列表）。`reversed`属性可反转编号，但不会改变列表实际顺序。
3.  **描述列表（`<dl>`）：** 用于键值对。
4.  **菜单列表（`<menu>`）：** 用于执行操作的UI控件。
5.  **无序列表（`<ul>`）：** 当以上标准均不适用时使用。

核心思想是根据语义含义和内容结构选择列表类型，而非仅凭视觉外观。文章还涵盖了列表嵌套以及`<select>`的高级功能，如使用`<hr>`实现视觉分隔。

---

## 12. 日本在与熊的争斗中用光了机器狼

**原文标题**: Japan runs out of robot wolves in fight against bears

**原文链接**: [https://www.popsci.com/environment/japan-robot-wolf-army/](https://www.popsci.com/environment/japan-robot-wolf-army/)

**概要：** 日本正面临严重的熊患问题，城市扩张与农村人口老龄化导致熊袭事件激增。2025年已发生至少200起伤人事件、13起致死事件（创历史新高）以及超5万起目击报告。为应对危机，日本依赖制造商太田于2016年首次推出的"怪物狼"机器人稻草人。这些定制设备配备红色LED眼睛、骇人獠牙、太阳能板、运动传感器及可播放50余种音频（人声与警笛）的扬声器。然而，因农民、高尔夫球场及农村务工人员需求激增，手工组装的设备（起售价约4000美元）目前面临2-3个月的积压订单。制造商正开发可追逐动物的轮式升级款及供徒步者使用的手持型号。与此同时，日本2025年已部署军事人员并实施安乐死超1.46万头熊——为上一年度总量的三倍。当局敦促居民在产能提升前遵守官方熊类安全指南。

---

## 13. 古腾堡计划——日益精进

**原文标题**: Project Gutenberg – keeps getting better

**原文链接**: [https://www.gutenberg.org/](https://www.gutenberg.org/)

古腾堡计划是一个数字图书馆，提供超过75,000本免费电子书，主要为美国版权已过期的经典文学作品和旧作。该馆藏完全免费，无需注册或安装特殊应用程序，可通过标准网页浏览器或电子书阅读器访问。自1971年成立以来，该项目依靠数千名志愿者对文本进行数字化录入和校对。

网站涵盖历史、文学、科学、哲学和艺术等多个类别。用户可按流行度、作者、标题、主题或语言进行浏览。近期发布和频繁下载的书籍会获得重点推荐，热门作品包括《弗兰肯斯坦》《白鲸记》和《傲慢与偏见》。

古腾堡计划还提供由志愿者（Librivox）录制的有声书、2023年和2003年计算机生成的录音以及社群创作的表演作品。该平台鼓励捐款以支持持续的数字化工作，并邀请志愿者通过分布式校对者项目或报告错误来提供帮助。

其他资源包括自出版作品（self.gutenberg.org）、阅读清单、常见问题解答以及版权和许可相关信息。网站还提供社交媒体推送、隐私政策和无障碍访问选项。

---

## 14. Show HN：Rocksky – AT协议上的音乐记录与发现

**原文标题**: Show HN: Rocksky – Music scrobbling and discovery on the AT Protocol

**原文链接**: [https://tangled.org/rocksky.app/rocksky](https://tangled.org/rocksky.app/rocksky)

**Rocksky** 是一个基于 AT 协议构建的去中心化音乐追踪与发现平台。它提供与 Last.fm 和 ListenBrainz 兼容的 Scrobbling API，允许用户追踪收听历史并发现新音乐。

主要功能包括最近播放时间线、实时显示其他用户正在播放内容的“故事”视图，以及个性化统计图表（热门艺人、曲目、专辑）。用户可通过与 Spotify、Jellyfin、Pano Scrobbler 和 WebScrobbler 的集成进行 Scrobble 记录。平台的喊话箱和点赞系统支持社交互动。

该平台采用现代技术栈（Node.js、Deno、Rust、Go、Turbo、Docker、DuckDB、MeiliSearch），本地开发需配置环境变量和 Docker 容器。

即将推出的功能包括 Webhook、个性化信息流、Last.fm 镜像、远程播放（Rocksky Connect）、多源库以及自定义扩展。可通过 Discord 和 GitHub Issues 收集反馈，并欢迎社区贡献。

---

## 15. 希腊字母卡

**原文标题**: Greek Alphabet Cards

**原文链接**: [https://labs.randomquark.com/alphabet_cards/](https://labs.randomquark.com/alphabet_cards/)

文章描述了一位家长为帮助生活在中国的年幼子女学习希腊语，亲手制作“希腊字母卡”的经历。当时三岁半的孩子们正在学习包括希腊语在内的三种语言。起初，这位家长设计了一套类似“A代表飞机”风格的卡片，用希腊字母开头的物品图片来对应每个字母。然而，在打印出第一版后，家长对这种方法有了一个关键领悟或“顿悟”，但文章在详细说明这一感悟之前就中断了。主要信息是：家长的目标是通过游戏学语言；孩子们是多语言学习者；第一次尝试采用了直接的字母-物品关联法。此次顿悟可能促成了经过改进、更为有效的设计。

---

## 16. DeepSeek-V4-Flash让大语言模型控制再次变得有趣

**原文标题**: DeepSeek-V4-Flash means LLM steering is interesting again

**原文链接**: [https://www.seangoedecke.com/steering-vectors/](https://www.seangoedecke.com/steering-vectors/)

**摘要：**

本文探讨了"引导"技术——通过在推理过程中操控内部激活来引导大语言模型输出，并认为随着DeepSeek-V4-Flash借助DwarfStar 4等工具的发布，该技术正重新变得重要。引导技术的原理是提取概念向量（例如"简洁"），并在生成过程中增强相关激活。实现方式既可以朴素地通过比较有提示和无提示示例的激活值，也可以更复杂地通过稀疏自编码器进行。

引导技术的吸引力在于它可能绕过提示工程，直接控制模型行为（例如"简洁度"滑块）。然而，由于大型实验室偏好训练，普通用户缺乏模型访问权限，且提示工程通常更简便地达到类似效果，该技术此前未得到充分利用。作者对能否通过引导提取"智能"等无法通过提示获得的概念持怀疑态度，认为此类向量可能过于复杂，实质上等同于需要重新训练。同样，针对代码库特定知识的引导可能也需要微调。

尽管存在这些疑虑，开源社区在引导技术方面的工作甚少，而DwarfStar 4等新工具可能会改变这一局面。作者建议，我们或许很快会看到社区驱动的、针对热门开源模型的可增强特征库。虽然并不十分乐观，但作者认为未来六个月内该领域值得关注。

---

## 17. 半莫比乌斯拓扑结构的分子

**原文标题**: A molecule with half-Möbius topology

**原文链接**: [https://www.science.org/doi/10.1126/science.aea3321](https://www.science.org/doi/10.1126/science.aea3321)

无法访问文章链接。（提供的URL似乎不完整或无效；正确的DOI格式应为类似`10.1126/science.aea3321`，但截至当前访问，该链接无法在Science.org网站上解析为有效文章。）

---

## 18. 《Futhark实例教学》

**原文标题**: Futhark by example

**原文链接**: [https://futhark-lang.org/examples.html](https://futhark-lang.org/examples.html)

本文通过一系列难度递增的注释示例程序，对**Futhark**（一种专为并行计算、尤其是GPU计算设计的函数式数组语言）进行了实践性介绍。

文档列举了**基础语言特性**（函数、数组、元组、循环、模式匹配）与**编程技巧**（矩阵乘法、直方图、基数排序、随机数、高斯模糊）。此外还涵盖了**自动微分**（前向与反向模式）、**抽象数据类型**以及用于生成图表、视频和文件I/O的**文学式Futhark**等高级主题。

文中包含从**Dex**移植的示例（曼德勃罗集、光线追踪、蒙特卡洛估算圆周率、布朗运动），并重点介绍了使用Futhark的外部项目，例如落沙游戏（Diving Beet）、光线追踪游戏（Futball）、网络摄像头滤镜应用（Futcam）、分形生成器以及Poseidon哈希函数的实现。这些示例展示了Futhark在光线追踪、粒子模拟和编译器实现等性能关键型任务中的实际应用。全文旨在通过可运行的具体代码示例来教授Futhark，而非进行理论性的语言描述。

---

## 19. 我们让世界变得太复杂了

**原文标题**: We've made the world too complicated

**原文链接**: [https://user8.bearblog.dev/the-world-is-too-complicated/](https://user8.bearblog.dev/the-world-is-too-complicated/)

**摘要：**  
这篇发布于2026年5月16日的文章认为，现代生活已变得过于复杂且令人疏离。作者描述自己生活在一个无法完全理解的科技世界，受遥远法则支配，清醒时身处抽象而充满压力的环境。他们指出环境破坏、操纵和腐败无处不在，导致无意识的压力——咬紧牙关、呼吸浅促、血压升高——以及对世界沉默的困惑。  

文章批判了纪录片《思维博弈》中关于戴密斯·哈萨比斯与谷歌DeepMind的叙事，该片声称通用人工智能可以解决人类最大问题。作者怀疑人类擅长自我欺骗，构建合理化有害行为的现实。他们坦言常有种冲动想砸碎笔记本电脑和手机、放弃学业或工作、拒绝金钱与文字——但承认若真如此，会被视为疯子。  

作者指出，我们所谓的"原始"实则是当下状态，而知识的增长往往带来毁灭。他们总结道，或许最大的恩赐是尽可能少做：观察自然、感受风与水、饿了吃饭、开心时笑、空虚时哭——回归简单，作为这个复杂而充满伤害的世界的解药。

---

## 20. 加速

**原文标题**: Accelerate

**原文链接**: [https://github.com/AccelerateHS/accelerate](https://github.com/AccelerateHS/accelerate)

**摘要：**  
Accelerate 是一种用于 Haskell 高性能并行数组计算的嵌入式语言。它允许开发者以纯函数式风格编写多维数组操作（映射、归约、置换），这些操作随后会在多核 CPU 或 NVIDIA GPU（通过 CUDA）上进行在线编译与执行。一个简单示例——点积运算——使用了熟悉的 Haskell 函数，如 `fold` 和 `zipWith`。  

核心包可在 Hackage 与 GitHub 上获取。其他组件提供后端（CPU/GPU）、多种格式的 I/O 支持（图像、二进制数据、向量）以及专用算法（FFT、BLAS、大数运算、随机数生成）。该项目包含一系列示例应用，如边缘检测、曼德博集合生成、N体模拟和光线追踪器。  

团队成员包括多位学术研究人员。若将 Accelerate 用于研究，建议用户引用相关论文。该项目处于活跃开发状态，并设有邮件列表和 GitHub 进行问题讨论与反馈。

---

## 21. 8年后，我重写了我的开源PyTorch曲率库

**原文标题**: After 8 years, I rewrote my open-source PyTorch curvature library

**原文链接**: [https://github.com/noahgolmant/pytorch-hessian-eigenthings](https://github.com/noahgolmant/pytorch-hessian-eigenthings)

**概要：**  
本文发布了 `pytorch-hessian-eigenthings` 的 v1.0.0a1 版本，这是对用于神经网络曲率分析的开源 PyTorch 库的重大重写。该库通过迭代方法（Lanczos 算法、随机幂迭代、Hutch++）高效计算 Hessian 矩阵（或相关矩阵如 GGN 和经验 Fisher）的特征值/特征向量、迹估计及谱密度。这些方法仅需 Hessian-向量乘积，避免了完整 Hessian 的二次内存开销。  
**主要特性：**  
- 支持 HuggingFace 和 TransformerLens 的 Transformer 模型，并包含针对大词汇量语言模型的融合交叉熵 Hessian-向量核（CUDA 上加速约 3.4 倍）。  
- 提供 `GGNOperator`（半正定）和 `EmpiricalFisherOperator` 作为替代曲率矩阵。  
- 支持有限差分 HVP 以兼容 FSDP、通过 `param_filter` 进行逐块分析，以及通过随机 Lanczos 正交方法计算谱密度。  
- 更新了依赖项和文档（详见 noahgolmant.github.io/pytorch-hessian-eigenthings）。  
本文提供了安装说明（`pip install`）、使用示例、基于 `uv` 的开发环境配置以及参考文献。v1 版本重构融合了 PyHessian、curvlinops 和 HessFormer 的设计思路。

---

## 22. Kyber（YC W23）正在招聘创始营销人员

**原文标题**: Kyber (YC W23) Is Hiring a Founding Marketer

**原文链接**: [https://www.ycombinator.com/companies/kyber/jobs/1rLQAro-founding-marketer-content-community](https://www.ycombinator.com/companies/kyber/jobs/1rLQAro-founding-marketer-content-community)

**Kyber创始营销人员招聘启事摘要**

Kyber（YC W23）是一家面向受监管行业的人工智能原生文档平台，现于纽约招聘一位**创始营销人员（内容与社区）**，薪资范围为9万至13万美元，另加0.01%至0.10%的股权。

**关于Kyber：** 其平台帮助保险及企业团队起草、审核和发送复杂的监管通知，节省65%的起草时间，并将流程周期提速5倍。成立18个月内，收入增长40倍，已实现盈利，并与多家大型保险公司签订了多年合同。

**岗位重点：** 负责内容与社区策略，包括策划高影响力的活动（如精品晚宴、会议快闪店）、制作视频案例研究和思想领导力内容、运营社交媒体及播客，并使用AI工具（Claude、n8n）提升产出效率。20%的时间用于实验性项目。

**理想人选：** 具备3年以上增长、内容、活动和社区经验的营销通才。需精通AI工具，能够适应每月出差，富有创造力，行动迅速且具备设计审美。

**福利待遇：** 具有竞争力的薪资、丰厚的股票期权以及100%由雇主承担的健康保险。

**申请方式：** 请让一位前同事将简历及2至3句推荐语发送至anna@askkyber.com。

---

## 23. 《辛辛那提的WKRP》开播近50年后，成为真实广播电台

**原文标题**: Nearly 50 Years Later, WKRP in Cincinnati Becomes a Real Radio Station

**原文链接**: [https://www.openculture.com/2026/05/nearly-50-years-later-wkrp-in-cincinnati-becomes-a-real-radio-station.html](https://www.openculture.com/2026/05/nearly-50-years-later-wkrp-in-cincinnati-becomes-a-real-radio-station.html)

辛辛那提一家名为“绿洲”的广播电台已正式采用WKRP作为其呼号，距离经典电视情景喜剧《辛辛那提的WKRP》播出已近50年。该呼号是从北卡罗来纳州罗利市一家非营利电台购得，该电台将其作为筹款活动的一部分进行拍卖。为庆祝启用，该电台连续六小时播放该剧的主题曲，并将继续播放20世纪60至80年代的经典摇滚乐，与这部1978至1982年播出的剧集中的音乐风格相呼应。曾饰演节目总监安迪·特拉维斯的演员加里·桑迪已为重新启用的电台录制了宣传片。文章还指出，原版剧集可在YouTube上观看。

---

## 24. 我最喜欢的Bug：无效的代理对

**原文标题**: My Favorite Bugs: Invalid Surrogate Pairs

**原文链接**: [https://george.mand.is/2026/05/my-favorite-bugs-invalid-surrogate-pairs/](https://george.mand.is/2026/05/my-favorite-bugs-invalid-surrogate-pairs/)

文章描述了一个在协作编辑器（TipTap/Yjs）中难以复现的漏洞：用户的编辑操作会在无提示的情况下停止同步。其根本原因在于JavaScript处理UTF-16字符串时产生的无效代理对。

位于U+FFFF之上的Emoji（如🤠）会以两个16位"代码单元"（即代理对）的形式存储。当Yjs底层库`lib0`使用`.slice()`方法在代理对的两个单元之间拼接文本时，会生成孤立的代理项。这些无效字符串在同步阶段会导致`encodeURIComponent()`抛出未捕获的`URIError`错误，从而中断所有后续同步，且用户端不显示任何可见错误。

该漏洞由特定编辑操作触发——例如在某个多字节Emoji旁插入另一个Emoji——导致拼接操作落在错误的字节边界上。团队临时部署了修复方案（离线支持与显示重新加载弹窗的全局错误处理器），直到`lib0`库完成补丁更新，将孤立的代理项替换为Unicode替换字符（�）。同时他们在编辑器中将Emoji设为原子节点类型，以防止其被拆分。

文章阐释了关键Unicode概念：**代码单元**（JS操作的基本单位）、**码点**（Unicode字符）和**字素簇**（人类视角的单个字符）。安全的字符串拆分现代解决方案是`Intl.Segmenter`。作者指出这类漏洞常见于使用`str[0]`获取"第一个字符"的代码中，这种做法在多字节字符场景下必然出错。

---

## 25. 我认为目前有许多公司正处于人工智能狂热状态。

**原文标题**: I believe there are entire companies right now under AI psychosis

**原文链接**: [https://twitter.com/mitchellh/status/2055380239711457578](https://twitter.com/mitchellh/status/2055380239711457578)

**摘要：**

用户分享了一篇题为“我认为当前有整个公司陷入AI狂热”的帖子，但所提供的内容并未包含实际文章文本，而是来自X（原Twitter）网站的技术错误提示，显示浏览器禁用了JavaScript，要求启用该功能才能继续使用平台。页面还显示了指向帮助中心、服务条款、隐私政策及其他公司信息的标准页脚链接，以及“© 2026 X Corp.”的版权声明。

**关键信息：** 由于浏览器兼容性问题，无法获取实质性文章内容。用户原本讨论的主题似乎是批评公司过度或非理性地关注人工智能，但实际呈现的文本仅为一条技术通知。

---

## 26. 粪菌移植治疗自闭症在临床试验中取得突破（2025）

**原文标题**: Fecal transplants for autism deliver success in clinical trials (2025)

**原文链接**: [https://refractor.io/adhd-autism/fecal-transplants-for-autism-delivers-success-in-clinical-trials/](https://refractor.io/adhd-autism/fecal-transplants-for-autism-delivers-success-in-clinical-trials/)

**摘要：**

亚利桑那州立大学研究表明，粪便微生物群移植（FMT）可长期显著减轻自闭症症状。一项为期两年的研究发现，接受治疗的儿童自闭症症状减少45%，而八周时减少24%。治疗前，83%的参与者为“重度”自闭症；两年后，仅17%仍属重度，44%降至轻度自闭症标准以下。该疗法还改善了影响30%–50%自闭症儿童的慢性胃肠问题。

研究人员为细菌配方申请专利，并成立公司Gut-Brain Axis Therapeutics，将名为微生物群移植疗法（MTT）的治疗方案商业化。一项针对成人的2期安慰剂对照试验证实，治疗组在自闭症症状、胃肠健康、接收性语言及行为问题方面的改善均优于安慰剂组。团队现正为大规模3期试验筹集资金，以寻求FDA批准。该发现进一步证实了肠道微生物组多样性与大脑功能之间的紧密联系。

---

## 27. 展示HN：每日情绪编码游戏，第33天：塔防（单提示）

**原文标题**: Show HN: Daily vibe-coding video games, day 33: Tower Defense (single prompt)

**原文链接**: [https://gamevibe.us/33-tower-defense](https://gamevibe.us/33-tower-defense)

在 **GameVibe** 平台发布的文章《Show HN：每日氛围编程视频游戏，第33天：塔防（单提示词）》记录了作者连续第33天运用“氛围编程”（可能指AI辅助或快速编程）制作视频游戏的历程。核心要点如下：

- **项目：** 使用单条提示词在一天内完成了一款塔防游戏的开发。
- **方法：** 作者强调效率，通过单一提示词生成整段游戏代码，展现了极简化的游戏开发方式。
- **内容：** 该塔防游戏可能包含标准元素（防御塔、敌人、波次、升级系统），但重点在于创作的速度与简洁性，而非复杂度。
- **目标：** 该系列展现了每日持续产出的能力，凸显快速原型设计与AI辅助编程在游戏开发挑战或个人项目中的可行性。
- **受众：** 面向独立开发者、编程爱好者及对AI生成代码感兴趣的人群，展示无需深厚技术功底即可快速构建功能完整游戏的可行性。

该文章作为33天挑战的进度报告，着重强调生产力与精心设计的单条提示词在生成完整游戏体验中的强大作用。

---

## 28. 点是一种奇怪且不统一的计量单位。

**原文标题**: Points are a weird and inconsistent unit of measure

**原文链接**: [https://buttondown.com/hillelwayne/archive/points-are-a-weird-and-inconsistent-unit-of/](https://buttondown.com/hillelwayne/archive/points-are-a-weird-and-inconsistent-unit-of/)

**摘要：**

本文探讨了印刷排版"点"单位在历史上的不一致性，重点指出LaTeX与Inkscape对该单位的定义存在0.4%的差异。历史上，不同国家与时代的"点"标准各异（如德/日点与法点）。美国采用了1/72.27英寸的标准化定义，但实际测量仍存在细微偏差。唐纳德·克努特为TeX选择了72.27点=1英寸的设定，为便于计算对官方印刷点做了微调。而PostScript为追求简洁，将单位精确定义为1/72英寸（即"大点"bp）。苹果公司等推广了PostScript，使72点/英寸成为数字标准，并被CSS、SVG及Inkscape采纳。这导致LaTeX与现代网络工具使用的点大小存在细微差异，造成跨平台项目的对齐问题。作者推荐编程语言Frink进行精确单位换算，并指出其定义仍存在极微小的误差（阿米尺度）。文章结尾以幽默口吻哀叹缺乏标准化的"草"单位。

---

## 29. 为什么这个网站命名为“伪教皇”？

**原文标题**: Why is this site named Antipope?

**原文链接**: [https://www.antipope.org/charlie/old/antipope.html](https://www.antipope.org/charlie/old/antipope.html)

无法访问该文章链接。

---

## 30. 非苹果非谷歌智能手机何处购买

**原文标题**: Where to buy a non-Apple, non-Google smartphone

**原文链接**: [https://www.theregister.com/on-prem/2026/05/01/where-to-buy-a-non-apple-non-google-smartphone/5219681](https://www.theregister.com/on-prem/2026/05/01/where-to-buy-a-non-apple-non-google-smartphone/5219681)

**摘要：**

《The Register》的这篇文章重点介绍了苹果和谷歌智能手机的替代品，其背景是两家公司施加的日益严格限制引发了担忧。文章警告称，到2026年9月，谷歌计划禁止侧载未在谷歌注册的应用，从而实质上锁定安卓设备。苹果则因其“液态玻璃”用户界面以及iOS 26.4中要求提供政府身份证件的年龄验证功能而受到批评。

为了保留对设备的控制权，读者可以购买无谷歌或基于Linux操作系统的手机。主要供应商包括：

- **Murena**：销售运行去谷歌化/e/OS系统的手机（如Fairphone 6）。
- **Punkt**：专注隐私的瑞士极简手机（MP02、MC03）。
- **Volla**：提供搭载Volla OS或Ubuntu Touch的智能手机。
- **Jolla**：芬兰公司，拥有Sailfish 5操作系统和C2手机（第三批已上市）。
- **Furilabs**：运行Debian系统的Linux手机（FLX1s型号）。
- **Purism**：Librem 5，价格昂贵但完全自由软件的手机。
- **Pine64**：低成本PinePhone，运行Mobian或postmarketOS系统。
- **FXtec**：Pro1手机（可能有二手设备）。

这些操作系统大多能通过虚拟机或容器运行安卓应用。文章最后强调了用户对设备的自由和控制权。

---

