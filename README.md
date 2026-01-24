# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-24.md)

*最后自动更新时间: 2026-01-24 20:38:38*
## 1. BirdyChat成为欧洲首款与WhatsApp互通的聊天应用。

**原文标题**: BirdyChat becomes first European chat app that is interoperable with WhatsApp

**原文链接**: [https://www.birdy.chat/blog/first-to-interoperate-with-whatsapp](https://www.birdy.chat/blog/first-to-interoperate-with-whatsapp)

BirdyChat成为首个根据欧盟《数字市场法案》（DMA）实现与WhatsApp互操作的欧洲即时通讯应用。这使得欧洲经济区（EEA）的BirdyChat用户仅需通过电话号码，即可与同区域的WhatsApp用户交换一对一消息、照片和文件，双方均无需切换应用。

此次整合旨在消除BirdyChat的主要使用门槛——该应用专为工作对话设计。用户现可在BirdyChat内有序管理工作通信，同时与仍使用WhatsApp的联系人无缝对接。该功能支持端到端加密，并允许用户使用工作邮箱（而非个人手机号）进行身份验证。

互操作功能通过WhatsApp官方的"第三方聊天"界面实现，目前正在欧洲经济区逐步推广，且要求双方用户均位于该区域内。群聊功能支持计划在未来更新中推出。BirdyChat目前仍采用邀请制，用户可加入等候列表以提前体验互操作功能。

---

## 2. 事后分析：我们的首次超低地球轨道卫星任务（含影像与飞行数据）

**原文标题**: Postmortem: Our first VLEO satellite mission (with imagery and flight data)

**原文链接**: [https://albedo.com/post/clarity-1-what-worked-and-where-we-go-next](https://albedo.com/post/clarity-1-what-worked-and-where-we-go-next)

阿尔贝多公司的Clarity-1卫星于2025年3月发射，成功验证了在超低地球轨道开展商业运营的可行性，克服了大气阻力与原子氧侵蚀等挑战。该任务验证了公司自主研发的Precision卫星平台，并展示了获取10厘米分辨率可见光与2米分辨率热红外影像的能力。

卫星在超低轨的表现超出预期：阻力系数比目标值优化12%，太阳能电池阵有效抵御了原子氧侵蚀。它完成了超过100公里的受控降轨，并在太阳风暴中仅受轻微影响。

尽管初期顺利，任务仍遭遇重大挫折——四台控制力矩陀螺中有两台因润滑剂温度限制问题失效。团队通过磁力矩器创新实现三轴控制，随后开发出三陀螺控制律以维持运行。这使得卫星成功拍摄并传回首批影像，验证了先进成像链与地面系统的端到端功能。

虽然陀螺故障最终限制了任务周期，但Clarity-1已达成验证超低轨可持续运营及Precision平台的核心目标，为后续卫星奠定了坚实基础。

---

## 3. 树莓派竞速赛：从Pi 1到Pi 5——性能大比拼

**原文标题**: Raspberry Pi Drag Race: Pi 1 to Pi 5 – Performance Comparison

**原文链接**: [https://the-diy-life.com/raspberry-pi-drag-race-pi-1-to-pi-5-performance-comparison/](https://the-diy-life.com/raspberry-pi-drag-race-pi-1-to-pi-5-performance-comparison/)

**《树莓派性能大赛：从 Pi 1 到 Pi 5 全面对比》摘要**

本文通过一系列标准化基准测试，对五代树莓派主板（Pi 1 Model B、Pi 2、Pi 3、Pi 4 和 Pi 5）进行了全面的性能比较。

主要发现突显了性能的显著演进：
*   **原始CPU性能：** 在多核CPU基准测试（Geekbench 5）中，树莓派5比最初的Pi 1快约**100倍**。即使是单核性能也提升了30倍。
*   **系统响应速度：** 一项同时打开多个应用程序的“性能大赛”测试显示，Pi 5 仅用约**30秒**完成任务，而 Pi 1 耗时超过**16分钟**。在此现实场景测试中，Pi 4 的速度比 Pi 5 慢约4-5倍。
*   **图形与视频：** GPU性能提升巨大，Pi 5 在 GFXBench 中的得分比 Pi 1 高出近**150倍**。它也是首个能够流畅解码 4Kp60 HEVC 视频的型号。
*   **存储与内存：** Pi 5 引入的 PCIe 2.0 接口，使得使用 NVMe SSD 可实现远超以往的存储速度（读取超过 900 MB/s），而旧型号的 SD 卡接口速度限制在约 40 MB/s。同时，每一代产品的内存带宽也大幅提升。

文章总结道，虽然 Pi 3 和 Pi 4 等旧型号对于许多轻量级任务仍然胜任，但树莓派5 代表了性能上的巨大飞跃，使其能够胜任要求更高的桌面计算、游戏和媒体应用。此次对比清晰地展示了该平台发展过程中所蕴含的变革性技术进步。

---

## 4. Zig中的内存布局与公式

**原文标题**: Memory layout in Zig with formulas

**原文链接**: [https://raymondtana.github.io/math/programming/2026/01/23/zig-alignment-and-sizing.html](https://raymondtana.github.io/math/programming/2026/01/23/zig-alignment-and-sizing.html)

本文阐述了Zig语言中的内存布局原则，重点解析如何计算不同数据类型的对齐方式和大小。作者强调，理解这些概念对于以数据为导向的设计至关重要，这类设计旨在最大限度地减少内存占用和填充。

文中提供了关键公式与规则：

*   **基本类型：** 对齐方式与大小相等，对应于存储该类型所需的最小2的幂字节数（例如`u17`占用4字节）。
*   **结构体：** 对齐方式为其所有字段中的最大对齐值。大小计算方式为：按顺序排列字段，为满足每个字段的对齐要求进行填充，并将总大小向上取整至结构体对齐值的倍数。使用`extern`关键字会保持字段顺序，而Zig的默认行为会重新排列字段以最小化填充。
*   **枚举：** 对齐方式与大小与其底层整数类型一致。
*   **数组：** 对齐方式与元素类型相同；大小为元素数量乘以元素大小。
*   **切片：** 具有两个`usize`值（指针和长度）的对齐方式与大小。
*   **联合体：** 对齐方式为其所有字段中的最大对齐值。对于无标签联合体，大小为最大字段的大小向上取整至对齐值。有标签联合体则需加上标签枚举的大小。

文章指出，对齐方式与大小始终是2的幂，且大小总是对齐值的整数倍。这种结构对于CPU高效访问内存至关重要，并影响着数据导向型应用程序的性能。

---

## 5. 通过我的英国电话线实现千兆以太网。

**原文标题**: Doing gigabit Ethernet over my British phone wires

**原文链接**: [https://thehftguy.com/2026/01/22/doing-gigabit-ethernet-over-my-british-phone-wires/](https://thehftguy.com/2026/01/22/doing-gigabit-ethernet-over-my-british-phone-wires/)

本文详细介绍了作者在英国住宅中利用现有电话线路实现千兆以太网速度的成功项目，作为对不可靠电力线适配器的替代方案。

由于电力线性能不稳定，无法充分利用500 Mbps的互联网连接，作者决定改造英国住宅中普遍存在的电话插座。经过深入研究，他们找到了一款合适的产品：德国制造商推出的gigacopper G4201TM适配器，该产品通过电话线路使用G.hn技术。

英国脱欧后从德国订购和运输的过程颇为繁琐，涉及进口费用且皇家邮政的物流追踪服务不佳。作者最初购买了错误的型号（客户端-服务器版而非家庭内部版），但在供应商帮助下通过固件更新获得了更优的低延迟、多设备互联功能。

测试证实该适配器能够提供完整的互联网速度，链路速率最高可达1.7 Gbps。作者强调这是一种无需重新布线即可实现的准千兆解决方案，尤其考虑到英国家庭中普遍存在的杂乱菊花链式Cat5电话线路，使得规范以太网安装难以实施。

结论是，这项技术有效解锁了英国无处不在的电话插座基础设施的高速稳定网络传输能力，填补了重要的市场空白。

---

## 6. Claude Code全新隐藏功能：集群模式

**原文标题**: Claude Code's new hidden feature: Swarms

**原文链接**: [https://twitter.com/NicerInPerson/status/2014989679796347375](https://twitter.com/NicerInPerson/status/2014989679796347375)

这篇文章似乎是一条错误信息或占位文本，并非关于Claude Code“隐藏功能”的实质性内容。

所提供的文本是X.com（原Twitter）向用户发出的标准通知，告知其浏览器已禁用JavaScript。它指导用户启用JavaScript或切换至支持的浏览器以使用该平台，并包含标准的页脚链接（帮助中心、服务条款等）。

文中并未提及“Claude Code”、任何新功能或“Swarms”。标题与实际内容脱节，实际内容仅为技术性的浏览器兼容性提示。因此，对*所提供内容*的概括为：该文本是X.com的浏览器错误提示，要求用户启用JavaScript以确保网站正常运行，并附有标准的法律声明与支持链接。

---

## 7. 为何通过TF摧毁资源如此糟糕？

**原文标题**: Why Does Destroying Resources via TF Suck?

**原文链接**: [https://newsletter.masterpoint.io/p/why-does-destroying-resources-via-tf-suck](https://newsletter.masterpoint.io/p/why-does-destroying-resources-via-tf-suck)

本文阐述了通过Terraform（TF）销毁资源通常较为困难，因为云服务商设置了大量可能阻碍删除的安全机制和依赖关系。主要障碍包括S3存储桶或数据库等资源的删除保护功能、与其他资源的关联绑定，以及需要确认才能停止的活跃进程。

作者建议，由于销毁并非日常的“次日运维”操作，通常最好接受一次性删除所需的手动操作（即“点击式运维”），而非过度设计解决方案。然而，如果特定销毁操作反复造成困扰，则值得针对性地研究自动化方案——例如在非生产环境中自动清空存储桶或管理删除保护。

核心建议是：仅对频繁出现问题的删除操作进行优化，其余情况下可将复杂的销毁任务视为偶发性的人工操作。

---

## 8. JSON-render：基于LLM的JSON转UI工具

**原文标题**: JSON-render: LLM-based JSON-to-UI tool

**原文链接**: [https://json-render.dev/](https://json-render.dev/)

**概述：**

JSON-render 是一款利用大型语言模型（AI）根据自然语言提示生成用户界面的工具。其工作流程首先要求开发者定义一个**组件目录**——即一组经批准的 UI 组件、操作及数据验证规则（使用 Zod 模式）。当用户提供提示（例如“创建一个登录表单”）时，AI 会生成严格遵循该目录约束的 **JSON 结构**。

随后，该 JSON 会通过开发者自有的 React 组件**即时渲染**为实时 UI。该工具支持在 AI 流式传输 JSON 数据时进行**渐进式渲染**。

其核心功能在于能够**将生成的 UI 导出为独立、可用于生产环境的 React 代码**（例如用于 Next.js 项目），包含所有必要的组件文件和依赖项，从而消除对 JSON-render 库本身的运行时依赖。

其他功能还包括使用 JSON Pointer 路径的**数据绑定**、**条件可见性**逻辑，以及与宿主应用集成的**预定义操作**。本质上，JSON-render 充当了 AI 生成描述与开发者特定设计系统之间的受控桥梁，确保输出一致性，并支持快速 UI 原型设计。

---

## 9. 小型Kafka：在免费t3.micro上运行Tansu与SQLite

**原文标题**: Small Kafka: Tansu and SQLite on a free t3.micro

**原文链接**: [https://blog.tansu.io/articles/broker-aws-free-tier](https://blog.tansu.io/articles/broker-aws-free-tier)

本文演示了如何利用AWS免费套餐，在低成本的t3.micro实例上部署兼容Kafka的Tansu消息代理。该方案采用嵌入式SQLite存储引擎，所有元数据和消息都存储在单个`tansu.db`文件中，简化了备份和迁移流程。

指南详细介绍了实例配置、Docker Compose安装以及通过Docker容器运行Tansu的步骤。文章重点展示了该代理极低的内存占用（约18-27 MB）及其处理适度负载的能力——性能测试显示其可达到约每秒7000条记录的吞吐量。

作者强调t3.micro实例凭借其低成本及CPU积分系统（可在需求高峰时突发性能），非常适合早期项目。文章同时指出Tansu支持S3等其他存储引擎，适用于无状态多代理部署，并以Apache许可证开源。

总体而言，本文呈现了Tansu作为轻量级、高性价比的解决方案，能够为需要Kafka兼容性但不愿承担完整集群开销的项目提供快速启动支持。

---

## 10. 迷宫算法（2017）

**原文标题**: Maze Algorithms (2017)

**原文链接**: [http://www.jamisbuck.org/mazes/](http://www.jamisbuck.org/mazes/)

本文介绍了一系列迷宫生成算法，主要基于作者的著作《程序员迷宫设计指南》。交互式演示的源代码可在GitHub上获取。

核心内容为具体的算法技术列表，包括：
*   **经典算法：** 递归回溯法、埃勒算法、克鲁斯卡尔算法和普里姆算法。
*   **分割类算法：** 递归分割法及其“团块状”变体。
*   **随机游走算法：** 阿尔多斯-布罗德算法和威尔逊算法（两者均以生成均匀生成树而著称）。
*   **混合与专用算法：** 休斯顿算法（阿尔多斯-布罗德与威尔逊算法的性能优化混合体）、“猎杀算法”以及生长树算法（允许自定义单元格选择策略）。
*   **简单网格模式：** 二叉树算法和侧风算法。

文章重点指出了某些算法的关键特性，例如阿尔多斯-布罗德和威尔逊算法的均匀性，并说明休斯顿变体为追求速度牺牲了这种均匀性。文章还为交互式演示提供了实用说明，例如在生长树算法中更改参数后需要重置。

总之，本文为对多样化迷宫生成方法的理论与实现感兴趣的程序员，提供了一个精选的参考和演示中心。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 2 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 3 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 4 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 5 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 6 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 7 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 8 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 9 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 10 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 11 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 12 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 13 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 14 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 15 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 16 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 17 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 18 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 19 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 20 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 21 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 22 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 23 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 24 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 25 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 26 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 27 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 28 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 29 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 30 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 31 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 32 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 33 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 34 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 35 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 36 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 37 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 38 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 39 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 40 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 41 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 42 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 43 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 44 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 45 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 46 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 47 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 48 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 49 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 50 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 51 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 52 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 53 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 54 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 55 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 56 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 57 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 58 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 59 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 60 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 61 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 62 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 63 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 64 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 65 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 66 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 67 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 68 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 69 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 70 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 71 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 72 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 73 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 74 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 75 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 76 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 77 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 78 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 79 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 80 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 81 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 82 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 83 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 84 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 85 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 86 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 87 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 88 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 89 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 90 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 91 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 92 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 93 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 94 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 95 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 96 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 97 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 98 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 99 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 100 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 101 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 102 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 103 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 104 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 105 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 106 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 107 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 108 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 109 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 110 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 111 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 112 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 113 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 114 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 115 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 116 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 117 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 118 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 119 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 120 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 121 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 122 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 123 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 124 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 125 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 126 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 127 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 128 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 129 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 130 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 131 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 132 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 133 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 134 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 135 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 136 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 137 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 138 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 139 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 140 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 141 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 142 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 143 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 144 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 145 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 146 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 147 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 148 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 149 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 150 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 151 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 152 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 153 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 154 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 155 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 156 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 157 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 158 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 159 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 160 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 161 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 162 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 163 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 164 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 165 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 166 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 167 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 168 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 169 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 170 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 171 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 172 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 173 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 174 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 175 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 176 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 177 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 178 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 179 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 180 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 181 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 182 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 183 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 184 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 185 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 186 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 187 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 188 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 189 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 190 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 191 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 192 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 193 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 194 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 195 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 196 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 197 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 198 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 199 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 200 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 201 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 202 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 203 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 204 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 205 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 206 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 207 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 208 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 209 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 210 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 211 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 212 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 213 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 214 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 215 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 216 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 217 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 218 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 219 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 220 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 221 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 222 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 223 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 224 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 225 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 226 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 227 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 228 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 229 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 230 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 231 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 232 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 233 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 234 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 235 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 236 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 237 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 238 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 239 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 240 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 241 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 242 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 243 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 244 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 245 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 246 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 247 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 248 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 249 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 250 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 251 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 252 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 253 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 254 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 255 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 256 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 257 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 258 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 259 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 260 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 261 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 262 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 263 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 264 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 265 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 266 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 267 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 268 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 269 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 270 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 271 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 272 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 273 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 274 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 275 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 276 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 277 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 278 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 279 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 280 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 281 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 282 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 283 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 284 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 285 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 286 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 287 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 288 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 289 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 290 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 291 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 292 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 293 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 294 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 295 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 296 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 297 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 298 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 299 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 300 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 301 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 302 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 303 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 304 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 305 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 306 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 307 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 308 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
