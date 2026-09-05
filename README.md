# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-06.md)

*最后自动更新时间: 2026-09-06 04:53:59*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 2 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 3 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 4 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 5 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 6 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 7 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 8 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 9 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 10 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 11 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 12 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 13 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 14 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 15 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 16 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 17 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 18 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 19 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 20 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 21 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 22 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 23 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 24 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 25 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 26 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 27 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 28 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 29 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 30 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 31 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 32 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 33 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 34 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 35 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 36 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 37 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 38 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 39 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 40 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 41 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 42 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 43 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 44 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 45 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 46 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 47 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 48 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 49 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 50 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 51 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 52 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 53 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 54 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 55 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 56 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 57 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 58 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 59 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 60 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 61 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 62 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 63 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 64 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 65 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 66 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 67 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 68 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 69 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 70 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 71 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 72 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 73 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 74 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 75 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 76 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 77 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 78 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 79 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 80 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 81 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 82 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 83 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 84 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 85 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 86 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 87 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 88 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 89 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 90 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 91 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 92 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 93 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 94 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 95 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 96 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 97 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 98 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 99 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 100 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 101 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 102 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 103 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 104 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 105 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 106 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 107 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 108 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 109 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 110 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 111 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 112 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 113 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 114 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 115 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 116 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 117 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 118 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 119 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 120 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 121 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 122 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 123 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 124 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 125 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 126 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 127 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 128 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 129 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 130 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 131 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 132 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 133 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 134 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 135 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 136 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 137 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 138 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 139 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 140 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 141 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 142 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 143 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 144 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 145 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 146 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 147 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 148 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 149 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 150 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 151 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 152 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 153 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 154 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 155 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 156 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 157 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 158 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 159 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 160 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 161 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 162 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 163 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 164 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 165 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 166 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 167 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 168 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 169 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 170 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 171 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 172 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 173 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 174 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 175 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 176 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 177 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 178 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 179 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 180 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 181 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 182 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 183 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 184 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 185 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 186 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 187 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 188 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 189 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 190 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 191 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 192 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 193 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 194 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 195 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 196 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 197 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 198 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 199 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 200 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 201 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 202 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 203 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 204 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 205 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 206 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 207 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 208 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 209 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 210 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 211 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 212 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 213 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 214 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 215 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 216 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 217 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 218 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 219 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 220 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 221 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 222 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 223 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 224 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 225 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 226 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 227 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 228 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 229 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 230 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 231 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 232 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 233 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 234 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 235 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 236 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 237 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 238 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 239 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 240 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 241 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 242 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 243 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 244 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 245 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 246 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 247 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 248 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 249 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 250 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 251 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 252 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 253 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 254 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 255 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 256 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 257 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 258 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 259 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 260 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 261 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 262 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 263 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 264 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 265 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 266 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 267 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 268 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 269 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 270 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 271 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 272 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 273 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 274 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 275 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 276 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 277 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 278 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 279 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 280 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 281 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 282 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 283 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 284 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 285 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 286 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 287 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 288 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 289 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 290 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 291 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 292 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 293 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 294 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 295 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 296 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 297 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 298 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 299 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 300 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 301 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 302 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 303 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 304 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 305 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 306 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 307 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 308 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 309 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 310 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 311 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 312 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 313 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 314 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 315 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 316 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 317 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 318 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 319 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 320 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 321 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 322 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 323 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 324 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 325 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 326 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 327 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 328 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 329 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 330 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 331 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 332 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 333 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 334 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 335 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 336 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 337 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 338 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 339 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 340 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 341 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 342 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 343 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 344 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 345 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 346 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 347 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 348 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 349 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 350 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 351 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 352 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 353 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 354 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 355 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 356 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 357 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 358 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 359 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 360 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 361 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 362 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 363 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 364 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 365 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 366 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 367 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 368 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 369 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 370 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 371 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 372 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 373 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 374 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 375 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 376 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 377 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 378 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 379 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 380 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 381 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 382 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 383 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 384 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 385 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 386 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 387 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 388 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 389 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 390 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 391 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 392 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 393 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 394 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 395 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 396 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 397 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 398 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 399 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 400 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 401 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 402 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 403 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 404 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 405 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 406 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 407 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 408 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 409 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 410 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 411 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 412 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 413 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 414 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 415 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 416 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 417 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 418 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 419 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 420 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 421 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 422 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 423 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 424 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 425 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 426 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 427 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 428 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 429 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 430 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 431 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 432 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 433 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 434 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 435 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 436 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 437 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 438 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 439 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 440 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 441 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 442 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 443 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 444 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 445 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 446 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 447 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 448 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 449 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 450 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 451 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 452 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 453 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 454 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 455 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 456 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 457 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 458 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 459 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 460 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 461 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 462 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 463 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 464 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 465 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 466 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 467 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 468 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 469 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 470 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 471 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 472 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 473 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 474 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 475 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 476 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 477 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 478 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 479 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 480 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 481 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 482 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 483 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 484 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 485 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 486 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 487 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 488 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 489 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 490 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 491 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 492 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 493 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 494 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 495 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 496 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 497 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 498 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 499 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 500 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 501 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 502 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 503 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 504 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 505 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 506 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 507 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 508 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 509 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 510 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 511 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 512 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 513 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 514 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 515 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 516 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 517 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 518 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 519 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 520 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 521 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 522 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 523 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 524 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 525 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 526 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 527 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 528 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 529 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 530 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 531 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
