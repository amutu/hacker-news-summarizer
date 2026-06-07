# Hacker News 热门文章摘要 (2026-06-07)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 第29届国际C语言混乱代码大赛（IOCCC）2025年度获奖者

**原文标题**: The 29th International Obfuscated C Code Contest (IOCCC) 2025 Winners

**原文链接**: [https://www.ioccc.org/2025/](https://www.ioccc.org/2025/)

文章公布了第29届国际模糊C代码大赛（IOCCC）2025年度获奖者。文章强调，本届参赛作品的数量与质量均保持高水平，与四年停赛后上一届赛事相当。评审流程和文档工作已得到改进。

值得注意的获奖作品包括GameBoy模拟器、Quine Pong游戏、海洋声音生成器以及Subleq计算机。三位作者尤素福·远藤、尼克·克雷格-伍德和唐·杨分别凭借三件获奖作品实现"帽子戏法"。来自中国台湾的作者jingp49首次获奖。

文章还提到评委点评中的"趣味挑战"，邀请读者通过GitHub拉取请求提交解决方案。文章鼓励未获奖者修改作品并参加下届赛事。下届大赛IOCCC30计划于2026年底开放。文章提供了全部22件获奖作品名单，每件作品均有主题奖项名称，如"最令人眼花缭乱奖"或"最佳真实模拟器奖"。所有获奖作品可下载为压缩tar包。

---

## 12. Show HN：Lathe——用LLM探索新领域，而非绕过它

**原文标题**: Show HN: Lathe – Use LLMs to learn a new domain, not skip past it

**原文链接**: [https://github.com/devenjarvis/lathe](https://github.com/devenjarvis/lathe)

以下是关于 **Lathe** 的简明文章摘要：

Lathe 是一款开源工具，它利用大语言模型（如 Claude Code、Cursor 或 Codex）生成动手实践的、多部分技术教程，**供你手动完成**，而非让 AI 替你写代码。它包含 LLM“技能”（如 `/lathe build a 3D Slicer in Erlang` 等命令）和一个 Go 编写的 CLI（`lathe serve`），用于在专有的本地 Web 界面中存储、管理和渲染教程。

**主要特性：**
- **生成教程**：根据任意提示，生成单篇或多部分系列教程。
- **交互式学习**：你在带有旁注、练习和目录的界面中亲自输入代码。
- **提问、验证或扩展教程**：通过向 LLM 输入特定技能命令（如 `/lathe-ask`、`/lathe-verify`、`/lathe-extend`）。
- **可定制的“语音”**：控制教程语调（默认有*通俗直白*和*陪伴式*两种），并注明作者信息（模型 + 语音名称）。
- **来源追踪**：每个教程都记录来源、所用模型以及生成它的提示。

**为何存在：** 作者创建 Lathe 旨在保留从人工编写的教程（如“自己动手实现 X”、“打造解释器”）中所珍视的“从零到一”动手实践学习体验，同时利用 LLM 教授那些人力稀缺的冷门或新兴领域的主题。

**注意事项：** Lathe 承认其教程不如人工编写的优质，但通过交互式纠错、始终完整的系列以及追问能力来弥补。它属于“氛围编码”（低风险范围），主要已在 macOS 上使用 Claude Code 进行了测试。

---

## 13. Proliferate (YC S25) 正在招聘，致力于构建开源 Codex

**原文标题**: Proliferate (YC S25) is hiring to building open source Codex

**原文链接**: [https://www.ycombinator.com/companies/proliferate/jobs/L3copvK-founding-engineer](https://www.ycombinator.com/companies/proliferate/jobs/L3copvK-founding-engineer)

Proliferate（YC S25）正在招聘一位创始工程师，负责构建面向现代工程的开源操作系统。该职位位于旧金山（SoMa），提供20万至35万美元年薪、0.50%–2.00%股权、签证担保及全额福利。

**核心要点：**
- **公司：** Proliferate 打造一个从桌面端管理AI代理团队的平台。
- **创始人：** Pablo Hansen（19岁获得人工智能硕士学位，曾任Onyx/Y Combinator第1号工程师）。
- **角色：** 高自主权、从0到1的全栈角色，覆盖产品、系统与用户体验。典型工作包括构建代理运行时、用户界面、基础设施及人机协作接口。
- **理想候选人：** 紧迫感强、标准高、追求真相的工程师，渴望高密度学习与快节奏。欢迎应届生与资深开发者。
- **技术栈：** TypeScript、React、Next.js、Python、Postgres、Redis、AWS、Rust。
- **团队：** 小型扁平化、人才密度高，注重强度与匠心。
- **面试流程：** 快速筛选 → 15分钟创始人通话 → 30分钟技术面 → 旧金山1-3天带薪工作试岗 → 背景调查+录用通知。

---

## 14. 靠背 – 一款用于restic备份的Web界面与编排器

**原文标题**: Backrest – a web UI and orchestrator for restic backup

**原文链接**: [https://github.com/garethgeorge/backrest](https://github.com/garethgeorge/backrest)

**靠背摘要**

靠背是一款基于restic构建的网页版备份解决方案，提供直观的WebUI用于管理备份。它封装了restic命令行工具，可轻松创建存储库、浏览快照和恢复文件，同时支持后台调度与健康运维。

**主要特性：**
- 支持本地或远程访问的Web界面（适合NAS）
- 多平台支持：Linux、macOS、Windows、FreeBSD、Docker
- 导入现有restic存储库
- 基于Cron的定时备份、清理与维护
- 浏览并恢复快照中的文件
- 可配置通知（Discord、Slack、Gotify等）
- 备份前后执行命令钩子
- 支持所有restic存储后端（S3、B2、Azure、GCS、本地、SFTP、rclone）

**安装方式：**
- 单个可执行二进制文件；首次运行自动下载restic
- 默认端口：9898（可通过`BACKREST_PORT`配置）
- 推荐通过curl脚本（Linux/macOS）或Homebrew（macOS）安装
- 提供含rclone的Docker镜像
- 带托盘应用的Windows安装程序

**配置说明：**
- 环境变量控制端口、配置路径、数据目录及restic二进制位置
- Unix系统默认采用XDG规范路径，Windows使用%appdata%

**开发相关：**
- 使用Go语言构建；通过Nix/direnv或手动安装管理依赖
- 支持VSCode开发容器
- 翻译通过inlang尽力维护

---

## 15. 完整的IPv4地址空间映射

**原文标题**: The complete IPv4 address space, mapped

**原文链接**: [https://worldip.io/](https://worldip.io/)

本文介绍了WorldIP.io，这是一款免费且无需注册的工具，用于探索完整的IPv4地址空间。用户可查询任意43亿个IPv4地址的所有权、自治系统编号（ASN）、地理位置（国家、州/省、城市）、反向DNS（PTR记录）及分配历史。

核心功能包括按IP地址、CIDR范围、ASN、组织或地点进行搜索。平台提供按国家、州/省和城市的详细分类，并配备对数色阶地图等数据可视化功能。它列出排名前列的国家（美国以16亿地址领先）、州/省、城市和组织（如美国国防部拥有5.82亿个IP地址）。

该网站整合了MaxMind GeoLite2地理定位数据、RIR授权文件（所有权信息）以及Team Cymru的ASN映射数据，覆盖超过7.9万个ASN和7.3万个组织。每个IPv4地址都拥有唯一的可深度链接URL，显示其范围、相邻地址和相关记录。

文章还涵盖了IPv4基础知识、查询方法，以及对CIDR、ASN和PTR记录的说明。该资源被定位为适用于网络诊断、安全研究和地理定位追踪的综合性免费数据库。

---

## 16. Anthropic，请为 Linux 推出官方的 Claude 桌面版。

**原文标题**: Anthropic, please ship an official Claude Desktop for Linux

**原文链接**: [https://github.com/anthropics/claude-code/issues/65697](https://github.com/anthropics/claude-code/issues/65697)

**摘要：请求在Linux上推出官方Claude桌面版**

该GitHub议题（2026年6月提出）请求Anthropic正式发布Claude Desktop的Linux桌面版本（基于Ubuntu LTS/Debian）。作者认为此事至关重要，原因如下：

1.  **插件开发受阻**：Claude Code插件需作为桌面扩展进行测试，但由于缺少Linux桌面版，开发者被迫切换操作系统来进行迭代。
2.  **Linux能力已就绪**：Claude Code CLI已提供签名的Linux软件包（apt、dnf、apk）。Anthropic在macOS上的Cowork代理是在Linux虚拟机内运行Claude Code二进制文件——这意味着Linux执行路径已存在于产品中，只是尚未作为独立目标发布。
3.  **安全风险**：用户当前依赖社区重新打包的版本（例如aaddrick/claude-desktop-debian，拥有约4500颗星）来处理凭据，这导致API密钥和文件访问暴露给非厂商签名的二进制文件。
4.  **市场需求**：Stack Overflow 2025年数据显示，27.7%的专业开发者将Ubuntu作为主要操作系统；Linux桌面使用量正在全球增长。

主要诉求是通过Anthropic现有的apt渠道提供一个官方签名的.deb包。备选方案是发布一份公开的“不在路线图中”声明，并为Linux用户提供安全指南。作者承认存在合理的反对意见（碎片化、支持成本、机会成本），但强调完全缺乏公开立场本身就是个问题。

---

## 17. 为何美国足球表现不佳？

**原文标题**: Why isn't the U.S. better at soccer?

**原文链接**: [https://www.natesilver.net/p/why-isnt-the-us-better-at-soccer](https://www.natesilver.net/p/why-isnt-the-us-better-at-soccer)

**摘要：**  
奈特·西尔弗探讨了为何美国男足国家队（USMNT）虽具潜力却长期表现不佳，以及主办2026年世界杯是否能最终带来突破。  

关键要点：  
- **历史困境**：美国男足曾有过早期亮点（1930年打入半决赛），但1950年至1990年陷入“黑暗时代”，未能晋级任何一届世界杯。1950年1-0击败英格兰是罕见的闪光点。  
- **平庸背后的原因**：足球在美国被橄榄球、棒球和篮球压制，同时还背负“移民运动”的名声，其成功与移民水平相关。NASL于1980年代瓦解，而MLS虽然稳定，但因中央集权结构和有限投入缺乏全球竞争力。  
- **当今的复杂信号**：美国男足在PELE（西尔弗的模型）中排名第29位，但在FIFA排名中位列第17位，部分原因是FIFA忽略了主场优势。美国队75%的比赛在主场进行，这虚增了其战绩。球员身价自2005年以来增长了三倍，但球队缺乏凝聚力（球员分散在8家MLS俱乐部和17家欧洲俱乐部），且自2015年以来未击败过排名前十的球队。  
- **2026年展望**：主场优势可能有所帮助——美国将主办所有小组赛及可能的淘汰赛。PELE模型给出美国队约1%的概率赢得世界杯，10%的概率打入半决赛。小组出线并在32强赛中遭遇较弱对手是可行的，但更进一步则需要爆冷。  

西尔弗总结道，尽管基于GDP、人口和青少年参与度，美国队“理应”表现更好，但实际结果始终未能达到预期——若无奇迹，2026年也不太可能打破这一趋势。

---

## 18. 核函数的可视化入门

**原文标题**: A visual introduction to kernel functions

**原文链接**: [https://kelvinpaschal.com/blog/kernel-functions/](https://kelvinpaschal.com/blog/kernel-functions/)

**文章概述**

本文以“奶酪变黄金”的机器为比喻，介绍了高斯过程（GP）中的核函数。作者阐释，模型基于有限数据逼近未知映射。高斯过程是函数的分布（或“猜测”），由均值与协方差刻画。核函数定义了这一协方差，衡量两个输入点相互影响的强度。

文中可视化的关键核函数包括：
- **线性核**：假设线性趋势（输入的点积）。
- **周期核**：建模重复模式（如季节性数据）。
- **RBF核**：基于欧氏距离的平滑、平稳核。
- **有理二次核**：RBF核的无限求和，捕捉多尺度变化。
- **马特恩核**：RBF的推广，参数ν控制平滑度；ν越小容许可更陡峭的变化。

文章强调，核函数可通过**加法**（模式叠加）或**乘法**（所有模式必须共同作用）进行**组合**，以建模复杂数据。可视化展示了各核函数对应的高斯过程先验采样函数与协方差热力图，佐证核函数选择如何塑造模型的归纳偏置。

作者指出，选择恰当的核函数——或组合多个核函数——能让实践者融入领域知识，使高斯过程适配特定数据集。

---

## 19. Podman 6：机器可用性改进（2025）

**原文标题**: Podman 6: machine usability improvements (2025)

**原文链接**: [https://blog.podman.io/2025/10/podman-6-machine-usability-improvements/](https://blog.podman.io/2025/10/podman-6-machine-usability-improvements/)

**摘要：**

本文宣布了 Podman 6 中 machine 功能的可用性改进，解决了 Podman 5 中的一个关键限制。Podman 机器依赖于“提供商”（例如 libkrun、AppleHV、WSL、WSL），而在 Podman 5 中，CLI 仅能识别其默认提供商内的机器。当用户尝试通过命令行管理通过不同提供商（例如 Podman Desktop）创建的机器时，这会导致错误；按名称停止非默认机器会返回错误。

Podman 6 移除了这一限制。用户现在可以按名称停止、启动或删除任何机器，无论其提供商是什么，都无需指定提供商。`--all-providers` 标志已被移除，`podman machine ls` 现在默认会显示所有提供商的所有机器。

此外，Podman 6 为 `podman machine init` 命令引入了 `--provider` 标志，允许用户直接从 CLI 使用非默认提供商创建机器。例如，如果 libkrun 是默认提供商，用户可以通过添加 `--provider applehv` 来创建 AppleHV 机器。

这些更改降低了提供商系统的重要性，使 CLI 更直观，并简化了跨不同虚拟机后端的机器管理。

---

## 20. Win16内存管理

**原文标题**: Win16 Memory Management

**原文链接**: [http://www.os2museum.com/wp/win16-memory-management/](http://www.os2museum.com/wp/win16-memory-management/)

**Win16内存管理概述**

本文阐释了16位Windows内存管理的核心机制，该机制根植于其8086实模式起源并延续至Windows 3.x。要点包括：

- **分段内存与覆盖管理：** Windows充当覆盖管理器，将活动内存段保留在RAM中，同时从磁盘丢弃并重新加载不常使用的代码——因8086/286系统缺乏分页功能。

- **句柄与段地址：** 段通过句柄（不透明的16位值）标识。应用程序调用`GlobalLock`（返回段地址，锁定段）和`GlobalUnlock`（解锁，使地址无效）以获得可用地址。Windows会移动未锁定的段。

- **段属性：** 段可分为**固定**或**可移动**，以及**可丢弃**或**不可丢弃**。代码段通常可丢弃（可从磁盘重新加载）；数据段通常不可丢弃（可写入）。

- **新可执行文件（NE）格式：** Windows使用NE格式，将每个段分别存储在磁盘上，支持按段加载和重新加载。支持模块间调用的导入和导出。

- **Windows序言修补：** 导出函数使用特定序言（如`PUSH DS`、`INC BP`），Windows在加载时对其修补以加载模块的正确数据段（DS）。`INC BP`/`DEC BP`技巧协助Windows在段移动期间进行栈回溯。

- **DLL：** DLL没有自己的栈；它们使用调用者的栈（SS != DS）。编译器开关（如`/Aw`和`/Gw`）管理这些差异，并生成Windows专用的函数序言/尾声。

---

## 21. 低蛋白饮食的奇特案例

**原文标题**: The curious case of low-protein diets

**原文链接**: [https://knowablemagazine.org/content/article/living-world/2026/low-protein-diet-animals-live-longer](https://knowablemagazine.org/content/article/living-world/2026/low-protein-diet-animals-live-longer)

**《低蛋白饮食的奇特案例》摘要**

从果蝇到小鼠的动物研究表明，低蛋白、高碳水化合物的饮食能够延长寿命并改善代谢健康。科学家已确认，限制特定氨基酸（尤其是蛋氨酸和支链氨基酸）会触发延缓衰老的细胞通路，模拟热量限制的效果，而无需严格减少食物摄入。

然而，将这一发现应用于人类则较为复杂。观察性研究显示，高蛋白摄入（特别是来自动物性来源）与中年人群死亡率升高相关，但对需要蛋白质防止肌肉流失的老年人而言，情况可能恰恰相反。其效果可能取决于年龄、活动水平及整体健康状况。

专家警告不要对人类采用极端低蛋白饮食。他们建议关注蛋白质的*质量*与*摄入时机*——例如限制红肉和加工肉类，同时确保摄入足量的植物性或瘦蛋白——而非单纯减少总摄入量。“最优”饮食可能涉及“蛋白质循环”策略，即在中年期平衡较低蛋白摄入，在晚年期增加蛋白摄入。归根结底，尽管动物研究令人信服，仍需更多人体试验来验证其安全且可实际应用于长寿的方案。

---

## 22. 不可回避：ANSI码探秘

**原文标题**: There's no escaping it: an exploration of ANSI codes

**原文链接**: [https://blog.safia.rocks/2025/12/22/ansi-codes/](https://blog.safia.rocks/2025/12/22/ansi-codes/)

**摘要：**

本文探讨了ANSI转义码——这一已有近50年历史的标准至今仍是现代终端交互的基础。最初为"哑"CRT终端开发的这些代码，能够让纯文本流控制光标定位、文本格式和颜色。转义序列以ESC字符（`\x1b`）开头，后跟`[`（控制序列引导符），再输入命令——例如`\x1b[31m`表示红色文本，`\x1b[1m`表示粗体，`\x1b[0m`用于重置格式。多个属性可用分号组合。

原始规范定义了8种颜色，但现代终端支持256色模式（`\x1b[38;5;208m`）和真24位RGB（`\x1b[38;2;255;128;0m`）。ANSI代码驱动着CLI彩色输出、进度条、自定义shell提示符，以及Vim和htop等全屏交互工具。现代库（如Spectre.Console、chalk）对这些代码进行了抽象，用于构建复杂的终端界面。

文章包含一个用于实验转义序列的交互式小部件，并指出本文是在设计方面的一次学习练习，使用Tailwind和部分AI辅助构建。核心启示：ANSI代码是一个简单而经久不衰的标准，至今仍是计算领域的重要基石。

---

## 23. 公共领域图像档案

**原文标题**: Public Domain Image Archive

**原文链接**: [https://pdimagearchive.org/](https://pdimagearchive.org/)

文章介绍了**公共领域图像档案库**，这是一个精心策划的在线数据库，收录了**11,082件不受版权限制的作品**，供所有人自由浏览、下载和再利用。该收藏集经过人工筛选且持续增长，每周都有新图像加入。用户可通过艺术家、世纪、风格、主题、标签等分类浏览，或使用"无限浏览"模式探索。档案库还提供"全部"类别的直接链接，方便查阅所有内容。其主要目的是为已进入公共领域的历史与艺术作品提供无限制访问权限。

---

## 24. 与lcamtuf / Michał Zalewski的电路秘密生活（音频访谈）

**原文标题**: The Secret Life of Circuits with lcamtuf / Michał Zalewski (Audio Interview)

**原文链接**: [https://theamphour.com/725-the-secret-life-of-circuits-with-lcamtuf-michal-zalewski/](https://theamphour.com/725-the-secret-life-of-circuits-with-lcamtuf-michal-zalewski/)

在这期音频访谈中，米哈尔·扎莱夫斯基（lcamtuf）探讨了他的新书《电路的秘密生活》（No Starch Press出版，6月前使用优惠码AMPHOUR26可享七折优惠）。对话展现了他对电子学教学技艺的热情，并与早期信息安全领域的职业生涯形成对比——彼时他以**American Fuzzy Lop**（模糊测试工具）和《 tangled Web》一书闻名。扎莱夫斯基指出，安全知识的保质期很短，而电子学原理却历久弥新。

访谈深入探讨了他的教学理念：优先选用**场效应管（FET）而非双极型晶体管（BJT）**以提升清晰度，并通过三角函数而非微积分推导公式，避免学习者产生畏难情绪。内容包括他对计算器发展史（包括CRT显示器与辉光管等歧途）的痴迷，以及近期的项目如使用电流表制作的时钟。他还提及了**Row hammer DRAM**漏洞，并指出早期安全专家往往出身数学或电气工程背景。

---

## 25. sqlite: SQLite/SQLite3 的无CGo移植版本

**原文标题**: sqlite: A CGo-free port of SQLite/SQLite3

**原文链接**: [https://gitlab.com/cznic/sqlite](https://gitlab.com/cznic/sqlite)

本文介绍 **sqlite**——一个将 SQLite 数据库库移植到 Go 编程语言的实现。其核心特色在于**无需 CGo**。与大多数依赖 CGo 桥接 Go 和 C 代码的 Go SQLite 驱动不同，该包完全用纯 Go 编写。这消除了对 C 编译器、外部 C 库或复杂交叉编译环境的需求，从而显著简化了构建、部署与维护流程。

文章重点阐述了这一方案的几大优势：

1.  **更简化的构建**：无需 gcc、musl 或其他 C 工具链。
2.  **便捷的交叉编译**：无需特殊标记即可无缝为任意目标平台（如 Linux、Windows、ARM）构建。
3.  **静态链接**：整个 SQLite 引擎直接编译进 Go 二进制文件，生成一个无外部依赖的独立可执行文件。
4.  **性能表现**：作者指出，尽管在极高吞吐量场景下 CGo 会带来轻微开销，但由于纯 Go 版本优化了内联并减少了上下文切换开销，在典型用例中通常更快。

该包支持标准 SQLite 功能（WAL 模式、FTS5、JSON1 等），并与标准 `database/sql` 接口集成，可作为其他驱动的直接替代方案。作者总结道，对于追求简洁性、可移植性和易部署性而非极致吞吐量的项目而言，此库是理想之选。

---

## 26. 孕期补充维生素D3与10岁时儿童认知能力表现

**原文标题**: Vitamin D3 During Pregnancy and Cognitive Performance at 10 Years

**原文链接**: [https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2849122](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2849122)

**摘要：**

《JAMA网络开放版》一项研究探讨了孕期补充维生素D3（胆钙化醇）与10岁儿童认知表现之间的关联。研究人员分析了一项随机临床试验的数据，该试验中孕妇从孕中期早期开始每日分别接受高剂量（4400 IU）与标准剂量（1000 IU）的维生素D3补充。

主要结果为采用韦氏儿童智力量表测量的儿童全量表智商（FSIQ）。结果显示，母亲接受高剂量维生素D3的儿童，其平均FSIQ得分比低剂量组高2.29分。值得注意的是，这一益处在基线维生素D不足的母亲所生子女中最为显著。

次要分析提示在言语理解与知觉推理方面具有优势，但其他认知领域未见显著差异。研究得出结论：与每日补充1000 IU相比，孕期每日补充4400 IU维生素D3可适度改善后代10岁时的认知表现，这支持了充足的母体维生素D水平可能带来长期神经发育益处。

---

## 27. Show HN：Kyushu – 用于JavaScript工作线程的自托管WASM沙箱

**原文标题**: Show HN: Kyushu – A self-hostable WASM sandbox for JavaScript workers

**原文链接**: [https://kyushu.dev/](https://kyushu.dev/)

**摘要：Kyushu——一款面向 JavaScript Worker 的可自托管 WASM 沙箱**

Kyushu 是一款开源 CLI 工具，能让开发者将 JavaScript 或 TypeScript Worker 编译为独立的 WebAssembly 二进制文件运行，无需 Node.js、Bun 或 Docker。它采用 Cloudflare Workers 风格的 API（通过 `fetch` 处理程序），在任何 VPS 或服务器上只需一条命令 `kyu` 即可启动。

核心特性包括：
- **零运行时依赖**——仅需单个二进制文件。
- **WebAssembly 沙箱隔离**——与宿主机系统隔离。
- **可自托管**——可在任意平台部署，不局限于特定云平台。
- **熟悉的 API**——采用与 Cloudflare Workers 相同的请求/响应模式。

该项目尚处于早期实验阶段（可能发生重大变更），可通过 `curl -fsSL https://kyushu.dev/install | bash` 安装。文章以虚构的开发者语录幽默回应了那些偏爱 Node.js、Docker 或 Bun 的质疑，将 Kyushu 定位为在传统运行时之外运行无服务器风格 JavaScript 工作负载的轻量级可移植替代方案。

---

## 28. 投机性KV编码：将KV缓存无损压缩约4倍

**原文标题**: Speculative KV coding: losslessly compressing KV cache by up to ~4×

**原文链接**: [https://fergusfinn.com/blog/kv-entropy-coder/](https://fergusfinn.com/blog/kv-entropy-coder/)

以下是文章的简要摘要：

本文介绍了 **推测性KV编码**，这是一种在现有有损FP8压缩基础上（相较于原始bf16总计约8倍压缩），以*无损*方式将大语言模型（目标模型）的KV缓存压缩多达约4倍的方法。该技术使用一个更廉价的**预测模型**（例如目标的FP8量化版本），在同一提示词下运行，为每个缓存元素生成接近的近似值（μ）和误差估计值（σ²）。

随后，算术编码器对真实KV缓存与预测模型估计值之间的**差值**进行编码。比特率由预测模型与目标模型的拟合程度决定——预测越准确，所需比特数越少。该方案是无损的，因为预测模型是确定性的，编码器和解码器可以仅凭提示词重建相同的(μ, σ)。

在Qwen3模型上的**关键结果**显示：
- 对于bf16缓存：比特率从约6.86比特/标量（0.6B模型）降至约5.92比特/标量（32B模型），实现了2.37倍至2.70倍的压缩。
- 对于FP8缓存：压缩效果更为显著，相对于原始FP8达到了3.08倍至3.90倍的压缩，结合后相对于原始bf16实现了6倍至8倍的压缩。

该方法最适合KV缓存需要通过慢速通道传输或适配于稀缺内存的场景，以额外的计算换取显著降低的数据传输和存储需求。未来工作包括改进残差模型以及使用本质上不同的（更小）预测模型架构。

---

## 29. Symbolica 2.0：Python与Rust的可编程符号

**原文标题**: Symbolica 2.0: Programmable Symbols for Python and Rust

**原文链接**: [https://symbolica.io/posts/symbolica_2_0_release/](https://symbolica.io/posts/symbolica_2_0_release/)

**Symbolica 2.0** 是面向Python和Rust的高性能符号计算框架的一次重大更新，核心围绕"可编程符号"展开。用户现可通过钩子自定义符号的归约、打印、导数、级数展开及求值行为。

关键改进包括：
- **更优输出**：自动换行与彩色括号，支持HTML/LaTeX/Typst模式。
- **增强的Rust API**：简化预导入、构建器模式及运算符重载，减少样板代码。
- **求值器**：重新设计的求值器支持双浮点算术（≈106位精度）、即时编译（通过`symjit`），并为用户自定义函数和数值域提供自定义求值钩子。
- **新增特殊函数**：gamma、polygamma、多对数、贝塞尔函数、黎曼ζ函数等，附带级数与求值钩子。
- **性能提升**：模式匹配速度提升30%（归约速度更快），内存效率提高2倍，多项式GCD改进，实际用例加速达2–10,000倍。
- **技术细节**：类型擦除求值回调支持可插拔数值后端（f64、复数、SIMD、双浮点），且无热路径开销。

该版本还致谢AI辅助（Codex 5.5）实现了研究论文中的GCD算法。总体而言，Symbolica 2.0为符号数学与数值内核生成提供了更灵活、高效且用户友好的工具。

---

## 30. Valve P2P网络连接已中断超过两个月

**原文标题**: Valve P2P networking broken for more than 2 months

**原文链接**: [https://github.com/ValveSoftware/GameNetworkingSockets/issues/398](https://github.com/ValveSoftware/GameNetworkingSockets/issues/398)

ValveSoftware/GameNetworkingSockets GitHub仓库的一位用户报告了一个严重影响以色列（以及可能其他中东国家）点对点（P2P）网络连接的关键问题。自2026年3月13日左右起，以色列玩家在游玩依赖Steam网络功能的游戏（如《街头霸王6》）时，进行PC端对PC端对战会出现异常高延迟（约120ms），导致游戏几乎无法正常进行。相比之下，与欧洲玩家对战时的延迟尚可接受（60-80ms），而同一地区内PC与PS5之间的跨平台对战则毫无问题（5-10ms）。该问题似乎影响了多家以色列互联网服务提供商的数十名用户，当地ISP技术支持未能查明任何故障。值得注意的是，不使用Steam网络功能的P2P游戏（如《铁拳8》）未受影响。该用户表示埃及玩家可能也遭遇了类似问题，暗示这可能是区域性的系统故障。在尝试了游戏与Steam官方支持渠道的所有其他方案无果后，该用户提交了此问题报告。

---

