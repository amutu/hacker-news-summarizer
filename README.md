# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-15.md)

*最后自动更新时间: 2025-12-15 20:21:13*
## 1. “超级安全”的MAGA主题通讯应用泄露所有用户电话号码

**原文标题**: “Super secure” MAGA-themed messaging app leaks everyone's phone number

**原文链接**: [https://ericdaigle.ca/posts/super-secure-maga-messaging-app-leaks-everyones-phone-number/](https://ericdaigle.ca/posts/super-secure-maga-messaging-app-leaks-everyones-phone-number/)

一款名为“自由聊天”的MAGA主题即时通讯应用——即此前存在安全漏洞的Converso应用更名版本——被发现泄露用户电话号码和个人识别码。安全研究人员发现，该应用用于查询联系人注册状态的API接口未设置访问频率限制，攻击者可借此系统性查询并枚举所有用户的电话号码及关联账户ID。

更严重的是，该应用的“频道”功能会向所有频道成员广播其他成员的PIN码至频道元数据中。通过组合利用这两项漏洞——先枚举电话号码获取账户ID，再通过频道数据中泄露的PIN码进行匹配——攻击者可将每个用户的电话号码与其账户恢复PIN码完全关联，彻底瓦解该功能的安全防护。这使所有用户面临账户被接管的风险。

文章详述了研究人员如何对该应用进行逆向工程，记录不安全的API接口，并创建概念验证脚本来演示攻击流程。这与该应用宣称“超级安全”的营销话术及其公开批评WhatsApp等竞争对手类似漏洞的做法，形成了极具讽刺意味的对比。

---

## 2. 联合航空777-200机队在杜勒斯机场发动机故障后面临不确定未来

**原文标题**: United 777-200 fleet faces an uncertain future after Dulles engine failure

**原文链接**: [https://liveandletsfly.com/united-airlines-777-200-future/](https://liveandletsfly.com/united-airlines-777-200-future/)

2025年12月13日，一架美联航波音777-200ER客机从华盛顿杜勒斯机场起飞后不久发生发动机故障，碎片散落并引发灌木丛火灾。飞机安全返航，无人受伤，航空公司对机组人员的处置表示赞许。

然而，此次事件凸显了关于美联航老旧777-200机队未来的更广泛问题。与此同时，该航司正悄然将高密度国内配置的777-200从航班计划中移除。这些主要用于夏威夷等高需求航线的飞机，因运营成本高、维护强度大且较现代机型效率低下，如今被视为经济负担。

核心问题并非安全，而是经济与战略考量。美联航正投资于波音787和空客A321neo等更新、更高效的机型，这些飞机更符合其以高端服务为核心的航线网络。部分机龄已超25年的老旧777客机已陆续停场，不再适应这一长期规划。

尽管单次事件不会直接导致机型退役，但此类事件通过凸显运营中断与成本问题，会加速内部机队决策。可能的结果是，随着租约到期，777-200将通过减少班次、降低使用率及封存等方式逐步淘汰，且不再进行客舱升级投资。

---

## 3. D-Bus是Linux桌面的耻辱

**原文标题**: D-Bus is a disgrace to the Linux desktop

**原文链接**: [https://blog.vaxry.net/articles/2025-dbusSucks](https://blog.vaxry.net/articles/2025-dbusSucks)

作者认为，D-Bus作为Linux进程间通信的一种有用概念，其实现存在根本性缺陷。主要批评包括其宽松、无组织的协议，允许应用程序忽略标准并发送任意数据（如非结构化的“变体”），导致广泛的不兼容性。文章提到一次个人经历：没有应用程序遵循某功能的文档规范，迫使作者不得不依赖反向工程另一实现。

安全性是另一大问题，D-Bus被描述为本质上不安全——缺乏适当的权限控制，允许总线上的任何应用程序访问来自GNOME密钥环等服务的未锁定机密。

为此，作者正在开发一个名为**hyprtavern**的替代方案（采用其**hyprwire**协议）。新系统强调严格的协议遵循、内置权限控制，以及一个设计上安全的键值存储，其中机密信息对注册应用程序私有。虽然尚未准备好广泛采用，但作者希望在其软件生态系统中逐步迁移，并认为这一过渡比从X11转向Wayland的破坏性更小。

---

## 4. 《壮志凌云》NES版中的航母降落

**原文标题**: Carrier Landing in Top Gun for the NES

**原文链接**: [https://relaxing.run/blag/posts/top-gun-landing/](https://relaxing.run/blag/posts/top-gun-landing/)

本文揭示了1987年NES游戏《壮志凌云》中 notoriously difficult aircraft carrier landing 的精确机制。通过逆向工程，作者确定了游戏判定成功降落所检查的具体数值阈值。

安全降落需在流程结束时满足三个条件：
1.  **高度**：必须介于100至299之间（含边界值）
2.  **速度**：必须介于238至337之间（含边界值）
3.  **航向**：飞机必须与航母横向对齐，处于特定航向范围内

文章指出游戏将速度和高度以二进制编码十进制（BCD）形式存储于特定内存地址（分别为$40-$41和$3D-$3E），而内存地址$B6EA处的专用函数会执行最终检查，并将结果写入地址$9E。文中提供了该函数的注释反汇编代码，清晰展示了具体逻辑与分支条件。

总之，实现稳定降落的关键在于将速度和高度维持在规定的狭窄范围内，同时保持与航母的正确对齐，这解开了经典游戏挑战的神秘面纱。

---

## 5. Umbrel – 个人云

**原文标题**: Umbrel – Personal Cloud

**原文链接**: [https://umbrel.com](https://umbrel.com)

Umbrel是一个以两大核心产品为中心的个人家庭云平台：**Umbrel Home**——一款即插即用、最高支持4TB固态存储的硬件设备，以及**umbrelOS**——一个可在自有硬件上免费部署的自托管操作系统。

其核心承诺是通过本地运行服务，让用户完全掌控自己的数据。重点应用包括基于Nextcloud的文件存储、保障金融隐私的比特币节点运行、Plex媒体串流、通过Pi-hole实现全网广告拦截、Home Assistant智能家居自动化，以及本地运行DeepSeek R1和Llama 3等AI模型。

该平台设有应用商店，提供大量一键安装应用，并建立了互助社区。公司定位为赋能“数字主权个体”，让用户拥有数据自主权，摆脱对大型云服务商的依赖。

---

## 6. 过去超新星的宇宙射线浴催生了类地行星。

**原文标题**: Cosmic-ray bath in a past supernova gives birth to Earth-like planets

**原文链接**: [https://www.science.org/doi/10.1126/sciadv.adx7892](https://www.science.org/doi/10.1126/sciadv.adx7892)

**《过去超新星的宇宙射线浴催生类地行星》摘要**

一项新研究提出，附近超新星产生的宇宙射线是太阳系乃至类地行星形成的关键因素。研究表明，这类恒星爆炸产生的冲击波不仅触发了形成太阳的气体云坍缩，还用铝-26等放射性同位素"淋浴"了初生的太阳系。

放射性物质的注入至关重要。随着原行星盘形成，这些同位素衰变为早期固态天体（即星子）提供了内部热源。这种宇宙射线带来的"热浴"产生两大效应：首先，它熔化了这些行星构件的内部，使其分异形成金属核与岩石地幔——这是形成具有铁核的类地行星的关键步骤；其次，加热过程驱散了内部较热星子中的挥发性元素（如水），解释了小行星和岩质行星等内太阳系天体干燥的组成特征。

模型显示，要使超新星恰好输送远古陨石中检测到的铝-26含量，太阳系必须形成于超新星激波边缘的特定"触发区"。这种位置既能注入精确剂量的同位素，又不会彻底破坏气体云结构。

研究结论表明，附近超新星创造的特殊条件——既提供坍缩触发机制，又赋予星体分异所需的内热——可能是形成具有金属核的岩质类地行星的必要配方。这意味着此类行星系统的诞生或许需要这种特定的宇宙环境。

---

## 7. 为Matlab代码辩护

**原文标题**: In Defense of Matlab Code

**原文链接**: [https://runmat.org/blog/in-defense-of-matlab-whiteboard-style-code](https://runmat.org/blog/in-defense-of-matlab-whiteboard-style-code)

本文认为MATLAB的核心价值在于其“白板式”语法，能让工程师以最低的认知成本将数学公式转化为代码。这种语法使代码对重视物理原理而非编程细节的领域专家而言具备可读性与可审查性，在航空航天、医疗设备等关键任务领域发挥着安全机制的作用。

作者承认MATLAB确实存在合理批评：闭源运行时、授权模式、与现代云及DevOps工作流整合度低等问题，促使许多人转向Python等替代方案。但文章指出，问题的症结并非语言本身以数学为核心的语法，而在于其过时的执行引擎。

文章提出的解决方案是：在保留MATLAB富有表现力且面向数组的语法特性的同时，将其重构于现代化、开源、可移植的运行时之上。最后，作者以RunMat为例阐释这一愿景——这是一种高性能引擎，旨在现代硬件上执行MATLAB风格代码，同时规避传统授权与部署的难题。

---

## 8. 避免在Postgres中使用UUID版本4作为主键

**原文标题**: Avoid UUID Version 4 Primary Keys in Postgres

**原文链接**: [https://andyatkinson.com/avoid-uuid-version-4-primary-keys](https://andyatkinson.com/avoid-uuid-version-4-primary-keys)

本文强烈建议不要在PostgreSQL中使用UUID版本4作为主键，因其存在显著的性能缺陷。核心问题在于UUID v4值的随机性会导致索引管理效率低下。插入操作会频繁引发索引页分裂和碎片化，从而增加写入延迟和存储消耗。在读取方面，由于随机数据在索引页中的分布较为稀疏，查找操作需要更多的I/O，导致缓存命中率降低，查询性能变慢。

虽然UUID在分布式系统中生成唯一标识符有其优势，但文章指出了对其安全性的误解，并提出了替代方案。对于混淆需求，可以将整数编码为简短且看似随机的代码。对于分布式ID生成，推荐使用时间有序的UUID（如版本7），其顺序性能够缓解随机UUID v4带来的许多性能问题。

作者的主要建议是尽可能使用传统的顺序整数（bigint）作为主键。如果必须使用UUID，则应选择UUID v7而非v4。对于已使用UUID v4的现有系统，缓解措施包括定期重建索引和增加数据库内存（shared_buffers、work_mem），但这些方法被视为对本质上低效数据结构的一种临时补救。

---

## 9. 半导体物理基础 [pdf]

**原文标题**: Essential Semiconductor Physics [pdf]

**原文链接**: [https://nanohub.org/resources/43623/download/Essential_Semiconductor_Physics.pdf](https://nanohub.org/resources/43623/download/Essential_Semiconductor_Physics.pdf)

根据提供的PDF数据，无法生成简明摘要。其内容并非可读文本，而是构成PDF文件结构的原始编码二进制数据。

**数据关键观察结果：**
*   该文档为标题《Essential Semiconductor Physics》的PDF文件。
*   可见内容为PDF内部代码，包含文档渲染指令、字体定义（如Calibri）及压缩数据流。
*   文章的实际文本存储于这些压缩数据流中，当前形式无法直接阅读。

**要总结文章内容，首先需通过PDF阅读器或文本提取工具处理该PDF文件，以解码并呈现实际文字内容。** 摘要将基于提取出的文本进行撰写。

---

## 10. 看来OpenAI正在抓取[证书透明度]日志。

**原文标题**: It seems that OpenAI is scraping [certificate transparency] logs

**原文链接**: [https://benjojo.co.uk/u/benjojo/h/Gxy2qrCkn1Y327Y6D3](https://benjojo.co.uk/u/benjojo/h/Gxy2qrCkn1Y327Y6D3)

本文描述了一个观察现象，暗示OpenAI正在积极扫描互联网上的新网站，以可能将其纳入其网络爬虫的索引中。

作者指出，在为某个域名颁发新的TLS证书后不久，他们收到了对该域名`robots.txt`文件的HTTP请求。该请求来自与OpenAI关联的IP地址，并使用用户代理字符串“OAI-SearchBot/1.3”，这是OpenAI官方的网络爬虫。

关键证据在于时间点：该请求几乎在证书被公开记录到证书透明度（CT）日志后立即发生。CT日志是所有已颁发TLS证书的公开、仅追加记录。这意味着OpenAI的系统正在监控这些日志，以便在全新域名和子域名公开可验证时立即发现它们，从而使其爬虫能够快速探测这些网站。

主要观点如下：
1.  **观察：** OpenAI爬虫在域名的TLS证书出现在公共CT日志后立即访问了该新域名。
2.  **推断：** 这表明OpenAI使用证书透明度日志作为实时发现新网络内容的机制以供爬取。
3.  **背景：** 爬虫正在检查`robots.txt`文件，这是合规爬虫查看允许索引内容的常规做法。

总之，该帖子提供了技术证据，表明OpenAI的网络爬虫使用公共证书日志来发现并及时调查新建立的网站。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 2 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 3 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 4 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 5 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 6 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 7 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 8 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 9 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 10 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 11 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 12 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 13 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 14 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 15 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 16 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 17 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 18 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 19 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 20 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 21 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 22 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 23 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 24 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 25 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 26 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 27 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 28 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 29 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 30 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 31 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 32 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 33 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 34 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 35 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 36 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 37 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 38 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 39 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 40 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 41 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 42 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 43 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 44 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 45 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 46 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 47 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 48 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 49 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 50 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 51 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 52 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 53 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 54 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 55 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 56 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 57 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 58 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 59 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 60 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 61 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 62 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 63 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 64 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 65 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 66 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 67 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 68 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 69 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 70 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 71 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 72 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 73 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 74 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 75 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 76 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 77 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 78 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 79 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 80 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 81 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 82 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 83 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 84 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 85 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 86 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 87 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 88 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 89 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 90 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 91 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 92 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 93 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 94 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 95 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 96 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 97 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 98 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 99 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 100 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 101 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 102 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 103 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 104 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 105 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 106 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 107 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 108 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 109 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 110 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 111 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 112 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 113 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 114 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 115 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 116 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 117 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 118 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 119 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 120 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 121 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 122 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 123 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 124 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 125 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 126 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 127 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 128 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 129 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 130 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 131 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 132 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 133 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 134 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 135 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 136 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 137 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 138 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 139 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 140 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 141 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 142 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 143 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 144 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 145 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 146 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 147 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 148 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 149 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 150 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 151 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 152 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 153 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 154 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 155 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 156 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 157 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 158 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 159 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 160 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 161 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 162 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 163 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 164 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 165 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 166 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 167 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 168 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 169 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 170 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 171 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 172 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 173 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 174 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 175 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 176 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 177 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 178 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 179 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 180 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 181 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 182 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 183 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 184 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 185 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 186 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 187 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 188 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 189 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 190 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 191 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 192 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 193 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 194 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 195 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 196 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 197 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 198 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 199 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 200 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 201 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 202 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 203 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 204 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 205 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 206 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 207 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 208 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 209 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 210 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 211 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 212 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 213 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 214 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 215 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 216 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 217 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 218 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 219 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 220 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 221 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 222 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 223 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 224 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 225 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 226 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 227 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 228 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 229 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 230 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 231 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 232 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 233 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 234 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 235 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 236 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 237 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 238 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 239 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 240 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 241 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 242 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 243 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 244 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 245 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 246 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 247 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 248 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 249 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 250 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 251 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 252 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 253 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 254 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 255 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 256 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 257 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 258 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 259 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 260 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 261 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 262 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 263 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 264 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 265 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 266 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 267 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 268 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 269 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
