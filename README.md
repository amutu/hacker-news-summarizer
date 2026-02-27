# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-27.md)

*最后自动更新时间: 2026-02-27 20:38:27*
## 1. 机器人灵巧度的僵局

**原文标题**: The Robotic Dexterity Deadlock

**原文链接**: [https://www.origami-robotics.com/blog/dexterity-deadlocks.html](https://www.origami-robotics.com/blog/dexterity-deadlocks.html)

**《机器人灵巧性僵局》摘要**

文章指出，机器人领域正陷入一种“灵巧性僵局”：尽管人工智能和软件方面取得了进展，但机器人手的基础硬件几十年来并未出现变革性进步。其核心问题在于对**“位置控制伺服范式”**的依赖。

在这一标准模型中，机器人关节被指令移动到精确角度。这在结构化环境（如工厂装配线）中执行刚性的、预先规划的动作时效果良好，但面对不确定性或与柔性物体交互时就会失败。作者以将钥匙插入锁孔这一简单任务为例：位置控制的机器人会因微小的错位而困难重重，而人类却能利用力反馈和自适应的手指压力轻松完成。

这一僵局是一种循环依赖：
1.  **硬件限制**：机器人手由位置控制伺服器构成，其本质上是刚性的，缺乏精细的力控制。
2.  **软件变通**：研究人员通过开发极其复杂的软件和人工智能来弥补，试图规划完美路径并建模世界，以规避硬件的局限。
3.  **创新停滞**：这种庞大的软件投入反而验证了现有硬件的可行性，因此制造商缺乏动力去投资研发全新的、传感器丰富的、柔顺的驱动技术。

文章总结道，打破这一僵局需要将焦点从纯粹的位置控制转向**“力敏感操控”**。灵巧性的下一个突破很可能来自新型硬件——例如具有内置力传感和柔顺性的驱动器——这类硬件能让机器人像人类一样感知并物理适应环境，从而简化软件方面的挑战。

---

## 2. JavaScript可以实现更好的流式API。

**原文标题**: A better streams API is possible for JavaScript

**原文链接**: [https://blog.cloudflare.com/a-better-web-streams-api/](https://blog.cloudflare.com/a-better-web-streams-api/)

本文批评了WHATWG流API（Web流），认为由于在设计时尚未出现异步迭代等现代JavaScript特性，该API存在根本性的可用性和性能缺陷。作者基于在Node.js和Cloudflare Workers中的实践经验，指出了几个核心问题：

*   **过度繁琐**：常见的操作（如读取流至结束）需要冗长的样板代码（获取读取器、手动锁定及`{value, done}`协议），而异步迭代现在能以更优雅的方式处理。
*   **易错的锁定机制**：手动锁定模型（`getReader()`、`releaseLock()`）容易误用，若未正确释放锁，可能导致流被永久锁定。
*   **未充分利用的BYOB复杂性**：自带缓冲区（BYOB）API本意是为零拷贝性能优化而设计，但由于其复杂性、易错的缓冲区分离语义以及与异步迭代的不兼容性，实际使用率很低。
*   **建议性背压机制**：背压信号系统（通过`desiredSize`）仅为建议性而非强制，允许生产者忽略它并导致内存无限增长，这在`tee()`操作中尤为明显。
*   **性能开销**：规范在关键路径上依赖Promise，产生了显著开销，限制了高吞吐量场景下的优化空间。

文章总结认为，这些问题已深植于API的设计中，并提出围绕现代JavaScript原语构建更好的替代方案是可行的，基准测试已显示其性能可提升2倍至120倍。

---

## 3. 编写SDF字体指南

**原文标题**: Writing a Guide to SDF Fonts

**原文链接**: [https://www.redblobgames.com/blog/2026-02-26-writing-a-guide-to-sdf-fonts/](https://www.redblobgames.com/blog/2026-02-26-writing-a-guide-to-sdf-fonts/)

本文详细阐述了作者创作关于有向距离场（SDF）字体权威指南的历程，这是一种能高效渲染文字并实现轮廓与阴影等效果的技术。作者最初于2024年为游戏和地图项目探索SDF时，撰写了一些不完整的笔记，这些内容意外地在2025年搜索排名中迅速上升。

受此激励，作者决定打造更优质的资源，回顾了现有成果——包括一篇未完成的概述和22篇日记式文章——并尝试了msdfgen等多个库。由于项目规模过大，经历了多次重新设计。作者首先将重点聚焦于msdfgen，绘制了示意图，并对图集大小等参数进行了大量测试，但这与以往工作显得重复。

随后的调整包括编写涵盖CPU与GPU实现的“操作指南”，但这又显得过于技术化和小众。最终成功的方案（第四次重设计）确定为“概念解析”页面，阐述期望的视觉效果、SDF实现这些效果的原理及实际应用，而将具体实现细节移至其他部分。经过一年的迭代打磨，作者完成了一份精炼的概念性指南，足以成为顶级的搜索结果。

---

## 4. OpenAI以7300亿美元投前估值筹集1100亿美元资金。

**原文标题**: OpenAI raises $110B on $730B pre-money valuation

**原文链接**: [https://techcrunch.com/2026/02/27/openai-raises-110b-in-one-of-the-largest-private-funding-rounds-in-history/](https://techcrunch.com/2026/02/27/openai-raises-110b-in-one-of-the-largest-private-funding-rounds-in-history/)

OpenAI在一轮历史性的私人融资中筹集了1100亿美元，其中亚马逊投资500亿美元，英伟达和软银各投资300亿美元。此轮融资使公司估值在投资前达到7300亿美元。

交易的关键方面包括重要的基础设施合作伙伴关系。OpenAI将与亚马逊合作在AWS上开发新的“有状态运行时环境”，并将现有计算承诺扩大1000亿美元。亚马逊的部分投资可能取决于OpenAI实现通用人工智能或进行首次公开募股。与英伟达的合作中，OpenAI承诺使用大量专用计算能力进行人工智能训练和推理。

公司表示此轮融资仍对更多投资者开放，并将这笔资金视为将前沿人工智能从研究扩展到全球日常应用的关键。此前，OpenAI在2025年3月筹集了400亿美元，创下了当时最大的私人融资纪录。

---

## 5. 让我们来讨论沙盒隔离

**原文标题**: Let's discuss sandbox isolation

**原文链接**: [https://www.shayon.dev/post/2026/52/lets-discuss-sandbox-isolation/](https://www.shayon.dev/post/2026/52/lets-discuss-sandbox-isolation/)

本文阐述了运行不可信代码所需的“隔离”并非单一概念，而是一个具有不同安全属性的边界谱系。文章指出，共享的Linux内核及其数百万行代码构成了主要攻击面。

标准Docker容器使用**命名空间**（可见性隔离墙）和**cgroups**（资源限制），但它们共享宿主机内核。**Seccomp-BPF**虽能过滤系统调用，却仍将允许的调用暴露给共享内核，仅能缩减而非消除攻击面。

相比之下，**gVisor**通过采用Go编写的用户态内核（Sentry）实现了质变。它拦截应用程序系统调用，仅向宿主机发起极少量（约70个）系统调用，以性能损耗为代价大幅缩减了内核暴露面。

最强隔离来自**微虚拟机**（如Firecracker），其通过硬件虚拟化为每个工作负载提供专用客户内核。攻击者需攻破虚拟机监控程序（超微管理器）才能实现逃逸——这个目标比完整的Linux内核小得多且罕见得多。

核心结论是：容器、gVisor和微虚拟机各自代表了本质上不同的安全边界，而非同一事物的强化版本，在安全性、性能与复杂性之间存在着明确的权衡关系。

---

## 6. 《海伯利安》作者丹·西蒙斯去世

**原文标题**: Dan Simmons, author of Hyperion, has died

**原文链接**: [https://www.dignitymemorial.com/obituaries/longmont-co/daniel-simmons-12758871](https://www.dignitymemorial.com/obituaries/longmont-co/daniel-simmons-12758871)

**文章摘要：《海伯利安》作者丹·西蒙斯去世**

广受赞誉的获奖作家丹·西蒙斯去世，享年74岁。他最为人熟知的作品是科幻系列《海伯利安诗篇》。

讣告证实了他的离世，并指出他于近期在科罗拉多州朗蒙特家中安详去世，具体日期未公开。他的妻子凯伦·西蒙斯尚在人世。

西蒙斯因1989年开创性的小说《海伯利安》及其续作而享誉全球，这些作品将宏大科幻与文学典故融为一体。然而，他的写作生涯涉猎极为广泛，作品横跨多个类型，包括恐怖小说（如《腐肉安慰》）、惊悚小说（如《骗子工厂》）、历史小说和黑色悬疑小说。他职业生涯中赢得了众多著名奖项，如雨果奖、世界奇幻奖、布拉姆·斯托克奖和轨迹奖。

文章不仅缅怀他是一位多产且全能的作家，也铭记他是一位专注的教师和深受爱戴的家人。文中强调，在其首个短篇小说取得成功并转向全职写作之前，他早期曾从事教育工作。追悼会的安排计划将在稍后公布。

---

## 7. 离开谷歌让我的生活变得更好了。

**原文标题**: Leaving Google has actively improved my life

**原文链接**: [https://pseudosingleton.com/leaving-google-improved-my-life/](https://pseudosingleton.com/leaving-google-improved-my-life/)

本文详述了作者决定离开谷歌生态系统的原因，并称这一决定“切实改善”了他们的生活。转折点在于2026年初生成式人工智能被整合进Gmail，而此前多年谷歌搜索质量持续下降。

作者从Gmail转向Proton Mail（并推荐了Fastmail等替代方案），发现收件箱更整洁，且有机会实践更健康的数字习惯。他们还放弃了谷歌搜索，改用Brave和DuckDuckGo等替代搜索引擎，认为这些工具能满足大多数搜索需求，且离开谷歌让网络探索变得更有趣、更自主。

作者认为人们留在谷歌生态中是由于习惯和“暗黑模式”——例如谷歌付费成为iOS和Chrome等主流平台的默认搜索引擎。他们质疑优质网络服务必须免费的观点，指出即便是免费的谷歌替代品也更为优越，而用户实则付出了隐私代价。

作者承认完全抵制谷歌存在困难，并以YouTube因其垄断地位而成为不可避免的例外，但也对新兴替代平台抱有希望。总体而言，本文既批判了谷歌的商业策略，也倡导用户主动寻求以隐私保护为核心、非垄断式的网络服务。

---

## 8. 在栈上分配

**原文标题**: Allocating on the Stack

**原文链接**: [https://go.dev/blog/allocation-optimizations](https://go.dev/blog/allocation-optimizations)

这篇来自 Go 博客的文章详细介绍了近期 Go 版本（1.24–1.26）中的编译器优化，通过将更多分配移至栈上来减少堆分配，从而提升运行速度并减轻垃圾收集器的负担。

核心问题在于动态增长的切片（例如通过 `append`）在其“启动”阶段，由于底层存储的反复重新分配，常常导致低效的堆分配。编译器现在通过以下几种方式对此进行优化：

1.  **Go 1.24：** 对于常量大小的 `make` 分配（例如 `make([]T, 0, 10)`），如果切片未逃逸出函数，则可在栈上分配。
2.  **Go 1.25：** 对于变长大小的 `make` 调用，编译器会自动提供一个小的（32 字节）栈分配底层存储。如果请求的容量适合，就使用栈；否则回退到堆。
3.  **Go 1.26：** 优化扩展到 `append` 操作中的首次分配，初始时使用小的栈缓冲区。对于确实逃逸（被返回）的切片，编译器会插入 `runtime.move2heap` 调用。这仅在返回点高效地将栈支持的切片复制到堆上，避免了中间的堆分配。

结果是，许多小型、短生命周期的切片现在只需零次或一次堆分配，而非多次，从而自动提升了性能和内存效率。文章指出，通过合理的大小估计进行手动优化仍然有益，但编译器现已能处理许多常见情况。

---

## 9. Kyber（YC W23）正在招聘企业客户经理

**原文标题**: Kyber (YC W23) Is Hiring an Enterprise Account Executive

**原文链接**: [https://www.ycombinator.com/companies/kyber/jobs/59yPaCs-enterprise-account-executive-ae](https://www.ycombinator.com/companies/kyber/jobs/59yPaCs-enterprise-account-executive-ae)

Kyber（YC W23），一家面向企业的AI原生文档平台，正在纽约招聘企业客户经理。该职位总薪酬（OTE）为22万至26万美元，另加股权。

公司软件为保险等行业简化监管文档工作流程，显著缩短起草时间和周期。Kyber已实现快速增长，包括收入增长30倍、实现盈利，并与多家保险公司签订重大合同。

客户经理将负责完整销售周期——从外部潜在客户开发到签订多年期企业协议——并代表Kyber出席行业活动。理想候选人需拥有3年以上销售经验，具备超额完成指标的可靠记录、出色的沟通技巧，以及不懈努力、善于应变的工作态度。

Kyber强调客户至上、精益求精、高标准自律等核心价值观。福利包括有竞争力的薪资、股票期权和全额医疗保险。

为在申请过程中脱颖而出，建议候选人邀请前同事直接向创始人发送附有简短推荐的推荐信。

---

## 10. 我们构建了安全、可扩展的智能体沙箱基础设施。

**原文标题**: We Built Secure, Scalable Agent Sandbox Infrastructure

**原文链接**: [https://browser-use.com/posts/two-ways-to-sandbox-agents](https://browser-use.com/posts/two-ways-to-sandbox-agents)

浏览器使用从在共享后端运行网络代理转变为采用安全、可扩展的沙盒架构。最初，他们仅隔离高风险工具（如代码执行），而代理仍在自身基础设施上运行（模式1）。随后发展为**隔离整个代理**（模式2），使其可随时销毁且不携带任何密钥。

其核心是一个**沙盒**（单一容器镜像），在生产环境中作为**Unikraft微虚拟机运行**以实现快速启动和零资源伸缩，在本地则作为Docker容器用于开发和测试。沙盒仅接收三个环境变量，读取后即从内存中删除，并以降权权限运行。

所有外部访问均由**无状态控制平面**协调，该平面保管所有凭证并充当安全代理。沙盒无法直接调用大语言模型或存储服务；每个请求都经过控制平面，由其管理对话历史、计费，并为S3文件操作提供限时预签名URL。

这种分层设计使各层能独立扩展：沙盒通过Unikraft调度实现扩展，控制平面通过水平扩展实现扩展。代价是增加了一次网络跳转，但相较于大语言模型的响应时间，延迟可忽略不计。最终构建出一个安全系统，其中代理**不包含任何有价值的密钥或可被攻击的状态**。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 2 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 3 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 4 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 5 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 6 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 7 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 8 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 9 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 10 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 11 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 12 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 13 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 14 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 15 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 16 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 17 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 18 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 19 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 20 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 21 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 22 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 23 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 24 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 25 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 26 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 27 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 28 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 29 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 30 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 31 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 32 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 33 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 34 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 35 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 36 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 37 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 38 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 39 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 40 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 41 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 42 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 43 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 44 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 45 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 46 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 47 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 48 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 49 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 50 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 51 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 52 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 53 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 54 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 55 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 56 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 57 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 58 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 59 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 60 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 61 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 62 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 63 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 64 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 65 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 66 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 67 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 68 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 69 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 70 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 71 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 72 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 73 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 74 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 75 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 76 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 77 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 78 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 79 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 80 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 81 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 82 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 83 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 84 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 85 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 86 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 87 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 88 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 89 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 90 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 91 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 92 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 93 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 94 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 95 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 96 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 97 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 98 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 99 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 100 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 101 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 102 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 103 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 104 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 105 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 106 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 107 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 108 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 109 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 110 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 111 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 112 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 113 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 114 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 115 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 116 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 117 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 118 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 119 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 120 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 121 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 122 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 123 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 124 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 125 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 126 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 127 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 128 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 129 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 130 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 131 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 132 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 133 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 134 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 135 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 136 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 137 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 138 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 139 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 140 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 141 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 142 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 143 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 144 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 145 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 146 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 147 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 148 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 149 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 150 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 151 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 152 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 153 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 154 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 155 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 156 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 157 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 158 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 159 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 160 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 161 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 162 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 163 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 164 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 165 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 166 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 167 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 168 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 169 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 170 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 171 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 172 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 173 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 174 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 175 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 176 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 177 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 178 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 179 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 180 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 181 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 182 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 183 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 184 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 185 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 186 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 187 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 188 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 189 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 190 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 191 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 192 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 193 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 194 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 195 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 196 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 197 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 198 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 199 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 200 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 201 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 202 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 203 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 204 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 205 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 206 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 207 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 208 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 209 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 210 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 211 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 212 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 213 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 214 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 215 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 216 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 217 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 218 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 219 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 220 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 221 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 222 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 223 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 224 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 225 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 226 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 227 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 228 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 229 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 230 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 231 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 232 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 233 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 234 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 235 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 236 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 237 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 238 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 239 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 240 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 241 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 242 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 243 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 244 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 245 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 246 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 247 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 248 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 249 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 250 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 251 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 252 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 253 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 254 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 255 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 256 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 257 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 258 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 259 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 260 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 261 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 262 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 263 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 264 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 265 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 266 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 267 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 268 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 269 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 270 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 271 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 272 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 273 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 274 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 275 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 276 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 277 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 278 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 279 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 280 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 281 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 282 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 283 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 284 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 285 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 286 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 287 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 288 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 289 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 290 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 291 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 292 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 293 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 294 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 295 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 296 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 297 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 298 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 299 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 300 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 301 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 302 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 303 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 304 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 305 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 306 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 307 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 308 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 309 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 310 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 311 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 312 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 313 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 314 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 315 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 316 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 317 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 318 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 319 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 320 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 321 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 322 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 323 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 324 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 325 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 326 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 327 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 328 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 329 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 330 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 331 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 332 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 333 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 334 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 335 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 336 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 337 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 338 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 339 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 340 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 341 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 342 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
