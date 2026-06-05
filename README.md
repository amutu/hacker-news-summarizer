# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-05.md)

*最后自动更新时间: 2026-06-05 20:32:41*
## 1. 宇航员在躲避空气泄漏修复后被告知返回国际空间站

**原文标题**: Astronauts told to return to ISS after sheltering over air leak repairs

**原文链接**: [https://www.bbc.com/news/live/c4g44ew3g1kt](https://www.bbc.com/news/live/c4g44ew3g1kt)

**总结：**

国际空间站（ISS）上的宇航员被指示在临时躲避至各自航天器后返回空间站。这一预防措施是在俄罗斯宇航员对俄罗斯舱段，特别是星辰号服务舱的转接通道进行新的空气泄漏修复时采取的。

维修期间，五名机组人员采取了“更高的安全姿态”。美国国家航空航天局（NASA）报告称，受影响舱段出现裂缝和泄漏已“有一段时间”，这成为空间站的一个反复出现的问题。据俄罗斯国际文传电讯社和塔斯社报道，俄罗斯航天局表示已发现两处泄漏，其中一处已完成修复。官员确认，机组人员及国际空间站上的系统均未面临危险。

NASA发言人贝瑟尼·史蒂文斯指出，结构修复工作因需评估测量数据而暂停，随后宇航员获准返回空间站。

---

## 2. pg_durable：微软开源数据库内持久化执行

**原文标题**: pg_durable: Microsoft open sources in-database durable execution

**原文链接**: [https://github.com/microsoft/pg_durable](https://github.com/microsoft/pg_durable)

**pg_durable 概述：微软 PostgreSQL 数据库内持久化执行方案**

微软开源了 **pg_durable**，这是一个 PostgreSQL 扩展，可将持久化执行直接嵌入数据库。它允许团队定义长时间运行、容错的 SQL 工作流，并在每个步骤后自动创建检查点。若发生崩溃、重启或步骤失败，执行将从最后一个检查点恢复，无需手动重建状态。

**主要特性与应用场景：**
- **持久化与 SQL 原生：** 工作流使用可组合的 SQL 运算符（`~>`、`|=>`）定义，状态持久化存储在 PostgreSQL 中。
- **零额外基础设施：** 作为轻量级扩展运行，无需 Redis、Temporal 或外部编排器。
- **理想场景：** 向量嵌入管道、ETL/数据导入任务、计划维护、扇出聚合及外部 API 工作流。
- **解决痛点：** 避免长时间运行的事务，减少对 cron 任务和状态表的依赖，优雅处理部分故障。

**架构与部署：**
- 基于 **pgrx** 和 Rust 构建，依赖底层库 **duroxide** 与 **duroxide-pg**。
- 后台工作进程托管运行时，所有状态存储于 `df.*` 模式中。
- 支持 PostgreSQL 17 和 18；可通过 Debian 包或源码构建安装。
- 借助行级安全性（RLS）实现多用户支持，确保租户隔离。

**当前状态：** 预览版。微软鼓励社区通过 GitHub Issues 提供反馈，安全问题通过私有渠道处理。不收集任何遥测数据。

---

## 3. Gemma 4 QAT模型：优化移动设备和笔记本电脑的压缩效率

**原文标题**: Gemma 4 QAT models: Optimizing compression for mobile and laptop efficiency

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/quantization-aware-training-gemma-4/](https://blog.google/innovation-and-ai/technology/developers-tools/quantization-aware-training-gemma-4/)

**摘要：**

谷歌DeepMind发布了全新Gemma 4模型，该模型采用量化感知训练（QAT）进行了优化，以降低内存需求并提升在移动设备、笔记本电脑及消费级GPU上的设备端性能。

与可能导致质量下降的标准训练后量化（PTQ）不同，QAT在训练过程中模拟压缩，从而最大程度减少质量损失。此次发布包含针对主流Q4_0格式的检查点，以及一种创新的移动专用量化方案。

关键的移动端优化包括：静态激活（预先计算的缩放减少计算量）、通道级量化（与移动加速器对齐）、针对词元生成层的2位量化，以及优化嵌入/KV缓存压缩以降低活跃内存占用。例如，Gemma 4 E2B纯文本模型现仅需不到1GB的内存。

这些模型可在Hugging Face上以GGUF格式（适用于llama.cpp）、压缩张量格式（适用于vLLM）及未量化检查点形式获取。它们可通过桌面工具（Ollama、LM Studio）、设备端运行时（LiteRT-LM）、Web框架（Transformers.js）以及开发者工具（SGLang、MLX、Unsloth）进行部署。同时还包括MTP QAT检查点，以保持推理加速能力。

---

## 4. 我的测试驱动开发代理技能

**原文标题**: My Agent Skill for Test-Driven Development

**原文链接**: [https://www.saturnci.com/my-agent-skill-for-test-driven-development.html](https://www.saturnci.com/my-agent-skill-for-test-driven-development.html)

**摘要：我的测试驱动开发智能体技能**

杰森·斯威特认为，AI智能体目前编写的测试质量低下——模糊、粗糙且毫无意义——这是因为它们从有缺陷的人类示例和糟糕的教学实践中学习。然而，通过适当指导，智能体可以遵循合理的TDD流程，产出清晰且有意义的测试。

关键指导是**Kent Beck的规范TDD**，仅此一项就能带来约60%的改进。斯威特在GitHub上提供的个人TDD技能，核心是**指定-编码-实现（SEF）循环**——这是他替代红-绿-重构的方案：指定需求，将其编码为自动化测试，然后编写代码通过这些测试。

较低级别的流程包括：
1. 列出范围内的规格说明
2. 将每条规格编码为测试
3. 仅修改代码以刚好通过测试（避免推测性编码）
4. 仅在提交行为变更后进行重构
5. 重复此过程直至列表清空

为改进测试设计，斯威特使用**测试设计审查**——一个独立的智能体，用于检查是否存在设计原则违规（例如，测试手段而非目的）。他还应用**软件设计审查**技能来处理更广泛的设计问题。

一个意外的结果是：当测试难以编写时，智能体往往会主动建议"清理厨房"（重构），而这一建议通常被证明是必要的。

斯威特总结道，尽管智能体并非100%的时间都能写出完美的测试，但将AI与永恒的软件原则相结合，能带来显著的生产力提升。

---

## 5. 新方法将海水转化为饮用水，且无废弃物产生

**原文标题**: New method turns ocean water into drinking water, without waste

**原文链接**: [https://www.rochester.edu/newscenter/what-is-desalination-definition-ocean-water-704732/](https://www.rochester.edu/newscenter/what-is-desalination-definition-ocean-water-704732/)

**摘要：**

罗切斯特大学的研究人员开发出一种新型海水淡化方法，可将海水转化为饮用水，且不会产生传统淡化过程中常见的有害浓盐水废料。该创新依托该校在光学领域近一个世纪的领先研究，将长期积累的专业知识应用于水净化技术革新。

该方法通过消除盐水处理带来的环境污染，为全球水资源短缺问题提供了更可持续的解决方案。尽管文章强调了这一突破的重要意义以及该机构在光学研究领域的顶尖地位，但未透露该方法的具体技术细节。核心信息在于：一项无废物排放的淡化技术已被开创，有望为解决淡水短缺问题提供变革性方案。

---

## 6. 无鼠标——键盘驱动的macOS/Linux/Windows控制

**原文标题**: Mouseless – keyboard-driven control of macOS/Linux/Windows

**原文链接**: [https://mouseless.click](https://mouseless.click)

**《无鼠标》摘要**

Mouseless 是一款软件应用，可在 macOS、Linux 和 Windows 系统上实现快速、纯键盘驱动的鼠标控制。该工具允许用户通过键盘完成光标导航和点击操作，从而摆脱对实体鼠标的依赖。其核心概念是：使用简单快捷键激活屏幕上的网格覆盖层，用户输入对应特定网格单元的快捷键，即可精确移动光标并执行点击或拖拽等操作。这种方法能显著提升专业用户（尤其是开发者、作家等追求效率的人群）的工作流程速度。该应用轻量级且运行于后台。文章强调，网站功能需要浏览器启用 JavaScript，但其核心产品承诺是提供快速、精确、完全键盘驱动的鼠标控制，无需复杂脚本或硬件改造。

---

## 7. 我们最糟糕的三个VC故事

**原文标题**: Three of our worst VC stories

**原文链接**: [https://twitter.com/eastdakota/status/2062860530360959273](https://twitter.com/eastdakota/status/2062860530360959273)

**摘要：**

本文并非典型新闻报道，而是当用户浏览器禁用JavaScript时，在X（原Twitter）上显示的一则通知。页面标题为“我们最差的三个VC故事”，但因X需要JavaScript才能运行而无法访问。该文本指示用户启用JavaScript或切换到支持的浏览器以查看内容，并提供了平台帮助中心、服务条款、隐私政策、Cookie政策、版权声明和广告信息的链接。通知末尾附有版权声明：© 2026 X Corp。由于技术限制，实际文章内容或VC故事均不可用。关键信息是，页面因依赖JavaScript而被屏蔽，且未访问目标页面便无法提供实质性文章摘要。

---

## 8. 常规提交规范聚焦在了错误的方向上。

**原文标题**: Conventional Commits encourages focus on the wrong things

**原文链接**: [https://sumnerevans.com/posts/software-engineering/stop-using-conventional-commits/](https://sumnerevans.com/posts/software-engineering/stop-using-conventional-commits/)

**《"约定式提交"关注错重点》摘要**

本文认为约定式提交是存在缺陷的标准，其优先强调提交类型而非更重要的变更范围，既未能服务开发者，也未能满足最终用户需求。

**主要批评点：**

1. **优先级错误：** 该标准将范围设为可选，却把类型置于首位。对于贡献者、调试人员及事故响应者而言，范围至关重要——而类型无关紧要，因为任何变更类型都可能引入错误。

2. **类型冗余：** 描述内容通常已明确变更类型（如"修复"或"功能"），因此标注类型纯属浪费空间。类型还存在局限性，因为许多提交跨越多个类别（如修复、重构与功能）。

3. **承诺落空：**
   - **自动生成变更日志：** 混淆了面向开发者的提交日志与面向用户的变更日志，忽视功能往往需要多次提交。
   - **自动语义化版本控制：** 在回滚、意外破坏或事后修复改变整体影响时失效。
   - **按类型触发构建：** 存在风险（例如，恶意"文档"提交可能引入漏洞）。

**更优方案：**
作者倡导使用**范围前缀的提交信息**（如Linux、Git、Go和FreeBSD），其中范围匹配项目结构（如子系统、包、微服务）。这种方式优先关注真正重要的要素——变更区域——并保持提交日志的诚实与实用性。

---

## 9. 英国政府官网已用荷兰支付服务商Adyen替换Stripe。

**原文标题**: Gov.uk has replaced Stripe with Dutch provider Adyen

**原文链接**: [https://www.theregister.com/public-sector/2026/06/04/govuk-goes-dutch-on-payments-as-it-dumps-stripe/5250763](https://www.theregister.com/public-sector/2026/06/04/govuk-goes-dutch-on-payments-as-it-dumps-stripe/5250763)

**摘要：**

英国政府数字服务局（GDS）已用荷兰支付服务商Adyen取代Stripe，作为GOV.UK Pay上多项服务的支付处理机构。这份为期三年、总价值高达2530万英镑的合同，覆盖约17%的交易量，但却适用于使用该平台超过70%的机构，包括地方政府、警察部队及武装部队单位。约1000项服务将完成迁移。

改用Adyen的关键优势在于，可通过开放银行引入"银行转账支付"功能，使用户无需输入银行卡信息即可直接进行账户间转账。GDS向用户保证，过渡期间不会出现明显差异或功能损失。GDS将继续使用WorldPay处理中央政府及国民医疗服务体系（NHS）的支付。

GOV.UK Pay旨在简化公共服务的在线支付流程。自2016年以来，该平台已在1718项服务中处理了1.375亿笔交易，总金额约达92亿英镑。

---

## 10. 《Transformer本质上是简洁的》

**原文标题**: Transformers Are Inherently Succinct

**原文链接**: [https://openreview.net/pdf?id=Yxz92UuPLQ](https://openreview.net/pdf?id=Yxz92UuPLQ)

**《变压器本质上的简洁性》摘要**

本文对变压器架构进行理论分析，主张变压器本质上是“简洁”模型。核心论点是：与循环神经网络或卷积神经网络等其他架构相比，变压器能用更少的参数表征某些函数与概念。

作者证明变压器能高效模拟图灵机，即可表达任何可计算函数。但其关键洞见在于*简洁性*——压缩计算过程的能力。他们证明，针对特定问题（如识别正则语言或执行算术运算），变压器所需的层数或参数可比其他模型呈指数级减少。

这种简洁性源于两个核心机制：多头注意力机制和残差连接。注意力机制使模型能并行直接访问输入的任意部分，而残差连接则以循环神经网络无法实现的方式实现复杂操作的深度组合。

研究结果表明，变压器的实证成功不仅源于规模或数据效率，更根植于其在结构化计算方面卓越的表征效率。这为变压器擅长处理长距离依赖与复杂推理任务提供了理论依据，确立其作为算法任务中更具计算表达能力的架构地位。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 2 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 3 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 4 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 5 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 6 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 7 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 8 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 9 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 10 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 11 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 12 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 13 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 14 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 15 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 16 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 17 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 18 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 19 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 20 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 21 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 22 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 23 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 24 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 25 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 26 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 27 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 28 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 29 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 30 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 31 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 32 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 33 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 34 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 35 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 36 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 37 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 38 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 39 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 40 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 41 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 42 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 43 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 44 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 45 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 46 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 47 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 48 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 49 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 50 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 51 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 52 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 53 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 54 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 55 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 56 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 57 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 58 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 59 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 60 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 61 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 62 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 63 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 64 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 65 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 66 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 67 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 68 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 69 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 70 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 71 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 72 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 73 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 74 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 75 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 76 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 77 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 78 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 79 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 80 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 81 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 82 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 83 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 84 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 85 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 86 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 87 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 88 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 89 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 90 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 91 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 92 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 93 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 94 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 95 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 96 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 97 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 98 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 99 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 100 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 101 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 102 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 103 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 104 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 105 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 106 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 107 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 108 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 109 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 110 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 111 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 112 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 113 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 114 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 115 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 116 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 117 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 118 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 119 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 120 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 121 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 122 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 123 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 124 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 125 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 126 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 127 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 128 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 129 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 130 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 131 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 132 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 133 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 134 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 135 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 136 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 137 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 138 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 139 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 140 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 141 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 142 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 143 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 144 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 145 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 146 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 147 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 148 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 149 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 150 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 151 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 152 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 153 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 154 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 155 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 156 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 157 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 158 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 159 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 160 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 161 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 162 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 163 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 164 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 165 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 166 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 167 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 168 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 169 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 170 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 171 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 172 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 173 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 174 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 175 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 176 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 177 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 178 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 179 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 180 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 181 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 182 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 183 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 184 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 185 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 186 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 187 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 188 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 189 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 190 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 191 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 192 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 193 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 194 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 195 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 196 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 197 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 198 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 199 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 200 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 201 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 202 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 203 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 204 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 205 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 206 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 207 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 208 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 209 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 210 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 211 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 212 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 213 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 214 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 215 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 216 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 217 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 218 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 219 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 220 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 221 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 222 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 223 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 224 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 225 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 226 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 227 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 228 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 229 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 230 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 231 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 232 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 233 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 234 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 235 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 236 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 237 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 238 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 239 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 240 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 241 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 242 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 243 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 244 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 245 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 246 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 247 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 248 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 249 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 250 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 251 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 252 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 253 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 254 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 255 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 256 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 257 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 258 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 259 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 260 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 261 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 262 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 263 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 264 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 265 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 266 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 267 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 268 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 269 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 270 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 271 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 272 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 273 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 274 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 275 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 276 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 277 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 278 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 279 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 280 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 281 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 282 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 283 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 284 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 285 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 286 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 287 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 288 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 289 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 290 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 291 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 292 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 293 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 294 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 295 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 296 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 297 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 298 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 299 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 300 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 301 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 302 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 303 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 304 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 305 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 306 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 307 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 308 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 309 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 310 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 311 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 312 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 313 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 314 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 315 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 316 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 317 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 318 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 319 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 320 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 321 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 322 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 323 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 324 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 325 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 326 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 327 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 328 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 329 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 330 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 331 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 332 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 333 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 334 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 335 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 336 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 337 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 338 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 339 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 340 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 341 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 342 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 343 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 344 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 345 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 346 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 347 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 348 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 349 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 350 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 351 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 352 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 353 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 354 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 355 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 356 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 357 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 358 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 359 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 360 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 361 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 362 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 363 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 364 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 365 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 366 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 367 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 368 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 369 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 370 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 371 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 372 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 373 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 374 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 375 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 376 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 377 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 378 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 379 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 380 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 381 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 382 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 383 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 384 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 385 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 386 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 387 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 388 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 389 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 390 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 391 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 392 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 393 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 394 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 395 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 396 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 397 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 398 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 399 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 400 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 401 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 402 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 403 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 404 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 405 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 406 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 407 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 408 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 409 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 410 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 411 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 412 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 413 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 414 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 415 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 416 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 417 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 418 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 419 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 420 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 421 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 422 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 423 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 424 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 425 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 426 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 427 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 428 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 429 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 430 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 431 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 432 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 433 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 434 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 435 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 436 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 437 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 438 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 439 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 440 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
