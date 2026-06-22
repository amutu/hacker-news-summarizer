# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-22.md)

*最后自动更新时间: 2026-06-22 20:33:30*
## 1. 蒸汽机器

**原文标题**: Steam Machine

**原文链接**: [https://store.steampowered.com/hardware/steammachine](https://store.steampowered.com/hardware/steammachine)

所提供的内容似乎是Steam平台的导航菜单，列出了其主要板块：商店、社区和关于，以及子页面如主页、探索队列、愿望单、点数商店、新闻、排行榜、讨论区、创意工坊、市场、直播和客服支持。此外还包含语言选择菜单，提供多种语言选项（如繁体中文、日语、韩语、英语、法语、德语等），以及登录、安装Steam或报告翻译问题的操作入口。其中不包含实质性文章或详细信息，纯属用户界面菜单。

---

## 2. 《乔布斯与软件已崩溃》

**原文标题**: Jobs and Software Is Fucked

**原文链接**: [https://urflow.bearblog.dev/jobs-and-software-is-fucked/](https://urflow.bearblog.dev/jobs-and-software-is-fucked/)

**摘要：**

作者是一名拥有约十年经验的软件工程师（其中在暴雪工作七年，于2025年6月被裁），直言当前就业市场是“史上最差”。主要沮丧点包括：

- **终面被拒：** 经历数周积极面试后，因其他候选人或内部转岗被筛掉。联系招聘方询问其他职位时，对方沉默以对。
- **初筛门槛：** 批评CoderPad和HackerRank等平台“荒谬”，既让诚信候选人不便参考，又让投机者轻易用AI作弊。作者虽感不公，却被迫屈从。
- **AI主导市场：** 公司激进推广AI工具，贬低真实技能，招聘变成“消耗AI模型代币”。关键词筛选简历、“形式化考试”等问题雪上加霜。
- **系统性绝望：** 求职过程如同“西西弗斯推石”，即便获得面试（相比很多人已属不易）也会陷入自我否定。新人面临“撤掉的梯子”，公司指望AI替代初级岗位。
- **对AI的态度：** 作者拒绝向AI编码“妥协”，认为此举贬低了艺术、测试、写作等岗位的同事价值，也损害自身尊严与打造优质软件的承诺。

全文语气疲惫而愤怒，但作者誓言坚持“古怪电脑极客”的乐趣，不为疲惫的系统所动。

---

## 3. Linux与安全启动证书过期（2025）

**原文标题**: Linux and Secure Boot certificate expiration (2025)

**原文链接**: [https://lwn.net/Articles/1029767/](https://lwn.net/Articles/1029767/)

**摘要：**

微软用于签署Linux Shim引导加载程序（Secure Boot）的密钥将于2025年9月11日到期。此后，微软将不再使用2011年密钥签署新版本的Shim，这意味着Linux安装介质在缺少替代的2023年微软UEFI密钥的系统上将无法启动。

已安装Linux发行版的用户应能继续正常启动，因为其引导加载程序已使用发行版专属密钥签署。主要问题出现在对启用了Secure Boot的系统进行新安装时。

许多系统可能在固件数据库中没有新的微软密钥。硬件供应商可以通过固件更新来添加新密钥，而LVFS和fwupd等工具可从Linux端协助完成此操作。然而，由于EFI变量空间有限以及KEK更新流程未经充分测试等问题，这些更新并非绝对可靠。在最坏情况下，用户可能需要完全禁用Secure Boot。

文章指出，固件可能不会对现有信任链强制执行到期日期，因此现有安装可能继续工作。但是，使用已过期密钥将无法对Shim进行未来的签名安全更新。Linux社区正在努力减少干扰，但这一情况凸显了因依赖主要支持Windows的硬件供应商而持续存在的挑战。

---

## 4. 我的数学回归

**原文标题**: My Mathematical Regression

**原文链接**: [https://blog.dahl.dev/posts/my-mathematical-regression/](https://blog.dahl.dev/posts/my-mathematical-regression/)

**摘要：**

亚历克斯·达尔在旧仓库中重新发现了十年前的欧拉计划第15题解法。该问题涉及计算网格中的路径数量。作为一名工科学生，达尔当时没有借助代码就优雅地解决了问题——他识别出路径数遵循二项式系数（2n选n）的规律，最终得出答案137846528820。如今，达尔对年轻自己展现出的数学洞察力深感钦佩，并将其与当前依赖暴力破解、记忆化或AI工具的本能反应形成鲜明对比。这段经历引发了一种失落感，如同发现了被遗忘的古老知识——只是这知识来自过去的自己。文章最后通过一幅幽默的合成图来缓解这种情绪。

---

## 5. 不列颠哥伦比亚省、时区与Postgres

**原文标题**: British Columbia, Time Zones, and Postgres

**原文链接**: [https://www.crunchydata.com/blog/british-columbia-and-time-zone-changes](https://www.crunchydata.com/blog/british-columbia-and-time-zone-changes)

**摘要：** 本文探讨了不列颠哥伦比亚省于2026年3月永久改用太平洋夏令时（UTC-7）对PostgreSQL时间戳处理的影响。

**核心问题：** 将未来约会存储为`timestamptz`（插入时转换为UTC）在时区规则变更后可能失效。当tzdata更新后，查询时使用新规则反向转换，返回的当地时间与用户意图不符。例如，变更前存储的上午10点约会，在更新后显示为上午11点。

**解决方案——双列模式：** 为保留本地意图，需存储：
1. **`local_time`**（时间戳）——挂钟时间值。
2. **`timezone_name`**（文本）——IANA时区（如'America/Vancouver'）。
3. **`starts_at_utc`**（timestamptz）——通过触发器计算的UTC列，用于索引和约束。

tzdata更新后，对未来行重新计算UTC值：`UPDATE appointments SET starts_at_utc = local_time AT TIME ZONE timezone_name WHERE timezone_name = 'America/Vancouver' AND starts_at_utc > now();`。

**补充说明：**
- 文章建议通过测试查询2026年12月1日温哥华的偏移量来检查tzdata是否已更新。
- RFC 9557（带时区的扩展时间戳）明确**不能**解决此问题。
- 若tzdata已更新，需启动数据修复项目以查找并重新计算受影响记录，同时通知用户时间变更。

---

## 6. Deno 桌面版

**原文标题**: Deno Desktop

**原文链接**: [https://docs.deno.com/runtime/desktop/](https://docs.deno.com/runtime/desktop/)

**Deno Desktop 概述**

Deno Desktop 随 Deno v2.9 发布，可将任意 Deno 项目（从单个 TypeScript 文件到完整的框架应用）转化为独立、可分发的桌面应用程序。

**主要特性：**
- **默认生成小型二进制文件**，利用操作系统原生 WebView，并可选捆绑 Chromium（CEF）以实现跨平台一致渲染。
- **框架自动检测**，支持 Next.js、Astro、Fresh、Remix、Nuxt、SvelteKit 及 Vite SSR——无需修改代码。生产服务器以发布模式运行；开发服务器支持热重载（`--hmr`）。
- **进程内绑定**取代缓慢的 IPC——Deno 与 WebView 直接通信，避免跨进程往返。
- **单机交叉编译**，支持 macOS、Windows 和 Linux。
- **内置二进制差异自动更新**，基于 `latest.json` 清单与 bsdiff 补丁，启动失败时自动回滚。

**简易用法：**
单文件应用使用 `Deno.serve()` 提供 HTML 服务，通过 `deno desktop main.ts` 命令即可生成窗口化二进制文件。

**其他功能：**
支持通过 `deno.json`（`desktop` 块）配置、多窗口、原生菜单、系统托盘/程序坞、原生对话框、操作系统通知、统一开发者工具及错误报告。

**对比：**
Deno Desktop 与 Electron、Tauri 及 Electrobun 的区别在于：提供小型二进制文件、完整的 Node/npm 兼容性、框架集成及有取舍的设计权衡——且无需对现有 Web 项目进行重大代码修改。

---

## 7. Moebius：0.2B参数图像修复模型，具备10B级别性能

**原文标题**: Moebius: 0.2B image inpainting model with 10B-level performance

**原文链接**: [https://hustvl.github.io/Moebius/](https://hustvl.github.io/Moebius/)

本文介绍**Moebius**——一种轻量级图像修复模型，其性能可与FLUX.1-Fill-Dev等拥有百亿参数的大型工业模型相媲美，但计算成本大幅降低。尽管大型基础模型质量出色，但其规模阻碍了实际部署；而小型模型常面临“表征瓶颈”问题。

为此，Moebius采用高度优化的架构，核心是**局部-λ混合交互（LλMI）模块**，将空间与全局语义信息压缩为固定大小的线性矩阵，以极少的参数保留复杂的交互关系。

关键在于，Moebius将紧凑架构与**自适应多粒度蒸馏策略**相结合，该策略完全在潜在空间中运行，避免了昂贵的像素级解码。通过动态平衡的梯度损失实现高保真对齐。

核心成果：
- **参数量：**仅**0.22亿**，对比**119亿**（不到2%）。
- **速度：**总推理速度**提升15倍以上**。
- **性能：**在自然图像与人像基准测试中，达到或超越百亿级FLUX.1-Fill-Dev模型。

Moebius为高效高保真图像修复树立了新标杆，证明了精心设计的专业模型能以极低成本媲美通用型巨擘。

---

## 8. 展示HN：Oak – 专为智能体设计的Git替代品

**原文标题**: Show HN: Oak – Git replacement designed for agents

**原文链接**: [https://oak.space/oak/oak](https://oak.space/oak/oak)

**Oak** 是一款专为AI智能体设计的开源版本控制系统，基于Rust/Cargo工作区构建。它包含两个主要程序包：`oakvcs-core`（基础库，提供BLAKE3哈希、内容定义分块、差异/合并及数据模型功能）和`oakvcs-cli`（命令行客户端）。

核心特性包括：
- **面向智能体的优化工作流**：以每会话分支为工作单元，采用分支描述替代逐条提交信息
- **内容寻址的延迟挂载**（通过`oak mount`）：支持智能体在数秒内编辑任意仓库，无需完整克隆
- **针对智能体工作负载性能优于Git**：得益于内容寻址设计与按需数据填充机制

**安装方式**：macOS/Linux可通过`curl -fsSL oak.space/install | sh`安装，Windows可从GitHub发布版获取。也支持通过`cargo install oakvcs-cli`安装。Windows系统使用`oak mount`需依赖ProjFS。

**当前状态**：公开测试版（v0.99.0），采用Apache-2.0许可证。该仓库主要由AI在人工监督下编写完成。

---

## 9. 博主击败摄影师版权主张

**原文标题**: Blogger defeats photographer's copyright claim

**原文链接**: [https://blog.ericgoldman.org/archives/2026/06/blogger-defeats-photographers-copyright-claim-sokolskyfilm-v-messiah.htm](https://blog.ericgoldman.org/archives/2026/06/blogger-defeats-photographers-copyright-claim-sokolskyfilm-v-messiah.htm)

联邦法院驳回摄影师对博主的版权诉讼，裁定通过谷歌图片搜索获取的照片属于合理使用。该案涉及"派克火车照片"（摄于1962年，2000年首次发表）。2009年，博主劳伦·梅西哈将该照片用于一篇关于军嫂时尚的博文中，该文后迁移至新网站。原告于2025年发现使用行为并提起诉讼。

法院对博主作出简易判决，认定构成合理使用。关键因素包括：使用具有转换性（照片配合时尚建议展示，而非作为艺术品展出）；博客无证据证明有商业收入；照片服务于不同市场（艺术品市场）与博文市场。值得注意的是，法院认定使用100%照片"在语境中非实质性"，且无需对图像进行实质性评论。法院同时驳回第1202条（删除版权管理信息）的诉讼请求，因无证据表明博主故意未注明出处或意图掩盖侵权。法官似乎受案件低利害性质影响，指出该案本应提交版权索赔委员会处理，甚至根本不应提起诉讼。

---

## 10. Codex日志漏洞可能导致向本地SSD写入TB级数据

**原文标题**: Codex logging bug may write TBs to local SSDs

**原文链接**: [https://github.com/openai/codex/issues/28224](https://github.com/openai/codex/issues/28224)

本文记录了OpenAI Codex CLI中的一个关键漏洞，其过度SQLite日志记录每年可写入高达约640 TB数据，从而迅速降低固态硬盘（SSD）使用寿命。

**要点：**
- **巨大写入放大：** Codex持续将反馈日志写入`~/.codex/logs_2.sqlite`，产生极端写入量。对于额定600 TBW（总写入字节数）的1 TB SSD，这可能在一年内耗尽硬盘保修寿命。
- **证据：** 使用21天后，已写入37 TB数据。虽然仅保留约50万行数据，但SQLite自增计数器已超过55亿个ID——存在10000倍的差距，表明存在持续的插入与修剪循环。
- **根本原因：** SQLite日志记录器使用全局默认日志级别TRACE，捕获过多低价值数据（例如原始WebSocket事件、inotify文件打开事件、OpenTelemetry镜像事件）。仅TRACE日志就占保留字节数的70.7%。
- **写入速度：** 在15秒样本中，插入了36211行数据，而保留行数保持不变，展现了持续的写入消耗。

**已应用修复（2026年6月22日）：** 两个合并的拉取请求解决了此问题：
- 停止记录每个Responses WebSocket事件（#29432）
- 从持久日志中过滤噪声目标（#29457）

这些更改据报告减少了85%的日志，从而缓解了SSD耐久性风险。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 2 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 3 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 4 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 5 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 6 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 7 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 8 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 9 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 10 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 11 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 12 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 13 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 14 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 15 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 16 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 17 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 18 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 19 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 20 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 21 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 22 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 23 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 24 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 25 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 26 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 27 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 28 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 29 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 30 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 31 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 32 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 33 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 34 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 35 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 36 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 37 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 38 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 39 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 40 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 41 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 42 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 43 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 44 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 45 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 46 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 47 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 48 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 49 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 50 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 51 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 52 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 53 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 54 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 55 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 56 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 57 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 58 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 59 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 60 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 61 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 62 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 63 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 64 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 65 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 66 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 67 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 68 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 69 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 70 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 71 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 72 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 73 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 74 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 75 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 76 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 77 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 78 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 79 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 80 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 81 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 82 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 83 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 84 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 85 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 86 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 87 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 88 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 89 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 90 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 91 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 92 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 93 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 94 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 95 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 96 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 97 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 98 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 99 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 100 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 101 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 102 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 103 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 104 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 105 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 106 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 107 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 108 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 109 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 110 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 111 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 112 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 113 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 114 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 115 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 116 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 117 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 118 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 119 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 120 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 121 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 122 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 123 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 124 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 125 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 126 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 127 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 128 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 129 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 130 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 131 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 132 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 133 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 134 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 135 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 136 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 137 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 138 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 139 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 140 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 141 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 142 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 143 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 144 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 145 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 146 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 147 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 148 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 149 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 150 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 151 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 152 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 153 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 154 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 155 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 156 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 157 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 158 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 159 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 160 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 161 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 162 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 163 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 164 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 165 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 166 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 167 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 168 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 169 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 170 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 171 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 172 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 173 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 174 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 175 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 176 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 177 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 178 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 179 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 180 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 181 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 182 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 183 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 184 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 185 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 186 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 187 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 188 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 189 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 190 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 191 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 192 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 193 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 194 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 195 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 196 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 197 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 198 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 199 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 200 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 201 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 202 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 203 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 204 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 205 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 206 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 207 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 208 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 209 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 210 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 211 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 212 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 213 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 214 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 215 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 216 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 217 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 218 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 219 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 220 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 221 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 222 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 223 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 224 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 225 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 226 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 227 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 228 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 229 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 230 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 231 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 232 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 233 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 234 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 235 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 236 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 237 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 238 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 239 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 240 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 241 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 242 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 243 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 244 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 245 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 246 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 247 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 248 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 249 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 250 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 251 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 252 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 253 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 254 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 255 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 256 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 257 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 258 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 259 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 260 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 261 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 262 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 263 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 264 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 265 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 266 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 267 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 268 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 269 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 270 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 271 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 272 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 273 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 274 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 275 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 276 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 277 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 278 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 279 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 280 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 281 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 282 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 283 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 284 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 285 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 286 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 287 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 288 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 289 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 290 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 291 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 292 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 293 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 294 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 295 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 296 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 297 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 298 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 299 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 300 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 301 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 302 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 303 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 304 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 305 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 306 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 307 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 308 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 309 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 310 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 311 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 312 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 313 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 314 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 315 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 316 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 317 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 318 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 319 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 320 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 321 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 322 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 323 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 324 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 325 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 326 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 327 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 328 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 329 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 330 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 331 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 332 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 333 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 334 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 335 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 336 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 337 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 338 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 339 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 340 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 341 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 342 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 343 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 344 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 345 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 346 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 347 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 348 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 349 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 350 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 351 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 352 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 353 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 354 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 355 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 356 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 357 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 358 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 359 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 360 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 361 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 362 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 363 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 364 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 365 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 366 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 367 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 368 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 369 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 370 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 371 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 372 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 373 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 374 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 375 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 376 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 377 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 378 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 379 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 380 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 381 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 382 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 383 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 384 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 385 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 386 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 387 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 388 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 389 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 390 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 391 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 392 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 393 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 394 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 395 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 396 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 397 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 398 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 399 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 400 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 401 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 402 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 403 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 404 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 405 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 406 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 407 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 408 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 409 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 410 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 411 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 412 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 413 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 414 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 415 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 416 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 417 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 418 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 419 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 420 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 421 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 422 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 423 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 424 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 425 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 426 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 427 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 428 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 429 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 430 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 431 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 432 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 433 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 434 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 435 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 436 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 437 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 438 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 439 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 440 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 441 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 442 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 443 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 444 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 445 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 446 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 447 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 448 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 449 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 450 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 451 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 452 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 453 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 454 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 455 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 456 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 457 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
