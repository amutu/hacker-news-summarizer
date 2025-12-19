# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-19.md)

*最后自动更新时间: 2025-12-19 20:20:37*
## 1. TP-Link Tapo C200：硬编码密钥、缓冲区溢出与隐私问题

**原文标题**: TP-Link Tapo C200: Hardcoded Keys, Buffer Overflows and Privacy

**原文链接**: [https://www.evilsocket.net/2025/12/18/TP-Link-Tapo-C200-Hardcoded-Keys-Buffer-Overflows-and-Privacy-in-the-Era-of-AI-Assisted-Reverse-Engineering/](https://www.evilsocket.net/2025/12/18/TP-Link-Tapo-C200-Hardcoded-Keys-Buffer-Overflows-and-Privacy-in-the-Era-of-AI-Assisted-Reverse-Engineering/)

在对TP-Link Tapo C200 IP摄像头的安全分析中，研究人员在最新固件中发现了多个严重漏洞。该研究者通过AI辅助逆向工程，发现了若干影响约2.5万台暴露于互联网设备的预认证漏洞。

主要发现包括：
1.  **硬编码SSL私钥**：固件内嵌了HTTPS API的私钥，使网络攻击者能够解密通信流量。
2.  **预认证ONVIF SOAP解析器内存溢出**：向ONVIF服务（端口2020）发送格式错误的XML请求会导致设备崩溃。
3.  **预认证HTTPS整数溢出**：对`Content-Length`标头未加检查的`atoi()`调用可导致Web服务器崩溃。
4.  **预认证WiFi劫持**：一个无需认证的API端点允许远程攻击者断开摄像头连接或强制其接入恶意网络。
5.  **预认证WiFi扫描**：未认证端点会暴露附近的WiFi网络信息。结合苹果定位数据库等服务，可能实现摄像头的远程地理位置定位。

研究者已于2025年7月向TP-Link报告了这些问题。在延长的150天披露期内未收到修复方案后，于2025年12月进行了公开披露。

---

## 2. Garage – 一款如此可靠的S3对象存储，您甚至可以在数据中心之外运行它

**原文标题**: Garage – An S3 object store so reliable you can run it outside datacenters

**原文链接**: [https://garagehq.deuxfleurs.fr/](https://garagehq.deuxfleurs.fr/)

**Garage** 是一款开源、自托管的对象存储系统，旨在实现高可靠性和强韧性，能够在传统数据中心之外运行，例如跨越多个家庭或办公室地点。

其核心特性和目标包括：
*   **S3兼容性：** 实现了亚马逊S3 API，确保与大量现有应用程序兼容，可用于托管网站、存储媒体或作为备份目标。
*   **为韧性而构建：** 数据在三个“区域”（服务器组）间复制，以应对网络问题、磁盘故障和延迟，使其适用于不稳定的互联网连接。
*   **运维友好且轻量：** 以单一、无依赖的二进制文件分发，部署迅速。硬件要求极低（例如，10年历史的CPU、1GB内存），可在异构的二手机器上运行。
*   **为分布式部署设计：** 明确构建为在公共互联网上的多个地点运行，无需专用骨干网络。

该项目基于研究，并通过NLnet获得了多项欧盟资助（NGI POINTER、NGI0 Entrust、NGI0 Commons）的支持，以推动其持续发展。

---

## 3. 你现在可以在浏览器中畅玩《侠盗猎车手：罪恶都市》了。

**原文标题**: You can now play Grand Theft Auto Vice City in the browser

**原文链接**: [https://dos.zone/grand-theft-auto-vice-city/](https://dos.zone/grand-theft-auto-vice-city/)

本文宣布，经典游戏《侠盗猎车手：罪恶都市》现已可通过DOS.Zone的技术演示在网页浏览器中运行。这得益于**reVC**——一个对该游戏引擎的开源重制项目，该项目已适配WebAssembly与现代浏览器API。

核心技术成就在于对渲染、音频和输入等底层系统的重构，使其能在浏览器环境中高效运行，从而无需原生安装。

文章附有明确声明，强调此为**独立、非商业的技术演示**，与原游戏开发者或版权方无关，并指出演示**不包含或分发任何原始游戏资源**。

要体验完整游戏，用户必须合法拥有并提供自己的游戏文件，系统将通过加密方式验证文件。公开演示仅使用少量不完整的资源用于教育目的，以展示引擎的网页兼容能力。项目方声明其运作完全符合版权法规。

---

## 4. 逆向工程美国航空公司的PNR系统并访问所有预订信息

**原文标题**: Reverse Engineering US Airline's PNR System and Accessing All Reservations

**原文链接**: [https://alexschapiro.com/security/vulnerability/2025/11/20/avelo-airline-reservation-api-vulnerability](https://alexschapiro.com/security/vulnerability/2025/11/20/avelo-airline-reservation-api-vulnerability)

2025年10月，一名安全研究人员在Avelo航空公司的预订系统中发现了一个严重漏洞，该漏洞允许未经授权访问所有乘客的预订信息。此缺陷源于两个关键的安全失误：一是缺少对乘客姓氏的验证要求，二是预订API端点完全未设置速率限制。

这意味着攻击者仅需使用一个6位字母数字组成的确认码，配合任意有效的身份验证cookie即可查询API。由于可能的组合约有21.8亿种，且系统没有任何防止快速猜测的防护措施，攻击者可以以极低的成本在约六小时内暴力破解所有有效预订。系统会在数秒内返回有效代码，导致敏感乘客数据暴露。

每条被泄露的预订信息包含完整的乘客个人身份信息（姓名、出生日期）、政府身份证件号码（护照及已知旅客号码）、联系方式、完整行程以及部分支付卡信息。这带来了身份盗窃、欺诈和大规模预订篡改的严重风险。

研究人员于2025年10月15日负责任地向Avelo报告了该漏洞。航空公司安全团队反应迅速且专业，于11月13日前部署了修复方案。此事件凸显了对敏感数据访问实施多因素认证、并对所有可枚举端点设置严格速率限制的至关重要性。

---

## 5. GotaTun —— Mullvad 基于 Rust 的 WireGuard 实现

**原文标题**: GotaTun -- Mullvad's WireGuard Implementation in Rust

**原文链接**: [https://mullvad.net/en/blog/announcing-gotatun-the-future-of-wireguard-at-mullvad-vpn](https://mullvad.net/en/blog/announcing-gotatun-the-future-of-wireguard-at-mullvad-vpn)

Mullvad VPN宣布推出其新的WireGuard实现GotaTun，该实现采用Rust语言编写，现已向所有Android用户开放。该项目基于Cloudflare的BoringTun项目分支开发，并增强了DAITA和Multihop等隐私功能。

此次替换的主要动机是为了取代问题频发的wireguard-go实现，该实现曾导致Android应用中超过85%的崩溃。同时，Rust与Go之间的集成复杂且阻碍调试。自2025年11月推出GotaTun以来，用户感知的崩溃率已从0.40%大幅降至0.01%，用户反馈速度更快且电池消耗更低。

展望未来，Mullvad计划在2026年初对GotaTun进行第三方安全审计，并将在所有桌面和iOS应用中全面替换wireguard-go，同时计划进一步优化性能。

---

## 6. 亚马逊将允许无数字版权管理的电子书以ePub和PDF格式下载。

**原文标题**: Amazon will allow ePub and PDF downloads for DRM-free eBooks

**原文链接**: [https://www.kdpcommunity.com/s/article/New-eBook-Download-Options-for-Readers-Coming-in-2026?language=en_US](https://www.kdpcommunity.com/s/article/New-eBook-Download-Options-for-Readers-Coming-in-2026?language=en_US)

亚马逊即将允许使用Kindle Direct Publishing（KDP）的作者和出版商提供无数字版权管理（DRM）的电子书下载，支持ePub和PDF格式。这项在KDP社区宣布的新功能，将让顾客在购买后直接从“管理您的内容和设备”页面下载书籍文件。

主要要点包括：
*   **格式支持**：可下载文件将提供ePub和PDF两种格式。
*   **无DRM限制**：下载文件不设数字版权管理限制，顾客可更自由地在所选设备和应用上阅读已购电子书。
*   **访问方式**：顾客可通过亚马逊账户的内容管理页面获取这些文件。
*   **作者控制权**：此功能为可选设置，版权持有者可在KDP中为每部作品选择启用或禁用无DRM下载。
*   **优势**：此举提高了读者的灵活性，使亚马逊符合无DRM销售的行业标准，可能吸引偏爱无限制访问数字图书馆的作者和顾客。

公告表示该功能将在未来几周内逐步推出。

---

## 7. FreeBSD基金会笔记本电脑支持与可用性项目

**原文标题**: The FreeBSD Foundation's Laptop Support and Usability Project

**原文链接**: [https://github.com/FreeBSDFoundation/proj-laptop](https://github.com/FreeBSDFoundation/proj-laptop)

FreeBSD基金会与Quantum Leap Research共同出资，批准了一项75万美元的计划，旨在显著提升FreeBSD在笔记本电脑上的用户体验。该项目将于2024年底启动，持续1-2年，致力于为各类笔记本电脑提供“开箱即用”的功能，以加速开发者和企业采用该系统。

关键的技术目标包括为FreeBSD 14.x及以上版本提供现代WiFi、完整音频支持、现代休眠/唤醒机制、改进的图形处理以及蓝牙支持。项目将由基金会工作人员和签约开发者共同推进，具体范围将参考社区意见以及戴尔、AMD和Framework等厂商的建议。

该计划强调以用户为中心的方法，将工作以“用户故事”的形式展开，旨在提升功能性和整体用户体验（UX），特别是针对开发者群体。项目进展将通过公开的GitHub路线图和月度更新进行追踪，同时鼓励社区通过桌面邮件列表及各功能领域（如电源、音频、图形）的专门讨论帖参与交流。尽管重点在笔记本电脑，但许多改进预计也将惠及桌面用户。

---

## 8. GPT在乔姆斯基层级中处于什么位置？

**原文标题**: Where Is GPT in the Chomsky Hierarchy?

**原文链接**: [https://fi-le.net/chomsky/](https://fi-le.net/chomsky/)

本文探讨了GPT模型在乔姆斯基形式语言层级中的定位。尽管人类语言被认为是图灵完备的，但分析指出GPT模型即使具备无限上下文窗口，也并非图灵完备。

其核心限制在于架构：Transformer对每个标记执行固定且有限的计算步骤。由于词汇表和嵌入空间是有限的，生成终止序列标记的概率始终存在下限，这保证了输出必然有限。这与循环神经网络等图灵完备模型形成对比，后者在推理过程中可以进行无限计算。

作者指出，虽然理论证明表明Transformer在特定非现实条件下（例如添加随输入长度增加的层数）可以实现图灵完备，但标准GPT模型不具备这种能力。这种有限的计算深度解释了为何模型难以直接完成需要迭代推理的算法任务（如奇偶校验），必须依赖思维链提示等变通方法。

最终，这种约束被呈现为一把双刃剑。它使得高效并行训练成为可能，从而催生了GPT模型的成功，但也可能限制其学习可泛化算法的能力。文章总结认为，这一根本性限制是当前架构能否实现类人通用智能、抑或需要全新方法论的核心争议所在。

---

## 9. 相信支票簿

**原文标题**: Believe the Checkbook

**原文链接**: [https://robertgreiner.com/believe-the-checkbook/](https://robertgreiner.com/believe-the-checkbook/)

本文以Anthropic收购Bun团队为例，论证工程领域的核心价值正从代码产出转向高层级判断力——尽管AI已具备编码能力。

核心论据在于一个矛盾现象：Anthropic自家AI本是Bun开源代码库的最大贡献者，该公司却仍斥资数百万美元收购其人类团队。这种“显示性偏好”表明，AI企业私下对人类专业知识的重视程度，远超过其公开宣扬的自动化叙事。

作者指出，AI是代码生成的倍增器，却无法解决判断力瓶颈：即制定战略决策、正确排定优先级、预见长期权衡、驾驭复杂领域的关键能力。Anthropic的收购决策正是基于该团队过往“正确决策”的实绩记录与第一性原理思维，而非既有代码资产。

对技术领导者而言，启示在于：
1. 运用AI赋能高判断力工程师，而非贬低其价值
2. 重点培养架构设计、风险评估、战略思维等能力，而非单纯追求编码速度
3. 保持初级人才通道，因常规工作与高判断力工作的差距将持续扩大
4. 依据企业收购、招聘等实际行动制定战略，而非轻信“AI取代工程师”的公开言论

---

## 10. 质子离开瑞士

**原文标题**: Proton Leaves Switzerland

**原文链接**: [https://www.nzz.ch/technologie/proton-ceo-andy-yen-wer-gesetzgebung-der-polizei-ueberlaesst-sollte-sich-nicht-wundern-wenn-er-eines-tages-in-einem-polizeistaat-aufwacht-ld.1916779](https://www.nzz.ch/technologie/proton-ceo-andy-yen-wer-gesetzgebung-der-polizei-ueberlaesst-sollte-sich-nicht-wundern-wenn-er-eines-tages-in-einem-polizeistaat-aufwacht-ld.1916779)

**《Proton撤离瑞士》摘要**

文章报道称，以加密邮件和VPN服务闻名的瑞士隐私技术公司Proton，正将其总部从瑞士迁往一个未指明的新国家。

此次搬迁的主要驱动力是瑞士近期修订的监控法律。Proton认为，新法律框架赋予当局更广泛的数字监控权力，破坏了瑞士原本强大的隐私保护环境，而正是这种环境最初使瑞士成为公司的理想家园。创始人表示，在此类法律下运营将与Proton的核心使命及其对用户“默认隐私”的承诺根本冲突。

文章将此次搬迁描述为一个重要且具有象征意义的决定，凸显了政府安全指令与私人加密通信原则之间日益加剧的紧张关系。它将Proton的撤离直接归因于瑞士政治转向增强国家监控能力的趋势。

尽管新总部地点尚未公布，但文章强调，Proton将继续运营，并在新基地维持其严格的无日志政策，寻求一个与其保护用户隐私这一根本承诺相符的法律环境。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 2 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 3 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 4 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 5 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 6 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 7 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 8 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 9 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 10 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 11 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 12 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 13 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 14 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 15 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 16 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 17 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 18 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 19 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 20 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 21 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 22 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 23 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 24 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 25 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 26 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 27 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 28 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 29 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 30 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 31 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 32 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 33 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 34 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 35 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 36 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 37 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 38 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 39 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 40 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 41 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 42 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 43 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 44 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 45 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 46 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 47 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 48 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 49 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 50 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 51 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 52 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 53 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 54 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 55 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 56 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 57 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 58 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 59 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 60 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 61 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 62 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 63 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 64 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 65 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 66 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 67 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 68 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 69 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 70 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 71 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 72 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 73 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 74 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 75 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 76 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 77 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 78 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 79 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 80 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 81 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 82 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 83 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 84 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 85 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 86 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 87 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 88 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 89 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 90 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 91 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 92 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 93 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 94 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 95 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 96 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 97 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 98 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 99 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 100 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 101 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 102 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 103 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 104 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 105 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 106 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 107 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 108 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 109 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 110 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 111 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 112 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 113 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 114 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 115 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 116 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 117 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 118 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 119 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 120 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 121 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 122 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 123 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 124 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 125 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 126 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 127 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 128 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 129 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 130 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 131 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 132 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 133 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 134 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 135 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 136 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 137 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 138 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 139 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 140 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 141 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 142 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 143 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 144 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 145 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 146 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 147 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 148 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 149 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 150 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 151 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 152 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 153 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 154 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 155 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 156 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 157 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 158 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 159 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 160 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 161 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 162 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 163 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 164 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 165 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 166 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 167 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 168 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 169 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 170 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 171 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 172 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 173 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 174 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 175 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 176 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 177 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 178 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 179 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 180 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 181 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 182 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 183 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 184 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 185 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 186 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 187 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 188 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 189 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 190 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 191 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 192 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 193 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 194 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 195 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 196 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 197 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 198 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 199 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 200 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 201 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 202 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 203 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 204 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 205 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 206 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 207 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 208 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 209 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 210 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 211 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 212 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 213 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 214 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 215 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 216 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 217 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 218 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 219 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 220 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 221 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 222 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 223 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 224 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 225 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 226 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 227 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 228 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 229 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 230 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 231 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 232 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 233 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 234 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 235 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 236 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 237 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 238 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 239 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 240 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 241 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 242 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 243 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 244 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 245 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 246 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 247 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 248 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 249 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 250 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 251 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 252 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 253 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 254 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 255 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 256 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 257 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 258 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 259 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 260 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 261 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 262 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 263 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 264 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 265 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 266 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 267 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 268 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 269 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 270 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 271 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 272 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 273 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
