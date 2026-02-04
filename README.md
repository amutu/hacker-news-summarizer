# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-04.md)

*最后自动更新时间: 2026-02-04 20:35:48*
## 1. Voxtral转录2

**原文标题**: Voxtral Transcribe 2

**原文链接**: [https://mistral.ai/news/voxtral-transcribe-2](https://mistral.ai/news/voxtral-transcribe-2)

Mistral发布了**Voxtral Transcribe 2**系列语音转文本模型，该系列包含两款主要产品：

1.  **Voxtral Mini Transcribe V2：** 一款面向高精度与成本效益的批量转录模型。它具备先进的转录和说话人分离（识别说话人及其发言时间）功能，支持13种语言，并包含上下文偏向和词级时间戳等企业级特性。定价为每分钟0.003美元。

2.  **Voxtral Realtime：** 专为实时应用打造的超低延迟模型。其创新的流式架构可实现低至200毫秒以内的可配置延迟，适用于实时语音助手和实时字幕生成。该模型以Apache 2.0许可协议开源发布，同时提供API服务，价格为每分钟0.006美元。

两款模型均支持13种语言，定位为以远低于竞争对手的成本提供顶尖的准确率。重点应用场景包括会议智能分析、语音助手、客服中心自动化及媒体字幕生成。

为了让用户体验该技术，Mistral还在Mistral Studio平台推出了**音频演示区**，用户可上传音频文件，体验带说话人分离和时间戳的转录功能。

---

## 2. 打哈欠对你大脑内的液体有着意想不到的影响。

**原文标题**: Yawning has an unexpected influence on the fluid inside your brain

**原文链接**: [https://www.newscientist.com/article/2513692-yawning-has-an-unexpected-influence-on-the-fluid-inside-your-brain/](https://www.newscientist.com/article/2513692-yawning-has-an-unexpected-influence-on-the-fluid-inside-your-brain/)

一项使用核磁共振扫描的新研究揭示，打哈欠在大脑内部液体流动重组中扮演着令人惊讶的角色。研究人员发现，打哈欠时脑脊液和静脉血会共同从大脑流向脊柱，这与深呼吸时这些液体通常反向流动的情况相反。

虽然具体机制尚未完全明确，但研究人员推测颈部、舌头和喉咙肌肉的协调动作可能将液体向外牵引。这一过程还会创造空间，使进入大脑的动脉血流量相比深呼吸时增加34%。

这项通过视频诱发传染性哈欠的研究还发现，每个人的舌头运动似乎都有独特的“哈欠特征”。尽管确切益处尚不明确，科学家推测这种液体流动可能有助于大脑温度调节、废物清除或暂时缓解睡眠压力。该研究为理解这一进化古老且仍具神秘性的行为增添了新的生理学维度。

---

## 3. 杰夫·贝索斯如何颠覆《华盛顿邮报》

**原文标题**: How Jeff Bezos Brought Down the Washington Post

**原文链接**: [https://www.newyorker.com/news/annals-of-communications/how-jeff-bezos-brought-down-the-washington-post](https://www.newyorker.com/news/annals-of-communications/how-jeff-bezos-brought-down-the-washington-post)

本文详述了杰夫·贝索斯对《华盛顿邮报》的所有权如何使其在经历充满希望的开端后陷入严重衰落。起初，贝索斯提供了财务稳定并推动了增长，尤其在特朗普执政期间。然而，该报开始每年亏损数千万美元，导致2023年和2025年的大幅裁员，新闻编辑部减少了300多名员工，体育和都市新闻等重要部门也被解散。

身为《邮报》前编辑的作者认为，贝索斯糟糕的商业决策以及转向迎合特朗普政府的立场是衰落的核心原因。关键失误包括贝索斯下令撤掉对卡玛拉·哈里斯的社论支持，据称此举导致数十万订阅用户流失，以及他对评论版施加了具有限制性且右倾的指令。

领导层的失败加剧了危机。出版商弗雷德·瑞安缺乏后特朗普时代的战略，其继任者威尔·刘易斯则面临道德丑闻且未能提出连贯的愿景，进一步疏远了员工。与此同时，曾力挺该报民主角色的贝索斯，在《邮报》雄心萎缩之际却公开保持沉默。

结果是一个被掏空的机构，与《纽约时报》成功的多元化形成鲜明对比。资深员工和前编辑们将裁员视为一场自我造成的灾难，背叛了《邮报》的新闻传统和公众信任。

---

## 4. 从头开始打造24位街机CRT显示器适配器

**原文标题**: Building a 24-bit arcade CRT display adapter from scratch

**原文链接**: [https://www.scd31.com/posts/building-an-arcade-display-adapter](https://www.scd31.com/posts/building-an-arcade-display-adapter)

本文详细介绍了作者为街机CRT显示器打造定制USB转VGA适配器的项目。该项目旨在将现代笔记本电脑连接至街机显示器非标准的336x262分辨率，并改进其初始树莓派方案中18位色彩的限制。

作者首先使用树莓派RP2040微控制器的可编程输入输出（PIO）模块生成精确的VGA时序信号（RGB、行同步、场同步）进行原型验证，随后结合Linux通用USB显示（GUD）内核协议从主机串流帧缓冲数据。但RP2040的全速USB带宽无法满足流畅的帧率需求。

为解决带宽问题，作者改用支持高速USB并内置适用于VGA信号生成的LCD-TFT显示控制器（LTDC）外设的STM32H723微控制器重新设计硬件。最终定制电路板通过三个基于电阻的数字模拟转换器（DAC）实现RGB通道的24位色彩支持，并配备HyperRAM作为帧缓冲。该项目成功利用上游GUD协议，为特殊街机CRT打造了一款灵活的高色彩深度显示适配器。

---

## 5. 基础设施的克劳德代码

**原文标题**: Claude Code for Infrastructure

**原文链接**: [https://www.fluid.sh/](https://www.fluid.sh/)

**Claude基础设施代码**是一款旨在通过直接集成到现有工作流中，来简化和保障基础设施管理的工具。其核心功能包括：

*   **沙盒隔离：** 创建即时虚拟机克隆，允许用户在将更改应用到生产系统之前，在安全、隔离的环境中进行测试。
*   **上下文感知操作：** 该工具首先分析主机环境（操作系统、软件包、CLI工具），然后相应地调整其操作。
*   **完整审计追踪：** 执行的每条命令和所做的每项更改都会被记录和跟踪，从而可以在部署到生产环境之前进行审查。
*   **Ansible剧本生成：** 它能根据在沙盒中完成的工作，自动生成可复现的Ansible剧本。

一个使用示例展示了该工具创建沙盒、运行命令在Ubuntu服务器上安装和配置Apache、验证设置，然后自动生成一个包含四个任务的剧本（`httpd-setup`），该剧本捕获了整个流程。这使得完全相同的设置可以在任何其他Ubuntu服务器上复现。

总之，该工具在隔离沙盒中的测试与向生产基础设施部署可复现配置之间，提供了一个安全、可审计且自动化的桥梁。

---

## 6. 刻薄之人难成事（2014）

**原文标题**: Mean People Fail (2014)

**原文链接**: [https://paulgraham.com/mean.html](https://paulgraham.com/mean.html)

保罗·格雷厄姆在2014年的文章《刻薄者必败》中提出，刻薄与成功呈负相关，尤其在科技和创业领域。他观察到，尽管网络上司空见惯刻薄言行，但他认识的最成功的创始人和创造者中却鲜有此类人。

格雷厄姆列举了几个原因。首先，刻薄会让人变得“愚蠢”——使人陷入具体情境的争斗中，从而分散了构建新事物所需的更宏观、更具创造性的思考。其次，刻薄的领导者无法吸引或留住最优秀的人才，因为人才总有其他选择。第三，持久的成功往往源于一种善意精神——即改善世界的愿望——这比单纯追求金钱提供了更深层的动力。

他将这一趋势置于历史背景中，指出在历史长河中，成功往往意味着通过控制稀缺资源赢得零和游戏，此时攻击性可能成为优势。然而如今，成功越来越来自非零和游戏：产生新想法、创造新事物。这种转变需要一定程度的文明和经济秩序，让人们相信自己的创造不会被窃取，从而使智慧和创造力变得更有价值。

格雷厄姆总结道，这种动态给了他另一个教导子女不要刻薄的理由：在现代社会，刻薄不仅是道德错误，更是一种实际缺陷，终将导致失败。

---

## 7. 通过对称感知泰勒近似实现恒定每令牌成本注意力机制

**原文标题**: Attention at Constant Cost per Token via Symmetry-Aware Taylor Approximation

**原文链接**: [https://arxiv.org/abs/2602.00294](https://arxiv.org/abs/2602.00294)

本文介绍了一种计算自注意力——Transformer模型中的核心操作——的方法，其**每个令牌的计算成本为常数**，而非随上下文长度呈二次方增长的标准成本。作者通过将自注意力的泰勒展开重新表述为对称张量积链，利用对称性将查询和键映射到最小多项式核特征基，从而实现高效的前馈变换。

主要贡献包括：
- **常数时间计算**：支持无限令牌生成，同时保持固定的内存和计算成本，显著降低大规模模型的基础设施和能源需求。
- **与头尺寸的逆向缩放**：成本随头尺寸增加而降低，使得每个令牌可配备比以往更多的注意力头。
- **实证验证**：方法已实现并测试以确认其正确性。
- **独立的数学意义**：引入的对称感知张量分解技术具有新颖性，可应用于更广泛的问题。

总体而言，这项工作解决了Transformer中一个关键的可扩展性瓶颈，为更可持续、更高效的人工智能模型部署提供了路径。

---

## 8. Claude代码：配额用尽时连接本地模型

**原文标题**: Claude Code: connect to a local model when your quota runs out

**原文链接**: [https://boxc.net/blog/2026/claude-code-connecting-to-local-models-when-your-quota-runs-out/](https://boxc.net/blog/2026/claude-code-connecting-to-local-models-when-your-quota-runs-out/)

本文解释了当您达到API配额限制时，如何从Anthropic的Claude Code切换到本地开源模型。

主要解决方案是使用**LM Studio**，这是一个用户友好的应用程序，可让您在本地运行模型。安装LM Studio并下载推荐模型（如GLM-4.7-Flash或Qwen3-Coder-Next）后，启动本地服务器，并通过特定环境变量将Claude Code重定向到该服务器。这样您就可以继续编码，尽管性能较慢且代码质量可能较低。

作为替代方案，您可以将Claude Code直接连接到**llama.cpp**，但作者建议LM Studio对大多数用户来说更易上手。

文章强调这是一个**备用解决方案**，需要权衡：本地模型比Claude更慢、能力更弱，但能让您继续工作。一旦配额重置，您可以轻松切换回Claude。文中还重点介绍了关键命令，如使用`/usage`检查配额，使用`/model`查看或更改当前活动模型。

---

## 9. AI正在扼杀B2B SaaS

**原文标题**: AI is killing B2B SaaS

**原文链接**: [https://nmn.gl/blog/ai-killing-b2b-saas](https://nmn.gl/blog/ai-killing-b2b-saas)

本文认为，AI驱动的“氛围编程”工具正在颠覆B2B SaaS行业，它使非技术用户能够构建定制的内部应用程序。这一转变对SaaS公司构成了生存威胁，因为客户现在期望前所未有的灵活性，如果需求无法得到完美满足，他们可能会流失。

作者为SaaS公司提出了三个关键的生存策略：
1.  成为**记录系统**，深度嵌入公司的核心工作流程，而非简单、可替代的应用程序。
2.  强调**安全性、身份验证和稳健性**——这些复杂性是DIY AI工具常常忽视的。
3.  **适应客户需求**，提供高度可定制性，允许用户根据其特定流程调整软件。

核心论点是，AI并非直接扼杀SaaS，而是在淘汰那些拒绝从僵化的“一刀切”产品转型为灵活平台的SaaS公司。未来属于那些允许客户在其安全、稳健的系统之上进行构建的SaaS公司。作者最后推广了自己的解决方案：一个白标“氛围编程”平台，旨在帮助SaaS公司为其用户实现这种定制化。

---

## 10. 拖拉机

**原文标题**: Tractor

**原文链接**: [https://incoherency.co.uk/blog/stories/tractor.html](https://incoherency.co.uk/blog/stories/tractor.html)

这篇博客文章详细介绍了作者为期六个月为儿童打造电动玩具拖拉机的项目。该拖拉机由350W电机和36V电池驱动，底盘采用胶合板简单制成，前轴可转动以适应不平坦地形。

关键构造要素包括使用角磨机齿轮定制的转向系统、带有改装车轮的后轴，以及用于适当减速的副轴。作者通过DPDT开关实现了倒车功能，并添加了一个基本但效果不佳的碟刹。一个显著的挑战是使用切口弯曲技术将胶合板塑造成弯曲的引擎盖。

文章还总结了经验教训，例如高应力部件需要焊接而非螺栓固定、作者对MIG焊机设置的修正理解，以及决定移除过于复杂的基于Arduino的油门调节器。该项目是作者与年幼女儿的合作成果，被呈现为一个虽不完美但功能完备的创作，旨在娱乐和实践学习。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 2 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 3 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 4 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 5 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 6 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 7 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 8 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 9 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 10 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 11 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 12 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 13 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 14 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 15 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 16 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 17 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 18 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 19 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 20 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 21 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 22 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 23 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 24 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 25 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 26 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 27 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 28 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 29 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 30 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 31 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 32 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 33 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 34 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 35 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 36 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 37 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 38 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 39 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 40 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 41 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 42 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 43 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 44 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 45 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 46 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 47 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 48 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 49 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 50 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 51 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 52 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 53 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 54 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 55 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 56 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 57 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 58 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 59 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 60 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 61 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 62 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 63 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 64 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 65 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 66 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 67 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 68 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 69 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 70 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 71 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 72 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 73 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 74 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 75 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 76 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 77 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 78 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 79 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 80 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 81 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 82 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 83 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 84 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 85 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 86 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 87 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 88 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 89 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 90 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 91 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 92 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 93 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 94 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 95 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 96 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 97 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 98 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 99 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 100 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 101 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 102 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 103 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 104 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 105 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 106 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 107 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 108 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 109 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 110 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 111 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 112 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 113 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 114 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 115 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 116 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 117 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 118 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 119 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 120 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 121 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 122 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 123 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 124 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 125 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 126 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 127 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 128 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 129 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 130 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 131 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 132 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 133 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 134 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 135 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 136 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 137 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 138 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 139 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 140 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 141 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 142 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 143 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 144 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 145 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 146 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 147 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 148 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 149 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 150 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 151 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 152 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 153 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 154 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 155 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 156 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 157 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 158 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 159 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 160 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 161 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 162 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 163 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 164 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 165 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 166 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 167 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 168 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 169 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 170 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 171 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 172 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 173 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 174 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 175 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 176 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 177 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 178 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 179 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 180 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 181 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 182 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 183 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 184 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 185 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 186 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 187 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 188 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 189 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 190 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 191 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 192 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 193 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 194 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 195 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 196 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 197 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 198 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 199 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 200 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 201 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 202 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 203 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 204 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 205 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 206 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 207 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 208 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 209 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 210 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 211 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 212 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 213 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 214 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 215 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 216 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 217 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 218 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 219 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 220 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 221 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 222 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 223 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 224 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 225 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 226 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 227 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 228 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 229 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 230 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 231 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 232 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 233 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 234 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 235 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 236 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 237 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 238 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 239 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 240 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 241 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 242 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 243 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 244 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 245 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 246 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 247 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 248 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 249 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 250 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 251 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 252 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 253 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 254 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 255 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 256 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 257 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 258 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 259 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 260 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 261 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 262 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 263 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 264 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 265 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 266 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 267 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 268 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 269 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 270 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 271 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 272 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 273 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 274 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 275 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 276 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 277 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 278 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 279 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 280 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 281 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 282 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 283 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 284 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 285 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 286 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 287 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 288 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 289 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 290 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 291 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 292 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 293 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 294 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 295 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 296 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 297 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 298 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 299 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 300 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 301 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 302 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 303 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 304 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 305 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 306 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 307 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 308 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 309 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 310 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 311 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 312 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 313 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 314 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 315 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 316 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 317 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 318 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 319 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
