# Hacker News 热门文章摘要 (2025-12-31)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Show HN：使用Claude Code查询Hacker News、ArXiv等平台上的600 GB索引

**原文标题**: Show HN: Use Claude Code to Query 600 GB Indexes over Hacker News, ArXiv, etc.

**原文链接**: [https://exopriors.com/scry](https://exopriors.com/scry)

本文介绍了一款名为 **ExoPriors** 的工具，它允许用户通过 **Claude Code** 查询一个超过 600 GB 的对齐研究内容语料库（数据来源包括 Hacker News、arXiv 和 LessWrong）。该工具可作为探索这一数据集的“透镜”。

**主要功能：**
*   **查询能力：** 用户可使用向量嵌入进行**语义搜索**，使用 BM25 进行**词法搜索**，并可对超过 6000 万篇文档运行 **SQL 查询**。
*   **集成性：** 该工具专为在 Claude Code 环境中运行设计，需要 API 访问权限。
*   **公开访问：** 提供免费的只读 API 密钥，供用户立即体验，但查询次数有限制。
*   **核心理念：** 工具强调**“可操控”搜索**——允许用户以代数方式混合、减去或平均概念嵌入（例如，查找关于“mesa-optimization”的内容，同时排除特定论文的内容）以优化结果。
*   **升级路径：** 付费版本提供更长的超时时间、用于存储自定义嵌入的私有空间以及更高的使用限制。

文章提供了详细的技术文档，包括 API 端点、架构详情、性能优化建议和示例查询，以帮助用户开始探索该数据集。

---

## 12. 当方形像素不再方

**原文标题**: When square pixels aren't square

**原文链接**: [https://alexwlchan.net/2025/square-pixels/](https://alexwlchan.net/2025/square-pixels/)

本文解释了为何某些视频在网页上无法适配预分配的空间，导致布局偏移。作者发现，使用视频的存储像素分辨率（存储宽高比或SAR）作为CSS属性`aspect-ratio`的值有时并不准确。

关键问题在于像素宽高比（PAR），它描述了单个像素的形状。部分视频具有非正方形像素（例如45:64），这意味着存储的帧在显示时必须被拉伸或压缩。最终观看尺寸为显示宽高比（DAR），计算公式为DAR = SAR × PAR。

例如，一个SAR为1920×1080、PAR为45:64的视频，实际显示尺寸为1350×1080。作者最初的代码仅读取SAR，因此向浏览器提供了错误的尺寸。

为解决此问题，作者更新了其Python脚本，使用`ffprobe`提取视频的宽度/高度及其`sample_aspect_ratio`（PAR）。随后计算准确的DAR，确保在视频加载前为页面预留正确的空间，从而消除布局跳动。结论是：在网页布局中应始终使用显示宽高比，而非存储分辨率。

---

## 13. SigNoz（YC W21，开源可观测性平台）正在招聘多个职位

**原文标题**: SigNoz (YC W21, open source observability platform) Is Hiring across roles

**原文链接**: [https://signoz.io/careers](https://signoz.io/careers)

**摘要：**

这是来自开源可观测性平台SigNoz（Y Combinator W21批次成员）的招聘公告。公司正在积极招聘多个职位。核心信息是邀请候选人探索并申请公司内的开放职位。

提供的关键信息包括：
*   **公司：** SigNoz
*   **产品：** 开源可观测性平台
*   **背景：** Y Combinator 2021年冬季批次（YC W21）成员
*   **行动：** 公司正在招聘。
*   **范围：** 招聘“涵盖多个职位”，表明各部门均有多个空缺职位。

关于启用JavaScript的简短内容说明提示，完整的职位列表、描述和申请门户位于其招聘页面，该页面需要JavaScript才能正常运行。本公告本身是指向该目的地的指引，而非在此列出具体职位或细节。

---

## 14. 从大气中高效捕获二氧化碳的方法

**原文标题**: Efficient method to capture carbon dioxide from the atmosphere

**原文链接**: [https://www.helsinki.fi/en/news/innovations/efficient-method-capture-carbon-dioxide-atmosphere-developed-university-helsinki](https://www.helsinki.fi/en/news/innovations/efficient-method-capture-carbon-dioxide-atmosphere-developed-university-helsinki)

赫尔辛基大学的研究人员开发出一种高效的新方法，可直接从环境空气中捕获二氧化碳。该系统采用一种可循环使用的过滤液，由超强碱（TBN）与苯甲醇的化合物制成。

该方法的主要优势包括高容量（每克化合物可吸收156毫克二氧化碳）和高选择性（不与其他大气气体反应）。关键在于，捕获的二氧化碳可在70°C的较低温度下于30分钟内释放，这比当前通常需要超过900°C的技术节能得多。该化合物还具有耐久性，在使用50次循环后仍能保持75%的容量。

据报道，该系统的组分无毒且生产成本效益高。下一步计划是将液体转化为固态形式（可能负载于二氧化硅或氧化石墨烯等材料上），以便在近工业规模的中试工厂进行测试。

---

## 15. 工业软件的崛起

**原文标题**: The rise of industrial software

**原文链接**: [https://chrisloy.dev/post/2025/12/30/the-rise-of-industrial-software](https://chrisloy.dev/post/2025/12/30/the-rise-of-industrial-software)

本文认为，人工智能辅助编程正在使软件生产工业化，将其从一项需要精湛技艺的手工艺转变为更自动化、可扩展且成本效益更高的过程。这类似于历史上的工业革命，自动化降低了成本并提高了产量。

一个主要后果是“一次性软件”的兴起——这种低成本、易于复制且通常质量低劣的代码在创建时并未考虑长期所有权或维护。作者将其与超加工食品和快时尚相类比，指出经济压力将推动此类“软件垃圾”的过度生产，而需求则会因杰文斯悖论（即效率提升反而增加总体消费）而激增。

尽管传统由人类精心打造的“有机软件”仍将在需要高质量或定制化的特定领域持续存在，但文章认为软件的无形特性使其演进路径有所不同。其发展由**创新**（解决新问题）与**工业化**（规模化与商品化解决方案）的相互作用驱动。人工智能正是一个“蒸汽机时刻”，将显著加速这一循环。

文章提出的核心挑战并非生产，而是管理。随着自动化产出激增，在无人维护的软件生态系统中管理由此产生的技术债务、安全风险和维护负担将成为关键问题，这类似于过去工业革命带来的环境成本。

---

## 16. Django中的毁灭：在每秒60万div时测试LiveView的极限

**原文标题**: Doom in Django: testing the limits of LiveView at 600.000 divs/segundo

**原文链接**: [https://en.andros.dev/blog/7b1b607b/doom-in-django-testing-the-limits-of-liveview-at-600000-divssegundo/](https://en.andros.dev/blog/7b1b607b/doom-in-django-testing-the-limits-of-liveview-at-600000-divssegundo/)

本文详细介绍了对动态网页界面框架Django LiveView进行的一次极限压力测试：通过该框架运行经典游戏《毁灭战士》。作者旨在将游戏视频流直接推送至网页，以此挑战框架的性能极限。

技术实现上，采用ViZDoom环境生成游戏画面，Django将每个100×100像素的画面转换为10,000个独立的HTML `<div>`元素，每个元素代表一个彩色像素点。这些数据通过Django LiveView以每秒60帧的速率传输给已连接用户，实现每秒渲染60万个div元素的处理量。页面布局由CSS控制，广播功能则让所有观看者能实时同步观看游戏进程。

作者总结称这项“荒诞而有趣的实验”取得了成功，证明了Django LiveView能够处理极高负载的实时数据渲染。文末附上了GitHub源码链接并注明许可协议，同时发出了支持邀请。

---

## 17. Nvidia GB10内存子系统，从CPU视角解析

**原文标题**: Nvidia GB10's Memory Subsystem, from the CPU Side

**原文链接**: [https://chipsandcheese.com/p/inside-nvidia-gb10s-memory-subsystem](https://chipsandcheese.com/p/inside-nvidia-gb10s-memory-subsystem)

本文分析了英伟达GB10芯片的内存子系统，重点关注CPU部分。GB10是英伟达与联发科的合作成果，搭载了强大的CPU（包含10个Cortex X925核心和10个Cortex A725核心）以及大规模集成GPU。

CPU核心分为两个集群，每个集群包含五种核心类型各五个。集群采用非对称设计：一个集群配备8MB L3缓存，另一个则配备16MB。X925核心拥有更大的L2缓存（2MB）和更优的L3延迟（约14纳秒），而A725核心的L2缓存为512KB，L3延迟超过21纳秒。位于L3缓存之上的16MB系统级缓存（SLC）有助于CPU与GPU之间的数据共享。

GB10的关键优势在于其出色的DRAM延迟：LPDDR5X内存延迟仅为113纳秒，优于AMD Strix Halo等竞争对手。但其L3带宽低于Strix Halo。两个集群的外部带宽也呈非对称分布，其中一个集群带宽超过100GB/s。

分析指出，高带宽需求（尤其是来自GPU或X925核心时）会显著增加其他任务的延迟。核心间延迟也高于Strix Halo，跨集群通信时尤为明显。

总之，GB10内存子系统以核心密度优先，并集成强大GPU，在实现卓越DRAM延迟的同时，在缓存性能、高负载延迟及核心间通信方面较AMD设计方案存在取舍。

---

## 18. Meta制定“应对手册”以抵御打击诈骗者的压力

**原文标题**: Meta created 'playbook' to fend off pressure to crack down on scammers

**原文链接**: [https://www.reuters.com/investigations/meta-created-playbook-fend-off-pressure-crack-down-scammers-documents-show-2025-12-31/](https://www.reuters.com/investigations/meta-created-playbook-fend-off-pressure-crack-down-scammers-documents-show-2025-12-31/)

根据路透社的调查，以下是文章要点的总结：

内部文件显示，Meta制定了一套正式的“应对手册”，用于系统性地应对外部要求其平台（尤其是Facebook）对金融诈骗采取更强力措施的压力。该策略旨在保护公司的广告收入。

这份至少从2020年活跃至2024年的手册指示员工在面对银行、政府机构或媒体报道的诈骗投诉时，采用特定话术。核心策略包括：**延迟回应**以拉长解决时间；**淡化平台责任**，声称诈骗在互联网上无处不在；**转移责任**，指责用户轻信或银行安全措施不足；以及**避免书面承诺**采取具体行动。

调查发现，这些通常涉及投资和情感诈骗的骗局给受害者造成了巨大经济损失，一份文件指出，单个诈骗网络每月可获利1300万美元。尽管内部知晓这些大规模诈骗活动，Meta的应对手册旨在以最小行动安抚批评者，例如删除个别账户而非摧毁整个诈骗网络。其目标是在不实施成本更高、更全面的执法措施（可能影响广告驱动的用户参与度）的前提下，管理声誉风险。

Meta在回应路透社时表示，此后已采取更强力措施，包括每年投资20亿美元用于安全防护，并与执法部门加强合作。公司称其应对方式较文件所涉时期已有显著改进。

---

## 19. 厨房优化

**原文标题**: Kitchen optimizations

**原文链接**: [https://www.natemeyvis.com/kitchen-optimizations/](https://www.natemeyvis.com/kitchen-optimizations/)

本文认为，厨房中的大量时间节省不仅来自膳食规划，更在于优化日常流程与习惯。作者指出，这些“厨房优化”常被忽视，因为其单次效益微小、高度个性化，且看似琐碎。

关键策略包括：

1.  **高效排序任务**：合理安排家务顺序以减少不必要的移动。例如洗碗时，先清空沥水架和台面，避免后续反复挪动物品，从而减少“可避免的工作”。
2.  **优化常见操作**：分析并改进高频动作。作者举例同时用锅和水壶烧水以加快煮沸速度，这一微小改变每年可节省数小时。
3.  **管理精力投入**：在精力不足时，有意识地以稍快节奏（正常速度的1.25-1.5倍）工作反而更省时，类似于汽车的最佳燃油效率速度。

核心观点是：通过关注这些操作效率，人们可以在不牺牲食物选择或质量的前提下节省大量时间，这是一种宝贵的“免费”时间回收方式。作者最后提醒，永远要将安全置于微小的时间收益之上。

---

## 20. 回到未来：Squeak的故事，一种用自身编写的实用Smalltalk语言 [pdf] (1997)

**原文标题**: Back to the future: the story of Squeak, a practical Smalltalk written in itself [pdf] (1997)

**原文链接**: [http://www.vpri.org/pdf/tr1997001_backto.pdf](http://www.vpri.org/pdf/tr1997001_backto.pdf)

**《回到未来：Squeak的故事——一个用自身编写的实用Smalltalk》（1997）摘要**

这篇1997年的论文详述了**Squeak**的创建过程，这是一个高度可移植、开源的Smalltalk-80系统实现。该项目由艾伦·凯和苹果公司的一个小团队领导，其动机是希望保存并发展源自原始Smalltalk系统的、充满活力且媒体丰富的个人计算愿景。

作者的核心目标是构建一个**“用自身编写”**的系统——一种元循环实现，其中虚拟机（VM）、图形和声音子系统全部用Smalltalk编写。这是通过首先用Smalltalk的一个子集创建一个最小化、可移植的“核心”VM来实现的，然后将其翻译成C语言以进行初始引导。一旦运行，该VM就可以执行其余的Smalltalk代码，包括编译器和VM自身的模拟，从而能够轻松调试和修改整个系统。

一个主要重点是**极端可移植性**。Squeak被设计为在任何拥有C编译器和最小库的平台上都能完全一致地运行。其紧凑、比特位完全一致的映像文件包含了系统的完整状态（代码、对象、用户界面），使其能够在Mac、Windows和Unix系统上无缝运行。

论文强调了Squeak作为**媒体创作环境**的能力，集成了位图图形、声音合成和网络功能。它将Squeak定位为不仅是一种编程语言，更是一个完整的、可塑的软件构建套件，忠实于Smalltalk的原始精神。该项目成功创建了一个实用、自持的系统，可以自由分发和实验，确保了个人计算和动态语言的思想能够持续为未来的创新所用。

---

## 21. 人工智能实验室如何解决能源问题

**原文标题**: How AI labs are solving the power problem

**原文链接**: [https://newsletter.semianalysis.com/p/how-ai-labs-are-solving-the-power](https://newsletter.semianalysis.com/p/how-ai-labs-are-solving-the-power)

本文详述了人工智能公司如何通过自建现场发电厂来绕过超负荷的电网，这一策略被称为"自带发电"。

核心问题在于：人工智能数据中心电力需求激增，但电网升级缓慢，导致新接入申请积压多年。由于人工智能集群能创造数十亿美元收入，延迟接入是不可接受的。像xAI这样的公司率先采用车载燃气轮机和发动机解决方案，在数月内就让一个10万GPU集群投入运行。

现场燃气发电市场目前正以三位数速度增长。主要参与者包括通用电气维尔纳、西门子等传统供应商，以及斗山能源、瓦锡兰乃至Boom超音速等新进企业。文章分析了三大技术路径：快速响应的航空衍生涡轮机、响应较慢的工业涡轮机，以及往复式发动机（包含高速和中速机型），每种技术在成本、交付周期和效率方面各有取舍。

虽然现场发电成本高于电网供电且面临审批障碍，但其快速投产能力具有决定性优势。该策略让数据中心能立即依靠本地发电运行，待电网服务到位后，再将设备转为备用电源。

---

## 22. 为F-Droid加速心跳

**原文标题**: A faster heart for F-Droid

**原文链接**: [https://f-droid.org/2025/12/30/a-faster-heart-for-f-droid.html](https://f-droid.org/2025/12/30/a-faster-heart-for-f-droid.html)

F-Droid已升级其核心服务器硬件，这是负责为主仓库构建和发布应用的关键基础设施。此次更换由社区捐款支持，替代了已使用12年、成为性能瓶颈的旧系统。

由于全球供应链问题，采购过程曾遭遇延迟，但项目始终优先确保硬件可靠耐用。值得注意的是，新服务器通过与一位长期可信贡献者的特殊协议托管，既保障物理安全，又符合该项目追求透明的价值观。

性能提升已显著显现。构建和发布周期大幅加速：从年初每3-4天更新一次，到12月可能实现每日两次更新。更快的节奏缩短了应用更新与用户可用之间的时间差，惠及整个生态系统。

此次升级最终证明，社区捐款如何直接转化为更稳健、高效、独立的基础设施，既增强了F-Droid的可靠性，也巩固了其对自由软件的承诺。

---

## 23. 《星露谷物语》开发者向开源C#框架MonoGame捐赠了12.5万美元。

**原文标题**: Stardew Valley developer made a $125k donation to the FOSS C# framework MonoGame

**原文链接**: [https://monogame.net/blog/2025-12-30-385-new-sponsor-announcement/](https://monogame.net/blog/2025-12-30-385-new-sponsor-announcement/)

文章宣布，《星露谷物语》的开发者埃里克·巴罗内（又称ConcernedApe）向开源C#游戏开发框架背后的组织MonoGame基金会捐赠了12.5万美元。

公告强调，这笔捐款将为该项目的可持续发展提供重要支持。文章还列举了社区支持MonoGame的多种方式，包括通过GitHub、PayPal和Patreon进行财务赞助、购买品牌周边产品、通过拉取请求贡献代码以及参与社区支持。

此外，文章还推广了该项目的悬赏计划，开发者可通过修复漏洞或实现新功能获得报酬，旨在加速项目开发。

总而言之，核心新闻是这位框架的成功典范人物进行了大额捐赠，同时文章更广泛地呼吁社区参与和资金支持，以确保MonoGame的持续发展。

---

## 24. 法国计划明年实施类似澳大利亚的儿童社交媒体禁令。

**原文标题**: France targets Australia-style social media ban for children next year

**原文链接**: [https://www.theguardian.com/world/2025/dec/31/france-plans-social-media-ban-for-under-15s-from-september-2026](https://www.theguardian.com/world/2025/dec/31/france-plans-social-media-ban-for-under-15s-from-september-2026)

法国计划对15岁以下儿童实施社交媒体禁令，旨在从2026学年开始生效。此前澳大利亚已率先在全球禁止16岁以下青少年使用Facebook、Snapchat、TikTok和YouTube等平台。

由总统马克龙推动的法案草案将于明年初进入法律审查和议会辩论阶段。草案以接触有害内容、网络霸凌和睡眠障碍等风险为由，强调保护青少年的必要性。拟议立法还包括禁止高中校园内使用手机。

马克龙公开倡导该措施，认为过度屏幕时间损害学业成绩和心理健康。随着其总统任期进入最后一年，此举是其更广泛政治议程的一部分。

丹麦、挪威和马来西亚等国也在考虑类似禁令。法国提案需符合欧盟现行数字法规。此前议会调查将TikTok等平台称为毒害青少年的"慢性毒药"，建议实施年龄禁令并对年长青少年实行数字宵禁。

---

## 25. 39C3 Grafana仪表板

**原文标题**: 39C3 Grafana Dashboard

**原文链接**: [https://dashboard.congress.ccc.de/public-dashboards/e6cf86b287304662b4d1b8eb31b5ab50](https://dashboard.congress.ccc.de/public-dashboards/e6cf86b287304662b4d1b8eb31b5ab50)

我无法访问文章链接。您提供的网址指向一个公共Grafana仪表板，这是一种实时数据可视化工具。由于我的浏览功能目前被禁用，因此无法获取或解读该特定网页上显示的实时数据和指标。

要为您总结内容，我需要查看实际面板标题、图表数据（例如服务器负载、网络流量、访客数量）以及任何附注说明。由于这是为活动（可能是第39届混沌通信大会，即39C3）设置的动态仪表板，关键信息通常涉及活动基础设施或参与人数的实时统计数据。

请注意，此类仪表板的摘要仅在查看时有效，因为数据会持续更新。

---

## 26. 机械战警——违法行动。霍夫曼破解DataEast街机版机械战警。

**原文标题**: RoboCop – Breaking the Law. H0ffman Cracks RoboCop Arcade from DataEast

**原文链接**: [https://hoffman.home.blog/2025/12/26/robocop-breaking-the-law/](https://hoffman.home.blog/2025/12/26/robocop-breaking-the-law/)

本文详细介绍了对1988年Data East公司街机游戏《机械战警》进行逆向工程并绕过其版权保护的过程。该保护机制依赖一颗辅助的HuC6280 CPU（6502的变体）执行核心游戏逻辑，使得盗版基板难以运行。

作者首先修补了主68000 CPU与HuC6280之间的初始握手和数据传输例程。但随后发现该辅助CPU承担着一项关键功能：敌人子弹与玩家的碰撞检测。若缺少此功能，子弹将直接穿透玩家角色。

为解决此问题，作者借助MAME调试器分析HuC6280代码，理解了其数据结构和AABB（轴对齐包围盒）碰撞算法。随后用68000汇编语言完整重写了该逻辑，并将新编例程注入主游戏ROM中。最终通过补丁使游戏转而调用新代码，不再与已停用的HuC6280进行通信。

最终成果是一个完全可运行且不再需要专用辅助CPU的游戏版本。作者以IPS补丁形式发布了这项成果，希望能用于修复因HuC6280芯片故障而无法运行的原始街机基板。

---

## 27. Tixl：开源实时动态图形

**原文标题**: Tixl: Open-source realtime motion graphics

**原文链接**: [https://github.com/tixl3d/tixl](https://github.com/tixl3d/tixl)

**TiXL** 是一款开源实时动态图形工具包，旨在融合实时渲染、程序化内容生成与关键帧动画。它面向多元创意用户，既能让艺术家构建音频响应式视觉作品，也能助力技术美术师开发高级着色器或集成 MIDI、OSC、Spout 等硬件输入。

该项目的核心目标是在强大灵活的功能集与直观美观的用户界面之间取得平衡。当前稳定版本（TiXL 4）支持专业工作流程，包括色彩校正、示波器、色调映射以及独立应用程序导出功能。

作为一个社区驱动的项目，TiXL 致力于汇聚艺术家、开发者和创作者，共同塑造其未来。入门资源涵盖安装指南、文档、教程视频，以及专为交流支持设立的 Discord 服务器。

---

## 28. 动画人工智能

**原文标题**: Animated AI

**原文链接**: [https://animatedai.github.io/](https://animatedai.github.io/)

本文介绍了**Animated AI**，一位专注于制作神经网络教育动画与视频的创作者，其内容主要通过Patreon和YouTube平台分享。

内容重点通过可视化方式解析**卷积神经网络（CNN）的运算原理**，详细阐述了基础卷积算法及其关键参数：

*   **填充：** 解释“有效”（无填充）与“相同”（有填充）两种控制输出尺寸的方法。
*   **步长：** 展示滤波器移动步长（步长1与步长2）如何影响输出尺寸与下采样效果。
*   **分组：** 涵盖分组卷积、深度卷积及深度可分离卷积，这些是降低计算成本的高效技术。

第二个主要主题是**像素重排**操作，一种提升图像分辨率的方法。文章演示了不同块大小（2x2和3x3）下的重排与反重排过程。

总而言之，本文作为动画教程的可视化指南与索引，涵盖了CNN的核心组成部分——从基础卷积机制到高效高级架构及图像放大技术。所有内容均采用MIT许可证授权。

---

## 29. 2025年是Windows 11的灾难之年。

**原文标题**: 2025 was a disaster for Windows 11

**原文链接**: [https://www.windowscentral.com/microsoft/windows-11/2025-has-been-an-awful-year-for-windows-11-with-infuriating-bugs-and-constant-unwanted-features](https://www.windowscentral.com/microsoft/windows-11/2025-has-been-an-awful-year-for-windows-11-with-infuriating-bugs-and-constant-unwanted-features)

本文认为，2025年是Windows 11灾难性的一年，用户满意度和平台稳定性显著下降。核心批评集中在微软过度聚焦人工智能，导致像Copilot这样仓促上马的半成品功能被强行集成到各处，往往牺牲了核心系统质量与用户隐私。

“持续创新”更新模式加剧了这一问题——该模式通过每月强制安全更新推送新功能。再加上难以预测的“受控功能推送”系统，形成了混乱的用户体验：没有两台PC的状态完全相同，使得操作系统显得漏洞百出、极不稳定。

作者指出软件质量明显下滑，频繁的更新常伴随新漏洞，并批评了长期存在的界面不统一问题，例如优化不佳的Outlook应用。这种管理失当为竞争对手打开了机会之门：谷歌即将推出的安卓PC威胁低端市场，Valve的SteamOS瞄准游戏玩家，而传闻中苹果将推出的平价MacBook可能吸引更多用户转投阵营。

尽管存在这些问题，文章也承认微软采取了一些积极措施，包括界面优化（如更好的深色模式）、改进的新开始菜单以及增强的系统恢复工具。但整体结论是：微软2025年的战略重心损害了Windows 11的声誉，使该平台面临自Windows 8时代以来未曾见过的竞争威胁。

---

## 30. 克劳德使用我引擎的API编写了一个功能齐全的NES模拟器。

**原文标题**: Claude wrote a functional NES emulator using my engine's API

**原文链接**: [https://carimbo.games/games/nintendo/](https://carimbo.games/games/nintendo/)

Claude人工智能助手成功开发了一款可运行的任天堂娱乐系统（NES）模拟器。该模拟器能运行经典游戏《大金刚》，其构建基于用户自有游戏引擎Carimbo的API。

模拟器支持网页浏览器运行，操作控制映射为方向键移动，Z键和X键作为动作按键。项目源代码已在GitHub公开供查阅。

核心成果彰显了Claude卓越的编程能力，特别是其理解并运用自定义游戏引擎API，实现复杂底层系统模拟的技术实力。

---

