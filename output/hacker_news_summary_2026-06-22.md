# Hacker News 热门文章摘要 (2026-06-22)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 华特迪士尼公司是成功将人类怀旧情怀变现的典范

**原文标题**: Walt Disney Company is the most successful at monetizing human nostalgia

**原文链接**: [https://www.acquired.fm/episodes/the-walt-disney-company](https://www.acquired.fm/episodes/the-walt-disney-company)

这篇文章出自播客节目《Acquired》的一期，其核心观点是：**华特迪士尼公司是有史以来最成功的利用人类怀旧情感实现商业变现的企业。** 文章指出，如今迪士尼握有全球数十亿人童年记忆的知识产权，使其成为一家可靠且盈利的全球娱乐巨头。

然而，摘要强调，这一成功并非迪士尼最初的规划。在华特·迪士尼时代，公司更像是一座“不羁的登月工厂”，屡次因看似疯狂的项目而濒临破产，例如制作首部动画长片《白雪公主》以及建造受华特模型火车启发而成的迪士尼乐园。

这种不懈的雄心虽然催生了不朽的艺术成就，却也意外地发明了现代商业的“飞轮”模式。该期节目聚焦于“华特时代”，讲述了艺术、商业与工程学最终融合的故事，正是这一切，奠定了今天这个怀旧驱动帝国的根基。

---

## 12. Optocam Zero：一款基于树莓派Zero、采用现成组件打造的数字相机

**原文标题**: Optocam Zero: a Pi Zero based digital camera made using off the shelf components

**原文链接**: [https://github.com/dorukkumkumoglu/optocamzero](https://github.com/dorukkumkumoglu/optocamzero)

**Optocam Zero 概览**

Optocam Zero 是一款基于树莓派 Zero 的紧凑型数码相机，完全由现成组件和 3D 打印零件制作而成。受 Kodak Charmera 等玩具相机启发，其设计注重趣味性、直观性和便携性——小巧到可以放入口袋。

主要特性包括：2592x2592 像素 JPEG 自动对焦摄像头、1.4 英寸 240x240 像素 LCD 屏幕、8 种内置照片滤镜、GIF 录制/播放功能，以及用于快速向手机或电脑传输图像的定制热点界面。屏幕可调暗以节省电量，设备采用可充电 14500 锂电池（续航 70–80 分钟），支持 USB-C 充电，且充电时也可使用。

该项目完全开源。硬件文件夹提供物料清单、分步构建指南、3D 打印文件（包括 TPU 保护套）及可供定制的 CAD 文件。软件文件夹包含相机软件安装程序和控制说明。项目构建旨在易于上手，零件易寻且组装简单，鼓励大家打造属于自己的有趣且随身携带的相机。

---

## 13. Charge Robotics (YC S21) 正在招聘软硬件工程师

**原文标题**: Charge Robotics (YC S21) Is Hiring Software and Hardware Engineers

**原文链接**: [https://jobs.ashbyhq.com/charge-robotics](https://jobs.ashbyhq.com/charge-robotics)

这不是一篇标准文章，而是**Charge Robotics（YC S21）** 的招聘页面。该页面内容极少，仅说明公司正在招聘**软件与硬件工程师**。主要内容为一则提示：**“您需要启用JavaScript才能运行此应用”**，表明完整的职位列表与公司信息需通过JavaScript动态加载。

**关键信息：**
- **公司：** Charge Robotics（由Y Combinator S21批次支持）。
- **职位：** 同时招聘软件与硬件工程师。
- **问题：** 未启用JavaScript时页面无法显示；所提供文本中未呈现职责、资格要求或申请流程等进一步信息。

**总结：** YC S21初创公司Charge Robotics正在招聘软件与硬件工程师。但由于页面渲染需依赖JavaScript，故从现有内容中无法获取关于公司、职位描述或要求的更多细节。

---

## 14. 用统计学找到最佳狗零食

**原文标题**: Finding the Best Dog Treat with Statistics

**原文链接**: [https://www.wespiser.com/posts/2026-06-19-best-dog-treat.html](https://www.wespiser.com/posts/2026-06-19-best-dog-treat.html)

**摘要：** 本文介绍了一项利用布拉德利-特里模型确定狗狗最爱零食的统计实验。作者亚当·韦斯皮瑟训练他的灵缇犬比波普，每天在两种零食之间做出选择。该模型基于两两比较为物品分配强度分数，计算一种物品击败另一种物品的概率。文章将此与国际象棋中使用的埃洛等级分系统进行了比较，并提到了FaceSmash和Chatbot Arena等应用。

实验测试了五种零食：A（鸭肉+生皮）、B（格林尼斯）、C（猪骨棒）、D（鸡肉+生皮）和E（脱水鸡肉）。实验收集了直接对比结果，并使用自助法分析评估置信度。观察到一个显著的偏差：比波普总是选择他右侧（作者的左手）的零食。

结果显示，零食E（Pur Luv鸡肉）领先，在63%的自助法样本中获胜。零食A是紧追其后的挑战者（33%），零食D虽然可行但落后，而零食B和C明显处于劣势。作者得出结论，需要更多试验，特别是E和A之间的直接对比，才能完全确定排名。关键发现是狗狗更喜欢烘干鸡肉，但这一结果并非完全确凿。

---

## 15. 运行于1980年代伯努利磁盘上的任天堂Wii U游戏 [视频]

**原文标题**: Nintendo Wii U games running from a 1980's Bernoulli disk [video]

**原文链接**: [https://www.youtube.com/watch?v=8GZDOpV2OXk](https://www.youtube.com/watch?v=8GZDOpV2OXk)

这不是一篇文章，而是一个YouTube视频标题和YouTube标准法律页脚的副本。视频**“Nintendo Wii U游戏从1980年代的伯努利磁盘运行”**展示了一台现代任天堂Wii U游戏机从一台复古的Iomega伯努利盒（1980年代的可移动磁盘驱动器）运行游戏。

页脚内容提供了YouTube 2026年的版权、隐私政策、条款和法律信息，包括谷歌的联系方式（地址、电话、电子邮件）以及一条声明：创作者推荐的产品由第三方商家销售，YouTube对此不承担责任。

**要点：**
- 视频展示了Wii U游戏从1980年代的伯努利磁盘驱动器启动运行。
- 冗长的页脚涵盖了YouTube的法律声明、谷歌的公司信息，以及关于用户生成内容和产品销售的政策。

---

## 16. GLM 5.2 对比 Opus

**原文标题**: GLM 5.2 vs. Opus

**原文链接**: [https://techstackups.com/comparisons/glm-5.2-vs-opus/](https://techstackups.com/comparisons/glm-5.2-vs-opus/)

本文对比了GLM-5.2（开源权重、纯文本模型）与Claude Opus 4.8（多模态、封闭模型）在基于原始WebGL从头构建3D平台跳跃游戏中的表现。

**关键结果：**
- **Opus 4.8** 完成时间缩短一半（33分钟对70分钟），生成的游戏更干净、更准确，包含正确的纹理、动画以及胜利/死亡机制，成本约21.92美元。
- **GLM-5.2** 耗时更长，生成的游戏较粗糙（缺少纹理、尖刺陷阱无效、无胜利条件），但成本仅5.39美元——不到前者的五分之一。

**关键差异：** Opus支持多模态，可通过检查截图发现视觉bug（如调试界面残留）。GLM-5.2仅支持文本，只能通过像素数据验证，容易遗漏无纹理角色等明显问题。

**基准测试：** GLM-5.2在开源权重模型中领先，推理能力出色（如AIME 2026达99.2%），但Opus在大多数编程和智能体任务中仍占优势。

**结论：** 作者不会将Opus替换为主要模型，但认为GLM-5.2因其低成本、开源权重可访问性及纯文本任务的强劲表现，是工具库中极具价值的永久补充。

---

## 17. DisplayMate

**原文标题**: DisplayMate

**原文链接**: [https://www.displaymate.com/](https://www.displaymate.com/)

**DisplayMate (displaymate.com) 摘要**

DisplayMate Technologies 是消费电子领域显示校准、测量与测试解决方案的领先提供商。该公司以对显示质量的深入科学评估而闻名，常被制造商和科技评论者引用。

**关键点：**

- **专业领域：** DisplayMate 专注于对智能手机、平板电脑、笔记本电脑、显示器和高清电视中的屏幕进行客观的实验室级测试。其分析涵盖色彩准确度、亮度、对比度、可视角度和屏幕均匀性。
- **服务：** 他们提供专业校准软件（例如 Windows/macOS 版 DisplayMate）以及一套供工程师和评测者评估显示性能的测试图案。其“DisplayMate Mobile”应用被广泛用于评测移动设备屏幕。
- **声誉：** 该网站以发布对比旗舰设备（如 iPhone 和 Galaxy 系列）的详细“显示技术对决”文章而闻名。他们经常颁发“最佳智能手机显示屏”奖项，该奖项已成为重要的行业基准。
- **方法论：** 他们的评估基于严谨的定量测量（例如色域覆盖率、绝对亮度、对比度），而非主观意见，为消费者和制造商提供了数据驱动的参考。

总体而言，DisplayMate 堪称显示测试领域的黄金标准，它将复杂的技术数据转化为电子行业易于理解的性能评分。

---

## 18. 再次向Zig软件基金会捐赠40万美元

**原文标题**: Pledging another $400k to the Zig software foundation

**原文链接**: [https://mitchellh.com/writing/zig-donation-2026](https://mitchellh.com/writing/zig-donation-2026)

米切尔·桥本于2026年6月21日宣布，将向Zig软件基金会（ZSF）额外捐赠40万美元，使其家族对该基金会的总资助额达到70万美元。这笔捐赠是在2024年首笔捐款的基础上追加的，将分两年每年拨付20万美元。

桥本称赞Zig在技术上的稳步进展——以2026年开发日志为证——以及其独特的社区理念，包括"贡献者扑克"活动和严格的禁止大语言模型参与贡献政策。他承认，近期围绕Zig人工智能政策的公开讨论（尤其是有关Bun对Zig的分支及用Rust重写的争议）引发了分裂且缺乏共情的网络论战。

尽管桥本本人大量使用人工智能并撰文阐述其AI应用心得，但他强调观点分歧并未削弱他对ZSF的敬意。他认为开源项目可以"特立独行"，制定自己的边界与文化。他感谢Zig让自己的项目Ghostty成为可能，并在结语中表达了资助Zig的自豪感，同时鼓励他人踊跃捐赠。

---

## 19. 提示注入作为角色混淆

**原文标题**: Prompt Injection as Role Confusion

**原文链接**: [https://role-confusion.github.io](https://role-confusion.github.io)

基于标题和引用信息，以下是对论文《提示注入即角色混淆》的简要总结：

本文发表于ICML 2026，从**角色混淆**的视角重新审视了大语言模型中提示注入的安全漏洞。作者认为，成功的提示注入攻击利用了模型在对话或任务中理解自身角色时的根本性歧义。通过注入冲突指令，攻击者可使模型丧失其被赋予的身份（例如，一个有用的助手或安全界面），转而采纳遵循攻击者指令的冲突角色。

论文提出，这种角色混淆之所以发生，是因为大语言模型在其核心系统指令与外部用户输入之间缺乏稳健的元认知区分能力。因此，注入的提示可覆盖模型的主要角色，导致未经授权的操作或信息泄露。作者可能根据所引发的角色冲突类型，提出了一个对这些攻击进行分类的正式框架。他们还讨论了潜在的缓解措施，例如通过改进指令层次结构和上下文感知推理来强化角色边界。其核心贡献在于将提示注入的视角从简单的"越狱"问题，转向了模型运行语境中身份与权限的深层议题。

---

## 20. Claude Code“扩展思考”输出中的文本

**原文标题**: The text in Claude Code’s “Extended Thinking” output

**原文链接**: [https://patrickmccanna.net/the-text-in-claude-codes-extended-thinking-output-is-not-authentic/](https://patrickmccanna.net/the-text-in-claude-codes-extended-thinking-output-is-not-authentic/)

**总结：**

本文揭示了Anthropic的Claude Code会加密其“扩展思考”推理日志，使用户无法访问。本地文件仅包含一段600字符的加密签名，而非实际推理过程。Anthropic持有解密密钥，API仅返回推理的**摘要**，而非完整思维过程。完整访问权限需签订企业协议。

作者警告称，用户无法从本地文件中生成可靠的主体逻辑审计记录。通过ctrl+o显示的“扩展思考”输出是一种有损摘要（如同将JPEG转换为BMP再转换回来），并非驱动模型行为的实际推理。虽然输入、输出和操作可以被抓取，但底层推理仍无法访问。

文章批评Anthropic的文档表述间接，可能导致用户忽略仅返回摘要的事实。文章呼吁加速改进开源模型，以增强AI主体逻辑的透明度与可问责性。

---

## 21. 8087数学协处理器快速移位器的芯片分析（2020）

**原文标题**: Die analysis of the 8087 math coprocessor's fast bit shifter (2020)

**原文链接**: [https://www.righto.com/2020/05/die-analysis-of-8087-math-coprocessors.html](https://www.righto.com/2020/05/die-analysis-of-8087-math-coprocessors.html)

**摘要：**本文分析了英特尔8087数学协处理器（1980年）中的快速移位器。这款具有影响力的芯片奠定了IEEE 754浮点标准的基础。8087使浮点运算速度比基于软件的方法快达100倍，尽管其成本高达数百美元且包含4万个晶体管。

该移位器占据了芯片裸片很大一部分面积。它是一种“桶形移位器”，能够在单步内将二进制数左移或右移任意位数（0-63位）。为了在保持速度的同时最小化面积，英特尔采用了两级设计：先经过一个**位移位器**（移位0-7位），再经过一个**字节移位器**（移位0-7字节，即8位的倍数）。每一级都使用对角排列的传输晶体管逻辑（NMOS晶体管作为开关），激活特定的选择线会将输入连接到相应移位后的输出。

其一项关键创新在于移位器的双向能力：通过反转通过传输晶体管的数据流，它可以向任一方向移位。控制信号来自微码引擎、循环计数器（用于CORDIC超越函数算法）或前导零计数器（用于归一化）。文章指出，虽然早期的微处理器缺乏浮点硬件，但8087专用的移位器、80位寄存器、常量ROM和硬件异常处理相结合，极大地加速了科学计算和图形计算。

---

## 22. 墨西哥政府公布一款全新国产超低价电动汽车原型

**原文标题**: Mexican government unveils a prototype for a new homegrown, ultra-affordable EV

**原文链接**: [https://gizmodo.com/mexico-just-showed-off-a-new-extremely-cheap-government-backed-ev-2000769080](https://gizmodo.com/mexico-just-showed-off-a-new-extremely-cheap-government-backed-ev-2000769080)

**摘要：**

墨西哥政府发布了Olinia Uno原型车，这是一款全新的国产超平价电动汽车。在总统克劳迪娅·辛鲍姆的推动下，这款六座汽车续航里程为77英里，最高时速31英里，专为城市使用而设计，并支持轮椅无障碍通行。该车售价约8500美元，预计将于明年夏季上市，是辛鲍姆总统推动经济与制造业发展的“墨西哥计划”的一部分。

目前该车国产化率为50%，目标是到2030年达到75%。相关计划包括在墨西哥中部安装2000个充电站。

文章将这一进展与美国政策进行对比，指出在特朗普总统执政期间，联邦电动汽车补贴已被取消。与此同时，中国汽车制造商在充电速度和续航里程上已超越美国电动汽车。为了阻止价格实惠的中国电动汽车进入，美国对其征收了100%的关税。然而，中国电动汽车已在墨西哥销售，加拿大也通过一项合作协议允许进口最多4.9万辆中国产电动汽车。

作为回应，美国立法者及福特公司CEO吉姆·法利正推动立法（《保护美国免受中国汽车法案》），以禁止包括经加拿大转运的中国产联网汽车进入美国。目前尚不清楚墨西哥制造的Olinia Uno上市后是否会面临类似的美国阻力。

---

## 23. 加拿大计划在未来15年内新建多达10座核反应堆

**原文标题**: Canada is looking to build up to 10 new nuclear reactors over the next 15 years

**原文链接**: [https://www.cbc.ca/news/politics/federal-nuclear-strategy-9.7244509](https://www.cbc.ca/news/politics/federal-nuclear-strategy-9.7244509)

加拿大计划在未来15年内新建多达10座核反应堆，这是能源部长蒂姆·霍奇森宣布的新国家核战略的一部分。该战略的目标是到2050年使该国电网容量翻番，并支持低碳经济发展。具体措施包括：到2035年启动两座大型反应堆的建设，到2040年再规划五座，并在2035年前确保至少有一座反应堆在安大略省以外建成。此外，计划到2030年代末为偏远社区建成一座加拿大制造的微反应堆。

该项目成本可能超过1000亿加元，资金来源可能包括加拿大基础设施银行和加拿大增长基金。该战略旨在将核能行业就业岗位从9万个增加至18万个以上，同时计划到2040年将坎杜反应堆的出口扩展至至少四个新的国际市场，并将铀出口量翻番。

由于首相马克·卡尼过去在布鲁克菲尔德公司的投资涉及伦理审查（该公司共同持有一款竞争型反应堆的设计），他并未参与该战略的制定。保守党领袖皮埃尔·波利耶夫批评该计划缺乏实际成果。加拿大目前拥有四座核电站，提供全国约15%的电力。

---

## 24. 内存危机愈发严重，连复古内存条的价格都涨上了天。

**原文标题**: Memory crisis is getting so bad that even retro RAM prices are going to the Moon

**原文链接**: [https://www.theregister.com/personal-tech/2026/06/22/the-memory-crisis-is-getting-so-bad-that-even-retro-ram-prices-are-going-to-the-moon/5259627](https://www.theregister.com/personal-tech/2026/06/22/the-memory-crisis-is-getting-so-bad-that-even-retro-ram-prices-are-going-to-the-moon/5259627)

全球记忆体危机因AI产业对高利润HBM及服务器DRAM的需求而加剧，导致主流记忆体（DDR4、DDR5）短缺与价格上涨。TrendForce指出，此波缺货迫使硬件制造商转向DDR3、DDR2等旧型“传统”DRAM种类以控制成本并确保供应。部分厂商甚至重新设计产品，将规格从DDR4降级至DDR3，或从DDR3降级至DDR2。

受此影响，这些旧款组件的价格正大幅攀升。TrendForce预估，DDR2合约价将在2026年第二季度上涨55-60%，第三季度再增35-40%。主要供应商包括逐步淘汰DDR2的台湾华邦电子，以及计划最大化DDR2产能的晶豪科技。SK海力士与美光等大型记忆体厂商正缓慢规划产能扩充，但新增供应可能需至2027-2028年方能显著见效。

---

## 25. 会说话的无声日本符号

**原文标题**: Japanese symbols that speak without words

**原文链接**: [https://arun.is/blog/japan-symbols/](https://arun.is/blog/japan-symbols/)

**摘要：**

本文探讨了日本广泛使用无需文字即可传达意义的纯粹图形符号，这与美国仍需依赖文字的情况形成对比。文章重点介绍了以下几类符号：

- **历史符号：** *纹*或*家纹*（家族徽章）是简单的几何图案，拥有超过3万种变体，至今仍用于正式场合（例如，作为日本政府徽章的程式化泡桐图案）。

- **车辆标志：** 警车使用金色旭日徽章；消防车采用带有太阳、水管和水的雪晶设计。列车符号包括金色带翼三角形（代表*特急*限行服务），该符号一直使用至1987年。

- **驾驶员标志：** 四种强制或鼓励张贴的贴纸用于标识驾驶员状态：新手驾驶员的黄绿V形标志（🔰）、70岁以上驾驶员的四叶草标志、听障驾驶员的蝴蝶标志，以及身体残障驾驶员的苜蓿草标志——所有这些标志都提示他人给予额外关照。

- **交通标志：** "帮助标志"（带有白色十字和心形图案的行李牌）用于标识隐形残障或状况（例如慢性疾病、孕早期），以鼓励他人让座或提供帮助。另有一个"孕妇标志"为孕妇提供类似用途。

文章总结称，这些符号弥补了日本社会技能*空気を読む*（"阅读气氛"）的局限性——当语境不完整时（例如隐藏的驾驶员或隐形状况），这些标志提供了缺失的信息，使人们能够在无需言语交流的情况下适当调整行为。

---

## 26. Show HN：受够了广告，所以我做了自己的逻辑谜题网站

**原文标题**: Show HN: Got sick of ads, so I made my own logic puzzle site

**原文链接**: [https://puzzlelair.com/](https://puzzlelair.com/)

以下是该文章的简要摘要：

作者因对其他益智网站上侵入式广告的不满，创建了自己的逻辑谜题网站“Sudoku”（显然是有意拼写错或风格化处理）。该网站提供标准的9×9数独挑战，目标是在每一行、每一列或每一个子网格中不重复数字地填满整个网格。关键在于，该网站提供了一个干净、无广告的经典逻辑谜题解题体验。帖子标题“Show HN”表明这是一个与黑客新闻社区分享的自荐项目，凸显了作者通过构建一个简单、专注的工具来解决个人困扰（广告）的动机。

---

## 27. 救命，我意外搞出了一个抖动立体图！

**原文标题**: Help I accidentally a wigglegram

**原文链接**: [https://lmao.center/blog/wiggle-accidents/](https://lmao.center/blog/wiggle-accidents/)

作者无意中创造了“wigglegrams”——一种由快速连续拍摄的多张相似照片合成的立体GIF图像。作为一个优柔寡断、热衷囤积照片的摄影师，作者多年间不知不觉积累了数千组这样的序列。意识到这一点后，他们编写了一个脚本，利用感知哈希（类似于反向图片搜索技术）通过计算图像哈希值之间的汉明距离来自动检测相似照片序列。在遍历iCloud图库（因下载速度较慢）后，脚本提取了数百个wigglegrams——有些是真正的立体图像，更多的则像是无意的微型短片。示例包括风景、动物动态、设计作品和雕塑。作者提到该脚本已托管在GitHub上，支持在Mac的iCloud图库运行，也可指向任意图像文件夹。这篇博文以重新发现这些意外动画的欢快语气作结。

---

## 28. 雪佛龙与微软签署西得克萨斯数据中心20年供电协议

**原文标题**: Chevron signs 20-year power agreement with Microsoft for West Texas data center

**原文链接**: [https://www.chevron.com/newsroom/2026/q2/chevron-signs-20-year-power-agreement-with-microsoft-for-west-texas-data-center](https://www.chevron.com/newsroom/2026/q2/chevron-signs-20-year-power-agreement-with-microsoft-for-west-texas-data-center)

**摘要：** 雪佛龙已与微软签署一份为期20年的购电协议，计划在德克萨斯州西部开发一座名为“Kilby项目”的天然气发电设施。该项目将为微软运营的数据中心提供约2.67吉瓦的专用电力，以支持人工智能和云计算的发展。

关键要点：
- **参与方：** 雪佛龙（通过其子公司Energy Forge One LLC）与微软，并携手Engine No. 1。
- **容量与基础设施：** 约2.67吉瓦，采用通用电气维诺瓦燃气轮机和太阳涡轮机（卡特彼勒）。
- **时间表：** 最终投资决策预计在2026年底前完成；首次供电预计在2028年。
- **经济影响：** 超过100亿美元的州和地方税收收入，支持近2000个就业岗位。
- **环保措施：** 使用非饮用苦咸水、先进的氮氧化物排放控制（选择性催化还原技术），以及计划中的采出水再利用。
- **回报：** 目标回报率为十几百分比，现金流独立于油气价格周期。

该项目旨在直接向微软提供可靠、可调度的电力，同时最大限度减少对区域电网的压力。

---

## 29. 艾伦·格林斯潘去世

**原文标题**: Alan Greenspan has died

**原文链接**: [https://www.washingtonpost.com/obituaries/2026/06/22/alan-greenspan-most-powerful-central-banker-modern-times-dies-100/](https://www.washingtonpost.com/obituaries/2026/06/22/alan-greenspan-most-powerful-central-banker-modern-times-dies-100/)

无法访问文章链接。

---

## 30. 知情人士称，美国国家科学基金会大幅削减研究项目以支持新科技计划

**原文标题**: NSF slashes research programs to support new tech initiative, insiders say

**原文链接**: [https://www.science.org/content/article/exclusive-nsf-slashes-research-programs-support-new-tech-initiative-insiders-say](https://www.science.org/content/article/exclusive-nsf-slashes-research-programs-support-new-tech-initiative-insiders-say)

**摘要：**

据内部人士透露，美国国家科学基金会（NSF）正计划削减或终止数十个现有研究项目、资助金及奖学金，以便将资金重新导向一项新的高优先级技术计划。该计划名为“NSF 2.0”或“技术、创新与合作伙伴”（TIP）理事会，旨在加速人工智能、量子计算和先进制造等领域的发展。为了在未来几年内腾出约17亿美元，NSF正在削减核心科学项目，包括研究生研究奖学金、地球科学以及社会/行为科学。工作人员正在被重新分配，一些长期资助项目也不再续期。批评者认为，尽管聚焦应用技术是必要的，但削减经费危及了作为未来突破基础的基础研究。NSF领导层则辩称，这是为了维持美国相对于中国的竞争力而采取的战略转变，但此次重组引发了内部对基础科学支持削弱及研究人员士气低落的担忧。这些变化是联邦科学机构更广泛趋势的一部分，即优先考虑具有明确经济或国家安全回报的“应用启发型”研究。

---

