# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-09.md)

*最后自动更新时间: 2026-07-09 20:33:06*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 2 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 3 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 4 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 5 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 6 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 7 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 8 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 9 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 10 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 11 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 12 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 13 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 14 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 15 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 16 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 17 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 18 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 19 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 20 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 21 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 22 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 23 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 24 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 25 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 26 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 27 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 28 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 29 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 30 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 31 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 32 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 33 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 34 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 35 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 36 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 37 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 38 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 39 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 40 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 41 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 42 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 43 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 44 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 45 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 46 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 47 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 48 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 49 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 50 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 51 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 52 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 53 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 54 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 55 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 56 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 57 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 58 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 59 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 60 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 61 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 62 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 63 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 64 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 65 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 66 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 67 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 68 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 69 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 70 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 71 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 72 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 73 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 74 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 75 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 76 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 77 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 78 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 79 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 80 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 81 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 82 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 83 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 84 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 85 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 86 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 87 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 88 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 89 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 90 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 91 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 92 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 93 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 94 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 95 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 96 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 97 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 98 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 99 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 100 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 101 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 102 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 103 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 104 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 105 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 106 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 107 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 108 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 109 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 110 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 111 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 112 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 113 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 114 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 115 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 116 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 117 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 118 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 119 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 120 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 121 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 122 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 123 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 124 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 125 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 126 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 127 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 128 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 129 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 130 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 131 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 132 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 133 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 134 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 135 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 136 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 137 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 138 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 139 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 140 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 141 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 142 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 143 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 144 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 145 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 146 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 147 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 148 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 149 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 150 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 151 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 152 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 153 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 154 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 155 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 156 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 157 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 158 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 159 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 160 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 161 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 162 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 163 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 164 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 165 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 166 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 167 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 168 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 169 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 170 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 171 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 172 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 173 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 174 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 175 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 176 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 177 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 178 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 179 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 180 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 181 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 182 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 183 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 184 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 185 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 186 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 187 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 188 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 189 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 190 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 191 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 192 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 193 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 194 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 195 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 196 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 197 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 198 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 199 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 200 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 201 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 202 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 203 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 204 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 205 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 206 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 207 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 208 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 209 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 210 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 211 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 212 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 213 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 214 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 215 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 216 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 217 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 218 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 219 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 220 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 221 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 222 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 223 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 224 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 225 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 226 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 227 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 228 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 229 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 230 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 231 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 232 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 233 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 234 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 235 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 236 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 237 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 238 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 239 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 240 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 241 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 242 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 243 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 244 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 245 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 246 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 247 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 248 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 249 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 250 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 251 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 252 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 253 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 254 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 255 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 256 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 257 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 258 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 259 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 260 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 261 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 262 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 263 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 264 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 265 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 266 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 267 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 268 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 269 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 270 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 271 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 272 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 273 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 274 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 275 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 276 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 277 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 278 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 279 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 280 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 281 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 282 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 283 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 284 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 285 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 286 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 287 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 288 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 289 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 290 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 291 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 292 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 293 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 294 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 295 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 296 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 297 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 298 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 299 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 300 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 301 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 302 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 303 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 304 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 305 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 306 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 307 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 308 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 309 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 310 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 311 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 312 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 313 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 314 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 315 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 316 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 317 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 318 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 319 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 320 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 321 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 322 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 323 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 324 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 325 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 326 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 327 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 328 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 329 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 330 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 331 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 332 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 333 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 334 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 335 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 336 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 337 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 338 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 339 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 340 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 341 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 342 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 343 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 344 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 345 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 346 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 347 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 348 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 349 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 350 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 351 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 352 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 353 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 354 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 355 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 356 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 357 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 358 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 359 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 360 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 361 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 362 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 363 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 364 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 365 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 366 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 367 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 368 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 369 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 370 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 371 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 372 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 373 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 374 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 375 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 376 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 377 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 378 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 379 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 380 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 381 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 382 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 383 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 384 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 385 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 386 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 387 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 388 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 389 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 390 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 391 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 392 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 393 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 394 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 395 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 396 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 397 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 398 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 399 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 400 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 401 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 402 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 403 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 404 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 405 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 406 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 407 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 408 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 409 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 410 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 411 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 412 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 413 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 414 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 415 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 416 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 417 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 418 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 419 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 420 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 421 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 422 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 423 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 424 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 425 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 426 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 427 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 428 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 429 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 430 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 431 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 432 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 433 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 434 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 435 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 436 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 437 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 438 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 439 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 440 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 441 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 442 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 443 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 444 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 445 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 446 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 447 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 448 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 449 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 450 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 451 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 452 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 453 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 454 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 455 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 456 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 457 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 458 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 459 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 460 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 461 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 462 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 463 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 464 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 465 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 466 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 467 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 468 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 469 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 470 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 471 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 472 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 473 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 474 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
