# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-07.md)

*最后自动更新时间: 2026-02-07 20:36:30*
## 1. 我用C语言写游戏（没错，就是C）

**原文标题**: I Write Games in C (yes, C)

**原文链接**: [https://jonathanwhiting.com/writing/blog/games_in_c/](https://jonathanwhiting.com/writing/blog/games_in_c/)

在这篇文章中，游戏开发者乔纳森·怀廷解释了他为何选择用“纯”C语言编写个人游戏项目这一非传统做法。他列举了自己的核心需求：一种可靠、可移植且具有长期稳定性的语言，以避免因平台变动而频繁重写代码。他倾向于选择语法简洁、强类型（减少错误）、编译快速（保持创作流畅性）且非面向对象的语言，以区分数据与代码逻辑。

怀廷评价了其他常见语言：C++过于复杂且编译缓慢；C#和Java冗长并强制面向对象；Go的垃圾回收机制和有限的游戏库支持存在不足；JavaScript约束过少；而自创语言又不切实际。尽管他认为Haxe在网页开发中颇具潜力，但其成熟度仍不及C语言。

最终他选择C语言，因其可靠、编译极快、可移植性极高，且拥有长期稳定的库和工具支持。他承认C语言存在风险，但看重其简洁性与可控性。怀廷强调自己并非提倡他人使用C语言，他的选择是基于个人特定偏好及多年使用该语言的丰富经验。

---

## 2. 我们哀悼我们的手艺

**原文标题**: We Mourn Our Craft

**原文链接**: [https://nolanlawson.com/2026/02/07/we-mourn-our-craft/](https://nolanlawson.com/2026/02/07/we-mourn-our-craft/)

这篇2026年2月的博客文章，是对传统软件工程技艺在先进AI编程工具冲击下的一曲挽歌。作者身为资深开发者，承认了一个令人不安的现实：这些工具确实高效，并即将在原始代码生成方面超越人类程序员。

他提醒同处职业生涯中期的同行们，若拒绝使用AI，将使他们相较于积极拥抱新技术的年轻同事处于严重劣势。对那些肩负经济责任的人而言，即便使用AI违背了年轻时的理想，为保住工作仍不得不做出这个务实选择。

文章的核心是对编程艺术消亡的哀悼。作者痛惜亲手打磨代码的亲密过程、解决复杂漏洞的深层满足感，以及个人创作的骄傲——他认为未来受AI辅助的一代将无法理解这些感受。

最终，他采取了无奈接受的态度。虽不歌颂这个新时代，但他认识到抵抗是徒劳的。这篇文章邀请人们共同哀悼这门技艺不可避免的消逝，它很快将成为历史书中的遥远注脚。

---

## 3. SectorC：512字节内的C语言编译器

**原文标题**: SectorC: A C Compiler in 512 bytes

**原文链接**: [https://xorvoid.com/sectorc.html](https://xorvoid.com/sectorc.html)

**SectorC**是一款用x86-16汇编编写的极小型C编译器，完全容纳在512字节的引导扇区内。它支持令人惊讶的C语言功能子集，包括全局变量、函数、`if`和`while`语句、各类运算符、指针解引用，甚至内联机器码。为实现极致精简，该编译器采用多项关键创新：将空格分隔的“超级词元”作为基本词法单元，复用简易的`atoi()`函数作为识别关键字和变量的哈希工具，并采用高度优化的极简递归下降解析器与代码生成器。通过`asm`语句，程序可嵌入原始机器码以进行I/O和硬件交互，因为编译器本身不提供标准库。该项目包含小型运行时和示例程序（如正弦波动画），展示了其实用性。最终，SectorC是激进软件微型化的技术典范，证明了在传统仅容纳简易引导程序的空间内，完全可以存在一个可用的C编译器。

---

## 4. Hoot：基于WebAssembly的Scheme语言

**原文标题**: Hoot: Scheme on WebAssembly

**原文链接**: [https://www.spritely.institute/hoot/](https://www.spritely.institute/hoot/)

Hoot是Spritely的一个项目，通过WebAssembly的垃圾回收（GC）功能，实现在网页浏览器中运行Scheme代码。它包含一个Scheme到Wasm的编译器和一个完整的Wasm工具链。

基于Guile构建且无外部依赖，Hoot是自包含的，并包含一个Wasm解释器，可直接在Guile REPL中测试二进制文件。最新稳定版本为0.7.0。

该项目提供了供用户试用、访问文档和查看公告的资源。开发版本可通过Git获取。其他材料包括展示Hoot用于构建交互式网页的文章和视频、其整体介绍，以及在实际应用中的底层工具链演示，如在Lisp Game Jam中的展示。更多见解可在Andy Wingo的博客和System Crafters的开发者访谈中找到。

---

## 5. 布鲁克海文实验室的RHIC在完成最终碰撞后结束25年运行

**原文标题**: Brookhaven Lab's RHIC Concludes 25-Year Run with Final Collisions

**原文链接**: [https://www.hpcwire.com/off-the-wire/brookhaven-labs-rhic-concludes-25-year-run-with-final-collisions/](https://www.hpcwire.com/off-the-wire/brookhaven-labs-rhic-concludes-25-year-run-with-final-collisions/)

**布鲁克海文实验室RHIC以最终碰撞结束25年运行历程总结**

美国能源部布鲁克海文国家实验室的相对论重离子对撞机（RHIC）已结束其长达25年的运行。2024年6月27日，该设施完成了最后一次计划中的粒子对撞，标志着核物理研究一个开创性时代的终结。

作为世界上首台能实现重离子对撞的加速器，RHIC的核心科学成就是创造并研究了一种名为夸克-胶子等离子体（QGP）的独特物质状态。这种炽热稠密的基本粒子汤再现了宇宙大爆炸后数微秒内存在的物质状态。关键发现包括：证实QGP表现为一种近乎“完美”的液体（具有极低黏度），并揭示了质子自旋如何源于其内部夸克与胶子的运动及相互作用。

RHIC的独特价值在于其多功能性。它实质上是两台对撞机的结合体：既是创造QGP的重离子对撞机，又是探索质子自旋的极化质子对撞机。这种双重能力，加上其创新性运用“电子透镜”进行束流控制的技术，使其成为无可替代的研究工具。

尽管主动对撞已告结束，该加速器复合体将继续运行以支持在建的电子-离子对撞机（EIC）项目。EIC是布鲁克海文正在建设的下一代设施，将以RHIC现有基础设施为基础。RHIC运行的终结正式标志着实验室重心转向建设这一新设施——该设施旨在以前所未有的精度探测质子与原子核的内部结构。

---

## 6. 人工智能热潮正导致其他领域普遍短缺。

**原文标题**: The AI boom is causing shortages everywhere else

**原文链接**: [https://www.washingtonpost.com/technology/2026/02/07/ai-spending-economy-shortages/](https://www.washingtonpost.com/technology/2026/02/07/ai-spending-economy-shortages/)

无法访问文章链接。

---

## 7. 软件开发的二十五年故事

**原文标题**: Stories from 25 Years of Software Development

**原文链接**: [https://susam.net/twenty-five-years-of-computing.html](https://susam.net/twenty-five-years-of-computing.html)

本文分享了作者25年软件开发生涯中的五个个人故事，聚焦于人文体验而非技术经验。

第一个故事讲述了2001年一名大学生简短的HTML教程如何揭开网络的神秘面纱，并激发了作者对个人网站的毕生兴趣。第二个故事描述了大学时期的一次实验——跳转到处理器的复位向量导致计算机重启，这次出于好奇的举动深刻影响了一位同学的学习方式。

第三个故事详述了作者2006年的第一份重要工程工作：一次关于“中间人攻击”的面试问题促使他深入研究公钥基础设施，并成功为银行产品交付了数字签名功能。第四和第五个故事涉及2007-2008年间从事电视机顶盒开发的经历：一则突显了资深架构师快速调试作者“意大利面条式代码”的卓越能力，另一则描述了作者在制造商声称无法实现的情况下，成功完成了小组件动画功能的开发。

整体而言，这些故事强调了好奇心、导师指导、动手实践对个人成长的影响，以及解决现实问题带来的深刻满足感。

---

## 8. OpenCiv3：开源跨平台文明III重制版

**原文标题**: OpenCiv3: Open-source, cross-platform reimagining of Civilization III

**原文链接**: [https://openciv3.org/](https://openciv3.org/)

**OpenCiv3** 是一个免费开源项目，旨在重建并现代化经典游戏《文明III》。该项目由爱好者使用Godot引擎开发，设计为跨平台（Windows、Linux、Mac）运行，并高度支持模组制作。

其核心目标是重新构想“本可以成为的样子”——在保留原版玩法的基础上，突破原有技术限制、修复漏洞并扩展模组功能。项目可在基础图形模式下独立运行，但建议使用合法购买的《文明III》（来自Steam或GOG）媒体文件以获得完整体验。

该项目目前处于活跃的前Alpha开发阶段。最新版本“荷兰预览版1”（v0.3）首次实现了无需《文明III》素材的独立运行，但仍不完整，缺少后期游戏内容且存在已知漏洞，包括加载部分原版游戏文件时会出现问题。

OpenCiv3与《文明》系列官方版权方无关。社区通过CivFanatics论坛、Discord和GitHub协调开发，软件基于MIT许可证发布。

---

## 9. 美国就业岗位以自大萧条以来最快的一月速度消失。

**原文标题**: U.S. Jobs Disappear at Fastest January Pace Since Great Recession

**原文链接**: [https://www.forbes.com/sites/mikestunson/2026/02/05/us-jobs-disappear-at-fastest-january-pace-since-great-recession/](https://www.forbes.com/sites/mikestunson/2026/02/05/us-jobs-disappear-at-fastest-january-pace-since-great-recession/)

**文章摘要：美国1月就业岗位流失速度创大衰退以来最快**

文章报道了2026年1月美国劳动力市场出现显著且意外的下滑。根据劳工部的报告，当月经济流失了25万个工作岗位，这是自2009年大衰退以来最严重的1月就业岗位减少。这一下降与经济学家预测的温和增加18.5万个工作岗位形成鲜明对比。

失业率从2025年12月的3.9%上升至4.2%。报告指出，就业岗位流失范围广泛，几乎波及经济的每一个主要部门。值得注意的是，零售业和运输/仓储业是受影响最严重的行业之一，反映出消费者支出和物流领域可能存在的疲软。

文章中引述的分析师和经济学家表示担忧，认为这些数据可能是经济进入下行期甚至可能陷入衰退的潜在信号。这份疲软的报告被视为就业市场从先前具有韧性的状态发生重大转变，并可能影响美联储即将做出的利率决策，增加其降息以刺激经济活动的压力。

文章将此份就业报告定位为一个重大的经济和政治挫折，给政策制定者带来了直接挑战，并对近期经济前景蒙上了阴影。

---

## 10. 艾尔·洛谈模型火车、滑稽死亡与迪士尼合作经历

**原文标题**: Al Lowe on model trains, funny deaths and working with Disney

**原文链接**: [https://spillhistorie.no/2026/02/06/interview-with-sierra-veteran-al-lowe/](https://spillhistorie.no/2026/02/06/interview-with-sierra-veteran-al-lowe/)

此次采访聚焦于以《*花花公子拉瑞*》系列闻名的阿尔·洛威鲜为人知的爱好：模型火车与音乐。

洛威详述了他对模型铁路的毕生热爱，从儿时搭建轨道到如今参与N比例火车模型及美国国家模型铁路协会活动。他特别指出数字技术如何推动这项爱好发展——如今已能通过电脑芯片与无线电控制机车运行。

音乐是他的另一大兴趣；洛威是位技艺精湛的萨克斯演奏家，常参与大乐队及萨克斯四重奏演出。他还回顾了在雪乐山公司的职业生涯，十六年间参与了二十六款不同产品的开发。

访谈亦涉及现代媒体话题，洛威提及自己喜爱北欧黑色剧集，并谈及对幽默标准变迁的看法。他表示如今不会重复某些早年笑话，同时批评娱乐作品中日益增多的暴力画面被社会接受的现象。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 2 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 3 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 4 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 5 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 6 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 7 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 8 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 9 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 10 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 11 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 12 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 13 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 14 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 15 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 16 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 17 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 18 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 19 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 20 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 21 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 22 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 23 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 24 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 25 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 26 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 27 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 28 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 29 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 30 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 31 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 32 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 33 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 34 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 35 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 36 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 37 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 38 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 39 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 40 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 41 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 42 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 43 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 44 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 45 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 46 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 47 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 48 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 49 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 50 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 51 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 52 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 53 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 54 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 55 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 56 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 57 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 58 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 59 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 60 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 61 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 62 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 63 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 64 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 65 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 66 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 67 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 68 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 69 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 70 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 71 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 72 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 73 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 74 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 75 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 76 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 77 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 78 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 79 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 80 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 81 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 82 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 83 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 84 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 85 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 86 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 87 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 88 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 89 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 90 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 91 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 92 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 93 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 94 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 95 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 96 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 97 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 98 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 99 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 100 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 101 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 102 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 103 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 104 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 105 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 106 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 107 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 108 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 109 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 110 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 111 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 112 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 113 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 114 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 115 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 116 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 117 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 118 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 119 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 120 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 121 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 122 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 123 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 124 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 125 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 126 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 127 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 128 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 129 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 130 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 131 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 132 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 133 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 134 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 135 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 136 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 137 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 138 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 139 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 140 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 141 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 142 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 143 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 144 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 145 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 146 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 147 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 148 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 149 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 150 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 151 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 152 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 153 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 154 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 155 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 156 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 157 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 158 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 159 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 160 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 161 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 162 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 163 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 164 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 165 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 166 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 167 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 168 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 169 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 170 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 171 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 172 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 173 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 174 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 175 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 176 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 177 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 178 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 179 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 180 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 181 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 182 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 183 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 184 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 185 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 186 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 187 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 188 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 189 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 190 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 191 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 192 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 193 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 194 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 195 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 196 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 197 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 198 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 199 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 200 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 201 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 202 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 203 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 204 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 205 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 206 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 207 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 208 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 209 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 210 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 211 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 212 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 213 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 214 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 215 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 216 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 217 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 218 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 219 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 220 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 221 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 222 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 223 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 224 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 225 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 226 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 227 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 228 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 229 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 230 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 231 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 232 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 233 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 234 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 235 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 236 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 237 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 238 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 239 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 240 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 241 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 242 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 243 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 244 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 245 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 246 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 247 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 248 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 249 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 250 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 251 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 252 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 253 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 254 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 255 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 256 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 257 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 258 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 259 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 260 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 261 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 262 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 263 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 264 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 265 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 266 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 267 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 268 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 269 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 270 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 271 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 272 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 273 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 274 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 275 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 276 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 277 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 278 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 279 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 280 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 281 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 282 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 283 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 284 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 285 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 286 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 287 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 288 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 289 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 290 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 291 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 292 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 293 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 294 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 295 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 296 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 297 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 298 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 299 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 300 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 301 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 302 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 303 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 304 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 305 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 306 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 307 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 308 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 309 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 310 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 311 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 312 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 313 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 314 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 315 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 316 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 317 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 318 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 319 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 320 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 321 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 322 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
