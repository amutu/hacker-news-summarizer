# Hacker News 热门文章摘要 (2026-02-02)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Codex应用

**原文标题**: The Codex App

**原文链接**: [https://openai.com/index/introducing-the-codex-app/](https://openai.com/index/introducing-the-codex-app/)

**《Codex应用介绍》摘要**

OpenAI的文章介绍了Codex应用，这是一款为展示其Codex AI系统能力而构建的实验性应用程序。Codex是驱动GitHub Copilot的AI模型，擅长将自然语言转化为代码。

该应用的主要目的是作为一个**公开演示和研究工具**，让用户能直接与Codex交互以生成软件。它拥有一个简洁的界面，用户可以输入英文指令（例如："创建一个带有显示'你好'按钮的网页"），并实时看到Codex生成相应代码。该应用支持多种编程语言和框架，包括JavaScript、Python和HTML。

文章要点包括：
*   **展示潜力：** 该应用并非商业产品，而是展示AI如何协助编程任务的范例，从创建简单网站到小型游戏。
*   **研究重点：** OpenAI发布此应用旨在收集用户反馈，研究人们如何与AI编程助手互动，这将为未来发展提供参考。
*   **承认局限性：** 文章指出，Codex有时会产生错误或无意义的代码，强调它最好作为经验丰富的开发者的工具使用，以便审查和编辑其输出。
*   **更广阔愿景：** 此演示是OpenAI探索AI如何增强人类创造力和生产力、降低软件创作门槛的一部分。

本质上，Codex应用是一个互动性的公开实验，它展示了当前AI辅助编程的现状、其充满希望的潜力以及现存的局限性。

---

## 2. 入侵Moltbook

**原文标题**: Hacking Moltbook

**原文链接**: [https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys](https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys)

**摘要：**

Moltbook——一个面向AI智能体的病毒式社交网络——因Supabase数据库配置不当被发现存在严重安全漏洞。安全研究人员在其客户端JavaScript代码中发现了暴露的API密钥，使得未经认证的用户能够对完整生产数据库进行读写操作。

泄露数据包含150万个智能体身份验证令牌、超过3.5万个用户邮箱地址及私密消息，其中部分消息还涉及OpenAI等第三方API密钥。虽然该平台宣称拥有150万注册智能体，但数据库仅显示约1.7万人类所有者，表明大多数“智能体”实为人类操作的机器人。

除数据泄露外，攻击者本可劫持任意账户、编辑或篡改所有平台帖子，并操控AI智能体接收的内容。该漏洞源于行级安全策略缺失，这是AI辅助快速开发的“氛围编程”应用中常见的疏忽。

Moltbook团队在收到通知后数小时内通过多次迭代修复完成了数据库加固。此事件揭示了在快速发展的人工智能生态中，开发速度超越安全部署所带来的系统性风险，同时凸显了AI驱动开发工具需内置自动化安全默认配置的迫切性。

---

## 3. 托德·C·米勒——Sudo维护者超过30年

**原文标题**: Todd C. Miller – Sudo maintainer for over 30 years

**原文链接**: [https://www.millert.dev/](https://www.millert.dev/)

托德·C·米勒是安全工具 **sudo** 的长期维护者，担任这一角色已超过30年。本页面的主要目的是宣布他**正在积极寻求赞助方**，以资助 sudo 的持续维护与未来发展。他邀请有意向的个人或组织就赞助事宜与他联系。

米勒还提及了他参与 **OpenBSD** 项目的情况，并指出他在该项目的活跃度较以往有所下降。此外，他列举了以往对其他项目的重要贡献，特别是 **ISC cron**。

本页面以简短且不定期更新的个人说明形式呈现，作者引导访问者通过网站其他链接获取更实质性的信息。

---

## 4. Nano-vLLM：vLLM风格推理引擎的工作原理

**原文标题**: Nano-vLLM: How a vLLM-style inference engine works

**原文链接**: [https://neutree.ai/blog/nano-vllm-part-1](https://neutree.ai/blog/nano-vllm-part-1)

Nano-vLLM是一个极简的生产级推理引擎，它展示了vLLM等系统背后的核心架构。它通过管理两个关键阶段高效地将提示转换为生成文本：**预填充**（处理输入）和**解码**（生成输出标记）。

其性能依赖于一个采用中心**调度器**的**生产者-消费者模式**。该组件通过批处理请求来分摊GPU开销，平衡固有的**吞吐量与延迟权衡**。**块管理器**通过将序列划分为固定大小的块并启用**前缀缓存**来优化内存——复用常见提示前缀的缓存结果以避免冗余计算。

在执行层面，**模型运行器**负责GPU操作，通过领导者-工作者模式支持跨多GPU的**张量并行**。它利用**CUDA图**在解码步骤中最小化内核启动开销。最后，**采样**步骤对模型逻辑值应用温度参数以选择最终输出标记，从而控制响应的随机性。

该架构将调度、内存管理和计算解耦，为高性能大语言模型服务提供了可扩展的蓝图。

---

## 5. 使用rclone实现网络文件同步速度提升4倍（相较于rsync）（2025年）

**原文标题**: 4x faster network file sync with rclone (vs rsync) (2025)

**原文链接**: [https://www.jeffgeerling.com/blog/2025/4x-faster-network-file-sync-rclone-vs-rsync/](https://www.jeffgeerling.com/blog/2025/4x-faster-network-file-sync-rclone-vs-rsync/)

本文详述了通过从`rsync`切换至`rclone`，在10 Gbps网络上同步大型视频项目文件时实现的显著性能提升。

作者通常的工作流程涉及使用`rsync`将数百个文件（包括许多大小为1-10 GB的文件）从高速NAS同步到本地SSD。尽管硬件速度很高，但由于`rsync`按顺序复制文件，传输速度被限制在约350 MB/秒，同步约59 GB数据需要超过8分钟。

解决方案是采用作者先前仅用于云备份的工具`rclone`。通过使用其`--multi-thread-streams=32`选项，`rclone`实现了并行文件传输。这一简单调整使得网络连接能够以满速1 GB/秒运行。

最终，相同的数据传输仅需略多于2分钟即可完成——比`rsync`快了约**4倍**。作者指出，若仅同步少量已更改文件，两种工具表现相近，因为目录扫描时间相当。而速度的大幅提升完全得益于`rclone`能够同时传输多个大文件，从而充分利用了可用网络带宽。

---

## 6. 通过游戏竞技场推进人工智能基准测试

**原文标题**: Advancing AI Benchmarking with Game Arena

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/google-deepmind/kaggle-game-arena-updates/](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/kaggle-game-arena-updates/)

谷歌DeepMind正在Kaggle上扩展其Game Arena基准测试平台，以评估AI模型在更复杂的现实场景中的表现。该平台最初专注于国际象棋以测试战略推理能力，现在引入了两款新游戏：狼人杀和扑克。

狼人杀是一款社交推理游戏，旨在测试AI在模糊情境中导航、沟通、谈判以及通过自然语言识别欺骗的能力——这些技能对未来AI助手至关重要。扑克则挑战模型管理风险和量化不确定性的能力，要求它们推断隐藏信息并适应对手的策略。

这些游戏作为受控环境，用于衡量AI在社交动态和不完全信息下决策等领域的进展。它们也充当安全研究的沙盒，允许开发者在低风险环境中研究操纵等行为。排行榜显示，谷歌最新的Gemini模型目前在性能上处于领先地位。

为庆祝平台上线，谷歌DeepMind将于2月2日至4日举办直播锦标赛，邀请国际象棋和扑克领域的专家进行解说，届时顶尖AI模型将同台竞技。

---

## 7. 地质学家可能已解开格林河“逆流而上”路径之谜

**原文标题**: Geologists may have solved mystery of Green River's 'uphill' route

**原文链接**: [https://phys.org/news/2026-01-geologists-mystery-green-river-uphill.html](https://phys.org/news/2026-01-geologists-mystery-green-river-uphill.html)

**《地质学家或已解开格林河“逆坡而上”之谜》摘要**

地质学家对一个长期谜题提出了新的解释：为何犹他州格林河的一段河道看似“逆坡而上”，与区域地形坡度相悖。这条河流穿越尤因塔山脉，似乎违背重力原理，从海拔较低的盆地流入了海拔较高的山脉。

传统理论认为，河流在山脉缓慢抬升过程中保持了原有河道（称为“先成河”）。然而，新研究对此提出了挑战。

该研究的关键发现是，格林河的河道并非先成，而是**叠置河**。研究人员提出，该河道形成时间要晚得多，约在500万至1200万年前，当时河流在一片广阔平缓的沉积岩层（尤因塔盆地地层）上确立流向，该岩层曾完全覆盖下方的古老山脉。随着河流向下切割这层沉积覆盖物，最终触及并“锁定”下方更坚硬的山脉基岩，从而继承了如今看似异常的河道。随后的侵蚀作用移除了周围的沉积岩层，使河流暴露出来，呈现出我们今天所见到的横穿抬升山脉的景象。

这一叠置模型更好地解释了该河相对年轻的峡谷年龄及其与基岩区域褶皱的一致性。研究表明，河流并非早于山脉抬升形成，而是受一层现已消失、掩盖了真实地形的地质层引导，从而解决了这一表象上的矛盾。

---

## 8. 64位可表示的最大数字

**原文标题**: The largest number representable in 64 bits

**原文链接**: [https://tromp.github.io/blog/2026/01/28/largest-number-revised](https://tromp.github.io/blog/2026/01/28/largest-number-revised)

本文探讨了64位可表示的最大数值，超越标准数据类型，考虑不同计算模型中的程序。

最大的64位无符号整数是2^64 - 1（约1.8×10^19），而64位双精度浮点数可达约1.8×10^308。然而，若将64位解释为程序，则可能表示远大于此的数值。

在图灵机中，繁忙海狸函数BB(n)定义了n状态停机机器的最大步数。一个6状态机器可容纳于64位中，但BB(6)未知且其数值极其巨大，尽管可能小于阿克曼函数Ackermann(9,9)。

作为函数式编程基础的λ演算允许更高效的编码。一个49位λ项（“梅洛数”）已超过葛立恒数，而一个61位λ项（“w218”）则更为庞大，利用了快速增长层级。

文章比较了衡量λ项输出大小的“函数式繁忙海狸”（BBλ）与经典BB函数。由于λ演算卓越的可编程性，BBλ仅用少得多的位数就实现了类似的巨大增长率，这与编程图灵机的繁琐性形成对比。这引发了一个问题：尽管效率低下，为何图灵机仍是此类理论极限的标准模型？

---

## 9. 美国环保署推进农民维修权

**原文标题**: EPA Advances Farmers' Right to Repair

**原文链接**: [https://www.epa.gov/newsreleases/epa-advances-farmers-right-repair-their-own-equipment-saving-repair-costs-and](https://www.epa.gov/newsreleases/epa-advances-farmers-right-repair-their-own-equipment-saving-repair-costs-and)

2026年2月2日，美国环境保护署（EPA）发布指南，明确《清洁空气法案》（CAA）支持农民和设备所有者自行维修非道路柴油设备的权利。指南指出，制造商不能再以《清洁空气法案》的反篡改条款为由，限制维修工具或软件的获取。

此前，制造商曾将该法律解读为禁止其分享必要的诊断工具，迫使农民只能通过授权经销商进行维修。这导致维修成本上升和延误，常常促使农民继续使用他们能够自行维修但更老旧、环保性较差的设备。

环保署澄清，为“维修目的”恢复设备功能时，临时停用排放控制系统是法律允许的。这适用于选择性催化还原和柴油尾气处理液（DEF）系统等技术。此举并未修改法律或削弱排放标准，而是申明《清洁空气法案》不应成为及时、经济维修的障碍。

该指南应约翰迪尔公司的请求发布，被特朗普政府视为农民的胜利，将为他们节省开支并增强自主性。环保署表示，此举通过鼓励使用更新、更清洁的设备，既支持了农民，也符合该机构的环境保护使命。

---

## 10. 为何软件股遭受重创

**原文标题**: Why software stocks are getting pummelled

**原文链接**: [https://www.economist.com/business/2026/02/01/why-software-stocks-are-getting-pummelled](https://www.economist.com/business/2026/02/01/why-software-stocks-are-getting-pummelled)

无法访问文章链接。

---

## 11. 停车场作为经济负担

**原文标题**: Parking lots as economic drains

**原文链接**: [https://progressandpoverty.substack.com/p/stop-incentivizing-surface-parking](https://progressandpoverty.substack.com/p/stop-incentivizing-surface-parking)

本文认为，市中心的露天停车场是"经济流失源"，它们占据着本可产生更多经济活动、住房和就业机会的宝贵土地，从而对城市造成直接损害。以纽约州锡拉丘兹市为例，作者指出，停车场消耗了市中心黄金地段的空间，但与办公楼、公寓或商店相比，其经济贡献微乎其微。

核心问题在于扭曲的财务激励结构。停车场所有者能以极低的维护成本获得稳定收益，同时土地价值持续增值。关键在于，现行房产税制度对土地和建筑物同时征税，导致开发完善的房产所缴税款远高于同等价值土地上利用率低下的停车场，这进一步加剧了问题。

尽管作者支持务实的停车改革——如取消最低停车位配建标准并设置上限——但认为仅靠这些措施远远不够。作者提出的根本解决方案是税收政策转型：将征税重点从建筑物转移至土地本身的原始价值。这种"土地价值税"将通过提高土地持有年成本、减少投机收益，使闲置土地用作停车场在经济上难以为继，从而激励所有者将土地用于最高效、最合理的开发用途。

---

## 12. 在疯狂之地保持理智（1973）[pdf]

**原文标题**: Being sane in insane places (1973) [pdf]

**原文链接**: [https://www.weber.edu/wsuimages/psychology/FacultySites/Horvat/OnBeingSaneInInsanePlaces.PDF](https://www.weber.edu/wsuimages/psychology/FacultySites/Horvat/OnBeingSaneInInsanePlaces.PDF)

这是心理学家大卫·罗森汉于1973年发表的经典研究《在疯狂之处保持理智》。该文章详述了一项具有里程碑意义的实验，旨在调查精神病学诊断的可靠性。

**核心要点：**
*   **实验设计：** 八名无精神病史的“假病人”（包括罗森汉本人）通过谎称存在单一幻听症状（如“砰”、“空洞”、“空虚”），成功进入美国12家不同的精神病院。
*   **关键发现：** 所有假病人均被收治并被诊断为严重精神障碍（主要是精神分裂症）。尽管他们入院后立即停止模拟任何症状并行为正常，但其“理智”状态未得到医护人员的识别。
*   **医护人员 vs. 患者：** 医护人员持续透过诊断标签的视角解读假病人的正常行为（如记笔记），而其他患者则常常怀疑他们并未患病。
*   **标签效应：** 该研究有力揭示了精神病学环境中**诊断标签的顽固性**。一旦被贴上标签，患者的行为就会被解读为符合诊断，罗森汉将此过程称为“第二类错误”（未能识别理智状态）。
*   **去个性化：** 报告描述了机构内**个人自主权的严重丧失和去个性化现象**，患者大多被医护人员忽视，被视为隐形存在。
*   **结论：** 研究指出精神病院无法可靠地区分理智者与精神失常者，揭示了精神病学诊断中根深蒂固的环境偏见以及机构照护可能存在的非人化本质。这项研究引发了精神病学和精神卫生法领域的重大改革与辩论。

---

## 13. 展示 HN：政治科学——匿名每日投票，24小时窗口期

**原文标题**: Show HN: PolliticalScience – Anonymous daily polls with 24-hour windows

**原文链接**: [https://polliticalscience.vote/](https://polliticalscience.vote/)

**《政治科学》平台简介**

《政治科学》是一个专注于政治与社会话题的新型匿名每日投票平台。2026年2月2日的示例投票聚焦于刑事司法议题——死刑是否应保持合法，用户可选择“赞同”或“反对”。

该平台在文中强调的主要特点包括：
*   **匿名参与**：用户投票不关联个人身份。
*   **24小时投票窗口**：每项投票仅开放一天。
*   **无需注册或追踪**：平台注重隐私与便捷性，无需创建账户，也不追踪用户数据。

其核心理念是提供一个简单、低门槛的工具，用于收集公众对时事议题的每日意见，同时避免社交媒体身份或持久用户数据对结果的影响。

---

## 14. 我使用OxCaml构建的快速零分配网络服务器

**原文标题**: My fast zero-allocation webserver using OxCaml

**原文链接**: [https://anil.recoil.org/notes/oxcaml-httpz](https://anil.recoil.org/notes/oxcaml-httpz)

本文介绍了**httpz**，这是一个使用**OxCaml**构建的高性能HTTP/1.1网络服务器。OxCaml是具备高级语言扩展功能的OCaml版本。作者因处理大规模行星计算数据，希望用性能更高、类型更安全的方案替代Python基础设施。

httpz的核心目标是实现**零（或最小化）堆内存分配**，以最大化性能并减少垃圾回收活动。这通过利用OxCaml的几项关键特性实现：

*   **拆箱类型与记录**：使用`int16#`等类型及拆箱记录（`#{ ... }`）可将数据直接存储在寄存器或栈中，消除了标准OCaml的装箱开销。
*   **局部分配与隔离域**：`local_`和`exclave_`关键字支持对不得逃逸函数的数据进行栈分配，避免堆内存分配。
*   **可变局部变量**：`let mutable`语法允许栈分配的可变变量，替代堆分配的`ref`单元。

这些特性使得整个HTTP连接处理可在调用栈上完成，连接清理只需简单地从函数返回。解析器以拆箱的局部元组形式返回结果。

作者指出了当前存在的局限，包括工具链的流动性问题以及`or_null`类型等某些OxCaml特性的使用挑战。尽管如此，他们仍成功运用OxCaml构建了这款快速、内存分配高效的网络服务器，并借助Claude的编码辅助实现了快速原型开发。

---

## 15. 展示HN：Adboost – 一款为每个网页添加广告的浏览器扩展

**原文标题**: Show HN: Adboost – A browser extension that adds ads to every webpage

**原文链接**: [https://github.com/surprisetalk/AdBoost](https://github.com/surprisetalk/AdBoost)

**摘要：**

AdBoost是一款讽刺性的浏览器扩展，它故意在每个网页上添加广告，颠覆了典型广告拦截器的用途。该项目以戏谑的“Show HN”形式呈现，突显了网络广告的无处不在。

关键信息是用户可以通过克隆代码库、启用Chrome开发者模式并加载解压的扩展文件来安装它。其极简的描述和说明暗示该扩展是一个概念性或幽默项目，旨在批判广告泛滥的浏览体验，而非真正实用的工具。

---

## 16. IsoCoaster – 主题公园建造者

**原文标题**: IsoCoaster – Theme Park Builder

**原文链接**: [https://iso-coaster.com/](https://iso-coaster.com/)

根据占位文本，标题为《IsoCoaster – 主题公园建造者》的页面或文章似乎正在加载中，或其内容暂不可用。

因此，由于缺乏可供分析的实质性内容，无法提供摘要。当前可见文字仅表明目标材料正在加载或暂时无法访问。

若要生成恰当的摘要，需要加载并展示详细介绍《IsoCoaster》主题公园模拟游戏特色、玩法或用途的完整文章内容。

---

## 17. Linux From Scratch 终止对 SysVinit 的支持

**原文标题**: Linux From Scratch ends SysVinit support

**原文链接**: [https://lists.linuxfromscratch.org/sympa/arc/lfs-announce/2026-02/msg00000.html](https://lists.linuxfromscratch.org/sympa/arc/lfs-announce/2026-02/msg00000.html)

**《Linux From Scratch 终止 SysVinit 支持》摘要**

Linux From Scratch（LFS）项目已宣布在其核心手册中终止对 SysVinit 初始化系统的支持。从即将发布的 LFS 12.0 版本开始，该项目将仅支持 systemd 作为初始化系统。

这一决定是由于支持两种初始化系统带来了巨大且日益增长的维护负担。SysVinit 脚本需要为每个新软件包版本进行大量手动更新，这一过程对志愿者开发团队而言已难以为继。相比之下，systemd 的单元文件主要由软件包自身自动生成，从而大幅降低了维护开销。

因此，LFS 11.4 手册将是最后一个包含使用 SysVinit 构建系统指导的版本。所有未来的开发和官方支持将仅专注于 systemd。项目强调，此变更纯粹出于实际考量，旨在确保项目的长期可行性，并非对两种初始化系统技术优劣的评判。

对于强烈偏好 SysVinit 的用户，项目指出存档的 LFS 11.4 手册仍将可用，且更广泛的 LFS 社区可能会继续提供非官方支持或分支版本。然而，核心 LFS 项目今后将与大多数主流 Linux 发行版采用的主流初始化系统保持一致，以简化其开发流程。

---

## 18. Waymo寻求以约1100亿美元估值融资160亿美元

**原文标题**: Waymo seeking about $16B near $110B valuation

**原文链接**: [https://www.bloomberg.com/news/articles/2026-01-31/waymo-seeking-about-16-billion-near-110-billion-valuation](https://www.bloomberg.com/news/articles/2026-01-31/waymo-seeking-about-16-billion-near-110-billion-valuation)

无法访问文章链接。

---

## 19. 很快，热泵将能够根据需要储存和分配热量。

**原文标题**: Pretty soon, heat pumps will be able to store and distribute heat as needed

**原文链接**: [https://www.sintef.no/en/latest-news/2026/pretty-soon-heat-pumps-will-be-able-to-store-and-distribute-heat-as-needed/](https://www.sintef.no/en/latest-news/2026/pretty-soon-heat-pumps-will-be-able-to-store-and-distribute-heat-as-needed/)

SINTEF研究所与瑞士COWA Thermal Solutions公司共同为配备热泵的家庭开发了一种紧凑型热能电池。该系统在电价低廉或绿色电力充足时储存多余热量，并按需释放，起到"热能电池"的作用。

其核心创新在于使用无毒、廉价的水合盐作为相变材料。相比传统水箱，这些物质在更小空间内储存的热量显著增加——空间需求减少达四分之三，并能保持更稳定的温度。

关键技术改进包括采用回收铝制成的薄型冷却翅片，增强了热传递效率。为保护铝材免受盐分腐蚀，还施加了耐用的陶瓷涂层。这些改进使系统效率从65%提升至85%，充电时间缩短70%以上，放热时间减少80%以上。

该方案实现了更智能的能源利用，既缓解了热泵持续运行对电网的压力，又能在用电高峰期间提供可靠的热水供应。作为欧盟Sure2Coat项目的成果，这项进展标志着先进热能存储技术向实用化、高效化的家庭应用迈出了重要一步。

---

## 20. 英国政府推出加油站油价API

**原文标题**: UK government launches fuel forecourt price API

**原文链接**: [https://www.gov.uk/guidance/access-the-latest-fuel-prices-and-forecourt-data-via-api-or-email](https://www.gov.uk/guidance/access-the-latest-fuel-prices-and-forecourt-data-via-api-or-email)

**英国政府燃油查找服务摘要**

英国能源安全与净零排放部推出了燃油查找服务，旨在为公众提供实时燃油价格及加油站数据。

该服务通过将数据开放给第三方比价网站、应用程序及其他工具进行整合，帮助驾驶者寻找最优惠的燃油。可获取的数据包括按燃油类型划分的当前零售价格、加油站地址、运营商、配套设施、营业时间及更新时间戳，所有价格变动将在30分钟内更新发布。

数据可通过以下三种方式获取：
1.  下载每日更新两次的CSV文件。
2.  通过电子邮件订阅以获取最新CSV文件链接。
3.  使用公共REST API直接集成到应用程序中，此方式需通过OAuth 2.0和GOV.UK统一登录进行身份验证。

该服务面向开发者、学者、记者及各类组织等广泛用户群体。API集成需要技术知识，而非技术用户可通过参与合作的第三方平台获取信息。

---

## 21. Claude Code突然在微软内部无处不在。

**原文标题**: Claude Code is suddenly everywhere inside Microsoft

**原文链接**: [https://www.theverge.com/tech/865689/microsoft-claude-code-anthropic-partnership-notepad](https://www.theverge.com/tech/865689/microsoft-claude-code-anthropic-partnership-notepad)

微软正越来越多地在内部采用Anthropic的Claude Code AI工具，同时继续向客户销售GitHub Copilot。该公司鼓励包括Windows和Microsoft 365部门非技术人员在内的数千名员工，将Claude Code用于原型设计和编码任务。工程师们还被要求将其与GitHub Copilot进行比较。

这标志着微软对Anthropic技术投下了重要的内部信任票。微软现已成为Anthropic的顶级客户，将其模型销售计入Azure配额，并达成协议向云客户提供Claude模型。尽管微软声称OpenAI仍是其“主要合作伙伴”，但在Anthropic模型表现更出色的领域，微软正在积极利用这些模型。

这项广泛的试点计划凸显了让更多员工使用AI生成代码的转变，这可能对初级开发人员岗位构成压力，并推动向更自主的AI代理方向发展。文章还提及了即将发布的Xbox游戏消息及其他微软新闻，包括Windows更新漏洞以及Paint等应用程序中的新AI功能。

---

## 22. HS2线路沿线发现的宝藏

**原文标题**: Treasures found on HS2 route

**原文链接**: [https://www.bbc.com/news/articles/c93v21q5xdvo](https://www.bbc.com/news/articles/c93v21q5xdvo)

在伦敦至伯明翰的HS2高铁线路建设期间，考古学家发掘出约45万件"史无前例"的历史文物。这些横跨英国一万多年历史的发现现储藏于约克郡一处秘密仓库。

重要发现包括可能属于古罗马角斗士的骨制标签、尼安德特人时期的手斧以及19世纪的黄金假牙。其他值得注意的文物有盎格鲁-撒克逊时期的纺轮、中世纪骰子，以及来自18世纪墓葬的瓷质哈巴狗雕像。

虽然考古田野工作已基本完成，但这批藏品的未来尚未确定。文物所有权将依法判定，可能归属政府或土地所有者。考古学家希望许多文物能被捐赠给地方博物馆向公众展示。

该项目因考古学意义受到赞誉，但仍存争议。批评者认为HS2的高昂成本和环境破坏超过了其效益，而历史学家则指出伴随工程开展的挖掘为研究英国历史提供了宝贵资料。

---

## 23. 我的iPhone 16 Pro Max运行MLX LLM时输出效果很差

**原文标题**: My iPhone 16 Pro Max produces garbage output when running MLX LLMs

**原文链接**: [https://journal.rafaelcosta.me/my-thousand-dollar-iphone-cant-do-math/](https://journal.rafaelcosta.me/my-thousand-dollar-iphone-cant-do-math/)

作者发现，其iPhone 16 Pro Max在运行本地MLX大语言模型时会产生无意义的输出，而相同的代码在iPhone 15 Pro和MacBook Pro上却运行完美。经过大量调试后，他们发现尽管输入相同，但iPhone 16上模型内部的张量值与其他设备相比差异巨大，且存在数量级上的偏差。

这使他们得出结论：问题源于硬件缺陷，很可能出在处理机器学习计算的A18芯片神经引擎上。同一设备上的苹果智能功能也无法正常工作，进一步加剧了问题的复杂性。作者的经历凸显了在软件调试中将硬件视为潜在错误源的重要性。最终，他们将存在缺陷的iPhone 16 Pro Max更换为iPhone 17 Pro Max，后者表现正常。

---

## 24. Tomo：一种静态类型、命令式语言，可交叉编译为C语言 [视频]

**原文标题**: Tomo: A statically typed, imperative language that cross-compiles to C [video]

**原文链接**: [https://www.youtube.com/watch?v=-vGE0I8RPcc](https://www.youtube.com/watch?v=-vGE0I8RPcc)

这不是一篇关于编程语言的文章。这段文字似乎是YouTube视频页面的标准法律和信息页脚。

所提供的“内容”是通用的YouTube平台信息，包括：
*   版权和政策链接（条款、隐私、安全）。
*   Google/YouTube的联系信息。
*   免责声明：视频中展示的产品由第三方销售，而非YouTube。

文中没有关于“Tomo”这种静态类型语言的信息，也没有任何技术内容可供总结。标题“[video]”表明，关于Tomo语言的实际文章或视频描述并未包含在所提供的文本中。

---

## 25. 瓦兰扎——我的Unix式体重追踪与分析之道

**原文标题**: Valanza – my Unix way for weight tracking and anlysis

**原文链接**: [https://github.com/paolomarrone/valanza](https://github.com/paolomarrone/valanza)

**Valanza** 是一款实验性的 Unix 风格工具，用于追踪和分析体重数据。其核心理念是使用小型、可组合的程序（用 R、awk 和 bash 编写），通过管道进行通信，而不是将数据和逻辑结合在单一的电子表格中。

工作流程从原始体重数据开始。一系列专用过滤器对其进行处理：一个 R 脚本通过线性插值填补缺失值，一个 awk 脚本计算移动平均值，另一个则应用低通滤波器。这些进程通过命名管道并行运行，并将输出重新组合。最后，Gnuplot 生成可视化图表，显示原始、插值和经过平滑处理的数据信号。

Valanza 是作为个人项目“出于兴趣和乐趣”而设计的，展示了模块化、受 Unix 启发的数据分析方法。运行该工具需要 bash、R、awk 和 Gnuplot。该工具采用 MIT 许可证发布。

---

## 26. 高速增长并非总是轻而易举。

**原文标题**: Hypergrowth isn’t always easy

**原文链接**: [https://tailscale.com/blog/hypergrowth-isnt-always-easy](https://tailscale.com/blog/hypergrowth-isnt-always-easy)

本文探讨了Tailscale近期服务中断的问题，承认其运行稳定性“比往常更不稳定”。公司通过公开状态页面保持透明度，但也指出其更新可能导致不同的解读。

讨论的核心解释了Tailscale的系统架构。“协调服务器”实际上是一个分片的“协调服务”——为每个客户网络（tailnet）提供高速、集中的消息总线。这种设计实现了近乎即时的更新（如ACL变更），但也意味着如果特定服务器实例发生故障，相关tailnet的控制平面就会受到影响。关键的是，即使在此类中断期间，数据平面（现有连接）仍能继续工作，但添加设备或更改设置等操作会被阻止。

公司将其应对措施定位为“持续改进”。概述了多项提升可靠性的举措：在本地缓存网络映射，使重启无需依赖控制服务器；通过热备和实时迁移等功能演进分片服务；开发更好的多tailnet共享机制以实现地理弹性；并投入更严格的测试。

作者最后承诺将加强沟通、记录每起事件并系统性地消除停机时间，同时欢迎用户反馈以及有兴趣解决这些挑战的潜在职位申请者。

---

## 27. 无闲置成本的无服务器后端托管——开源

**原文标题**: Serverless backend hosting without idle costs – open-source

**原文链接**: [https://github.com/aryankashyap0/shorlabs](https://github.com/aryankashyap0/shorlabs)

**Shorlabs** 是一个开源平台，旨在通过为 Python 和 Node.js 应用提供类似 Vercel 的无服务器体验来简化后端托管。它基于 AWS Lambda 运行，消除了闲置成本，确保您只需为实际计算时间付费，并支持自动扩缩容。

核心功能包括从 GitHub 一键部署、自动运行时检测、自定义子域名、安全的环境变量管理以及可配置的计算资源。该平台提供仪表板，用于跟踪部署状态和查看实时日志。

开发者需准备 Node.js、Python、Docker 和 AWS 凭证才能开始使用。设置步骤包括克隆代码库、安装依赖项和配置环境变量。部署过程需要运行脚本，以在 AWS Lambda 上设置核心 API，通过 Lambda@Edge 和 CloudFront 配置通配符子域名路由，并安排使用指标聚合任务。前端是一个独立部署的 Next.js 应用。

Shorlabs 通过抽象基础设施管理，解决了后端部署的复杂性，让开发者能够专注于代码开发。其技术栈包括 FastAPI、DynamoDB、SQS 以及用于身份验证的 Clerk，所有组件共同构建了一个无缝、经济高效的后端托管解决方案。

---

## 28. 苹果MacBook Pro的DFU端口文档有误

**原文标题**: Apple's MacBook Pro DFU port documentation is wrong

**原文链接**: [https://lapcatsoftware.com/articles/2026/2/1.html](https://lapcatsoftware.com/articles/2026/2/1.html)

作者发现苹果官方文档中关于Apple silicon MacBook Pro DFU（设备固件更新）接口的说明存在错误。根据苹果的说法，搭载M4/M5芯片的14英寸MacBook Pro的DFU接口是最右侧的USB-C端口，而其他所有型号均为最左侧端口。然而，作者使用的搭载M4 Pro芯片的16英寸MacBook Pro在更新macOS时，必须将外置启动盘插入右侧端口才能成功，这与官方指南相矛盾。

在外置驱动器上安装或更新macOS时，端口选择至关重要，因为使用DFU端口会导致更新静默失败。整个过程看似正常完成，但macOS版本实际并未改变。作者将外置SSD移至其他端口后才解决问题，Michael Tsai在相关文章中也强调了这一解决方案，他同样遇到了该问题。

文章批评了这种糟糕的用户体验，指出系统未就端口问题提供明确错误提示，且软件更新过程中允许Mac进入睡眠状态，进一步延迟了更新完成时间。

---

## 29. 使用模型检查器解决圣诞老人并发难题

**原文标题**: Solvingn the Santa Claus concurrency puzzle with a model checker

**原文链接**: [https://wyounas.github.io/puzzles/concurrency/2026/01/10/how-to-help-santa-claus-concurrently/](https://wyounas.github.io/puzzles/concurrency/2026/01/10/how-to-help-santa-claus-concurrently/)

本文探讨了如何使用SPIN模型检查器及其Promela语言解决圣诞老人并发难题。该难题要求圣诞老人协调九只驯鹿或三个精灵，优先处理驯鹿，并确保整个群体共同参与，而无需圣诞老人进行调度。

作者首先展示了直观但有缺陷的解决方案如何在微妙的交错执行下失败。文中模拟了三种失败场景：圣诞老人与不完整的驯鹿群出发送礼物、圣诞老人同时咨询和送礼物，以及圣诞老人在驯鹿等待时服务精灵——这些均违反了核心约束。

受Ben-Ari启发，正确的解决方案引入了独立的“房间”进程来处理调度，从而免除了圣诞老人的计数负担。圣诞老人只需等待就绪信号，服务优先群体，并通知房间释放其成员。该设计在SPIN中使用线性时序逻辑（LTL）属性进行验证，通过穷举状态探索证明其避免了所有先前的失败情况。

关键启示在于：模型检查通过探索所有可能的交错执行，提供了严格的验证，能够发现传统测试可能遗漏的错误，并确保同步逻辑正确实现了难题的约束条件。

---

## 30. Show HN: Stelvio – 将Python项目部署至AWS

**原文标题**: Show HN: Stelvio – Ship Python to AWS

**原文链接**: [https://stelvio.dev/](https://stelvio.dev/)

**Stelvio** 是一款开源 Python 框架，旨在简化将无服务器应用程序部署到 AWS 的过程。它允许开发者直接在 Python 代码中定义云基础设施，无需使用 YAML 配置文件。

其核心承诺是通过提供智能默认值和自动化复杂任务，实现“数分钟而非数天”的应用交付。主要特性包括：
*   **基础设施即 Python 代码：** 使用 Python 类定义 AWS 资源，如 Lambda 函数、S3 存储桶、DynamoDB 表、API 网关和消息服务。
*   **自动化权限管理：** 其“链接”系统在资源（例如函数与数据库）连接时，自动配置 IAM 策略和环境变量。
*   **开发者体验：** 提供用于本地 Lambda 测试的实时开发模式、支持完全自定义覆盖，并能与现有 Python 工具链（IDE、代码检查器）集成。

该工具支持云应用所需的全套 AWS 组件，包括定时函数（Cron）、存储、数据库、消息服务（SQS/SNS）、电子邮件（SES）以及支持自定义域名路由的 REST API。

Stelvio 定位为简单脚本与复杂基础设施之间的桥梁，旨在让开发者同时获得开发速度和完全控制权，并在 Apache 2.0 许可下保持免费和开源。

---

