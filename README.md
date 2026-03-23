# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-23.md)

*最后自动更新时间: 2026-03-23 20:36:26*
## 1. 对一项旧研究思路的自主研究

**原文标题**: Autoresearch on an old research idea

**原文链接**: [https://ykumar.me/blog/eclip-autoresearch/](https://ykumar.me/blog/eclip-autoresearch/)

作者利用LLM智能体（Claude Code）基于Karpathy的“自动研究”概念，对一个旧研究项目（eCLIP）进行了自主改进实验。该智能体在受限循环中运行：读取指令、修改训练脚本、运行短期实验，并根据评估指标（平均排名）提交或回滚更改。

该项目采用了新数据集（Ukiyo-eVG）和带有热图处理器的类CLIP模型。在42次实验中，智能体成功将验证集平均排名降低了54%（从344.68降至157.43）。主要改进来自修复一个错误（放宽温度参数限制）和系统性的超参数调优。然而，当尝试更复杂的架构调整时，其成功率下降，且有时难以适应沙箱环境的限制。

实验证明，LLM智能体能有效自动化结构化的迭代优化任务（如错误修复和超参数调优），但在开放性的创造性问题解决（“未知的未知”）方面仍存在困难。作者总结认为，该方法在定义明确的搜索空间中是一种强大工具，但对于更广泛的研究挑战仍需人类监督。

---

## 2. iPhone 17 Pro演示运行4000亿参数大语言模型

**原文标题**: iPhone 17 Pro Demonstrated Running a 400B LLM

**原文链接**: [https://twitter.com/anemll/status/2035901335984611412](https://twitter.com/anemll/status/2035901335984611412)

**摘要：iPhone 17 Pro 据称可运行 4000 亿参数大语言模型**

文章标题称，iPhone 17 Pro 已展示能够运行一个 4000 亿参数的大语言模型（LLM）。然而，实际提供的内容并非文章本身。

相反，该文本是社交媒体平台 X（原 Twitter）的一条标准错误提示，说明用户浏览器中 JavaScript 已被禁用，必须启用才能查看内容。该提示包含指向平台帮助中心、服务条款的链接，以及一份 2026 年的版权声明。

因此，根据所给信息，并无文章内容可供总结。关键要点是：标题中的说法无法从提供的文本中得到验证，因为该文本仅包含一条技术性访问错误提示，并未涉及所声称的演示或任何关于 iPhone 17 Pro 设备端 AI 能力的细节。

---

## 3. Local Stack 已将其 GitHub 仓库归档，并要求账户才能运行。

**原文标题**: Local Stack Archived their GitHub repo and requires an account to run

**原文链接**: [https://github.com/localstack/localstack](https://github.com/localstack/localstack)

LocalStack已将其GitHub仓库归档，并将开发工作整合至单一的Docker镜像中，以减少碎片化并集中资源。该项目现要求用户创建账户，为非商业用途提供功能等效的免费Hobby方案。

LocalStack是一款在本地Docker容器中运行的云服务模拟器，开发者无需连接真实云端即可测试AWS应用（如Lambda、S3和DynamoDB）。它可通过Homebrew、直接二进制下载或使用`localstack-cli`通过PyPI安装。

启动时，用户运行`localstack start -d`命令，随后可通过`awslocal` CLI与模拟的AWS服务交互。项目公告鼓励社区继续提交错误报告和功能请求，并加入Slack社区获取支持。该项目仍遵循Apache 2.0许可证。

---

## 4. Trivy再遭攻击：GitHub Actions标签大规模泄露机密信息

**原文标题**: Trivy under attack again: Widespread GitHub Actions tag compromise secrets

**原文链接**: [https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise](https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise)

**摘要：**

一种新的供应链攻击已危及流行漏洞扫描工具**Trivy**的多个版本。恶意Docker镜像针对版本**0.69.4、0.69.5和0.69.6**被上传至Docker Hub，但关键的是，这些版本**从未在GitHub上正式发布**，表明这是一次未经授权的推送。

受感染的镜像包含**信息窃取恶意软件**，旨在从受影响系统中收集敏感数据。这种攻击方式尤其危险，因为它利用了CI/CD流水线（如GitHub Actions）中对广泛使用的安全工具的信任，可能导致密钥和凭据被盗。

该事件突显了一个关键的供应链风险：攻击者可能劫持或伪造官方容器镜像。建议用户验证所拉取的任何Docker镜像是否对应项目主仓库（如GitHub）中官方标记的版本，并对自动拉取最新容器标签的工作流程保持警惕。

---

## 5. 查找所有正则表达式匹配始终是O(n²)复杂度。

**原文标题**: Finding all regex matches has always been O(n²)

**原文链接**: [https://iev.ee/blog/the-quadratic-problem-nobody-fixed/](https://iev.ee/blog/the-quadratic-problem-nobody-fixed/)

本文揭示了一个长期存在却常被忽视的正则表达式引擎性能问题：即使在设计用于避免回溯的引擎中，在字符串中查找所有匹配可能耗时O(n²)而非线性时间。这是因为传统引擎会从每个字符位置重启搜索，导致重复扫描相同输入（例如对由`b`组成的字符串使用`.*a|b`这类模式时）。

虽然Aho-Corasick算法（1975年）已针对固定字符串解决此问题，且Hyperscan通过"最早匹配"语义实现线性时间正则匹配（但输出结果不同），但作者开发的RE#引擎宣称首次在不改变输出的前提下，为标准的最左最长匹配语义解决了该问题。

RE#采用双扫描算法：反向扫描标记潜在匹配起点，正向扫描解析每个标记处的最长匹配，从而避免O(n²)的重启开销。该引擎还提供可选的"强化模式"，即使面对对抗性模式也能保证线性时间，但会带来恒定系数的性能损耗，因此建议仅对不可信输入启用此功能。

文章指出，回溯引擎（仍是多数语言的默认引擎）存在更严重的指数级灾难性回溯问题，而本文讨论的平方级复杂度问题甚至会影响"安全"的线性时间引擎在查找所有匹配时的性能。基准测试显示，得益于向量化指令实现的跳跃加速等优化，RE#在特定工作负载下可与Rust的regex库、Aho-Corasick等引擎竞争甚至超越其性能。

---

## 6. 人工智能风险“超常”科学

**原文标题**: AI Risks "Hypernormal" Science

**原文链接**: [https://www.asimov.press/p/ai-science](https://www.asimov.press/p/ai-science)

本文指出，虽然人工智能在现有科学框架内的预测任务上表现出色，却极不擅长催生推动真正科学进步的范式变革。文章警示未来可能出现“超常规科学”的困境——人工智能虽能在当前模型内实现日益精准的预测，代价却是丧失提出根本性新问题的能力。

文章援引历史案例（如爱因斯坦相对论取代以太理论、贝克设计的伦敦地铁示意图）阐明：范式变革需要跳出既定逻辑，创建更简洁、更具统摄力且蕴含未知可能性的新原理。然而当前人工智能的训练目标是基于现有数据最小化误差，这使其思维被禁锢在训练集的概念范畴内。即便是那些能发现新材料或蛋白质的先进系统，本质上也只是在既有“认知地图”上填补空白。

核心风险在于：当“AI科学家”将更多研究流程自动化后，它们会以是否符合现有科学体系为标准评估新思想，从而天然过滤掉颠覆性方案。文章最后强调，为避免这种短视，我们必须有意识地设计不仅能预测、更能协助构建新概念体系的人工智能——打造能够孕育真正科学革命的“远见机器”。

---

## 7. 美国与道达尔能源达成"近10亿美元"协议，终止海上风电项目

**原文标题**: US and TotalEnergies reach 'nearly $1B' deal to end offshore wind projects

**原文链接**: [https://www.lemonde.fr/en/international/article/2026/03/23/us-and-totalenergies-reach-nearly-1-billion-deal-to-end-offshore-wind-projects_6751739_4.html](https://www.lemonde.fr/en/international/article/2026/03/23/us-and-totalenergies-reach-nearly-1-billion-deal-to-end-offshore-wind-projects_6751739_4.html)

美国与道达尔能源公司达成协议，终止这家法国能源公司在美的海上风电项目，并将近10亿美元的租赁保证金转向化石燃料生产。

2026年3月23日，美国内政部长道格·伯古姆宣布，该协议终止了道达尔能源在北卡罗来纳州和纽约州沿海的两座总装机容量达四吉瓦的大型风电场开发计划。公司首席执行官潘彦磊表示，原计划用于风电的9.28亿美元投资将转向美国天然气项目，特别是里奥格兰德液化天然气厂，同时公司已签署意向书，计划长期采购阿拉斯加液化天然气项目的液化天然气。

这一决定是在特朗普政府推翻此前气候政策后作出的，此前政府以国家安全和成本问题为由暂停了多个风电项目。潘彦磊呼应了这一观点，称与天然气相比，海上风电成本过高。该协议标志着政策方向的重大转变——从拜登时期加速发展海上风电，转向当前政府重点扩建化石燃料基础设施。

---

## 8. BIO：宝I/O协处理器

**原文标题**: BIO: The Bao I/O Coprocessor

**原文链接**: [https://www.bunniestudios.com/blog/2026/bio-the-bao-i-o-coprocessor/](https://www.bunniestudios.com/blog/2026/bio-the-bao-i-o-coprocessor/)

本文介绍了专为宝芯-1x SoC设计的I/O协处理器BIO。文章首先分析了树莓派的PIO——一款流行的I/O协处理器，指出其尽管灵活，但存在硬件效率低下和结构复杂的问题。作者在实现过程中发现其资源占用高且存在时序挑战，部分原因在于其类CISC、指令密集型的设计。

为此，作者设计了基于RISC架构的BIO作为替代方案。其核心是四个紧凑的RV32E RISC-V内核（PicoRV32），关键创新在于扩展寄存器文件以包含“寄存器队列”。寄存器x16-x19被映射为具有阻塞语义的共享FIFO，允许内核在下溢/上溢时暂停执行，从而实现确定性、低延迟的通信。

额外的专用寄存器（x20-x31）提供直接、周期精确的GPIO控制、事件同步以及用于实时调度（无需手动周期计数）的“量子”计时器。可选的BDMA扩展允许内核充当智能DMA引擎，但访问受内存白名单保护。

该设计理念优先考虑硬件简洁性、利用RISC-V软件工具链以及确定性I/O性能。示例展示了BIO如何通过将DMA等任务分解为协同工作的内核来简化操作，与更复杂且资源密集的PIO方案形成鲜明对比。

---

## 9. Cyber.mil网站使用三天前已过期的TLS证书提供文件下载服务。

**原文标题**: Cyber.mil serving file downloads using TLS certificate which expired 3 days ago

**原文链接**: [https://www.cyber.mil/stigs/downloads](https://www.cyber.mil/stigs/downloads)

**摘要：**

本文报告了Cyber.mil网站存在的一个安全问题，该网站是美国国防部网络安全与信息系统信息分析中心（CSIAC）的门户网站。问题在于该网站使用的传输层安全（TLS）证书在报告日期前三天已过期。

过期的TLS证书是一个重大的安全隐患，因为它可能触发用户浏览器警告，从而可能削弱信任并阻碍访问。更重要的是，它会干扰安全通信，并可能表明日常安全维护存在疏漏。对于一个与军事相关的网络安全资源平台而言，这种疏忽尤为引人注目，并损害了其安全态势。

核心信息是公开通报这一运营安全缺陷，突显了在一个专门提供网络安全信息的平台上出现了基础维护失误。该报告旨在提醒网站管理员及其用户社群注意此问题，需要立即续订证书以恢复正常的安全性和功能。

---

## 10. 邦巴迪尔：基于属性的Web界面测试

**原文标题**: Bombadil: Property-based testing for web UIs

**原文链接**: [https://github.com/antithesishq/bombadil](https://github.com/antithesishq/bombadil)

**摘要**

Bombadil 是一款实验性的、基于属性的测试工具，专为 Web 用户界面设计。其核心目标是自主探索 Web UI，并根据定义的属性验证其正确性，旨在在开发周期早期发现复杂的缺陷。

主要特点与信息包括：
*   **功能：** 它执行基于属性的测试，即生成广泛的输入和用户交互，以测试应用程序是否始终遵循指定的规则或“属性”。
*   **使用场景：** 可在本地开发环境、持续集成（CI）流水线中运行，并与 Antithesis 测试平台集成。
*   **状态：** 该工具明确标注为全新且处于实验阶段，这意味着其接口和功能可能发生变化。
*   **资源：** 提供手册、安装指南和示例等文档。也为对该项目感兴趣的开发者提供了贡献指南。
*   **创建者：** Bombadil 由 Antithesis 构建和提供。

该工具的名称及其附带的诗歌诙谐地引用了 J.R.R.托尔金文学作品中坚韧的角色汤姆·邦巴迪尔，隐喻地将测试者定位为对抗缺陷的“大师”。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 2 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 3 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 4 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 5 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 6 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 7 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 8 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 9 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 10 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 11 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 12 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 13 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 14 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 15 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 16 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 17 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 18 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 19 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 20 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 21 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 22 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 23 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 24 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 25 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 26 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 27 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 28 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 29 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 30 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 31 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 32 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 33 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 34 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 35 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 36 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 37 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 38 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 39 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 40 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 41 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 42 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 43 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 44 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 45 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 46 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 47 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 48 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 49 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 50 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 51 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 52 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 53 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 54 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 55 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 56 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 57 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 58 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 59 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 60 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 61 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 62 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 63 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 64 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 65 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 66 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 67 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 68 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 69 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 70 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 71 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 72 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 73 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 74 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 75 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 76 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 77 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 78 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 79 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 80 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 81 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 82 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 83 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 84 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 85 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 86 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 87 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 88 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 89 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 90 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 91 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 92 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 93 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 94 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 95 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 96 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 97 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 98 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 99 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 100 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 101 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 102 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 103 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 104 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 105 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 106 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 107 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 108 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 109 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 110 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 111 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 112 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 113 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 114 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 115 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 116 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 117 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 118 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 119 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 120 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 121 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 122 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 123 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 124 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 125 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 126 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 127 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 128 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 129 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 130 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 131 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 132 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 133 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 134 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 135 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 136 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 137 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 138 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 139 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 140 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 141 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 142 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 143 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 144 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 145 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 146 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 147 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 148 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 149 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 150 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 151 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 152 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 153 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 154 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 155 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 156 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 157 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 158 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 159 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 160 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 161 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 162 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 163 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 164 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 165 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 166 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 167 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 168 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 169 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 170 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 171 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 172 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 173 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 174 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 175 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 176 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 177 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 178 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 179 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 180 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 181 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 182 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 183 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 184 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 185 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 186 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 187 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 188 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 189 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 190 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 191 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 192 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 193 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 194 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 195 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 196 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 197 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 198 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 199 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 200 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 201 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 202 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 203 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 204 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 205 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 206 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 207 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 208 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 209 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 210 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 211 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 212 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 213 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 214 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 215 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 216 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 217 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 218 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 219 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 220 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 221 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 222 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 223 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 224 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 225 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 226 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 227 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 228 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 229 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 230 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 231 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 232 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 233 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 234 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 235 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 236 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 237 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 238 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 239 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 240 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 241 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 242 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 243 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 244 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 245 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 246 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 247 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 248 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 249 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 250 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 251 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 252 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 253 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 254 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 255 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 256 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 257 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 258 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 259 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 260 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 261 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 262 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 263 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 264 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 265 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 266 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 267 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 268 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 269 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 270 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 271 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 272 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 273 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 274 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 275 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 276 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 277 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 278 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 279 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 280 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 281 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 282 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 283 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 284 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 285 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 286 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 287 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 288 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 289 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 290 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 291 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 292 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 293 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 294 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 295 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 296 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 297 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 298 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 299 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 300 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 301 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 302 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 303 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 304 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 305 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 306 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 307 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 308 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 309 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 310 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 311 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 312 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 313 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 314 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 315 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 316 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 317 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 318 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 319 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 320 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 321 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 322 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 323 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 324 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 325 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 326 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 327 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 328 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 329 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 330 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 331 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 332 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 333 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 334 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 335 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 336 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 337 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 338 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 339 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 340 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 341 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 342 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 343 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 344 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 345 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 346 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 347 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 348 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 349 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 350 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 351 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 352 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 353 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 354 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 355 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 356 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 357 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 358 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 359 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 360 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 361 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 362 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 363 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 364 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 365 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 366 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
