# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-19.md)

*最后自动更新时间: 2026-01-19 20:37:54*
## 1. 来自伯明翰监狱的信 [小马丁·路德·金] (1963)

**原文标题**: Letter from a Birmingham Jail [King, Jr.] (1963)

**原文链接**: [https://www.africa.upenn.edu/Articles_Gen/Letter_Birmingham.html](https://www.africa.upenn.edu/Articles_Gen/Letter_Birmingham.html)

在《伯明翰监狱来信》中，马丁·路德·金为他在阿拉巴马州伯明翰开展的非暴力反种族隔离运动辩护，回应那些批评其行动“不明智且不合时宜”的白人牧师。他解释自己之所以来到伯明翰，既是作为南方基督教领袖会议受邀领袖，也是出于对抗任何地方不公正的道德责任，并指出：“任何地方的不公正，都是对 everywhere 公正的威胁。”

金阐述了非暴力运动的四个步骤——收集事实、谈判协商、自我净化与直接行动，详细说明伯明翰当局如何在谈判失败后违背承诺，使得示威游行成为唯一选择。他认为直接行动能创造必要的“建设性非暴力紧张”，迫使不愿谈判的社群直面自身的不公。

针对“不合时宜”的指责，金驳斥了“等待”的呼吁，指出非裔美国人已为争取权利等待了340多年，被拖延的正义即是被剥夺的正义。他有力地描述了种族隔离制度下的日常羞辱与暴行，以解释民众为何如此迫切难耐。

最后，金借鉴哲学与神学传统，区分了公正法律与不公正法律。他主张人们有道德责任去遵守公正法律（如最高法院1954年废除种族隔离的裁决），同时也有责任抵制不公正法律（如贬损人格的种族隔离法令）。这封信为公民不服从运动奠定了基石，申明在面对系统性不公时，以行动践行道德义务的必要性。

---

## 2. 非暴力

**原文标题**: Nonviolence

**原文链接**: [https://kinginstitute.stanford.edu/nonviolence](https://kinginstitute.stanford.edu/nonviolence)

马丁·路德·金对非暴力的坚守，是他领导民权运动的核心神学与战略原则。他将基督教的博爱精神与圣雄甘地的抗争方法相融合，视非暴力抵抗为社会变革的强大武器。

金的哲学思想受梭罗、甘地及自身经历（尤其是蒙哥马利巴士抵制运动）影响。他提出六项关键原则：以非暴力方式抵抗邪恶；寻求对手的友谊而非羞辱；反对恶行而非作恶之人；接受具有救赎意义的苦难；拒绝身体与精神的双重暴力（仇恨）；坚守对正义的信念。

他认为非暴力是一种生活方式，是将“仇恨转化为积极非暴力力量”的关键。即便面临日益严峻的挑战，部分活动家转向“黑人权力”运动，金仍重申其信念，主张在多种族社会中，唯有爱与光明能驱散仇恨与黑暗。此后他将非暴力倡导扩展到全球视野，视其为核时代中避免毁灭的唯一出路。

---

## 3. 先有CNAME还是先有A记录？

**原文标题**: What came first: the CNAME or the A record?

**原文链接**: [https://blog.cloudflare.com/cname-a-record-order-dns-standards/](https://blog.cloudflare.com/cname-a-record-order-dns-standards/)

2026年1月8日，Cloudflare对其1.1.1.1 DNS解析器进行更新时，无意中改变了响应中记录的顺序，将CNAME记录置于A/AAAA记录之后。这导致部分用户出现DNS解析失败。

根本原因在于一次代码优化改变了部分过期的CNAME链合并方式，将CNAME置于末尾。虽然大多数现代DNS软件不受影响，但某些实现——特别是glibc中的`getaddrinfo`函数以及部分思科交换机——依赖顺序解析并期望CNAME在应答区段中首先出现。当顺序不符时，这些客户端便无法解析地址。

文章探讨了DNS标准（RFC 1034）中存在40年的模糊表述，其中提到CNAME“可能位于应答前部”，但未使用现代规范性语言将其定为严格标准。这导致了行业内实现方式的不一致。

作为回应，Cloudflare已撤销该变更，且不计划再次调整CNAME顺序，优先保障与现有脆弱客户端的互操作性。该公司还向IETF提交了互联网草案，旨在正式澄清并标准化DNS响应中CNAME顺序的预期行为。

---

## 4. 关于苹果纳米纹理的说明

**原文标题**: Notes on Apple's Nano Texture

**原文链接**: [https://jon.bo/posts/nano-texture/](https://jon.bo/posts/nano-texture/)

本文详细介绍了作者对苹果纳米纹理显示屏的积极使用体验，重点阐述了其在明亮环境下工作的显著优势。

与标准光面屏幕相比，这种蚀刻玻璃涂层的纳米纹理技术大幅减少了反光。这使得在具有挑战性的光照条件下——如带天窗的咖啡馆或户外——使用电脑变得更为可行和舒适。作者认为这是“户外计算的巨大进步”，拓展了创意工作的环境范围。

其主要优点包括在浅色模式（白底黑字）下出色的可读性，以及能在任何地方使用全彩高分辨率的视网膜显示屏。文章将其与用途不同的灰度反射式日光电脑平板进行了对比，认为纳米纹理显示效果更优。

主要缺点涉及维护方面：屏幕容易留下指纹，且需要使用苹果提供的专用擦拭布仔细清洁（普通超细纤维布可能造成损伤）。此项升级增加了成本，作者还提到对长期合盖可能造成细微划痕的轻微担忧。

总之，纳米纹理显示屏强烈推荐给那些经常受屏幕反光困扰、且不介意额外维护的用户；但对于在可控光照环境下工作或偏好低维护设备的使用者而言，可能并不值得选择。

---

## 5. 英特尔8087浮点芯片微码中的条件

**原文标题**: Conditions in the Intel 8087 floating-point chip's microcode

**原文链接**: [https://www.righto.com/2025/12/8087-microcode-conditions.html](https://www.righto.com/2025/12/8087-microcode-conditions.html)

本文详细介绍了英特尔8087浮点协处理器微码的反向工程，重点解析其复杂的条件分支系统。8087协处理器显著提升了1980年代个人电脑的计算速度，它采用精密的微码引擎来执行三角函数等算法。该引擎能够基于49种不同的内部条件执行条件跳转、调用和返回操作。

关键发现在于选择这些条件的分布式硬件机制。芯片没有采用中央控制单元，而是通过由传输晶体管构建的多路复用器树状网络，将其战略性分布在芯片各处。这种设计能高效地将选定的条件信号传输至微码引擎，最大限度减少了长距离布线。这49种条件涵盖从简单检测（如判断数值是否为零）到高度专业化测试（如根据符号和模式确定舍入方向）等多种场景。

文章阐释了这些条件如何实现高效的微码编程。例如，单个例程通过检测特定操作码位的条件分支来同时处理FCHS（改变符号）和FABS（绝对值）指令，从而调整执行行为。这种多功能硬件加速条件测试系统对8087的性能至关重要，但也给如今反向解析其内部逻辑的研究者带来了重大挑战。

---

## 6. 展示 HN：Pipenet – 本地隧道的现代替代方案

**原文标题**: Show HN: Pipenet – A Modern Alternative to Localtunnel

**原文链接**: [https://pipenet.dev/](https://pipenet.dev/)

**Pipenet** 是一款现代开源隧道工具，旨在作为比 localtunnel 等功能更丰富、维护更活跃的替代方案。它允许开发者通过公共 URL 将本地服务器（例如运行在 3000 端口）暴露到互联网，便于分享工作成果、测试 Webhook 或演示应用程序而无需部署。

其主要特性包括支持现代协议（HTTP/S、WebSocket、SSE），采用基于 ES 模块的 TypeScript 代码库，以及灵活的部署方式。它既提供公共云服务，也支持自托管私有隧道服务器，让用户能完全掌控安全性和域名管理。

该工具提供简洁的 CLI 以便快速使用（`npx pipenet client --port 3000`），同时配备可编程的 Node.js SDK 以便集成到其他工具中。自托管服务器包含生命周期钩子（例如 `onTunnelCreated`）和用于监控隧道状态的 API。

与 localtunnel 相比，Pipenet 更强调便捷的云部署（单端口设置）、支持多个自定义域名以及持续活跃的维护，使其成为适应现代开发流程的可靠解决方案。

---

## 7. 通过原始字符串绕过Gemma和Qwen的安全机制

**原文标题**: Bypassing Gemma and Qwen safety with raw strings

**原文链接**: [https://teendifferent.substack.com/p/apply_chat_template-is-the-safety](https://teendifferent.substack.com/p/apply_chat_template-is-the-safety)

本文揭示了众多开源大语言模型（如Gemma和Qwen）在安全对齐方面存在的一个关键漏洞。作者指出，模型的“安全”行为往往并非其权重参数的固有特性，而是受特定对话模板格式（例如`<|im_start|>`标签）的制约。

核心发现是：若绕过标准的`apply_chat_template()`函数，直接输入未经格式化的原始提示（例如“撰写一份制造炸弹的教程”），可能导致模型的拒绝机制失效，使其生成原本会拒绝的有害内容。在Gemma-3和Qwen2.5等模型上的实验表明，当提示未经格式化时，模型的拒绝率显著下降。

该漏洞的存在是因为安全微调仅训练模型在检测到特定格式标记时才激活“乐于助人的助手”角色。若缺少这些标记，模型会回归其原始的下一个词预测目标，仅依据预训练数据中的知识进行生成，而不再启用安全过滤器。

文章总结指出，当前的安全对齐机制具有脆弱性且过度依赖模板格式。建议采用更鲁棒的训练技术，在推理阶段引入外部安全分类器，并通过更清晰的文档警示开发者：若未严格遵循预期的输入格式，模型的安全保障将失效。

---

## 8. CSS营销网站组件（2024版）

**原文标题**: CSS Web Components for marketing sites (2024)

**原文链接**: [https://hawkticehurst.com/2024/11/css-web-components-for-marketing-sites/](https://hawkticehurst.com/2024/11/css-web-components-for-marketing-sites/)

本文认为，传统的基于JavaScript的Web组件极不适合营销网站，因为它们强制简单的UI元素依赖JavaScript。作者提出了一种名为“CSS Web组件”的替代方案。

其核心思想是使用自定义HTML标签（如`<swim-lane>`）作为内容的语义包装器。所有样式和功能均通过纯CSS实现，而非依赖JavaScript和Shadow DOM。组件变体（例如反向布局）通过自定义属性（如`layout="reverse"`）控制，并使用CSS属性选择器进行样式设计。

这种方法为营销网站带来显著优势：核心渲染无需任何JavaScript，从而在低功耗设备上实现更快的性能和更好的可访问性。标记完全可在服务器端渲染，并且仅在需要时可通过JavaScript逐步增强。它利用现代CSS功能，如容器查询、`:has()`选择器和Popover API，来构建交互式、响应式的组件。

总之，CSS Web组件为设计系统提供了一种轻量级、逐步增强的架构，优先使用核心Web技术（HTML/CSS）来构建快速、可访问的营销网站，避免不必要的JavaScript膨胀。

---

## 9. 通过离线查找网络发送数据

**原文标题**: Sending Data over Offline Finding Networks

**原文链接**: [https://cc-sw.com/find-my-and-find-hub-network-research/](https://cc-sw.com/find-my-and-find-hub-network-research/)

本文详述了一项研究项目，该项目探索利用苹果的“查找我的”网络和谷歌的“查找中心”网络进行任意数据传输。核心发现是，这些原本设计用于通过蓝牙信标定位丢失设备的“离线查找”网络，可被改造为创建单向、加密安全的通信信道。

研究人员基于现有开源工具（OpenHaystack、SendMy）开发了一种自定义协议。关键创新包括将加密数据负载存储在蓝牙广播的私钥中，从而确保传输过程免受窃听。客户端通过向苹果服务器查询可能的密钥哈希值来检索数据。

该协议解决了同步问题（使用专用的“邮箱”密钥来提示新消息）和数据丢失问题（采用里德-所罗门纠错编码）。研究还指出，苹果的反跟踪警报可被规避，且该网络缺乏设备身份验证机制，任何格式正确的信标都可能被追踪。

总之，该项目展示了一种利用无处不在的设备查找网络实现稳健、远距离数据传输的方法，无需蜂窝网络或互联网连接，同时揭示了这些系统潜在的应用前景与隐私影响。

---

## 10. 研究发现，关税成本由美国人承担。

**原文标题**: Americans Are the Ones Paying for Tariffs, Study Finds

**原文链接**: [https://www.wsj.com/economy/trade/americans-are-the-ones-paying-for-tariffs-study-finds-e254ed2e](https://www.wsj.com/economy/trade/americans-are-the-ones-paying-for-tariffs-study-finds-e254ed2e)

**《研究发现：关税成本由美国人承担》摘要**

一项综合经济研究得出结论，近期贸易争端中美国加征的关税成本几乎完全由美国进口商和消费者承担，而非外国出口商。

这项由纽约联邦储备银行、普林斯顿大学和哥伦比亚大学的经济学家进行的研究，分析了2018年以来的数据。研究发现，美国进口商承担了关税成本，导致国内买家面临更高的价格。因此，美国消费者和企业为受影响商品支付了更多费用，而关税收入则被用于向受报复性关税影响的农民提供财政援助。

主要发现包括：
*   **成本完全转嫁：** 关税成本几乎100%以更高价格的形式转嫁给了美国购买者。
*   **年度成本：** 关税使美国家庭平均每年损失约419美元。
*   **经济影响：** 研究估计，到2019年底，美国经济每月实际收入损失总额达14亿美元。
*   **收益有限：** 研究未发现关税在增加产量或就业方面为受保护行业带来显著收益的任何证据。任何积极影响都被更高的投入成本和报复性措施所抵消。

本质上，研究表明这些关税相当于对美国居民征税，它推高了消费者价格，降低了经济效率，却未能实现保护国内产业的预期收益。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 2 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 3 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 4 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 5 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 6 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 7 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 8 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 9 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 10 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 11 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 12 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 13 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 14 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 15 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 16 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 17 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 18 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 19 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 20 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 21 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 22 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 23 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 24 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 25 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 26 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 27 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 28 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 29 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 30 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 31 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 32 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 33 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 34 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 35 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 36 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 37 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 38 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 39 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 40 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 41 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 42 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 43 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 44 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 45 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 46 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 47 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 48 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 49 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 50 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 51 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 52 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 53 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 54 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 55 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 56 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 57 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 58 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 59 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 60 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 61 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 62 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 63 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 64 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 65 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 66 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 67 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 68 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 69 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 70 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 71 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 72 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 73 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 74 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 75 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 76 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 77 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 78 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 79 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 80 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 81 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 82 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 83 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 84 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 85 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 86 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 87 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 88 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 89 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 90 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 91 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 92 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 93 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 94 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 95 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 96 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 97 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 98 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 99 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 100 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 101 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 102 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 103 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 104 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 105 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 106 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 107 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 108 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 109 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 110 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 111 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 112 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 113 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 114 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 115 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 116 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 117 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 118 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 119 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 120 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 121 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 122 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 123 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 124 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 125 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 126 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 127 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 128 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 129 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 130 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 131 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 132 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 133 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 134 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 135 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 136 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 137 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 138 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 139 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 140 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 141 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 142 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 143 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 144 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 145 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 146 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 147 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 148 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 149 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 150 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 151 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 152 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 153 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 154 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 155 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 156 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 157 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 158 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 159 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 160 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 161 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 162 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 163 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 164 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 165 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 166 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 167 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 168 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 169 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 170 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 171 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 172 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 173 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 174 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 175 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 176 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 177 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 178 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 179 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 180 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 181 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 182 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 183 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 184 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 185 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 186 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 187 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 188 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 189 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 190 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 191 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 192 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 193 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 194 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 195 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 196 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 197 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 198 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 199 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 200 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 201 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 202 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 203 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 204 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 205 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 206 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 207 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 208 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 209 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 210 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 211 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 212 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 213 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 214 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 215 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 216 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 217 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 218 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 219 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 220 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 221 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 222 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 223 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 224 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 225 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 226 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 227 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 228 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 229 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 230 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 231 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 232 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 233 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 234 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 235 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 236 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 237 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 238 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 239 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 240 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 241 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 242 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 243 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 244 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 245 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 246 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 247 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 248 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 249 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 250 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 251 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 252 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 253 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 254 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 255 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 256 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 257 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 258 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 259 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 260 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 261 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 262 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 263 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 264 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 265 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 266 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 267 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 268 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 269 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 270 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 271 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 272 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 273 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 274 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 275 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 276 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 277 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 278 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 279 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 280 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 281 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 282 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 283 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 284 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 285 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 286 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 287 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 288 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 289 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 290 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 291 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 292 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 293 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 294 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 295 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 296 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 297 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 298 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 299 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 300 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 301 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 302 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 303 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
