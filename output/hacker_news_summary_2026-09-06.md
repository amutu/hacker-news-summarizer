# Hacker News 热门文章摘要 (2026-09-06)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 人生真正的奢侈

**原文标题**: The Luxuries in Life

**原文链接**: [https://feld.com/archives/2026/09/the-real-luxuries-in-life/](https://feld.com/archives/2026/09/the-real-luxuries-in-life/)

摘要：作者借美国劳动节周末，回忆儿时在达拉斯以开学为暑假终点的记忆，感叹自己已年近六十一，开始更多思考真正重要的事物。文中提到，阵亡将士纪念日与劳动节恰如夏季的"首尾书签"，而如今这份节日的意义已悄然不同。好友艾米发来一份"人生真正奢侈品"清单：时间、健康、宁静的心境、从容的清晨、自由出行的能力、无愧疚的休憩、安稳的睡眠、平淡安稳的日子、有意义的对话、家常饭菜、所爱之人，以及爱你的人。作者称这是一份美好的清单，并祝愿读者享受这个悠长的周末。全文语言朴实温暖，没有宏大叙事，却以一位年过半百者的通透视角，将"奢侈"从物质转向内心与情感，传达出对简单、健康、亲密关系的珍视，读来令人沉静而感动。

---

## 2. 用OCaml学习编程

**原文标题**: Learn Programming with OCaml

**原文链接**: [https://usr.lmf.cnrs.fr/lpo/](https://usr.lmf.cnrs.fr/lpo/)

本书《用OCaml学习编程》由Sylvain Conchon与Jean-Christophe Filliâtre编著，原为法语版本，由Urmila Nair翻译为英文，翻译工作由OCaml软件基金会资助完成。全书采用CC BY-SA 4.0开放许可协议，可供公众自由获取与传播。官方提供PDF（1.9MB）和EPUB（2.3MB）两种电子版供下载，并附有配套源代码。读者如发现书中存在错别字或错误，可通过指定渠道提交反馈。本书旨在以OCaml语言为媒介，系统引导读者学习编程，适合编程初学者及希望了解函数式编程思想的读者。

---

## 3. 60美元游戏PC——AMD BC-250（2025年）

**原文标题**: The "$60 Gaming PC" – AMD BC-250 (2025)

**原文链接**: [https://devquasar.com/hardware/the-60-gaming-pc-amd-bc-250/](https://devquasar.com/hardware/the-60-gaming-pc-amd-bc-250/)

AMD BC-250原本是ASRock面向加密货币矿场推出的单板服务器核心板，搭载PS5 APU中未通过品质筛选的"残次品"芯片。该板配备6核12线程Zen 2处理器、24个计算单元的RDNA 2架构GPU及16GB GDDR6统一内存，具备DP、USB、网口和M.2 NVMe等接口，实为一台完整的小型PC。截至2025年底，eBay上约60至100美元即可入手。社区实测表明，经调优后可运行《赛博朋克2077》《GTA 5》《CS2》等游戏，性能接近入门级独显。但该板并非即插即用：需拆解改装原装服务器风道散热，可加装120mm风扇；须刷写自定义BIOS调整CPU与GPU内存分配，将512MB划为等效显存；因缺乏专用显卡驱动，推荐使用Manjaro等Arch系Linux发行版，Steam Linux版游戏运行流畅；外壳则需借助3D打印定制。作者已将所有步骤整理至GitHub开源仓库，供爱好者参考。

---

## 4. 透视 Rust 虚表：dyn Trait 的内存实现解析

**原文标题**: Visualizing Rust's Vtables: How dyn Trait Works In Memory

**原文链接**: [https://sofiabelen.github.io/projects/visualizing-rusts-vtables-how-dyn-trait-works-in-memory/](https://sofiabelen.github.io/projects/visualizing-rusts-vtables-how-dyn-trait-works-in-memory/)

本文通过内存实验解析 Rust dyn Trait 的底层机制，并与 C++ 对比，强调 Rust 并非"C++ 换语法"，二者哲学迥异。静态分发（单态化）类比 C++ 的 CRTP，编译期为每种类型生成独立函数，零运行时开销。动态分发用于 Vec 存放混合类型场景：&dyn Trait 本质是 16 字节"宽指针"（数据指针＋虚表指针），同一类型实例共享虚表，且虚表为外部静态数据而非嵌入对象内部，多态决策发生在调用点而非类型定义处。零大小类型（ZST）体现 Rust 通过所有权而非地址追踪对象身份，空结构体占 0 字节。虚表按（类型×特征）对独立生成，同一对象实现多特征时拥有多张虚表但共享数据指针。对象安全性要求特征方法不能返回 Self 或含泛型参数，否则运行时无法确定返回值大小或虚表条目数。

---

## 5. 德国私营火箭创历史 首枚从欧洲本土进入轨道

**原文标题**: Private German rocket makes history, reaches orbit from European soil

**原文链接**: [https://www.space.com/space-exploration/launches-spacecraft/isar-aerospace-second-launch-norway-andoya-spaceport-spectrum-rocket](https://www.space.com/space-exploration/launches-spacecraft/isar-aerospace-second-launch-norway-andoya-spaceport-spectrum-rocket)

摘要：2026年9月5日，德国太空公司Isar Aerospace在挪威安多亚航天中心成功发射Spectrum火箭，约七分钟后进入地球椭圆轨道，成为人类历史上首枚从欧洲本土入轨的火箭，具有里程碑意义。Spectrum为两级火箭，高28米，近地轨道运力约1000公斤。其首飞（2025年3月）因排气阀意外开启及姿态失控而失败，公司在两个月内完成调查并整改。第二次发射"向前向上"任务历经加压阀故障、恶劣天气、船只闯入、压力容器泄漏及流体系统异常等多次推迟，最终成功。本次任务搭载5颗立方星及1项科学实验。Isar位于慕尼黑的工厂年产能超30枚，目标是将Spectrum打造为中小型卫星的中型运载工具。欧洲航天局表示，此次发射无论成败都将推动欧洲发射服务市场走向更多元、更具韧性，欧洲航天运输正迎来新纪元。

---

## 6. Discovery of a new OpenAI agent message board

**原文标题**: Discovery of a new OpenAI agent message board

**原文链接**: [https://collusion.wiki/](https://collusion.wiki/)

文章之前已经处理过

---

## 7. Chromium 全版本沙箱逃逸远程代码执行漏洞遭在野利用

**原文标题**: Actively exploited sandbox RCE in all Chromium versions

**原文链接**: [https://nvd.nist.gov/vuln/detail/cve-2026-85046](https://nvd.nist.gov/vuln/detail/cve-2026-85046)

摘要：美国国家漏洞数据库（NVD）发布安全公告，披露一项影响所有 Chromium 浏览器版本的沙箱逃逸导致远程代码执行（RCE）漏洞，且该漏洞已在现实攻击中被积极利用。攻击者一旦利用该漏洞成功突破 Chromium 的沙箱隔离机制，便可在用户系统中以更高权限执行任意恶意代码，可能导致数据窃取、后门植入或进一步横向渗透等严重后果。由于影响范围覆盖 Chromium 全版本，包括基于 Chromium 内核开发的众多主流浏览器（如 Chrome、Edge、Brave、Opera 等）均可能受到影响，用户面极广。NVD 建议相关用户立即更新至官方修复版本，并在等待补丁期间采取临时缓解措施，如启用浏览器内置安全策略、限制可疑站点访问、配合终端安全软件进行防护等。鉴于该漏洞处于活跃利用状态，各类企业应将其纳入高优先级应急响应流程，对内部终端进行排查与加固，防范已被利用的在野攻击。

---

## 8. Nitter 在域名被封锁后可用实例数量反而有所增长

**原文标题**: Nitter has more working instances than before the takedowns

**原文链接**: [https://codeberg.org/mv12star/shitter/wiki/Instances](https://codeberg.org/mv12star/shitter/wiki/Instances)

无法访问该文章链接。

---

## 9. Balrogg——高压缩无损 Vorbis/Opus 重压缩机（最高 15%）

**原文标题**: Balrogg: Demonically compacting (up to 15%) lossless Vorbis/Opus recompressor

**原文链接**: [https://github.com/iczelia/balrogg](https://github.com/iczelia/balrogg)

Balrogg 是一款无损重压缩工具，可对 Ogg Vorbis 和 Opus 音频文件进行二次压缩，.ogg 文件通常缩小 8%–12%，.opus 文件缩小 3%–8%，理论最高达 15%。核心命令为 e（压缩）和 d（解压），支持 -b 批量多线程处理、-1 至 -9 的努力级别（级别越高压缩率越大但编码越慢），以及 --progress 进度显示。程序以 C99 编写，仅依赖 C 标准和数学库，通过 configure 与 make 构建安装。退出状态码区分成功、输入异常、用法错误、文件访问错误及内部错误五类。兼容性方面，Opus 仅支持单声道或立体声（通道映射族 0），拒绝多通道及链接流；对校验和损坏、缺少流结束页等文件直接拒绝处理。项目还支持 Windows（MinGW，含 Windows 95/i486 目标）及 MS-DOS（DJGPP）交叉编译。采用 GPL v3 许可，由 Kamila Szewczyk 维护，托管于 GitHub；v2.0 前后版本互不兼容。

---

## 10. 施特芬多面体

**原文标题**: Steffen's Polyhedron

**原文链接**: [https://www.gregegan.net/SCIENCE/Steffen/Steffen.html](https://www.gregegan.net/SCIENCE/Steffen/Steffen.html)

施特芬多面体是一种柔性多面体，即各三角形面形状不变而整体可连续变形。已证明凸多面体不可能柔性，1977年Connelly找到首个非自交球面拓扑柔性多面体。Klaus Steffen的版本仅14个三角形面，更为简洁；其9个顶点曾被视为最优，但2024年Gallet等人已发现8顶点的新解。文章详述了构造过程：先用四个三角形沿非平面四边形ABCD搭起一个四棱锥（AB=CD=12，BC=AD=10，锥顶P到四顶点距离分别为10、5、12、11），该结构有一个自由度；再沿AD、CD各加一个三角形，E点位置由此确定，不增自由度。关键之处在于：尽管四边形可弯曲，距离BE恒为11，因为△ADE≌△CBP、△CDE≌△ABP。取两个这样的六面体沿EC与BC边对配连接（12面、两个自由度），最后补上A₁B₁A₂与A₂B₂A₁两个三角形面，并固定A₁A₂=17消耗一个自由度，所得仍保留一个自由度的多面体即可持续柔性变形。文末附可打印折叠的展开图。

---

## 11. 特普斯特拉键盘

**原文标题**: Terpstra Keyboard

**原文链接**: [http://terpstrakeyboard.com/](http://terpstrakeyboard.com/)

无法访问该文章链接。

---

## 12. Formalizing Fermat's Last Theorem

**原文标题**: Formalizing Fermat's Last Theorem

**原文链接**: [https://www.anthropic.com/research/formalizing-fermats-last-theorem](https://www.anthropic.com/research/formalizing-fermats-last-theorem)

文章之前已经处理过

---

## 13. 维基媒体基金会员工压倒性投票与CWA组建工会

**原文标题**: Wikimedia Foundation Workers Overwhelmingly Vote to Form Union with CWA

**原文链接**: [https://wikiworkersunited.org/announcements/2026-09-04-us-wikimedia-foundation-workers-overwhelmingly-vote-to-form-union-with-cwa/](https://wikiworkersunited.org/announcements/2026-09-04-us-wikimedia-foundation-workers-overwhelmingly-vote-to-form-union-with-cwa/)

2026年9月4日，维基媒体基金会（Wikimedia Foundation）美国员工在全国劳工关系委员会（NLRB）监督的选举中，以压倒性多数投票加入美国通讯工人联盟（CWA）9415分会，正式成立工会。这是全球"维基工人联合"（WWU）运动历经十年争取集体谈判权的重要里程碑。此前，员工于7月以超级多数签署联合授权卡要求工会认可，管理方拒绝后，员工通过法定选举程序最终胜出。此次胜利被视为国际团结的体现，工会计划在英国等地继续推动各司法管辖区的工会承认，为所有维基媒体员工争取合同谈判权利，不论其所在国别、岗位或工时。全球志愿者社区给予强力支持，逾2000名维基编辑发起公开请愿，累计贡献超1500万次编辑，该请愿成为英语维基百科史上支持度最高的请愿。CWA旗下数字员工组织运动（CODE-CWA）表示将全力协助谈判，推动达成保障员工权益的集体合同。

---

## 14. 太空产业缺乏重建战损卫星所需劳动力——RAND报告警示

**原文标题**: Space industry lacks workers needed to rebuild satellites lost in war: report

**原文链接**: [https://www.defensenews.com/industry/techwatch/2026/09/04/space-industry-lacks-workers-needed-to-rebuild-satellites-lost-in-war-report-says/](https://www.defensenews.com/industry/techwatch/2026/09/04/space-industry-lacks-workers-needed-to-rebuild-satellites-lost-in-war-report-says/)

8月31日，兰德公司发布报告《打破玻璃、缺少双手》，指出美国劳动力严重不足，难以在12至24个月内重建与中俄冲突中损失的太空资产，而该周期远短于通常十年左右的卫星更替周期。报告将太空支撑劳动力分三类：设计工程师（仅约7000人可转入太空领域，且面临AI等行业抢人）、技术工人（装配工供需比高达19比1）及红外与抗辐射高级专家（培养需逾15年，70%新博士为外籍）。安全许可审批缓慢（机密超87天、绝密近半年）及"从零激增"导致技能退化是核心瓶颈。兰德建议每年投入500万美元用于奖学金和实习、80万美元研究跨领域再培训，并扩展国家工业技能培训项目，将政策责任归于空军部航天采购主管。受访者鲜少提及以自动化替代人力，兰德将此列为规划盲区。

---

## 15. 伊斯尔航天公司火箭入轨发射[视频]

**原文标题**: Isar Aerospace launch into orbit [video]

**原文链接**: [https://www.youtube.com/watch?v=Ss1DUqLjecc](https://www.youtube.com/watch?v=Ss1DUqLjecc)

该视频来自YouTube平台，标题为"Isar Aerospace launch into orbit"，展示的是德国伊斯尔航天公司（Isar Aerospace）运载火箭入轨发射的画面。伊斯尔航天是一家欧洲民营航天企业，专注于研发中低成本运载火箭。所提供的页面文本未包含视频的具体描述或技术细节，仅呈现了YouTube平台的通用页脚信息，如版权声明、隐私政策、服务条款及Google LLC的联系方式等。从标题可判断，该视频记录了伊斯尔航天一次将载荷成功送入轨道的发射过程，通常涵盖火箭点火升空、箭体分离及入轨等关键阶段。伊斯尔航天近年来致力于推动欧洲商业航天发展，其成功发射对提升欧洲自主进入太空的能力具有重要意义。

---

## 16. 一台荒诞的C64外设、一位哑剧演员与一组糟糕至极的广告

**原文标题**: A bizarre Commodore 64 peripheral, a mime, and some pretty bad ads

**原文链接**: [https://buttondown.com/suchbadtechads/archive/spartan-and-the-mime/](https://buttondown.com/suchbadtechads/archive/spartan-and-the-mime/)

Mimic Systems 于1984年宣布推出Spartan——一款Commodore 64外设，实为一台Apple II+克隆机，需与C64物理拼接共用显示器和打印机以节省成本。然而产品上市前，公司连续近两年在C64杂志上投放广告，主角始终是一位涂着白脸的哑剧演员而非任何实物，堪称80年代科技广告奇景。1986年产品终面世，却已严重错过市场窗口。评测普遍差评：BASIC与Applesoft兼容性差，核心用途沦为键盘直通；选配的DOS卡须拆入1541软驱，极易损坏两种制式磁盘，几乎每篇评测都提及此卡曾让驱动器变砖。19岁首席开发者Brent Marykuca回忆，公司高管每周反复推翻设计、无故解雇员工、管理 draconian，疑似最终卷款出逃南美，公司在售出首台Spartan前即已依法解散。令人玩味的是，这款"弗兰肯斯坦式"外设如今反成收藏宠儿——2024年一台完整套装拍卖价超5500美元，数台亦获数千元出价。迟到了两年的产品，在四十年后终于找到了属于自己的"产品市场契合"。

---

## 17. Intel i9-14900KS 开盖CT扫描

**原文标题**: Delidded Intel I9-14900KS CT Scan

**原文链接**: [https://www.lttlabs.com/articles/2026/09/02/delidded-intel-i9-14900ks](https://www.lttlabs.com/articles/2026/09/02/delidded-intel-i9-14900ks)

Lumafield两年前曾使用Neptune CT扫描仪对开盖的Intel i9-13900K进行计算机断层扫描，近日又对i9-14900KS完成了同款扫描。本次采用120kV Neptune扫描仪，配备2.5mm铜滤镜硬化X射线束，扫描时长达12小时。扫描结果显示，CPU背面密集排布的电容组件为Intel 7工艺节点下微小的晶体管提供瞬时电能，弥补主板VRM因物理距离较远而无法应对的高频快速功耗波动。通过层切片动画，可清晰分辨三层PCB及内部过孔结构，并在顶部捕捉到部分硅结构，尽管下方密集体电容带来一定扫描噪声，但其图案与硅本身的结构仍可区分。对比芯片实际布局，CT图像中能识别出E核与P核的分布，中央水平线为缓存与总线区域，左右两侧分别布置集成GPU、媒体引擎及辅助电路。该扫描为观察现代CPU内部构造提供了交互式可视化体验。

---

## 18. 新加坡地铁（MRT）信息显示类型

**原文标题**: Singapore subway (mrt) information display types

**原文链接**: [https://www.sgtrains.com/technology-infosys.html](https://www.sgtrains.com/technology-infosys.html)

无法访问该文章链接

---

## 19. 止于缓冲：失控列车与液压阻尼缓冲器的较量

**原文标题**: Stopping the Unstoppable: When an unstoppable force meets a dashpot snubber

**原文链接**: [https://practical.engineering/blog/2026/9/1/stopping-the-unstoppable](https://practical.engineering/blog/2026/9/1/stopping-the-unstoppable)

2016年，美国两起列车冲撞尽头墙体的事故暴露了铁路安全防护的致命短板——司机因睡眠呼吸暂停陷入昏睡，人工制动系统彻底失效。本文以桌面物理模型演示，系统梳理了列车尽头防护（缓冲止挡）的工程方案与核心权衡。其本质是动能耗散问题：从空载车皮的百千焦到重载列车的数百兆焦，能量跨越数个数量级。刚性挡车桩结构简单、成本极低，但瞬间冲击产生极高减速度，极易危及乘客安全；滑动摩擦式缓冲器以制动鞋沿轨道滑行耗散能量，行程长、造价低，但受黏滑效应和环境影响，减速不够平稳；液压阻尼器可平滑吸收冲击、自动复位，适用于客运场站，但行程有限、维护复杂，两种方案还可组合为混合系统。在极端场景下，土堆和脱轨器作为终极防线，以牺牲车辆换取周边安全。积极列车控制（PTC）等数字化系统则从源头预防事故。无论采用何种方案，工程师始终面临能量、减速度与可用空间之间的三角权衡，这也是尽头防护看似简单却极为复杂的根本原因。

---

## 20. Statichost.eu – 欧洲静态网站托管

**原文标题**: Statichost.eu – European static site hosting

**原文链接**: [https://www.statichost.eu/](https://www.statichost.eu/)

Statichost.eu 是一家总部位于斯德哥尔摩的欧洲静态网站托管服务商，由创始人 Eric Selin 创立。平台强调从代码部署到 CDN 的整条技术栈均运行于欧洲企业自有基础设施之上，不依赖 AWS、Cloudflare 等美国云服务，致力于用户隐私保护与 GDPR 合规。客户涵盖服务 Braun、Oral-B 等品牌的设计工作室、知名开源项目及全球知名测试框架。核心功能包括：支持从任意 Git 仓库直接部署并兼容主流静态站点生成器；通过 Webhook 在代码推送或 CMS 更新时自动重建站点；提供自定义域名及自动配置免费 SSL 证书；支持即时版本回滚；全球 CDN（内测中）可在保障隐私的同时就近加速；分支与合并请求预览链接即将上线。用户可免费部署首个站点，两分钟内即可完成上线。

---

## 21. 百万红脚隼"失踪"，原来藏在安哥拉

**原文标题**: A Million Falcons Went Missing. Here’s How They Were Found

**原文链接**: [https://www.nationalgeographic.com/animals/article/falcons-migration-angola-falcopolis](https://www.nationalgeographic.com/animals/article/falcons-migration-angola-falcopolis)

红脚隼是一种独特的群居猛禽，在欧亚地区以殖民方式繁殖，曾因人类大规模驱逐其寄居的乌鸦而丧失巢址，种群一度跌至原数的四分之一。匈牙利鸟类学家帕拉季茨通过在匈全境投放数千个巢箱，使该物种十年间恢复并翻倍。借助卫星追踪器，团队发现红脚隼每年冬季飞越地中海与撒哈拉抵达南非，北归时所有个体竟都要经停安哥拉中部一块仅1.5平方英里的区域。2019年帕拉季茨率队抵达姆贡戈，证实了这片名为"鹰城"的巨型集群地：每年二三月，多达百万只红脚隼黄昏时分遮天蔽日地聚集于此，捕食白蚁增重两三成以储备北归脂肪。然而偷猎、农药与砍伐正威胁这一栖息地。帕拉季茨与安哥拉伙伴阿戈斯蒂尼奥携手，通过学校宣讲、社区动员、提供替代燃料等手段推动保护。如今市场上已不见红脚隼踪影，当地少年以"姆贡戈隼队"之名借足球赛宣传环保，这一故事正从科学发现走向社区共治。

---

## 22. Can AI design circuit boards yet?

**原文标题**: Can AI design circuit boards yet?

**原文链接**: [https://eebench.org/blog/can-ai-design-circuit-boards-yet/](https://eebench.org/blog/can-ai-design-circuit-boards-yet/)

文章之前已经处理过

---

## 23. .gitignore 默认忽略一切

**原文标题**: .gitignore Everything by Default

**原文链接**: [https://packagemain.tech/p/gitignore-everything-by-default](https://packagemain.tech/p/gitignore-everything-by-default)

作者提出了一种与常规 .gitignore 相反的思路：默认忽略所有文件，仅通过白名单显式放行需要纳入版本控制的文件。其初衷是解决开发者常犯的误提交问题——如 .DS_Store、node_modules、IDE 配置、环境变量等被意外提交，事后不得不清理提交历史。文章以一个 Go 项目为例展示了具体写法：先用通配符 `*` 忽略全部文件，再用 `!` 逐一放行 .gitignore 自身、.go 源文件、README.md、go.mod、go.sum 等核心文件，使只有明确允许的文件才被 Git 追踪，从根源杜绝误提交。作者认为此方案虽非适用于所有项目，但值得尝试，尤其在当下本地项目充斥各类智能代理文档、子目录等杂物的背景下，"先全部忽略、再按需放行"更显实用。文末附带两个建议：用 `git check-ignore -v` 命令快速验证路径是否被忽略，排查文件未出现在 Git 中的原因；并推荐了优秀的 Git 终端界面工具 lazygit。

---

## 24. AI接管故障响应，工程师与系统脱节

**原文标题**: AI handles incidents, engineers lose touch with their systems

**原文链接**: [https://www.sylvainkalache.com/blog/ai-handles-incidents-engineers-lose-touch-with-their-systems](https://www.sylvainkalache.com/blog/ai-handles-incidents-engineers-lose-touch-with-their-systems)

本文作者Sylvain Kalache（前LinkedIn SRE）指出，AI故障响应工具虽能高效处理常规事件，却使工程师失去通过日常故障积累系统直觉的机会，陷入"自动化悖论"——越依赖AI，越难应对它无法解决的复杂故障。他引用Bainbridge 1983年的经典理论，预测未来平均故障恢复时间将下降，但复杂事件的解决时间反而延长。文章以航空业为鉴：飞行员通过模拟器反复演练发动机失效等罕见场景以维持应对能力。为此，作者所在公司Rootly联合Uptime Labs推出故障模拟演练，让工程师在模拟电商宕机中担任事故指挥官，借助可观测性工具协调AI驱动的干系人，锻炼信息判断、沟通与协调能力。作者同时强调，AI虽可解释其诊断逻辑，但"看"不等于"练"，如同看网球比赛无法学会打球，动手实践不可替代。他呼吁团队警惕"理解债务"——系统运行与人员认知之间的鸿沟，应将故障模拟演练纳入on-call准备常态，让工程师定期接触系统、处理陌生故障、在压力下排练协调与沟通，以对抗自动化带来的技能退化。

---

## 25. 代码永驻欧洲的Git托管平台

**原文标题**: Git hosting that never leaves Europe

**原文链接**: [https://pushin.eu](https://pushin.eu)

摘要：Pushin.eu是一个完全部署于欧洲的Git托管平台，由荷兰开发者Peter Ull于2026年4月创立，预计2027年初正式上线。平台坚守五大原则：数据仅存储于法国Scaleway巴黎数据中心，规避美国CLOUD Act管辖；通过邀请制注册与声誉验证机制过滤AI批量低质提交，保护维护者精力；专注开发者体验而非堆砌AI功能；以高可用性为工程核心；承诺绝不将用户代码用于训练任何AI模型。技术层面支持SSH/HTTPS代码推拉，提供兼容GitHub的REST API，并推出pun命令行工具，可一键迁移GitHub仓库（含完整Git历史、Issue、PR及元数据），也支持单向镜像同步。数据离场仅需git clone即可。目前处于邀请制测试阶段，公开仓库无需注册即可浏览，未来定价将对标GitHub与GitLab。

---

## 26. 以拉丁语编写软件（2025年）[视频]

**原文标题**: Write Software in Latin (2025) [video]

**原文链接**: [https://www.youtube.com/watch?v=fGZpaqMha0o](https://www.youtube.com/watch?v=fGZpaqMha0o)

摘要：该条目为YouTube上一部题为"以拉丁语编写软件（2025年）"的视频。从标题可推断，内容大概率为一位创作者探讨或演示使用拉丁语（作为编程语言或自然语言）进行软件开发的创意项目，属于2025年发布的科技类趣味或教育视频。然而，所提供的文本内容仅为YouTube平台页面的通用底部信息，包括版权说明、广告与开发者条款、隐私政策、Google LLC公司信息（首席执行官Sundar Pichai，地址为加州山景城1600 Amphitheatre Parkway）、韩国客服电话、支持邮箱，以及平台对创作者展示商品免责声明等，并未包含该视频的实际讲解内容、技术细节或作者信息。因此，无法从现有文本中提取关于"以拉丁语编写软件"这一主题的具体技术方案、编程范例或结论。

---

## 27. Show HN: Open-Source eInk Bike Computer

**原文标题**: Show HN: Open-Source eInk Bike Computer

**原文链接**: [https://opentrailpaper.com](https://opentrailpaper.com)

文章之前已经处理过

---

## 28. OpenRouter 平台上的 GPT-6 Astra 模型

**原文标题**: GPT-6 Astra on OpenRouter

**原文链接**: [https://openrouter.ai/openai/gpt-6-astra](https://openrouter.ai/openai/gpt-6-astra)

无法访问该文章链接

---

## 29. Shutting down our public encrypted DNS

**原文标题**: Shutting down our public encrypted DNS

**原文链接**: [https://mullvad.net/en/blog/shutting-down-our-public-encrypted-dns-servers-and-sponsoring-quad9-instead](https://mullvad.net/en/blog/shutting-down-our-public-encrypted-dns-servers-and-sponsoring-quad9-instead)

文章之前已经处理过

---

## 30. 永久化学品的灾难：一个被掩盖数十年的惊天秘密

**原文标题**: How the Disaster of "Forever Chemicals" Was Kept Secret

**原文链接**: [https://www.propublica.org/podcast/forever-chemicals-pfas-pfos-3m-secret-kris-hansen](https://www.propublica.org/podcast/forever-chemicals-pfas-pfos-3m-secret-kris-hansen)

"永久化学品"（PFAS）是人工合成、难以降解的化学物质，曾广泛用于不粘锅、食品包装、消防泡沫等产品，如今已遍布全球，进入几乎所有人体内，与癌症、免疫及内分泌紊乱等健康问题相关。率先大规模生产此类化学品的3M公司自20世纪70年代起便已知其毒性，却持续生产并隐瞒真相长达数十年。记者莎朗·莱纳历时十年追查3M的知情范围，最终获得前3M环境实验室科学家克里斯·汉森的关键证词。1996年，刚入职的汉森在分析普通人群血样时，意外发现PFOS已普遍存在于非职业暴露人群血液中。她的上司吉姆·约翰逊看到数据后说"这改变了一切"，随即关上门数周后便提前退休，将汉森独自留在这条线索上。公司高层质疑她操作失误，同事甚至用马、鸡、牛、猪、鹰、鱼等动物血液试图证伪，结果PFOS无处不在。汉森由此意识到这些化学品已沿食物链扩散至整个地球。然而，公司强大的企业文化与沉默氛围让她长期无法发声，直到在3M工作27年离职后，才决定向公众揭开这一影响全人类的秘密。

---

