# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-11.md)

*最后自动更新时间: 2026-05-11 20:33:13*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 2 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 3 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 4 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 5 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 6 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 7 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 8 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 9 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 10 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 11 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 12 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 13 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 14 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 15 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 16 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 17 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 18 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 19 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 20 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 21 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 22 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 23 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 24 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 25 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 26 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 27 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 28 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 29 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 30 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 31 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 32 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 33 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 34 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 35 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 36 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 37 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 38 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 39 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 40 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 41 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 42 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 43 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 44 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 45 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 46 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 47 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 48 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 49 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 50 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 51 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 52 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 53 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 54 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 55 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 56 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 57 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 58 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 59 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 60 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 61 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 62 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 63 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 64 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 65 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 66 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 67 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 68 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 69 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 70 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 71 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 72 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 73 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 74 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 75 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 76 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 77 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 78 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 79 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 80 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 81 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 82 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 83 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 84 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 85 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 86 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 87 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 88 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 89 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 90 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 91 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 92 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 93 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 94 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 95 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 96 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 97 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 98 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 99 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 100 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 101 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 102 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 103 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 104 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 105 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 106 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 107 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 108 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 109 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 110 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 111 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 112 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 113 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 114 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 115 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 116 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 117 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 118 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 119 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 120 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 121 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 122 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 123 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 124 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 125 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 126 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 127 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 128 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 129 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 130 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 131 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 132 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 133 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 134 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 135 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 136 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 137 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 138 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 139 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 140 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 141 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 142 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 143 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 144 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 145 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 146 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 147 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 148 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 149 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 150 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 151 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 152 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 153 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 154 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 155 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 156 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 157 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 158 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 159 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 160 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 161 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 162 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 163 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 164 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 165 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 166 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 167 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 168 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 169 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 170 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 171 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 172 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 173 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 174 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 175 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 176 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 177 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 178 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 179 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 180 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 181 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 182 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 183 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 184 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 185 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 186 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 187 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 188 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 189 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 190 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 191 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 192 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 193 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 194 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 195 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 196 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 197 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 198 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 199 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 200 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 201 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 202 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 203 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 204 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 205 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 206 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 207 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 208 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 209 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 210 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 211 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 212 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 213 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 214 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 215 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 216 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 217 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 218 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 219 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 220 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 221 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 222 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 223 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 224 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 225 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 226 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 227 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 228 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 229 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 230 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 231 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 232 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 233 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 234 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 235 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 236 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 237 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 238 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 239 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 240 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 241 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 242 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 243 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 244 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 245 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 246 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 247 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 248 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 249 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 250 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 251 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 252 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 253 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 254 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 255 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 256 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 257 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 258 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 259 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 260 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 261 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 262 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 263 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 264 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 265 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 266 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 267 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 268 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 269 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 270 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 271 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 272 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 273 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 274 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 275 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 276 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 277 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 278 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 279 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 280 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 281 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 282 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 283 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 284 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 285 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 286 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 287 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 288 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 289 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 290 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 291 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 292 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 293 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 294 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 295 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 296 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 297 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 298 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 299 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 300 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 301 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 302 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 303 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 304 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 305 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 306 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 307 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 308 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 309 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 310 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 311 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 312 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 313 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 314 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 315 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 316 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 317 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 318 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 319 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 320 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 321 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 322 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 323 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 324 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 325 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 326 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 327 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 328 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 329 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 330 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 331 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 332 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 333 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 334 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 335 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 336 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 337 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 338 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 339 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 340 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 341 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 342 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 343 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 344 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 345 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 346 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 347 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 348 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 349 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 350 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 351 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 352 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 353 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 354 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 355 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 356 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 357 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 358 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 359 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 360 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 361 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 362 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 363 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 364 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 365 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 366 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 367 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 368 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 369 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 370 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 371 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 372 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 373 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 374 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 375 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 376 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 377 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 378 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 379 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 380 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 381 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 382 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 383 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 384 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 385 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 386 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 387 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 388 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 389 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 390 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 391 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 392 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 393 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 394 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 395 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 396 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 397 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 398 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 399 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 400 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 401 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 402 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 403 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 404 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 405 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 406 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 407 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 408 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 409 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 410 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 411 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 412 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 413 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 414 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 415 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
