# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-23.md)

*最后自动更新时间: 2026-10-23 04:58:11*
## 1. Quad9 DNS解析器告别法国

**原文标题**: Quad9 (DNS Resolver) to Exit France

**原文链接**: [https://quad9.net/news/blog/au-revoir-france/](https://quad9.net/news/blog/au-revoir-france/)

瑞士非营利组织Quad9宣布，因法国法院作出对其不利的裁决，将于2026年11月24日起停止为法国用户提供免费DNS解析及网络安全防护服务。法国法院要求Quad9为卡塔尔公司beIN封堵一批被指侵犯体育赛事转播版权的域名，否则面临每日1000欧元的罚款。Quad9认为该裁决违背其保护用户隐私、维护互联网完整性的核心使命，且技术上不可行：作为免费公共服务，Quad9不收集用户身份信息，无法识别法国用户；若实施全球封堵，等于将法国法律强加于全世界；而地理IP封堵方案在2021至2023年德国Sony案中已被证伪，用户通过VPN即可绕过。此外，法国尚有约20起类似诉讼在审，持续的法律风险令Quad9难以为继。Quad9强调，通过DNS封堵域名并不能消除侵权内容本身，效果如同"用一张报纸遮挡整个体育场的视线"。Quad9呼吁法国公民向立法者及监管机构ARCOM发声，反对赋予私人企业随意过滤DNS内容的权力，警示此类先例终将侵蚀数字权利与互联网自由。

---

## 2. OpenShell——面向自主AI智能体集群的安全私有运行时

**原文标题**: OpenShell – A safe, private runtime for fleets of autonomous AI agents

**原文链接**: [https://github.com/NVIDIA/OpenShell](https://github.com/NVIDIA/OpenShell)

OpenShell是专为大规模部署自主AI智能体而设计的安全私有运行时环境。它赋予智能体文件读写、包安装、API调用及凭证使用能力，同时通过声明式策略严格限定其对数据、密钥和网络的访问边界。核心机制有二：一是内核级强制执行——每个智能体运行于隔离沙箱，内核控制文件与系统调用，网络请求须经策略校验，凭证仅在发往已批准端点时注入；二是形式化验证——策略变更生效前自动评估风险（如新增主机访问或API方法调用），高风险项须人工审批后方可应用。OpenShell支持Linux、Apple Silicon及WSL 2，依赖Docker/Podman或主机虚拟化，提供一键安装脚本。架构由网关（控制面）、主管程序与沙箱三层构成，支持Kubernetes Helm部署。项目提供Python、TypeScript、Go、Rust多语言SDK，开放中间件、拦截器、计算驱动等扩展接口，并配套Agent Skills使编码智能体可直接驱动CLI与编写策略。OpenShell采用Apache 2.0协议开源，内置可关闭的匿名遥测，由NVIDIA主导开发。

---

## 3. 筹备在德国运营 GNU Taler

**原文标题**: Getting ready to operate GNU Taler in Germany

**原文链接**: [https://www.taler.net/en/news/2026-13.html](https://www.taler.net/en/news/2026-13.html)

NGI Taler 项目历经三年，致力于在欧盟推出 Taler 日常电子支付系统。现宣布在波鸿成立 Taler Operations AG，以卢森堡 Taler Systems SA 的德国子公司身份，向德国联邦金融监管局（BaFin）申请电子货币机构（EMI）牌照，以欧元运营 Taler，先落地德国，再扩展至欧元区。原计划由格拉斯费尔德信用合作社（GLS 银行）担任发币方，但 GLS 于 2026 年 1 月宣布退出，转任协助角色。新公司专注 Taler 业务，避免受大型银行流程与产品组合的制约，被认为具有实际优势。GNU Taler 协议及参考实现仍保持自由与开放，新公司仅负责运营合规服务。项目其余方向——开发、安全审计、瑞士部署等——不受影响。社区成员可通过向商家宣传、试用演示钱包、参与开源贡献或投资等方式支持项目；投资者最低门槛为五万欧元，须认同隐私保护、透明性、无锁定及支付公共基础设施等核心理念。公司目前处于筹建与募资阶段，待 BaFin 核准授权后方可正式上线。

---

## 4. Show HN：在安卓设备上运行完整 iOS 16.5 固件

**原文标题**: Show HN: Run full iOS 16.5 firmware on Android Devices

**原文链接**: [https://github.com/oosexgang/hackios-xnu-kernel](https://github.com/oosexgang/hackios-xnu-kernel)

摘要：HackiOS 是一个独立研究项目，在安卓手机（POCO X5 Pro 5G，骁龙 778G）及 QEMU 模拟器上成功运行苹果 XNU 内核（iOS 16.5）及未经修改的完整 iOS 用户空间，实现 launchd→SpringBoard→应用的完整启动链。项目通过自研 EFI 加载器、替换 Apple 闭源驱动、UEFI 移植及 Linux Wi-Fi 驱动兼容层实现，系统运行于内存中，重启即恢复安卓，不修改设备存储。目前已支持：锁屏与主屏幕、系统手势、部分原生应用（设置、Safari、相机、照片等）、Adreno GPU 渲染、Wi-Fi 联网、摄像头及触摸屏；尚不支持蜂窝/蓝牙、充电、App Store 及 Apple ID 登录。项目分为内核与用户空间两个仓库，iOS 文件从苹果 CDN 自行下载，仓库不含任何苹果文件。该研究每次会话限时运行后自动返回加载器。代码以 APSL 2.0 许可证开源，由 OOSEX GANG 团队开发，支持新设备移植。

---

## 5. Show HN：面向AI的UI微交互动画提示词集

**原文标题**: Show HN: UI micro interactions prompts for AI

**原文链接**: [https://www.typeui.sh/micro-interactions](https://www.typeui.sh/micro-interactions)

无法访问该文章链接

---

## 6. eMudra 宣布退出全球 SSL/TLS 证书业务，聚焦核心企业解决方案

**原文标题**: eMudhra to exit global SSL/TLS certificate business

**原文链接**: [https://emudhra.com/en/press-release/emudhra-to-exit-global-ssl-tls-certificate-business](https://emudhra.com/en/press-release/emudhra-to-exit-global-ssl-tls-certificate-business)

摘要：印度数字信任公司eMudra（NSE：EMUDHRA）于2026年10月22日宣布，董事会决定自愿退出全球SSL/TLS证书业务。公司称，近期一起证书相关事件已得到妥善处理——14小时内即吊销受影响CA并公开披露，确认无终端实体证书被签发，基础设施与数据安全未受影响。董事会指出，SSL/TLS仅占全球收入约1%，叠加数据主权与合规要求趋严、运营成本攀升以及大型机构免费提供SSL/TLS等因素，该业务的投资回报率已大幅缩水，而社交媒体对事件的过度放大更使舆论压力与其实质贡献严重失衡。公司表示将把资源集中于核心企业解决方案及SSL/TLS以外的信任服务。过渡期安排方面，G1 RSA根证书将持续服务，受影响客户证书将由合作伙伴免费替换，吊销与证书状态服务运行至所有证书到期或替换完毕，公司亦将完成浏览器根项目的根因报告等义务。eMudra同时强调，其数字签名、eSign、企业PKI平台（emCA、CertiNext）、emSigner电子签名套件及SecurePass身份认证等核心业务独立运行，均不受此次退出影响，一切照常运营。

---

## 7. AI参与创作的获奖文学作品

**原文标题**: Award-Winning AI Literature

**原文链接**: [https://jamesyu.org/award-winning-ai-literature/](https://jamesyu.org/award-winning-ai-literature/)

摘要：本文系统梳理了全球范围内AI参与写作并获得或涉及文学奖项的案例，按性质分为六类。"AI被允许使用"类中，日本星新一文学奖最为突出，2022至2026年间多届获奖作品均涉及AI辅助，参与程度从仅为虚构疾病命名到大规模改写不等；美国Coover奖、斯洛伐克诗歌金奖等亦有类似先例。"确认使用AI"类包括日本芥川奖获奖小说（AI involvement约一页）及中国江苏科幻赛事中全文由AI生成的作品。"疑似或争议"类集中于英联邦短篇小说奖，多篇作品被Pangram检测器标记为高比例AI生成，作者则以手写草稿、语音转写等抗辩，评审机构多数维持了原决定。法国Fnac奖获奖小说因AI嫌疑遭出版社解约，新加坡及美国诗歌赛事直接撤销了AI生成作品的获奖资格。提名撤回方面，艾斯纳奖与巴西雅布蒂奖均有作品因AI生成插图被移出名录，新西兰书奖也曾因AI封面临时禁赛后又恢复。文章还收录了2016年星新一奖中由软件自动组装文本的早期先驱实验。整体而言，AI与文学评奖的互动已从个别实验演变为系统性争议，检测工具的可靠性与作者创作自主权之间的张力成为核心议题。

---

## 8. 何为音乐网格化

**原文标题**: What Is Gridifcation

**原文链接**: [https://musicalform.substack.com/p/what-is-gridifcation](https://musicalform.substack.com/p/what-is-gridifcation)

本文以1975年与2025年Billboard Hot 100前五名歌曲为样本，揭示近二十五年录音音乐的根本转变——"网格化"（gridification）。作者通过tempo数据分析，将1975年Hal Blaine鼓声中天然的节拍波动（均值130.5 BPM，标准差2.79，83次变速）与2025年《Die with a Smile》零标准差、零变速的机器精度对照，指出当代流行制作已将人类时间性视为"错误"加以修正。文章将网格化严格定义为：对已完成的现场表演进行事后算法量化与节拍对齐，而非跟click或loop演奏；拼贴式comp被禁止，但保留时间连续性的Punch-in仍被允许。哲学上，作者援引Langer的"呈现性符号"理论，认为音乐的本体价值在于将感受在时间中的展开形态转化为可公共感知的知识；网格化以机器精度替代人类协调时间，构成一种"认识论暴力"，剥夺了听众感知活的时间的通道，也抹杀了艺术家身体与历史在时间中的印记，与当代强调个体声音的文化运动根本矛盾。为此，音乐形式研究所推出"具身制作证书"，认证保留时间真实性的录音，其意义不在审美优劣，而在于恢复人与人之间在共享时间中的相互承认能力。

---

## 9. 女子因从未开设的Cash App账户面临六年监禁

**原文标题**: Woman faces six years in prison over Cash App account she never opened

**原文链接**: [https://www.techspot.com/news/114296-woman-spends-three-nights-jail-faces-six-years.html](https://www.techspot.com/news/114296-woman-spends-three-nights-jail-faces-six-years.html)

阿曼达·史密斯从未使用过Cash App，却因一个冒用其姓名、社保证件号及出生日期开设的账户遭逮捕。骗子盗取卖家Facebook账户，在Facebook Marketplace上伪造商品信息，诱导买家向该Cash App转账1000美元，款项随后被拆分转移至多个账户以掩盖去向。史密斯从宾夕法尼亚州被传召至千里之外的阿肯色州应审，面临计算机欺诈、非法使用通信设备等指控，最高面临六年监禁。然而账户信息存在多处矛盾：注册地址与史密斯一家无关，使用Verizon网络而她用的是AT&T，手机系统版本也对不上。更令人费解的是，Cash App起初以"无法证明账户持有人身份"为由拒绝提供账户数据，史密斯最终通过诉讼取证才获得相关信息。检方提出认罪协议——罚款及赔偿各1000美元、三年缓刑——史密斯坚称无辜予以拒绝，案件定于11月开庭，其律师正寻求撤销起诉。

---

## 10. Switch 2 越狱：ns2jb 软件越狱全解析

**原文标题**: Jailbreaking the Switch 2

**原文链接**: [https://pepsipu.com/blog/2026-10-switch2-jailbreak-ns2jb/](https://pepsipu.com/blog/2026-10-switch2-jailbreak-ns2jb/)

摘要：本文介绍了针对 Switch 2 固件 23.0.1 的软件越狱工具 ns2jb，一种 tethered 越狱，可实现任意原生代码执行。作者借助 AI 辅助耗时约两周完成。越狱路径分三步：首先利用 Switch 1 游戏 SmileBASIC 解释器中数组 REMOVE 操作的 32 位整数溢出（position+count 回绕为负值），突破用户态限制；随后针对内置 fs 模块的路径规范化功能，发现含反斜杠的父目录路径可触发 0x301 字节堆缓冲区溢出，劫持缓存对象获得任意读写；最后利用 ldr 加载机制，在加载游戏时替换 ExeFS 中的可执行文件、绕过签名验证，以 ro 等 sysmodule 权限执行自定义代码。越狱后可运行 homebrew、修改游戏、备份存档及通过 MMIO 访问外设，作者还据此在一天内完成了《马力欧卡丁车世界》的 mod 演示。文中指出，WebKit 路径因 XOM、PAC、CFI 等多层防护而受阻；目前仅 fs 内置模块可被攻破。未来方向包括将该漏洞移植至 WebKit、寻找其他内置模块缺陷，以及利用 fs 的加密硬件解密 NCA4 等。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 2 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 3 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 4 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 5 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 6 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 7 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 8 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 9 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 10 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 11 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 12 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 13 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 14 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 15 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 16 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 17 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 18 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 19 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 20 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 21 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 22 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 23 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 24 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 25 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 26 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 27 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 28 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 29 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 30 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 31 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 32 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 33 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 34 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 35 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 36 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 37 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 38 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 39 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 40 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 41 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 42 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 43 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 44 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 45 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 46 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 47 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 48 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 49 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 50 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 51 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 52 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 53 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 54 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 55 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 56 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 57 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 58 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 59 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 60 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 61 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 62 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 63 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 64 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 65 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 66 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 67 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 68 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 69 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 70 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 71 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 72 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 73 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 74 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 75 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 76 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 77 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 78 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 79 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 80 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 81 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 82 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 83 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 84 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 85 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 86 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 87 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 88 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 89 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 90 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 91 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 92 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 93 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 94 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 95 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 96 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 97 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 98 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 99 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 100 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 101 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 102 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 103 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 104 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 105 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 106 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 107 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 108 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 109 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 110 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 111 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 112 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 113 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 114 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 115 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 116 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 117 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 118 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 119 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 120 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 121 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 122 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 123 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 124 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 125 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 126 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 127 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 128 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 129 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 130 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 131 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 132 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 133 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 134 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 135 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 136 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 137 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 138 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 139 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 140 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 141 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 142 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 143 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 144 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 145 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 146 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 147 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 148 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 149 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 150 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 151 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 152 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 153 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 154 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 155 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 156 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 157 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 158 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 159 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 160 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 161 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 162 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 163 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 164 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 165 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 166 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 167 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 168 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 169 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 170 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 171 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 172 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 173 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 174 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 175 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 176 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 177 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 178 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 179 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 180 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 181 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 182 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 183 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 184 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 185 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 186 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 187 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 188 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 189 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 190 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 191 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 192 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 193 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 194 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 195 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 196 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 197 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 198 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 199 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 200 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 201 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 202 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 203 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 204 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 205 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 206 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 207 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 208 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 209 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 210 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 211 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 212 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 213 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 214 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 215 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 216 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 217 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 218 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 219 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 220 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 221 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 222 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 223 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 224 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 225 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 226 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 227 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 228 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 229 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 230 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 231 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 232 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 233 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 234 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 235 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 236 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 237 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 238 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 239 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 240 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 241 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 242 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 243 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 244 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 245 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 246 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 247 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 248 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 249 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 250 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 251 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 252 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 253 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 254 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 255 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 256 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 257 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 258 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 259 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 260 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 261 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 262 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 263 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 264 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 265 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 266 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 267 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 268 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 269 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 270 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 271 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 272 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 273 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 274 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 275 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 276 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 277 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 278 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 279 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 280 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 281 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 282 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 283 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 284 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 285 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 286 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 287 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 288 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 289 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 290 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 291 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 292 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 293 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 294 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 295 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 296 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 297 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 298 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 299 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 300 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 301 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 302 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 303 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 304 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 305 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 306 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 307 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 308 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 309 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 310 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 311 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 312 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 313 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 314 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 315 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 316 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 317 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 318 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 319 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 320 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 321 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 322 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 323 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 324 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 325 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 326 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 327 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 328 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 329 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 330 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 331 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 332 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 333 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 334 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 335 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 336 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 337 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 338 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 339 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 340 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 341 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 342 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 343 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 344 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 345 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 346 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 347 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 348 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 349 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 350 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 351 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 352 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 353 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 354 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 355 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 356 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 357 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 358 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 359 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 360 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 361 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 362 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 363 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 364 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 365 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 366 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 367 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 368 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 369 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 370 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 371 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 372 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 373 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 374 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 375 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 376 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 377 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 378 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 379 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 380 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 381 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 382 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 383 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 384 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 385 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 386 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 387 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 388 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 389 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 390 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 391 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 392 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 393 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 394 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 395 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 396 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 397 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 398 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 399 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 400 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 401 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 402 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 403 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 404 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 405 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 406 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 407 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 408 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 409 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 410 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 411 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 412 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 413 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 414 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 415 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 416 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 417 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 418 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 419 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 420 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 421 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 422 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 423 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 424 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 425 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 426 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 427 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 428 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 429 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 430 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 431 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 432 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 433 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 434 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 435 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 436 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 437 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 438 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 439 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 440 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 441 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 442 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 443 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 444 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 445 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 446 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 447 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 448 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 449 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 450 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 451 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 452 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 453 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 454 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 455 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 456 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 457 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 458 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 459 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 460 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 461 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 462 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 463 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 464 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 465 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 466 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 467 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 468 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 469 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 470 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 471 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 472 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 473 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 474 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 475 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 476 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 477 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 478 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 479 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 480 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 481 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 482 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 483 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 484 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 485 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 486 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 487 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 488 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 489 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 490 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 491 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 492 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 493 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 494 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 495 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 496 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 497 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 498 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 499 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 500 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 501 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 502 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 503 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 504 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 505 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 506 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 507 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 508 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 509 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 510 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 511 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 512 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 513 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 514 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 515 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 516 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 517 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 518 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 519 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 520 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 521 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 522 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 523 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 524 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 525 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 526 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 527 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 528 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 529 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 530 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 531 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 532 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 533 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 534 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 535 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 536 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 537 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 538 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 539 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 540 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 541 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 542 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 543 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 544 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 545 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 546 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 547 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 548 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 549 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 550 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 551 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 552 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 553 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 554 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 555 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 556 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 557 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 558 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 559 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 560 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 561 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 562 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 563 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 564 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 565 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 566 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 567 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 568 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 569 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 570 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 571 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 572 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 573 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 574 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 575 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 576 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 577 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 578 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
