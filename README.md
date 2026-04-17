# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-17.md)

*最后自动更新时间: 2026-04-17 20:37:21*
## 1. 克劳德设计

**原文标题**: Claude Design

**原文链接**: [https://www.anthropic.com/news/claude-design-anthropic-labs](https://www.anthropic.com/news/claude-design-anthropic-labs)

Anthropic推出了**Claude Design**，这是一款新产品，允许用户与其AI协作创建设计、原型和演示文稿等视觉材料。该产品由**Claude Opus 4.7**模型驱动，目前以研究预览形式向Pro、Max、Team及企业版订阅用户开放。

该工具旨在帮助设计师探索更多创意，同时让非设计人员也能制作出精美的视觉作品。用户描述需求后，Claude会生成初稿，随后可通过对话、直接编辑或自定义调整滑块进行优化。其关键特性是能够学习并自动应用团队的**品牌设计系统**，以确保一致性。

Claude Design支持多种工作流程，包括创建交互式原型、线框图、演示文稿和营销素材。它可从多种来源（文档、代码、网站）导入内容，并导出为**PPTX、PDF或Canva**格式。设计作品可在组织内共享和协作编辑。项目完成后，可无缝移交至**Claude Code**进行开发实现。

公告中强调了**Canva**和**Brilliant**等早期合作伙伴的积极反馈，指出原型制作时间显著缩短，设计到生产的工作流程得到改善。该功能已包含在相关订阅计划中，企业管理员可通过组织设置启用。

---

## 2. Claude Opus 4.7每会话费用高出20–30%

**原文标题**: Claude Opus 4.7 costs 20–30% more per session

**原文链接**: [https://www.claudecodecamp.com/p/i-measured-claude-4-7-s-new-tokenizer-here-s-what-it-costs-you](https://www.claudecodecamp.com/p/i-measured-claude-4-7-s-new-tokenizer-here-s-what-it-costs-you)

Anthropic新推出的Claude Opus 4.7模型采用了不同的分词器，导致英文和代码内容的标记数量增加20%至45%（平均约增加1.325倍），而中日韩文本基本保持不变。尽管单标记价格未变，但由于提示词和缓存数据包含更多标记，实际会话成本将增加20%至30%。

此项变动的目的是提升“字面指令遵循能力”。在IFEval基准测试中，模型在严格遵循格式要求方面显示出小幅但稳定的改进（约提升5个百分点），但测试样本规模有限。

对用户而言这意味着：
*   **成本上升**：大量使用英文或代码的会话成本显著增加。
*   **速率限制消耗加快**：最高套餐用户将更快触及使用上限。
*   **缓存影响**：现有提示缓存失效，缓存数据体积增大且读取成本更高。

文章总结指出，用户正在为精准度的微小提升支付溢价，并建议按Anthropic文档中标记量增幅的上限值进行规划。

---

## 3. 所有12位登月者都因闻起来像火药味的月尘而患上了“月球花粉症”。

**原文标题**: All 12 moonwalkers had "lunar hay fever" from dust smelling like gunpowder

**原文链接**: [https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/The_toxic_side_of_the_Moon](https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/The_toxic_side_of_the_Moon)

文章探讨了月球尘埃对健康的威胁，这是未来探月任务中的重大隐忧。所有12名阿波罗宇航员都曾因附着在宇航服上、带有火药味的磨蚀性尘埃而患上“月球花粉热”，出现喉咙痛、打喷嚏和流泪等症状。

这种尘埃具有独特的危险性：由于月球表面缺乏侵蚀作用，其颗粒尖锐多棱角；太阳辐射使其带有静电，能够悬浮并轻易侵入设备与肺部。其细微的玻璃状硅酸盐成分与地球上导致矿工肺纤维化的物质相似，可深入呼吸系统并滞留数月。研究表明，它能破坏肺细胞和脑细胞。

为全面评估风险，欧洲航天局（ESA）已启动一项涉及毒理学专家的研究计划。他们正在研究模拟月尘，但要复现其尖锐特性仍具挑战。尽管月球尘埃对长期居留构成必须应对的健康威胁，但文章也指出其潜在用途——例如可加工成建材或用于提取氧气。与此同时，欧洲航天局正在开展太空肺部健康实验，为人类可持续月球任务做准备。

---

## 4. Show HN：Smol 机器——亚秒级冷启动、便携式虚拟机

**原文标题**: Show HN: Smol machines – subsecond coldstart, portable virtual machines

**原文链接**: [https://github.com/smol-machines/smolvm](https://github.com/smol-machines/smolvm)

**Smolvm** 是一款用于创建和管理轻量级、可移植 Linux 虚拟机（VM）的 CLI 工具，支持亚秒级冷启动。它通过硬件级隔离运行不可信代码，将工作负载打包成单文件可执行程序（`.smolmachine`），并维护持久化开发环境。

主要特性包括：
*   **快速便携：** 启动时间 <200 毫秒，创建跨平台、自包含的虚拟机文件，可在 macOS（Apple Silicon/Intel）和 Linux 上无依赖运行。
*   **安全隔离：** 使用虚拟机监控程序（macOS 上的 Hypervisor.framework，Linux 上的 KVM）实现强隔离。网络访问需手动启用，并可限制为特定主机。
*   **使用场景：** 代码沙箱、创建便携二进制文件、持久化开发机、通过转发主机 SSH 代理（不暴露密钥）安全使用 Git/SSH。
*   **高效节能：** 使用弹性内存（通过 virtio balloon）和空闲 vCPU 休眠以最小化资源开销。
*   **声明式配置：** 环境可通过 `Smolfile`（TOML 格式）定义。

该工具定位为容器和传统虚拟机的轻量级替代方案，为每个工作负载提供虚拟机隔离，启动速度比 QEMU 更快，并原生支持 macOS。当前限制包括需手动启用的网络（仅 TCP/UDP）和仅支持目录挂载。

---

## 5. 艾萨克·阿西莫夫：《最后的问题》（1956）

**原文标题**: Isaac Asimov: The Last Question (1956)

**原文链接**: [https://hex.ooo/library/last_question.html](https://hex.ooo/library/last_question.html)

艾萨克·阿西莫夫的《最后的问题》探讨了人类在漫长岁月中逆转熵的追求。故事始于2061年，两位技术员阿代尔和卢波夫询问超级计算机“多元真空机”是否可能逆转熵（即宇宙不可避免的热寂衰退）。多元真空机回答：**“数据不足，无法给出有意义的答案。”**

随后，叙事跨越数千年。人类遍布银河系，实现了永生，并将计算机从多元真空机演进为银河AC。在每个时代，随着恒星消亡、可用能源濒临枯竭，人类反复提出同样的问题。而AC的答案始终不变：**“数据不足，无法给出有意义的答案。”**

数万亿年后，人类最终融合为一个宇宙意识，最后一颗恒星也熄灭了。在黑暗中，存在于超空间的AC用永恒的时间思索着这个问题。它收集了时空中的所有可能数据，终于解决了熵的难题。故事以AC的胜利之举结束：**“要有光！”** 于是就有了光——暗示着AC通过一次新的创世重置了宇宙，以逆转熵的方式回答了这最后的问题。

---

## 6. NASA力量

**原文标题**: NASA Force

**原文链接**: [https://nasaforce.gov/](https://nasaforce.gov/)

NASA力量是一项与美国人事管理办公室合作推出的新型限时招聘计划，旨在为NASA的关键岗位招募职业生涯早期至中期的技术人才。该计划提供为期1至2年的定向任期职位，参与者可直接参与正在进行的航天任务。

加入者将与团队合作，围绕NASA的重点领域——包括载人航天、月球探索、航空技术及科学发现——解决复杂的现实挑战。工作采用系统化方法，推动项目从概念走向实施，涵盖月球车操作、深空物流、推进系统、航空领域人工智能/机器学习应用，以及建设可持续月球驻留基础设施等领域。

该计划强调实践贡献、与顶尖专家协作，并通过参与绩效导向的项目实现快速职业成长。它为工程师、技术专家和创新者提供了一个为期四天的专属机会，使其能够直接影响巩固美国在航空和航天领域领导地位的重要任务。

---

## 7. 柏林中学生发现特洛伊古币

**原文标题**: Middle schooler finds coin from Troy in Berlin

**原文链接**: [https://www.thehistoryblog.com/archives/75848](https://www.thehistoryblog.com/archives/75848)

**摘要：**

德国柏林一名14岁的中学生在参与考古发掘时，发现了一枚来自失落古城特内阿的古老银币。这枚硬币可追溯至公元前330年至250年之间，距今已有2000多年历史。

这一发现发生在史前与早期历史博物馆的公众推广活动期间。该学生当时正在筛选从首都市政厅附近遗址挖掘出的土壤，该地区已知曾是一处中世纪贸易定居点。这枚硬币是古希腊特内阿城罕见的“斯达特”银币，特内阿位于伯罗奔尼撒半岛。根据神话传说，特内阿由特洛伊战争后的战俘建立，曾是一座重要而繁荣的城市，但其确切位置已失传数百年。

硬币正面描绘了头戴科林斯头盔的女神雅典娜，背面则刻有带翼的飞马珀伽索斯。这种设计是科林斯及其殖民地（包括特内阿）铸造硬币的典型特征。该硬币出现在柏林，证明了古代长途贸易网络的存在——它从希腊一路流传至德国北部。

此次发现意义重大，因为这是柏林和勃兰登堡地区已知的首枚特内阿硬币。它凸显了公众参与考古的价值，并为这座直到2018年才被考古学家重新发现的城市提供了切实的物证。

---

## 8. NIST放弃丰富大多数CVE条目

**原文标题**: NIST gives up enriching most CVEs

**原文链接**: [https://risky.biz/risky-bulletin-nist-gives-up-enriching-most-cves/](https://risky.biz/risky-bulletin-nist-gives-up-enriching-most-cves/)

美国国家标准与技术研究院（NIST）宣布对其国家漏洞数据库（NVD）进行重大政策调整，表示今后仅对部分关键漏洞进行信息增强（即添加详细元数据）。这一决定是为应对多年积压的工作、预算限制以及海量新增CVE漏洞而作出的。

NIST将把增强工作重点放在三类漏洞上：网络安全与基础设施安全局（CISA）已知被利用漏洞（KEV）目录中列出的漏洞、美国联邦机构所用软件中的缺陷，以及操作系统、浏览器和网络基础设施等广义“关键软件”中的漏洞。

此项调整的主要影响包括：
*   NIST将不再提供自评的CVSS严重性评分，改为显示CVE发布机构评定的分数。批评者警告，这可能导致供应商淡化自身产品漏洞的严重性。
*   依赖NVD数据的漏洞管理公司和安全工具需要寻找替代数据源或自行进行信息增强。
*   在人工智能安全工具预计将引发漏洞发现量激增的背景下，此举被视为务实的必要措施。

该政策已于2026年4月15日生效，标志着NVD作为全面、统一的CVE详情权威来源的时代正式结束。

---

## 9. 我创办了一家3D打印公司，并运营了八个月。

**原文标题**: I built a 3D printing business and ran it for 8 months

**原文链接**: [https://www.wespiser.com/posts/2026-04-12-3D-Printing-Biz.html](https://www.wespiser.com/posts/2026-04-12-3D-Printing-Biz.html)

本文详细记录了作者历时八个月经营3D打印副业的经历，该业务专注于定制化集换式卡牌支架。一切始于邻居的委托，随后发展成处理约50笔订单的小型业务。

作者描述了产品设计初期的挑战、材料限制以及打印机维护问题，其中以包含多色波士顿凯尔特人队徽的复杂订单尤为突出。这些困难促使他优化了运营体系，包括设计标准化、采购可靠材料以及升级设备。

尽管该业务在经济上可行，创造了3666美元收入，但作者意识到其缺乏扩展性。核心工作——定制设计、打印机调试和手动组装——始终是耗时费力的“体力活”，而非自动化业务。设计工作每小时约赚25美元，考虑到软件工程主业的发展前景，作者最终选择不投入扩大家庭作坊所需的大量资金。

结论是：3D打印非常适合定制化小批量产品，但难以高效规模化。作者在认清该模式局限后选择退出，如今仅将3D打印作为个人爱好的创作工具。

---

## 10. 禁止销售精确地理位置信息

**原文标题**: Ban the sale of precise geolocation

**原文链接**: [https://www.lawfaremedia.org/article/it-is-time-to-ban-the-sale-of-precise-geolocation](https://www.lawfaremedia.org/article/it-is-time-to-ban-the-sale-of-precise-geolocation)

本文主张禁止销售精确地理位置数据，并引用了公民实验室近期关于监控工具Webloc的报告所强调的重大隐私和国家安全风险。

报告详述了目前由美国公司Penlink销售的Webloc如何聚合全球多达5亿台移动设备的数据，实现对个人的精细追踪。文件记录了美国联邦和州级执法机构以及匈牙利情报部门等外国实体对该工具的使用。作者认为，尽管此类工具具有调查价值，但在缺乏严格监管的情况下流通，不仅威胁公民自由，还构成国家安全风险——例如中国等对手可能利用相同数据。

文章同时警告了人工智能驱动的网络犯罪威胁正在加速，并概述了Gambit报告中的案例：一名黑客利用AI模型快速入侵了墨西哥政府系统。虽然AI并未催生新型攻击手段，但它极大提升了攻击速度和规模。

文章以谨慎乐观的态度结尾，指出弗吉尼亚州率先在州级层面禁止销售地理位置数据是积极的初步举措，同时提及了其他网络安全进展，例如捣毁俄罗斯僵尸网络和推出新的反钓鱼凭证。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 2 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 3 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 4 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 5 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 6 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 7 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 8 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 9 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 10 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 11 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 12 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 13 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 14 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 15 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 16 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 17 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 18 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 19 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 20 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 21 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 22 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 23 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 24 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 25 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 26 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 27 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 28 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 29 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 30 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 31 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 32 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 33 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 34 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 35 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 36 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 37 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 38 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 39 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 40 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 41 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 42 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 43 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 44 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 45 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 46 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 47 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 48 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 49 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 50 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 51 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 52 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 53 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 54 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 55 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 56 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 57 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 58 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 59 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 60 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 61 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 62 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 63 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 64 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 65 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 66 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 67 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 68 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 69 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 70 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 71 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 72 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 73 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 74 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 75 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 76 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 77 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 78 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 79 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 80 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 81 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 82 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 83 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 84 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 85 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 86 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 87 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 88 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 89 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 90 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 91 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 92 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 93 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 94 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 95 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 96 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 97 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 98 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 99 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 100 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 101 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 102 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 103 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 104 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 105 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 106 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 107 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 108 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 109 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 110 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 111 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 112 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 113 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 114 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 115 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 116 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 117 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 118 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 119 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 120 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 121 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 122 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 123 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 124 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 125 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 126 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 127 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 128 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 129 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 130 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 131 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 132 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 133 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 134 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 135 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 136 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 137 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 138 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 139 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 140 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 141 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 142 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 143 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 144 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 145 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 146 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 147 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 148 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 149 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 150 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 151 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 152 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 153 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 154 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 155 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 156 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 157 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 158 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 159 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 160 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 161 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 162 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 163 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 164 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 165 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 166 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 167 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 168 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 169 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 170 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 171 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 172 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 173 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 174 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 175 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 176 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 177 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 178 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 179 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 180 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 181 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 182 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 183 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 184 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 185 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 186 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 187 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 188 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 189 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 190 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 191 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 192 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 193 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 194 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 195 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 196 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 197 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 198 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 199 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 200 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 201 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 202 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 203 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 204 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 205 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 206 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 207 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 208 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 209 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 210 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 211 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 212 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 213 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 214 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 215 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 216 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 217 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 218 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 219 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 220 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 221 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 222 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 223 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 224 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 225 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 226 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 227 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 228 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 229 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 230 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 231 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 232 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 233 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 234 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 235 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 236 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 237 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 238 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 239 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 240 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 241 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 242 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 243 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 244 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 245 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 246 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 247 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 248 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 249 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 250 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 251 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 252 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 253 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 254 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 255 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 256 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 257 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 258 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 259 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 260 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 261 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 262 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 263 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 264 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 265 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 266 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 267 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 268 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 269 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 270 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 271 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 272 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 273 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 274 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 275 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 276 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 277 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 278 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 279 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 280 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 281 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 282 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 283 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 284 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 285 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 286 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 287 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 288 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 289 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 290 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 291 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 292 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 293 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 294 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 295 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 296 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 297 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 298 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 299 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 300 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 301 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 302 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 303 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 304 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 305 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 306 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 307 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 308 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 309 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 310 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 311 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 312 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 313 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 314 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 315 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 316 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 317 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 318 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 319 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 320 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 321 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 322 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 323 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 324 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 325 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 326 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 327 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 328 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 329 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 330 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 331 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 332 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 333 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 334 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 335 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 336 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 337 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 338 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 339 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 340 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 341 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 342 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 343 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 344 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 345 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 346 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 347 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 348 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 349 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 350 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 351 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 352 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 353 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 354 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 355 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 356 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 357 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 358 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 359 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 360 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 361 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 362 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 363 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 364 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 365 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 366 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 367 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 368 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 369 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 370 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 371 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 372 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 373 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 374 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 375 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 376 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 377 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 378 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 379 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 380 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 381 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 382 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 383 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 384 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 385 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 386 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 387 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 388 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 389 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 390 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 391 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
