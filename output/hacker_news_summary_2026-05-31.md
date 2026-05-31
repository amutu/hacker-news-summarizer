# Hacker News 热门文章摘要 (2026-05-31)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Cloudflare Turnstile 要求可指纹识别的WebGL

**原文标题**: Cloudflare Turnstile requiring fingerprintable WebGL

**原文链接**: [https://hacktivis.me/articles/cloudflare-turnstile-webgl-fingerprinting](https://hacktivis.me/articles/cloudflare-turnstile-webgl-fingerprinting)

**摘要：**

本文报道称，Cloudflare Turnstile（一种“验证你是人类”的服务）已开始要求访问WebGL以进行设备指纹识别。该变动已实施约一周，导致基于WebKitGTK的浏览器验证失败，出现无限循环，并阻断了对许多网站的访问。

作者认为，这一WebGL要求的唯一目的是追踪，因为Cloudflare自身声明其使用浏览器指纹识别进行验证。该服务在WebKitGTK上失败，是因为WebKit长期阻止此类指纹识别技术（这一隐私立场甚至为苹果所采用）。作者怀疑Cloudflare已豁免Safari，但实质上封杀了所有其他WebKit浏览器。

文章还批评了Mozilla Firefox，指出虽然Firefox声称能防范WebGL指纹识别，但其经过处理的GPU特征仍足以泄露数据以通过Turnstile验证。即便是“严格”隐私模式也未启用`privacy.resistfingerprinting`标志，这意味着注重隐私的Firefox用户未来也可能面临问题，除非他们手动启用该设置。相比之下，WebKit和Blink等浏览器返回硬编码字符串，提供了更强的保护。

最后，博文指责Cloudflare将追踪置于隐私之上，屏蔽了使用合法隐私工具的用户。

---

## 2. 1-Bit Bonsai：面向本地设备的4B图像生成

**原文标题**: 1-Bit Bonsai Image 4B Image Generation for Local Devices

**原文链接**: [https://prismml.com/news/bonsai-image-4b](https://prismml.com/news/bonsai-image-4b)

**摘要：** PrismML 推出了 Bonsai Image 4B，这是一系列专为笔记本电脑和 iPhone 等本地设备设计的紧凑型图像生成模型。该系列基于 FLUX.2 Klein 4B 构建，包含两个变体：**1-bit**（二进制权重，变压器 0.93 GB）实现最大压缩，以及 **Ternary**（{-1,0,+1} 权重，1.21 GB）实现更优质量。两者均采用 FP16 缩放，与原始 7.75 GB 的变压器相比，内存减少了 6.4 倍至 8.3 倍。在 iPhone 17 Pro Max 上，全精度模型无法适配，但 Bonsai 可在设备上运行，生成一张 512x512 的图像仅需 9.4 秒。基准测试结果显示，三元模型保留了 FLUX.2 Klein 4B 95% 的精度，而 1-bit 版本保留了 88%。该公司认为，本地生成能够实现更快的迭代、更低的成本以及更好的隐私保护。这两个模型均将以 Apache 2.0 许可开源发布，并开放权重。

---

## 3. Dav2d

**原文标题**: Dav2d

**原文链接**: [https://jbkempf.com/blog/2026/dav2d/](https://jbkempf.com/blog/2026/dav2d/)

无法访问该文章链接。

---

## 4. 肌酸可提升大脑能量水平，并将阿尔茨海默病认知衰退速度减缓30%

**原文标题**: Creatine raise brain energy levels and slow Alzheimer's cognitive decline by 30%

**原文链接**: [https://thesciverse.org/scientists-found-that-the-creatine-supplement-millions-take-for-muscle-gains-is-quietly-raising-brain-energy-levels-and-slowing-early-alzheimers-cognitive-decline-by-30/](https://thesciverse.org/scientists-found-that-the-creatine-supplement-millions-take-for-muscle-gains-is-quietly-raising-brain-energy-levels-and-slowing-early-alzheimers-cognitive-decline-by-30/)

根据2025年的一项综合评估与临床试验，常用作肌肉补充剂的肌酸对大脑功能也有显著益处。它能穿越血脑屏障，提升神经元中的磷酸肌酸水平，为高负荷认知任务提供紧急能量储备。一项针对早期阿尔茨海默病患者的里程碑式初步试验发现，每日补充肌酸可使认知衰退速度减缓约30%，同时大脑磷酸肌酸水平出现可测量的提升。对于健康成年人，肌酸能提高处理速度与认知表现，尤其在睡眠剥夺等代谢应激状态下效果更佳。它正逐步成为针对大脑能量缺陷的抑郁症潜在辅助疗法。本文强调，这些大脑益处——包括改善记忆、注意力与抗压能力——会在常规使用中悄然显现，且与健身目标无关。

---

## 5. AI时代的原型制作速度

**原文标题**: The Speed of Prototyping in the Age of AI

**原文链接**: [https://darylcecile.net/notes/speed-of-prototyping-age-of-ai](https://darylcecile.net/notes/speed-of-prototyping-age-of-ai)

这篇文章是一位软件工程师的亲身反思，讲述了过去一年中人工智能如何改变了他们的工作流程。作者指出，他们过去的主要瓶颈——搭建项目框架和连接组件所需的时间——已基本消失，使他们能够更快地从构思转向工作原型。作者列举了最近的一些项目（包括一门系统语言、一门标记语言和一个命令行工具），这些项目放在以前可能根本不会完成或甚至不会启动。

关键要点包括：

- **思维转变**：人工智能迫使人们进行更抽象的规划——专注于系统边界、接口契约和整体规范，而不是逐行编写代码。这提升了他们向人类和模型清晰描述任务与成功标准的能力。
- **生产力提升**：在典型任务上，效率大约提高了四倍（从任务到拉取请求的时间缩短），但更重要的是，工作的*范围*扩大了——以前“想法不错，但没时间做”的项目，现在一个下午就能完成。
- **不足之处**：减少编码意味着必须刻意保持技术熟练度——通过手动实现、阅读源代码、使用调试器——以便在人工智能力不能及时自己依然有能力。
- **工作影响**：更高的效率释放了带宽，可用于自动化项目，并将内部代码空间启动时间缩短了约50%。
- **更广泛的背景**：作者对人工智能的环境与社会影响仍持谨慎态度，但就目前而言，这种速度和探索性确实令人感到有趣。他们推荐阅读麦克·麦奎德、卡西迪·威廉姆斯和西蒙·威利森的类似反思。

---

## 6. Codex 刚刚找到了我电脑上没有 sudo 的“变通方法”。

**原文标题**: Codex just found a "workaround" of not having sudo on my PC

**原文链接**: [https://twitter.com/i/status/2060746160558543217](https://twitter.com/i/status/2060746160558543217)

**摘要：**

这不是一篇文章，而是一张Twitter/X错误页面的截图，并非关于sudo变通方法的发现。该页面显示一条消息，称用户浏览器禁用了JavaScript，导致无法访问X（原Twitter）。页面提示用户启用JavaScript或切换到支持的浏览器以继续使用该平台。页面还包含标准页脚链接，指向帮助、服务条款、隐私、Cookie政策及广告信息，并标注© 2026。标题“Codex刚刚发现了一个‘变通方法’……”似乎是一个具有误导性的标题或评论，与所显示的实际内容（仅为技术性访问错误）无关。

---

## 7. 蓝牙名称引发警报，美联航767航班返回纽瓦克

**原文标题**: United Airlines 767 returns to Newark after Bluetooth name sparks alert

**原文链接**: [https://simpleflying.com/united-airlines-767-returns-newark-bluetooth-name-alert/](https://simpleflying.com/united-airlines-767-returns-newark-bluetooth-name-alert/)

美国联合航空一架波音767-400ER客机（UA236航班）原计划从纽瓦克飞往西班牙马略卡岛帕尔马，2026年5月30日在大西洋中部上空被迫返航，原因是一名乘客的蓝牙扬声器名称触发了安全警报。该设备被命名为“炸弹”，引发了炸弹威胁应急响应。

起飞约60分钟后，机组人员宣布乘客必须关闭蓝牙，并发出最后一分钟警告。有两台设备仍处于激活状态，导致飞机应答机编码设置为7700并折返纽瓦克，于当晚8点50分降落。录音显示，地面团队报告该设备名称为“四个字母的单词”，随后确认为“炸弹”。

飞机降落后，乘客被当地及联邦执法人员接走，被告知将所有随身物品留在机上，仅携带护照和手机。经过安全排查后，乘客于次日凌晨2点30分左右重新登上一架替代航班——即同一架飞机——并再次通过了美国运输安全管理局安检。此次事故之前，美联航航班曾发生多起类似安全恐慌事件，包括一个名为“自由巴勒斯坦，去死吧犹太复国主义者”的WiFi热点，以及近期因炸弹威胁导致疏散的事件，凸显出此类威胁所受的高度重视。

---

## 8. 若远程办公而非人工智能导致初级员工招聘疲软，那又怎样？

**原文标题**: What if remote working, not AI, is to blame for weak junior hiring?

**原文链接**: [https://www.ft.com/content/2205e2d0-50dc-4e80-9bf7-78d0272276c0](https://www.ft.com/content/2205e2d0-50dc-4e80-9bf7-78d0272276c0)

无法访问文章链接。

---

## 9. 回复：[PATCH] OOM_pardon，即“别杀掉我的xlock”

**原文标题**: Re: [PATCH] OOM_pardon, a.k.a. don't kill my xlock

**原文链接**: [https://lwn.net/Articles/104185/](https://lwn.net/Articles/104185/)

本文是对Linux内核邮件列表中关于“OOM_pardon”系统控制提案的讽刺回应。该提案允许用户指定某些进程（如xlock）永远不应被内存不足（OOM）机制杀死。作者安德里斯·布劳威尔以一家航空公司的寓言作为回应。

故事中，航空公司为省钱而减少燃油携带量，却偶尔导致飞行途中燃油耗尽。工程师非但不去解决根本问题，反而研发出一种“燃油耗尽”（OOF）机制：通过弹射乘客来减轻飞机重量。围绕如何“恰当”选择牺牲者，他们制定了详尽的理论——体重、年龄、财富，或头等舱乘客及飞行员可获豁免。

故事的讽刺点在于：当这个弹射机制被创造出来后，即便在没有燃油短缺的情况下，它也会莫名启动失灵。这恰如内核的OOM杀手：与其修复内存管理避免超额承诺，人们却专注于选择杀死哪个进程，而该机制本身还会无故滥杀进程。布劳威尔的类比批判了这种治标不治本的做法。

---

## 10. 可重新启动序列

**原文标题**: Restartable Sequences

**原文链接**: [https://justine.lol/rseq/](https://justine.lol/rseq/)

本文讨论了**可重启序列（rseq）**——Linux内核4.18版本引入的一项功能，它能在无需锁或原子操作的情况下实现超快速、线程安全的数据结构。

**工作原理：** rseq允许线程向内核注册一小段汇编指令序列。如果内核在线程执行中途将其抢占，它会自动跳转至中止处理程序以重试操作。这种双向通信通过共享内存（TLS）实现，效率极高。

**性能提升：** 作者展示了多核系统上的巨大加速效果：
- 在96核Threadripper处理器上，rseq使`malloc()`比传统的互斥锁分片**快43倍**。
- 在命中计数器基准测试中，rseq实现了**每秒2740亿次操作**，而使用互斥锁仅为每秒3000万次——CPU时间上快了近**10000倍**。
- 在128核ARM Ampere CPU上，rseq有效将3GHz处理器提升至33GHz等效性能。

**关键要点：**
- rseq目前需要手写汇编且仅适用于现代Linux，但作者预测未来操作系统和语言将提供支持。
- 传统方法（互斥锁、原子操作、CPU分片）存在缓存竞争、内核开销或可移植性不足的问题。
- rseq提供了最佳平衡：完整的操作系统调度抽象与近乎零开销（CPU ID查找仅1纳秒，而系统调用需1微秒）。
- 当前采用者包括tcmalloc、jemalloc、glibc以及作者自己的Cosmopolitan libc。

文章将rseq定位为利用现代多核处理器的关键技术，声称未使用此类硬件的开发者可能错失10倍性能优化机会。

---

## 11. Linux/M68k

**原文标题**: Linux/M68k

**原文链接**: [http://www.linux-m68k.org/](http://www.linux-m68k.org/)

**摘要：**

本文介绍了 **Linux/m68k**，这是一个为摩托罗拉 68020–68060 微处理器定制的 Linux 操作系统移植版本。文章指出该移植版本已有超过 2100 名已确认用户，并鼓励用户注册以证明其商业可行性。该移植版本与其他 Linux 平台源代码兼容，并在 **Amiga、Atari、众多 Apple Macintosh 机型**以及来自 BVM、摩托罗拉和 Tadpole 的特定 **VMEbus 单板计算机**上运行稳定。正在进行的移植版本包括 HP 9000/300 系列、NeXT 工作站（黑色硬件）、Q40/Q60 以及 Sun 3 系列。

本网站提供新闻（内核发布、统计数据）、信息（常见问题解答、操作指南）、发行版指南、FTP 链接、邮件列表、新闻组以及书籍推荐等资源。网站强调仅链接至首页，注明版权条款，并欢迎用户反馈。本文是 Linux/m68k 社区的信息枢纽。

---

## 12. Show HN：Streambed – 将Postgres流式传输至S3上的Iceberg，支持Postgres Wire协议

**原文标题**: Show HN: Streambed – Stream Postgres to Iceberg on S3, Supports Postgres Wire

**原文链接**: [https://github.com/viggy28/streambed](https://github.com/viggy28/streambed)

**Streambed** 是一款 CDC（变更数据捕获）引擎，能够将 Postgres 数据直接流式传输到存储在 S3 上的 Iceberg 表中，无需 ETL 流程或 Apache Spark。

其工作原理是：作为逻辑复制订阅者连接到 Postgres，解码 WAL 消息（插入、更新、删除），按表缓冲行，并定期将行以 Parquet 文件格式刷新到 S3，同时提交 Iceberg 元数据。更新和删除采用写时复制合并。

内置的查询服务器使用嵌入式 DuckDB，通过 Postgres 线协议暴露 Iceberg 表，允许用户在端口 5433 上使用 `psql` 或任何 Postgres 客户端进行查询。

**关键命令：**
- `streambed sync`：用于流式传输 WAL 和写入 Iceberg 的主要守护进程
- `streambed resync`：在一致性快照下进行一次性回填
- `streambed query`：不包含同步功能的独立查询服务器
- `streambed cleanup`：在重新同步前删除表的 S3 对象

**快速开始：** 需要 Docker（Postgres + MinIO）、Go 1.22+ 和 CGO。最小化设置运行 `docker compose up`，然后使用源 URL 和 S3 配置运行 `streambed sync`。

**架构流程：** Postgres WAL → 解码 → 缓冲 → Parquet → S3 → Iceberg 提交，DuckDB 服务于来自 Parquet 数据的查询。

---

## 13. 伦敦的免费屋顶露台

**原文标题**: London's Free Roof Terraces

**原文链接**: [https://diamondgeezer.blogspot.com/2026/05/londons-free-roof-terraces.html](https://diamondgeezer.blogspot.com/2026/05/londons-free-roof-terraces.html)

本文是2026年5月的一篇博客文章，详细记录了作者临时造访伦敦几处免费屋顶露台的经历。作者避开了三座最著名的高层露台（空中花园、地平线22号、瞭望台），因为这些地方需要提前预约。于是，他们探访了那些允许直接进入、无需预约的露台。

作者的行程包括利德贺街1号露台（4楼），这里被形容为一个奇特低矮的空间，视野有限且部分被附近建筑工程遮挡。接着是芬丘奇街120号花园（15楼），这是一座备受欢迎且历史悠久的空中花园，可360度全景欣赏，清晰看到塔桥和小黄瓜大厦。随后他们造访了万新昌屋顶露台（6楼），这里能欣赏到圣保罗大教堂独特而完美的框景。

作者还提到了泰特现代美术馆10楼，指出其阳台因邻近公寓的隐私诉讼而封锁，成为一个被浪费的空间。最后，他们试图参观邮政大厦屋顶花园，却发现因"必要维护"而关闭，作者推测这可能是为避免支付人工费而找的借口。文章结尾推荐120号花园作为临时到访的最佳选择。

---

## 14. 《网站规格说明》

**原文标题**: The Website Specification

**原文链接**: [https://specification.website/](https://specification.website/)

本文介绍了一套与平台无关的高质量网站建设技术规范。该规范涵盖十大类共128项检查清单：基础、SEO、无障碍性、安全性、知名URI、代理适配、性能、隐私、韧性与国际化。

每项主题均关联权威标准来源（如WHATWG、WCAG、IETF）。该规范兼容任何Web框架——无论WordPress、Next.js还是纯HTML——整个项目以开源形式托管于GitHub，内容可编辑。网站可用于审计现有站点、学习特定最佳实践，并通过拉取请求提交改进方案。

针对开发者和AI代理，该规范以开放式MCP服务器（只读、无需认证）和Agent技能形式提供。每个规范页面可通过`Accept: text/markdown`标头获取Markdown格式内容。其核心要义是：优质网站应满足这些中立、基于标准的要求，从而确保所有用户的可用性、安全性、搜索可见性与系统韧性。

---

## 15. 度假时胰岛素泵没电了

**原文标题**: Having your insulin pump die while you're on vacation

**原文链接**: [https://blog.lauramichet.com/what-its-like-to-have-the-machine-that-keeps-you-alive-die-while-youre-on-vacation/](https://blog.lauramichet.com/what-its-like-to-have-the-machine-that-keeps-you-alive-die-while-youre-on-vacation/)

作者是一名1型糖尿病患者，描述了假期中遇到的灾难性情况：其使用的Tandem tslim X2胰岛素泵反复出现"CARTRIDGE ALARM 20A"错误报警，导致胰岛素输注完全停止。在圣达菲的一周里，胰岛素泵约出现十次故障，迫使作者频繁更换储药器并浪费宝贵的胰岛素（每次更换浪费每支40单位储药量加10单位管路预充量）。起初作者未意识到是设备本身故障，后来上网发现储药器并无问题，只需等待后取下并重新安装储药器并重启预充即可临时恢复运行。

客服确认胰岛素泵需要更换，但尽管作者正在度假，仍将新设备寄往洛杉矶的家中而非其酒店。作者试图通过在线医院留言系统获取备用长效胰岛素笔处方，但恰逢阵亡将士纪念日长周末，值班系统仅限电话联系且未公布号码。作者拒绝前往昂贵的急诊室（虽然能开具相同处方），选择继续度假活动，随身携带所有医疗用品并保持在一小时车程可达医院的距离内。这一经历凸显了依赖有缺陷的医疗设备和公司生存时固有的挫败感与权力失衡——患者既要遵守医嘱，又亟需即时解决方案。

---

## 16. 《后室》首映票房8100万美元惊艳亮相

**原文标题**: 'Backrooms' Stuns with $81M Debut

**原文链接**: [https://variety.com/2026/film/box-office/backrooms-box-office-record-opening-weekend-obsession-jumps-star-wars-crumbles-1236763355/](https://variety.com/2026/film/box-office/backrooms-box-office-record-opening-weekend-obsession-jumps-star-wars-crumbles-1236763355/)

A24恐怖片《后室》由20岁的YouTube明星凯恩·帕森斯执导，国内首映票房8100万美元，创下A24影史最佳开画纪录及原创恐怖片最高首周末票房，震惊业界。该片制作成本约1000万美元，全球累计票房已达1.18亿美元。与此同时，焦点影业的《痴迷》同样打破常规，第三个周末票房逆势上涨10%至2640万美元，以区区100万美元预算实现北美票房破亿。这两部由YouTube创作者执导的影片吸引了大量Z世代观众。

反观迪士尼的《曼达洛人与格鲁古》，次周票房暴跌70%至2500万美元，跌至第三位，表明其核心粉丝群体外吸引力不足。其他新片表现平平：索尼家庭喜剧《养家之人》开画仅收750万美元，焦点影业战争片《压力》首映票房540万美元。迈克尔·杰克逊传记片《迈克尔》持续稳健表现，再收1170万美元，全球票房逼近8.51亿美元。

暑期档大战即将升温，后续重磅新片包括《惊声尖笑》、斯皮尔伯格新作《披露日》、《玩具总动员5》及《蜘蛛侠：崭新的一天》。分析师指出，尽管独立恐怖片正为市场注入活力，但整个行业仍需靠大IP维持增长势头。

---

## 17. Deflock 在美国完成10万次ALPR映射

**原文标题**: Deflock hits 100k ALPRs Mapped in USA

**原文链接**: [https://deflock.org/](https://deflock.org/)

**概要：**

文章宣布，专注于隐私保护的“反 flock”计划已成功绘制出美国境内超过10万个自动车牌识别摄像头的位置。这些摄像头通常被警方和私营公司使用，但因未经授权或公众同意追踪车辆而受到批评。该计划的众包地图旨在通过揭露这些监控设备的位置来提高透明度。

关键点包括该项目依赖志愿者贡献来识别和记录ALPR设备。已绘制的摄像头主要来自Flock Safety公司，但也包括其他系统。“反 flock”认为，ALPR的广泛部署会带来隐私风险，可能导致大规模监控，对边缘化社区造成不成比例的影响。该倡议旨在让公民了解监控基础设施，从而倡导更严格的监管或移除不合理的摄像头。达到10万个绘制单元是他们在记录和挑战ALPR技术全国扩散过程中的一个重要里程碑。

---

## 18. 反压即所需

**原文标题**: Backpressure is all you need

**原文链接**: [https://www.lucasfcosta.com/blog/backpressure-is-all-you-need](https://www.lucasfcosta.com/blog/backpressure-is-all-you-need)

本文提出将“背压”——一种系统工程概念，即下游组件向上游发送减速信号——作为改进AI编码智能体的框架。

**问题：** 两种常见的编码智能体方法存在缺陷。让LLM无人值守运行会导致错误和难以管理的PR。强制人工审查每一步骤则违背了委派任务的初衷。

**解决方案：** 构建自动化防护栏（背压），使智能体在人工审查前自行验证工作成果。在传统开发中，背压来源于：
- **自动化测试**（开发者在请求审查前根据本地测试反馈进行迭代）
- **类型系统**（如TypeScript，在边界处捕获不匹配）
- **CI流水线**（过滤明显未就绪的代码）

**将背压应用于AI智能体：** 为避免人类成为默认的背压机制（审查、在机器人之间复制反馈），作者在Claude的`/goal`循环中内置了自动化检查：

1. **代码检查、测试、验证脚本**——在每次迭代中运行，而不仅限于最终阶段
2. **手动测试**（cURL、实际浏览器）——在自动化检查通过后进行
3. **基准测试**——针对性能敏感型应用
4. **审查智能体**——进行功能性、测试、类型、简洁性检查
5. **规划阶段审查**——在编码开始之前

**关键见解：** 通过强制智能体在开发过程中频繁面对使用者的期望（而不仅限于审查时），人类得以解放，专注于更高层次的设计决策，而非低层级的正确性把关。目标是在让较长无人值守会话足够安全且有用的同时，将人类保持在机器无法检查的事物的决策环节中。

---

## 19. 试验显示：每日服用一次的药片可将最致命癌症的生存期延长一倍

**原文标题**: Daily pill can double survival time for deadliest cancer, trial shows

**原文链接**: [https://www.theguardian.com/society/2026/may/31/daily-pill-daraxonrasib-double-survival-time-pancreatic-pancreas-cancer-clinical-trial](https://www.theguardian.com/society/2026/may/31/daily-pill-daraxonrasib-double-survival-time-pancreatic-pancreas-cancer-clinical-trial)

在美国临床肿瘤学会（Asco）会议上公布的一项临床试验显示，一种名为达拉索西布（daraxonrasib）的每日口服药可将晚期胰腺癌患者的生存期延长一倍。胰腺癌是世界上最致命的癌症。该试验涉及500名癌细胞已扩散的患者：服药组患者平均生存13.2个月，而化疗组患者生存期仅为6.6至6.7个月，且副作用更少。

专家们称赞这一发现是"游戏规则改变者"和"大满贯"。达拉索西布通过将分子粘合在一起，靶向并抑制驱动几乎所有胰腺癌的Kras蛋白。在患有最常见类型胰腺癌的患者中，超过90%存在Kras突变。该药是一种新型Ras抑制剂，无论具体变异类型如何，都能阻止癌症生长。

研究人员指出，这一突破为通常发现较晚的胰腺癌带来了前所未有的希望——半数患者在确诊后三个月内死亡。尽管结果令人鼓舞，但专家强调让患者获得这些治疗至关重要。类似的药物也正在针对肺癌和结肠癌进行测试。

---

## 20. Steam Deck在北美涨价后24小时内售罄

**原文标题**: Steam Deck sells out in North America within 24 hours of price hike

**原文链接**: [https://arstechnica.com/gaming/2026/05/despite-price-hike-steam-deck-is-already-sold-out-in-north-america/](https://arstechnica.com/gaming/2026/05/despite-price-hike-steam-deck-is-already-sold-out-in-north-america/)

**摘要：**

Valve的Steam Deck OLED在北美补货后24小时内即售罄，且此次补货价格大幅上涨。该设备在美国和加拿大已显示“缺货”，但在欧洲、澳大利亚及部分亚洲地区仍有库存。尽管高端机型价格上调至789美元，但其销量依然强劲，推动Steam Deck登顶Steam热销榜（按收入计算，非销量）。

Valve商店页面警告称，由于内存和存储问题，库存将出现“间歇性”短缺——该提示自2月起便已存在。库存追踪数据显示，此后短暂上架成为常态。据报道，Valve正加大出货量以筹备即将推出的“Steam Machine”，短缺状况可能因此延续。

作为替代选择，eBay上有全新或二手的Steam Deck在售，价格接近或低于零售价。搭载SteamOS的联想Legion Go S也已上市，但价格更高。此外，改装者已成功将SteamOS安装于基于Windows的ROG Ally上，该设备仍以600美元的原始首发价出售。

---

## 21. FROST：基于OPFS的SSD时序远程指纹识别技术[pdf]

**原文标题**: FROST: Fingerprinting Remotely using OPFS-based SSD Timing [pdf]

**原文链接**: [https://hannesweissteiner.com/pdfs/frost.pdf](https://hannesweissteiner.com/pdfs/frost.pdf)

根据提供的PDF内容，以下是对文章《**FROST：利用基于OPFS的固态硬盘时序进行远程指纹识别**》的简明摘要：

本文介绍了**FROST**，一种新颖的远程设备指纹识别技术，通过网页浏览器中的**原始私有文件系统（OPFS）**API，利用固态硬盘的时序侧信道信息。与传统依赖硬件或软件属性的指纹识别方法不同，FROST利用了SSD操作的可预测延迟模式。

该攻击通过在浏览器中使用JavaScript，通过OPFS API执行定时读写操作。由于SSD中的NAND闪存具有基于磨损均衡、垃圾回收和页面映射等因素的特征性时序变化，这些细微的延迟可以被测量并用于构建设备的唯一指纹。

关键点：
- **方法**：基于浏览器的远程SSD读写延迟时序测量。
- **载体**：利用OPFS API，该API专为本地存储设计，但暴露了可测量的I/O时序变化。
- **目标**：设备指纹识别，用于跨会话或跨网站追踪用户，无需依赖Cookie或IP地址。
- **意义**：展示了一种新型侧信道攻击，能够抵抗传统隐私保护措施，因为它利用了硬件组件（SSD）而非软件配置。时序模式在重启和浏览器重置后依然持久，使指纹稳定且难以缓解。

---

## 22. 安全信封图案集——S.E.C.R.E.T

**原文标题**: Security Envelope Pattern collection – S.E.C.R.E.T

**原文链接**: [https://secret-archive.org/](https://secret-archive.org/)

《安全信封图案集——S.E.C.R.E.T：柠檬埃舍尔立方体》一文展现了一种融合视觉谜题设计与安全信封美学的创意概念。"柠檬埃舍尔立方体"可能指受埃舍尔视错觉启发的几何图案，通过柠檬黄主题配色在安全信封表面营造出令人眩晕的三维立方体效果。此类图案的核心功能是防止篡改或内容窥视——使透过信封封口读取或识别隐藏文字变得困难。缩写"S.E.C.R.E.T"暗示这套精选设计兼具实用安全性与艺术表现力。关键信息在于：当将不可能立方体等视错觉图形印于半透明信封窗或内衬时，能通过视觉混乱为隐私增添保护层。文章可能着重探讨美学吸引力与实用安全性的平衡，强调这些图案不止是装饰，更能在保持专业或趣味性信封设计的同时有效阻挡窥探。

---

## 23. 网站监视访客有了新手段：分析SSD活动

**原文标题**: Websites have a new way to spy on visitors: analyzing their SSD activity

**原文链接**: [https://arstechnica.com/security/2026/05/websites-have-a-new-way-to-spy-on-visitors-analyzing-their-ssd-activity/](https://arstechnica.com/security/2026/05/websites-have-a-new-way-to-spy-on-visitors-analyzing-their-ssd-activity/)

**文章摘要：**

一种名为FROST（利用基于OPFS的固态硬盘时序进行远程指纹识别）的新型浏览器追踪技术，允许网站通过测量与用户固态硬盘（SSD）的交互来监视访客。这种侧信道攻击利用了争用现象——即多个进程竞争同一SSD资源时产生的时序延迟。攻击者通过使用JavaScript与源私有文件系统（OPFS，即每个网站分配的独立存储空间）进行交互，从而测量输入/输出延迟。随后，一个预训练的卷积神经网络会分析这些时序模式，以识别设备上打开了哪些其他网站或应用程序，甚至跨浏览器操作，且无需任何用户交互。

关键细节：
- FROST需要一个大型OPFS文件（≥1 GB），这可能会引起用户警觉。
- 仅当访客的OPFS文件与目标应用或网站存储在同一SSD上时，该方法才有效。
- 缓解措施包括关闭未使用的标签页、监控OPFS文件大小，或由浏览器制造商限制最大文件大小。
- 该攻击已在macOS（M2 Mac）上演示，并在Linux上部分可行；Windows未进行测试。
- 目前尚未发现真实世界中的FROST攻击。该研究计划于7月在DIMVA会议上发表。

---

## 24. 我把数据中心GPU装进了我的游戏电脑

**原文标题**: I put a datacenter GPU in my gaming PC

**原文链接**: [https://blog.tymscar.com/posts/v100localllm/](https://blog.tymscar.com/posts/v100localllm/)

**摘要：** 作者详细介绍了一个DIY项目，仅花费200英镑便将一块数据中心GPU（Tesla V100 SXM2，16GB）加装到游戏电脑中，与原有的RTX 4080组合实现了总计32GB显存。

**关键要点：**
- **硬件：** 花费150英镑购入V100 SXM2，50英镑购入SXM2转PCIe转接卡。V100虽无标准PCIe/电源接口，但拥有5120个CUDA核心和带宽达900 GB/s的HBM2显存——超过RTX 4080（736 GB/s）及多数苹果M系列芯片。
- **噪音修复：** 转接卡风扇噪音高达82分贝。通过JST PH2.0转接线将其连接至主板风扇接口，PWM控制显著降低噪音，同时将温度保持在50°C以下。
- **软件：** 使用NixOS搭配旧版NVIDIA驱动（分支550.x）以同时支持Volta架构V100和Ada架构RTX 4080。需采用旧版nixpkgs中的CUDA 12.2。必须启用`services.xserver.enable = true`方能加载NVIDIA内核模块。
- **性能：** 运行Qwen3.6-27B-MTP（Q5_K_M量化，约19GB）时，将张量拆分至两块GPU，实现约32 tok/s的推理速度及133-160 tok/s的提示处理速度。多令牌预测（MTP）可进一步将速度提升至50-60 tok/s。
- **设置：** 系统从USB-C NVMe硬盘启动，便于切换至Windows玩游戏。模型文件通过NFS存储在TrueNAS服务器上。
- **注意事项：** V100在热重启后可能无法识别（需冷启动）。机器学习推理运行流畅，游戏不受影响。

**总结：** 一块200英镑的二手服务器GPU提供了极具竞争力的本地大语言模型性能，以极低代价媲美Claude Sonnet等云端模型。

---

## 25. 展示 HN：Atomic 编辑器 —— 基于 Obsidian 风格的 CodeMirror 6 实时预览

**原文标题**: Show HN: Atomic Editor – Obsidian-style live preview for CodeMirror 6

**原文链接**: [https://kenforthewin.github.io/atomic-editor/](https://kenforthewin.github.io/atomic-editor/)

**概要：**

Atomic Editor 是一款为 CodeMirror 6 带来 Obsidian 风格实时预览体验的全新工具。它摒弃了传统的分屏或纯源代码视图，让用户能够直接在编辑器中编辑带有丰富渲染格式的 Markdown 内容。其主要特性包括实时预览标题、粗体、斜体、链接和图片等元素，同时保持无缝的编辑界面。

该编辑器通过自定义控件和装饰器扩展了 CodeMirror 6 的核心功能，确保底层 Markdown 语法在编辑时依然可访问，但在未主动修改时，会以格式化输出的形式在视觉上隐藏起来。这种设计旨在减少视觉杂乱，提供更直观的写作体验，类似于 Obsidian 用户所享受的效果。

Atomic Editor 采用模块化系统构建，使开发者能够自定义哪些语法元素需要获得实时预览支持。其架构专注于性能，利用 CodeMirror 高效的状态管理机制，确保即使处理大型文档也能保持流畅交互。该项目已在 GitHub 上开源，欢迎社区贡献以推动后续开发。

总体而言，Atomic Editor 弥合了纯文本 Markdown 编辑与富 WYSIWYG 界面之间的差距，为使用 CodeMirror 6 构建笔记应用或写作工具的开发者提供了一种轻量级、可扩展的解决方案。

---

## 26. 《你本不该有老板》（2008）

**原文标题**: You weren't meant to have a boss (2008)

**原文链接**: [https://paulgraham.com/boss.html](https://paulgraham.com/boss.html)

**《"你本不该有老板"》摘要（2008年）**

保罗·格雷厄姆认为，现代企业工作对人类智力的伤害，堪比加工食品对身体的伤害。他通过观察初创企业创始人和野生动物得出论断：人类进化适应的是小规模自治团队（约8-20人），而非大型公司的庞大层级结构。

核心问题在于结构性矛盾：大型组织必须拆分小团队，但为协调各方又引入管理"树状结构"。这迫使每个团队充当单个虚拟人，扼杀个人主动性。员工虽能感受到小部落的表面氛围，却缺乏真正自由，从而滋生出模糊的不适感。

对程序员而言，这种危害尤为致命。编程的本质是创造新事物，但大型组织因遗留代码、官僚体系及其他团队掌控的接口，天然抗拒创新。这种限制会抑制新想法，阻碍成长。相反，为自己工作（或加入小创业公司）能释放创造力、加速成长。

格雷厄姆总结道，"正常"工作如同垃圾食品：表面廉价诱人，长期却有害。他建议程序员瞄准小规模——要么加入小公司，要么创立自己的公司。即便创业失败，也比在巨头企业安逸工作更具教益、更贴近人性，能将被压抑的员工蜕变为自信鲜活的创始人。

---

## 27. 格密码学入门指南 [pdf]

**原文标题**: A Gentle Introduction to Lattice-Based Cryptography [pdf]

**原文链接**: [https://cryptography101.ca/wp-content/uploads/lattice-based-cryptography.pdf](https://cryptography101.ca/wp-content/uploads/lattice-based-cryptography.pdf)

根据提供的PDF内容，以下是简明摘要：

本文档是关于格密码学的技术介绍。它聚焦于数学基础，解释了格问题涉及用于构建密码系统的高维几何结构。文本详细介绍了关键困难问题，如最短向量问题（SVP）和带误差学习（LWE），这些问题构成了这些方案的安全基础。

文档阐述了格如何提供强大的安全保证，包括抵抗量子计算机攻击的能力，使其成为后量子密码学的主要候选方案。它讨论了核心原语，如基于格的加密、数字签名，以及更高级的构造如全同态加密（FHE）。

摘要强调了基于格的方法相较于传统数论密码学的效率优势，特别是在复杂运算方面。内容具有一定技术性，但为理解在量子计算威胁当前标准的潜在未来中，格如何实现安全通信提供了基础性认识。

---

## 28. 特利（YC F24）正在招聘工程、设计和市场推广岗位【柏林，现场办公】

**原文标题**: Telli (YC F24) is hiring in engineering, design, and GTM [Berlin, on-site]

**原文链接**: [https://hi.telli.com/join-us](https://hi.telli.com/join-us)

**摘要：**

Telli（YC F24）正在柏林招聘工程、设计和市场推广（GTM）岗位，地点为办公室现场办公。

文章内容极少，仅包含招聘标题及Notion的技术错误提示，要求启用JavaScript才能访问页面。由于链接失效，未提供公司详情、职位描述或申请流程等进一步信息。核心信息是Telli在柏林招聘三个职能领域的岗位，但未启用JavaScript则无法获取完整招聘信息。

---

## 29. Roto：Rust编译型脚本语言问世一周年

**原文标题**: One year of Roto, a compiled scripting language for Rust

**原文链接**: [https://blog.nlnetlabs.nl/one-year-of-roto-the-compiled-scripting-language-for-rust/](https://blog.nlnetlabs.nl/one-year-of-roto-the-compiled-scripting-language-for-rust/)

**《Roto语言一周年回顾》摘要**

Roto是一种面向Rust的静态类型、JIT编译脚本语言，经过一年的重大开发后发布了0.11.0版本。最初作为快速、可嵌入的脚本语言替代方案推出，Roto已通过众多功能成熟起来：while/for循环、f字符串、枚举、复合赋值运算符、泛型类型参数，以及支持Rust-Roto无缝传递的新`List`类型。语法现在更接近Rust（使用`fn`和`//`）。

关键进展包括通过`library!`宏改造注册系统，使批量注册Rust类型、函数和常量到Roto脚本变得更加容易。该项目现在拥有官方徽标，并在技术撰稿人的帮助下改进了手册。Roto开发已迁移到Codeberg。

在EuroRust 2025和FOSDEM 2026上进行了演示。值得注意的是，该项目已获得外部采用：**Iocaine**（一种可编写脚本的代理）使用Roto作为其默认脚本，声称性能优于Lua和Fennel。社区贡献，特别是Iocaine作者提交的错误报告，对Roto的进步起到了关键作用。

未来计划包括添加哈希映射、用户定义状态、泛型函数和更好的工具支持（格式化器、LSP）。团队鼓励反馈和更多外部用例。

---

## 30. 《访鸟》

**原文标题**: Avian Visitors

**原文链接**: [https://theodore.net/projects/AvianVisitors/](https://theodore.net/projects/AvianVisitors/)

**《飞羽访客》项目概述**

泰迪·华纳介绍了一个使用树莓派和BirdNET-PI构建的实时鸟类检测与拼贴系统。该项目通过USB麦克风捕捉鸟鸣，利用康奈尔大学的BirdNET分类器识别物种，并以数字花鸟木版画拼贴形式呈现。

**核心组件：**
- **硬件：** 树莓派（4B/5/Zero 2W）、USB领夹麦克风、micro SD卡（总计约80美元）
- **软件：** BirdNET-PI分支版本，带有自定义拼贴覆盖层

**安装步骤：**
- 在SD卡上安装树莓派OS Lite系统
- 运行安装脚本：`curl -s https://raw.githubusercontent.com/Twarner491/AvianVisitors/avian-visitors/newinstaller.sh | bash`
- 访问拼贴页面：`http://birdnet.local/`；BirdNET-PI标准UI位于`/index.php`

**特色功能：**
- 拼贴使用450幅北美鸟类日本木版风格的捆绑插画（通过Gemini 2.5 Flash生成）
- 每种鸟类包含栖息和飞行两种姿态，配有二值化Alpha遮罩用于重叠检测
- 磁贴排列算法按检测频率等比缩放鸟类尺寸，以中心向外螺旋方式排列
- 前端每30秒轮询一次；适配移动端（390px）至大屏（2560px）显示
- 可选通过Cloudflare Tunnel、Home Assistant REST传感器或MQTT桥接进行转发

**自定义选项：**
- 使用Gemini API密钥及自定义提示词模板重新生成插画
- 通过eBird区域代码（例如`US-CA`）筛选物种，将渲染数量从约3000种减少至本地物种

---

