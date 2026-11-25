# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-26.md)

*最后自动更新时间: 2026-11-26 04:55:26*
## 1. 1Password 安全事件通报

**原文标题**: 1Password Security Incident

**原文链接**: [https://1password.com/blog/update-on-nov-2026-security-incident](https://1password.com/blog/update-on-nov-2026-security-incident)

2026年11月19日，1Password发现攻击者入侵一名员工的GitHub账户，获取源代码并向后端服务推送恶意代码，下载了部分用户的管理数据，包括姓名、邮箱、账户标识、创建及最后登录时间、公开密钥、SRP协议参数及邀请与恢复令牌等。攻击者还获取了私有代码仓库和CI/CD系统权限，但源代码中不含用户机密。1Password强调，客户保险库内容及其加密密钥从未被访问或暴露。公司随即采取多项措施：禁用涉事GitHub账户、撤销被盗令牌、轮换所有可能暴露的内部凭证、将邀请和恢复邮件中的验证码从6位数字升级为10位字母数字以防止暴力破解、收紧GitHub与CI/CD管控并部署新检测机制，同时引入独立安全专家验证响应与修复方案。官方建议用户警惕涉及1Password的钓鱼邮件、短信或电话，切勿向任何外部渠道提供账户密码或密钥，发现可疑情况请联系support@1password.com。

---

## 2. 天哪！天哪！天哪！天哪！——我们正目睹何等惊天巨变

**原文标题**: Holy shit holy shit holy shit holy shit: The magnitude of what’s now happening

**原文链接**: [https://scottaaronson.blog/?p=10379](https://scottaaronson.blog/?p=10379)

摘要：本文设定于2026年感恩节，作者以极度震撼的口吻记录AI公司（OpenAI、Anthropic、Google）在数周内在理论计算机科学与数学领域的连串突破：VP≠VNP的严格证明、黎曼猜想的证成、矩阵乘法指数ω被确定为9/4（首次获得匹配的下界，终结了自Strassen以来半个多世纪的悬念）、傅里叶变换复杂度进一步改进并附匹配下界、QIP(2)=PSPACE、子指数级确定性整数分解算法、超线性布尔电路下界等。这些结果均附Lean形式化证明证书，且正以GitHub上传方式持续发布。作者认为，这些成果不再是零散的里程碑，而是如同伽利略第一次用望远镜望向星空——人类对数学真理的分辨率发生了质的飞跃，P≠NP的证明已为时不远。他同时坦言，AI实验室可能已掌握可破解现有密码体系的算法，但强调不应让密码学话题遮蔽智力层面的革命性意义。评论区中，学者们讨论新论文的可读性、Lean验证的供应链风险、TCS研究生是否仍值得申请，以及面对这一"奇异点"般时刻，人类应保持清醒与感恩。全文在狂喜与不安交织中，呼吁读者珍惜当下、共同塑造一个人类与子女仍可幸福生活的未来。

---

## 3. 几个问题，问那位在好市多蓄水池里浮潜的生物学家

**原文标题**: A few questions for the guy who went snorkeling in a Home Depot retention pond

**原文链接**: [https://www.vox.com/down-to-earth/511999/home-depot-retention-pond-snorkel-joseph-ricketts](https://www.vox.com/down-to-earth/511999/home-depot-retention-pond-snorkel-joseph-ricketts)

佛罗里达鳄鱼研究生物学家兼YouTuber约瑟夫·里克茨在自家附近好市多超市旁的雨水蓄水池中夜潜，拍下水蛇、蝌蚪、匙指虾、蜻蜓等生物画面，视频获超200万播放。蓄水池是城市化进程中替代自然湿地、汇集暴雨径流的设施。里克茨借此探讨城市生态学：许多物种能适应城市有限水域生存，但这种"韧性"不应成为放任湿地消失的理由，保护大型原始栖息地同样关键。他提出"自然荒漠"概念——对部分城市居民而言，蓄水池可能是一生中唯一可亲近自然的场所，值得守护。他希望人们能在意想不到的角落发现自然之美，也关注那些不易引发共鸣的小型无脊椎动物与蛇类，它们同样具有内在价值。

---

## 4. 多项式Hirsch猜想被证伪

**原文标题**: The polynomial Hirsch conjecture is false [pdf]

**原文链接**: [https://github.com/openai/math/blob/main/preprints/Superpolynomial-graph-diameter-of-simple-polytopes-November-24-2026/paper.pdf](https://github.com/openai/math/blob/main/preprints/Superpolynomial-graph-diameter-of-simple-polytopes-November-24-2026/paper.pdf)

多项式Hirsch猜想是组合几何与多面体理论中长期悬而未决的核心问题，由Hirsch于1956年提出，断言任意d维、n个顶点的单纯形（simplicial polytope）的图直径不超过n的多项式函数。该猜想由Klee推广后引起广泛关注，成为该领域最具标志性的开放问题之一。本文给出了该猜想的反例，证明多项式Hirsch猜想不成立。作者通过精心构造一族高维单纯形，展示了其图直径可随维度呈指数增长，从而彻底否定了多项式上界的存在性。这一结果不仅终结了持续六十余年的猜想，也深刻揭示了单纯形组合结构的复杂性远超此前预期，对多面体理论、线性规划中单纯形法的迭代步数分析以及相关组合优化问题产生了深远影响。论文以PDF形式发布，为后续研究提供了完整的构造细节与证明过程。

---

## 5. 英国"幽灵车站"

**原文标题**: Britain's ghost stations

**原文链接**: [https://spectator.com/article/britains-ghost-stations-are-fascinating/](https://spectator.com/article/britains-ghost-stations-are-fascinating/)

本文以作者探访苏格兰高地Achanalt站的经历为引，展现英国一批使用率极低、几近废弃的"幽灵车站"。据最新数据，该站全年仅352人次进出，而全国使用量最低的大曼彻斯特Reddish South站全年仅94人次。文章将此类车站归为两类：一是上世纪70年代Beeching关站计划时期，因公众反对且关闭程序成本过高，铁路公司索性仅维持极低频次服务；二是虽设有多趟班车，但当地几乎无居民，如Achanalt附近仅有四户人家。文章以幽默笔调讽刺这一荒诞现象——偏远小站被保留，人口数十万的Dudley和Mansfield却曾被取消铁路服务。最极端的例子是Altnabreac站，方圆五英里仅存一栋前车站房，房主竟拒绝铁路工人进站维修，引发数月对峙与诉讼，导致该线一度全线停运，全年旅客数归零。如今服务恢复，全年也仅172人次使用。

---

## 6. SSH即图形界面框架

**原文标题**: SSH is a GUI framework

**原文链接**: [https://zydra.sh/articles/ssh-is-a-gui-framework/](https://zydra.sh/articles/ssh-is-a-gui-framework/)

摘要：作者Hasan Madi提出SSH是一种被忽视的跨平台图形渲染引擎，终端协议已在SSH之上扩展出图形、剪贴板、通知、鼠标等能力。他据此构建了zydra.sh——一个完全基于SSH渲染的微虚拟机桌面环境，用户可通过`ssh zydra.sh`直接访问。文章系统梳理了相关终端协议：Kitty图形协议（支持压缩、VRAM及动画）取代了Sixel和iTerm2协议；OSC 99/777/9提供多级通知回退；OSC 52/5522实现双向剪贴板及图像传输；CSI序列支持鼠标追踪与同步渲染；Kitty还支持文件上传。性能优化方面，作者采用文本与图形混合叠加、网格化差分更新、去除不必要透明度（节省25%带宽）、动态降分辨率及客户端预缓存等策略，并设计了从Sixel到纯ASCII的多级回退机制以兼容旧终端。与VNC和Web应用相比，SSH具备密钥认证、嵌套连接、sshfs本地挂载及纯TTY可访问等独特优势，但音频支持和移动端体验仍是短板，作者已推出Web版compositor加以弥补。最终目标是构建一个无"云摩擦"的云端电脑与智能体沙盒。

---

## 7. 电视会太大吗？——一次亲身探究

**原文标题**: Can a TV be too large? An investigation

**原文链接**: [https://techcrunch.com/2026/11/22/can-a-tv-be-too-large-an-investigation/](https://techcrunch.com/2026/11/22/can-a-tv-be-too-large-an-investigation/)

摘要：作者将服役多年的55英寸TCL电视升级为65英寸LG evo C4 OLED电视。OLED凭借数百万自发光像素，在色彩、明暗对比和像素控制上远胜传统LED，但价格也更高。升级后，作者在家观看4K蓝光碟《麦卡比与米勒太太》时突感强烈恶心与头痛，持续数小时。查阅Reddit等社区后发现，不少新OLED用户有类似"大脑被搞坏"的体验，但原因尚无定论：有人归咎于运动平滑设置，有人认为是观看距离过近，也有人怀疑屏幕亮度刺激了眼睛。作者猜测，大屏需眼球频繁移动捕捉全画面，在动态场景中产生类似紧盯移动车窗外景物的眩晕感。数天后眼睛逐渐适应，不适消失，观影体验极佳。文章也提醒买家注意客厅空间是否足以容纳大屏，并指出C4缺乏详细安装说明，65英寸屏幕需两人协作搬运组装。总体而言，LG evo C4画质出色，"导演模式"等功能大幅提升家庭影院体验，但新用户可能需经历短暂的生理适应期。

---

## 8. Windows 响度均衡的逆向工程与 PipeWire 移植

**原文标题**: Windows Loudness Equalization, reverse-engineered and ported to PipeWire

**原文链接**: [https://github.com/xoxorwr/pw-loudness-eq](https://github.com/xoxorwr/pw-loudness-eq)

摘要：本项目将 Windows 的响度均衡功能从 WMALFXGFXDSP.dll 逆向还原并移植至 PipeWire，使各应用播放音量趋于一致。项目含三部分：响度均衡模块（对每个应用播放流施加宽带自动增益控制）、输出限制器（移植自 AudioEng.dll，防止增益提升导致削波）及可选 GTK3 控制窗口（支持全局或逐应用开关、调节释放时间）。安装需 PipeWire ≥ 1.4，通过 make 编译后重启服务即可；设置存于 PipeWire 元数据对象，可用 pw-metadata 命令行脚本操作，运行时修改即时生效且跨重启保留。算法核心为宽带 AGC：以 512 点帧、50% 重叠进行加窗 FFT，功率归入 25 个频带后按加权公式计算响度，目标增益上限 +20 dB，降低时瞬时到位，提升时按释放时间平滑过渡（默认约 4.6 秒时间常数）。限制器采用 64 帧前瞻，峰值超 0.985 时线性衰减增益，恢复速率约 19 dB/s。JACK 客户端、超 8 通道流及直接调用 PipeWire 的 Flatpak 应用不经过处理。

---

## 9. I checked Clojure's core with Lean and found unreported bugs

**原文标题**: I checked Clojure's core with Lean and found unreported bugs

**原文链接**: [https://s.conao3.com/blog/2026/e4f733](https://s.conao3.com/blog/2026/e4f733)

文章之前已经处理过

---

## 10. 谷歌发布Cogentic整数分解、离散对数等多领域研究论文

**原文标题**: Google releases Cogentic papers on integer factorization, discrete logs and more

**原文链接**: [https://github.com/google-research/google-research/tree/master/cogentic_research_papers](https://github.com/google-research/google-research/tree/master/cogentic_research_papers)

摘要：谷歌旗下Cogentic项目在google-research仓库公开发布一批数学与计算机科学领域研究论文，涵盖数论、博弈论、图论、组合优化等方向。核心成果包括：实现无条件整数分解（时间复杂度L_N[1/3, O(1)]）及确定性亚指数级分解；在固定特征有限域上以亚准多项式时间求解离散对数；提出双矩阵博弈中1/5近似纳什均衡的精确多项式时间算法；打破对数秩猜想的平方根障碍；完成线性密度简单图边的无条件重构。此外还涉及子可加组合拍卖的Prophet不等式、虚设博弈收敛性、VC类样本压缩及凸博弈中关联均衡难解性等问题。论文集中发布于2026年10至11月，采用Apache 2.0开源协议。谷歌声明该内容非官方产品。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-26](output/hacker_news_summary_2026-11-26.md) |
| 2 | [2026-11-25](output/hacker_news_summary_2026-11-25.md) |
| 3 | [2026-11-24](output/hacker_news_summary_2026-11-24.md) |
| 4 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 5 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 6 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 7 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 8 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 9 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 10 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 11 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 12 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 13 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 14 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 15 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 16 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 17 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 18 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 19 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 20 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 21 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 22 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 23 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 24 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 25 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 26 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 27 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 28 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 29 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 30 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 31 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 32 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 33 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 34 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 35 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 36 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 37 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 38 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 39 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 40 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 41 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 42 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 43 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 44 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 45 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 46 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 47 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 48 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 49 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 50 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 51 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 52 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 53 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 54 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 55 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 56 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 57 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 58 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 59 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 60 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 61 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 62 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 63 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 64 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 65 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 66 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 67 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 68 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 69 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 70 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 71 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 72 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 73 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 74 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 75 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 76 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 77 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 78 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 79 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 80 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 81 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 82 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 83 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 84 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 85 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 86 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 87 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 88 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 89 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 90 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 91 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 92 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 93 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 94 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 95 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 96 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 97 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 98 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 99 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 100 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 101 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 102 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 103 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 104 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 105 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 106 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 107 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 108 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 109 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 110 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 111 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 112 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 113 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 114 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 115 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 116 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 117 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 118 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 119 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 120 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 121 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 122 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 123 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 124 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 125 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 126 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 127 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 128 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 129 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 130 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 131 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 132 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 133 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 134 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 135 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 136 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 137 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 138 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 139 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 140 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 141 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 142 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 143 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 144 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 145 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 146 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 147 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 148 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 149 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 150 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 151 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 152 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 153 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 154 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 155 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 156 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 157 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 158 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 159 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 160 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 161 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 162 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 163 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 164 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 165 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 166 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 167 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 168 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 169 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 170 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 171 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 172 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 173 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 174 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 175 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 176 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 177 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 178 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 179 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 180 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 181 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 182 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 183 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 184 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 185 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 186 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 187 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 188 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 189 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 190 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 191 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 192 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 193 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 194 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 195 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 196 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 197 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 198 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 199 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 200 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 201 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 202 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 203 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 204 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 205 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 206 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 207 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 208 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 209 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 210 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 211 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 212 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 213 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 214 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 215 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 216 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 217 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 218 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 219 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 220 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 221 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 222 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 223 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 224 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 225 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 226 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 227 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 228 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 229 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 230 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 231 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 232 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 233 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 234 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 235 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 236 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 237 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 238 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 239 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 240 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 241 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 242 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 243 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 244 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 245 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 246 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 247 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 248 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 249 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 250 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 251 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 252 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 253 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 254 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 255 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 256 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 257 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 258 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 259 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 260 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 261 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 262 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 263 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 264 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 265 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 266 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 267 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 268 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 269 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 270 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 271 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 272 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 273 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 274 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 275 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 276 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 277 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 278 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 279 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 280 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 281 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 282 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 283 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 284 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 285 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 286 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 287 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 288 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 289 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 290 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 291 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 292 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 293 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 294 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 295 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 296 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 297 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 298 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 299 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 300 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 301 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 302 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 303 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 304 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 305 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 306 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 307 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 308 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 309 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 310 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 311 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 312 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 313 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 314 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 315 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 316 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 317 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 318 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 319 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 320 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 321 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 322 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 323 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 324 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 325 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 326 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 327 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 328 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 329 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 330 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 331 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 332 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 333 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 334 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 335 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 336 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 337 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 338 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 339 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 340 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 341 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 342 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 343 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 344 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 345 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 346 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 347 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 348 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 349 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 350 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 351 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 352 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 353 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 354 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 355 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 356 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 357 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 358 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 359 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 360 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 361 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 362 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 363 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 364 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 365 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 366 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 367 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 368 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 369 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 370 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 371 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 372 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 373 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 374 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 375 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 376 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 377 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 378 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 379 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 380 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 381 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 382 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 383 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 384 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 385 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 386 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 387 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 388 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 389 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 390 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 391 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 392 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 393 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 394 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 395 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 396 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 397 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 398 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 399 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 400 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 401 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 402 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 403 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 404 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 405 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 406 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 407 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 408 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 409 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 410 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 411 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 412 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 413 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 414 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 415 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 416 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 417 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 418 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 419 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 420 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 421 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 422 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 423 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 424 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 425 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 426 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 427 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 428 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 429 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 430 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 431 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 432 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 433 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 434 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 435 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 436 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 437 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 438 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 439 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 440 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 441 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 442 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 443 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 444 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 445 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 446 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 447 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 448 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 449 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 450 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 451 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 452 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 453 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 454 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 455 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 456 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 457 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 458 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 459 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 460 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 461 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 462 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 463 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 464 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 465 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 466 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 467 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 468 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 469 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 470 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 471 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 472 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 473 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 474 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 475 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 476 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 477 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 478 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 479 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 480 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 481 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 482 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 483 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 484 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 485 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 486 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 487 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 488 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 489 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 490 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 491 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 492 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 493 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 494 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 495 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 496 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 497 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 498 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 499 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 500 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 501 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 502 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 503 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 504 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 505 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 506 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 507 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 508 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 509 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 510 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 511 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 512 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 513 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 514 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 515 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 516 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 517 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 518 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 519 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 520 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 521 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 522 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 523 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 524 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 525 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 526 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 527 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 528 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 529 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 530 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 531 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 532 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 533 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 534 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 535 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 536 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 537 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 538 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 539 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 540 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 541 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 542 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 543 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 544 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 545 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 546 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 547 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 548 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 549 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 550 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 551 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 552 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 553 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 554 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 555 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 556 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 557 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 558 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 559 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 560 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 561 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 562 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 563 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 564 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 565 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 566 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 567 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 568 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 569 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 570 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 571 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 572 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 573 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 574 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 575 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 576 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 577 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 578 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 579 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 580 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 581 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 582 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 583 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 584 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 585 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 586 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 587 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 588 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 589 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 590 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 591 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 592 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 593 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 594 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 595 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 596 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 597 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 598 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 599 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 600 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 601 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 602 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 603 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 604 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 605 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 606 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 607 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 608 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 609 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 610 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 611 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 612 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
