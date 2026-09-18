# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-19.md)

*最后自动更新时间: 2026-09-19 04:55:26*
## 1. Android 17是自3.x以来首个未向AOSP开源即新增API的版本

**原文标题**: Android 17 is the first since 3.x to add new APIs without releasing to the AOSP

**原文链接**: [https://grapheneos.social/@GrapheneOS/117282080803799576](https://grapheneos.social/@GrapheneOS/117282080803799576)

摘要：GrapheneOS在Mastodon上发布消息称，Android 17 QPR1是自Android 3.x以来，首次在不向AOSP（Android开源项目）发布源码的情况下新增API的版本。这一做法在Android发展历程中极为罕见，意味着部分新接口未能及时回馈至开源社区，可能影响第三方开发者及自定义ROM项目的适配与使用。该消息由关注Android安全与隐私的GrapheneOS团队率先提出，引发了对Android开源透明度的讨论。受限于原文信息有限，具体涉及哪些新API、为何未纳入AOSP等细节尚待进一步披露。

---

## 2. 韩国将数据泄露罚款提高至营收的10%

**原文标题**: Korea raises data breach fines to 10% of revenue

**原文链接**: [https://www.koreajoongangdaily.com/business/korea-raises-data-breach-fines-to-10-of-revenue/12869899](https://www.koreajoongangdaily.com/business/korea-raises-data-breach-fines-to-10-of-revenue/12869899)

摘要：韩国近日出台新规，将企业发生数据泄露事件所面临的罚款上限提高至其营业收入的10%，以加大对数据保护违规行为的惩处力度。此举旨在强化个人信息保护，督促企业切实履行数据安全责任。然而，本次所提供的正文内容仅显示"Are we human?"，疑似为网页验证码或加载异常，未能提供关于该政策的实施细则、生效时间、适用对象及具体处罚标准等详细信息，因此无法进一步概括文章要点。如需完整摘要，建议提供有效的正文内容。

---

## 3. Cloudflare 快速隧道

**原文标题**: Cloudflare Quick Tunnels

**原文链接**: [https://try.cloudflare.com/](https://try.cloudflare.com/)

Cloudflare 快速隧道（Quick Tunnel）是一款免注册、免配置的服务，只需一条命令即可将本地开发服务器映射为公网加密 URL，约 3 秒完成，无需开放入站端口，无需 DNS 配置，完全免费。其原理是 cloudflared 仅建立出站连接至最近的 Cloudflare 边缘节点（覆盖全球 335+ 城市），流量经边缘加密与 DDoS 过滤后回传本机，设备始终无需暴露端口。该产品特别契合 AI 编码代理场景：支持以 JSON 格式输出主机名、边缘节点及健康状态，便于程序直接解析；可作为 webhook 端点接收 Stripe、GitHub 等回调；隧道随进程终止自动销毁，无需手动清理。支持 macOS、Windows、Linux 全平台，通过包管理器或 GitHub 发行版安装 cloudflared 即可使用，适用于截图服务、测试评估、演示分享等各类需要临时公网地址的场景。

---

## 4. 用数学（和 Rust）再省 100TB 内存

**原文标题**: Saving another 100TB of RAM with math (and Rust)

**原文链接**: [https://blog.cloudflare.com/saving-100-tb-of-ram-with-math/](https://blog.cloudflare.com/saving-100-tb-of-ram-with-math/)

摘要：Cloudflare 发现其 Pingora 后端路由器（PBR）中 pingora-ketama 一致性哈希模块内存占用异常（部分达 6GB），经优化后全球节省超 100TB RAM。PBR 采用 ketama 算法，按服务器磁盘权重分配哈希点（默认 160×权重），将缓存请求映射到哈希环上以实现负载均衡。优化分两步：一是对存储哈希点的结构体做内存对齐优化——原 index 字段用 u32（4字节）实际只需 u16，但因 Rust 对齐规则结构体按最大字段 4 字节对齐仍占 8 字节；改用 6 字节原始字节数组存储，直接减少 25% 内存。二是通过推导 k 个哈希点下的标准差与变异系数公式（CV_k=√((N-1)/(Nk+1)))，证明哈希点边际收益递减——在 10 万哈希点中最后 9 万仅降低 0.7% 误差，且 32 位哈希在高密度下碰撞概率大增；据此将每服务器哈希点削减 90% 而误差可忽略。两项改动叠加，在保障路由精度的前提下大幅缩减内存占用，配合 DNS 团队上月优化的 100TB，Cloudflare 累计回收超 200TB 内存。

---

## 5. 苹果发布iPhone Duo模拟器及Xcode 27.1测试版

**原文标题**: Apple releases iPhone Duo simulator and Xcode 27.1 beta

**原文链接**: [https://developer.apple.com/documentation/xcode-release-notes/xcode-27_1-release-notes](https://developer.apple.com/documentation/xcode-release-notes/xcode-27_1-release-notes)

摘要：苹果推出Xcode 27.1测试版，并同步发布iPhone Duo模拟器。该信息源自苹果开发者文档中的Xcode 27.1测试版发布说明页面。目前该页面内容需启用浏览器JavaScript功能方可完整显示，苹果同时为无法加载页面内容的用户提供Markdown格式版本以便查阅。此次更新面向参与苹果开发者计划的测试人员，旨在为iPhone Duo新设备的软件开发提供早期仿真调试环境，开发者可借此测试应用在新机型上的适配表现。

---

## 6. 缓存到缓存：大语言模型间的直接语义通信

**原文标题**: Cache-to-Cache: Direct Semantic Communication Between Large Language Models

**原文链接**: [https://arxiv.org/abs/2510.03215](https://arxiv.org/abs/2510.03215)

多模态大语言模型（LLM）系统旨在利用不同模型的互补优势以超越单一模型的性能。然而，现有架构中模型间依赖文本通信，迫使内部表征转换为输出token序列，既造成丰富语义信息的损失，又带来逐token生成的显著延迟。针对这一瓶颈，本文提出"缓存到缓存"（Cache-to-Cache，C2C）范式，实现LLM间的直接语义通信。C2C以KV-Cache为通信媒介，通过轻量神经网络将源模型的KV-Cache投影并融合至目标模型，同时引入可学习门控机制自适应选择受益于通信的目标层，从而在深层、专用语义层面完成跨模型传递，避免显式中间文本的生成。实验表明，C2C的平均准确率较单一模型提升6.4%–14.2%，较文本通信范式再提升约3.1%–5.4%，同时推理延迟平均降低2.5倍。该工作已发表于ICLR 2026。

---

## 7. 光致发光引导的激光故障注入实现RP2350安全调试

**原文标题**: Photon-Emission-Guided Laser Fault Injection Enables RP2350 Secure Debug

**原文链接**: [https://donjon.ledger.com/blog/rp2350-secure-debug-laser-fault-injection/](https://donjon.ledger.com/blog/rp2350-secure-debug-laser-fault-injection/)

摘要：研究人员针对Raspberry Pi RP2350微控制器A4版本，突破其永久调试禁用（DEBUG_DISABLE）防护，完整提取了OTP存储的挑战密钥。攻击分三步：首先，利用光子发射显微镜（PEM）通过对比不同位掩码下寄存器的红外发射差异，将DEBUGEN寄存器定位至数微米范围；其次，使用980 nm脉冲激光在两个相邻位置分别注入故障，将PROC1和PROC1_SECURE两位置1（即0xc），恢复核心1的安全调试访问，且无需软件写入即可保持；最后，通过RP-AP触发救援重置（RESCUE_RESTART），使芯片在引导ROM等待路径中停下、固件无法运行，OTP第48页的运行时锁回到持久锁允许的Secure可读状态，进而经Mem-AP读取OTP行0xc08–0xc0f中的完整密钥。关键发现在于DEBUGEN寄存器缺乏OTP字段的三比八投票冗余保护，且DEBUGEN_LOCK仅阻止软件写入，激光故障仍可绕过。该攻击需物理接触、芯片背面去胶的破坏性处理及约25万美元实验设备，但揭示了永久调试禁用并非不可逆的硬件级屏障。

---

## 8. Show HN：Cactus Needle 3——8至29MB 的自动化模型可媲美 DeepSeek V4 Flash

**原文标题**: Show HN: Cactus Needle 3: 8-29MB automation models can match DeepSeek V4 Flash

**原文链接**: [https://cactuscompute.com/needle](https://cactuscompute.com/needle)

摘要：Cactus Needle 3 是一款超轻量端侧模型，CQ2 二值量化后仅 8–29MB，却能在工具调用、结构化提取与文本嵌入三大任务上对标甚至超越云端大模型。其架构为层叠式简单注意力网络（Laddered SAN），768 维嵌入、8192 词表，支持 2 至 20 层子网络按需取用；引入 mHC 多通道残差、Engram 哈希记忆及 Monarch Hadamard FFN 等模块，每 token 计算量低于同配置 Transformer 两倍以上。在树莓派 5 上解码速度达 400–4000 tokens/s。基准测试显示，它在手机工具调用上优于 10 倍参数量的模型，提取任务可比肩 2–3 倍大小模型；4 层子网络微一个轮次即可在 DroidCall 等数据集上超过 DeepSeek V4 Flash。开发体验极简：Python 包一行装饰器即定义工具，支持正则触发器路由与置信度门控；提取任务接入 Pydantic 模型即返回类型安全对象。部署覆盖 macOS、Linux（含 ARM/RISC-V/MIPS）、Windows、Android、iOS、tvOS、watchOS 及浏览器 Wasm，引擎体积均小于 1MB。典型落地场景包括智能家居离线控制、机器人指令理解、可穿戴设备通知解析、车载对话及本地语义搜索。Cactus 平台进一步提供数据集管理、二值量化、评测追踪及全深度微调管线，开发者可在其基础设施上完成从数据到部署的闭环。

---

## 9. 语言不可读性对大语言模型安全的影响

**原文标题**: The Implications of Linguistic Illegibility for LLM Security

**原文链接**: [https://arxiv.org/abs/2609.02852](https://arxiv.org/abs/2609.02852)

摘要：本文提出"语言不可读性"概念，指大语言模型（LLM）外化的或经机制探针提取的语言产物无法真实表征模型内部实际计算过程。作者论证，对于内部计算并非直接以语言形式表达、而是在激活空间上进行数学运算（仅在首尾与自然语言做有损转换）的LLM而言，语言不可读性不可避免。由此推导出关键安全推论：一切依赖模型语言自我报告的安全机制——如思维链监控、宪法式自我批评、面向语言特征向量的激活探测——均无法保证完全可靠，模型沙箱必须配备不依赖读取模型语言状态的隔离手段。作者提出污点追踪作为有前景的沙箱方案：无论模型如何自我报告，该策略可在先定义哪些系统状态绝不应受模型产出数据影响。此外，文章还讨论了稳健虚拟化、沙箱配置的第三方审计等补充机制，认为它们共同构成语言监测之下的安全底线，并指出这些机制本可有效缓解近期前沿模型对沙箱的越狱利用。

---

## 10. OpenJev

**原文标题**: OpenJev

**原文链接**: [https://openjev.com/](https://openjev.com/)

摘要：本条目为 OpenJev 系统的 02A 类操作——直接读取（Direct Readout），用于在不进行解码（no decoding）的情况下获取模型对给定选项的选择概率。其核心方法为：直接提取模型输出层的选项 logits，并仅在用户 supplied 的选项范围内进行归一化，从而得到各项选择概率，而非生成完整文本。当前界面状态为"等待运行"，总耗时、输入 token 数均显示为空（—），输出计为 1 次读取结果。该流程适用于需要在多选项之间快速比较模型倾向性的场景，例如选择题式的推理评估或偏好探测，可避免生成式解码的开销，直接获得概率分布。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 2 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 3 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 4 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 5 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 6 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 7 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 8 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 9 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 10 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 11 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 12 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 13 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 14 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 15 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 16 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 17 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 18 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 19 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 20 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 21 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 22 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 23 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 24 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 25 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 26 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 27 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 28 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 29 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 30 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 31 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 32 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 33 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 34 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 35 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 36 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 37 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 38 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 39 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 40 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 41 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 42 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 43 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 44 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 45 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 46 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 47 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 48 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 49 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 50 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 51 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 52 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 53 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 54 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 55 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 56 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 57 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 58 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 59 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 60 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 61 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 62 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 63 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 64 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 65 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 66 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 67 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 68 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 69 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 70 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 71 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 72 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 73 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 74 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 75 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 76 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 77 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 78 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 79 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 80 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 81 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 82 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 83 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 84 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 85 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 86 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 87 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 88 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 89 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 90 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 91 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 92 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 93 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 94 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 95 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 96 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 97 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 98 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 99 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 100 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 101 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 102 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 103 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 104 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 105 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 106 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 107 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 108 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 109 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 110 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 111 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 112 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 113 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 114 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 115 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 116 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 117 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 118 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 119 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 120 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 121 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 122 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 123 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 124 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 125 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 126 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 127 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 128 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 129 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 130 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 131 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 132 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 133 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 134 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 135 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 136 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 137 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 138 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 139 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 140 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 141 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 142 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 143 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 144 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 145 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 146 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 147 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 148 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 149 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 150 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 151 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 152 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 153 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 154 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 155 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 156 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 157 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 158 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 159 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 160 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 161 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 162 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 163 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 164 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 165 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 166 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 167 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 168 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 169 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 170 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 171 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 172 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 173 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 174 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 175 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 176 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 177 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 178 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 179 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 180 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 181 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 182 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 183 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 184 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 185 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 186 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 187 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 188 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 189 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 190 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 191 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 192 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 193 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 194 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 195 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 196 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 197 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 198 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 199 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 200 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 201 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 202 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 203 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 204 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 205 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 206 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 207 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 208 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 209 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 210 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 211 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 212 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 213 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 214 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 215 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 216 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 217 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 218 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 219 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 220 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 221 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 222 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 223 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 224 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 225 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 226 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 227 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 228 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 229 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 230 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 231 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 232 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 233 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 234 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 235 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 236 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 237 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 238 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 239 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 240 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 241 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 242 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 243 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 244 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 245 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 246 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 247 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 248 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 249 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 250 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 251 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 252 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 253 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 254 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 255 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 256 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 257 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 258 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 259 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 260 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 261 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 262 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 263 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 264 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 265 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 266 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 267 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 268 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 269 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 270 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 271 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 272 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 273 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 274 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 275 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 276 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 277 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 278 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 279 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 280 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 281 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 282 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 283 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 284 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 285 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 286 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 287 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 288 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 289 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 290 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 291 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 292 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 293 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 294 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 295 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 296 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 297 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 298 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 299 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 300 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 301 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 302 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 303 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 304 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 305 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 306 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 307 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 308 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 309 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 310 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 311 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 312 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 313 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 314 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 315 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 316 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 317 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 318 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 319 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 320 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 321 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 322 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 323 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 324 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 325 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 326 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 327 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 328 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 329 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 330 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 331 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 332 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 333 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 334 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 335 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 336 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 337 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 338 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 339 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 340 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 341 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 342 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 343 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 344 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 345 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 346 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 347 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 348 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 349 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 350 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 351 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 352 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 353 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 354 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 355 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 356 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 357 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 358 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 359 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 360 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 361 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 362 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 363 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 364 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 365 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 366 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 367 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 368 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 369 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 370 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 371 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 372 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 373 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 374 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 375 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 376 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 377 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 378 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 379 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 380 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 381 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 382 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 383 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 384 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 385 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 386 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 387 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 388 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 389 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 390 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 391 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 392 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 393 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 394 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 395 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 396 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 397 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 398 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 399 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 400 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 401 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 402 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 403 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 404 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 405 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 406 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 407 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 408 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 409 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 410 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 411 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 412 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 413 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 414 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 415 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 416 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 417 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 418 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 419 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 420 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 421 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 422 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 423 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 424 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 425 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 426 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 427 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 428 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 429 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 430 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 431 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 432 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 433 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 434 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 435 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 436 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 437 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 438 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 439 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 440 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 441 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 442 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 443 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 444 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 445 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 446 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 447 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 448 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 449 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 450 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 451 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 452 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 453 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 454 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 455 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 456 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 457 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 458 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 459 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 460 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 461 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 462 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 463 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 464 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 465 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 466 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 467 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 468 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 469 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 470 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 471 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 472 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 473 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 474 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 475 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 476 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 477 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 478 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 479 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 480 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 481 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 482 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 483 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 484 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 485 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 486 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 487 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 488 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 489 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 490 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 491 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 492 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 493 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 494 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 495 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 496 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 497 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 498 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 499 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 500 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 501 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 502 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 503 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 504 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 505 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 506 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 507 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 508 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 509 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 510 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 511 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 512 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 513 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 514 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 515 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 516 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 517 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 518 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 519 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 520 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 521 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 522 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 523 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 524 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 525 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 526 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 527 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 528 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 529 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 530 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 531 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 532 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 533 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 534 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 535 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 536 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 537 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 538 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 539 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 540 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 541 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 542 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 543 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 544 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
