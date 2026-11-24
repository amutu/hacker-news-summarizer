# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-25.md)

*最后自动更新时间: 2026-11-25 04:56:01*
## 1. 针对Check Point安全管理服务器的活跃入侵活动

**原文标题**: Active intrusion campaign against Check Point security management servers

**原文链接**: [https://www.greynoise.io/blog/check-point-security-management-servers-intrusion-campaign](https://www.greynoise.io/blog/check-point-security-management-servers-intrusion-campaign)

GreyNoise于2026年10至11月发现一起针对Check Point安全管理服务器的活跃入侵活动（编号GT13），波及至少22家全球组织，涉及金融、能源、政府、交通、矿业等行业，暂未归因于已知威胁组织。攻击者使用99个IP地址（经ExpressVPN出口或已攻陷的Check Point设备），利用CVE-2026-61500攻陷HFS服务器并建立"操作中继跳板"，随后通过CVE-2026-16232对24台Check Point设备执行逾百项管理任务，窃取防火墙数据库与内部CA证书、卸载安全策略。攻击者还尝试利用Citrix NetScaler、Ivanti、Microsoft Exchange、VMware vCenter等多产品漏洞进行横向移动，使用Nmap、Chisel、Impacket及至少30个Python脚本，疑似借助大语言模型和智能体系统实现自动化渗透与利用。活动时间为2026年10月2日至11月2日，因已维持对受害设备的持久访问，GreyNoise判断该入侵仍在持续，并已与多国政府及CERT机构协作通报相关受害者。

---

## 2. Jetty Pro：我的 Dock 替代品

**原文标题**: Jetty Pro

**原文链接**: [http://hypercritical.co/2026/11/23/jetty-pro](http://hypercritical.co/2026/11/23/jetty-pro)

知名 Mac 开发者 John Siracusa 宣布推出 Jetty Pro，一款可替代或增补 macOS Dock 的自定义浮动面板应用。Siracusa 曾是经典应用 DragThing 的忠实用户，该应用 2019 年停更后，他先后开发了 Front and Center 和 SwitchGlass 以恢复其部分功能。多年来，他一直渴望在屏幕角落放置一个文件夹小面板，却因投入产出比不成比例而搁置。2026 年他借助 AI 编程工具重启该项目，原以为一两天即可完成，实际耗时三个半月。开发中他放弃了通过 Mac App Store 分发的普通版 Jetty，将全部精力投入需特殊权限、使用私有 API 的 Jetty Pro。该应用允许用户在屏幕边缘创建多个高度可自定义的面板，支持文件、文件夹、应用、快捷指令等任意组合，并能解决 Dock 诸多痛点，如单击文件夹即在 Finder 中打开、自由定制图标、按面板独立控制通知徽章与后台应用显示等。Jetty Pro 以每年 9.99 美元订阅制销售，提供 14 天免费试用，1.0 版本历经 160 余个测试版、250 名测试用户打磨而成。Siracusa 坦言这是为"Mac 怪人"打造的利基应用，却也是让他最感幸福的作品。

---

## 3. 喷雾瓶解析

**原文标题**: The Spray Bottle

**原文链接**: [https://mechanical-pencil.com/products/spray-bottle](https://mechanical-pencil.com/products/spray-bottle)

摘要：本文来自"Mechanical Pencil"网站，该网站以图解方式解读日常生活中的工程造物。作者从家中随手之物出发，最终选定喷雾瓶作为首个深度解析对象——它结构精巧却极为常见。现代喷雾瓶诞生于20世纪70年代初，至今设计已多达数千种，但核心原理一致：依靠单向阀实现液体的往复喷射。文章首先介绍基本操作：拉下扳机喷射，松开扳机回充。随后拆解内部结构，涵盖瓶身、瓶塞、密封件、腔室、活塞、弹簧、扳机、球关节、喷嘴及喷嘴锁等关键部件，并展示各活动部件的连接方式。核心章节聚焦单向阀原理——允许流体单向通过、反向阻断，类似原理广泛存在于肥皂瓶、马桶乃至人体心脏中。文章以分步图解演示扳机拉动与释放过程中各部件的联动机制，帮助读者理解"为何每次挤压都能喷出液体"。目前作者正在制作更多爆炸视图与剖面插画，并开放邮件订阅以通知后续产品拆解内容。

---

## 4. 固态网页执行：将Web应用编译为AI智能体的可验证操作

**原文标题**: Compiling web applications into verified operations for AI agents

**原文链接**: [https://protocolis.co/paper/](https://protocolis.co/paper/)

现有Web智能体每步均需调用大模型理解页面并验证操作结果，效率与稳定性受限。本文提出Protocolis编译器，首次将未知网页的控件在无任何模型推理、站点专属代码或历史访问的前提下，自动编译为带类型的可执行操作；模型仅需选择操作，编译器负责执行并报告实际变化。在三种模型规模、三种任务长度的对比实验中（关闭记忆与学习功能），该系统在长任务上的完成率达76%（80/105），各对比中最优替代方案仅46%；其稳定性亦最为突出，最低完成率不低于55%，而所有替代方案最低降至28%。成本方面，同模型下最廉价替代方案的每任务成本为其1.9至26倍；在小模型上，该系统在全部30组配对中均低于前沿模型替代方案的成本，并在24组中匹配或超越其完成率。当系统报告长任务完成时，评判方误判率仅为22%，替代方案为56%。所有测试均在最不利的首次访问条件下进行。作者公开了全部3443次运行记录、测试任务及评判规则。该项目已进入生产环境并拥有付费客户，核心专利正在申请中。

---

## 5. 能装进行李箱的意大利折叠自行车：1963年T&C Pocket Bici

**原文标题**: An Italian folding bicycle design that fits into a suitcase

**原文链接**: [https://www.core77.com/posts/145766/An-Italian-Folding-Bicycle-Design-that-Fits-Into-a-Suitcase](https://www.core77.com/posts/145766/An-Italian-Folding-Bicycle-Design-that-Fits-Into-a-Suitcase)

1963年，意大利金属加工企业Tresoldi & Casiraghi推出了一款名为T&C Pocket Bici的折叠自行车。与当今常见的对折式折叠车不同，该车主件可完全折叠收纳进赛道形车架中，整车能装进自带行李箱，便携性极为突出。其历史起源颇为扑朔迷离：有拍卖网站称该车专为中国市场设计，共售出2500辆；另有资料称中国方面最初订购2000辆，但T&C完成首批1000辆后未能收到尾款，项目随即中止。目前仅存一段展开演示视频，且发布频道来自中国，侧面印证部分产品确实进入了目标市场。评论者指出，该车车轮尺寸甚至小于Brompton的16英寸轮，接近滑板车轮大小，而Bike Friday已能将20英寸轮装入行李箱，大轮径在骑行舒适性上优势明显。这款六十年前的设计在便携收纳上极为超前，但骑行体验恐怕并不理想。

---

## 6. 2035年，提前到来

**原文标题**: 2035 came early

**原文链接**: [https://fzakaria.com/2026/11/23/2035-came-early](https://fzakaria.com/2026/11/23/2035-came-early)

文章以Gary Bernhardt经典演讲《JavaScript的诞生与死亡》为引，讲述其预言中2035年JavaScript统治一切软件的图景因AI加速而提前至2026年实现。作者此前构建了trynix.dev，可在浏览器中运行超30万个Nix包，但受限于QEMU模拟速度，体验偏于新奇。2026年11月，Domen Kožar分享了unkernel——将Linux内核编译为WebAssembly的项目，仅用户层程序仍依赖模拟，性能较QEMU-Wasm提升2至32倍。作者随即集成该引擎，一夜之间实现了X11图形程序、Wayland桌面合成、Mesa与WebGL2渲染、ALSA音频播放及基于WebSocket的联网能力。文章以Bernhardt演讲中最具荒诞感的"浏览器套浏览器"场景作结：Firefox运行于编译为Wasm的Linux之上，嵌入外层Firefox标签页，再加载trynix.dev并再次启动Firefox——这一极端嵌套耗时超一小时方完成渲染。整篇文章以Atwood定律为线索，记录了一场由AI驱动的、将软件终极形态压缩至数年内达成的技术狂想。

---

## 7. Cloudflare 掩盖底层基础设施的短板

**原文标题**: Cloudflare hides shortcomings of the underlying infrastructure

**原文链接**: [https://charlie.fish/posts/2026/11/what-cloudflare-doesnt-tell-you/](https://charlie.fish/posts/2026/11/what-cloudflare-doesnt-tell-you/)

摘要：Cloudflare在推动TLS、IPv6、后量子加密等现代互联网技术普及方面贡献卓著，却同时掩盖了底层基础设施的诸多缺陷。用户与Cloudflare之间的连接可能享有现代加密和IPv6支持，但其回源服务器的连接可能完全不加密且仅依赖IPv4，造成用户体验与实际连接状态之间的严重脱节。作者指出，Cloudflare未能充分提醒网站管理员这些安全短板，管理面板缺乏主动预警机制，管理员需自行排查才能发现回源连接的加密与协议问题，透明度严重不足。更令人遗憾的是，Cloudflare文档明确表明，当源服务器同时拥有IPv4和IPv6地址时，其优先选择IPv4回源，与该公司长期推动IPv6采用的立场自相矛盾，即便管理员已部署IPv6，Cloudflare仍不优先使用。作者建议行业应让CDN等中间网络向用户暴露源服务器的TLS连接状态和IP协议版本，以增强全链路透明度，使网站安全实践接受公众监督。Cloudflare应充当推动互联网现代化的催化剂，而非让网站所有者长期规避技术升级的工具。

---

## 8. 拆分 USB-C：单端口并行承载 USB 3 与 USB 2

**原文标题**: Splitting USB-C: USB 3 and USB 2 on one port

**原文链接**: [https://www.frankchiarulli.com/blog/splitting-usb-c/](https://www.frankchiarulli.com/blog/splitting-usb-c/)

作者为开源项目 restorekit 设计 USB-C 内联转接板，通过 USB-PD 将 Mac 置入 DFU 模式以完成固件重刷。为提升恢复速度，作者先设计了带 GL3510 芯片的 USB 3 方案（Pro v1），但 BOM 高达 10.44 美元且速率仅 5 Gbps。关键发现是：USB-C 内部 USB 2（D+/D-）与 USB 3（TX/RX 差分对）为两套完全独立的物理总线，可并行工作。Pro v2 据此彻底移除 USB 3 Hub，SuperSpeed 信号经两颗 CH9441P 模拟 mux 直通目标设备，USB 2 仍由 CH334P 小 Hub 承载 MCU 与 DFU 控制通道。macOS 实测中，单物理端口同时枚举出 480 Mb/s USB 2 子树（Hub + 12 Mb/s MCU）和 10 Gb/s SuperSpeed 子树，验证方案可行。经全面芯片替换与被动器件精简，Pro v2 BOM 降至 2.93 美元（较 v1 降 72%，较 Lite 降 42%），板面积缩小 40%。软件侧利用操作系统 companion port 机制（macOS 的 UsbProtocolCompanion、Linux 的 port/peer 符号链接）解决 USB 3 设备绕过 Hub 后无法关联对应转接板的问题。

---

## 9. 用闲置算力训练你的本地模型

**原文标题**: A training engine for your local model, using your idle compute

**原文链接**: [https://github.com/sous-labs/songe](https://github.com/sous-labs/songe)

Songe 是一款本地模型训练引擎，利用 agent 空闲时的算力在后台自动优化你的本地模型。你通过 opencode、pi 等 OpenAI 兼容工具正常使用模型时，Songe 静默记录每次交互的工具结果、报错及你的下一条消息；agent 进入空闲后，这些记录便成为训练素材，让模型学会预判下一步。

Songe 提供两种"梦境"模式：Quick Dream 在数分钟内将你的偏好写入模型指令；Deep Dream 则在你离开时训练一个小型适配器（on-policy 蒸馏）。新版本须经自身对话上的验证方可启用，可一键回滚至任意历史版本。

隐私方面，Songe 无账号、无遥测、不上传云端，也不执行你的工具；仅在 agent 静默、内存充裕且电量正常时运行，你一回来即停。安装支持 uv、pipx 及 Homebrew，兼容 LM Studio、vLLM、Ollama、llama.cpp 等本地推理服务，Apple Silicon 与 NVIDIA 均可训练。所有数据存于本地，卸载即可完全恢复。

---

## 10. 从CUDA与JAX到TorchTPU：Cayley图求解器的迁移实践

**原文标题**: From CUDA and Jax to TorchTPU: Lessons from a Cayley Graph Solver

**原文链接**: [https://andlukyane.com/blog/cayley-graphs-and-torchtpu](https://andlukyane.com/blog/cayley-graphs-and-torchtpu)

作者将基于神经启发式的Cayley图Beam Search求解器从CUDA（A100）与JAX（TPU）迁移至Google新发布的TorchTPU后端。初始移植后，训练慢于A100达1.65倍，Beam Search慢于JAX达5.7倍。经系统优化后，训练端开启fused eager融合小算子、以einsum重写注意力规避SDPA反向传播中的布局转换、消除动态形状与主机同步，每轮从234.8秒降至132秒，反超A100约8%；推理端以排序去重替代torch.unique、全链路固定张量形状重写Beam Search，并修复不稳定排序致优质状态丢失的去重缺陷，每层速度反超JAX 25%，解法长度一致。关键教训包括：TPU上小矩阵利用率极低使注意力成主要瓶颈；fused eager下DDP检查点会死锁；后端版本变更可暴露算法隐患，最终向上游提交了修复issue。代码已在Kaggle免费TPU v5e-8上公开。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-25](output/hacker_news_summary_2026-11-25.md) |
| 2 | [2026-11-24](output/hacker_news_summary_2026-11-24.md) |
| 3 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 4 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 5 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 6 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 7 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 8 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 9 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 10 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 11 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 12 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 13 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 14 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 15 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 16 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 17 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 18 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 19 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 20 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 21 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 22 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 23 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 24 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 25 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 26 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 27 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 28 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 29 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 30 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 31 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 32 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 33 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 34 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 35 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 36 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 37 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 38 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 39 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 40 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 41 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 42 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 43 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 44 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 45 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 46 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 47 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 48 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 49 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 50 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 51 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 52 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 53 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 54 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 55 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 56 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 57 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 58 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 59 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 60 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 61 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 62 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 63 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 64 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 65 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 66 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 67 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 68 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 69 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 70 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 71 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 72 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 73 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 74 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 75 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 76 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 77 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 78 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 79 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 80 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 81 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 82 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 83 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 84 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 85 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 86 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 87 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 88 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 89 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 90 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 91 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 92 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 93 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 94 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 95 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 96 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 97 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 98 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 99 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 100 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 101 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 102 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 103 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 104 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 105 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 106 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 107 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 108 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 109 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 110 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 111 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 112 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 113 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 114 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 115 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 116 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 117 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 118 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 119 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 120 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 121 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 122 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 123 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 124 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 125 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 126 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 127 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 128 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 129 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 130 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 131 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 132 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 133 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 134 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 135 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 136 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 137 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 138 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 139 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 140 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 141 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 142 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 143 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 144 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 145 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 146 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 147 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 148 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 149 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 150 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 151 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 152 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 153 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 154 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 155 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 156 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 157 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 158 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 159 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 160 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 161 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 162 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 163 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 164 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 165 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 166 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 167 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 168 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 169 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 170 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 171 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 172 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 173 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 174 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 175 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 176 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 177 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 178 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 179 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 180 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 181 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 182 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 183 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 184 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 185 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 186 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 187 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 188 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 189 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 190 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 191 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 192 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 193 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 194 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 195 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 196 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 197 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 198 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 199 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 200 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 201 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 202 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 203 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 204 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 205 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 206 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 207 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 208 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 209 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 210 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 211 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 212 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 213 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 214 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 215 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 216 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 217 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 218 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 219 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 220 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 221 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 222 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 223 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 224 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 225 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 226 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 227 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 228 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 229 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 230 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 231 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 232 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 233 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 234 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 235 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 236 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 237 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 238 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 239 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 240 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 241 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 242 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 243 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 244 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 245 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 246 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 247 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 248 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 249 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 250 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 251 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 252 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 253 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 254 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 255 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 256 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 257 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 258 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 259 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 260 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 261 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 262 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 263 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 264 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 265 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 266 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 267 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 268 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 269 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 270 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 271 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 272 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 273 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 274 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 275 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 276 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 277 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 278 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 279 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 280 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 281 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 282 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 283 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 284 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 285 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 286 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 287 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 288 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 289 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 290 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 291 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 292 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 293 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 294 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 295 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 296 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 297 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 298 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 299 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 300 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 301 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 302 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 303 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 304 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 305 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 306 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 307 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 308 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 309 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 310 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 311 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 312 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 313 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 314 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 315 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 316 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 317 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 318 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 319 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 320 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 321 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 322 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 323 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 324 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 325 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 326 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 327 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 328 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 329 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 330 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 331 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 332 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 333 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 334 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 335 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 336 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 337 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 338 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 339 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 340 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 341 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 342 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 343 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 344 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 345 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 346 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 347 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 348 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 349 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 350 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 351 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 352 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 353 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 354 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 355 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 356 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 357 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 358 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 359 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 360 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 361 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 362 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 363 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 364 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 365 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 366 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 367 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 368 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 369 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 370 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 371 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 372 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 373 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 374 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 375 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 376 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 377 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 378 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 379 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 380 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 381 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 382 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 383 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 384 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 385 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 386 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 387 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 388 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 389 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 390 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 391 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 392 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 393 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 394 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 395 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 396 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 397 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 398 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 399 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 400 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 401 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 402 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 403 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 404 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 405 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 406 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 407 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 408 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 409 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 410 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 411 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 412 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 413 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 414 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 415 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 416 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 417 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 418 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 419 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 420 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 421 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 422 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 423 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 424 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 425 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 426 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 427 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 428 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 429 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 430 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 431 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 432 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 433 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 434 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 435 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 436 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 437 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 438 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 439 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 440 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 441 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 442 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 443 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 444 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 445 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 446 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 447 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 448 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 449 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 450 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 451 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 452 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 453 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 454 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 455 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 456 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 457 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 458 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 459 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 460 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 461 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 462 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 463 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 464 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 465 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 466 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 467 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 468 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 469 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 470 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 471 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 472 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 473 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 474 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 475 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 476 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 477 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 478 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 479 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 480 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 481 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 482 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 483 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 484 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 485 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 486 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 487 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 488 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 489 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 490 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 491 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 492 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 493 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 494 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 495 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 496 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 497 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 498 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 499 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 500 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 501 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 502 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 503 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 504 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 505 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 506 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 507 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 508 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 509 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 510 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 511 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 512 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 513 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 514 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 515 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 516 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 517 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 518 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 519 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 520 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 521 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 522 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 523 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 524 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 525 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 526 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 527 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 528 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 529 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 530 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 531 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 532 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 533 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 534 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 535 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 536 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 537 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 538 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 539 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 540 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 541 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 542 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 543 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 544 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 545 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 546 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 547 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 548 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 549 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 550 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 551 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 552 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 553 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 554 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 555 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 556 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 557 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 558 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 559 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 560 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 561 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 562 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 563 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 564 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 565 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 566 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 567 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 568 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 569 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 570 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 571 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 572 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 573 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 574 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 575 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 576 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 577 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 578 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 579 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 580 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 581 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 582 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 583 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 584 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 585 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 586 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 587 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 588 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 589 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 590 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 591 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 592 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 593 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 594 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 595 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 596 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 597 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 598 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 599 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 600 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 601 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 602 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 603 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 604 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 605 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 606 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 607 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 608 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 609 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 610 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 611 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
