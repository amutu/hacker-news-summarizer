# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-22.md)

*最后自动更新时间: 2026-05-22 20:32:29*
## 1. 项目Glasswing：初步进展更新

**原文标题**: Project Glasswing: An Initial Update

**原文链接**: [https://www.anthropic.com/research/glasswing-initial-update](https://www.anthropic.com/research/glasswing-initial-update)

2026年5月下旬，Anthropic发布了玻璃翼项目的最新进展。这是一项旨在防范日益强大的AI模型威胁关键软件安全的合作计划。通过其先进模型Claude Mythos预览版，Anthropic与约50个合作伙伴在首个月内就发现了全球最重要软件中超过一万个高危或严重漏洞。

关键成果包括：Cloudflare发现2000个漏洞，Mozilla在Firefox中检测到271个漏洞，英国AI安全研究所报告称Mythos预览版是首个完整通过两项网络攻击模拟测试的模型。在开源软件领域，Mythos预览版已在1000多个项目中识别出约6200个高危或严重漏洞，经评估确认其中90.6%的发现结果为真阳性。

然而该项目面临重大瓶颈：漏洞发现速度已超越人工分类、修复和部署补丁的能力。高危漏洞平均需要两周才能完成修补，维护人员已要求放缓披露频率。为此Anthropic发布了Claude Security（漏洞扫描工具）和面向安全专业人士的网络验证计划，并与开源安全基金会旗下的Alpha-Omega项目合作支援维护人员。

文章最后建议软件开发人员缩短补丁周期，网络防御者加快部署进度，强调尽管AI驱动的安全工具发展迅猛，整个生态系统仍需适应管理由此产生的大量发现成果。

---

## 2. 日本企业为何涉足如此多元化的业务

**原文标题**: Why Japanese companies do so many different things

**原文链接**: [https://davidoks.blog/p/why-japanese-companies-do-so-many](https://davidoks.blog/p/why-japanese-companies-do-so-many)

像Toto、京瓷和雅马哈这样的日本企业，以其极致的多元化闻名——Toto既生产马桶也生产半导体，雅马哈则横跨钢琴、摩托车和工业机器人等多个领域。与美国企业注重聚焦、德国企业擅长专精不同，日本企业在众多互不关联的高精度领域表现卓越。本文认为，这种结构并非偶然，而是源于一套独特的互补性组织实践体系。

借鉴经济学家米尔格罗姆和罗伯茨（1990）的研究，本文阐释了企业实践具有互补性：采用其中一项会提升其他项的价值，从而形成协调一致的"实践包"。日本企业的实践包由以下要素构成：终身雇佣制（仅招聘应届毕业生，避免裁员）、基于资历的晋升机制、适度的薪酬差距以及强烈的企业忠诚度。这套体系鼓励对员工技能培养和长期创新的投入，使企业能够成功涉足多元化、高科技的领域。

相比之下，美国模式更注重股东价值、专业化和劳动力流动。日本模式虽然不利于快速裁员时的灵活性，却高度适应其环境，培养出在多个复杂领域脱颖而出的独特能力。因此，日本企业的多元化并非古怪的异象，而是其内部组织逻辑的必然结果。

---

## 3. 美国研究人员与外国合作者发表成果面临新限制

**原文标题**: U.S. researchers face new restrictions on publishing with foreign collaborators

**原文链接**: [https://www.science.org/content/article/u-s-researchers-face-new-restrictions-publishing-foreign-collaborators](https://www.science.org/content/article/u-s-researchers-face-new-restrictions-publishing-foreign-collaborators)

**摘要：**  
美国研究人员在与外国合作者（尤其是来自中国的合作者）合作时，正面临更严格的联邦指导方针带来的新出版限制。这些变化源于日益增长的国家安全担忧，美国国立卫生研究院（NIH）和能源部（DOE）等机构收紧了对外国 affiliations 和资金来源的披露要求。  

要点包括：  
- 研究人员在提交涉及某些外国合作的论文前必须获得事先批准，尤其是涉及敏感技术或两用研究时。  
- 部分期刊要求作者证明遵守美国出口管制法律，高校也在更严格地审查外国合作关系。  
- 这些限制旨在防止知识产权未经授权转移以及研究诚信违规行为（如未披露外国资助）。  
- 批评者认为这些规定增加了行政负担，抑制了国际科学合作，并可能对华裔美国研究人员造成不成比例的影响。  
- 支持者则认为这能保护美国创新和国家安全免受不当外部影响。  

总体而言，文章凸显了开放科学交流与国家安全需求之间日益加剧的紧张关系，研究人员正面临更为复杂的合规环境。

---

## 4. 开源看板桌面应用，可在每张卡片上并行运行代理。

**原文标题**: Open source Kanban desktop app that runs parallel agents on every card

**原文链接**: [https://www.kanbots.dev/](https://www.kanbots.dev/)

**摘要：**

本文介绍了一款开源看板桌面应用，其独特之处在于引入了并行处理能力。核心创新在于能够对看板中的每张卡片同时运行自主“代理”。

主要功能包括：
- **并行执行：** 用户可派遣代理同时处理多张卡片，且活跃代理数量无上限。
- **Git 工作树集成：** 每个代理在其独立的 Git 工作树中运行，自动创建名为 `kanbots/issue-N`（其中 N 为卡片编号）的分支。这为每项任务确保了独立且版本可控的环境。
- **实时看板更新：** 看板会随代理进展实时更新。用户可实时观察运行推进、决策制定及成本累积的过程。

该系统将项目管理流程可视化与自动化并行代码开发有效结合。团队可同时处理多个问题或功能，通过 Git 分支实现全程可追溯，并在单一界面中实时监控进度与资源消耗。

---

## 5. 自行车干预对福祉影响的范畴综述

**原文标题**: A scoping review of bicycling interventions’ impacts on well-being

**原文链接**: [https://www.frontiersin.org/journals/sports-and-active-living/articles/10.3389/fspor.2026.1807791/full](https://www.frontiersin.org/journals/sports-and-active-living/articles/10.3389/fspor.2026.1807791/full)

本综述整合了87项干预研究，系统考察骑行对心理、社会、情感及认知幸福感的影响。研究团队检索了EBSCOhost、ProQuest、PsycINFO及PubMed等数据库，涵盖2004年至2024年间的出版物。纳入研究涉及19个国家、所有年龄段，以及临床与非临床人群。

多数研究采用急性室内骑行干预，以认知功能为主要测量指标。综合结果表明，骑行干预对幸福感具有积极影响，包括改善情绪、缓解抑郁症状、增强社会联结及提升认知功能。这些益处在多阶段户外干预中尤为显著。情感与认知效果因干预类型、情境及人群而异。

该综述揭示了文献空白：现有研究多聚焦于短期实验室骑行，生态效度有限。作者强调需推进转化性社区研究，探索骑行的独特属性——如户外体验、社交契机及有意义的日常仪式——以促进全生命周期的整体幸福感。关键理论框架包括自我决定理论与生物心理社会模型。总体而言，本综述将骑行定位为超越身体健康的、可及的多维健康促进活动。

---

## 6. 1940航空终点站博物馆开始清算

**原文标题**: 1940 Air Terminal Museum Begins Liquidation

**原文链接**: [https://www.1940airterminal.org/news/liquidation-of-simulators](https://www.1940airterminal.org/news/liquidation-of-simulators)

**摘要：**位于德克萨斯州休斯顿的1940航空航站楼博物馆正处置三台全尺寸、全动态飞行模拟器：一台西南航空波音737-200、一台比奇空中国王200和一台豪客700。每台售价20,000美元，附带相关计算机机柜和手册。这些模拟器于2010年左右捐赠，在博物馆从未通电启动；按现状出售，不提供任何保修，且由于年代久远及FlightSafety公司拆除了专属部件，很可能无法运行。737体积最大，阻碍了另外两台模拟器的移出，必须先用一台载重至少22,700磅的大型叉车将其移走。买家需自行安排所有运输和物流，包括为车辆安排进入霍比机场空侧区的 escort。博物馆必须在六月底前腾空大楼，因此需迅速行动。感兴趣者可前往休斯顿现场查看（需签署免责声明）或通过视频通话了解详情，并通过电子邮件联系info@1940airterminal.org。

---

## 7. Deno 2.8

**原文标题**: Deno 2.8

**原文链接**: [https://deno.com/blog/v2.8](https://deno.com/blog/v2.8)

**Deno 2.8 版本发布摘要**

Deno 2.8 是目前为止最大的次要版本，引入了多个新的子命令、默认的 npm 前缀处理、重大 Node.js 兼容性改进以及显著的性能提升。

**新子命令：**
- **`deno audit fix`**：自动将有漏洞的 npm 包升级到已修补版本。
- **`deno bump-version`**：更新 `deno.json` 或 `package.json` 中的版本字段，支持工作区和 Conventional Commits 集成。
- **`deno ci`**：针对 CI 的可复现安装命令，使用锁文件并在不匹配时失败。
- **`deno pack`**：将 Deno/JSR 项目构建为可发布到 npm 的 tarball 包，包含转译后的 JS、声明文件和重写的标识符。
- **`deno transpile`**：将 TS/JSX/TSX 中的类型去除，转译为纯 JavaScript，无需打包或配置。
- **`deno why`**：解释为什么安装了某个包，追踪 npm 和 JSR 包的依赖树。

**主要变化：**
- **npm 默认前缀**：`deno add` 和 `deno install` 现在将无前缀的名称视为 npm 包，与 Node 开发者的操作习惯保持一致。
- **Node.js 兼容性**：针对 Node 测试套件的通过率从 42% 跃升至 76.4%（4,457 项测试中通过 3,405 项），超过了 Bun 的 40.6%。
- **性能**：冷启动 npm 安装速度提升 3.66 倍，`node:http` 吞吐量翻倍，`node:buffer` 的 base64 编码速度提升 3.07 倍，`node:crypto` 的 scrypt 操作速度提升 2.12 倍。
- **`import defer`**：支持 TC39 的延迟模块评估提案，将执行推迟到导出被访问时。

---

## 8. 反重力2.0登顶OpenSCAD建筑3D大语言模型基准测试

**原文标题**: Antigravity 2.0 Tops the OpenSCAD Architectural 3D LLM Benchmark

**原文链接**: [https://modelrift.com/blog/openscad-llm-benchmark/](https://modelrift.com/blog/openscad-llm-benchmark/)

**概要：**

本文提出一项基准测试，评估AI编程工具在OpenSCAD中生成万神殿参数化3D模型的能力。该任务测试空间几何推理能力，因为OpenSCAD使用基于文本的代码（布尔运算、循环、圆柱体）而非UI操作。

**关键结果（测试6个系统）：**

1.  **Cursor 3.5 / Composer 2.5** – 速度最快但输出最弱；比例粗糙且细节不足（质量：1.4/5）。
2.  **Codex 5.5 High** – 细节丰富（包括横梁上的铭文），但最终STL导出不匹配拉低评分（3.0/5）。
3.  **Claude Code 2.1 / Opus 4.7** – 结构优于Cursor，但单色（3.0/5）。
4.  **Claude Code 2.1 / Sonnet 4.6** – 最干净的自主批量结果，比例均衡，但速度最慢（3.4/5）。
5.  **Google Antigravity 2.0 / Gemini 3.5 Flash High** – 最佳自主结果（4.5/5）。使用真实万神殿尺寸，包含内部藻井天花板图案（代理中唯一）。耗时约12分钟。
6.  **ModelRift / Gemini Flash 3.0** – 最佳非自主结果（3.8/5）。采用人在回路标注工作流进行迭代视觉反馈。耗时约10分钟。

**结论：** 搭载Gemini 3.5 Flash的Antigravity 2.0通过搜索实际尺寸并实现复杂内部细节，为自主空间代码生成设立了新标杆。Codex展现了强大的设计意图但遭受导出问题。文章强调，OpenSCAD因其文本优先、参数化和可检查的特性，自然适合LLM生成几何模型。

---

## 9. Bun 的支持现已受限且已弃用

**原文标题**: Bun support is now limited and deprecated

**原文链接**: [https://github.com/yt-dlp/yt-dlp/issues/16766](https://github.com/yt-dlp/yt-dlp/issues/16766)

**摘要：**

yt-dlp 宣布，出于兼容性与安全方面的考量，对 Bun 作为 JavaScript 运行时的支持现已受限并予以弃用。自下一版本起，仅支持 Bun 1.2.11 至 1.3.14 版本。

最低版本要求从 1.0.31 提升至 1.2.11，因早期版本会忽略 ejs 锁定文件，在近期 npm 供应链攻击事件中构成安全风险。此外，测试套件无法在 1.2.11 之前的 Bun 版本上运行。

最高支持版本设为 1.3.14，原因是 Bun 最近已使用 Claude（通过“氛围编码”方式）用 Rust 重写，脱离了原有的 Zig 代码库。开发者认为这一转变可能成为未来的维护负担。

Bun 支持现已弃用，这意味着若维持兼容性过于繁重，yt-dlp 保留完全取消支持的权利。一则置顶评论指出，大多数留言的用户可能是受外部关注（如 Hacker News）驱动，而非真正在 yt-dlp 中使用 Bun。

---

## 10. 罗伯特·X·克林吉利恢复博客更新

**原文标题**: Robert X Cringely is back to blogging

**原文链接**: [https://www.cringely.com/](https://www.cringely.com/)

这是罗伯特·X·克林奇利（Robert X. Cringely）在沉寂一段时间后重新开始撰写的博客合集。要点包括：

1.  **回归博客：** 克林奇利宣布，在停更三年（自2022年起）后，他重新开始写作。他此前一直忙于联合创办一家名为2Brains的人工智能公司，相关专利已提交，工作仍在继续。

2.  **Apple Vision Pro：** 他认为这款头显是“副业”（hobby），而非主要产品——这与史蒂夫·乔布斯对初代Apple TV的描述如出一辙。克林奇利指出，无论是苹果公司内部还是媒体，都没有人愿意承认这一点。

3.  **人工智能与摩尔定律：** 他讨论了摩尔定律如何从光刻技术观察演变为经济学法则（芯片成本每18个月在单位面积上减半），并强调人工智能的进步如今正由芯片经济学驱动。

4.  **ChatGPT的平庸：** 克林奇利批评了人工智能生成的内容，并用一个关于他儿子科尔（Cole）的ChatGPT撰写的推荐信的个人轶事作为例子。他认为输出内容“轻巧但空洞”，缺乏实质。

5.  **硅谷裁员：** 回顾自己在硅谷45年的经历，他将当前Meta和Twitter的裁员置于历史背景中，认为这是历史模式的一部分，并指出许多喧嚣的声音缺乏历史感。他否认当前的经济混乱是史无前例的观点。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 2 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 3 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 4 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 5 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 6 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 7 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 8 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 9 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 10 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 11 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 12 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 13 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 14 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 15 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 16 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 17 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 18 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 19 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 20 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 21 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 22 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 23 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 24 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 25 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 26 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 27 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 28 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 29 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 30 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 31 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 32 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 33 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 34 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 35 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 36 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 37 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 38 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 39 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 40 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 41 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 42 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 43 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 44 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 45 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 46 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 47 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 48 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 49 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 50 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 51 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 52 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 53 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 54 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 55 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 56 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 57 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 58 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 59 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 60 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 61 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 62 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 63 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 64 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 65 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 66 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 67 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 68 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 69 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 70 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 71 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 72 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 73 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 74 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 75 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 76 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 77 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 78 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 79 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 80 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 81 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 82 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 83 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 84 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 85 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 86 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 87 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 88 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 89 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 90 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 91 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 92 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 93 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 94 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 95 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 96 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 97 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 98 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 99 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 100 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 101 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 102 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 103 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 104 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 105 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 106 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 107 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 108 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 109 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 110 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 111 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 112 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 113 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 114 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 115 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 116 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 117 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 118 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 119 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 120 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 121 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 122 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 123 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 124 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 125 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 126 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 127 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 128 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 129 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 130 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 131 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 132 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 133 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 134 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 135 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 136 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 137 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 138 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 139 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 140 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 141 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 142 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 143 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 144 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 145 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 146 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 147 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 148 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 149 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 150 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 151 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 152 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 153 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 154 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 155 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 156 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 157 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 158 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 159 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 160 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 161 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 162 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 163 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 164 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 165 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 166 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 167 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 168 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 169 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 170 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 171 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 172 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 173 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 174 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 175 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 176 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 177 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 178 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 179 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 180 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 181 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 182 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 183 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 184 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 185 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 186 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 187 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 188 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 189 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 190 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 191 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 192 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 193 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 194 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 195 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 196 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 197 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 198 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 199 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 200 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 201 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 202 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 203 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 204 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 205 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 206 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 207 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 208 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 209 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 210 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 211 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 212 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 213 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 214 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 215 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 216 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 217 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 218 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 219 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 220 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 221 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 222 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 223 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 224 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 225 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 226 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 227 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 228 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 229 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 230 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 231 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 232 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 233 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 234 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 235 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 236 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 237 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 238 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 239 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 240 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 241 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 242 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 243 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 244 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 245 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 246 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 247 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 248 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 249 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 250 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 251 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 252 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 253 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 254 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 255 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 256 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 257 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 258 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 259 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 260 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 261 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 262 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 263 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 264 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 265 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 266 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 267 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 268 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 269 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 270 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 271 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 272 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 273 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 274 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 275 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 276 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 277 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 278 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 279 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 280 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 281 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 282 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 283 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 284 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 285 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 286 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 287 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 288 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 289 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 290 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 291 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 292 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 293 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 294 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 295 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 296 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 297 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 298 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 299 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 300 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 301 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 302 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 303 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 304 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 305 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 306 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 307 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 308 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 309 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 310 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 311 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 312 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 313 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 314 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 315 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 316 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 317 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 318 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 319 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 320 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 321 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 322 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 323 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 324 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 325 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 326 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 327 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 328 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 329 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 330 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 331 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 332 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 333 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 334 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 335 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 336 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 337 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 338 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 339 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 340 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 341 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 342 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 343 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 344 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 345 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 346 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 347 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 348 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 349 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 350 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 351 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 352 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 353 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 354 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 355 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 356 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 357 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 358 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 359 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 360 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 361 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 362 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 363 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 364 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 365 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 366 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 367 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 368 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 369 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 370 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 371 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 372 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 373 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 374 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 375 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 376 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 377 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 378 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 379 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 380 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 381 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 382 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 383 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 384 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 385 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 386 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 387 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 388 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 389 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 390 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 391 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 392 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 393 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 394 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 395 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 396 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 397 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 398 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 399 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 400 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 401 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 402 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 403 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 404 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 405 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 406 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 407 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 408 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 409 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 410 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 411 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 412 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 413 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 414 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 415 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 416 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 417 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 418 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 419 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 420 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 421 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 422 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 423 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 424 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 425 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 426 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
