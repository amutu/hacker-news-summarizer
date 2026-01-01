# Hacker News 热门文章摘要 (2026-01-01)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 构建深度学习库

**原文标题**: Build a Deep Learning Library

**原文链接**: [https://zekcrates.quarto.pub/deep-learning-library/](https://zekcrates.quarto.pub/deep-learning-library/)

本文介绍了一个从零开始构建深度学习库的基于项目的指南。读者无需使用现有框架，仅从NumPy起步，逐步构建核心组件，包括自动微分引擎（autograd）和神经网络层模块。最终目标是使用这个自建的库在标准基准测试（如MNIST、简单CNN和简单ResNet）上训练模型。作者指出该指南可免费在线获取，但为支持开发提供了自愿付费选项，并提供了反馈联系方式。

---

## 12. 我的所有德国通票都不见了：工业级规模的欺诈【视频】

**原文标题**: All my Deutschlandtickets gone: Fraud at an industrial scale [video]

**原文链接**: [https://media.ccc.de/v/39c3-all-my-deutschlandtickets-gone-fraud-at-an-industrial-scale](https://media.ccc.de/v/39c3-all-my-deutschlandtickets-gone-fraud-at-an-industrial-scale)

这段来自第39届混沌通信大会的视频演讲，详细揭露了困扰德国全国公共交通订阅票“德国票”的系统性欺诈问题。演讲者指出，该票证快速、分散的推行方式导致系统存在技术漏洞，造成了估计高达数亿欧元的巨额财务损失。

视频揭露了两种主要的欺诈手段。第一种涉及一个欺诈网站（d-ticket.su），该网站利用从一家合法运输公司泄露的私人签名密钥签发非法车票。密钥泄露的源头尚不清楚，且调查人员遇到了不合作的回应。

第二种主要欺诈利用了SEPA直接借记系统。欺诈者使用无效或盗取的银行账户信息大规模购买车票。由于车票在扣款处理前就已签发，这些票可以在Telegram等平台上以折扣价转售。系统通常缺乏撤销此类欺诈车票的机制。

演讲最后将这些问题的根源归结为政治、政策和技术层面的多重失误，并讨论了为保障该票证未来安全所做的努力。

---

## 13. 在PHP中实现HNSW（分层可导航小世界）向量搜索

**原文标题**: Implementing HNSW (Hierarchical Navigable Small World) Vector Search in PHP

**原文链接**: [https://centamori.com/index.php?slug=hierarchical-navigable-small-world-hnsw-php&lang=en](https://centamori.com/index.php?slug=hierarchical-navigable-small-world-hnsw-php&lang=en)

本文阐述了如何在PHP中实现分层可导航小世界（HNSW）算法以实现高效向量搜索。该算法通过构建多层图结构（类似于包含高速公路和地方道路的交通网络），解决了线性搜索（O(N)）的性能瓶颈。

其核心流程采用自上而下的搜索方式：从稀疏的高层级开始快速接近目标，随后逐层深入更密集的层级，直至抵达最稠密的底层（第0层）。在底层通过带优先队列的贪婪搜索寻找k个最近邻，参数`ef`通过限制候选评估数量来平衡搜索速度与精度。

索引采用动态构建方式。新向量被随机分配最高层级（层级越高越稀疏）。算法自上而下搜索插入位置，并在每个层级将新节点与其`M`个最近邻相连接，同时修剪冗余连接以保持效率。

这种结构能以O(log N)时间复杂度实现快速近似最近邻搜索，成为推荐系统和AI检索等现代应用的基石。文中引用的完整PHP实现可见开源项目Vektor。

---

## 14. 构建内部智能体：代码驱动与LLM驱动的工作流对比

**原文标题**: Building an internal agent: Code-driven vs. LLM-driven workflows

**原文链接**: [https://lethain.com/agents-coordinators/](https://lethain.com/agents-coordinators/)

本文探讨了作者构建内部工作流代理的经验，以及从单纯依赖大语言模型转向采用结合大语言模型驱动与代码驱动工作流的混合方法。

最初，作者认为具备工具调用能力的大语言模型可以解决复杂工作流问题。一个实际案例——自动为已合并的GitHub拉取请求添加Slack表情——展示了该概念的潜力，但也暴露了关键缺陷：大语言模型的不确定性有时会导致错误，影响工作流的可靠性。

为此，团队在系统中实现了两种协调器类型的支持：
1.  **大语言模型驱动（`coordinator: llm`）**：默认模式，由处理器通过提示词和授权工具来协调大语言模型的行为。
2.  **代码驱动（`coordinator: script`）**：通过自定义Python脚本控制的配置模式。这些脚本可访问与大语言模型相同的工具和数据，但能确定性执行逻辑，仅在明确需要时才委托大语言模型子代理处理。

由此形成了务实渐进的增强模式：团队可先采用大语言模型驱动工作流以追求简便快捷；当工作流需要更高可靠性、性能或确定性时，则可将其重写为代码驱动工作流——这一转换过程常能借助人工智能轻松完成。作者总结认为，将大语言模型精准用于需要真正智能的任务，同时用代码实现可靠编排，是一种强大且可持续的长期策略。

---

## 15. 芬兰扣押船只及其船员，因关键海底电缆受损

**原文标题**: Finland detains ship and its crew after critical undersea cable damaged

**原文链接**: [https://www.cnn.com/2025/12/31/europe/finland-estonia-undersea-cable-ship-detained-intl](https://www.cnn.com/2025/12/31/europe/finland-estonia-undersea-cable-ship-detained-intl)

芬兰当局扣押了一艘货轮“菲特堡号”及其14名船员，原因是该船于12月31日破坏了赫尔辛基与塔林之间一条重要的海底通信电缆。这艘悬挂圣文森特和格林纳丁斯国旗的船只被发现在芬兰水域抛锚，但损坏发生在爱沙尼亚海域。

船员包括俄罗斯、格鲁吉亚、哈萨克斯坦和阿塞拜疆公民。该船从俄罗斯圣彼得堡出发，在前往以色列途中被芬兰特种部队和海岸警卫队拦截。

芬兰警方正以严重刑事损害和干扰通信为由调查此事。虽然损坏程度尚不明确，但运营商Elisa已检测到故障。另一条由瑞典公司所有的电缆也遭到破坏。爱沙尼亚当局确认，备用连接确保了服务连续性。

此次事件是更广泛模式的一部分：自2023年以来，波罗的海至少有10条海底电缆受损或被切断。斯堪的纳维亚、波罗的海和欧盟官员常怀疑俄罗斯参与此类事件，视其为混合战争策略的一部分，但俄方予以否认。2023年曾发生类似案件，涉及一艘与俄罗斯影子船队有关的船只，后因管辖权问题被芬兰法院驳回。

---

## 16. 热爱你的顾客

**原文标题**: Love your customers

**原文链接**: [https://bcantrill.dtrace.org/2025/12/31/love-your-customers/](https://bcantrill.dtrace.org/2025/12/31/love-your-customers/)

本文中，作者回顾了与一位现就职于博通（VMware的收购方）的前同事的对话。这位同事将博通带来的变革形容为“一股新风”，并声称大多数客户都很满意，甚至开玩笑说一些离开的客户“又爬了回来”。

作者对此强烈反对，并类比了甲骨文收购Sun的交易，指出那场收购充满了对客户的蔑视。他认为这位同事的态度——庆祝客户被锁定、无视AT&T和富达等大公司的诉讼——既粗鄙又可耻。

核心论点是：那些轻视客户、依赖强制而非价值创造的企业，或许能短期获利，但无法持久或创新。相比之下，作者所在的Oxide公司明确将使命建立在关爱客户之上，致力于解决客户问题，努力成为客户和员工都自豪支持的企业。

---

## 17. 索尼PS5 ROM密钥泄露——BootROM代码或使越狱更易实现

**原文标题**: Sony PS5 ROM keys leaked – jailbreaking could be made easier with BootROM codes

**原文链接**: [https://www.tomshardware.com/video-games/playstation/playstation-5-rom-keys-leaked-jailbreaking-could-be-made-easier-with-bootrom-codes](https://www.tomshardware.com/video-games/playstation/playstation-5-rom-keys-leaked-jailbreaking-could-be-made-easier-with-bootrom-codes)

PlayStation 5的BootROM加密密钥已遭泄露，这可能使黑客更容易开发越狱程序。这些密钥永久嵌入在主机的主处理器（APU）中，无法通过软件更新更改。因此，现有PS5主机无法针对未来可能利用这些密钥的攻击进行修补。

尽管此次泄露是严重的安全漏洞，但这并不意味着立即会出现可用的越狱方案。黑客仍需绕过其他安全层。然而，获取这些密钥使得对PS5启动系统进行更深入分析成为可能，最终可能催生自定义固件或修改版操作系统。

索尼解决此问题的选择有限且成本高昂：他们需要制造采用新密钥的修订版硬件，或召回现有主机更换主板——这两种方案都被认为不太可能实现。这一情况让人联想到PlayStation 3和任天堂Switch过去的安全问题。

文章最后引用了论坛评论，希望Valve通过Steam Deck等设备采取的开放态度，能促使其他游戏机制造商减少对硬件的限制。

---

## 18. 展示 HN：瓦里奥合成器——将任意歌曲转换为 Game Boy 版本

**原文标题**: Show HN: Wario Synth – Turn any song into Game Boy version

**原文链接**: [https://www.wario.style](https://www.wario.style)

**Wario Synth** 是一款基于网络的工具，可将任意歌曲转换为仿佛在任天堂 Game Boy 音效芯片上播放的版本。

**工作原理：** 用户搜索歌曲、选择 MIDI 源文件后点击“生成”。工具的“Wario 合成引擎”会分析 MIDI 文件，并通过专门模拟 Game Boy 有限 4 声道音频硬件的浏览器振荡器重新合成音频。所有处理均在用户浏览器本地完成。

**关键信息：**
*   **平台：** 无需安装的网页应用。
*   **核心功能：** 将歌曲转换为让人联想到经典 Game Boy 游戏的芯片音乐风格音频。
*   **iPhone 用户技术提示：** 因苹果自动播放政策，需点击“启用音频”按钮激活声音。
*   **项目性质：** 由 **@b1rdmania** 使用 **Claude Code** 创建的非营利趣味副项目。创作者幽默备注：“请别起诉我。”
*   **可用性：** 代码已在 GitHub 开源。

---

## 19. FFmpeg EXIF中的堆溢出漏洞

**原文标题**: Heap Overflow in FFmpeg EXIF

**原文链接**: [https://bugs.pwno.io/0014](https://bugs.pwno.io/0014)

本文详细介绍了FFmpeg的EXIF处理代码中存在的一个四字节堆缓冲区溢出漏洞，该漏洞影响多种图像格式（PNG、JPEG、WebP、AVIF）。此漏洞于2025年12月被引入并很快被发现。

根本原因在于`av_exif_write`函数对“额外”图像文件目录（IFD）标签的处理。在EXIF序列化过程中，代码假设内部保留的合成标签（ID为`0xFFFC`至`0xFFED`）始终是连续的，并会在写入前从主IFD列表中完全移除（“剥离”）。缓冲区大小（`exif_get_ifd_size`）基于此假设计算，为这些标签分配零大小。

然而，攻击者可以构造一个EXIF载荷，在初始解析阶段（`exif_decode_tag`）将其中一个保留标签（例如`0xFFFB`）直接注入主IFD。这会创建一个非连续的额外IFD条目，剥离过程会将其遗漏。因此，在写入时该标签仍保留在IFD列表中，但其12字节的目录槽位未计入分配的缓冲区大小。当该标签包含一个小的内联载荷（如`SHORT`类型）时，代码会尝试进行4字节零填充写入（`AV_WN32`），导致已分配不足的堆缓冲区末端溢出。

该漏洞在标准解码过程中（`ffmpeg -i <文件>`）可稳定触发，并在披露后迅速报告给FFmpeg安全团队并得到修复。

---

## 20. 简易三维装箱

**原文标题**: Simple 3D Packing

**原文链接**: [https://github.com/Vrroom/psacking](https://github.com/Vrroom/psacking)

本文介绍**Spectral 3D Bin Packing**——一个基于GPU加速算法的Python库，用于高效地将三维物体装入容器。其核心方法源自SIGGRAPH 2023论文，采用**快速傅里叶变换（FFT）运算**实现快速碰撞检测与最优位置搜索，从而达成紧密且无交错的装箱效果。

该库主要特性包括：支持体素数组或STL文件输入的**简洁Python API**、提升性能的**CUDA加速**功能，以及用于可视化的**Blender导出**工具。算法通过体素化物体、运用FFT相关性计算寻找无碰撞位置，并根据邻近度与高度对位置评分，最终按物体体积降序进行贪心式装箱。

该库需在**配备NVIDIA GPU（CUDA 11.0+）的Linux系统**中运行，并依赖FFTW3等组件。需通过源码安装，内置性能基准测试与高质量渲染生成工具。实测案例中成功将348个物体以60.8%密度装入特定托盘。项目基于MIT开源协议发布。

---

## 21. 塔斯马尼亚造船商推出世界最大电动船。

**原文标题**: Worlds largest electric ship launched by Tasmanian boatbuilder

**原文链接**: [https://www.theguardian.com/australia-news/2025/may/02/hull-096-worlds-largest-electric-ship-battery-power-launched](https://www.theguardian.com/australia-news/2025/may/02/hull-096-worlds-largest-electric-ship-battery-power-launched)

塔斯马尼亚造船公司Incat推出了其宣称的全球最大电池动力船舶。这艘130米长的船舶名为"Hull 096"，为南美渡轮运营商Buquebus建造，将运营于阿根廷布宜诺斯艾利斯和乌拉圭之间的航线。

该船标志着可持续航运的重要进展，设计为完全依靠电池动力航行。船上配备超过250吨电池组，提供超过40兆瓦时的储能容量——据称是此前任何船舶电池系统的四倍。该动力系统为八台电动喷水推进器提供能量。

Hull 096可搭载2100名乘客和225辆汽车。Incat称该项目是其迄今最具雄心和最复杂的工程，强调其有望证明大规模低排放海运在常规渡轮航线上的可行性。在全球航运业（约占全球排放量3%）寻求清洁替代方案的背景下，该船的推出恰逢其时。

---

## 22. 如果你在意安全，或许应该移动iPhone的相机应用。

**原文标题**: If you care about security you might want to move the iPhone Camera app

**原文链接**: [https://blog.jgc.org/2025/12/if-you-care-about-security-you-might.html](https://blog.jgc.org/2025/12/if-you-care-about-security-you-might.html)

这篇2025年12月的文章探讨了一个具体的iPhone安全问题。作者指出，轻触相机应用图标（无需完全打开应用）会短暂激活摄像头，并触发绿色隐私指示灯。在滑动屏幕或握持手机时，这种情况很容易意外发生。

作者起初担心可能是其他应用在未经授权的情况下调用摄像头，于是使用苹果的"App隐私报告"进行调查。报告证实，绿色指示灯仅因这些意外触碰而由相机应用自身触发。

建议的解决方案很简单：将相机应用图标移到主屏幕上不那么显眼的位置，远离手指或拇指容易误触的区域。这一操作显著减少了作者的误报情况。

文章最后将此视为一项重要的安全实践。它警告说，如果用户习惯了这类"误报"绿色指示灯等不明原因的现象，可能会忽视真正恶意的摄像头隐私侵犯行为。消除意外触发因素有助于维持更清晰的安全警示信号。

---

## 23. 阿帕网于1983年的这一天标准化了TCP/IP协议。

**原文标题**: Arpanet standardized TCP/IP on this day in 1983

**原文链接**: [https://www.tomshardware.com/networking/arpanet-standardized-tcp-ip-on-this-day-in-1983-43-year-old-standard-set-the-foundations-for-todays-internet](https://www.tomshardware.com/networking/arpanet-standardized-tcp-ip-on-this-day-in-1983-43-year-old-standard-set-the-foundations-for-todays-internet)

1983年1月1日，ARPANET开始从原有的网络控制程序（NCP）向传输控制协议/互联网协议（TCP/IP）进行关键转型。这一转换于1983年中完成，确立了TCP/IP作为全球网络通用标准的地位——到1984年已连接超过100所大学和研究机构，奠定了现代互联网的基础。

由文顿·瑟夫与罗伯特·卡恩设计的TCP/IP解决了其前身的核心局限。与仅适用于ARPANET的NCP不同，TCP/IP专为网络互联而构建，能让异构网络无缝连接。其成功得益于开放、厂商中立且可扩展的设计理念，这与当时IBM的SNA、施乐的XNS、DEC的DECnet等专有协议形成鲜明对比。

TCP/IP的关键技术创新——如拥塞控制、端到端可靠性和分层架构——为HTTP、DNS等未来重要协议的诞生创造了条件。它能运行于从个人电脑到超级计算机的任何硬件，成为统一网络格局的通用基础。文章最终指出，TCP/IP的成功并非因其在所有技术层面都是“最优”，而是因其最具开放性、可扩展性和普适性，从而成为互联网不可或缺的支柱。

---

## 24. 2025：大语言模型之年

**原文标题**: 2025: The Year in LLMs

**原文链接**: [https://simonwillison.net/2025/Dec/31/the-year-in-llms/](https://simonwillison.net/2025/Dec/31/the-year-in-llms/)

2025年是大型语言模型的关键一年，其标志是“推理”模型的广泛普及。这类模型将复杂问题分解为多个步骤，使得AI智能体——即通过多步骤循环使用工具的系统——首次真正具备了实用价值。关键突破在于编码智能体的兴起，以Claude Code的发布为代表，它使大型语言模型能够自主编写、执行和调试代码。这极大地推动了大型语言模型在命令行中的广泛应用，并催生了每月200美元的高端订阅服务。

中国开源模型，如DeepSeek和GLM-4.7，已在全球范围内具备竞争力，挑战了西方实验室的主导地位。智能体还展现出处理耗时数小时的长周期复杂任务的新能力。

与此同时，风险也在增加：用户常在缺乏安全防护的“YOLO”模式下运行智能体，引发了关于AI安全领域“偏差常态化”的警告。总体而言，2025年标志着大型语言模型从对话工具转变为能够处理复杂工作的强大自主系统。

---

## 25. 儿童与螺旋时间

**原文标题**: Children and Helical Time

**原文链接**: [https://moultano.wordpress.com/2025/12/30/children-and-helical-time/](https://moultano.wordpress.com/2025/12/30/children-and-helical-time/)

本文探讨了我们对时间的感知如何随年龄变化：童年时感觉缓慢而鲜活，随着年龄增长却加速流逝。文章指出，由于童年占据了我们主观“对数式”人生体验的一半，我们应当珍视童年本身的价值，而非虚度孩子的时光。

对于成年人，作者认为虽然寻求新体验能减缓时间流逝感，但养育子女能带来更深层的更新。孩子重新带来了“第一次”——既有我们已遗忘的，也有我们能为他们重新创造的——并让传统焕发新生，使节日重获意义。通过孩子的眼睛，成年人能重新连接惊奇与童趣。

最终，文章提出养育子女能带来深刻的目标感与延续性。它让成年人得以传递经验、建立持久传统、实现某种形式的传承，将线性的时间流逝转化为有意义的螺旋循环——在这种循环中，人生的意义在于为他人创造童年。

---

## 26. Rust--：没有借用检查器的Rust

**原文标题**: Rust--: Rust without the borrow checker

**原文链接**: [https://github.com/buyukakyuz/rustmm](https://github.com/buyukakyuz/rustmm)

**Rust--** 是 Rust 编译器的一个修改版本，它禁用了借用检查器，允许那些通常违反 Rust 严格所有权和借用规则的代码通过编译并运行。

**关键点：**
*   **目的：** 它绕过了 Rust 的核心安全保证（这些保证可防止数据竞争、释放后使用和其他内存错误），让“非法”代码得以编译。
*   **使用场景：** 主要用于实验、学习或原型设计，不受借用检查器的约束。
*   **工作原理：** 编译器经过修补，跳过了借用检查分析，无论是否存在所有权违规，都将所有代码视为有效。
*   **示例：** 文章展示了并排比较，其中标准 Rust 会报错的情况（如移动一个值后使用它，或创建多个可变引用）在 Rust-- 中却能编译和运行，尽管这可能导致未定义行为。
*   **可用性：** 提供了适用于 macOS 和 Linux 的预构建二进制文件，并附有从源代码构建的说明。
*   **许可证：** 它保留了 Rust 的双重许可（Apache 2.0 和 MIT）。

**重要提示：** Rust-- 移除了 Rust 的内存安全保证。编译通过的代码可能包含严重错误，如数据竞争、悬垂指针或内存损坏，因此不应用于生产软件。

---

## 27. 2025年信件

**原文标题**: 2025 Letter

**原文链接**: [https://danwang.co/2025-letter/](https://danwang.co/2025-letter/)

这份2025年度回顾信对比了硅谷与中国共产党两种文化，指出两者都强大、严肃且缺乏幽默感。作者移居斯坦福后观察到，如今的湾区已被人工智能和强化的政治角色主导，形成了一种怪异而紧张的氛围。

文章赞扬了硅谷的核心优点：其精英管理制度、对移民与新思想的开放态度、前瞻性的活力以及强大的社区建设能力。它创造了新产品与生活方式，为年轻技术人才提供了无与伦比的机遇。

然而，作者也批评了该地区的显著缺陷：狭隘封闭的思维模式忽视更广阔的世界，文化意识与投入的缺失，以及排斥异见的羊群心态。这体现在其对人工智能单一且常带末世论的聚焦上——这种狂热源于相信该技术能带来“决定性战略优势”并重塑全球权力格局。

最终，这封信将硅谷描绘成一个充满惊人创新与令人不安的短视之地：它向人才敞开大门，却固守狭隘视角；它不懈地构建未来，却难以在更广阔的语境中理解自身。

---

## 28. Meta让诈骗广告更难被发现，而非将其移除。

**原文标题**: Meta made scam ads harder to find instead of removing them

**原文链接**: [https://sherwood.news/tech/rather-than-fully-cracking-down-on-scam-ads-meta-worked-to-make-them-harder/](https://sherwood.news/tech/rather-than-fully-cracking-down-on-scam-ads-meta-worked-to-make-them-harder/)

根据路透社查阅的内部文件显示，Meta采取了一项策略，使其平台上的诈骗广告更难被监管机构、记者和调查人员发现，而非全面清除这些广告。这一做法最初是为应对日本监管机构的压力而制定的，当时日本正考虑要求对所有广告主进行普遍验证——Meta估计此举将耗费20亿美元，并导致收入减少近5%。

该策略通过清理搜索结果以降低欺诈广告的“可发现性”，被认为效果显著，因此Meta将其纳入了“全球通用应对手册”，用于在美国、欧洲、印度、澳大利亚、巴西和泰国等其他主要市场应对监管审查。

路透社早前报道指出，Meta内部曾预测其2024年约10%的收入将来自与诈骗及违禁商品相关的广告，但该公司后来称这一估算过于宽泛。报道还称，这一比例在中国市场达到该数字的两倍。核心问题在于，Meta优先考虑降低其诈骗广告问题的可见性，而非实施成本更高、更系统化的解决方案来从根本上解决问题。

---

## 29. Easel一周年 在Clojure中打造个人IDE的一年历程

**原文标题**: Easel Turns One One year of building my own IDE in Clojure

**原文链接**: [https://blog.phronemophobic.com/easel-one-year.html](https://blog.phronemophobic.com/easel-one-year.html)

Easel是一款基于Clojure的集成开发环境，已开发一年。其核心理念是构建一个模块化、类库式的平台，让文本编辑、终端、数据检查等独立工具能在单一窗口内自由排布并共享数据。

该项目旨在融合运行时Clojure可扩展性、强大的REPL驱动开发以及数据导向工具链等特性——这些功能在其他IDE中虽零散存在却从未被整合。项目基于JVM和Clojure构建，以解决性能与并发等底层难题，为此不惜承担开发全新UI库的代价。

作者强调了社会性动机，指出现代软件缺乏NeXTSTEP或Emacs这类平台所具有的集成化创意工具精神，并致力于构建可信赖的开源工具。

经过一年的内部实践，Easel已完成约80%的开发，Clobber文本编辑器与各类数据工具等核心组件均已就绪。近期规划将着重改进错误提示、集成FlowStorm调试器，并设计扩展系统。

该项目已开源但尚未达到通用阶段。感兴趣者可通过Slack、GitHub或Bluesky关注项目进展。

---

## 30. 我取消了出书协议。

**原文标题**: I canceled my book deal

**原文链接**: [https://austinhenley.com/blog/canceledbookdeal.html](https://austinhenley.com/blog/canceledbookdeal.html)

2023年，奥斯汀·Z·亨利与一家大型出版社签约，计划撰写一本以经典、独立项目教程为特色的编程书籍。尽管最初受到出版社的框架和发行渠道吸引，但他很快发现了显著的弊端。出版社施压要求简化内容、淡化他的个人风格，并强行加入人工智能主题，这与书籍的核心理念相冲突。财务条款也颇为苛刻——预付金微薄，版税低廉，且编辑反馈往往流于形式，更关注风格而非实质内容。

由于工作、生活事务以及创作过程中的乐趣缺失，亨利的交稿期限一再推迟，他逐渐感到幻灭。同时，他也担忧像ChatGPT这样的人工智能工具可能会使这类教程书籍过时。在请求暂停合作后，他最终终止了合同，重新获得了作品的完整权利。

尽管取消了出版协议，亨利仍然坚持这本书的创作理念。为回应读者的兴趣，他选择自行出版，开放电子书预购并计划逐步发布章节，随后再推出印刷版本。

---

