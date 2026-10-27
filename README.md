# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-28.md)

*最后自动更新时间: 2026-10-28 04:58:53*
## 1. Genie 4

**原文标题**: Genie 4

**原文链接**: [https://deepmind.google/blog/genie-4-a-new-generation-of-world-simulation/](https://deepmind.google/blog/genie-4-a-new-generation-of-world-simulation/)

摘要：Genie 4 是一款以"精灵"命名的第四代产品或模型，页面内容极为精简，仅包含名称标题与"了解更多"入口，未在本次提供的文本中展开具体功能、参数或应用细节。从命名惯例推断，"Genie 4"通常指某系列产品的第四代迭代版本，"Genie"在科技领域常作为生成式模型或智能助手的代号。该页面属于典型的引导式介绍页，旨在以简洁入口吸引用户点击获取更多信息。由于原始内容未提供技术规格、使用场景或发布背景等关键数据，摘要无法进一步展开，建议读者通过"了解更多"链接查阅完整说明以获取该产品的核心能力、适用领域及更新亮点。

---

## 2. Ghostty 1.4.0 发布说明

**原文标题**: Ghostty 1.4.0

**原文链接**: [https://ghostty.org/docs/install/release-notes/1-4-0](https://ghostty.org/docs/install/release-notes/1-4-0)

Ghostty 1.4.0 于2026年10月27日发布，历时7个月、汇集172位贡献者共2889次提交。本版本修复多项安全漏洞，涵盖粘贴保护绕过、Kitty图形命令滥用、tmux控制模式崩溃及macOS剪贴板/链接注入等。核心更新：完整实现Kitty图形协议（含动画与相对定位，为Kitty之外首个100%兼容的终端）；滚动回透明压缩使物理内存降低70%–90%，默认上限由10MB升至50MB；macOS上I/O吞吐量提升25%–55%，ASCII解析提速5.7倍，150MB文件输出从1.5秒降至0.566秒；Linux/FreeBSD新增EGL/DMABUF渲染管线，原生支持分数缩放；实现Kitty剪贴板协议（OSC 522）；GTK端支持分屏拖放；全面适配macOS 27；SSH集成推出 ghostty +ssh 命令，统一各Shell远程会话的终端配置与环境变量转发。

---

## 3. Tailscale SSH 安全漏洞调查与修复进展

**原文标题**: Tailscale SSH: Investigation and remediation update

**原文链接**: [https://tailscale.com/ssh-investigation-update](https://tailscale.com/ssh-investigation-update)

2026年10月26日，Tailscale发布安全公告，通报其SSH服务存在权限提升类漏洞及修复进展。经内部团队联合外部专家调查，主要问题为：已通过Tailscale SSH授权的用户在特定条件下可执行超出其本地用户权限的操作，存在提权风险；漏洞利用取决于用户或设备权限及系统配置。Tailscale目前不建议所有用户禁用Tailscale SSH。修复方面，大部分漏洞已修复，团队正完成测试，目标于10月27日（周二）发布补丁客户端，视测试结果而定。过渡期建议：审查SSH访问策略，将权限限制在必需的用户和设备；如无需SSH转发，在tailscaled服务环境变量中设置TS_SSH_DISABLE_FORWARDING=1并重启服务，以缓解部分高危问题；对敏感系统临时收紧访问；补丁发布后及时更新。后续Tailscale将发布详细安全公告及技术分析博文，如有新发现或评估变更将另行通知。

---

## 4. Survival LLM：完全离线运行的AI助手与应急知识库

**原文标题**: Survival LLM: AI assistant and emergency library that runs on your own computer

**原文链接**: [https://www.brangus.io/survival-llm](https://www.brangus.io/survival-llm)

Survival LLM 是一款免费开源应用，将AI助手与应急知识库合为一体，完全在本地运行，无需联网。适用于停电、灾害等紧急场景，可回答食物保存、烧伤处置、净水等生存问题，且每条答案均标注引用来源，用户可点击原文核实。程序根据内存自动匹配模型：128GB以上用Nemotron 3.5 Super（80GB），32–96GB用Qwen3.8 27B（18GB），Windows 32GB以上用Nemotron 3.5 Lightning（25GB），16–31GB用IBM Granite 4.2 8B（6GB）。全量库文件约9GB，精简版1.3GB。知识库涵盖近93万维基条目、WikiMed与MedlinePlus医学资料、FEMA及CDC指南、美军生存手册、iFixit维修与wikiHow教程等，用户还可导入发电机手册等个人文件。安装仅需三步，耗时20分钟至2.5小时，只需短暂联网下载。程序无账号、无追踪，数据永不离开本机。在MacBook Pro上每次问答约5至40秒、功耗约100瓦，满电可应答100至300次，小型储能电源即可驱动。

---

## 5. 苹果发布搭载M6芯片的新款14英寸MacBook Pro

**原文标题**: New 14‑inch MacBook Pro with M6

**原文链接**: [https://www.apple.com/in/newsroom/2026/10/apple-introduces-the-new-14-inch-macbook-pro-with-m6/](https://www.apple.com/in/newsroom/2026/10/apple-introduces-the-new-14-inch-macbook-pro-with-m6/)

2026年10月27日，苹果发布搭载全新M6芯片的14英寸MacBook Pro。M6采用12核CPU（含号称全球最快单核）、12核GPU及双16核神经网络引擎，GPU图形性能较M5提升30%，AI性能提升25%；对比M1，图形与AI性能分别最高提升11倍和13倍。标配16GB统一内存（最高32GB），内存带宽达170GB/s，电池续航最长达24小时，为Mac系列之最。该机支持Wi-Fi 7与蓝牙6，配备Liquid Retina XDR显示屏（峰值亮度1600尼特、可选纳米纹理）、1200万像素摄像头、六扬声器系统及丰富接口，支持双外接显示器。系统搭载macOS 27，集成Siri AI与Apple Intelligence，支持本地大模型运行。机身采用100%再生铝，整体回收材料占比45%。产品提供深空黑与银色两款配色，10月28日开启预购，11月6日正式发售，印度市场起售价为239,900卢比，提供教育优惠及Apple Trade In置换服务。

---

## 6. 有限单群分类的Lean形式化

**原文标题**: Classification of Finite Simple Groups Formalized in Lean

**原文链接**: [https://cfsg.axiommath.ai/](https://cfsg.axiommath.ai/)

本文报告了有限单群分类Lean形式化项目中衍生的一项群论新结果。在形式化第一代证明的过程中，研究者发现已发表的非平衡群定理证明路线中所依赖的一个"闭包断言"存在反例。论文首先阐释了该证明障碍的实质，随后针对简单群情形提出替代论证，其核心构建在Solomon（1976年）关于极大2-分量的理论之上，关键步骤为定理2.3所证明的"简单顶保持性"。该成果发表于Hexagon预印本平台（编号2610.00575），全文共35页。这项工作不仅推进了有限单群分类的Lean形式化进程，还通过揭示已发表证明中的缺陷并给出修正方案，对群论研究具有独立的学术价值。

---

## 7. GoAhead 中的三个 TLS 漏洞

**原文标题**: Three TLS Bugs in GoAhead

**原文链接**: [https://foxio.io/blog/choose-your-backend-three-tls-bugs-in-goahead](https://foxio.io/blog/choose-your-backend-three-tls-bugs-in-goahead)

GoAhead是部署于数亿台IoT、防火墙及军用设备中的嵌入式Web服务器，存在三个独立TLS漏洞，均已在6.1.1修复。一、OpenSSL后端（CVSS 9.1）：CRL虽加载至证书库，但未设置X509_V_FLAG_CRL_CHECK标志，已吊销的客户端证书在mTLS握手时仍被静默接受，影响3.4.5至6.1.0。二、Mbed TLS后端（CVSS 5.9）：代码中误以sizeof(dhm_g)替代sizeof(dhm_p)，将2048位DH模数截断为1字节，DHE_RSA会话共享密钥仅8种可能，被动监听者可解密流量，影响4.0.2至6.1.0。三、LibreSSL遗留验证器（CVSS 7.4）：VERIFY_ISSUER=0时，过深证书链触发的是issuer错误而非depth错误，GoAhead放行该错误致使链深度限制失效，影响3.2.x及3.3.2–3.3.6。受影响厂商涵盖Palo Alto、D-Link、HP、Siemens、Lockheed Martin等。修复建议为升级至6.1.1，或关闭有限域DHE套件、启用issuer验证。

---

## 8. 搭载 M6 芯片的全新 iMac

**原文标题**: New iMac with M6

**原文链接**: [https://www.apple.com/imac/](https://www.apple.com/imac/)

苹果发布搭载 M6 芯片的全新 iMac，10 月 28 日开启预购，11 月 6 日正式发售。M6 芯片配备 16 核 CPU、每核心 Neural Accelerator 及全球首款双 16 核神经网络引擎，最高支持 32GB 统一内存，性能较 Intel 版 iMac 提升最高 18 倍，本地 AI 性能较 M4 提升 5 倍。外观提供蓝、紫、粉、橙、黄、绿、银七种配色，采用超薄机身与 24 英寸 4.5K Retina 显示屏（500 尼特、P3 广色域），可选纳米纹理玻璃。AI 方面深度整合 Apple Intelligence 与全新 Siri AI，支持本地运行 Claude、Gemini 等 AI 应用，并通过设备端处理与私有云计算保障隐私。其他亮点包括 1200 万像素 Center Stage 摄像头与 Desk View、六扬声器杜比全景声音效、最多 4 个雷雳 4 端口、Wi-Fi 7 及蓝牙 6 连接。macOS 引入 Liquid Glass 全新设计，支持与 iPhone 的屏幕镜像、通用剪贴板及通话短信互通。购买方式涵盖 Apple Card 免息分期、以旧换新抵扣、教育专属优惠及 24/36 个月租赁升级计划。

---

## 9. Python实验性JIT编译器将被移除

**原文标题**: Python's experimental JIT to be removed

**原文链接**: [https://lwn.net/SubscriberLink/1102102/0c00e4d550f25f8c/](https://lwn.net/SubscriberLink/1102102/0c00e4d550f25f8c/)

Python 3.13于2024年加入了Brandt Bucher开发的实验性JIT编译器。2026年6月，Python指导委员会暂停JIT开发，要求作者提交标准轨道PEP，明确维护承诺、兼容性保障、性能指标及完成时间表。随后Bucher、Ostrowski和Ken Jin合撰PEP 836，但引发广泛争议。委员会于9月声明认为该PEP虽涉及相关议题，但在支持计划、性能标准、安全性审查、平台适配及用户影响等方面过于模糊或乐观，尤其反对将兼容性审查推迟至2028年，要求尽早持续进行。10月19日，Ostrowski宣布撤回PEP，称团队精力有限无法推进，但坚信其技术方向（包括自由线程支持和基于方法的前端），将提供参考实现供社区延续。目前JIT代码预计将在Python 3.16开发周期内从CPython主线移除，后续是否有社区接手尚不确定。

---

## 10. 维基百科清除AI生成内容

**原文标题**: Wikipedia's Cleanup of AI-Generated Content

**原文链接**: [https://spectrum.ieee.org/wikipedia-wikiproject-ai-writing-cleanup](https://spectrum.ieee.org/wikipedia-wikiproject-ai-writing-cleanup)

摘要：人工智能生成文本的泛滥正给维基百科带来前所未有的挑战。据IEEE Spectrum报道，维基百科编辑团队持续推进一项名为"WikiProject AI Cleanup"的清理行动，旨在维护这部在线百科全书"人工撰写"的核心品质。该项目联合创始人Ellia Lebleu在接受记者Eliza Strickland采访时表示，尽管AI生成的文字已越来越难以与人类写作区分，但编辑们并未因此退缩，仍坚持对疑似AI生成内容进行识别与清除。随着大语言模型能力不断提升，AI文本正渗入越来越多的网络内容领域，维基百科作为全球最广泛引用的知识平台之一，其内容的可信度与人工把关显得尤为重要。编辑们依靠社区协作与人工审核相结合的方式，尽力遏制AI生成内容对百科条目的侵蚀，确保读者获取的信息依然经过人类判断与核实。这一清理行动不仅关乎维基百科自身的公信力，也折射出整个知识传播领域在AI时代面临的深层焦虑——如何在大模型无处不在的背景下，守护内容的真实与可靠。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 2 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 3 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 4 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 5 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 6 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 7 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 8 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 9 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 10 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 11 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 12 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 13 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 14 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 15 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 16 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 17 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 18 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 19 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 20 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 21 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 22 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 23 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 24 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 25 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 26 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 27 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 28 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 29 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 30 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 31 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 32 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 33 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 34 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 35 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 36 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 37 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 38 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 39 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 40 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 41 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 42 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 43 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 44 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 45 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 46 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 47 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 48 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 49 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 50 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 51 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 52 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 53 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 54 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 55 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 56 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 57 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 58 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 59 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 60 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 61 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 62 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 63 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 64 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 65 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 66 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 67 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 68 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 69 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 70 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 71 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 72 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 73 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 74 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 75 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 76 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 77 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 78 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 79 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 80 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 81 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 82 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 83 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 84 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 85 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 86 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 87 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 88 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 89 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 90 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 91 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 92 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 93 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 94 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 95 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 96 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 97 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 98 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 99 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 100 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 101 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 102 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 103 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 104 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 105 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 106 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 107 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 108 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 109 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 110 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 111 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 112 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 113 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 114 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 115 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 116 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 117 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 118 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 119 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 120 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 121 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 122 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 123 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 124 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 125 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 126 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 127 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 128 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 129 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 130 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 131 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 132 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 133 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 134 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 135 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 136 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 137 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 138 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 139 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 140 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 141 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 142 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 143 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 144 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 145 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 146 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 147 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 148 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 149 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 150 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 151 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 152 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 153 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 154 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 155 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 156 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 157 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 158 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 159 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 160 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 161 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 162 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 163 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 164 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 165 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 166 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 167 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 168 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 169 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 170 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 171 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 172 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 173 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 174 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 175 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 176 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 177 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 178 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 179 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 180 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 181 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 182 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 183 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 184 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 185 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 186 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 187 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 188 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 189 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 190 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 191 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 192 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 193 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 194 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 195 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 196 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 197 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 198 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 199 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 200 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 201 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 202 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 203 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 204 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 205 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 206 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 207 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 208 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 209 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 210 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 211 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 212 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 213 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 214 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 215 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 216 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 217 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 218 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 219 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 220 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 221 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 222 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 223 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 224 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 225 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 226 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 227 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 228 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 229 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 230 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 231 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 232 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 233 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 234 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 235 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 236 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 237 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 238 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 239 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 240 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 241 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 242 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 243 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 244 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 245 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 246 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 247 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 248 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 249 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 250 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 251 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 252 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 253 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 254 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 255 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 256 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 257 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 258 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 259 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 260 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 261 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 262 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 263 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 264 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 265 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 266 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 267 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 268 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 269 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 270 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 271 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 272 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 273 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 274 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 275 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 276 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 277 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 278 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 279 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 280 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 281 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 282 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 283 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 284 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 285 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 286 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 287 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 288 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 289 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 290 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 291 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 292 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 293 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 294 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 295 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 296 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 297 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 298 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 299 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 300 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 301 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 302 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 303 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 304 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 305 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 306 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 307 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 308 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 309 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 310 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 311 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 312 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 313 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 314 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 315 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 316 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 317 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 318 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 319 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 320 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 321 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 322 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 323 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 324 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 325 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 326 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 327 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 328 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 329 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 330 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 331 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 332 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 333 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 334 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 335 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 336 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 337 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 338 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 339 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 340 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 341 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 342 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 343 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 344 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 345 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 346 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 347 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 348 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 349 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 350 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 351 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 352 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 353 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 354 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 355 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 356 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 357 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 358 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 359 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 360 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 361 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 362 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 363 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 364 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 365 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 366 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 367 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 368 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 369 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 370 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 371 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 372 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 373 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 374 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 375 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 376 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 377 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 378 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 379 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 380 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 381 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 382 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 383 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 384 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 385 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 386 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 387 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 388 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 389 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 390 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 391 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 392 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 393 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 394 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 395 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 396 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 397 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 398 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 399 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 400 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 401 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 402 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 403 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 404 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 405 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 406 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 407 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 408 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 409 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 410 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 411 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 412 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 413 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 414 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 415 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 416 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 417 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 418 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 419 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 420 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 421 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 422 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 423 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 424 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 425 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 426 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 427 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 428 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 429 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 430 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 431 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 432 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 433 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 434 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 435 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 436 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 437 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 438 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 439 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 440 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 441 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 442 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 443 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 444 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 445 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 446 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 447 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 448 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 449 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 450 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 451 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 452 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 453 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 454 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 455 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 456 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 457 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 458 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 459 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 460 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 461 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 462 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 463 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 464 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 465 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 466 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 467 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 468 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 469 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 470 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 471 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 472 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 473 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 474 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 475 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 476 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 477 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 478 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 479 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 480 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 481 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 482 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 483 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 484 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 485 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 486 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 487 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 488 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 489 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 490 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 491 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 492 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 493 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 494 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 495 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 496 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 497 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 498 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 499 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 500 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 501 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 502 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 503 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 504 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 505 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 506 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 507 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 508 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 509 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 510 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 511 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 512 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 513 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 514 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 515 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 516 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 517 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 518 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 519 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 520 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 521 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 522 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 523 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 524 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 525 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 526 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 527 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 528 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 529 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 530 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 531 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 532 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 533 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 534 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 535 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 536 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 537 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 538 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 539 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 540 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 541 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 542 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 543 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 544 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 545 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 546 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 547 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 548 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 549 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 550 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 551 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 552 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 553 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 554 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 555 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 556 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 557 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 558 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 559 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 560 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 561 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 562 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 563 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 564 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 565 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 566 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 567 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 568 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 569 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 570 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 571 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 572 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 573 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 574 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 575 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 576 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 577 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 578 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 579 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 580 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 581 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 582 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 583 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
