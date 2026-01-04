# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-04.md)

*最后自动更新时间: 2026-01-04 20:38:02*
## 1. 谷歌十四年经验谈

**原文标题**: Lessons from 14 Years at Google

**原文链接**: [https://addyosmani.com/blog/21-lessons/](https://addyosmani.com/blog/21-lessons/)

本文浓缩了作者在谷歌14年的经验，提炼出软件工程师蓬勃发展的关键心得：成功更多取决于如何应对人、政治和流程，而非纯粹的技术能力。

核心建议聚焦于以用户为中心和协作思维：解决用户的实际问题，而非技术难题；优先寻求集体共识的正确方案，而非个人正确。执行力至关重要——要偏向行动和交付，因为前进的势头能带来清晰度。工程师应重视代码的清晰性而非巧妙性，并认识到必须通过沟通让工作成果可见，因为代码本身不会为创作者发声。

作者警告要避免不必要的复杂性，建议默认选择“乏味”的技术，并将每一行代码视为未来的负债。在大型系统中，保持兼容性与开发新功能同等重要。高效的工程师专注于可控范围，建立并利用专业网络，并理解资深角色意味着协调团队、通过写作迫使思路清晰，以及让衔接性工作被看见。

最终，可持续的职业生涯建立在谦逊、好奇心和将学习视为复利投资的基础上——时刻牢记，工作始终关乎你为之服务和并肩协作的人。

---

## 2. 街头霸王II：世界战士（2021）

**原文标题**: Street Fighter II, the World Warrier (2021)

**原文链接**: [https://fabiensanglard.net/sf2_warrier/](https://fabiensanglard.net/sf2_warrier/)

本文讲述了《街头霸王II》街机版在最后关头发现的一处排版错误：游戏图形ROM中将"World Warrior"误拼为"World Warrier"。由于美术资源已定稿并烧录至硬件，主设计师安田朗无法直接将字母'e'改为'o'。

他利用现有游戏资源想出了一个巧妙的解决方案：先借用"World"中的"or"替换"ier"，但借来的'r'形似'l'，导致变成了"Warrlor"。为修正此问题，他使用古烈角色精灵中一个几乎透明的单像素图块作为"铅笔"，通过徽标配色将该图块覆盖在'l'的上方，截去其顶部，使其变成了带点的'i'。

这一解决方案凸显了CPS-1硬件的技术限制——图形图块不可修改，迫使程序员创造性地叠加精灵图层并操控调色板。该拼写错误在后续ROM版本中被永久修正，不过后来的版本直接更改了副标题。

---

## 3. 线性地址空间：无论多快都不安全

**原文标题**: Linear Address Spaces: Unsafe at any speed

**原文链接**: [https://queue.acm.org/detail.cfm?id=3534854](https://queue.acm.org/detail.cfm?id=3534854)

**《线性地址空间：任何速度下都不安全》摘要**

本文认为，为每个进程提供单一线性虚拟地址空间这一基础计算机安全模型存在根本性缺陷，是现代软件漏洞的主要根源。这一沿用数十年的设计初衷是简化内存管理，如今却造成了普遍的安全风险。

核心问题在于，线性地址空间在不同类型的数据和代码（如应用程序代码、库、堆、栈）之间缺乏**严格的逻辑边界**。这使得单个内存破坏漏洞（如缓冲区溢出）能够破坏进程中不相关的部分，从而导致控制流劫持、数据窃取或权限提升。攻击者正是利用了这种"空间安全性"的破坏。

作者认为，像地址空间布局随机化（ASLR）和栈保护符这样的渐进式缓解措施仅仅是"创可贴"，它们增加了攻击难度，但并未修复底层的架构弱点。这些防御措施增加了复杂性和性能开销，同时仍然容易受到信息泄露和顽固攻击者的威胁。

文章提出的解决方案是在硬件层面彻底转向**隔离化**或**基于权能的寻址**。进程不应使用一个连续的空间，而应为不同的软件组件（例如解析器、加密库）使用多个隔离的"地址域"或"域"。内存指针将携带明确的权限，防止一个隔离区中的漏洞影响其他部分。

总之，文章断言线性地址空间是一种过时的安全隐患。真正的安全需要重新设计硬件和软件，以**通过设计实现空间内存安全**，超越打补丁的模式，转向一种内存隔离内嵌且持续存在的模型。

---

## 4. 独坐咖啡馆的难耐之欢

**原文标题**: The Unbearable Joy of Sitting Alone in a Café

**原文链接**: [https://candost.blog/the-unbearable-joy-of-sitting-alone-in-a-cafe/](https://candost.blog/the-unbearable-joy-of-sitting-alone-in-a-cafe/)

这篇反思性散文探讨了在咖啡馆独坐、远离数字干扰的深刻体验。作者在一次居家度假期间，开始将手机留在家中，发现在长时间遛狗和咖啡馆小坐时，这种被迫的独处起初引发了焦虑，但随后带来了一种自由感。

在咖啡馆里，他观察到，在没有电子设备的情况下，咖啡从功能性的咖啡因摄取转变为一种感官享受。他未受干扰的思绪开始漫游，引导他进行自我反思与接纳。他也开始留意周围的人和事——陌生人眼中的忧虑、员工的工作节奏——这些在匆忙生活中常被忽略的细节。

这种实践揭示了一个具有挑战性的事实：一个人无法控制他人的看法，这带来了孤独感。然而，作者在发现另一个同样独自静坐且心满意足的人时，找到了慰藉与连接，意识到自己是一个安静社群的一部分。

他总结道，这种“难以承受的喜悦”是一种有力而孤独的行为，许多人回避它，却又暗自思量。这种体验最终不是通过更多的干扰来增强，而是通过用笔和纸缓慢、切实地书写，这迫使人们保持专注的节奏，并为沉思提供了一个自然的终点。

---

## 5. 网页开发又变得有趣了

**原文标题**: Web development is fun again

**原文链接**: [https://ma.ttias.be/web-development-is-fun-again/](https://ma.ttias.be/web-development-is-fun-again/)

作者回顾了网页开发如何从更简单、更易管理的时代（如PHP 4时期）演变为如今前端和后端都充斥着令人应接不暇的复杂性的领域。专业化工具和知识的激增，使得独立开发者几乎不可能有效管理整个项目。

然而，文章指出，AI编程助手的出现极大地改变了这一局面。这些工具提供了应对现代复杂性所需的助力，让作者重新找回了多年未有的生产力和信心。通过借鉴过往经验来指导和评估AI的输出，作者现在能够高效地复现高标准和流程，使得从构想到实现的旅程再次成为可能。

最终，AI减轻了样板代码和工具链带来的认知负担，为创造力、实验以及构建软件的核心乐趣腾出了思维空间。结论是：AI拉平了竞争环境，让网页开发再次成为独立开发者既有趣又易于涉足的领域。

---

## 6. Show HN：浏览器工作原理互动指南

**原文标题**: Show HN: An interactive guide to how browsers work

**原文链接**: [https://howbrowserswork.com/](https://howbrowserswork.com/)

这份互动指南解释了网络浏览器的工作原理，将整个过程分解为关键步骤。它强调通过实践示例建立思维模型。

旅程从地址栏开始：浏览器将输入的文本转换为完整URL。这些URL随后被转化为HTTP请求，其中包含如`Host`之类的头部信息以标识目标服务器。

在发送请求前，浏览器必须通过DNS系统查找服务器的IP地址。随后通过三次握手建立可靠的TCP连接，确保数据有序传输。

连接建立后，HTTP请求被发送并接收服务器响应。浏览器解析HTML响应以构建文档对象模型（DOM）树——这是连接HTML、CSS与JavaScript的页面关键内存表示形式。

最后，渲染管线接管流程：**布局**计算元素尺寸与位置，**绘制**填充像素，**合成**将结果在GPU上层叠处理。指南指出，对DOM的修改可能触发渲染管线的不同环节，从而影响性能。

通过省略深层次技术细节，本文清晰阐述了浏览器从URL到页面渲染的核心功能基础框架。

---

## 7. 野牛在消失200年后重返伊利诺伊州凯恩县。

**原文标题**: Bison return to Illinois' Kane County after 200 years

**原文链接**: [https://phys.org/news/2025-12-bison-illinois-kane-county-years.html](https://phys.org/news/2025-12-bison-illinois-kane-county-years.html)

**《野牛在消失200年后重返伊利诺伊州凯恩县》摘要**

一小群野牛被重新引入伊利诺伊州凯恩县，标志着它们在消失约200年后重返该地区。这些动物被放归至布利斯伍德森林保护区内的一处受保护栖息地。

该倡议由凯恩县森林保护区与大自然保护协会合作领导，主要目标是生态恢复和文化重连。野牛被视为"关键物种"，这意味着它们的啃食、打滚和迁徙模式有助于创建和维护健康的草原生态系统，使多种本土植物和其他野生动物受益。

该项目也具有重要的文化意义，尤其对于当地美洲原住民部落而言，野牛承载着深厚的历史和精神价值。此次回归被视为朝着修复景观和致敬该地区自然遗产迈出的一步。

这群野牛将作为一项受管理的保护性放牧计划的一部分受到密切监测。它们对草原健康的影响将被研究，该项目也旨在成为公众教育资源，帮助人们了解野牛在北美历史和生态中的作用。

---

## 8. 使用Hinge作为命令与控制服务器

**原文标题**: Using Hinge as a Command and Control Server

**原文链接**: [https://mattwie.se/hinge-command-control-c2](https://mattwie.se/hinge-command-control-c2)

本文详细阐述了一种概念验证方法，利用Hinge约会应用作为隐蔽的命令与控制（C2）服务器。作者演示了如何通过隐写术将二进制载荷（例如“Hello World”程序）编码到图像中，并将其上传为个人资料照片。由于Hinge照片可通过未公开的API公开访问，攻击者能够获取图像并解码其中隐藏的载荷。

为截获访问API所需的认证头部信息（如用户ID和承载令牌），作者解释了如何绕过Hinge未实施证书固定的限制。该方法涉及修改Android APK以接受用户安装的证书，从而在非Root设备上实现中间人（MITM）代理设置。借助这些头部信息，攻击者可通过编程方式查询Hinge的API，从CDN获取目标个人资料的图像数据。

该技术揭示了一个潜在的滥用场景：Hinge的基础设施可能被滥用于托管和分发伪装成普通用户内容的恶意载荷。作者指出，这仅是一个简化示例，更复杂的隐写术（例如使用视频）可提升数据容量。主要安全问题源于个人资料内容的公开性，以及应用未实施证书固定机制，导致其易受拦截和篡改攻击。

---

## 9. 停止转发错误，开始设计错误。

**原文标题**: Stop Forwarding Errors, Start Designing Them

**原文链接**: [https://fast.github.io/blog/stop-forwarding-errors-start-designing-them/](https://fast.github.io/blog/stop-forwarding-errors-start-designing-them/)

本文批判了常见的Rust错误处理实践，认为它们往往沦为“错误转发”——即传播缺乏有效上下文的错误——而非经过深思熟虑的设计。文章指出了流行方法的缺陷：`std::error::Error`对复杂成因限制过严；回溯信息在异步代码中成本高昂且无帮助；`thiserror`按错误来源而非可操作的响应进行分类；而`anyhow`的便利性阻碍了添加上下文关键信息。

核心论点是：错误必须为两类不同受众设计：
1.  **机器**（用于自动恢复）：需要扁平化、结构化的错误类型，包含清晰的“种类”（如`NotFound`、`RateLimited`）和明确的重试状态，使得无需遍历复杂链即可直接做出程序化决策。
2.  **人类**（用于调试）：需要在每个层级捕获丰富、低成本的上下文信息（如用户ID、操作名称），以便在事故发生时回答“发生了什么及原因何在”。

文章主张采用混合方案：使用单一扁平的错误类型为机器提供可操作的分类，同时结合上下文追踪系统（如`exn`库），利用类型系统在模块边界强制添加上下文。这确保错误既能用于恢复操作，又能为调试提供信息，从而将其从单纯的失败指示转变为经过设计的沟通载体。

---

## 10. 神经网络：从零到英雄

**原文标题**: Neural Networks: Zero to Hero

**原文链接**: [https://karpathy.ai/zero-to-hero.html](https://karpathy.ai/zero-to-hero.html)

《神经网络：从零到英雄》是由安德烈·卡帕西设计的综合性视频课程，旨在教授从零开始构建神经网络的基础知识。该课程以语言模型为主要学习载体，因为这些概念高度可迁移至计算机视觉等其他领域。

课程从“微梯度”中的反向传播基础开始，逐步构建日益复杂的模型。“制造更多”系列始于简单双元模型，随后发展为多层感知机（MLP），引入训练、评估和过拟合等核心机器学习概念。后续视频深入探讨激活/梯度分析等内部机制，引入用于训练稳定性的批量归一化，并通过详细的手动反向传播演示帮助建立直观理解。

课程随后进阶至构建WaveNet风格的卷积架构，最终完成从零搭建完整的生成式预训练变换器（GPT），并将其与ChatGPT等模型联系起来。课程还专门开设讲座，讲解从零构建关键的GPT分词器，阐释其作用及带来的挑战。

总体而言，本系列课程提供了一条从核心神经网络原理到现代深度学习架构的实践性代码优先学习路径，特别强调动手实现与深度理解。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 2 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 3 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 4 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 5 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 6 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 7 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 8 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 9 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 10 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 11 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 12 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 13 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 14 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 15 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 16 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 17 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 18 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 19 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 20 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 21 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 22 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 23 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 24 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 25 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 26 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 27 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 28 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 29 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 30 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 31 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 32 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 33 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 34 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 35 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 36 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 37 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 38 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 39 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 40 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 41 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 42 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 43 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 44 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 45 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 46 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 47 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 48 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 49 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 50 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 51 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 52 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 53 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 54 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 55 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 56 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 57 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 58 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 59 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 60 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 61 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 62 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 63 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 64 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 65 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 66 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 67 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 68 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 69 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 70 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 71 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 72 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 73 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 74 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 75 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 76 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 77 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 78 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 79 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 80 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 81 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 82 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 83 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 84 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 85 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 86 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 87 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 88 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 89 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 90 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 91 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 92 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 93 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 94 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 95 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 96 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 97 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 98 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 99 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 100 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 101 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 102 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 103 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 104 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 105 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 106 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 107 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 108 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 109 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 110 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 111 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 112 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 113 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 114 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 115 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 116 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 117 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 118 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 119 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 120 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 121 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 122 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 123 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 124 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 125 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 126 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 127 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 128 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 129 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 130 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 131 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 132 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 133 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 134 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 135 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 136 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 137 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 138 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 139 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 140 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 141 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 142 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 143 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 144 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 145 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 146 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 147 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 148 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 149 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 150 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 151 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 152 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 153 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 154 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 155 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 156 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 157 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 158 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 159 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 160 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 161 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 162 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 163 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 164 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 165 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 166 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 167 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 168 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 169 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 170 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 171 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 172 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 173 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 174 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 175 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 176 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 177 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 178 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 179 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 180 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 181 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 182 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 183 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 184 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 185 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 186 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 187 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 188 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 189 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 190 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 191 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 192 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 193 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 194 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 195 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 196 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 197 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 198 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 199 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 200 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 201 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 202 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 203 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 204 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 205 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 206 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 207 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 208 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 209 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 210 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 211 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 212 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 213 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 214 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 215 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 216 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 217 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 218 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 219 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 220 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 221 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 222 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 223 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 224 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 225 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 226 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 227 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 228 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 229 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 230 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 231 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 232 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 233 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 234 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 235 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 236 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 237 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 238 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 239 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 240 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 241 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 242 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 243 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 244 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 245 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 246 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 247 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 248 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 249 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 250 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 251 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 252 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 253 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 254 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 255 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 256 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 257 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 258 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 259 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 260 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 261 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 262 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 263 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 264 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 265 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 266 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 267 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 268 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 269 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 270 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 271 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 272 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 273 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 274 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 275 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 276 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 277 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 278 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 279 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 280 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 281 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 282 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 283 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 284 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 285 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 286 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 287 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 288 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
