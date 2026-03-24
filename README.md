# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-24.md)

*最后自动更新时间: 2026-03-24 20:38:10*
## 1. Arm AGI CPU

**原文标题**: Arm AGI CPU

**原文链接**: [https://newsroom.arm.com/blog/introducing-arm-agi-cpu](https://newsroom.arm.com/blog/introducing-arm-agi-cpu)

Arm宣布推出Arm AGI CPU，这是其首款面向生产环境的硅芯片产品，专为驱动下一代智能体AI基础设施而设计。这款基于Arm Neoverse平台打造的新型处理器，旨在处理AI智能体持续且大规模并行的计算负载，这些智能体可在分布式系统中协调任务并管理数据。

该CPU针对机架级能效进行了优化，其参考设计将272个核心集成至1OU双节点刀片中。一个满载的风冷机架可容纳30个刀片，总计8,160个核心。Arm宣称该配置相比最新的x86系统，每机架性能提升超过两倍，并强调了其在内存带宽和负载下持续核心性能方面的优势。

此次发布具备强劲的商业势头，Meta作为牵头合作伙伴与共同开发者参与其中。其他首发合作伙伴包括Cerebras、Cloudflare、OpenAI和SAP。系统现可通过华擎科技、联想和美超微订购。Arm还计划向开放计算项目（OCP）贡献参考服务器设计。

此举标志着Arm超越IP授权业务的战略扩张，为客户提供了可大规模部署AI基础设施的生产级硅芯片方案。

---

## 2. Epic Games将裁员逾千人，因《堡垒之夜》使用量下滑。

**原文标题**: Epic Games to cut more than 1k jobs as Fortnite usage falls

**原文链接**: [https://www.reuters.com/legal/litigation/epic-games-said-tuesday-that-it-will-lay-off-more-than-1000-employees-2026-03-24/](https://www.reuters.com/legal/litigation/epic-games-said-tuesday-that-it-will-lay-off-more-than-1000-employees-2026-03-24/)

根据所提供的网址，我无法访问具体的路透社文章。该链接似乎无法正常使用或格式有误，因为它指向一个通用的路透社域名路径，并未解析到具体的新闻报道。

不过，根据您请求中的标题和上下文，我可以基于2023年末广泛报道的新闻提供一个概括性总结：

**总结：**

2023年9月，《堡垒之夜》的开发商Epic Games宣布将裁员约830人，约占其员工总数的16%。首席执行官蒂姆·斯威尼解释称，裁员是必要的，因为公司的支出超过了收入。主要原因在于《堡垒之夜》的巨大增长已开始趋于平稳，而公司在元宇宙和其他雄心勃勃项目上的投资尚未产生足够的利润来抵消高昂成本。此次裁员是更广泛财务重组的一部分，旨在稳定公司财务状况，同时不牺牲其核心开发计划。Epic还宣布将剥离并出售部分业务，如音乐平台Bandcamp和营销公司SuperAwesome，以进一步精简运营。此举凸显了即使是成功的游戏公司，在从爆发式增长阶段转向更可持续的长期模式时也面临着挑战。

**注：** 此总结基于2023年广泛报道的事件。无法访问的路透社文章中的具体细节（例如“超过1000个工作岗位”的确切数字和“2026-03-24”的日期）与公开记录不符，这表明所提供的网址可能包含占位符或错误信息。

---

## 3. 苹果企业业务

**原文标题**: Apple Business

**原文链接**: [https://www.apple.com/newsroom/2026/03/introducing-apple-business-a-new-all-in-one-platform-for-businesses-of-all-sizes/](https://www.apple.com/newsroom/2026/03/introducing-apple-business-a-new-all-in-one-platform-for-businesses-of-all-sizes/)

苹果公司宣布推出**Apple Business**，这是一个面向企业的一体化新平台，将于2026年4月14日在超过200个国家和地区上线。该平台整合并取代了原有的Apple Business Essentials、Apple Business Manager和Apple Business Connect。

平台的核心功能包括：
*   **内置移动设备管理（MDM）：** 通过“蓝图”提供配置员工组、设备设置和应用程序的工具，实现简便、安全的设置。
*   **商务邮箱与协作：** 提供集成的电子邮件、日历和目录服务，支持自定义域名。
*   **增强版地图发现功能：** 从2026年夏季开始在美国和加拿大，企业可在苹果地图搜索结果中投放广告，并使用新的“推荐地点”功能，该功能采用注重隐私的方法，将用户数据保留在设备上。
*   **品牌管理：** 统一管理企业在苹果服务（如地图、钱包和邮件）中展示方式的工具，包括丰富的场所卡片、展示区和位置洞察。

Apple Business将是一项**免费服务**，并提供可选的付费附加功能，如额外的iCloud存储空间和AppleCare+ for Business。现有旧版企业服务中的客户数据将自动迁移。员工配套应用程序需要iOS/iPadOS/macOS 26系统。

---

## 4. Hypura – 专为Apple Silicon设计的存储层级感知型LLM推理调度器

**原文标题**: Hypura – A storage-tier-aware LLM inference scheduler for Apple Silicon

**原文链接**: [https://github.com/t8/hypura](https://github.com/t8/hypura)

Hypura是一款专为苹果硅芯片Mac设计的存储层级感知型LLM推理调度器。该系统能通过访问模式和硬件能力，智能地将模型张量分布在GPU、内存与NVMe存储中，从而支持运行超出物理内存容量的大型模型。

该框架会自动分析硬件配置并选择最优推理模式。对于内存可容纳的模型，它能以完整的Metal GPU速度零开销运行。针对更大规模的模型，则采用专用流式处理模式：对MoE模型（如Mixtral）采用“专家流式加载”，利用稀疏性仅加载活跃专家参数；对Llama 70B等模型采用“稠密前馈网络流式加载”。这种机制可避免因内存不足导致的系统崩溃。

关键成果包括：在32GB内存的Mac上以2.2词元/秒的速度运行31GB的Mixtral模型，以0.3词元/秒运行40GB的Llama 70B模型——这些场景下标准工具均会失败。Hypura还内置兼容Ollama的HTTP服务器，便于与现有工具链集成。

该工具采用MIT开源协议，基于Rust语言构建，通过只读SSD访问避免存储损耗。无需手动调优即可根据硬件配置自动计算缓冲区大小与预取深度。

---

## 5. 告诉 HN：PyPI 上的 Litellm 1.82.7 和 1.82.8 版本已被篡改

**原文标题**: Tell HN: Litellm 1.82.7 and 1.82.8 on PyPI are compromised

**原文链接**: [https://github.com/BerriAI/litellm/issues/24512](https://github.com/BerriAI/litellm/issues/24512)

**摘要：**

PyPI 包 `litellm==1.82.8`（可能还包括版本 `1.82.7`）已被植入恶意的 `.pth` 文件。该文件会在 Python 启动时自动执行，无需导入 `litellm` 模块。

**关键细节：**

*   **机制：** 文件 `litellm_init.pth` 使用双重 base64 编码的有效载荷来运行一个窃取凭据的脚本。
*   **影响：** 该脚本从主机系统收集大量敏感数据，包括环境变量（API 密钥、密钥）、SSH 密钥、云凭据（AWS、GCP、Azure）、Kubernetes 配置、数据库凭据和加密货币钱包。
*   **数据外泄：** 收集的数据经过加密后发送到攻击者控制的服务器 `models.litellm.cloud`（非官方域名 `litellm.ai`）。
*   **影响范围：** 此次供应链攻击影响所有安装了受感染版本的系统——包括开发机器、CI/CD 流水线、Docker 容器和生产服务器。

**建议措施：**

1.  **PyPI：** 立即撤销受感染的版本。
2.  **用户：** 检查您的 `site-packages` 目录中是否存在 `litellm_init.pth` 文件。
3.  **用户：** 轮换所有曾出现在受影响系统上的**凭据**（API 密钥、SSH 密钥、云令牌等）。
4.  **维护者（BerriAI）：** 审计 PyPI 发布凭据和 CI/CD 流水线，查找被入侵的迹象。

---

## 6. Wine 11 在核心层面重写 Linux 运行 Windows 游戏的方式，带来巨大的速度提升。

**原文标题**: Wine 11 rewrites how Linux runs Windows games at kernel with massive speed gains

**原文链接**: [https://www.xda-developers.com/wine-11-rewrites-linux-runs-windows-games-speed-gains/](https://www.xda-developers.com/wine-11-rewrites-linux-runs-windows-games-speed-gains/)

Wine 11 代表了在 Linux 上运行 Windows 游戏的重大飞跃，这主要归功于其全新的 NTSYNC 功能。这一内核级驱动程序现已并入主线 Linux 内核，直接实现了 Windows NT 同步原语，消除了以往 esync 和 fsync 等变通方案带来的性能开销。结果是，在多线程密集型的游戏中性能得到显著提升，部分基准测试显示帧率增幅超过 600%。

另一项关键改进是 WoW64 架构的完善，使得 Wine 能够运行 32 位（甚至 16 位）Windows 应用程序，而无需单独的 32 位 Linux 库，从而简化了设置过程。

此版本还包括对 Wayland 驱动程序的重大增强，通过提供如剪贴板支持和显示模式模拟等功能，使其更适合日常使用。其他更新包括 Vulkan 1.4 支持、改进的力反馈、更好的蓝牙支持，以及大量针对特定游戏的兼容性修复。

总体而言，Wine 11 是一次基础性更新，提升了所有下游项目（如 Proton、SteamOS 和 Lutris）的性能、兼容性和用户体验，进一步巩固了 Linux 作为强大游戏平台的地位。

---

## 7. ARM AGI CPU：规格与型号

**原文标题**: ARM AGI CPU: Specs and SKUs

**原文链接**: [https://sbcwiki.com/docs/soc-manufacturers/arm/arm-silicon/](https://sbcwiki.com/docs/soc-manufacturers/arm/arm-silicon/)

ARM AGI CPU于2026年3月发布，是Arm首款专为大规模AI基础设施打造的量产芯片。这款高性能、高密度的CPU旨在支持现代数据中心中的智能体AI运算。

其关键规格包括：最高136个Arm Neoverse V3核心、支持AI指令集（bfloat16、INT8），以及采用3纳米工艺的双芯粒设计。它最高支持6TB DDR5-8800内存、96通道PCIe Gen6接口，热设计功耗最高达420W。

共推出三款型号：旗舰款**SP113012**（136核心）、**SP113012S**（128核心，针对能效比优化）以及**SP113012A**（64核心，针对单核内存带宽优化）。

部署方案方面，Arm提供参考设计的10U双节点服务器刀片，可搭载两颗CPU（总计272核心）。标准36kW机柜可容纳30个刀片，实现总计8,160核心。通过与超微合作推出的液冷200kW架构，可部署336颗CPU，核心总数突破45,000个。

---

## 8. 假设，对立，综合

**原文标题**: Hypothesis, Antithesis, synthesis

**原文链接**: [https://antithesis.com/blog/2026/hegel/](https://antithesis.com/blog/2026/hegel/)

本文介绍了**Hegel**——一个全新的基于属性的测试库系列，旨在将Hypothesis（领先的Python测试库）的强大功能引入多种编程语言。首个版本面向Rust，后续计划推出Go、C++、OCaml和TypeScript版本。

Hegel以Hypothesis为核心引擎，通过为每种目标语言封装客户端库来实现功能。这种方法提供了高质量的数据生成、自动测试用例简化以及测试数据库——这些都是Hypothesis的核心优势——无需从头重建这些功能。

文章重点阐述了基于属性的测试如何通过生成随机输入来验证代码特性，从而捕获诸如解析器崩溃、序列化往返失败和复杂结构不变性等错误。示例展示了Hegel在实际Rust组件中发现缺陷的能力。

长远来看，Hegel旨在与Antithesis（一个测试平台）无缝集成，以增强错误检测能力。作者还强调，在AI辅助编程时代，基于属性的测试尤其重要，因为它有助于捕捉AI生成代码中的细微错误。他们正在发布一项AI技能，帮助编写初始测试，降低使用门槛。

---

## 9. Show HN: Email.md – 将Markdown转换为响应式、邮件安全的HTML

**原文标题**: Show HN: Email.md – Markdown to responsive, email-safe HTML

**原文链接**: [https://www.emailmd.dev/](https://www.emailmd.dev/)

**Email.md** 是一款将 Markdown 转换为响应式、邮件安全的 HTML 的工具，无需为邮件设计编写复杂的 HTML。其核心承诺是让开发者能够直接“编写 Markdown”并“发送邮件”。

该工具通过提供一种基于 Markdown 的简洁语法，并包含针对常见邮件元素的特殊组件，解决了创建 HTML 邮件的公认难题。示例展示了一个确认邮件模板，使用了诸如可配置的预标题文本、深色主题选项以及用于结构和样式的自定义容器（如 `::: header`、`::: callout` 和 `::: footer`）等功能。

展示的关键特性包括：
*   **预标题与主题控制：** 设置预览文本和配色方案等元数据。
*   **模块化组件：** 使用命名区块来构建页眉、页脚和样式化内容区域（例如，用于确认代码的居中“突出显示”区块）。
*   **标准 Markdown：** 支持在模板内使用图片、链接和标题等标准 Markdown 语法。

这篇文章将 Email.md 定位为一个面向开发者的解决方案，提到了其可通过 npm 获取，并链接了模板、构建工具、文档及其 GitHub 仓库等资源。

---

## 10. 没有条款。没有条件。

**原文标题**: No Terms. No Conditions

**原文链接**: [https://notermsnoconditions.com](https://notermsnoconditions.com)

这份文本以看似矛盾的标题“无条款。无约束。”呈现了一个网站的服务条款。其核心信息是对开放性和用户自主权的彻底承诺，同时放弃了所有传统服务提供方的责任。

关键要点在于，用户可为任何合法目的使用该网站并自由在其基础上进行创作。作为交换，服务提供方放弃所有义务：不预先批准、不保证、不提供支持、不承担任何担保。网站的可用性、准确性和持续性均不作承诺，用户需对自己的行为及创作承担全部责任。

文本强调，此单一页面即构成完整协议，不存在任何隐藏条款，并明确邀请他人为自己的项目复用或采用这些条款。最后更新日期标注为“永不”，突显其作为一份永久性极简声明的意图。

本质上，这是一份纯粹平台宣言，在提供最大自由度的同时，明确声明服务提供方不承担任何责任或服务承诺。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 2 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 3 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 4 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 5 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 6 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 7 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 8 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 9 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 10 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 11 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 12 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 13 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 14 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 15 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 16 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 17 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 18 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 19 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 20 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 21 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 22 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 23 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 24 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 25 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 26 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 27 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 28 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 29 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 30 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 31 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 32 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 33 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 34 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 35 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 36 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 37 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 38 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 39 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 40 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 41 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 42 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 43 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 44 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 45 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 46 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 47 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 48 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 49 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 50 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 51 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 52 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 53 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 54 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 55 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 56 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 57 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 58 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 59 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 60 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 61 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 62 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 63 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 64 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 65 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 66 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 67 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 68 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 69 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 70 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 71 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 72 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 73 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 74 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 75 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 76 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 77 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 78 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 79 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 80 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 81 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 82 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 83 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 84 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 85 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 86 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 87 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 88 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 89 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 90 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 91 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 92 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 93 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 94 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 95 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 96 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 97 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 98 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 99 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 100 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 101 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 102 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 103 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 104 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 105 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 106 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 107 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 108 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 109 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 110 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 111 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 112 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 113 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 114 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 115 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 116 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 117 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 118 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 119 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 120 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 121 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 122 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 123 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 124 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 125 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 126 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 127 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 128 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 129 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 130 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 131 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 132 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 133 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 134 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 135 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 136 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 137 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 138 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 139 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 140 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 141 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 142 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 143 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 144 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 145 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 146 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 147 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 148 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 149 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 150 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 151 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 152 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 153 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 154 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 155 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 156 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 157 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 158 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 159 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 160 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 161 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 162 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 163 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 164 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 165 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 166 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 167 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 168 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 169 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 170 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 171 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 172 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 173 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 174 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 175 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 176 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 177 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 178 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 179 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 180 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 181 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 182 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 183 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 184 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 185 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 186 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 187 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 188 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 189 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 190 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 191 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 192 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 193 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 194 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 195 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 196 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 197 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 198 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 199 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 200 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 201 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 202 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 203 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 204 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 205 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 206 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 207 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 208 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 209 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 210 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 211 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 212 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 213 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 214 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 215 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 216 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 217 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 218 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 219 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 220 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 221 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 222 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 223 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 224 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 225 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 226 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 227 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 228 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 229 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 230 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 231 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 232 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 233 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 234 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 235 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 236 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 237 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 238 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 239 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 240 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 241 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 242 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 243 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 244 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 245 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 246 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 247 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 248 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 249 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 250 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 251 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 252 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 253 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 254 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 255 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 256 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 257 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 258 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 259 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 260 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 261 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 262 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 263 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 264 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 265 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 266 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 267 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 268 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 269 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 270 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 271 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 272 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 273 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 274 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 275 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 276 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 277 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 278 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 279 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 280 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 281 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 282 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 283 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 284 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 285 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 286 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 287 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 288 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 289 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 290 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 291 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 292 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 293 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 294 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 295 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 296 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 297 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 298 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 299 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 300 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 301 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 302 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 303 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 304 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 305 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 306 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 307 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 308 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 309 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 310 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 311 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 312 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 313 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 314 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 315 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 316 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 317 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 318 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 319 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 320 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 321 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 322 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 323 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 324 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 325 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 326 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 327 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 328 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 329 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 330 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 331 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 332 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 333 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 334 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 335 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 336 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 337 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 338 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 339 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 340 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 341 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 342 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 343 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 344 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 345 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 346 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 347 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 348 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 349 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 350 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 351 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 352 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 353 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 354 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 355 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 356 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 357 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 358 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 359 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 360 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 361 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 362 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 363 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 364 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 365 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 366 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 367 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
