# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-31.md)

*最后自动更新时间: 2025-12-31 20:38:13*
## 1. 我取消了出书协议。

**原文标题**: I canceled my book deal

**原文链接**: [https://austinhenley.com/blog/canceledbookdeal.html](https://austinhenley.com/blog/canceledbookdeal.html)

2023年，奥斯汀·Z·亨利与一家大型出版商签约，计划根据其热门博客撰写一本编程书籍。该书原计划收录编译器、模拟器等经典项目的教程。然而，创作过程很快变得令人沮丧。出版商不断施压，要求简化内容、淡化他的个人风格，并且尽管书籍主题早已商定，仍反复坚持加入人工智能相关内容。频繁的邮件往来、僵化的截止日期和公式化的反馈，让写作变得像苦差事，而非激情项目。

经济上，这份合约同样缺乏吸引力：仅5000美元的微薄预付款和低廉的版税分成。加上繁重的日常工作、婚礼筹备以及可能的职业变动，亨利的写作进展陷入停滞。在申请暂停后，当他明确意识到自己已不再享受这项工作时，最终决定彻底终止合约。出版商现已将所有权利归还给他。

亨利依然相信这本书的构想，未来可能会以博客文章或自助出版的形式重启项目。但这段经历凸显了传统出版模式对技术类作者的重大弊端。

---

## 2. 隐私与控制。我的科技配置

**原文标题**: Privacy and control. My tech setup

**原文链接**: [https://toidiu.com/blog/2025-12-25-privacy-and-control/](https://toidiu.com/blog/2025-12-25-privacy-and-control/)

作者认为核心问题并非“隐私”，而是对个人数字生活的“控制权”——谁能影响、审查或将你的信息和体验变现。他们主张质疑服务商的激励机制是否与你的利益一致。

其个人设置通过以下方式优先保障控制权：
*   **密码管理：** 使用 GNU pass 以避免第三方托管密码。
*   **通讯：** 首选 Signal 而非 WhatsApp，并禁用 Venmo。
*   **手机：** 运行 GrapheneOS 以沙盒化应用、限制权限并延长设备寿命，通过 F-Droid 获取开源应用。
*   **邮箱：** 使用个人域名搭配 Tuta 以实现服务商独立。
*   **浏览：** 使用 Firefox 并搭配 Privacy Badger 和 uBlock Origin。
*   **日历/联系人：** 在树莓派上自建服务。
*   **DNS：** 基于对 Cloudflare 商业激励机制的信任而使用其 DNS 服务。

作者承认便利性与控制权之间存在权衡，建议根据个人面临的威胁模型和生活方式做出合适选择。

---

## 3. 编译器是你最好的朋友

**原文标题**: The compiler is your best friend

**原文链接**: [https://blog.daniel-beskin.com/2025-12-22-the-compiler-is-your-best-friend-stop-lying-to-it](https://blog.daniel-beskin.com/2025-12-22-the-compiler-is-your-best-friend-stop-lying-to-it)

本文主张开发者应将编译器视为有益伙伴而非障碍，通过其预防运行时错误并保障系统稳定性。文章阐释编译器的主要作用是将源代码转换为其他格式，其中类型检查是早期捕获错误的关键环节。

为阐明这一观点，文章探讨了不同的编译器模型。Rust的前置编译器在编译时强制执行严格的内存安全与所有权规则，从而预防常见错误。Java采用即时编译器，在运行时根据使用模式优化代码，但其初始阶段仍通过简单的字节码编译实现。TypeScript作为转译器，为JavaScript添加了结构化类型系统，通过渐进式类型化提升大型动态代码库的安全性。

文章指出一个重要见解：语言与编译器设计常受编译器开发者自身需求的影响，这往往催生出有利于编写健壮代码的特性。文章总结道，通过提供精确的类型信息并重视编译器警告——而非通过类型转换或`any`类型规避警告——开发者能借助编译器的分析能力在生产环境前捕获错误，从而构建更可靠的软件并减少紧急修复。

---

## 4. 作为创始人兼首席技术官：第八年

**原文标题**: My role as a founder-CTO: year 8

**原文链接**: [https://miguelcarranza.es/cto-year-8](https://miguelcarranza.es/cto-year-8)

在担任创始人兼首席技术官的第八年，作者经历了一个关键转折点：RevenueCat收到了一个能带来巨额个人财富的严肃收购要约。经过与联合创始人、家人及其他创业者的深入探讨，他们最终选择保持独立，并通过新一轮融资为未来保驾护航，继续推进公司建设。

这一年以高强度对外交流为特点，他频繁出差以拓展人脉、出席演讲并深化客户关系。他的核心职责始终如一，专注于高杠杆活动，如人才招聘、通过优化设计和客户支持等举措塑造公司文化，以及有效授权。他对工程团队在应对行业重大变革时展现的自主性与敏捷性，以及他们对人工智能工具的积极采用感到自豪。

尽管面临可靠性事件和组织摩擦加剧等挑战，公司在年末打下了更坚实的运营基础。作者还新设立了“首席技术官办公室”，以提升跨公司技术战略与创新能力，这标志着他正转向更具可扩展性和长期视野的领导角色。

---

## 5. 从脚手架到超人：课程学习如何攻克2048与俄罗斯方块

**原文标题**: Scaffolding to Superhuman: How Curriculum Learning Solved 2048 and Tetris

**原文链接**: [https://kywch.github.io/blog/2025/12/curriculum-learning-2048-tetris/](https://kywch.github.io/blog/2025/12/curriculum-learning-2048-tetris/)

本文详细介绍了如何利用课程学习和快速迭代，在PufferLib框架下实现2048和俄罗斯方块中的超人类表现。关键在于采用系统化、速度优先的方法：PufferLib的高速环境允许在数小时内完成数百次超参数扫描，将强化学习从猜测转变为有纪律的搜索。

在**2048**中，一个仅训练75分钟的15MB策略模型超越了传统大规模搜索方案，达成65,536方块的合成率高达14.75%。成功依赖于精心设计的课程：通过“脚手架环境”和“终局专用环境”，让智能体反复练习关键且难以触达的终局状态。一个370万参数的LSTM网络负责处理所需的长时程规划。

在**俄罗斯方块**中，观测噪声持续存在的程序漏洞意外形成了有效的课程机制，使智能体早期就学会应对混乱局面。后续通过主动添加衰减噪声或随机垃圾行复制了这一效果，证明早期接触困难能构建终局阶段的应变能力。

核心经验在于：1）极致的模拟速度是实现系统化优化的基础；2）在扩展网络规模前需充分调试观测与奖励机制；3）课程学习——控制智能体的经验范围——是实现超人类表现的关键，因为智能体无法从从未接触过的状态中学习。

---

## 6. 微音螺旋钢琴

**原文标题**: Microtonal Spiral Piano

**原文链接**: [https://shih1.github.io/spiral/](https://shih1.github.io/spiral/)

根据所提供的文本，这并非一篇传统文章，而似乎是一个网络应用的标题和占位内容。

**概述：**

标题表明该应用名为“微音螺旋钢琴”，暗示这是一款数字乐器。其核心概念是一个钢琴界面，可能将音符以螺旋或圆形布局排列，而非标准的线性键盘。这种设计通常用于可视化和演奏微音音乐，即使用比西方音乐中传统半音更小的音程。

简短的正文内容“螺旋合成器 您需要启用JavaScript才能运行此应用”揭示了两个关键点：
1.  **功能：** 它是一个能够生成声音的合成器。
2.  **技术

本质上，“微音螺旋钢琴”是一款具有独特螺旋界面的网络应用合成器，专为创作和探索微音音乐而设计。

---

## 7. 解密DVD

**原文标题**: Demystifying DVDs

**原文链接**: [https://hiddenpalace.org/News/One_Bad_Ass_Hedgehog_-_Shadow_the_Hedgehog#Demystifying_DVDs](https://hiddenpalace.org/News/One_Bad_Ass_Hedgehog_-_Shadow_the_Hedgehog#Demystifying_DVDs)

本文宣布了数款世嘉游戏原型版本的发布，其中最引人注目的是《刺猬暗影》的多个开发版本。文章以此为切入点，分析了21世纪初《索尼克》系列的发展状况。

核心论点指出，世嘉在Dreamcast主机停产后从硬件制造商转型为第三方发行商，这导致了其创作力的衰退。文章将充满野心与创新的《索尼克大冒险》系列，与趋于保守、令人失望的《索尼克英雄》进行对比，认为后者标志着该系列开始转向迎合更广泛但忠诚度较低的受众群体。

《刺猬暗影》的开发被描述为对此阶段困境的一次直接而失策的回应。文章指出，这款游戏试图让索尼克形象“成熟化”以拓展品牌边界，但字里行间暗示这种尝试实属误判。这些原型版本的发布，为审视世嘉动荡时期中索尼克团队历史上那个“诡异阶段”提供了历史注脚。

---

## 8. 阿金航天器设计法则 [pdf]

**原文标题**: Akin's Laws of Spacecraft Design [pdf]

**原文链接**: [https://www.ece.uvic.ca/~elec399/201409/Akin%27s%20Laws%20of%20Spacecraft%20Design.pdf](https://www.ece.uvic.ca/~elec399/201409/Akin%27s%20Laws%20of%20Spacecraft%20Design.pdf)

根据所提供的PDF数据，其内容似乎是损坏或不完整的二进制代码，因此无法对《阿金航天器设计法则》进行摘要。

该内容不包含可读文本或实际法则列表，而是由PDF对象流和编码数据构成。这些是PDF文件的技术构建模块，但并非人类可读的文章本身。

若要摘要该文章，需要PDF的实际文本内容。

---

## 9. 最著名的超越数

**原文标题**: The most famous transcendental numbers

**原文链接**: [https://sprott.physics.wisc.edu/pickover/trans.html](https://sprott.physics.wisc.edu/pickover/trans.html)

本文改编自克利夫·皮克福尔的《数字奇迹》一书，探讨了超越数的概念——即无法表示为有理系数代数方程根的数。文章指出，虽然超越数在数量上远超代数数，但广为人知的超越数却寥寥无几。

文章开篇提及了π（林德曼于1882年证明）和*e*（埃尔米特于1873年证明）的超越性历史证明，随后列举了十五个著名超越数或疑似超越数，包括欧拉常数（γ）、卡塔兰常数、柴廷常数（一种不可计算的概率）以及混沌理论中的费根鲍姆常数。列表中还包含一些有趣的例子，如*i^i*，以及通过特定模式构造的数，例如刘维尔常数和钱珀瑙恩常数。

文章解释了关键性质，如格尔丰德-施奈德定理，该定理有助于证明像2^√2这类数的超越性。文中穿插了一个关于“会说话的蚂蚁”试图背诵π无限位数的寓言故事，随后附有读者对该故事逻辑漏洞的修正。同事的补充说明指出，常用对数通常具有超越性，并提及了多蒂数（方程cos *x* = *x*的不动点）。

总体而言，本文以通俗易懂的方式介绍了超越数的奥秘与重要性，融合了历史背景、数学定理和奇妙的实例。

---

## 10. 《计算机编年史》的创作者斯图尔特·切菲特去世

**原文标题**: Stewart Cheifet, creator of The Computer Chronicles, has died

**原文链接**: [https://obits.goldsteinsfuneral.com/stewart-cheifet](https://obits.goldsteinsfuneral.com/stewart-cheifet)

斯图尔特·切费特——颇具影响力的PBS电视系列节目《计算机编年史》的创作者兼主持人，于2025年12月28日去世，享年87岁。

切费特1938年出生于费城，先后在南加州大学和哈佛法学院获得学位。他的电视制作生涯始于巴黎的CBS新闻部，并在那里结识了妻子佩塔。他最为人熟知的是制作并主持的《计算机编年史》（1984-2002年），该节目记录了个人电脑的兴起，以及探索早期互联网的《网络咖啡屋》（1996-2002年）。这些节目因对数字革命富有远见的报道而广受赞誉。

结束电视生涯后，切费特曾担任互联网档案馆的顾问，协助保存历史媒体资料，并在内华达大学里诺分校教授广播新闻学。他的妻子、两名子女、五名孙辈和两位兄弟仍在世。葬礼将私下举行。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 2 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 3 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 4 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 5 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 6 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 7 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 8 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 9 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 10 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 11 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 12 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 13 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 14 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 15 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 16 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 17 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 18 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 19 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 20 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 21 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 22 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 23 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 24 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 25 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 26 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 27 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 28 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 29 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 30 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 31 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 32 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 33 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 34 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 35 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 36 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 37 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 38 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 39 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 40 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 41 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 42 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 43 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 44 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 45 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 46 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 47 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 48 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 49 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 50 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 51 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 52 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 53 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 54 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 55 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 56 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 57 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 58 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 59 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 60 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 61 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 62 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 63 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 64 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 65 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 66 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 67 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 68 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 69 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 70 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 71 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 72 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 73 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 74 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 75 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 76 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 77 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 78 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 79 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 80 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 81 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 82 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 83 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 84 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 85 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 86 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 87 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 88 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 89 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 90 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 91 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 92 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 93 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 94 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 95 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 96 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 97 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 98 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 99 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 100 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 101 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 102 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 103 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 104 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 105 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 106 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 107 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 108 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 109 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 110 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 111 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 112 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 113 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 114 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 115 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 116 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 117 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 118 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 119 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 120 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 121 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 122 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 123 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 124 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 125 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 126 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 127 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 128 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 129 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 130 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 131 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 132 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 133 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 134 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 135 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 136 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 137 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 138 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 139 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 140 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 141 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 142 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 143 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 144 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 145 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 146 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 147 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 148 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 149 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 150 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 151 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 152 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 153 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 154 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 155 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 156 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 157 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 158 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 159 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 160 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 161 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 162 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 163 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 164 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 165 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 166 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 167 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 168 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 169 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 170 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 171 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 172 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 173 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 174 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 175 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 176 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 177 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 178 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 179 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 180 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 181 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 182 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 183 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 184 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 185 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 186 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 187 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 188 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 189 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 190 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 191 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 192 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 193 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 194 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 195 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 196 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 197 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 198 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 199 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 200 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 201 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 202 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 203 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 204 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 205 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 206 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 207 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 208 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 209 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 210 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 211 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 212 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 213 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 214 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 215 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 216 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 217 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 218 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 219 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 220 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 221 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 222 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 223 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 224 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 225 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 226 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 227 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 228 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 229 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 230 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 231 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 232 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 233 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 234 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 235 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 236 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 237 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 238 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 239 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 240 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 241 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 242 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 243 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 244 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 245 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 246 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 247 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 248 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 249 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 250 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 251 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 252 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 253 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 254 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 255 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 256 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 257 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 258 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 259 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 260 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 261 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 262 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 263 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 264 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 265 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 266 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 267 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 268 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 269 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 270 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 271 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 272 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 273 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 274 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 275 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 276 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 277 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 278 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 279 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 280 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 281 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 282 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 283 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 284 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
