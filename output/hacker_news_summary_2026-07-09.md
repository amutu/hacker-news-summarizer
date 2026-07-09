# Hacker News 热门文章摘要 (2026-07-09)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. GPT-5.6

**原文标题**: GPT-5.6

**原文链接**: [https://openai.com/index/gpt-5-6/](https://openai.com/index/gpt-5-6/)

无法访问文章链接。

---

## 2. GLM 5.2 的准确度几乎媲美人类簿记员。

**原文标题**: GLM 5.2 is nearly as accurate as a human book keeper

**原文链接**: [https://toot-books.pages.dev/blog/glm-5-2-vat-benchmark](https://toot-books.pages.dev/blog/glm-5-2-vat-benchmark)

**《GLM 5.2记账准确率接近人类水平》摘要**

文章介绍了一项基准测试：开源AI模型GLM 5.2为一家英国小企业（Vineyard Finance）编制季度增值税申报表，准确率接近人类水平，但成本仅为人类的一小部分。

**关键结果：**
- **成本：** 2.73美元（原始代币成本），而人类每季度通常收费1000–2800美元。
- **速度：** 68分钟内处理59笔交易。
- **准确率：** 净增值税额（第5栏）仅偏差7便士。在354项独立检查中，模型失败20项。

**主要错误：**
1.  **严重：** 将10,000英镑创始股份错误归类为"资本账户"而非"未缴股份"，涉及法律和审计风险。
2.  **轻微：** 混淆增值税类别中的"零税率"与"免税"（14处错误）——对实际增值税无影响。
3.  **冷僻：** 对一笔分币种交易计算增值税错误（3处错误）。

**模型正确之处：** 除股份外账户归类正确、发票附件处理正确、复杂交易（同日重复、转账、拆分交易）消歧正确。

**结论：** 记账正在成为已解决的问题。当前重点转向为企业构建易用的支撑系统。作者正在toot-books.com开发相关产品。

---

## 3. ChatGPT 工作

**原文标题**: ChatGPT Work

**原文链接**: [https://openai.com/index/chatgpt-for-your-most-ambitious-work/](https://openai.com/index/chatgpt-for-your-most-ambitious-work/)

无法访问该文章链接。

---

## 4. 展示HN：18个单词

**原文标题**: Show HN: 18 Words

**原文链接**: [https://18words.com/](https://18words.com/)

**《"Show HN：18个单词"项目简介》**

《18个单词》是一款每日单词挑战游戏。玩家会看到一个由18个字母组成的字母盘，需要通过连接相邻字母来拼出单词。游戏目标是尽可能多地找出单词，重点在于用尽全部18个字母完成挑战。

主要功能包括：
- **每日挑战：** 每天更新一道新谜题。
- **提示与辅助：** 玩家可使用提示（如"揭示一个字母"）或暂停游戏。
- **社交与重玩选项：** 可分享得分、挑战好友、练习或游玩过往谜题档案。
- **开发者信息：** 由另一款游戏《Zanagrams》的开发者制作。欢迎提供反馈。

该游戏强调快速思考与词汇量，界面简洁清爽。

---

## 5. 欧洲议会批准聊天监控1.0版本

**原文标题**: EU Parliament greenlights Chat Control 1.0

**原文链接**: [https://www.patrick-breyer.de/en/eu-parliament-greenlights-chat-control-1-0-breyer-our-children-lose-out/](https://www.patrick-breyer.de/en/eu-parliament-greenlights-chat-control-1-0-breyer-our-children-lose-out/)

欧洲议会通过了“聊天控制1.0”措施，允许在无合理怀疑情况下大规模扫描私人通信。尽管多数投票议员反对（314票反对，276票赞成），但否决动议未能获得所需的361票绝对多数。这项临时法规有效期至2028年或直至达成永久协议，允许美国科技公司（如Meta、谷歌、苹果）在无搜查令情况下扫描Instagram、Gmail和iCloud等平台上的私人信息。端到端加密聊天（如WhatsApp）仍被豁免。

批评者包括前欧洲议会议员及活动家帕特里克·布雷耶博士警告称，此举破坏民主和有效的儿童保护，认为大规模监控会使警方被虚假警报淹没，无法真正解救受害者。幸存者也强调，隐私对受害者寻求正义至关重要，真正的保护需要有针对性的警方行动、安全设计的应用程序以及从源头删除有害材料。

关于永久法规（“聊天控制2.0”）的谈判陷入僵局，欧洲议会主张针对嫌疑人发布定向检测命令并建立欧盟儿童保护中心，而成员国倾向于当前的大规模扫描方式。临时延期降低了寻求有效解决方案的政治压力。

---

## 6. Hy3

**原文标题**: Hy3

**原文链接**: [https://hy.tencent.com/research/hy3](https://hy.tencent.com/research/hy3)

**《Hy3（腾讯Hy）概述》**

文章介绍了腾讯研发的高性能混合计算架构"Hy3"，旨在应对大规模AI模型与复杂数据处理日益增长的计算需求。其核心创新在于将传统CPU与GPU及AI芯片等专用加速器无缝整合，在优化性能的同时提升能效。

关键特性包括：统一内存管理系统可减少数据传输瓶颈，动态资源分配机制则能自适应处理工作负载。腾讯强调，该架构在大规模模型的训练速度（提升高达10倍）和推理延迟降低方面均有显著改进，同时降低了总体拥有成本。Hy3支持云端与边缘部署，突出企业级应用的可扩展性与灵活性。总体而言，Hy3是腾讯在其云生态中赋能新一代AI服务及数据密集型工作的战略举措。

---

## 7. 如何创办一个Ruby聚会

**原文标题**: How to Start a Ruby Meetup

**原文链接**: [https://guides.rubyevents.org/meetups/](https://guides.rubyevents.org/meetups/)

以下是文章**《如何创办一个Ruby meetup》**的简洁总结：

本文为创办并维持本地Ruby meetup提供了实用指南，强调meetup对社区建设、指导新手和职业发展至关重要。

**从零开始**：找一个免费场地（如办公室或共享办公空间），在Luma或Meetup.com上创建活动，通过电子邮件、Slack或LinkedIn进行个人推广。首次活动规模可以很小（五个人也行）——关键在于参与者玩得开心。

**形式与推广**：最常见的形式是2-3场简短演讲后安排社交时间。其他选择包括黑客之夜、工作坊或简单聚会。有效的推广需要直接的个人邀请和持续的公开宣传。定期举办（如每月一次）有助于培养习惯和增强势头。

**演讲者与后勤**：直接向演讲者发出具体邀请。闪电演讲（10-15分钟）最适合新手。后勤是关键：携带投影仪转接头，帮助参与者找到场地，为新来宾准备姓名标签，并准时开始。

**文化与可持续性**：通过明确欢迎首次参与者、实施行为准则并树立尊重榜样来构建包容文化。为避免倦怠，寻找联合组织者并变换活动形式。meetup无需追求扩大规模才能成功；一个稳定的小团体往往比昙花一现的大型活动更有价值。

---

## 8. 苹果隐藏功能让iPhone变身完美儿童专用非智能机

**原文标题**: Buried Apple Feature Turns an iPhone into the Perfect Kids' Dumb Phone

**原文链接**: [https://www.wired.com/story/this-buried-apple-feature-turns-an-iphone-into-the-perfect-kids-dumb-phone/](https://www.wired.com/story/this-buried-apple-feature-turns-an-iphone-into-the-perfect-kids-dumb-phone/)

文章介绍了家长如何利用苹果iOS 17系统推出的辅助访问功能，将iPhone变成适合儿童使用的安全、受限的"傻瓜手机"。作者需要为儿子配备一部既能实现定位追踪和导航，又能屏蔽网络浏览和社交媒体的手机。标准屏幕使用时间限制效果不佳，因为儿童可以通过信息中的链接绕过Safari浏览器的封锁。

辅助访问功能最初为认知障碍用户设计，提供带有大图标按钮的简化界面，并允许家长仅选择特定应用。关键在于它能彻底屏蔽网页浏览——Safari浏览器无法使用，信息中的链接会变成无法打开的纯文本。家长可以控制孩子的联系人，禁用静音开关，并将音乐应用限制在批准的播放列表内。

设置方法如下：进入"设置">"辅助功能">"辅助访问"，选择允许使用的应用（如电话、信息、地图、相机、照片、音乐），并设置专用密码以切换模式。作者指出苹果并未广泛推广该功能，店员也可能不知情。缺点包括运行卡顿、语音信箱无法使用、不退出模式就无法关机，以及偶尔出现应用卡死现象。总体而言，它为儿童的第一部智能手机提供了免费、可定制且安全可靠的解决方案。

---

## 9. 《Damn Interesting》可能的未来

**原文标题**: A possible future for Damn Interesting

**原文链接**: [https://www.damninteresting.com/a-possible-future/](https://www.damninteresting.com/a-possible-future/)

**概要：** 长文写作网站Damn Interesting创始人艾伦·贝洛斯发起一次性筹款活动，以解决当前面临的严重瓶颈。近20年来，他依靠兼职工程类工作维持网站运营，但如今此类职位已难以获取，迫使他不得不全职工作。这严重限制了他为网站进行调研、写作和编辑的时间，而互联网上充斥着AI生成内容。为对抗这一趋势，贝洛斯希望通过GoFundMe筹集相当于过去兼职薪资的款项，使他在未来12个月内能为Damn Interesting投入大量时间。此次筹款独立于网站常规的“Give a Damn”捐赠系统（该系统用于覆盖月度运营开支）。文章结尾巧妙关联：一枚魔术八号球（其发明者为玩具内部的二十面骰子申请了专利）显示给出“是”答案的概率是“否”的两倍，俏皮地暗示此次筹款成功的可能性——“征兆指向成功”。

---

## 10. 女孩只想要有界等待的快速MPMC队列

**原文标题**: Girls Just Wanna Have Fast MPMC Queues with Bounded Waiting

**原文链接**: [https://nahla.dev/blog/waitfree_queue/](https://nahla.dev/blog/waitfree_queue/)

**《女孩只想要带有限等待的快速MPMC队列》摘要**

本文介绍了一种有界、多生产者多消费者（MPMC）队列，专为快速无锁操作设计，并支持有限等待。作者澄清该队列并非无等待（此前声明已更正），但保证在生产者和消费者均活跃时不会出现饿死现象。

**设计：** 该队列采用票锁系统，包含两个原子计数器（生产者和消费者）和两个环形缓冲区（数据和状态）。每个状态缓冲区条目是一个`AtomicTicket`，存储预留编号（63位）和一个指示当前轮到谁（生产者或消费者）的状态位。操作遵循轮次协议：
- **生产者：** 对生产者计数器执行fetch-add，等待其票号出现在状态槽中，写入数据，然后将状态位切换给消费者。
- **消费者：** 对消费者计数器执行fetch-add，等待消费者轮次，读取数据，然后用下一个预留编号加上生产者位更新状态槽。

**主要优势：**
- **无CAS循环** – 等待通过在共享缓存行上自旋实现，减少了争用。
- **有限等待** – 等待时间取决于队列位置和对立类型活跃参与者的数量。
- **最小化队首阻塞** – 慢速生产者仅阻塞自己的槽位，允许其他生产者继续前进。
- **可驱动操作** – 提供非阻塞、可轮询的入队/出队方法，适用于事件循环。

**局限性：** 如果执行超过2^(n-1)+1次操作（其中n为usize的位数），由于预留编号溢出导致竞态条件，可能引发未定义行为。这在实践中极为罕见。

---

## 11. 内部服务的TLS证书正确配置指南

**原文标题**: TLS certificates for internal services done right

**原文链接**: [https://tuxnet.dev/posts/tls-for-internal-services/](https://tuxnet.dev/posts/tls-for-internal-services/)

**摘要：**

本文介绍了一种使用有效TLS证书保护内部Web服务的方法，从而避免自签名证书的弊端。作者提倡采用“水平分割DNS”方案：公共DNS将域名（例如 `grafana.tuxnet.dev`）解析到公网IP，而VPN的DNS则将其解析到内网IP（例如 `10.0.1.10`）。这样一来，便可以使用Let's Encrypt等公共证书颁发机构签发证书。

该配置包含三个关键组件：
1.  **NetBird**（VPN）：通过其自定义区域功能实现水平分割DNS。
2.  **acme.sh**（独立模式）：通过HTTP-01验证签发证书。
3.  **Nginx**（反向代理）：内置Web应用防火墙。关键在于，Nginx仅监听VPN网络接口，拒绝所有来自公共互联网的流量。

证书自动续期由cron任务处理，该任务执行 `acme.sh --cron`，将新证书复制到Nginx目录并重新加载Nginx。文章还演示了如何使用主题备用名称（SAN）通过单个证书覆盖多个内部服务（例如 `grafana.tuxnet.dev`、`analytics.tuxnet.dev`）。

其主要优势在于构建了一个安全、自动化的系统，内部服务无需为自签名证书配置信任即可获得受信任的证书，这依赖于分层安全机制（DNS + WAF）。

---

## 12. 玻璃脊梁：为何陆军后勤将在下一场战争中崩溃

**原文标题**: The glass backbone: Why the Army's logistics will break in the next war

**原文链接**: [https://mwi.westpoint.edu/the-glass-backbone-why-the-armys-logistics-will-break-in-the-next-war/](https://mwi.westpoint.edu/the-glass-backbone-why-the-armys-logistics-will-break-in-the-next-war/)

**《玻璃脊梁》摘要**

本文认为，为低威胁环境优化的美国陆军后勤体系，在应对同级对手的冲突时严重准备不足。作者指出，在未来大规模作战行动中，胜负将取决于后勤生存能力，而非仅仅是战术火力。

**关键要点包括：**

- **历史警示：** 德军在巴巴罗萨行动的失败与美军在伊拉克的经历表明，作战范围受后勤制约。未来战争将不再允许无争议的兵力集结或空中优势。
- **乌克兰教训：** 乌克兰战争证明，现代军队在后勤崩溃时会迅速瓦解。无处不在的无人机与精确火力使后方区域变得透明，燃料与弹药运输队极易遭袭（例如基辅北部的俄军车队）。集中式补给站如今极为脆弱。
- **核心弱点：** 陆军缺乏在火力威胁下大规模运输散装燃料（第三类物资）和弹药（第五类物资）的能力。当前的配送系统体积庞大、防护薄弱且易被锁定。
- **解决方案：** 陆军必须从集中式枢纽转向分散、机动、分布式的网络。后勤部队需配备建制防护能力（反无人机系统、短程防空）及升级装甲的车辆。自主补给平台应承担危险的“最后一公里”任务。
- **文化缺陷：** 作者认为，相比机动与火力，后勤保障的价值被严重低估。“牙齿与尾巴”的比例思维必须改变——在现代战争中，尾巴正是首要打击目标。陆军必须将后勤提升为核心作战职能。

**结论：** 若不重新聚焦生存能力与分散化部署，陆军可能拥有一支战术优势的部队，却因后勤脊梁断裂而达到顶点并遭遇失败。后勤将决定下一场战争的胜负。

---

## 13. 通配符（YC W25）正在招聘创始工程师

**原文标题**: Wildcard (YC W25) Is Hiring a Founding Engineer

**原文链接**: [https://www.ycombinator.com/companies/wildcard/jobs/ZSLVaaU-founding-engineer](https://www.ycombinator.com/companies/wildcard/jobs/ZSLVaaU-founding-engineer)

**简介：**
Wildcard（YC W25）正在招聘一名**创始工程师**作为首位工程员工。该职位提供13万至25万美元年薪、0.50%至4.00%股权，工作地点位于旧金山。

**公司：** Wildcard打造了一个代理型商业优化平台，帮助电商和零售品牌理解、提升并变现其在AI购物代理中的存在。公司专注于AEO/GEO、推荐、执行、归因和自动化，月增长率达50%。

**职位：** 创始工程师将与创始人Kaushik Mahorker（前Scale AI员工）直接合作，全面负责产品与基础设施——前端、后端、队列、浏览器自动化、可靠性及面向客户的功能。第0周的项目包括扩展浏览器编排、构建归因系统、适应新兴代理型商业协议，以及将早期系统迁移至可扩展的基础设施。

**理想候选人：** 拥有初创公司或早期阶段（种子轮到B轮）的经验，具备扎实的全栈技能（TypeScript、Node.js、React、Postgres、Redis），精通浏览器自动化和AI代理，并能高效使用AI编码工具。必须能在不确定性中游刃有余，直接与客户合作，并具有高容忍度处理繁琐工作。

**面试流程：** 快速通话、系统设计、1至2天工作试用，然后发放录用通知。

---

## 14. 一人打造的训练SIM卡被誉为史上最佳

**原文标题**: Train SIM Created by Just One Person Is Being Called the Best Ever Made

**原文链接**: [https://kotaku.com/a-train-sim-created-by-just-one-person-is-being-called-the-best-ever-made-2000699429](https://kotaku.com/a-train-sim-created-by-just-one-person-is-being-called-the-best-ever-made-2000699429)

**摘要：**

本文重点介绍了由独立开发者Novatetsu Games打造的超逼真火车模拟游戏《Running Train》。该游戏在Steam上获得评论界高度赞誉，被誉为有史以来最好的火车模拟游戏。

游戏背景设定在一个虚构的日本地区，包含42条路线（福川线10条、山海主线32条），单程时长从6分钟到44分钟不等。玩家需要控制速度、刹车和到站停靠，禁用UI辅助可获得更高分数。

该游戏最独特之处在于其非凡的环境细节。40公里的轨道沿线合理分布着电线杆、车流繁忙的公路、神社以及海岸风景。值得注意的是，大部分细节在驾驶室视角中并不可见，但可以通过自由相机模式探索——作者称赞这是体验这款模拟游戏最愉悦的方式。游戏还支持多种天气和季节变化。

该作目前在Steam上以18美元的价格进行抢先体验，预计2026年底前完成的未来更新将包含乘客系统、列车员模式，并可将轨道延伸至100公里。文章总结道，这款游戏的精美画面与细致入微的世界构建带来了一种难得的、冥想般的愉悦体验。

---

## 15. Muse Spark 1.1

**原文标题**: Muse Spark 1.1

**原文链接**: [https://ai.meta.com/blog/introducing-muse-spark-meta-model-api/](https://ai.meta.com/blog/introducing-muse-spark-meta-model-api/)

**《Muse Spark 1.1》概述（Meta AI博客）**

Meta发布了其面向下一代应用开发的强大生成式AI模型Muse Spark的1.1更新。核心改进在于速度和效率上的显著提升，实现了更快的推理速度和更低的计算成本。Muse Spark 1.1引入了全新架构，针对交互式聊天机器人、内容创作和代码生成等实时应用场景优化了性能。

本次更新聚焦三大核心领域：**响应精度提升**、**延迟降低**（使其成为对话式AI的理想选择）以及**资源效率优化**（相比前代版本所需的计算资源更少）。Meta强调，该模型现已支持更广泛的输入模式，并增强了多语言能力。

一项重要特色是全新的**Muse Spark API**，可通过Meta平台获取。开发者可将该模型集成到自己的服务中构建AI驱动工具，同时受益于Meta的安全防护措施。博客还着重介绍了模型开放、负责任的发展理念，内置过滤机制以最大限度减少有害输出。

总体而言，Muse Spark 1.1体现了Meta推动开发者更便捷获取高性能AI的努力，在单一可扩展模型中实现了速度、成本与安全性的平衡。

---

## 16. AI的下一个时代，关键在于基础设施，而非仅模型本身

**原文标题**: Why the Next Era of AI Is About Infrastructure, Not Just Models

**原文链接**: [https://blog.mozilla.ai/the-control-layer-why-the-next-era-of-ai-is-about-infrastructure-not-just-models/](https://blog.mozilla.ai/the-control-layer-why-the-next-era-of-ai-is-about-infrastructure-not-just-models/)

**摘要：**

本文认为，企业AI的下一个时代取决于**基础设施与控制**，而不仅仅是模型能力。文章追溯了AI从2022年的实验阶段到2024年项目淘汰的演进过程，并预测2026年生产成本将激增，迫使企业关注投资回报率和治理问题。

推动这一转变的关键挑战：
1. **碎片化：** 团队跨供应商使用数十种模型（如GPT、Claude、开源模型），每种模型都有不同的API、价格和延迟——造成运营混乱。
2. **成本不透明：** AI推理成本呈非线性增长；团队往往在收到账单后才发现超支。
3. **治理缺口：** 受监管行业（金融、医疗）需要可审计性、数据主权和合规性——当前基础设施尚不具备这些能力。

作者主张，**控制权是新的竞争护城河**。随着模型商品化，优势将转移到能够大规模、可靠、经济且安全地部署AI的组织。这需要一个“控制平面”层，能够智能路由请求、提供实时可观测性、执行组织级策略，并允许在不重写应用程序的情况下切换供应商。

Mozilla的答案是**Otari**，一个面向LLM的开源控制平面。它旨在防止供应商锁定，使组织能够对其AI堆栈拥有可见性、治理能力和灵活性。文章将Otari定位为智能体时代的基础设施，在该时代，管理数十个协调的AI智能体需要成本可预测且安全的基础设施。未来不属于最好的模型，而属于掌控模型上层控制权的人。

---

## 17. 发布HN：Context.dev (YC S26) – 从任意网站获取结构化数据的API

**原文标题**: Launch HN: Context.dev (YC S26) – API to get structured data from any website

**原文链接**: [https://www.context.dev](https://www.context.dev)

**摘要：**

Context.dev（YC S26）推出了一款API，旨在从任意网站提取结构化数据。其亮点在于与Mintlify的结合使用——Mintlify在10分钟内便集成了Context.dev。利用该API，Mintlify构建了一个工具，只需输入任意GitHub仓库URL，即可自动将其转化为完整的、品牌化的文档站点。该API简化了网页数据抓取与结构化的流程，使开发者能够以极低的集成成本，快速将原始在线内容（如GitHub仓库）转化为精良、可用的格式（如文档站点）。

---

## 18. 展示HN：在我的慢速计算机上运行GLM 5.2

**原文标题**: Show HN: Getting GLM 5.2 running on my slow computer

**原文链接**: [https://github.com/JustVugg/colibri](https://github.com/JustVugg/colibri)

本文介绍“colibrì”——一个基于C语言的推理引擎，能够在仅约25GB内存的消费级硬件上运行拥有7440亿参数的GLM-5.2混合专家（MoE）模型。其核心创新在于：每个token仅激活约400亿个参数，因此密集层部分（9.9GB）常驻RAM，而21504个路由专家（约370GB）则按需从磁盘流式加载。该引擎支持int4量化、带压缩KV缓存的MLA注意力机制、MTP推测解码、整数点积内核以及异步专家预读功能。一次性Python转换器负责FP8到int4格式的转换。性能受磁盘限制：在开发者的WSL2环境（通过VHDX的NVMe）中，冷启动解码速度约为0.05-0.1 tok/s，但社区基准测试显示，在配备128GB统一内存的Apple M5 Max上可达约1 tok/s。引擎会根据可用RAM自动调整专家缓存大小，内置可固定高频使用专家的学习缓存，并提供质量基准（MMLU、HellaSwag、ARC）。该项目需要社区协助测量int4量化精度并在更快的硬件上进行测试。代码采用Apache 2.0许可协议；GLM-5.2权重采用MIT许可协议。

---

## 19. 2026年12月底将不会引入闰秒

**原文标题**: No leap second will be introduced at the end of December 2026

**原文链接**: [https://datacenter.iers.org/data/latestVersion/bulletinC.txt](https://datacenter.iers.org/data/latestVersion/bulletinC.txt)

**摘要：**

国际地球自转与参考系统服务局（IERS）于2026年7月6日发布C 72号公告，确认**2026年12月底将不会引入闰秒**。该公告面向负责时间测量和发布的机构。

关键信息包括协调世界时（UTC）与国际原子时（TAI）的当前差值：**UTC-TAI = -37秒**，该值自2017年1月1日起生效，且维持不变直至另行通知。

闰秒只能在6月底或12月底添加至UTC，具体取决于UT1-TAI的变化。IERS每六个月发布一次C号公告，要么宣布闰秒，要么确认无需调整。本公告对2026年12月的情况确认了后者。该通知由巴黎天文台IERS地球定向中心主任克里斯蒂安·比佐阿尔签署。

---

## 20. 个人见解与简易Pi.dev配置

**原文标题**: Opinionated and Easy Pi.dev Configuration

**原文链接**: [https://lazypi.org/](https://lazypi.org/)

本文介绍**LazyPi**——一款一键安装工具，可为AI编程代理Pi配置精心挑选的社区工具与主题。该工具与原作者为Pi打造的极简理念形成鲜明对比，采用"全套配置，一步到位"的方式。

**核心要点：**
- **安装**：通过一条命令（`npx @robzolkos/lazypi`）即可安装Pi（若缺失）及60多项社区技能、67款主题、MCP支持、子代理、记忆功能、Claude Code CLI提供商等。
- **对比**：原生Pi包含0项技能与2款主题；LazyPi新增60+项技能与67款主题，并集成持久化记忆、子代理、规划模式、成本追踪及自动研究功能。
- **精选目录**：所有工具包均经过人工筛选，涵盖核心技能（子代理、MCP适配器、网络访问、记忆、规划）、UI扩展（计划审查、差异审查、增强工具栏、待办追踪）、研究工具及框架插件（复合工程）。
- **易用性**：用户可一键全装或使用交互式选择器。重复执行命令将跳过已安装的软件包。

---

## 21. 展示HN：我将850万篇研究论文映射成互动图谱

**原文标题**: Show HN: I mapped 8.5M research papers into an interactive atlas

**原文链接**: [https://tomesphere.com/atlas](https://tomesphere.com/atlas)

本文介绍"论文星球"——一个将超过850万篇科研论文可视化呈现的交互式图谱工具。该工具将来自arXiv、生命科学与医学等平台的论文聚类成可导航的交互式地图，让使用者能够探索科学领域之间的关联。其核心功能包括：显示论文数量的加载界面（例如生命科学与医学领域收录2,995,493篇论文）、数据规模（约45MB）以及带有获取进度状态指示器。该项目旨在让研究人员和公众更直观便捷地访问海量学术文献，将复杂的引文网络转化为可视化探索场景。

---

## 22. 展示HN：模拟手表

**原文标题**: Show HN: Analog Watch

**原文链接**: [https://analog.watch](https://analog.watch)

**摘要：**

题为"Show HN：模拟时钟"的投稿介绍了网站**analog.watch**，这是一款简单的时间读取游戏。核心挑战是尽可能快速准确地读取**三个模拟时钟**上的时间。

主要目标是测试并提升用户解读传统钟表表盘的速度，这项技能在数字时代往往逐渐退化。内容体现了竞争或自我提升的元素，鼓励玩家"尽可能快地"读出时间。

关键信息包括：
- **形式：** 基于网页的游戏/应用
- **机制：** 同时显示三个模拟时钟
- **目标：** 快速准确地识别三个时钟上的正确时间
- **目标受众：** 寻求快速脑力锻炼、怀旧体验或专注力测试的人群

该网站是一款极简的生产力或大脑训练工具，利用模拟界面的简洁性来创造一项专注的时间挑战。

---

## 23. Meta借助定制桥接芯片，在新服务器中复用旧款RAM

**原文标题**: Meta reuses old RAM in new servers with custom bridge chip

**原文链接**: [https://www.networkworld.com/article/4192827/meta-reuses-old-ram-in-new-servers-with-custom-bridge-chip.html](https://www.networkworld.com/article/4192827/meta-reuses-old-ram-in-new-servers-with-custom-bridge-chip.html)

**摘要：** 为应对内存价格上涨，Meta 开发了一款名为“Vistara”的自定义 CXL 桥接芯片，通过在新服务器中复用旧款 RAM 模块来降低成本。Meta 数百万台服务器中约 40% 因内存不足而性能受限，但其拥有大量从退役机器中拆下的旧款 DIMM——因为 RAM 芯片寿命约为其他服务器组件的两倍。

Vistara 芯片及其配套软件将旧内存从服务器内存通道中解耦，使其能与新原生内存协同工作，且不会像直接将旧 DIMM 插入新服务器那样显著影响性能。Meta 在题为《Vistara：让 CXL 成为现实》的技术论文中详细介绍了该技术。

考虑到当前市场状况，这一成本节约措施尤为及时：预计内存价格到 2026 年底将翻倍，且 RAM 短缺可能持续至 2027 年。该方案为其他替代方案（例如苹果建议使用更便宜的中国芯片，但可能面临监管阻力）提供了高效选择。通过复用可靠的老旧硬件，Meta 旨在遏制内存成本飙升，同时维持其超大规模数据中心的服务器性能。

---

## 24. Show HN：Abralo – 在单一窗口中免费、便捷运行多个Claude Code代理

**原文标题**: Show HN: Abralo – Free, easy way to run several Claude Code agents in one window

**原文链接**: [https://abralo.com/](https://abralo.com/)

**Abralo** 是一款免费桌面应用，允许用户在单一轻量窗口中同时运行多个 **Claude Code 代理**，旨在比传统终端更清晰易读、井然有序，帮助用户同时管理多个编程项目。

**主要特点：**
- **多代理管理：** 可同时运行最多四个代理（免费版），不影响性能。
- **更清爽的界面：** 比终端更为自然的阅读体验，轻松识别需要关注的代理。
- **使用分析：** 实时显示令牌消耗速率及限制（5小时和每周），配有平缓的指示器和消耗提示。
- **按代理跟踪消耗：** 查看哪个项目消耗的令牌最多。
- **暂停与恢复：** 若达到限制，工作内容得以保留，并可从停止处精确恢复。

**隐私与

**与其他工具对比：**
- 比 Conductor 或 Claude Squad 更轻量、更简单；专注于每个项目文件夹一个代理，而非多代理 Git 工作树。

**平台支持：**
- 原生支持 macOS、Windows 和 Linux（非网页封装）。无需注册或登录账户。

该应用由 Chris 创建，可通过 [abralo.com](http://abralo.com) 获取。

---

## 25. 新行政令对政府安全软件交付的意义

**原文标题**: What the New Executive Order Means for Secure Software Delivery in Government

**原文链接**: [https://www.rise8.us/resources/ai-executive-order-secure-software-delivery-government](https://www.rise8.us/resources/ai-executive-order-secure-software-delivery-government)

2026年6月2日发布的《促进先进人工智能创新与安全》行政令，明确了政府在安全使用人工智能方面的三个关键领域。

首先，**保护AI模型安全**主要由Anthropic、OpenAI和谷歌等前沿模型公司负责，该行政令并未将这一责任转移给政府机构。

其次，**利用AI保护联邦系统安全**需要在合规的云平台上运行模型之外，实施更严格的安全措施。必须在基础设施和容器层面设置适当防护，以应对AI特有的威胁。

第三，**提供合规的模型使用权限**是政府与行业的共同责任。该行政令旨在加快前沿模型在敏感环境（IL4/IL5）中的授权审批，例如扩大对Anthropic的Claude Opus 4.8或OpenAI的GPT-5.3-Codex的访问权限——目前这些模型在GovCloud中的使用仍受限制。

该行政令还要求对前沿模型进行保密基准测试，并鼓励通过自愿合作与可信伙伴关系实现早期应用。最终，该行政令利用AI加速现有持续交付与持续授权实践，从而更快、更安全地交付关键政府工作负载。

---

## 26. 如何跟随鼓手

**原文标题**: How to Follow a Drummer

**原文链接**: [https://drummate.app/blog/how-to-follow-a-drummer](https://drummate.app/blog/how-to-follow-a-drummer)

**摘要：**

本文描述了一套系统的构建，该系统让鼓手引领节奏和力度，而非跟随僵化的机器节拍。核心问题在于鼓击是音乐性的，而非时钟信号；切分音、填充和休止符会破坏从击触发到时钟转换的简单逻辑。

**关键挑战与解决方案：**
- **击打作为证据，而非指令：** 采用带有节拍感知前端的软件锁相环（PLL），将击打与网格假设（节奏+相位）进行匹配，忽略填充和切分音。时钟大约在一个小节内逐渐弯曲，避免突兀的跳跃。
- **持续推进至关重要：** 早期版本在鼓手演奏精彩段落时失败——信心下降，系统停止。解决方案：当信心摇摆但击打仍在继续时，时钟保持其最后的良好估计并等待，如同人类乐队成员。
- **预测优于反应：** 系统基于预测的节拍提前安排音符，消除鼓手时间循环中的延迟——模仿人类节奏声部的演奏方式。
- **分频与倍频：** 时钟分频是因果性的且简单；倍频（例如，击打之间的十六分音符）需要节奏模型。诚实的系统通过PLL方法解决这一问题。

该系统（体现在安卓应用DrumMate中）让鼓手引领生成的乐队，自然地弯曲节奏和感觉。作者指出，人类仍然是最佳的节拍追踪器，但当双手均被占用且没有第二个人类可用时，软件是必要的。

---

## 27. 新开放获取书籍：计算机与政治史

**原文标题**: New open access book on history of computers and politics

**原文链接**: [https://mitpress.mit.edu/9780262053198/simpolitics/](https://mitpress.mit.edu/9780262053198/simpolitics/)

无法访问该文章链接。

---

## 28. AI改变了软件重写的经济性

**原文标题**: AI changes the economics of software rewrites

**原文链接**: [https://thetruthasiseeitnow.com/ai-slop-starts-with-the-codebase-itself/](https://thetruthasiseeitnow.com/ai-slop-starts-with-the-codebase-itself/)

**摘要**

本文认为，人工智能正在改变软件重写的成本效益分析。AI生成代码的质量不仅取决于提示词，更依赖于所提供的上下文——主要是现有代码库。对于已经见过数百万次的通用、一致的技術棧，AI表现最佳；反之，面对专有、遗留或不一致的代码库时，AI需要更多令牌、提示和精力来推断模式再解决问题，这增加了成本并降低了输出质量。

作者对比了两种工作流：一种是AI根据清晰、成熟的模式轻松生成代码，另一种是AI浪费能力去学习一个不一致的系统。因此，重写不仅是现代化的机会，更是围绕能发挥AI优势的清晰模式进行重构的契机。若不如此，团队将花费时间教AI理解他们的语言，而非解决问题，从而在速度和品质上让竞争对手占得先机。最终，AI从根本上改变了软件重写的经济模式，使其更具战略性。

---

## 29. 去中心化系统中的群聊应如何运作？

**原文标题**: How should group chats work in decentralized systems?

**原文链接**: [https://marindedic.com/groups/](https://marindedic.com/groups/)

**摘要：Kiyeovo的去中心化群聊设计**

本文探讨了在完全去中心化、无服务器的点对点通讯工具中实现群聊的挑战。中心化系统（如Signal、Matrix）依赖服务器进行成员管理、密钥分发、消息排序和离线存储——没有服务器便无法享受这些便利。

在拒绝了集中式服务器、需要投递服务的复杂MLS/TreeKEM、导致排序冲突的无领导成员模式以及固定成员群组（Briar风格）等备选方案后，作者选择了**单一创建者模式**，并做出权衡：

- **成员管理**：仅群组创建者（通过Ed25519密钥标识）可邀请或移除成员。这确保了成员关系的单一真相来源，避免了合并冲突。成员可通过签名的请求退出。*缺点*：创建者成为单点故障；若其离线，则无法变更成员关系，但现有成员仍可通信。
- **密钥机制**：采用基于轮次的对称加密（XChaCha20-Poly1305）及**轮换发送密钥**。每次成员变更触发新轮次和密钥轮换。新成员仅获取当前轮次密钥，实现跨轮次的前向保密。基于密钥派生的主题名称可防止被移除成员访问新消息。
- **状态分发**：群组元数据以仅追加的哈希链日志形式存储在DHT中，由创建者签名，允许离线成员验证历史状态。
- **排序与离线存储**：消息使用按发送者排序的序列号检测间隙。离线消息存储在DHT中**按发送者分桶**的存储器中，避免了按接收者或共享分桶的复杂性。用户上线时扫描群组×成员×轮次桶。

**关键权衡**：单一创建者权威（中心化信任）、轮次内无密钥演进（在≤10名成员时可接受）、以及无需时钟的尽力排序。

---

## 30. 蜘蛛毒液可在不伤害蜜蜂的情况下杀死瓦螨

**原文标题**: Spider venom kills varroa mites without harming honeybees

**原文链接**: [https://connectsci.au/news/news-parent/9703/Spider-venom-kills-varroa-mites-without-harming](https://connectsci.au/news/news-parent/9703/Spider-venom-kills-varroa-mites-without-harming)

**摘要**

研究人员发现，澳大利亚捕鸟蛛（*Selenotypus plumipes*）的毒液能有效杀死瓦螨——这种对蜜蜂极具破坏性的寄生虫，且不会伤害蜜蜂本身。瓦螨是全球蜂群面临的主要威胁，会导致蜂群崩溃。这项由澳大利亚联邦科学与工业研究组织（CSIRO）主导、发表于《化学科学》的研究表明，蜘蛛毒液中的一种名为ω-六毒素-Pl1a的肽类成分具有高度选择性。

该肽通过靶向瓦螨神经系统中与蜜蜂结构不同的特定钙通道，扰乱其神经系统，从而麻痹并杀死瓦螨，同时蜜蜂不受影响。研究人员还确定了赋予这种选择性的关键氨基酸，为开发用于田间施用的合成稳定毒素版本铺平了道路。

现有的化学杀螨剂面临抗药性问题，且可能污染蜂蜜等蜂巢产品。这种源于蜘蛛毒液的化合物提供了一种有前景的天然替代品，可作为蜂群的局部处理剂。目前正在进行进一步研究，旨在将这一发现转化为商业化的、对蜜蜂安全的杀虫剂，以帮助应对全球瓦螨 infestation 危机。

---

