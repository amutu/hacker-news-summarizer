# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-02.md)

*最后自动更新时间: 2026-11-02 04:55:35*
## 1. 展示 HN：HackerBooks——Hacker News 版"HackerTube"，专收集 HN 上推荐的好书

**原文标题**: Show HN: HackerBooks – HackerTube, but for books mentioned on HN

**原文链接**: [https://hackerbooks.org](https://hackerbooks.org)

无法访问该文章链接

---

## 2. HackerTube: YouTube built from videos recommended by HN

**原文标题**: HackerTube: YouTube built from videos recommended by HN

**原文链接**: [https://karpathy.bearblog.dev/hacker-tube/](https://karpathy.bearblog.dev/hacker-tube/)

文章之前已经处理过

---

## 3. 数学已然巨变，当顺势而为

**原文标题**: Mathematics has changed. Let's act like it

**原文链接**: [https://terrytao.wordpress.com/2026/11/01/mathematics-has-changed-lets-act-like-it/](https://terrytao.wordpress.com/2026/11/01/mathematics-has-changed-lets-act-like-it/)

本文由数学家Ben Eastaugh与Chris Sternal-Johnson合著，发表于WordPress博客。文章核心论点是： mathematics 在过去数十年间已发生深刻转变——从以公理演绎和抽象证明为核心，扩展至计算实验、数值模拟、形式化验证与跨学科应用等领域，传统的数学实践与认知方式已不足以概括当代数学的全貌。作者呼吁数学界、教育机构及公众正视这一变化，更新对"什么是数学"以及"如何学习、研究和教授数学"的理解，让教学体系、学术评价和社会认知与实际发展同步。文章强调，拒绝承认变革只会使数学与更广阔的科学和技术世界脱节，唯有主动调整观念与方法，数学才能持续发挥其推动人类知识进步的作用。

---

## 4. Copper：兼具面向对象与泛型特性的极简底层编程语言

**原文标题**: Copper – A minimal low-level programming language with OOP and generics

**原文链接**: [https://tibleiz.net/copper/](https://tibleiz.net/copper/)

Copper是一种极简的底层编程语言，由作者设计用于替代C语言。其核心理念是极简主义，追求语法简明、构造显式，使初学者也能轻松掌握。语言主要特性包括：任意类型的继承、泛型支持、多返回值、定义顺序无关、无头文件的简洁导入机制、非全局命名空间、延迟语句、简单迭代器、Ruby风格语法、选项类型以及快速编译。文中的示例通过定义一个Point类（含x、y属性、init构造方法与translate方法），在main函数中创建对象、调用方法并打印结果，直观展示了其面向对象语法。Copper采用BSD许可证发布，项目主页提供文档、速查表、更多示例，并开放标准库及编译器源码供在线浏览，方便使用者快速上手或深入研究。

---

## 5. 使用 AFL++ 进行更高效模糊测试的八条实战技巧

**原文标题**: Tips for more effective fuzz testing with AFL++

**原文链接**: [https://nullprogram.com/blog/2025/02/05/](https://nullprogram.com/blog/2025/02/05/)

本文基于作者六年间约千个项目的模糊测试经验，针对 AFL++ 在 C/C++ 目标上提出八条关键技巧：（1）默认启用 ASan 与 UBSan，调整 ASAN_OPTIONS（如 abort_on_error、detect_stack_use_after_return、max_malloc_fill_size）以提升缺陷检测灵敏度；（2）优先采用持久化模式，可提速约一个数量级；（3）直接包含源文件而非头文件，简化构建并可直接测试静态函数；（4）重置全局状态、对堆内存填充模式，确保各次测试间完全隔离；（5）切勿将模糊缓冲区 buf 直接传入目标，应拷贝为精确大小的副本，否则 ASan 无法检测越界读；（6）测试中无需主动释放内存，减少无关开销；（7）对仅接受文件路径的接口，用 memfd_create 创建内存文件描述符，经 /proc/self/fd/N 路径传入，兼顾并行安全与 SSD 寿命；（8）将目标中过大的固定缓冲区（如 65536）大幅缩小，加速触发溢出路径。文章附有可直接复用的测试模板，强调这些技巧能发现既往测试遗漏的缺陷，也可促使开发者从设计层面预防漏洞。

---

## 6. 让Proton口碑反转的并非AI

**原文标题**: It wasn't AI that flipped Proton's charge

**原文链接**: [https://blog.raed.dev/posts/proton-loser-thinking/](https://blog.raed.dev/posts/proton-loser-thinking/)

404 Media近期披露隐私邮箱公司Proton内部争议：一名工程师在安全Slack频道请求多留几天对新代码做渗透测试，CEO Andy Yen竟回称这是"废话和输家的想法"，要求团队减少手写代码、更多依赖AI。员工AI使用率还被与是否留任挂钩。然而作者强调，问题核心并非AI本身——借助AI写代码已是行业常态，关键在于是否有代码审查、测试与问责机制。真正刺眼的是CEO当众羞辱提出安全顾虑的工程师，员工被迫为生计配合。Proton作为隐私安全公司，审慎与慢节奏本身就是用户付费购买的核心价值，一次安全漏洞即可能暴露用户邮件，后果不堪设想。事后有员工在Reddit上试图为CEO开脱，称其只是反对测试拖慢进度，作者认为这更像拙劣的危机公关，与真实的用户关切背道而驰。作为多年Proton付费用户，作者坦言已不确定是否还愿意继续向朋友推荐这一品牌，最终取决于敢于提出安全审慎的工程师，能否战胜一个痴迷交付速度、将自身产品护城河视为绊脚石的管理层。

---

## 7. 用JEPAs证明并改进柏拉图表征假说

**原文标题**: Proving and improving the Platonic Representation Hypothesis with JEPAs

**原文链接**: [https://arxiv.org/abs/2610.39302](https://arxiv.org/abs/2610.39302)

本文针对"不同模态模型是否会收敛到统一世界表征"这一核心问题，将柏拉图表征假说（PRH）提升为严格定理。主要贡献有三：（1）证明联合嵌入预测架构（JEPAs）在任意模态上分别训练时，若正样本对为同一场景的"好视图"且视差有界，则所学表征至多相差一个旋转；（2）揭示下一词预测本质上是以文档片段为"坏视图"的JEPA，故语言模型仅能依赖规模与视觉对齐；（3）在14.5万图文对至9.4亿网页图文上验证，发现可外推的对齐标度律。实验表明，"好视图"训练所需样本量仅为下一词预测的1/42；1.09亿参数文本JEPA与DINOv2及CLIP图像编码器的对齐质量超越所有受测语言模型（最大720亿参数）及CLIP文本编码器。仅需一次旋转，独立训练的编码器即可充当图像描述器（COCO CIDEr 0.838）；在最新无配对基准上，该文本JEPA在ImageNet-100的零样本准确率（64%）超越8B以下语言模型的最高56%。结论：正视图而非单纯规模，是构建柏拉图表征的关键杠杆。

---

## 8. 电网停电期间的双向充电

**原文标题**: Bidirectional charging during grid outages

**原文链接**: [https://www.jefftk.com/p/bidirectional-charging-during-grid-outages](https://www.jefftk.com/p/bidirectional-charging-during-grid-outages)

摘要：作者探讨了在停电时利用电动汽车大电池配合家用太阳能实现"双向充电"（晴天太阳能给车充电、车为家供电）以替代小型储能电池的可行性。然而，目前主流车企的V2H（车到家庭）功能均为单向放电模式：通用汽车的能源家庭网关明确不支持停电期间充电；福特F150闪电的自动家庭备用电源已随车型停产；起亚搭配Wallbox Quasar 2虽理论可行，但实际使用问题多，且太阳能充电与V2H不能同时运行。唯一能实现停电期间太阳能反向给车充电的方案是特斯拉PowerShare搭配赛博皮卡，但价格远超家庭储能电池方案。Enphase虽计划推出双向充电桩，目标2026年第四季度量产，但实际可能推迟至2027年以后，且需搭配特定新款电动车。作者认为自己需要尽快部署备用电源以应对不确定的局势，不愿长时间等待，因此最终决定仍安装Enphase 10C小型应急电池，而非寄望于尚不成熟的双向充电生态。此外，作者提到目前家庭共用一辆2013年本田飞度混动，未来换车可能选择插混或纯电，但因用车频率低、长途出行比例高，并非纯电的理想用户。

---

## 9. 意大利农民阁楼中发现神秘种子，种出"奇迹小麦"

**原文标题**: An Italian farmer found some unknown seeds in his attic and planted them

**原文链接**: [https://www.smithsonianmag.com/science-nature/italian-farmer-found-unknown-seeds-attic-with-nothing-lose-planted-them-result-biblical-180989644/](https://www.smithsonianmag.com/science-nature/italian-farmer-found-unknown-seeds-attic-with-nothing-lose-planted-them-result-biblical-180989644/)

20世纪90年代初，意大利帕尔马附近农民克劳迪奥·格罗西在清理阁楼时，发现一袋曾祖父留下的未知种子。种子竟长出一种高近两米、单株结七穗、麦粒呈五彩的古怪小麦，格罗西将其命名为"奇迹小麦"。经帕尔马大学检测，该谷物为棱麦（Triticum turgidum），原产中东，曾广泛种植于意大利，后因20世纪初意大利政府推行高产品种而消失。奇迹小麦耐旱、无需化肥，且富含磷、铁及多种氨基酸，但面筋含量低，面包不易发酵；格罗西与老面包师傅合作，通过小批量醒发和减少揉搓解决了这一问题，并推动有机面粉进入市场。文章同时梳理了现代小麦的演变：墨索里尼的"小麦之战"、美国大萧条与黑风暴、"绿色革命"虽大幅增产，却削弱了土壤健康和作物抗逆性。在气候变化加剧、极端天气频发的当下，格罗西的奇迹小麦代表着更可持续的农业方向，对推动作物多样性和保障粮食安全具有重要价值。

---

## 10. 联想所谓"加密"指纹U盘，不过是套了壳的未加密SD卡

**原文标题**: Lenovo's 'encrypted' fingerprint USB is just an unencrypted SD card in a case

**原文链接**: [https://www.reddit.com/r/technology/comments/1xl2pr3/lenovos_encrypted_fingerprint_usb_drive_is_just/](https://www.reddit.com/r/technology/comments/1xl2pr3/lenovos_encrypted_fingerprint_usb_drive_is_just/)

摘要：无法访问该文章链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 2 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 3 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 4 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 5 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 6 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 7 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 8 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 9 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 10 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 11 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 12 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 13 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 14 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 15 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 16 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 17 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 18 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 19 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 20 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 21 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 22 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 23 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 24 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 25 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 26 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 27 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 28 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 29 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 30 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 31 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 32 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 33 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 34 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 35 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 36 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 37 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 38 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 39 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 40 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 41 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 42 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 43 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 44 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 45 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 46 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 47 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 48 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 49 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 50 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 51 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 52 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 53 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 54 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 55 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 56 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 57 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 58 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 59 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 60 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 61 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 62 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 63 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 64 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 65 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 66 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 67 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 68 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 69 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 70 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 71 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 72 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 73 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 74 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 75 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 76 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 77 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 78 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 79 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 80 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 81 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 82 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 83 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 84 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 85 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 86 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 87 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 88 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 89 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 90 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 91 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 92 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 93 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 94 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 95 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 96 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 97 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 98 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 99 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 100 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 101 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 102 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 103 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 104 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 105 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 106 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 107 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 108 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 109 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 110 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 111 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 112 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 113 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 114 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 115 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 116 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 117 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 118 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 119 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 120 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 121 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 122 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 123 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 124 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 125 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 126 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 127 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 128 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 129 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 130 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 131 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 132 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 133 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 134 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 135 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 136 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 137 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 138 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 139 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 140 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 141 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 142 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 143 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 144 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 145 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 146 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 147 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 148 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 149 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 150 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 151 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 152 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 153 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 154 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 155 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 156 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 157 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 158 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 159 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 160 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 161 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 162 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 163 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 164 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 165 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 166 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 167 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 168 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 169 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 170 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 171 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 172 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 173 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 174 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 175 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 176 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 177 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 178 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 179 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 180 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 181 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 182 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 183 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 184 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 185 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 186 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 187 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 188 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 189 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 190 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 191 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 192 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 193 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 194 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 195 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 196 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 197 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 198 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 199 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 200 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 201 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 202 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 203 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 204 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 205 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 206 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 207 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 208 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 209 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 210 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 211 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 212 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 213 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 214 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 215 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 216 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 217 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 218 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 219 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 220 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 221 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 222 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 223 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 224 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 225 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 226 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 227 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 228 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 229 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 230 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 231 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 232 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 233 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 234 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 235 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 236 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 237 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 238 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 239 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 240 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 241 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 242 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 243 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 244 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 245 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 246 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 247 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 248 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 249 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 250 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 251 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 252 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 253 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 254 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 255 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 256 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 257 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 258 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 259 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 260 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 261 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 262 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 263 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 264 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 265 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 266 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 267 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 268 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 269 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 270 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 271 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 272 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 273 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 274 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 275 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 276 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 277 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 278 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 279 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 280 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 281 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 282 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 283 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 284 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 285 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 286 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 287 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 288 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 289 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 290 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 291 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 292 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 293 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 294 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 295 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 296 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 297 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 298 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 299 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 300 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 301 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 302 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 303 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 304 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 305 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 306 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 307 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 308 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 309 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 310 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 311 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 312 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 313 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 314 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 315 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 316 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 317 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 318 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 319 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 320 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 321 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 322 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 323 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 324 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 325 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 326 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 327 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 328 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 329 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 330 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 331 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 332 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 333 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 334 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 335 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 336 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 337 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 338 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 339 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 340 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 341 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 342 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 343 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 344 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 345 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 346 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 347 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 348 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 349 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 350 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 351 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 352 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 353 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 354 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 355 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 356 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 357 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 358 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 359 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 360 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 361 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 362 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 363 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 364 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 365 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 366 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 367 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 368 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 369 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 370 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 371 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 372 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 373 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 374 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 375 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 376 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 377 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 378 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 379 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 380 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 381 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 382 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 383 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 384 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 385 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 386 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 387 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 388 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 389 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 390 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 391 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 392 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 393 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 394 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 395 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 396 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 397 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 398 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 399 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 400 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 401 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 402 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 403 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 404 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 405 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 406 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 407 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 408 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 409 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 410 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 411 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 412 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 413 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 414 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 415 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 416 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 417 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 418 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 419 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 420 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 421 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 422 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 423 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 424 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 425 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 426 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 427 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 428 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 429 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 430 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 431 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 432 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 433 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 434 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 435 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 436 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 437 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 438 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 439 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 440 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 441 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 442 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 443 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 444 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 445 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 446 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 447 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 448 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 449 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 450 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 451 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 452 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 453 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 454 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 455 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 456 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 457 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 458 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 459 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 460 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 461 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 462 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 463 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 464 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 465 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 466 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 467 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 468 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 469 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 470 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 471 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 472 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 473 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 474 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 475 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 476 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 477 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 478 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 479 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 480 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 481 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 482 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 483 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 484 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 485 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 486 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 487 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 488 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 489 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 490 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 491 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 492 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 493 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 494 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 495 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 496 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 497 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 498 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 499 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 500 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 501 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 502 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 503 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 504 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 505 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 506 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 507 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 508 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 509 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 510 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 511 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 512 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 513 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 514 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 515 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 516 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 517 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 518 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 519 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 520 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 521 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 522 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 523 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 524 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 525 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 526 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 527 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 528 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 529 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 530 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 531 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 532 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 533 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 534 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 535 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 536 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 537 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 538 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 539 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 540 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 541 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 542 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 543 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 544 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 545 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 546 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 547 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 548 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 549 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 550 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 551 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 552 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 553 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 554 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 555 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 556 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 557 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 558 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 559 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 560 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 561 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 562 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 563 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 564 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 565 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 566 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 567 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 568 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 569 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 570 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 571 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 572 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 573 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 574 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 575 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 576 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 577 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 578 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 579 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 580 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 581 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 582 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 583 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 584 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 585 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 586 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 587 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 588 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
