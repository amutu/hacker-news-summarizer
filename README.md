# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-07.md)

*最后自动更新时间: 2026-06-07 20:33:28*
## 1. Linear 为何如此快速？技术解析

**原文标题**: How's Linear so fast? A technical breakdown

**原文链接**: [https://performance.dev/how-is-linear-so-fast-a-technical-breakdown](https://performance.dev/how-is-linear-so-fast-a-technical-breakdown)

本文解析了Linear如何通过颠覆传统Web应用架构实现极速体验。其核心是**本地优先同步引擎**：浏览器IndexedDB作为UI数据库。用户更新问题时，变更会即时作用于内存存储（MobX），UI同步重渲染，随后通过WebSocket异步同步至服务器，彻底消除加载转圈和网络延迟。

为实现**首次加载秒开**，Linear采用了多项技术：
1. **激进代码拆分**：JavaScript被拆分为数百个路由级代码块，每个npm包独立成供应商文件以便精细缓存
2. **模块预加载**：`<head>`标签并行预加载关键代码块，避免瀑布式请求
3. **Service Worker**：首屏加载后后台缓存完整应用（1200+静态资源），支持离线使用和跳过网络导航
4. **字体加载优化**：单变量字体Inter配合`font-display: swap`及预加载标签的CORS属性，避免文本不可见或重复请求
5. **内联应用壳**：关键CSS内联至`<head>`，实现加载状态即时渲染，消除外部样式表请求

其他亮点包括：放弃旧浏览器支持（无polyfill、ES5转译）、乐观更新作为高阶设计原则、精简技术栈（React、MobX、Postgres、TypeScript）无需边缘数据库或React服务端组件。核心启示：对用户隐藏网络请求，并在后台激进预加载。

---

## 2. 从零开始：戒毒、出狱与重罪之后的重建

**原文标题**: Building from Zero After Addiction, Prison, and a Felony

**原文链接**: [https://gavinray97.github.io/blog/building-from-zero-after-addiction-prison-felony](https://gavinray97.github.io/blog/building-from-zero-after-addiction-prison-felony)

加文·雷讲述了自己从入狱和吸毒成瘾到成功从事科技行业的历程。14岁时，他沉迷安非他命，开始贩毒，被判处两年最高安全级别青少年监禁。获释后，他短暂就读社区大学，却又重操旧业贩毒，导致在18至19岁时再次被捕，成为重罪犯。

在县监狱服刑期间，他看到一篇报纸文章，提到一家科技公司为高危青少年提供实习机会。进入工作释放项目后，他走进那家公司办公室，被聘为全栈网页开发实习生，后来还出现在后续报道中。尽管迎来突破，他再次陷入毒瘾，丢了工作，最终一无所有——无家可归、身无分文，与妻子寄居在朋友家的空房间里。

跌入"人生谷底"后，他开始戒瘾。他在洗碗时，妻子辛苦地送货。在妻子的劝说下，他辞去工作，专心寻找科技行业的工作。在因"不收重罪犯"政策被八家公司撤回录用后，一家迈阿密的小初创公司以5万美元年薪雇了他。在那里，他发现了开源工具Hasura，深入参与其社区，最终入职该公司——薪资翻倍。他向创始人坦白了自己的重罪记录，对方接纳了他。

雷强调，他的康复需要运气、帮助，以及那些愿意不看他案底的人。他鼓励处境相似的读者不要放弃，并呼吁招聘者能超越背景审查。

---

## 3. 从IBM 604模块启动：1948年的电子计算器

**原文标题**: Powering up a module from the IBM 604: an electronic calculator from 1948

**原文链接**: [https://www.righto.com/2026/06/ibm-604-thyraton-tube-module.html](https://www.righto.com/2026/06/ibm-604-thyraton-tube-module.html)

本文介绍了IBM 604型电子计算打孔机（1948年）及其创新的可插拔管模块。604型连接了机电制表机和电子计算机：它比房间大小的计算机更小、更便宜（月租金550美元），使用了1250个真空管，每秒可执行多达60次操作，包括乘法和除法。该机型共生产了5600多台。

其关键创新在于标准化可插拔模块——每个模块在一个紧凑的三维封装内包含一个真空管、电阻器和电容器。这些模块简化了制造、维护和修理过程，并曾在IBM广告中展示。604型通过插线板编程，而非存储程序，但其成功为后来的IBM计算机（如650型）铺平了道路。

本文重点介绍了一个闸流管模块（型号2D21）。与普通真空管不同，闸流管内部含有少量氙气。当受到微小栅极信号触发时，气体电离，允许大电流通过。关键在于，栅极无法切断电流；该管会保持导通状态，直到电源被切断，类似于可控硅整流器。作者通过用该模块控制灯泡演示了这一原理：一个按钮触发点亮，另一个按钮切断电源使其熄灭。604型使用闸流管来驱动继电器和打孔卡电磁铁。

---

## 4. Silurus/ooxml：在浏览器中渲染的像素级精确Office文档

**原文标题**: Silurus/ooxml: Pixel-faithful Office documents, rendered in the browser

**原文链接**: [https://github.com/yukiyokotani/office-open-xml-viewer](https://github.com/yukiyokotani/office-open-xml-viewer)

本文介绍 **Silurus/ooxml**，这是一款基于浏览器的 Office Open XML 文档（DOCX、XLSX、PPTX）查看器，能够将文档渲染为像素级精确的 HTML Canvas 元素输出。核心要点如下：

**架构**：Rust 解析器编译为 WebAssembly (WASM) 进行解析，而 TypeScript 渲染器在主线程上使用 Canvas 2D API。解析在 Web Worker 中运行，渲染保留在主线程以确保精确的字体处理。

**安装**：可通过 npm 获取 `@silurus/ooxml`（仅限 ESM）。包体积经过优化——仅导入所需格式可避免冗余代码，可选数学引擎（MathJax + STIX Two Math，约 3 MB）支持摇树优化。

**各格式核心特性**：
- **DOCX**：页面、页眉/页脚、表格、图片、公式（可选）、修订标记、脚注
- **XLSX**：多工作表、格式设置、公式、图表、迷你图、条件格式
- **PPTX**：支持完整演示功能的幻灯片

**使用方式**：提供简洁的 API，包含 `DocxViewer`、`XlsxViewer`、`PptxViewer` 类。支持无头引擎以自定义 UI 组合。提供 React、Vue、Angular、Svelte、SolidJS 和 Qwik 的框架示例。

**值得关注**：整个代码库由 Claude AI 通过迭代提示生成——不存在任何人工编写的应用程序代码。

---

## 5. Linux和Unix系统中lost+found文件夹的作用是什么？(2014)

**原文标题**: What is the purpose of the lost+found folder in Linux and Unix? (2014)

**原文链接**: [https://unix.stackexchange.com/questions/18154/what-is-the-purpose-of-the-lostfound-folder-in-linux-and-unix](https://unix.stackexchange.com/questions/18154/what-is-the-purpose-of-the-lostfound-folder-in-linux-and-unix)

以下是文章的简明总结：

`/lost+found` 目录是 Linux 和 Unix 系统（特别是 ext2、ext3、ext4 及部分 BSD 文件系统）中 `fsck`（文件系统检查）工具使用的一种结构。其用途是存储 `fsck` 在修复文件系统时恢复的数据片段或完整文件，但这些文件没有可识别的名称或原始位置。

**关键要点：**
- **成因：** 该系统目录在系统崩溃、断电或文件系统损坏后变得相关。重启时，`fsck` 会扫描不一致性，可能发现不再链接到任何文件名的索引节点（数据块）。这些文件否则将丢失。
- **恢复过程：** `fsck` 将这些孤立文件重新链接到 `lost+found` 目录中，并以它们的索引节点号命名。
- **交互：** 通常用户无需与其交互。如果文件出现在其中，则表示文件系统损坏。用户可以检查这些文件是否包含可恢复数据，但通常数据不完整或已损坏。
- **特殊性质：** 该目录预分配了保留空间供 `fsck` 使用。如果删除，应使用 `mklost+found`（而非 `mkdir`）重新创建。
- **建议：** 健康的系统中 `lost+found` 目录为空。在其中找到的文件通常是已标记为删除（但被进程打开）的残留文件，或从损坏文件系统中抢救出的文件。

---

## 6. 你绝对猜不到是谁制造了第一部无线电话

**原文标题**: You'll never guess who made the first wireless telephone

**原文链接**: [https://signoregalilei.com/2026/05/31/youll-never-guess-who-made-the-first-wireless-telephone/](https://signoregalilei.com/2026/05/31/youll-never-guess-who-made-the-first-wireless-telephone/)

**摘要：**  
本文揭示，被广泛认为是1876年电话发明者的亚历山大·格拉汉姆·贝尔，还在1880年发明了首台无线电话——“光电话”，比古列尔莫·马可尼的首次无线电演示早了15年。贝尔与合作者查尔斯·萨姆纳·坦特通过一面随声音振动的薄镜反射阳光测试该设备。光束被抛物面镜捕获后射向硒电池，该电池随光照变化改变电阻，将光束重新转化为声音。测试在华盛顿特区成功传输超过700英尺。尽管贝尔引以为傲——他甚至想给女儿取名“光电话”——该发明因依赖晴朗天气和精确对准而未获广泛普及。但它在两次世界大战中作为安全通信方式获得特殊军事用途，因为拦截需直接位于传输路径上。光电话的真正遗产在一个世纪后随光纤技术显现，该技术利用光实现高带宽、远距离通信。值得注意的是，首条跨大西洋光纤电缆TAT-8（1988年）由贝尔实验室设计。

---

## 7. 克隆森海塞尔BA2015电池组

**原文标题**: Cloning a Sennheiser BA2015 battery pack

**原文链接**: [https://blog.brixit.nl/cloning-a-sennheiser-ba2015-accu-pack/](https://blog.brixit.nl/cloning-a-sennheiser-ba2015-accu-pack/)

**摘要：**本文对森海塞尔BA2015电池组提出批评，该电池组是用于为其无线麦克风充电底座供电的必需配件。作者认为，这款本质上仅由两节标准镍氢AA电池和一个成本不足1美元的低价NTC温度传感器构成的电池组，售价却高达80至100美元，定价严重虚高。该传感器的唯一实际功能是防止对不可充电电池进行充电。市面上虽有价格低廉得多的第三方替代品，但作者仍尝试从零开始自制一个。

在暴力拆解原装电池组后，作者逆向还原了其设计：两节电池通过金属片连接，NTC传感器焊接在其中一节电池上。他们利用OpenSCAD软件设计了一个3D打印外壳，并选择侧向打印以增强强度。关键改造包括使用弯曲的回形针作为内部电池连接片，以及用磁铁作为正极端子触点。

作者总结称，虽然可以制作出功能完备的仿制品，但其耐用性甚至不如廉价的第三方产品，且投入的劳动力使其不具备实用性。不过，作者强调，森海塞尔的高定价毫无道理，尤其是考虑到市面上已有价格亲民的第三方替代品。文中附有外壳设计的OpenSCAD代码。

---

## 8. 与未竟之梦和解

**原文标题**: Making Peace with Your Unlived Dreams

**原文链接**: [https://nik.art/making-peace-with-your-unlived-dreams/](https://nik.art/making-peace-with-your-unlived-dreams/)

文章探讨了如何接纳并与未曾实现的梦想和解，作者以自身因膝盖问题未能成为滑雪者的遗憾为例。尽管最初感到沮丧，但作者意识到人生短暂，无法追逐每一个热爱——他还想学功夫、提升游戏技巧、重温《游戏王》、掌握八门外语，然而时间却被工作、人际关系和基本责任占据。即便中了彩票，也无法换来足够的时间。多年过去，他发现那份渴望逐渐淡去，取而代之的是满足与接纳：“你是一名作家。你在当下有该做的事，这就足够了。”核心启示在于：运用想象力去享受梦想，无需非要将其化为现实——观看视频、阅读、与素未谋面的英雄相伴。不必怨恨未竟的志向，而是与之和解。生命只给予我们有限的体验，但通过审慎选择专注的方向，我们便实现了最重要的使命。

---

## 9. 我的自动化疑问开发流程

**原文标题**: My automated doubt development process

**原文链接**: [https://www.alexself.dev/blog/automated-doubt](https://www.alexself.dev/blog/automated-doubt)

作者描述了一个结构化的、重新建立信任的开发流程，利用AI子代理通过多角度反复“质疑”来实现自动化。

**第一阶段——设计：** 从一份规格说明开始。三个智能体（实施前架构师、文档验证器、假设挖掘器）对规格说明进行审查，找出漏洞、隐藏假设和质量问题。对于范围更大的项目，会加入更多智能体（差距分析器、隐含完整性检测器、歧义映射器）进一步完善规格说明。人工操作员审核最终规格说明，并创建一份配套检查清单。

**第二阶段——开发：** 主Claude终端智能体根据规格说明和检查清单构建项目。由于过去的信任问题，作者避免使用子智能体编写代码。开发完成后，一个实施后工作流（代码验证器、类型安全验证器、测试架构师等）会迭代运行，生成问题清单（通常为15–35项），并在后续轮次中逐一解决，直至达到质量标准。

**第三阶段——收尾与发布：** 最终发布工作流（包括代码审计器、焦虑解读器、API契约验证器、发布就绪验证器）确认软件已准备好发布，通常需要1–2轮以上的迭代。

该流程对令牌消耗较大，对小型项目而言显得过度设计，但对于复杂项目则非常有价值。作者建议从**假设挖掘器**智能体开始，因为它普遍实用。归根结底，质量是工件、智能体与操作员判断之间主观趋同的结果。该流程源于缺乏信任，最终演变成了一种“信任信号”。

---

## 10. 莱顿人工智能与数学宣言

**原文标题**: Leiden Declaration on Artificial Intelligence and Mathematics

**原文链接**: [https://www.lms.ac.uk/news/leiden-declaration-on-ai-and-mathematics](https://www.lms.ac.uk/news/leiden-declaration-on-ai-and-mathematics)

**摘要：关于人工智能与数学的莱顿宣言**

《莱顿宣言》发布于2026年6月，源于2025年的一次研讨会，旨在应对人工智能在数学研究中日益广泛的应用。宣言概述了AI的应用领域（如证明形式化），同时对其对现有实践的影响提出了担忧。

关键问题包括自动化结果的可靠性、专有模型输出的归属、出版与同行评审流程的变化，以及商业组织的作用。

宣言针对不同群体提出了建议：
- **研究人员：** 披露AI使用情况，对准确性负责，并引用先前工作。
- **专业机构与资助方：** 制定关于AI在出版与评审中的政策，并维护审查标准。
- **政策制定者：** 处理监管问题，投资公共基础设施，并借助专家意见评估AI相关主张。

该文件旨在引导AI负责任地融入数学领域，同时确保严谨性与透明度。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 2 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 3 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 4 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 5 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 6 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 7 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 8 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 9 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 10 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 11 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 12 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 13 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 14 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 15 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 16 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 17 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 18 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 19 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 20 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 21 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 22 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 23 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 24 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 25 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 26 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 27 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 28 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 29 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 30 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 31 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 32 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 33 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 34 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 35 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 36 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 37 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 38 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 39 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 40 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 41 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 42 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 43 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 44 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 45 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 46 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 47 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 48 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 49 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 50 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 51 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 52 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 53 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 54 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 55 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 56 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 57 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 58 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 59 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 60 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 61 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 62 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 63 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 64 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 65 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 66 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 67 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 68 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 69 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 70 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 71 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 72 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 73 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 74 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 75 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 76 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 77 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 78 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 79 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 80 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 81 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 82 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 83 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 84 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 85 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 86 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 87 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 88 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 89 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 90 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 91 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 92 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 93 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 94 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 95 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 96 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 97 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 98 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 99 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 100 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 101 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 102 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 103 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 104 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 105 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 106 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 107 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 108 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 109 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 110 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 111 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 112 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 113 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 114 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 115 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 116 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 117 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 118 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 119 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 120 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 121 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 122 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 123 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 124 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 125 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 126 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 127 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 128 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 129 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 130 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 131 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 132 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 133 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 134 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 135 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 136 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 137 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 138 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 139 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 140 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 141 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 142 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 143 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 144 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 145 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 146 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 147 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 148 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 149 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 150 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 151 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 152 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 153 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 154 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 155 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 156 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 157 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 158 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 159 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 160 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 161 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 162 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 163 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 164 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 165 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 166 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 167 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 168 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 169 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 170 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 171 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 172 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 173 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 174 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 175 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 176 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 177 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 178 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 179 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 180 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 181 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 182 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 183 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 184 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 185 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 186 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 187 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 188 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 189 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 190 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 191 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 192 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 193 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 194 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 195 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 196 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 197 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 198 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 199 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 200 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 201 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 202 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 203 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 204 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 205 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 206 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 207 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 208 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 209 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 210 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 211 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 212 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 213 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 214 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 215 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 216 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 217 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 218 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 219 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 220 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 221 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 222 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 223 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 224 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 225 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 226 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 227 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 228 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 229 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 230 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 231 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 232 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 233 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 234 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 235 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 236 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 237 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 238 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 239 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 240 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 241 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 242 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 243 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 244 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 245 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 246 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 247 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 248 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 249 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 250 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 251 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 252 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 253 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 254 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 255 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 256 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 257 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 258 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 259 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 260 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 261 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 262 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 263 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 264 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 265 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 266 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 267 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 268 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 269 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 270 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 271 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 272 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 273 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 274 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 275 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 276 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 277 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 278 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 279 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 280 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 281 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 282 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 283 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 284 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 285 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 286 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 287 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 288 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 289 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 290 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 291 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 292 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 293 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 294 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 295 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 296 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 297 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 298 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 299 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 300 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 301 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 302 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 303 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 304 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 305 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 306 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 307 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 308 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 309 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 310 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 311 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 312 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 313 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 314 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 315 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 316 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 317 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 318 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 319 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 320 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 321 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 322 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 323 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 324 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 325 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 326 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 327 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 328 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 329 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 330 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 331 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 332 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 333 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 334 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 335 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 336 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 337 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 338 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 339 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 340 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 341 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 342 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 343 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 344 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 345 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 346 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 347 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 348 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 349 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 350 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 351 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 352 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 353 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 354 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 355 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 356 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 357 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 358 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 359 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 360 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 361 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 362 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 363 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 364 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 365 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 366 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 367 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 368 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 369 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 370 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 371 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 372 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 373 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 374 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 375 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 376 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 377 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 378 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 379 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 380 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 381 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 382 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 383 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 384 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 385 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 386 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 387 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 388 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 389 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 390 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 391 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 392 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 393 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 394 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 395 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 396 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 397 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 398 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 399 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 400 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 401 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 402 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 403 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 404 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 405 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 406 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 407 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 408 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 409 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 410 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 411 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 412 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 413 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 414 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 415 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 416 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 417 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 418 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 419 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 420 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 421 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 422 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 423 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 424 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 425 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 426 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 427 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 428 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 429 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 430 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 431 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 432 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 433 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 434 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 435 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 436 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 437 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 438 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 439 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 440 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 441 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 442 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
