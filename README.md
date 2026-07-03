# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-03.md)

*最后自动更新时间: 2026-07-03 20:33:33*
## 1. 加州一农民捐赠数吨无法出售的油桃

**原文标题**: A Cali. farmer is giving away tons of nectarines that he's not allowed to sell

**原文链接**: [https://apnews.com/article/california-farmer-nectarines-lawsuit-patent-4f7bc8ab185e8b9cbdd6d6ad4f2aabd1](https://apnews.com/article/california-farmer-nectarines-lawsuit-patent-4f7bc8ab185e8b9cbdd6d6ad4f2aabd1)

加州农民塞萨尔·莫拉因法律纠纷无法出售白油桃，正免费发放超过10万磅（约45吨）的果实，以免其腐烂。该冲突源于Giumarra兄弟水果公司提起的诉讼——该公司声称依据与一家法国公司签订的分许可协议，拥有“Monalise”油桃品种的独家销售权。莫拉曾于2017年和2019年签署协议，通过Giumarra公司种植并销售该水果，但指控该公司浪费其收成，且因向台湾销售而违反合同。莫拉随后转而向另一家包装商供货，导致被诉违约，法院现禁止他出售该批油桃。莫拉指责Giumarra公司存在不正当商业行为，而该公司坚称纠纷围绕有效合同展开。案件定于2026年7月开庭审理。此案凸显了农业领域水果专利与独家授权引发的日益紧张的局势。作为加州中央谷地的第三代种植者，莫拉因此损失了四分之一收入，并发起众筹已募得超1.7万美元。免费发放活动吸引数千人参与，志愿者们身着印有“不让一颗油桃被浪费”标志的T恤。莫拉表示，分享果实是这场令人沮丧的磨难中唯一值得欣慰的事。

---

## 2. Costco是亚马逊的对立面

**原文标题**: Costco is the anti-Amazon

**原文链接**: [https://phenomenalworld.org/analysis/the-anti-amazon/](https://phenomenalworld.org/analysis/the-anti-amazon/)

**概要：**

本文认为，好市多而非亚马逊，为日常消费提供了一种更优越且更具可持续性的零售模式。亚马逊代表着物流的复杂性，拥有近乎无限的商品种类和超快送货上门服务，而好市多则恰恰相反，通过限制和简约实现了繁荣。

关键点包括：

1.  **有限品类，而非海量选择：** 好市多将其库存限制在约4000个SKU（相比之下，亚马逊拥有数百万个）。这减少了消费者的选择困扰，允许严格的商品筛选，并确保了低价下的高品质。

2.  **高效物流：** 好市多采用简单的、基于托盘的交叉转运系统，从而维持较低的管理费用（占销售额的10%，而亚马逊的配送成本占40%）。这种效率使得低价、高工资（每小时21.29美元）和极低的6%员工流动率成为可能。

3.  **社会效益：** 好市多的模式更具“普适性”，减少了道路上的配送货车数量，并最大程度减少了驾车出行次数。它避免了亚马逊运营中固有的高昂基础设施成本和员工监控。

4.  **公共杂货店的启示：** 作者建议纽约市规划的公共杂货店应采用好市多的模式：低SKU数量、高销量以及类似仓库的简约风格，以保持低管理费用、发展优质供应商关系，并实现能够压低价格的规模经济。

---

## 3. 詹姆斯·奥布本地运行SOTA大语言模型指南

**原文标题**: Jamesob's guide to running SOTA LLMs locally

**原文链接**: [https://github.com/jamesob/local-llm](https://github.com/jamesob/local-llm)

**Jamesob 本地运行 SOTA 大模型指南总结**

本指南详述了如何搭建高端本地 AI 系统以运行最先进的语言模型，其动机源于对托管式 AI 提供商的担忧。文中概述了两个预算等级：

- **约 2,000 美元：** 2× RTX 3090（48GB 显存），可运行 Qwen3.6-27B 等模型，并支持本地语音转文字（Whisper）。
- **约 40,000 美元：** 4× RTX PRO 6000（384GB 显存），性能接近 Claude-Opus 级别，能以约 80 token/秒的速度运行 GLM-5.2-594B 等模型。

**硬件策略：** 作者采用上一代 EPYC 系统搭配 DDR4 内存（购自 eBay）以节省成本，并将主要预算投入显存。一个关键创新是使用 **c-payne.com 的 PCIe Gen4 交换机**，使 GPU 能以线速直接通信实现张量并行，绕过 CPU 的根复合体并降低延迟。

**关键配置挑战与解决方案：**
- **BIOS：** 强制设置 PCIe Gen4 速度，并禁用 ASPM 以防止链路降级。
- **内核参数：** 设置 `iommu=off` 防止多 GPU 点对点（P2P）操作期间 NCCL 挂起。
- **ACS 禁用：** 通过运行时脚本（`setpci`）强制 P2P 流量停留在交换结构内部，而非经过 CPU。
- **电源：** 将 GPU 功耗上限从 600W 降至 350W，以便在单路 110V 家用电路上运行。

**结果：** 实现了 Gen4 线速 P2P 带宽（单向 27.5 GB/s，双向 50.4 GB/s），延迟低于微秒级。本指南还介绍了基于 Docker 的模型运行器以及用于支持工具增强型 AI 代理的沙盒化虚拟机框架。

---

## 4. 工厂只是房间

**原文标题**: Factories are just rooms

**原文链接**: [https://interconnected.org/home/2026/07/03/factories](https://interconnected.org/home/2026/07/03/factories)

作者讲述了去孩子学校讲解制造业的经历，旨在揭开制造过程的神秘面纱，并激励这些7岁的学生成为未来的创造者。他们展示了自己AI时钟的生产过程，从草图、CAD设计到电子纸屏幕、电路板和塑料外壳。他们对比了缓慢的3D打印延时摄影和快速的注塑成型视频，突出强调了大规模生产在现实世界中的速度。孩子们提出了富有洞察力的问题，比如产品如何在运输中完好无损（答案是用振动测试机进行测试），以及按钮如何工作，这些引发了关于装配和包装设计的讨论。

作者批评了儿童电视节目中那些“令人敬畏”的工厂视频，认为它们制造了距离感，抑制了参与热情。相反，他们强调“工厂不过就是房间”，日常物品是由人制造的，而非魔法。目标是让动手创造变得平常，让孩子们觉得自己有能力成为设计师、工程师或发明家。作者呼吁其他人也去学校演讲，承诺这将充满参与感和好奇心。核心信息是：复杂没关系，孩子们应该意识到“那个人也可以是我。”

---

## 5. 使用TLA+追查一个存在16年的SQLite WAL漏洞

**原文标题**: Hunting a 16-year-old SQLite WAL bug with TLA+

**原文链接**: [https://ubuntu.com/blog/hunting-a-16-year-old-sqlite-bug-with-tla-is-dqlite-affected](https://ubuntu.com/blog/hunting-a-16-year-old-sqlite-bug-with-tla-is-dqlite-affected)

**摘要：**

本文由Canonical公司dqlite团队的Marco Manino和Alberto Carretero撰写，详细阐述了他们对SQLite预写日志（WAL）检查点机制中一个存在16年之久的漏洞（该漏洞自2010年就已存在，难以发现和复现）的调查过程。该漏洞可能导致数据库损坏。

作者使用TLA+对SQLite的行为进行建模，重点关注两个关键锁（检查点锁和写入锁）以及WAL状态变量（walSalt、mxFrame、nBackfill）。他们模拟了两个主要操作：向WAL追加页面和执行检查点（将页面从WAL移至数据库）。该关键漏洞源于WAL重置期间的竞态条件：当写入者在执行检查点后重置WAL（增加walSalt并重置mxFrame和nBackfill）时，并发的检查点或读取者可能会使用陈旧的状态，导致页面被错误移动或校验和失败，从而损坏数据库。

通过创建TLA+规范，团队能够快速生成一个跟踪，展示导致数据库损坏的确切步骤序列。随后，他们构建了一个独立的模型，模拟dqlite使用SQLite的方式，以验证dqlite是否也易受这个长期存在的漏洞影响。本文强调了形式化建模（TLA+）在理解复杂、易受竞态条件影响的软件行为方面的强大能力。

---

## 6. Show HN：Mcpsnoop——MCP版Wireshark（透明代理与实时TUI）

**原文标题**: Show HN: Mcpsnoop – Wireshark for MCP (transparent proxy and live TUI)

**原文链接**: [https://github.com/kerlenton/mcpsnoop](https://github.com/kerlenton/mcpsnoop)

**Mcpsnoop 简介**

Mcpsnoop 是“MCP 版 Wireshark”——一个透明代理与实时 TUI 工具，让开发者能调试 AI 客户端（如 Claude Desktop、Cursor）与 MCP 服务器之间的真实流量。不同于官方 MCP Inspector（以独立客户端连接，无法捕捉实际客户端-服务器交互），Mcpsnoop 位于数据路径中，实时捕获每一帧 JSON-RPC 消息。

**核心功能：**
- **实时流** 展示请求、响应、通知及服务器标准错误，错误信息彩色标注，慢调用标记高亮。
- **回放** – 针对全新服务器实例重新运行任意已捕获的工具调用。
- **能力检测器** – 精确查看客户端与服务器在握手阶段协商的能力。
- **帧检测器** – 完整、美化打印的 JSON，支持帧内搜索。
- **挂起调用检测** – 对挂起请求显示实时计时器。
- **过滤** – 支持令牌（如 `tool:`、`status:`、`dir:` 等）与 AND 逻辑组合。
- **零配置** – 无需参数或启动顺序；shim 与 UI 自动互相发现。

**用法：** 在客户端的 MCP 配置中将服务器命令包裹在 `mcpsnoop` 中（例如：`"command": "mcpsnoop", "args": ["--", "node", "build/index.js"]`）。运行 `mcpsnoop`（无参数）打开 UI。对于可流式 HTTP，使用 `mcpsnoop http --target ... --listen ...`。

**安装：** 通过 `go install`、Homebrew（tap 或 trust），或从 Releases 下载预编译二进制文件。

**安全性：** 仅执行受信任的服务器命令；绝不执行不可信输入。

Mcpsnoop 采用 MIT 许可证，欢迎贡献代码。

---

## 7. 与其禁止AI，我与学生签订了一份课堂协议

**原文标题**: Instead of banning AI, I made a classroom contract with my students

**原文链接**: [https://www.science.org/content/article/instead-banning-ai-i-made-classroom-contract-my-students](https://www.science.org/content/article/instead-banning-ai-i-made-classroom-contract-my-students)

**摘要：**  
本文中，一位科学教育工作者描述了在课堂上选择协作方式而非完全禁止AI的做法。这位教师与学生共同制定了一份**课堂契约**，以确立合乎伦理且高效的AI使用规范。要点包括：  

1. **学生参与**：学生共同编写了何时以及如何使用AI的规则（例如，用于头脑风暴或编辑，而非生成完整答案）。  
2. **透明度**：契约要求学生标注AI的贡献，并反思工具如何辅助其学习。  
3. **聚焦批判性思维**：目标是教会学生批判AI的输出，而非回避技术。  
4. **成果**：学生报告称对AI的使用感到更自主、更诚实，而教师则观察到高质量作业中有了恰当的引用说明。  

该策略旨在通过培养责任感和伦理判断力，让学生为AI融合的未来做好准备。

---

## 8. PostgreSQL与OOM杀手：我们为何采用严格内存过量使用策略

**原文标题**: PostgreSQL and the OOM killer: Why we use strict memory overcommit

**原文链接**: [https://www.ubicloud.com/blog/postgresql-and-the-oom-killer-why-we-use-strict-memory-overcommit](https://www.ubicloud.com/blog/postgresql-and-the-oom-killer-why-we-use-strict-memory-overcommit)

本文解释了 Ubicloud 为何对 PostgreSQL 采用严格内存过量使用策略（vm.overcommit_memory=2）。关键要点如下：

**问题：** Linux 默认的内存过量使用允许进程分配超出物理 RAM 的虚拟内存。当实际内存耗尽时，OOM 杀手会终止某个进程。对于 PostgreSQL，杀死后台进程可能损坏共享内存，迫使主进程终止所有连接并启动崩溃恢复，导致长时间中断。

**解决方案：** 严格过量使用会拒绝超过设定限制（CommitLimit）的内存分配请求，并返回 ENOMEM。PostgreSQL 可以优雅地处理此情况——后台进程报告错误、取消事务并继续运行，其他连接不受影响。

**漏洞：** 启用严格过量使用后，Ubicloud 发现 Committed_AS 值异常膨胀（一台 8 GB 机器上达到 651 GB）。调查发现是 Linux 6.5 引入的内核漏洞（提交 408579c）。`move_vma()` 函数中存在一处单字符错误，导致条件判断逻辑反转：每次成功的 mremap 操作都会调用 `vm_acct_memory()` 增加 Committed_AS 值（原本设计仅在失败时触发）。这造成了单调递增的内存记账泄漏，每周增长约 4.7%。Linus Torvalds 通过一行补丁修复了此问题，将 `!` 改回 `< 0`。

**经验法则：** 对于专用 PostgreSQL 服务器，Ubicloud 将 CommitLimit 设置为 RAM 加交换空间的 80%（附加 2 GB 缓冲），以在安全性与突发工作负载可用内存之间取得平衡。

---

## 9. 我的父亲曾参与建设北美的燕麦供应链：这一链条能否被重塑？

**原文标题**: My dad helped build North America's oat supply chain: Can it be remade?

**原文链接**: [https://ambrook.com/offrange/perspective/how-we-lost-our-oats](https://ambrook.com/offrange/perspective/how-we-lost-our-oats)

**摘要：**

本文探讨了美国燕麦种植业的衰退以及加拿大主导的供应链的崛起，这一变化源于“燕麦黑手党”近期在美国新建的一家燕麦加工厂。作者指出，1950年后，由于机械化、除草剂改进以及玉米和大豆利润更高，美国燕麦种植面积大幅缩减。联邦农业政策，特别是1985年的《农业法案》，通过补偿农民休耕边际土地（通常是燕麦田）并偏向主要作物，加速了这一衰退。

随着美国国内产量消失，食品公司转向加拿大。加拿大气候凉爽，加上政策变化——包括1988年的自由贸易协定和1989年燕麦行业放松管制——使得农民得以扩大生产。作者的父亲作为一名燕麦经纪人，通过创造性地解决物流问题，例如利用通常运输铁矿石的湖轮将燕麦从桑德贝廉价运往德卢斯，帮助建立了这条新的跨境供应链。

这种加拿大至美国的供应链已被证明具有韧性和效率，对消费者和加工厂都有利。尽管新一代农民希望重建国内燕麦供应链以改善土壤健康和社区利益，但文章总结道，打破这条从中西部加工厂延伸至加拿大北部农场的既有供应链将是一项重大挑战。

---

## 10. Valve开源Steam Machine电子墨水屏，让你也能自制

**原文标题**: Valve open-source the Steam Machine e-ink screen so you can make your own

**原文链接**: [https://www.gamingonlinux.com/2026/07/valve-open-source-the-steam-machine-e-ink-screen-so-you-can-make-your-own/](https://www.gamingonlinux.com/2026/07/valve-open-source-the-steam-machine-e-ink-screen-so-you-can-make-your-own/)

Valve已将Steam Machine的E-Ink显示屏开源，并在GitLab上以MIT许可证发布了该项目。这项名为“Inkterface”的计划允许任何人自行制作E-Ink屏幕，以替换Steam Machine的前面板。

所需组件包括：
- 1个带2MB PSRAM的Adafruit ESP32 Feather开发板
- 1个Adafruit eInk转接板
- 1个Adafruit 5.83英寸单色E-Ink面板
- 13颗M2.5×5mm圆头机螺丝
- 4个1/4英寸×1/4英寸×3/16英寸阶梯磁铁

Valve在GitLab仓库中提供了组装说明和视频。虽然Valve不会自行生产该显示屏，但JSAUX等第三方配件制造商已表示有兴趣生产预装版本。

文章指出，此次开源发布延续了Valve共享硬件设计的模式，与他们在Steam Deck和Valve Index CAD文件上的做法类似。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 2 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 3 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 4 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 5 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 6 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 7 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 8 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 9 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 10 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 11 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 12 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 13 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 14 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 15 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 16 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 17 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 18 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 19 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 20 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 21 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 22 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 23 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 24 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 25 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 26 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 27 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 28 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 29 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 30 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 31 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 32 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 33 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 34 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 35 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 36 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 37 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 38 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 39 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 40 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 41 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 42 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 43 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 44 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 45 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 46 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 47 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 48 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 49 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 50 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 51 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 52 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 53 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 54 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 55 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 56 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 57 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 58 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 59 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 60 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 61 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 62 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 63 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 64 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 65 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 66 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 67 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 68 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 69 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 70 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 71 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 72 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 73 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 74 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 75 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 76 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 77 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 78 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 79 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 80 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 81 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 82 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 83 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 84 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 85 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 86 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 87 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 88 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 89 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 90 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 91 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 92 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 93 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 94 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 95 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 96 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 97 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 98 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 99 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 100 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 101 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 102 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 103 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 104 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 105 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 106 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 107 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 108 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 109 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 110 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 111 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 112 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 113 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 114 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 115 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 116 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 117 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 118 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 119 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 120 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 121 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 122 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 123 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 124 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 125 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 126 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 127 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 128 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 129 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 130 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 131 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 132 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 133 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 134 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 135 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 136 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 137 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 138 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 139 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 140 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 141 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 142 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 143 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 144 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 145 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 146 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 147 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 148 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 149 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 150 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 151 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 152 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 153 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 154 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 155 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 156 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 157 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 158 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 159 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 160 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 161 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 162 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 163 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 164 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 165 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 166 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 167 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 168 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 169 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 170 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 171 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 172 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 173 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 174 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 175 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 176 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 177 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 178 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 179 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 180 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 181 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 182 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 183 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 184 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 185 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 186 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 187 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 188 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 189 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 190 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 191 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 192 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 193 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 194 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 195 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 196 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 197 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 198 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 199 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 200 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 201 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 202 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 203 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 204 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 205 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 206 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 207 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 208 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 209 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 210 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 211 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 212 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 213 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 214 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 215 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 216 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 217 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 218 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 219 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 220 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 221 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 222 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 223 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 224 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 225 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 226 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 227 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 228 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 229 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 230 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 231 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 232 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 233 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 234 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 235 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 236 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 237 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 238 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 239 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 240 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 241 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 242 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 243 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 244 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 245 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 246 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 247 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 248 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 249 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 250 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 251 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 252 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 253 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 254 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 255 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 256 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 257 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 258 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 259 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 260 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 261 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 262 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 263 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 264 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 265 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 266 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 267 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 268 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 269 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 270 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 271 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 272 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 273 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 274 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 275 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 276 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 277 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 278 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 279 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 280 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 281 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 282 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 283 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 284 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 285 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 286 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 287 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 288 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 289 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 290 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 291 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 292 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 293 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 294 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 295 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 296 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 297 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 298 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 299 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 300 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 301 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 302 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 303 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 304 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 305 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 306 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 307 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 308 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 309 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 310 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 311 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 312 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 313 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 314 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 315 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 316 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 317 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 318 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 319 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 320 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 321 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 322 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 323 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 324 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 325 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 326 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 327 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 328 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 329 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 330 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 331 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 332 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 333 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 334 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 335 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 336 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 337 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 338 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 339 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 340 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 341 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 342 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 343 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 344 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 345 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 346 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 347 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 348 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 349 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 350 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 351 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 352 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 353 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 354 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 355 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 356 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 357 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 358 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 359 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 360 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 361 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 362 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 363 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 364 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 365 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 366 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 367 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 368 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 369 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 370 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 371 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 372 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 373 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 374 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 375 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 376 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 377 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 378 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 379 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 380 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 381 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 382 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 383 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 384 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 385 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 386 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 387 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 388 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 389 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 390 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 391 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 392 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 393 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 394 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 395 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 396 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 397 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 398 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 399 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 400 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 401 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 402 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 403 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 404 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 405 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 406 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 407 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 408 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 409 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 410 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 411 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 412 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 413 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 414 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 415 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 416 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 417 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 418 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 419 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 420 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 421 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 422 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 423 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 424 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 425 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 426 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 427 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 428 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 429 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 430 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 431 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 432 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 433 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 434 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 435 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 436 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 437 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 438 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 439 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 440 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 441 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 442 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 443 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 444 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 445 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 446 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 447 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 448 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 449 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 450 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 451 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 452 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 453 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 454 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 455 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 456 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 457 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 458 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 459 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 460 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 461 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 462 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 463 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 464 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 465 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 466 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 467 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 468 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
