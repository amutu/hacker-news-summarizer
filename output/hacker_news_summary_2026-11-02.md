# Hacker News 热门文章摘要 (2026-11-02)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 展示 HN：HackerBooks——Hacker News 版"HackerTube"，专收集 HN 上推荐的好书

**原文标题**: Show HN: HackerBooks – HackerTube, but for books mentioned on HN

**原文链接**: [https://hackerbooks.org](https://hackerbooks.org)

无法访问该文章链接

---

## 2. HackerTube: YouTube built from videos recommended by HN

**原文标题**: HackerTube: YouTube built from videos recommended by HN

**原文链接**: [https://karpathy.bearblog.dev/hacker-tube/](https://karpathy.bearblog.dev/hacker-tube/)

文章之前已经处理过

---

## 3. 数学已然巨变，当顺势而为

**原文标题**: Mathematics has changed. Let's act like it

**原文链接**: [https://terrytao.wordpress.com/2026/11/01/mathematics-has-changed-lets-act-like-it/](https://terrytao.wordpress.com/2026/11/01/mathematics-has-changed-lets-act-like-it/)

本文由数学家Ben Eastaugh与Chris Sternal-Johnson合著，发表于WordPress博客。文章核心论点是： mathematics 在过去数十年间已发生深刻转变——从以公理演绎和抽象证明为核心，扩展至计算实验、数值模拟、形式化验证与跨学科应用等领域，传统的数学实践与认知方式已不足以概括当代数学的全貌。作者呼吁数学界、教育机构及公众正视这一变化，更新对"什么是数学"以及"如何学习、研究和教授数学"的理解，让教学体系、学术评价和社会认知与实际发展同步。文章强调，拒绝承认变革只会使数学与更广阔的科学和技术世界脱节，唯有主动调整观念与方法，数学才能持续发挥其推动人类知识进步的作用。

---

## 4. Copper：兼具面向对象与泛型特性的极简底层编程语言

**原文标题**: Copper – A minimal low-level programming language with OOP and generics

**原文链接**: [https://tibleiz.net/copper/](https://tibleiz.net/copper/)

Copper是一种极简的底层编程语言，由作者设计用于替代C语言。其核心理念是极简主义，追求语法简明、构造显式，使初学者也能轻松掌握。语言主要特性包括：任意类型的继承、泛型支持、多返回值、定义顺序无关、无头文件的简洁导入机制、非全局命名空间、延迟语句、简单迭代器、Ruby风格语法、选项类型以及快速编译。文中的示例通过定义一个Point类（含x、y属性、init构造方法与translate方法），在main函数中创建对象、调用方法并打印结果，直观展示了其面向对象语法。Copper采用BSD许可证发布，项目主页提供文档、速查表、更多示例，并开放标准库及编译器源码供在线浏览，方便使用者快速上手或深入研究。

---

## 5. 使用 AFL++ 进行更高效模糊测试的八条实战技巧

**原文标题**: Tips for more effective fuzz testing with AFL++

**原文链接**: [https://nullprogram.com/blog/2025/02/05/](https://nullprogram.com/blog/2025/02/05/)

本文基于作者六年间约千个项目的模糊测试经验，针对 AFL++ 在 C/C++ 目标上提出八条关键技巧：（1）默认启用 ASan 与 UBSan，调整 ASAN_OPTIONS（如 abort_on_error、detect_stack_use_after_return、max_malloc_fill_size）以提升缺陷检测灵敏度；（2）优先采用持久化模式，可提速约一个数量级；（3）直接包含源文件而非头文件，简化构建并可直接测试静态函数；（4）重置全局状态、对堆内存填充模式，确保各次测试间完全隔离；（5）切勿将模糊缓冲区 buf 直接传入目标，应拷贝为精确大小的副本，否则 ASan 无法检测越界读；（6）测试中无需主动释放内存，减少无关开销；（7）对仅接受文件路径的接口，用 memfd_create 创建内存文件描述符，经 /proc/self/fd/N 路径传入，兼顾并行安全与 SSD 寿命；（8）将目标中过大的固定缓冲区（如 65536）大幅缩小，加速触发溢出路径。文章附有可直接复用的测试模板，强调这些技巧能发现既往测试遗漏的缺陷，也可促使开发者从设计层面预防漏洞。

---

## 6. 让Proton口碑反转的并非AI

**原文标题**: It wasn't AI that flipped Proton's charge

**原文链接**: [https://blog.raed.dev/posts/proton-loser-thinking/](https://blog.raed.dev/posts/proton-loser-thinking/)

404 Media近期披露隐私邮箱公司Proton内部争议：一名工程师在安全Slack频道请求多留几天对新代码做渗透测试，CEO Andy Yen竟回称这是"废话和输家的想法"，要求团队减少手写代码、更多依赖AI。员工AI使用率还被与是否留任挂钩。然而作者强调，问题核心并非AI本身——借助AI写代码已是行业常态，关键在于是否有代码审查、测试与问责机制。真正刺眼的是CEO当众羞辱提出安全顾虑的工程师，员工被迫为生计配合。Proton作为隐私安全公司，审慎与慢节奏本身就是用户付费购买的核心价值，一次安全漏洞即可能暴露用户邮件，后果不堪设想。事后有员工在Reddit上试图为CEO开脱，称其只是反对测试拖慢进度，作者认为这更像拙劣的危机公关，与真实的用户关切背道而驰。作为多年Proton付费用户，作者坦言已不确定是否还愿意继续向朋友推荐这一品牌，最终取决于敢于提出安全审慎的工程师，能否战胜一个痴迷交付速度、将自身产品护城河视为绊脚石的管理层。

---

## 7. 用JEPAs证明并改进柏拉图表征假说

**原文标题**: Proving and improving the Platonic Representation Hypothesis with JEPAs

**原文链接**: [https://arxiv.org/abs/2610.39302](https://arxiv.org/abs/2610.39302)

本文针对"不同模态模型是否会收敛到统一世界表征"这一核心问题，将柏拉图表征假说（PRH）提升为严格定理。主要贡献有三：（1）证明联合嵌入预测架构（JEPAs）在任意模态上分别训练时，若正样本对为同一场景的"好视图"且视差有界，则所学表征至多相差一个旋转；（2）揭示下一词预测本质上是以文档片段为"坏视图"的JEPA，故语言模型仅能依赖规模与视觉对齐；（3）在14.5万图文对至9.4亿网页图文上验证，发现可外推的对齐标度律。实验表明，"好视图"训练所需样本量仅为下一词预测的1/42；1.09亿参数文本JEPA与DINOv2及CLIP图像编码器的对齐质量超越所有受测语言模型（最大720亿参数）及CLIP文本编码器。仅需一次旋转，独立训练的编码器即可充当图像描述器（COCO CIDEr 0.838）；在最新无配对基准上，该文本JEPA在ImageNet-100的零样本准确率（64%）超越8B以下语言模型的最高56%。结论：正视图而非单纯规模，是构建柏拉图表征的关键杠杆。

---

## 8. 电网停电期间的双向充电

**原文标题**: Bidirectional charging during grid outages

**原文链接**: [https://www.jefftk.com/p/bidirectional-charging-during-grid-outages](https://www.jefftk.com/p/bidirectional-charging-during-grid-outages)

摘要：作者探讨了在停电时利用电动汽车大电池配合家用太阳能实现"双向充电"（晴天太阳能给车充电、车为家供电）以替代小型储能电池的可行性。然而，目前主流车企的V2H（车到家庭）功能均为单向放电模式：通用汽车的能源家庭网关明确不支持停电期间充电；福特F150闪电的自动家庭备用电源已随车型停产；起亚搭配Wallbox Quasar 2虽理论可行，但实际使用问题多，且太阳能充电与V2H不能同时运行。唯一能实现停电期间太阳能反向给车充电的方案是特斯拉PowerShare搭配赛博皮卡，但价格远超家庭储能电池方案。Enphase虽计划推出双向充电桩，目标2026年第四季度量产，但实际可能推迟至2027年以后，且需搭配特定新款电动车。作者认为自己需要尽快部署备用电源以应对不确定的局势，不愿长时间等待，因此最终决定仍安装Enphase 10C小型应急电池，而非寄望于尚不成熟的双向充电生态。此外，作者提到目前家庭共用一辆2013年本田飞度混动，未来换车可能选择插混或纯电，但因用车频率低、长途出行比例高，并非纯电的理想用户。

---

## 9. 意大利农民阁楼中发现神秘种子，种出"奇迹小麦"

**原文标题**: An Italian farmer found some unknown seeds in his attic and planted them

**原文链接**: [https://www.smithsonianmag.com/science-nature/italian-farmer-found-unknown-seeds-attic-with-nothing-lose-planted-them-result-biblical-180989644/](https://www.smithsonianmag.com/science-nature/italian-farmer-found-unknown-seeds-attic-with-nothing-lose-planted-them-result-biblical-180989644/)

20世纪90年代初，意大利帕尔马附近农民克劳迪奥·格罗西在清理阁楼时，发现一袋曾祖父留下的未知种子。种子竟长出一种高近两米、单株结七穗、麦粒呈五彩的古怪小麦，格罗西将其命名为"奇迹小麦"。经帕尔马大学检测，该谷物为棱麦（Triticum turgidum），原产中东，曾广泛种植于意大利，后因20世纪初意大利政府推行高产品种而消失。奇迹小麦耐旱、无需化肥，且富含磷、铁及多种氨基酸，但面筋含量低，面包不易发酵；格罗西与老面包师傅合作，通过小批量醒发和减少揉搓解决了这一问题，并推动有机面粉进入市场。文章同时梳理了现代小麦的演变：墨索里尼的"小麦之战"、美国大萧条与黑风暴、"绿色革命"虽大幅增产，却削弱了土壤健康和作物抗逆性。在气候变化加剧、极端天气频发的当下，格罗西的奇迹小麦代表着更可持续的农业方向，对推动作物多样性和保障粮食安全具有重要价值。

---

## 10. 联想所谓"加密"指纹U盘，不过是套了壳的未加密SD卡

**原文标题**: Lenovo's 'encrypted' fingerprint USB is just an unencrypted SD card in a case

**原文链接**: [https://www.reddit.com/r/technology/comments/1xl2pr3/lenovos_encrypted_fingerprint_usb_drive_is_just/](https://www.reddit.com/r/technology/comments/1xl2pr3/lenovos_encrypted_fingerprint_usb_drive_is_just/)

摘要：无法访问该文章链接。

---

## 11. Novellas with Groff

**原文标题**: Novellas with Groff

**原文链接**: [https://movq.de/blog/postings/2026-10-31/0/POSTING-en.html](https://movq.de/blog/postings/2026-10-31/0/POSTING-en.html)

文章之前已经处理过

---

## 12. 电力系统中同步效应引发的一分钟周期频率扰动

**原文标题**: One-minute frequency disturbances from synchronization in power systems

**原文链接**: [https://www.nature.com/articles/s41560-026-02144-0](https://www.nature.com/articles/s41560-026-02144-0)

摘要：电力系统正演变为电力电子与数字控制深度耦合的网络-物理基础设施。本文通过对全球12个电网的频率数据进行傅里叶分析，发现所有电网均存在精确1分钟周期的窄带振荡。该振荡波形表现为每分钟初频率最高、随后逐步下降，具有显著昼夜调制且多年保持相位一致，排除了机电谐振等固有模式的解释。研究揭示其根源为不间断电源（UPS）及电池储能系统中时钟同步的控制软件所引发的周期性功率需求尖峰，该信号跨越多个电压等级传播至输电侧。近年来该振荡振幅持续增大，加剧水电机组磨损，已推动部分电网实施更严格的调频规范。由于该机制是依赖外部时钟或周期软件的一切数字受控设备的共性特征，电池储能、数据中心及物联网的快速发展将进一步放大此类网络-物理功率振荡，亟需从控制设计源头加以抑制。

---

## 13. 世维光电启动无稀土白光发射器量产，芯片小至10微米

**原文标题**: Seoul Viosys begins production of rare-earth-free white light emitter

**原文链接**: [https://www.semiconductor-today.com/news_items/2026/oct/seoul-291026.shtml](https://www.semiconductor-today.com/news_items/2026/oct/seoul-291026.shtml)

摘要：韩国世维光电（Seoul Viosys）宣布量产第三代WICOP（晶圆集成芯片直贴PCB）技术——WICOP 3，这是全球首款无稀土、无封装白光微LED，芯片可小至10微米。传统白光LED依赖氧化钇铝（YAG）等稀土材料，而WICOP 3仅用氮化镓产生白光，不含稀土、塑料、硅胶及铅框架，成本约为传统白光LED的一半，且寿命可达数十年。首批量产芯片尺寸为25µm×10µm，光通量0.015流明，光效接近100流明/瓦，公司计划两年内提升至200流明/瓦。应用方面，该芯片可嵌入墙纸或玻璃实现无灯具空间照明，也适用于AR眼镜显示与AI光互连。在AI数据密集传输场景下，1000颗约10µm芯片组成1mm²阵列，传输速度提升10倍、功耗降至十分之一。世维光电与母公司首尔半导体将于2026年第四季度正式量产，优先供应尊重其知识产权的现有客户，并积极寻求AR显示及AI光通信领域上下游供应链合作伙伴。市场机构Omdia预测，该技术结合AR应用五年内将催生约600亿美元新市场。

---

## 14. 边疆航空疑似遭遇数据泄露

**原文标题**: Frontier Airlines Likely Breached

**原文链接**: [https://www.reddit.com/r/frontierairlines/comments/1xl20e8/psa_email_scam/](https://www.reddit.com/r/frontierairlines/comments/1xl20e8/psa_email_scam/)

无法访问该文章链接。

---

## 15. 斯图尔特教会我们：良善之人当如何善用权力

**原文标题**: Patrick Stewart taught us what good men do with power

**原文链接**: [https://www.vox.com/politics/508526/patrick-stewart-jean-luc-picard-star-trek-liberalism](https://www.vox.com/politics/508526/patrick-stewart-jean-luc-picard-star-trek-liberalism)

文章以《星际迷航》标志性演员帕特里克·斯图尔特的逝世为引，回顾其经典角色——进取号舰长皮卡德所承载的政治寓意。《下一代》诞生于冷战尾声，以联合星舰联邦为原型描绘了一个由单一强权主导却以仁慈治理的银河秩序：皮卡德用足以毁灭星球的战舰运送疫苗，象征"正义地行使权力"的理想。对比之下，《发现号》与《皮卡德》系列映射了特朗普时代美国制度的崩塌与信任危机，当年"制度主义自由主义"所依托的乐观信念已难以为继。然而，作者援引阿西莫格鲁与罗宾逊《国家为什么会失败》的论点——可持续繁荣有赖于兼具包容性经济制度与强力中央政府——论证即便现实远离乌托邦，良性制度仍是唯一可行路径。文章呼吁社会继续为下一代提供如皮卡德、阿提克斯·芬奇这样的角色典范，因为他们终将掌握巨大权力，唯有以正义与包容行使之，才可能维系人类最接近乌托邦的文明成就。

---

## 16. Show HN：OmniDiff——用 Rust 编写的开源极速内容感知型 Git 差异对比工具

**原文标题**: Show HN: OmniDiff – Opensource, super fast, content aware Git difftool, in Rust

**原文链接**: [https://github.com/ivankovic/omnidiff](https://github.com/ivankovic/omnidiff)

OmniDiff 是用 Rust 编写的开源内容感知型 Git 差异对比工具，以极快速度呈现代码与二进制文件的变更。三大核心优势：速度上，中位数仅 4.2ms，97.6% 的对比在 100ms 内完成；鲁棒性上，可处理 99.95% 的代码变更，基于约 7500 个开源仓库、超 200 万个文件变更验证；内容感知上，98.8% 的变更使用专用算法——支持 25 种语言的 tree-sitter 结构化对比，以及图片（逐像素）、字体（逐字形）、压缩包（逐文件）、PDF（逐页）、消息目录等二进制内容的内容级差异展示。工具提供交互式 TUI（支持 Kitty/Sixel/iTerm2 图形协议）、浏览器查看、无头批处理及 JSON 输出模式。集成方面，可作为 Git difftool 和 Jujutsu 后端，并提供 VS Code 扩展与 Neovim 插件。安装方式涵盖 cargo、预编译包、Homebrew、apt、Nix 等。采用 AGPLv3 许可证，另提供商业许可。

---

## 17. 巴西法院因律师诉讼文书中实施提示注入予以处罚

**原文标题**: Brazilian Court Sanctions Lawyers for Prompt Injection in Court Filing

**原文链接**: [https://jetstream.security/insights/brazilian-court-sanctions-prompt-injection-filing/](https://jetstream.security/insights/brazilian-court-sanctions-prompt-injection-filing/)

2026年10月29日，一则AI咨询报告聚焦"AI风险经济学"，报道了巴西法院对律师在诉讼文书中实施提示注入（Prompt Injection）行为的制裁案例。该事件标志着法律司法领域首次出现因恶意利用AI漏洞而受到司法处罚的先例，凸显了AI深度嵌入法律流程后引发的新型安全与合规风险。报告核心观点指出，企业董事会已具备成熟的资本治理经验，AI支出与风险管理应遵循同等严格的治理纪律，且须将责任落实到每一个AI代理及其对应的负责人，而非停留于笼统的制度层面。这一案例与治理理念相结合，传递出明确信号：随着AI代理广泛应用于法庭文书处理等场景，针对提示注入等攻击手段的防范机制和问责体系亟需建立，AI安全的经济成本与管理责任已成为董事会必须正视的核心议题。

---

## 18. JavaScript框架的AI成本

**原文标题**: The AI cost of JavaScript frameworks

**原文链接**: [https://nolanlawson.com/2026/10/28/the-ai-cost-of-javascript-frameworks/](https://nolanlawson.com/2026/10/28/the-ai-cost-of-javascript-frameworks/)

摘要：作者批评前端社区长期以"感觉"而非证据选择框架，并指出在AI代理编程时代，"某框架更适合AI"等论断同样缺乏数据支撑。为此，他设计了一项基准测试：让Claude代理分别用Next.js、Nuxt、SvelteKit、Astro、Angular等12种框架及元框架，依据同一规范构建宝可梦信息应用，取5次运行的中位数对比。测试涵盖构建成本、耗时、token消耗及Lighthouse评分。结果显示：Hono+htmx与Astro成本最低（约2.7美元），Angular与Gracile+Lit最高（近5美元）；JS传输量从Astro的0KiB到Next.js的142KiB不等；性能与可访问性评分普遍接近满分，但总阻塞时间（TBT）和最大内容绘制（LCP）差异明显，MPA方案显著优于SPA。作者承认实验存在随机性且应用偏内容型，但核心结论清晰：AI代理构建场景下，框架间实际成本差异远超社区宣传，轻量乃至零JS方案往往更具性价比，而"为AI而选框架"的说法仍应先用基准数据说话。

---

## 19. Nibnib：追求极致解压速度的图像压缩格式

**原文标题**: Nibnib: Image compression with extreme decompression speed

**原文链接**: [https://github.com/raphlinus/nibnib](https://github.com/raphlinus/nibnib)

Nibnib是一种以超快解压速度为核心目标的图像压缩格式，源于RP2350微控制器DVI输出实验，在约6个时钟周期/像素的约束下完成像素读取、查表与缓存写入。其核心采用调色板存储颜色差值而非绝对值，在渐变区域质量超越普通调色板图像。解码时每次读取一个字节查表得32位值，与上一像素双倍值相加，同时产出两个RGB565像素，实现4bpp压缩，内循环仅含移位、乘法与加法。编码则严重不对称，通过Floyd-Steinberg误差扩散在调色板选择与码字选择两个维度进行搜索，由小差值立方体与高斯随机值构成调色板。当前贪心编码存在边缘右侧拖影，未来可通过蛇形编码、自适应调色板及更深层搜索提升质量，而解码速度不受影响。文件格式极简：宽高头、256个32位调色板及顺序行数据，无元数据，专为与解码器紧密集成设计而非归档用途。项目采用Apache 2.0与MIT双许可。

---

## 20. 世界辐射地图

**原文标题**: Radiation Map of the World

**原文链接**: [https://radiaverse.com/](https://radiaverse.com/)

本文摘要：该条目为"世界辐射地图"平台上的一条公众辐射观测记录，反映了一处天然放射性背景值略高的地点。记录者为普通市民，在公共可及区域散步时偶然发现便携式辐射检测仪报警，观察到地表沙子呈红色，经判断该处为含钍砂混合区域，辐射来源为天然放射性矿物。测量读数值为213（通常对应微西弗/小时或微伦琴/小时量级），背景辐射虽高于一般地区但仍属自然地质成因，非人为污染所致。记录日期为2026年10月1日。世界辐射地图旨在汇集全球各地用户上报的辐射数据，帮助公众了解各地自然及人工放射性水平分布，该条记录属于天然辐射热点类别，提醒公众经过此类区域时注意防护，同时表明该区域的轻微辐射增幅系地质本底所致，不必过度恐慌。

---

## 21. TCP Use-After-Free: CVE-2026-98432 / CVSS 9.8

**原文标题**: TCP Use-After-Free: CVE-2026-98432 / CVSS 9.8

**原文链接**: [https://atlasum.net/blog/cve-2026-98432-linux-ipv4-tcp-uaf](https://atlasum.net/blog/cve-2026-98432-linux-ipv4-tcp-uaf)

文章之前已经处理过

---

## 22. Show HN：phoria2——从 Canvas 到 WebGL 2 的轻量级 3D 库重构

**原文标题**: Show HN: I rebuilt my old canvas 3D library as a small WebGL 2 library – phoria2

**原文链接**: [https://kevs3d.co.uk/phoria2/](https://kevs3d.co.uk/phoria2/)

phoria2 是一款基于 WebGL 2 的轻量级 JavaScript 3D 库，适用于图表、标注场景、仪表盘及产品展示，API 简洁易学，半天即可上手。该库从设计之初便兼顾人类开发者与 AI 编码代理的体验，内置 PBR 材质、实例化、点/线/标签、对象拾取、阴影、粒子及 glTF 模型加载等完整能力。库体积极小，零运行时依赖，纯 ES 模块，视图仅在内容变化时重绘，兼顾轻量与性能。参数校验机制会对每项选项进行检查，报错时直接给出修复建议，方便人工排查或让 AI 代理自动纠错。项目以 MIT 协议开源，通过 npm install phoria2 即可安装，源码、文档及 React 示例均托管于 GitHub。phoria2 是作者 Kevin Roast 对 2013 年作品 phoria.js 的全面重写——后者以 Canvas 2D 上下文实现 3D 渲染，彼时 Web 3D 开发仍属前沿探索。

---

## 23. Memdoor：五个Qwen3.8-27B小模型协作在LiveCodeBench Hard上超越Fable 5

**原文标题**: Memdoor: A team of 5 Qwen3.8-27B models beats Fable 5 on LiveCodeBench Hard

**原文链接**: [https://github.com/guregodevo/memdoor/tree/main/examples/workflows/team-solve](https://github.com/guregodevo/memdoor/tree/main/examples/workflows/team-solve)

摘要：Memdoor提出一种多模型协作编程框架，由5个Qwen3.8-27B实例分任规划、双路构想、求解、管理与修复角色，仅通过磁盘文件通信、每次从零上下文启动，最终由脚本而非模型判定成败。该工作流以8个YAML文件实现，基于GVS5H方法。在LiveCodeBench Hard前10题（每题5次尝试）测试中，通过率达9.8/10，与原作者harness的9.6持平，明显高于Fable 5单次调用的8.0。流程为：规划→双路并行构想→求解→测试→审查→修复→验证，各步骤为独立YAML文件构成的DAG。单次运行中位耗时40分钟、成本约0.39美元。文章明确局限：样本仅50次运行，9.8与9.6统计上无显著差异；竞赛数据可能已入训练集，无法排除污染；Fable 5列未在同等harness下复现。工作流基于开源引擎mario，支持OpenRouter及本地模型（Ollama、vLLM等），用户经CLI安装后替换任务文件即可运行，修改角色仅需编辑对应提示词。

---

## 24. 烘焙纸简史：我们如何让烘焙用纸走向完美（2019）

**原文标题**: Parchment Paper History: How We Got Paper Perfect for Baking (2019)

**原文链接**: [https://tedium.co/2019/11/21/nonstick-parchment-paper-history/](https://tedium.co/2019/11/21/nonstick-parchment-paper-history/)

本文追溯了烘焙纸（parchment paper）从古代到现代的演变历程。"Parchment"原指经处理用于书写的动物皮（羊皮、牛皮），历史可追溯至上古。1847年，法国科学家普马雷德与菲吉耶发明以植物纤维纸经硫酸化学处理制成"羊皮纸"的工艺。1859年，研究者霍夫曼提出其厨房用途，用以替代易腐臭的动物薄膜；19世纪末该材料在德国被称为"backpapier"，并广泛用于黄油等食品保鲜包装。真正的转折来自硅油涂层：1945年道康宁公司成立，致力于推广硅基材料；1950年代硅油涂层烘焙纸问世，1957年已有食谱推荐其用于蛋糕脱模；1979年FDA将硅酸盐列为"一般认为安全"物质。2000年代后，受美食节目、食品博客等烹饪文化浪潮推动，烘焙纸迅速走入千家万户。文章同时郑重提醒：烘焙纸与蜡纸不可混用——蜡纸不耐高温，误用可能引发火灾。烘焙纸的本质是植物纤维纸与硅油涂层的结合，是历代发明交汇的产物，如今已成为现代厨房中 indispensable 的实用工具。

---

## 25. Show HN：举起手机扫描地貌，即时了解地质信息

**原文标题**: Show HN: Point your camera at a landscape to learn about its geology

**原文链接**: [https://outcrop.rocks/](https://outcrop.rocks/)

Outcrop 是一款基于增强现实（AR）技术的地质科普应用。用户只需将手机对准峡谷岩壁、公路路堑或远处山脊等自然地貌，应用即可将地质地图实时叠加在真实景观之上，帮助用户直观识别眼前的岩石与地质结构。其核心功能包括：自动标注屏幕中央所对应的岩石名称；在视野范围内标记可见的山峰与湖泊等地貌特征；用户还可手动选定某类岩层，选中区域保持鲜明色彩，其余区域自动变为灰色，从而清晰辨别不同地质年代或岩性分布。该应用将传统纸质地质地图转化为沉浸式 AR 体验，让非专业用户在户外也能轻松学习地质知识，显著降低了地质学的入门门槛。

---

## 26. 美国就业回暖或促使美联储再度加息

**原文标题**: US Jobs Pickup May Keep Fed on Track to Hike Rates Again

**原文链接**: [https://www.bloomberg.com/news/articles/2026-10-31/us-jobs-pickup-may-keep-fed-on-track-to-hike-rates-again](https://www.bloomberg.com/news/articles/2026-10-31/us-jobs-pickup-may-keep-fed-on-track-to-hike-rates-again)

无法访问该文章链接

---

## 27. 护士拉响警报："护理版Uber"应用加速推动医疗行业去监管

**原文标题**: Nurses Sound Alarm as 'Uber for Nursing' Apps Push to Deregulate Healthcare

**原文链接**: [https://nurse.org/news/uber-for-nursing-gig-apps-report/](https://nurse.org/news/uber-for-nursing-gig-apps-report/)

2026年4月21日，AI Now研究所发布《"护理版Uber"报告（第二版）》，揭露ShiftKey、Clipboard Health、CareRev等零用工平台正在至少17个州开展立法游说，试图将自身从医疗人力配置法规中豁免。这些平台采用AI驱动的动态定价、竞价拍卖及评分体系，护士互相竞价争取排班，部分平台甚至利用数据经纪人依据护士债务状况实施差别定价。平台将护士归类为独立承包商，使其丧失最低工资、加班费、工伤赔偿和失业保险等保障。十大平台累计融资约14亿美元，其中ShiftKey估值20亿美元。立法博弈方面，八个州已推进豁免法案，而纽约州于2025年明确将此类平台认定为医疗人力代理机构，要求注册及季度工资报告，迫使Clipboard Health等退出该州市场。平台联合亚马逊、Uber通过"劳动力创新联盟"开展超110万美元联邦游说。报告警告，拍卖式竞价与算法定价可能压低行业整体薪酬，设施对平台的高度依赖（如某科罗拉多养老院年支出290万美元）表明该模式短期内不会消失。报告建议护士密切关注平台评价机制与取消条款，并跟踪各州立法动态。

---

## 28. 理解邮件加密

**原文标题**: Understanding Email Encryption

**原文链接**: [https://www.fastmail.com/blog/email-encryption/](https://www.fastmail.com/blog/email-encryption/)

邮件加密并非单一概念，而是在不同层面针对不同威胁的多层防护。文章首先梳理威胁模型，从常见的账户入侵、垃圾邮件误判到罕见的网络窃听与数据泄露。随后依次介绍各层加密手段：连接层采用TLS 1.3配合PKI与证书透明度，确保用户与邮件服务器间通信安全；服务器间传输依赖机会性TLS，MTA-STS与DANE试图增强防护，但DANE因DNSSEC故障风险高，业界目前倾向MTA-STS；静态加密（全盘加密）可防物理窃取，但密钥由服务方持有，面对法律请求时无法保密。零访问加密（如Proton Mail）使服务商无法读取邮件，但代价显著：搜索受限、标准客户端不兼容、密码丢失即数据永久丢失，且新邮件仍可在入站时被截取、元数据未加密。端到端加密（PGP/S-MIME）虽有数十年历史，却因密钥分发与轮换难题、用户操作门槛高、与搜索及反钓鱼功能根本冲突等原因，始终未能普及。文章强调，安全不仅是机密性，可用性与完整性同样重要，用户应根据自身威胁模型在安全性与便利性之间做出合理取舍。

---

## 29. 兄弟二人零融资深耕SaaS二十年

**原文标题**: Running a bootstrapped SaaS for 20 years with my brother

**原文链接**: [https://blog.zamzar.com/2026/10/30/20-years-766-million-files-two-chameleons/](https://blog.zamzar.com/2026/10/30/20-years-766-million-files-two-chameleons/)

2006年，英国兄弟Chris与Mike Whyley仅凭拨号上网和一本HTML4旧书，创立了在线文件转换平台Zamzar，其名取自卡夫卡《变形记》中的巨虫形象。二十年后的今天，这家零融资、无风投的小型英国独立公司已为超5.5亿用户提供7.66亿次文件转换，支持2128种格式互转，日均API请求逾百万，较创立时的150种转换能力增长近15倍。用户遍布全球，包括南极科考站、梵蒂冈及仅1499人的太平洋岛国托克劳；团队曾协助PowerPoint发明人找回旧文件，也与互联网先驱Vint Cerf合作保存数字历史，期间更收到过Google的律师函、赞助过苏格兰冰壶冠军队。兄弟二人始终拒绝追逐Web 2.0、区块链、元宇宙等浪潮，坚持将部分利润捐予60余个慈善机构与 schools。文末，两位创始人感谢一路同行的团队与数以万计的用户，幽默收尾："某处仍有文件打不开，我们该回去干活了。"全文以轻松笔触展现了小团队长久稳健、以人为本的创业哲学。

---

## 30. RAMBO：利用计算机内存总线发射隐蔽无线电信号窃取隔离主机机密信息

**原文标题**: Leaking Secrets from Air-Gap Computers by Spelling Radio Signals from RAM (2024)

**原文链接**: [https://arxiv.org/abs/2409.02292](https://arxiv.org/abs/2409.02292)

摘要：气隔（隔离）计算机因物理断网而被视为高度安全，本文提出一种绕过该防护的攻击方法。研究者指出， compromised 主机上的恶意软件可通过操控内存总线（RAM）产生射频信号，将敏感数据以隐蔽无线电方式编码并外传。可泄露的信息包括文件、图像、键盘记录、生物特征及加密密钥等。攻击方仅需配备软件定义无线电（SDR）接收设备与低成本天线，即可在远处截获并解码原始信号，还原为二进制数据。论文详细阐述了该攻击的设计与实现方案，给出了实验评估结果，实现了1000比特/秒的漏数据率，并探讨了多种快速变体方法。此外，文章对该"带外"气隔威胁的相关研究进行了梳理，并提出了相应的防护对策。该工作最初发表于2023年北欧信息安全系统会议（Nordic Conference on Secure IT Systems），后于2024年9月上传至arXiv。

---

