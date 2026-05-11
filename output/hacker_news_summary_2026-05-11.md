# Hacker News 热门文章摘要 (2026-05-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. CUDA-oxide：英伟达官方Rust到CUDA编译器

**原文标题**: CUDA-oxide: Nvidia's official Rust to CUDA compiler

**原文链接**: [https://nvlabs.github.io/cuda-oxide/index.html](https://nvlabs.github.io/cuda-oxide/index.html)

**CUDA-Oxide 简介**

CUDA-Oxide 是 NVIDIA 开发的一款实验性的官方 Rust 转 CUDA 编译器，能够使用标准、地道的 Rust 语言编写 GPU 内核。它直接将 Rust 代码编译为 PTX，无需借助特定领域语言或外部语言绑定。

该项目目前处于早期 alpha 阶段（v0.1.0），可能存在错误和不完整功能。欢迎用户提供反馈。

**主要特性：**
- **GPU 原生 Rust：** 充分利用 Rust 的类型系统、所有权模型和安全性保障。
- **SIMT 编译器：** 使用自定义的 `rustc` 代码生成后端，而非特定领域语言。
- **异步执行：** 支持惰性 `DeviceOperation` 图、流池以及用于组合 GPU 工作的 `.await` 语法。

**快速入门示例：**
`vecadd` 内核在 GPU 上对两个数组进行加法运算。主机代码加载 CUDA 模块，配置 1024 个元素的启动参数，并获取结果。

**重要说明：**
- 需要熟悉 Rust 的所有权、trait、泛型和异步编程。
- `#[cuda_module]` 宏将设备工件嵌入主机二进制文件，并生成类型化的启动方法。
- 可根据自定义需求使用底层 API（`load_kernel_module`、`cuda_launch!`）。

安装前置条件后，使用 `cargo oxide run vecadd` 命令构建并运行。

---

## 2. 红辣椒乐队以3亿美元出售音乐作品版权

**原文标题**: Red Hot Chili Peppers sell music catalogue for $300M

**原文链接**: [https://guitar.com/news/industry-news/red-hot-chili-peppers-sell-music-catalogue/](https://guitar.com/news/industry-news/red-hot-chili-peppers-sell-music-catalogue/)

红辣椒乐队以超3亿美元价格将其全部音乐作品版权出售给华纳音乐集团。此前曾有传闻称其要价3.5亿美元。本次交易涵盖所有母带录音，意味着华纳音乐将从此获得流媒体播放、电台播送及专辑销售所产生的收益。

这已是该乐队第二次出售音乐版权。2021年，他们曾将词曲版权——包含旋律与歌词的歌曲"蓝图"——以1.4亿美元售予投资公司Recognition（原Hipgnosis）。该公司近期或将以近40亿美元被索尼音乐集团收购。

文章阐释了艺人可分别出售歌曲的不同权益：母带录音（已录制的表演）与词曲版权（底层创作）。近期同类高调交易包括：布鲁斯·斯普林斯廷（索尼，5亿美元）、鲍勃·迪伦（环球音乐，3亿美元）及创世纪乐队（康科德音乐，3亿美元）。大卫·李·罗斯亦于2025年售出其作品版权，自称在此交易中"赚得盆满钵满"。

---

## 3. Nullsoft，1997-2004（2004）

**原文标题**: Nullsoft, 1997-2004 (2004)

**原文链接**: [https://slate.com/technology/2004/11/the-death-of-the-last-maverick-tech-company.html](https://slate.com/technology/2004/11/the-death-of-the-last-maverick-tech-company.html)

**摘要：**

本文讲述了Nullsoft创始人贾斯汀·弗兰克尔的故事，以及他在美国在线（AOL）旗下的叛逆职业生涯。弗兰克尔是一名 teenage 辍学生，于1997年创建了Winamp，从而引发了MP3热潮。1999年，AOL以1亿美元收购了Nullsoft，但弗兰克尔利用自己的职位挑战公司母公司及音乐产业。

在他的AOL办公室里，他发布了未经授权的程序，如Gnutella（一种去中心化的点对点网络，改进了Napster）和WASTE（一种加密的、仅限邀请的文件共享系统），两者均旨在对抗美国唱片业协会（RIAA）。AOL多次关闭这些项目。弗兰克尔还创建了一个工具，用于移除AOL即时通讯工具中的广告。

经过多年冲突，弗兰克尔于2004年初辞职，AOL很快清除了Nullsoft，仅留下三名员工。文章将弗兰克尔描绘成一个“朋克”程序员，利用自己的金钱和职位破坏支付他薪水的体系。文章总结道，尽管被边缘化，弗兰克尔在面临挑战时总能创作出最佳作品，暗示他无需AOL支持，也能找到挑战FBI等权威的新方式。

---

## 4. Java记录到本地内存快速映射库

**原文标题**: Library for fast mapping of Java records to native memory

**原文链接**: [https://github.com/mamba-studio/TypedMemory](https://github.com/mamba-studio/TypedMemory)

**TypedMemory** 是一个 Java 库，用于通过 Java 25+ 外部函数与内存（FFM）API 操作堆外内存。它直接将 Java 记录类型映射到原生内存，提供了强类型、表达力强的接口，同时保留底层控制能力。

**主要特性：**
- 通过 `Arena` 分配类型化内存，支持 `get(index)`/`set(index, value)` 操作
- 支持嵌套记录、固定长度数组及布局内省
- 可包装现有 `MemorySegment` 对象并重新解释内存
- 提供批量操作，如填充、复制、初始化与交换

**

**使用场景：** 原生互操作、面向数据编程、图形/模拟工作负载、二进制协议及高性能数据容器。

**状态：** 实验性，未来计划支持指针类型字段与联合体。

---

## 5. Ratty——一款支持内联3D图形的终端模拟器

**原文标题**: Ratty – A terminal emulator with inline 3D graphics

**原文链接**: [https://ratty-term.org/](https://ratty-term.org/)

**摘要：**

Ratty 是一款原型终端模拟器，可将实时 3D 图形直接集成到命令行界面中。与传统仅显示文本的终端不同，Ratty 允许用户内联运行 3D 应用程序（使用软件光栅化器），即图形与标准命令一同显示在终端窗口中。

主要特性包括：
- **内联 3D 渲染**：图形直接绘制到终端的帧缓冲区中。
- **键盘/鼠标交互**：用户可通过标准终端输入与 3D 场景交互。
- **轻量级**：作为“实验性”项目设计，代码库小巧，完全基于软件运行（无需 GPU 或 OpenGL）。
- **跨平台潜力**：依赖最少（SDL2），可在 Linux 和 macOS 上编译。

该项目包含详细介绍设计的博客文章以及可下载的源代码。Ratty 并非要取代功能完备的终端，而是对在 CLI 环境中融合文本与 3D 图形的一次创意探索。

---

## 6. 现在注册Gmail需要扫描二维码并发送短信验证。

**原文标题**: Gmail registration now requires scanning a QR code and sending a text message

**原文链接**: [https://discuss.privacyguides.net/t/google-account-registration-now-requires-sending-an-sms-via-phone-instead-of-receiving-an-sms/36082](https://discuss.privacyguides.net/t/google-account-registration-now-requires-sending-an-sms-via-phone-instead-of-receiving-an-sms/36082)

**摘要：**

用户报告称，Gmail注册现在要求使用智能手机扫描二维码，并通过该手机向Google发送短信以完成电话号码验证。作者指出，仅凭二维码无法完成注册，因为流程强制用户手机向Google发送短信，而不仅仅是扫描二维码。尽管此举被标榜为安全改进——使流程更困难但并非不可行——但它有效阻止了依赖一次性或虚拟号码的短信池服务（例如SMSpool）的使用。鉴于这一新要求，用户寻求关于未来账户注册替代方法的建议。要点包括：强制二维码扫描+短信发送、增强安全性的理由，以及无法使用第三方短信服务。

---

## 7. 在Erlang中使用`:counters`和`:atomics`实现快速计数

**原文标题**: Counting Fast in Erlang with:counters and:atomics

**原文链接**: [https://andrealeopardi.com/posts/erlang-counters-and-atomics/](https://andrealeopardi.com/posts/erlang-counters-and-atomics/)

**摘要：在 Erlang 中使用 `:counters` 和 `:atomics` 进行快速计数**

本文探讨了两种提供快速、共享、可变内存以支持计数操作的 OTP 数据结构，它们作为 Erlang 不可变进程模型的逃逸出口。

**`:atomics`**：一个位于堆外的 64 位整数数组，支持真正的原子操作（加法、交换、比较并交换），并具有顺序一致性排序。适用于同步和速率限制（例如 Broadway）。写入和读取速度很快，但在高并发下，由于写入者争用同一缓存行，性能会趋于平稳。

**`:counters`**：也是一个堆外数组，但每个调度器存储一个整数（在 M4 Pro 上通常为 14 个）。写入操作**极快**且无争用，因为每个调度器仅更新自己的本地单元。然而，读取操作需对所有调度器中的单元进行求和，且仅具有**最终一致性**——它们可能不反映一致的全局快照。适用于写操作密集、读操作稀少的场景，如点击计数器。

**基准测试**：当只有一个写入者时，所有解决方案性能相似。随着并发写入者数量增加，ETS 在超过核心数后性能显著下降。`:atomics` 保持稳定的吞吐量。`:counters` 的吞吐量随写入者数量线性扩展至核心数，之后趋于平稳而无下降。

**关键结论**：当需要原子性、CAS 和强排序时，使用 `:atomics`。当写入频繁、读取稀少时，使用 `:counters`（配合 `:write_concurrency`）。对于特定的计数工作负载，两者均优于 ETS。

---

## 8. 《在Swift中训练大语言模型，第1部分：将矩阵乘法从Gflop/s提升至Tflop/s》

**原文标题**: Training an LLM in Swift, Part 1: Taking matrix mult from Gflop/s to Tflop/s

**原文链接**: [https://www.cocoawithlove.com/blog/matrix-multiplications-swift.html](https://www.cocoawithlove.com/blog/matrix-multiplications-swift.html)

本文详细介绍了作者在Apple Silicon上优化Swift手写矩阵乘法代码以训练大型语言模型(LLM)的努力。目标是匹配或超越Andrej Karpathy基于C语言的参考实现llm.c的性能，每轮训练需完成0.2万亿次浮点运算。

最初的"基础Swift"实现速度比C语言慢15–20倍，训练速度仅达到其7.3%。作者确定了三项关键优化：

1. **MutableSpan (Swift 6.2)：** 用`MutableSpan`替代标准Swift数组消除了代价高昂的唯一性检查（`_ArrayBuffer.beginCOWMutation()`），将训练迭代速度提升三倍，达到C语言性能的24%。

2. **宽松数学运算 (Swift-Numerics)：** 使用`Relaxed.multiplyAdd`实现融合乘加(FMA)指令（类似C语言的`-ffast-math`），使SIMD向量化成为可能。这带来每秒处理词元数10倍的提升，训练速度达到C语言的85.1%。

3. **InlineArray (Swift 6.2)与循环展开：** 作者利用`InlineArray`复制C语言栈分配数组进行循环展开，减少内存开销。

文章强调，这些优化仅使用Swift特性、无需外部库即可缩小与C语言性能的差距。未来章节将探讨Apple的ML框架和GPU（Metal）实现。核心信息是：通过针对性优化——尤其善用Swift 6.2新特性与宽松浮点语义——纯Swift在LLM训练等计算密集型任务中可接近C语言的性能水平。

---

## 9. Interfaze：一种为大规模高精度而构建的新型模型架构

**原文标题**: Interfaze: A new model architecture built for high accuracy at scale

**原文链接**: [https://interfaze.ai/blog/interfaze-a-new-model-architecture-built-for-high-accuracy-at-scale](https://interfaze.ai/blog/interfaze-a-new-model-architecture-built-for-high-accuracy-at-scale)

## Interfaze 概述

Interfaze是一种新型模型架构，融合了DNN/CNN模型与全向Transformer的优势，专为确定性任务的高精度规模化设计。该架构揭示了一个关键洞察：虽然Transformer/LLM模型在细微的人类层面任务上表现出色，但在OCR、结构化输出、翻译和语音转文本等确定性任务上效率低下且容易出错。

**关键特性：**
- 100万Token上下文窗口，3.2万最大输出Token
- 输入模态：文本、图像、音频、文件
- 内置网络索引与搜索功能
- 针对特定任务的局部模型激活机制

**性能表现：**
Interfaze声称在OCR、目标检测、语音识别、结构化输出和通用推理等9项基准测试中，性能超越Gemini-3-Flash、Claude-Sonnet-4.6、GPT-5.4-Mini和Grok-4.3等模型。

**定价：** 每百万输入Token 1.50美元，每百万输出Token 3.50美元，与Gemini-3-Flash相近。

**关键应用场景：**
1. **OCR/文档处理** – 复杂PDF、手写文本、多栏布局及目标检测
2. **结构化输出** – 遵循JSON模式并精确填充数值
3. **语音转文本** – 每秒算力可转录约209秒音频
4. **网络数据提取** – 内置搜索与信息丰富功能

该模型采用Chat Completions API标准，兼容现有AI SDK（OpenAI、Vercel AI、LangChain）。

---

## 10. 《AMÁLIA与欧洲葡萄牙语大语言模型的未来》

**原文标题**: AMÁLIA and the future of European Portuguese LLMs

**原文链接**: [https://duarteocarmo.com/blog/amalia-and-the-future-of-european-portuguese-llms](https://duarteocarmo.com/blog/amalia-and-the-future-of-european-portuguese-llms)

《"阿玛莉亚"与欧洲葡萄牙语大语言模型的未来》摘要

本文对葡萄牙斥资550万欧元的"阿玛莉亚"项目进行了评述。该项目旨在构建完全开源的欧洲葡萄牙语大语言模型。作者在肯定其努力的同时，提出了三大核心质疑：

1. **缺乏真正的开放性**：尽管宣称"完全开源"，但"阿玛莉亚"尚未公布模型权重、训练数据或新基准测试。作者对比了全面共享权重、代码与日志的Olmo模型，指出真正的开放性对科研与信任至关重要。

2. **葡萄牙语数据不足**："阿玛莉亚"是EuroLLM模型的延续，其1070亿token的预训练数据中仅5.5%源自欧洲葡萄牙语（Arquivo.pt语料库）。即使微调阶段引入合成数据，葡萄牙语总占比仍偏低。该模型虽在部分葡萄牙语新基准测试中超越某些顶尖模型（如Qwen 3-8B），却在关键ALBA基准测试中落败——这引发质疑：更多葡萄牙语数据是否能带来更优结果？

3. **基准测试失准**：四项新设的欧洲葡萄牙语基准测试聚焦于语法、句法及与巴西葡萄牙语的差异，却未能评估模型对葡萄牙本土文化及事实性知识（如当地历史、美食或名人）的掌握程度。作者认为这对国家级大语言模型不可或缺，并主张以更丰富的预训练数据作为解决方案。

尽管存在上述质疑，作者仍肯定该项目的重大意义、团队的专业实力，以及为小语种构建大型模型的固有难度。他们总结道：只要项目团队承诺完全开放，并重新聚焦于深度的葡萄牙语专项训练，"阿玛莉亚"将成为充满希望的起点。

---

## 11. Bild AI (YC W25) 正在招聘创始产品工程师

**原文标题**: Bild AI (YC W25) Is Hiring Founding Product Engineers

**原文链接**: [https://bild.ai/jobs](https://bild.ai/jobs)

本文是**Bild AI（YC W25）** 的招聘启事，该公司是Y Combinator支持的初创企业，目前正在招聘**创始产品工程师**一职。页面核心内容极为有限，其自身声明：“您需要启用JavaScript才能运行此应用。”

根据标题及Y Combinator的常规招聘惯例，关键信息如下：

- **公司：** Bild AI，属于Y Combinator 2025年冬季批次（YC W25）
- **职位：** 创始产品工程师（可能负责早期产品开发，衔接工程与产品愿景）
- **背景：** 公司处于早期阶段，提供创始团队成员职位，具有显著股权和影响力。可见文本中未提供地点、薪资或具体技术栈信息。

由于仅显示静态文本，完整的职位描述和申请详情隐藏在JavaScript代码之后，这意味着不启用脚本则无法完整阅读该文章。主要信息是：Bild AI正在积极招募一位创始工程师加入其创业团队。

---

## 12. 加州大学洛杉矶分校发现首款修复脑损伤的中风康复药物

**原文标题**: UCLA discovers first stroke rehabilitation drug to repair brain damage

**原文链接**: [https://stemcell.ucla.edu/news/ucla-discovers-first-stroke-rehabilitation-drug-repair-brain-damage](https://stemcell.ucla.edu/news/ucla-discovers-first-stroke-rehabilitation-drug-repair-brain-damage)

**摘要：**

加州大学洛杉矶分校健康中心的研究人员确定了一种他们声称是首个能够复制物理中风康复脑修复效果的药物。这项于2025年3月18日发表在《自然·通讯》上的研究，在老鼠身上测试了两种候选药物，其中一种名为DDL-920的药物在运动控制方面产生了显著的恢复效果。

中风是导致成人残疾的主要原因，目前的治疗依赖于物理康复，但由于患者难以维持所需的康复强度，这种疗法通常效果有限。由S. Thomas Carmichael博士领导的加州大学洛杉矶分校团队发现，中风会导致远离损伤部位的大脑连接丧失，尤其是在小清蛋白神经元中。这些神经元有助于产生伽马振荡——这种脑电节律能够协调控制运动的神经网络。中风会抑制这些振荡，而成功的康复则能恢复它们。

研究人员确定了由合著者Varghese John实验室开发的DDL-920是一种能够刺激小清蛋白神经元以恢复伽马振荡的药物。在老鼠模型中，这种药物复制了通常通过物理治疗实现的运动功能恢复效果。

这项研究提供了两个关键进展：它确定了康复效益背后的大脑回路，并提出了一个独特的药物靶点来模拟这些效果。在开始人体试验之前，还需要进行进一步的安全性和有效性研究。如果成功，DDL-920可能成为第一种用于中风康复的分子药物，推动该领域超越传统的物理疗法。

---

## 13. Linux 终端内存使用情况

**原文标题**: Linux Terminal Memory Usage

**原文链接**: [https://gilesorr.com/blog/linux-terminal-memory-usage.html](https://gilesorr.com/blog/linux-terminal-memory-usage.html)

**摘要：**

作者作为长期使用Linux且常开大量终端窗口的用户，发现`kitty`终端模拟器在配备16GB RAM的机器上因过度使用交换空间（高达50GB）导致系统严重卡顿。在终止`kitty`并切换至`xterm`后，交换空间使用量降为零。

这一经历促使作者在X11（配合Openbox）和Wayland（配合KDE）环境下，系统化地评测了多种终端模拟器的内存使用情况。测试在运行一组命令前后分别测量了USS、PSS和RSS。主要发现包括：

- **`st`（简易终端）** 内存占用最低，甚至优于`xterm`。
- **`kitty`** 内存占用最高，USS/PSS/RSS值均居高不下。
- **`gnome-terminal`** 表现出乎意料地好，与预期相反。
- 运行环境（X11与Wayland）对内存消耗影响甚微。
- **`foot`** 和 **`konsole`** 支持像素级完美图像渲染（通过`timg`），这是作者此前看中`kitty`的功能。

尽管`st`效率极高，但缺乏回滚功能，这成为其致命缺陷。作者目前倾向于将**`lxterminal`（用于X11）** 和**`foot`（用于Wayland）** 作为兼顾实用性与内存效率的选择。文章强调，终端的选择会对系统内存产生显著影响，尤其是在运行大量实例时。

---

## 14. 用aarch64汇编构建一个Web服务器，给我（缺乏意义的）生活赋予意义

**原文标题**: Building a web server in aarch64 assembly to give my life (a lack of) meaning

**原文链接**: [https://imtomt.github.io/ymawky/](https://imtomt.github.io/ymawky/)

该文章介绍了**ymawky**的创建过程——一款完全使用**AArch64汇编语言编写、运行于macOS系统**的静态HTTP网络服务器，仅通过原始Darwin系统调用实现（无libc库）。作者开展此项目的目的是通过剥离所有抽象层，深入理解网络服务器的工作原理。

**核心要点：**
- **汇编级限制：** 所有操作（字符串解析、文件I/O、套接字管理）均需手动实现。例如，解析HTTP头部需逐字节扫描，路径规范化与百分比解码也无法依赖内置库函数。
- **请求分叉模型：** 每个连接通过`fork()`创建子进程处理。虽简化了内存隔离，但与nginx等事件驱动模型相比，并发能力受限且开销更高。
- **支持功能：** GET、HEAD、PUT、OPTIONS、DELETE方法；字节范围请求；目录列表（含HTML/URL编码防XSS攻击）；自定义错误页面；请求体大小限制。
- **安全强化：**
  - 超时机制防范慢速攻击（头部超时、基于`Content-Length`与最小比特率计算的逐字节主体超时）。
  - PUT方法通过临时文件实现原子写入，避免部分数据损坏。
  - 路径安全检查（例如拒绝访问`/etc/shadow`）及通过`fstat64()`缓解检查时间/使用时间竞争问题。
- **局限性：** 仅支持aarch64架构的macOS系统，无外部库依赖，无预置解析器。

**开发动机：** 作者希望重现20世纪80年代最小化计算的愿景，从系统调用到HTTP解析逐层理解全貌，以接受效率折衷为代价换取完全控制权。

---

## 15. 波士顿图书馆：你仍可借出巨型木偶的地方

**原文标题**: The Boston Library Where You Still Can Borrow a Giant Puppet

**原文链接**: [https://binj.news/2026/05/06/the-boston-library-where-you-still-can-borrow-a-giant-puppet/](https://binj.news/2026/05/06/the-boston-library-where-you-still-can-borrow-a-giant-puppet/)

这篇文章重点介绍了波士顿公共图书馆独特的“可借物品”馆藏，其中最引人注目的是可供借用的巨型木偶。除了传统图书外，该图书馆还提供种类繁多的非传统物品，如乐器、缝纫机、棋盘游戏，甚至还有尤克里里。这些常用于游行、讲故事和社区活动的巨型木偶尤其受欢迎。该项目旨在培养创造力、促进社区参与并推动无障碍学习，反映出图书馆正趋向于成为提供体验式资源的社区中心这一更广泛的潮流。文章强调，这些物品只需凭图书馆借书证即可免费借用，凸显了图书馆致力于为读者提供非传统但宝贵资源的决心。

---

## 16. 毒液与辣椒为杀灭耐药菌提供关键线索

**原文标题**: Venom and Hot Peppers Offer a Key to Killing Resistant Bacteria

**原文链接**: [https://www.wired.com/story/mexican-science-transforms-scorpion-venom-and-habanero-chile-into-antibiotics-against-resistant-bacteria/](https://www.wired.com/story/mexican-science-transforms-scorpion-venom-and-habanero-chile-into-antibiotics-against-resistant-bacteria/)

墨西哥国立自治大学的研究人员从蝎毒和哈瓦那辣椒中提取成分，成功开发出三种新型抗生素，用于对抗耐药菌。

由洛里瓦尔·多明戈斯·波萨尼·波斯塔伊领导的团队，从蝎毒（*Diplocentrus melici*）中分离出两种苯醌分子。其中一种蓝色分子对结核分枝杆菌和鲍曼不动杆菌有效，另一种红色分子则针对金黄色葡萄球菌。小鼠实验证实，蓝色分子对结核病具有显著疗效。这两类化合物已在墨西哥和南非获得专利，目前研究人员正在开发纳米颗粒技术以稳定这些分子，从而确保其安全用于人体。

另一组由赫拉尔多·科尔索·布尔格特带领的团队，在哈瓦那辣椒（*Capsicum chinense*）中发现了一种名为defensin J1-1的防御素肽。他们据此研发的药物XisHar J1-1，对铜绿假单胞菌（一种高优先级耐药病原体）效果显著。该肽通过基因改造细菌结合工业发酵技术生产。虽然初步测试使用的是实验室菌株，但团队计划后续采用患者来源的耐药菌株开展进一步研究。

这两项研究为应对抗菌素耐药性这一重大全球健康威胁提供了令人鼓舞的突破方向，但仍需开展更多研究及临床试验。

---

## 17. 维护社区空间

**原文标题**: Holding Community Space

**原文链接**: [https://supernuclear.substack.com/p/building-a-space-people-never-want](https://supernuclear.substack.com/p/building-a-space-people-never-want)

**《守护社群空间》概要**

杰西·埃弗斯分享了经营海赛德工作坊的经验教训。这个位于布鲁克林的社区空间在2024年关闭前，曾举办过音乐会、艺术展、工作坊等活动。文章探讨了如何平衡营造温暖包容的创造性空间与维持其经济可持续性之间的矛盾。

**构建社群空间的核心理念：**

1. **信任**——默认信任他人。这种坦诚能营造归属感，即便偶尔会遭遇信任背叛。

2. **归属感**——让人们随时感到被接纳，而不仅限于活动期间。通过低价饮品、热情接待等额外付出，让归属感超越任何入场门槛。

3. **能动性**——鼓励人们尝试新事物。"我们可以做到"的文化能帮助人们克服自我怀疑，做出有意义的贡献。

4. **丰裕心态**——培育非交易性关系。当成员感受到归属感时，会主动贡献时间、金钱和资源。

5. **明确目标**——空间需要清晰且不断进化的存在意义。海赛德因试图"满足所有人需求"而陷入困境，最终被定位为单一演出场所。

6. **透明沟通**——公开财务和个人需求。当埃弗斯披露海赛德财务困境时，捐款纷至沓来。

**海赛德关闭原因：** 埃弗斯起步时缺乏清晰规划，独自承担所有风险，导致空间沦为不可持续的场馆。他损失了原本用于自由职业的收入时间，也缺少获得全职支持的精力。虽不后悔这段经历，但强调明确的目标与支持本可避免困局。他的终极建议是：**即刻行动**——创造有意义的社群不必等到万事俱备。

---

## 18. 软件工程或不再是终身职业

**原文标题**: Software engineering may no longer be a lifetime career

**原文链接**: [https://www.seangoedecke.com/software-engineering-may-no-longer-be-a-lifetime-career/](https://www.seangoedecke.com/software-engineering-may-no-longer-be-a-lifetime-career/)

**摘要：**

本文认为，由于人工智能的普及，软件工程可能将成为类似职业体育的短期职业。作者反驳了“使用人工智能会因技能退化而降低工程师长期效率”的观点。即便该观点成立，作者认为它也无关紧要：若人工智能能带来足够的短期生产力提升，工程师将被迫使用它来保持竞争力——就像建筑工人必须搬运重物，尽管这会对身体造成长期损耗。

文章警告，拒绝使用人工智能可能导致被那些愿意用长期认知能力换取短期职业收益的人淘汰。作者类比职业运动员：他们职业生涯巅峰期约15年，之后身体便无法支撑。软件工程师可能面临类似现实——在有限时间内获得高薪，随后因人工智能使传统技能过时而需要转型。

文章总结道，尽管这一结果令人遗憾，但认清现实并提前规划，总好过无视趋势。文章还简要指出，由于高薪和全球远程工作的存在，技术行业工会不太可能减缓这一转变。

---

## 19. 展示HN：面向科学论文的TikTok

**原文标题**: Show HN: TikTok but for Scientific Papers

**原文链接**: [https://andreaturchet.github.io/website/index.html](https://andreaturchet.github.io/website/index.html)

**摘要：**  
Papel是一款面向研究人员的社交网络与移动应用，旨在像TikTok的推送式内容流一样，让科学论文的发现与互动更具吸引力。该平台已索引超过200万篇论文，并采用100%设备端AI以保护隐私。核心功能包括：  

- **个性化发现**——根据用户兴趣、热点话题、时效性及社区互动对论文进行排序的推送流，支持向量相似度推荐与全屏论文卡片。  
- **AI聊天**——针对任意论文提问，通过基于完整PDF文本的RAG流程回答，完全由设备端AI驱动（Apple Intelligence或本地MLX模型）。  
- **游戏化机制**——每篇论文自动生成3道问答测验，并设有经验值、连续打卡及学术等级（从本科生到诺贝尔奖得主）。  
- **社区互动**——点赞、评论、分享、私信及学术徽章展示。  
- **上线计划**——预计2026年发布，用户可注册接收通知。  
- **彩蛋**——内置“注意力小鸟”小游戏，玩家需在论文缩略图中导航。

---

## 20. 电视史上最精彩的一镜：詹姆斯·伯克仅有一次机会拍下这一幕（2024）

**原文标题**: The greatest shot in television: James Burke had one chance to nail this scene (2024)

**原文链接**: [https://www.openculture.com/2024/10/the-greatest-shot-in-television.html](https://www.openculture.com/2024/10/the-greatest-shot-in-television.html)

文章重点介绍了1978年电视系列片《关联》中一段备受赞誉的80秒镜头，该片由科学史学家詹姆斯·伯克主持。画面中，伯克讨论如何用保温瓶以液态形式储存气体，随后指向身后一枚火箭——在第一次且唯一一次拍摄中完美发射——这一壮举因精准的时机把控和伯克的沉着冷静而备受赞叹。这个镜头是长达50分钟剧集的高潮，该集追溯了从信用卡到土星五号火箭的技术演进历程。虽然不如卡尔·萨根的《宇宙》出名，但《关联》仍备受推崇，该片段在YouTube上已获得近1800万次观看。文章指出其中一处微妙的剪辑技巧（伯克从一个无时间限制的镜头走进预先构图的火箭场景），但结论称这并不减损其成就。伯克的结束语——“目的地：月球，或莫斯科，行星，或北京”——被认为如今听起来比近年少了几分过时感。

---

## 21. 硬件认证作为垄断助推器

**原文标题**: Hardware Attestation as Monopoly Enabler

**原文链接**: [https://grapheneos.social/@GrapheneOS/116550899908879585](https://grapheneos.social/@GrapheneOS/116550899908879585)

标题为《硬件认证作为垄断助推器》的文章探讨了注重隐私的操作系统GrapheneOS对苹果与谷歌使用硬件认证技术的担忧。该文指出，这些企业正逐步扩大对设备安全功能（尤其是硬件级认证）的控制，并将其用于强制推行私有标准。这种机制营造出类似垄断的环境，仅允许经认证的操作系统或应用程序访问特定设备功能，实质性地排除了GrapheneOS等替代方案。其核心观点在于：这类认证机制虽旨在增强安全性，却也可能被滥用来限制用户选择、削弱竞争，并将权力集中于少数科技巨头之手，最终可能扼杀创新与注重隐私的项目发展。

---

## 22. 使用手机加速度计调音的吉他调音器

**原文标题**: Guitar tuner that uses phone accelerometer

**原文链接**: [https://tautme.github.io/phone-sensors/accel-tuner.html](https://tautme.github.io/phone-sensors/accel-tuner.html)

本文介绍一款利用手机内置加速度计检测琴弦振动的吉他调音器应用。用户需将手机紧贴吉他面板，拨动琴弦后，应用会显示X、Y、Z轴的原始振动波形及合成幅度轨迹（|a|）。音高检测通过最强振动轴进行，并采用抗混叠校正识别实际琴弦频率。

该调音器提供标准吉他调音预设：E2、A2、D3、G3、B3、E4。应用采用自动模式等待传感器输入，界面需用户点击启动并请求运动权限。需注意该应用在配备高采样率惯性测量单元（IMU）的安卓设备上表现最佳。

---

## 23. Cloudflare 是否勒索了 Canonical？谁能解释一下？

**原文标题**: Can Someone Please Explain Whether Cloudflare Blackmailed Canonical?

**原文链接**: [https://www.flyingpenguin.com/can-someone-please-explain-whether-cloudflare-blackmailed-canonical/](https://www.flyingpenguin.com/can-someone-please-explain-whether-cloudflare-blackmailed-canonical/)

本文调查了2026年4月针对Canonical的DDoS攻击，指控其中存在涉及Cloudflare的潜在利益冲突。此次攻击由一个亲伊朗组织声称负责，导致Canonical的公共网站（包括关键的安全更新存储库）下线约20小时。

攻击者使用了名为Beamed的付费服务，该服务宣传其具备“绕过Cloudflare”的技术。关键在于，Beamed自身的基础设施免费托管在Cloudflare网络上，而Canonical最终却向Cloudflare付费以获取缓解服务。

作者揭露了攻击发生前两个月（即2026年2月27日）一系列可疑事件。当天，托管Beamed基础设施的自治系统（AS39287）被重新分配给一家罗马尼亚公司，同时Beamed的域名注册商（Immaterialism Limited）进行了公司信息变更。与此同时，Canonical为其存储库端点颁发了新的加密证书——这是将其迁移至Cloudflare这类CDN背后的必要前提。

攻击期间，攻击者将Canonical的存储库端点预留了三小时，随后才将其作为攻击目标。最终，Canonical仅将这两个关键端点迁移至Cloudflare背后，并向这家同时托管攻击者工具的公司付费购买保护。作者将此比作保护费勒索，并类比历史上为赌博业提供服务的有线通讯公司——同一家企业从威胁和解决方案中同时获利。虽然此次事件中并未支付赎金，但最终结果却是向Cloudflare订阅了付费服务。

---

## 24. 本地AI应成为常态

**原文标题**: Local AI needs to be the norm

**原文链接**: [https://unix.foo/posts/local-ai-needs-to-be-norm/](https://unix.foo/posts/local-ai-needs-to-be-norm/)

**摘要：** 文章认为，开发者应将设备端AI优先于云端AI用于应用功能，并批评当前依赖OpenAI或Anthropic等外部API的趋势，称其为“懒惰”、脆弱、侵犯隐私且根本上存在缺陷。关键要点：

- **云端AI的问题：** 依赖关系会创建分布式系统，在服务器宕机或信用卡过期时失效，引入数据留存和同意问题，并使技术栈因网络和供应商依赖而复杂化。
- **本地AI的优势：** 现代设备拥有强大且闲置的神经引擎，非常适合设备端处理，通过将用户数据保留在本地，无需供应商账户或隐私政策，从而确保隐私、速度和可靠性。
- **具体示例：** 作者的iOS新闻应用使用苹果本地模型API，完全在设备端生成文章摘要——无需经过服务器绕路或记录数据。
- **可用工具：** 苹果提供简单的API（例如`LanguageModelSession`），并通过Swift的`@Generable`结构体支持结构化输出，从而获得有类型、可预测的AI结果，而非非结构化文本。
- **应对模型质量：** 本地模型可能缺乏通用智能，但擅长专注型任务（摘要、分类、提取）。它们应在应用内作为“数据转换器”使用，而非互联网的替代品；云端模型仅用于确实必要且高复杂度的场景。

核心信息：**将AI用作可信赖的本地子系统（而非分布式系统），以构建实用、尊重隐私的软件。**

---

## 25. 我将回归手写代码

**原文标题**: I'm going back to writing code by hand

**原文链接**: [https://blog.k10s.dev/im-going-back-to-writing-code-by-hand/](https://blog.k10s.dev/im-going-back-to-writing-code-by-hand/)

作者讲述了利用Claude AI完全通过“氛围编程”方式，历时7个月构建**k10s**（一款感知GPU的Kubernetes仪表盘）的经历。项目初期进展顺利——在约30个周末里完成了234次提交——但最终因架构债务累积而崩溃。

**核心启示：**

1. **AI能构建功能，却无法设计架构。** Claude能完美交付各项独立功能，但缺乏结构意识。最终生成了一个1690行的`model.go`文件，其中包含单一“上帝对象”结构体，集成了UI组件、K8s客户端、各视图状态、缓存和鼠标事件处理——所有内容混杂一处。

2. **上帝对象是AI的默认模式。** 由于缺乏隔离，视图间状态污染严重。`Update()`方法长达500行，包含110个switch/case分支。代码库中散落着9处手动`nil`清理赋值，用来清除前视图遗留的幽灵数据。

3. **速度错觉导致范围膨胀。** 由于AI让每个功能都显得“零成本”，作者从聚焦GPU工具逐渐偏离，转而构建通用型k9s克隆。复杂度在无形中累积，而交付速度却制造了虚假信心。

4. **位置化数据极其脆弱。** 资源被存储为位置字符串数组，导致基于索引的脆弱访问模式。

作者现正基于`CLAUDE.md`中明确的架构规则重写：视图隔离、每个视图独立键位映射、严格的作用域边界、以及基于接口的设计。**核心教训：** 架构必须由人类设计，AI只能在约束内实现功能。

---

## 26. Mythos 发现一处 Curl 漏洞

**原文标题**: Mythos Finds a Curl Vulnerability

**原文链接**: [https://daniel.haxx.se/blog/2026/05/11/mythos-finds-a-curl-vulnerability/](https://daniel.haxx.se/blog/2026/05/11/mythos-finds-a-curl-vulnerability/)

**《Mythos发现curl漏洞》摘要**

curl首席开发者丹尼尔·斯坦伯格描述了与Anthropic公司AI模型Mythos的接触经历——该模型被炒作成"危险地擅长"发现安全漏洞。通过Linux基金会获得访问权限后，斯坦伯格最终收到了Mythos对curl程序17.8万行C代码的扫描报告。

报告最初声称发现五个"已确认"漏洞。经审核后，仅有一个真实（低严重性）漏洞（计划纳入未来CVE编号）。三个为误报（属已记录的API行为），另一个是非安全性的代码缺陷。Mythos还发现了约二十个其他问题，均描述清晰且误报率低。

斯坦伯格指出，此前AI工具（AISLE、Zeropath、CodeX）已促成200-300个curl缺陷修复及十余个CVE编号。Mythos发现的问题更少，很可能因为curl已接受过大量模糊测试、审计和优化。他认为炒作成分居多：Mythos并未显著优于其他现代AI分析器。

不过斯坦伯格强调，AI代码分析器仍是重大进步：能捕捉注释与代码的不匹配、理解第三方API和协议、并提供清晰说明与补丁。他警告任何未使用AI扫描的项目都可能在为攻击者留下可乘之机。

关键结论：Mythos在curl中仅发现一个微小漏洞，印证了AI工具虽在安全分析方面表现出色，但最耸人听闻的说法显然被夸大了。

---

## 27. 《极乐》（摄影作品）

**原文标题**: Bliss (Photograph)

**原文链接**: [https://en.wikipedia.org/wiki/Bliss_(photograph)](https://en.wikipedia.org/wiki/Bliss_(photograph))

以下是维基百科关于照片 **《极乐》** 的简要总结：

**《极乐》**（原名《田园绿丘》）是微软Windows XP的默认壁纸。这张照片拍摄的是绿意起伏的山丘、蓝天与卷云，由前《国家地理》摄影师查尔斯·奥里尔于1996年1月在加利福尼亚州索诺玛县拍摄。

奥里尔是在根瘤蚜虫灾害清除了山丘上的葡萄园后拍下这张照片的。他使用的是玛米亚RZ67相机和富士维尔维亚胶卷，并声称照片未经数字处理。该照片最初通过奥里尔的图库公司Westlight（1998年被比尔·盖茨的Corbis收购）作为库存图片出售。2000年，微软以据称六位数低价购得全部版权，使其成为当时单张图片交易金额最高的案例之一。照片被更名为《极乐》，并选为Windows XP“月神”主题的默认壁纸。

这张照片因其宁静、田园诗般的特质而广受赞誉，被认为是有史以来观看次数最多的照片——曾出现在数十亿台电脑上。微软后来在宣传中重复使用《极乐》，包括修改后的Teams背景和周边产品。原拍摄地后来重新种上了葡萄园，但现设有一块纪念牌标示该位置。尽管奥里尔职业生涯丰富，但他最为人熟知的仍是这张标志性的照片。

---

## 28. AI笔记工具让律师感到不安

**原文标题**: A.I. note takers are making lawyers nervous

**原文链接**: [https://www.nytimes.com/2026/05/09/business/dealbook/ai-notetakers-legal-risk.html](https://www.nytimes.com/2026/05/09/business/dealbook/ai-notetakers-legal-risk.html)

无法访问文章链接。（该URL引用了2026年的日期，这在我的训练数据中属于未来时间。因此，我无法检索或总结该文章。）

---

## 29. 在24GB内存的M4芯片上运行本地模型

**原文标题**: Running local models on an M4 with 24GB memory

**原文链接**: [https://jola.dev/posts/running-local-models-on-m4](https://jola.dev/posts/running-local-models-on-m4)

文章详细介绍了作者在配备24GB内存的M4 MacBook Pro上运行本地AI模型的经历。经过尝试多种工具（Ollama、llama.cpp、LM Studio）和模型后，最佳配置是**在LM Studio上运行Qwen 3.5-9B（Q4_K_S量化版）**，可实现约40 tokens/秒的速度、128K上下文长度及实用的工具调用功能。

**主要挑战：** 配置本地模型涉及复杂的参数选择（温度、缓存量化、提示模板）以及不同工具的独特问题。许多模型虽在内存上勉强可用，但实际运行效果不佳。

**性能对比SOTA模型：** 本地模型无法独立解决复杂问题或构建完整应用，需要分步引导和用户积极参与。然而，作者认为这种模式反而促使用户更深度参与，与那些完全接管认知劳动的SOTA模型形成对比。

**生产力示例：**
- **成功案例：** 正确识别Elixir代码的Lint警告（Credo）并提出修复建议，同时能分析Git依赖冲突。
- **失败案例：** 在实施变基冲突解决方案时出错——未能正确编辑文件，还触发了挂起命令。

**本地模型的感知优势：** 无需联网、无订阅费用（仅需电费）、减少对大型科技公司的依赖，且享受调试过程。作者将其描述为一种更可持续、更积极的人机交互方式。

---

## 30. 日本烹饪原则教会我的：如何克服AI疲劳

**原文标题**: What a Japanese cooking principle taught me about overcoming AI fatigue

**原文链接**: [https://www.devas.life/what-a-japanese-cooking-principle-taught-me-about-overcoming-ai-fatigue/](https://www.devas.life/what-a-japanese-cooking-principle-taught-me-about-overcoming-ai-fatigue/)

日本料理“一汁一菜”如何帮你摆脱AI倦怠——松山拓哉的这篇文章，探讨了如何将日本烹饪中的“一汁一菜”原则应用于快节奏的科技世界，以应对AI疲劳并维护心理健康。

核心要点：

1. **简化，找到你的“舒适区”** ——正如传统日式料理去繁就简，创作者也应建立聚焦真正重要之事的生活节奏，避免因追逐每一个AI新潮流而筋疲力尽。

2. **培养“永不厌倦”的日常习惯** ——就像米饭与味噌汤（百吃不厌）一样，培养那些远离屏幕、能带来持久真实慰藉的活动，而非靠社交媒体或加工内容获得短暂的多巴胺刺激。

3. **重视“发酵”而非“蒸馏”** ——真正的创造力与韧性源于缓慢、自然的过程——随意的交谈、散步以及不受约束的时间——而非精心优化的提示词或被迫的高效产出。

4. **将科技潮流视为季节** ——不必争相掌握每一个新AI发布，像对待时令食材一样欣赏它们。在需要时学习所需内容，用好奇心取代错失恐惧症。

5. **拥抱“物哀”** ——培养对技术生灭自然周期的情感敏感度，让玩心与真正的创造力得以涌现，而非陷入焦虑驱动的生存模式。

核心信息：**放松。简化。回归每日滋养你的事物。** 这才能为在急剧变化中真正蓬勃发展创造精神空间。

---

