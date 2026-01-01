# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-01.md)

*最后自动更新时间: 2026-01-01 20:37:24*
## 1. 相机与镜头（2020）

**原文标题**: Cameras and Lenses (2020)

**原文链接**: [https://ciechanow.ski/cameras-and-lenses/](https://ciechanow.ski/cameras-and-lenses/)

本文从基本原理出发，解释数码相机的工作原理，并构建一个简易相机模型。首先描述图像传感器如何通过光电探测器网格记录光强，以及如何使用彩色滤镜（如拜耳滤镜）和去马赛克技术生成彩色图像。

文章指出的核心问题是：裸传感器会捕捉所有方向的光线，导致图像模糊不清。解决方案是针孔相机——它通过小孔限制光路，形成清晰但昏暗且倒立的图像。文中解释了关键效应：图像倒置、传感器距离改变视野范围，以及**余弦四次方定律**导致的暗角现象。

针孔相机的主要局限在于清晰度与亮度之间的权衡：孔越小图像越清晰，但亮度越低。为解决这一问题，文章引入透镜的必要性——它能汇聚更多光线并精确聚焦于传感器，从而实现对清晰度与虚化（景深）的控制。最后，文章以玻璃材质和光波折射原理作为构建此类透镜的基础作结。

---

## 2. Show HN：OpenWorkers – 基于 Rust 的自托管 Cloudflare Workers 实现

**原文标题**: Show HN: OpenWorkers – Self-hosted Cloudflare workers in Rust

**原文链接**: [https://openworkers.com/introducing-openworkers](https://openworkers.com/introducing-openworkers)

**OpenWorkers** 是一个基于 Rust 构建的开源、自托管运行时，它复现了 Cloudflare Workers 的功能。该平台允许开发者在自己的基础设施上，于安全的 V8 隔离环境中执行 JavaScript，从而实现无供应商锁定的边缘计算。

该平台支持 Cloudflare Workers 的核心功能，包括：
*   **绑定：** KV 存储、PostgreSQL、S3/R2 兼容存储、服务绑定以及环境变量。
*   **Web API：** `fetch`、`Request`、`Response`、`ReadableStream`、`crypto.subtle` 和计时器。
*   **架构：** 采用微服务设计（通过 Docker Compose 管理），包含 API、仪表板、日志管理和隔离的工作线程运行器等组件。
*   **沙箱机制：** 强制执行严格的单工作线程限制（100 毫秒 CPU，128MB 内存）。
*   **调度：** 内置支持定时任务。

部署流程经过简化，仅需一个 PostgreSQL 数据库和一个 Docker Compose 文件。该项目历经七年发展，现已直接构建于 `rusty_v8` 之上，并强调数据主权、成本可预测性以及与 Cloudflare Workers 开发者体验的兼容性。未来计划包括为调试而设计的执行记录功能。

---

## 3. 每个程序员都应该知道的Python数字

**原文标题**: Python numbers every programmer should know

**原文链接**: [https://mkennedy.codes/posts/python-numbers-every-programmer-should-know/](https://mkennedy.codes/posts/python-numbers-every-programmer-should-know/)

本文对Python在各种操作、数据结构和库中的性能进行了全面基准测试。关键结论是：虽然Python比C等编译型语言慢，但其基础操作仍然非常快，通常以纳秒计。

基准测试揭示了性能敏感代码的关键洞察：
*   **内存：** Python对象具有显著开销（例如一个int占28字节）。使用`__slots__`或`dataclass(slots=True)`能大幅减少大量对象集合的内存占用。
*   **数据结构：** 选择合适的数据结构至关重要。对于包含1000个元素的集合，`set`或`dict`的成员检查比`list`快约200倍。
*   **序列化：** 优化库如`orjson`和`msgspec`比标准`json`模块快得多（最高达11倍）。
*   **Web框架：** 对于简单的JSON接口，异步框架（如FastAPI、Starlette和Litestar）的请求吞吐量约为同步框架（如Flask和Django）的2倍。
*   **数据库访问：** 进程内选项（如SQLite和`diskcache`）提供微秒级读取速度，而基于网络的数据库（如MongoDB）因往返延迟会产生毫秒级延迟。

总体而言，文章强调理解这些相对性能特征（而非绝对数值）对编写高效Python代码至关重要。相关基准测试源码已在GitHub开源，可供验证和进一步探究。

---

## 4. iOS在日本允许使用替代浏览器引擎

**原文标题**: iOS allows alternative browser engines in Japan

**原文链接**: [https://developer.apple.com/support/alternative-browser-engines-jp/](https://developer.apple.com/support/alternative-browser-engines-jp/)

在iOS 26.2及更高版本中，苹果将允许在日本使用替代浏览器引擎（如Blink或Gecko），这标志着其打破了此前仅允许WebKit的规则。该政策适用于两类特定应用：专用浏览器应用以及来自“浏览器引擎管理方”且提供应用内浏览功能的应用。

开发者需申请以下两项新权限之一，并满足严格且持续的隐私与安全标准，方可获得资格。这些标准包括：
*   **功能

**Web浏览器引擎权限**适用于完整浏览器应用，此类应用还必须拥有默认浏览器权限。**嵌入式浏览器引擎权限**适用于引擎管理方应用中的应用内浏览功能；此类应用不能设为默认浏览器，且其主要功能必须聚焦于网页浏览。

苹果强调，浏览器引擎是主要的攻击途径，因此仅会授权那些展现出对用户安全有坚定承诺的开发者。该政策目前仅限于日本，尚无更广泛推广的迹象。

---

## 5. C-events，又一个事件循环，更简单、更小巧、更快速、更安全

**原文标题**: C-events, yet another event loop, simpler, smaller, faster, safer

**原文链接**: [https://zelang-dev.github.io/c-events/](https://zelang-dev.github.io/c-events/)

**摘要：**  
c-events 是一款轻量级、高性能、跨平台的事件循环库，专为非阻塞文件 I/O 设计。它为 Linux 的 epoll、macOS 的 kqueue 和 Windows 的 IOCP（通过 wepoll 实现）提供了统一接口，注重简洁性、速度和细粒度控制。与 libuv 或 libevent 等大型库不同，c-events 通过直接暴露底层操作系统机制，避免了不必要的开销，使开发者能够以最小的抽象层级管理事件和回调。

其核心功能包括对读写事件、超时、信号和用户触发事件的支持，所有功能均通过持久化事件注册模型进行管理。该库还集成了类似协程的并发行为、用于卸载 CPU 密集型任务的线程池，以及为 Windows 兼容性设计的伪文件描述符。它包含非阻塞 I/O、TCP 代理和任务调度等实用工具，强调效率与跨平台一致性。

该项目正在积极发展，计划中的改进包括增强 Windows 支持、文件系统监控和扩展线程池功能。c-events 定位为一种补充工具，适用于需要精确控制异步操作、又不愿承受全功能框架臃肿开销的开发者。

---

## 6. 内存子系统优化

**原文标题**: Memory Subsystem Optimizations

**原文链接**: [https://johnnysswlab.com/memory-subsystem-optimizations/](https://johnnysswlab.com/memory-subsystem-optimizations/)

本博客系列包含18篇文章，专注于通过更高效地利用内存子系统来优化软件性能。核心观点是：通过管理数据的存储和访问方式，程序——尤其是处理大型数据集的程序——可以显著提升运行速度。

涵盖的关键优化策略包括：
*   **减少内存访问：** 将数据保留在快速的CPU寄存器中，并尽量减少从较慢的主内存加载数据。
*   **提高数据局部性：** 改变数据访问模式和布局（在类和数据结构中），以增加缓存命中率。
*   **高效管理内存：** 减小数据集大小，使用自定义分配器以改善内存布局，并采用软件预取和大页等技术来降低延迟和TLB未命中。
*   **处理系统交互：** 探讨指令级并行、分支预测和多线程如何与内存性能相互作用。
*   **特定目标优化：** 节省内存带宽以及为低延迟应用优化的技术。
*   **性能测量：** 分析内存子系统性能的工具和方法。

系列文章最后汇集了各种其他优化主题。作者欢迎反馈，并提供软件性能相关的咨询和培训服务。

---

## 7. 蓝牙耳机插孔：手机的关键所在 [视频]

**原文标题**: Bluetooth Headphone Jacking: A Key to Your Phone [video]

**原文链接**: [https://media.ccc.de/v/39c3-bluetooth-headphone-jacking-a-key-to-your-phone](https://media.ccc.de/v/39c3-bluetooth-headphone-jacking-a-key-to-your-phone)

**摘要：**

安全研究员丹尼斯·海因策和弗里德·施泰因梅茨在络达（Airoha）生产的蓝牙音频芯片中发现了三个严重漏洞（CVE-2025-20700、CVE-2025-20701、CVE-2025-20702）。这些芯片广泛应用于索尼、马歇尔、拜雅、捷波朗等品牌的流行头戴式耳机和耳塞中。

这些漏洞存在于一个名为RACE的专有协议中，允许攻击者完全控制耳机——读取和写入其内存与固件。随后，攻击者可利用这种控制，通过受信任的蓝牙连接攻击配对的智能手机，可能窃取认证密钥以伪装成该外围设备。

本次演示旨在提高人们对相关风险的认识，批评部分制造商在威胁通报和安全更新方面沟通不足。同时，它也探讨了更广泛的安全影响：随着智能手机安全性提高，攻击者可能越来越多地将耳机等安全性较低的外围设备作为攻击入口。

研究人员正在发布工具，以帮助用户检查其设备是否受影响，并支持进一步研究。他们还强调了在漏洞披露和与厂商的补丁修复过程中遇到的挑战。

---

## 8. 戴尔版DGX Spark解决了痛点问题。

**原文标题**: Dell's version of the DGX Spark fixes pain points

**原文链接**: [https://www.jeffgeerling.com/blog/2025/dells-version-dgx-spark-fixes-pain-points](https://www.jeffgeerling.com/blog/2025/dells-version-dgx-spark-fixes-pain-points)

戴尔GB10是一款售价超过4000美元的迷你工作站，其核心是英伟达的Grace Blackwell 10“AI超级芯片”。该芯片集成了20核Arm CPU、Blackwell GPU以及128GB共享LPDDR5X内存。虽然作为通用大语言模型应用或台式机性价比不高，但它主要面向英伟达生态中需要将代码部署到高端服务器的开发者。

相比类似的英伟达DGX Spark，其主要改进包括电源指示灯、更大的280W电源供应器，以及可防止降频的优化散热设计。其核心价值在于内置的200GbE ConnectX-7网络端口，支持用于集群部署的高速InfiniBand/RDMA——这项功能在其他设备上添加成本高昂。

作为通用Arm Linux工作站，它在编程和网页浏览方面表现良好，但软件支持可能有限。在AI基准测试中，其提示词处理能力突出，但在整体推理速度方面（对比苹果M3 Ultra或AMD Ryzen AI Max+ 395等系统）仅具备竞争力而非领先。作者指出，虽然在该细分领域性能强大，但其高昂价格及英伟达有限的软件支持周期，使其更偏向专业工具而非大众市场产品。

---

## 9. Datastar超媒体框架的通用Lisp SDK

**原文标题**: Common Lisp SDK for the Datastar Hypermedia Framework

**原文链接**: [https://github.com/fsmunoz/datastar-cl](https://github.com/fsmunoz/datastar-cl)

Datastar Common Lisp SDK 是一个实现了 Datastar 超媒体框架的 Common Lisp 库，严格遵循其架构规范。它利用 CLOS 和 JZON 库，提供了处理服务器发送事件（SSE）和 JSON 解析的核心功能。

该 SDK 支持两种主要的 Web 服务器后端：原生的 **Hunchentoot** 实现和基于 **Clack** 的适配器，后者已通过 Hunchentoot 和 Woo 测试。需注意，当 Clack 与 Woo 结合使用时，由于每个 SSE 连接会占用一个工作线程，因此存在连接数限制；对于需要大量并发连接的应用，推荐使用 Hunchentoot。

该库包含 **zstd 压缩** 等功能，并基于 MIT 许可证分发。实际使用示例可在 `test/` 目录以及配套项目（如 Data SPICE 模拟器和 Horizons JPL API 浏览器）中找到，这些示例展示了 SSE 流式传输和基本集成方法。

---

## 10. Quickemu：快速创建并运行优化的Windows、macOS和Linux虚拟机

**原文标题**: Quickemu: Quickly create and run optimised Windows, macOS and Linux VMs

**原文链接**: [https://github.com/quickemu-project/quickemu](https://github.com/quickemu-project/quickemu)

**Quickemu** 是一款用户友好的 QEMU 封装工具，可简化 Windows、macOS、Linux 及众多其他操作系统的优化虚拟机（VM）的创建与运行。其核心目标是自动化虚拟机设置，仅需用户进行极少配置。

该过程主要涉及两条命令：`quickget` 自动下载所需操作系统镜像并生成虚拟机配置文件，而 `quickemu` 则以硬件优化设置启动虚拟机。它无需提升权限即可运行，允许将虚拟机存储在外置驱动器或主目录中。

主要特性包括支持近 1000 种操作系统版本、集成 SPICE 实现剪贴板共享、VirtIO 与 Samba 文件共享、USB 直通、自动 SSH 端口转发以及可选的 EFI/安全启动。它兼容 Linux 和 macOS 主机。

Quickemu 最初设计用于快速测试 Linux 发行版，现已扩展至全面支持 macOS 版本（从 Sonoma 到 Mojave）、Windows 10/11（包括 TPM 2.0）以及各种 BSD 和冷门操作系统。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 2 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 3 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 4 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 5 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 6 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 7 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 8 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 9 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 10 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 11 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 12 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 13 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 14 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 15 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 16 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 17 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 18 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 19 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 20 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 21 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 22 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 23 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 24 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 25 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 26 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 27 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 28 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 29 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 30 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 31 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 32 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 33 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 34 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 35 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 36 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 37 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 38 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 39 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 40 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 41 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 42 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 43 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 44 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 45 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 46 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 47 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 48 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 49 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 50 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 51 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 52 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 53 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 54 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 55 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 56 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 57 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 58 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 59 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 60 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 61 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 62 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 63 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 64 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 65 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 66 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 67 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 68 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 69 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 70 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 71 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 72 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 73 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 74 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 75 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 76 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 77 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 78 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 79 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 80 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 81 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 82 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 83 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 84 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 85 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 86 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 87 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 88 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 89 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 90 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 91 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 92 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 93 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 94 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 95 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 96 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 97 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 98 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 99 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 100 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 101 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 102 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 103 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 104 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 105 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 106 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 107 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 108 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 109 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 110 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 111 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 112 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 113 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 114 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 115 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 116 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 117 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 118 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 119 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 120 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 121 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 122 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 123 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 124 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 125 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 126 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 127 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 128 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 129 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 130 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 131 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 132 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 133 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 134 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 135 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 136 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 137 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 138 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 139 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 140 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 141 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 142 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 143 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 144 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 145 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 146 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 147 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 148 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 149 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 150 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 151 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 152 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 153 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 154 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 155 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 156 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 157 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 158 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 159 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 160 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 161 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 162 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 163 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 164 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 165 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 166 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 167 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 168 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 169 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 170 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 171 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 172 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 173 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 174 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 175 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 176 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 177 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 178 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 179 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 180 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 181 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 182 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 183 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 184 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 185 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 186 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 187 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 188 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 189 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 190 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 191 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 192 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 193 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 194 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 195 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 196 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 197 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 198 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 199 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 200 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 201 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 202 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 203 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 204 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 205 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 206 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 207 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 208 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 209 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 210 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 211 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 212 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 213 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 214 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 215 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 216 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 217 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 218 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 219 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 220 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 221 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 222 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 223 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 224 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 225 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 226 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 227 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 228 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 229 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 230 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 231 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 232 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 233 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 234 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 235 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 236 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 237 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 238 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 239 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 240 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 241 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 242 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 243 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 244 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 245 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 246 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 247 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 248 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 249 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 250 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 251 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 252 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 253 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 254 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 255 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 256 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 257 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 258 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 259 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 260 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 261 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 262 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 263 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 264 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 265 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 266 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 267 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 268 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 269 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 270 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 271 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 272 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 273 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 274 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 275 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 276 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 277 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 278 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 279 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 280 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 281 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 282 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 283 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 284 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 285 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
