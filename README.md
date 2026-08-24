# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-25.md)

*最后自动更新时间: 2026-08-25 04:28:10*
## 1. 小米新CPU单核追平苹果，多核性能大幅领先

**原文标题**: Xiaomi: New CPU matches Apple cores single threaded, much faster multithreaded

**原文链接**: [https://twitter.com/lemire/status/2091894299289874926](https://twitter.com/lemire/status/2091894299289874926)

摘要：小米新款处理器Xring O3在单线程性能上大致匹配苹果核心，多线程执行速度则显著更快。该芯片总缓存达44MB，超过多数笔记本CPU。其最强核心为C1-Ultra，支持SME2矩阵/AI加速和SVE2数据并行，拥有21个执行端口，其中6个支持128位SIMD运算，执行端口数量超过Intel/AMD桌面处理器。AMD Zen 5虽可做4x512位运算，但ARM芯片上6x128位已属顶尖。这反映出芯片趋势：核心拥有更多并行执行单元、更强SIMD能力和更大缓存，晶体管主要投向这些方向。不过苹果可能很快发布下一代处理器，且搭载该芯片的手机可能较难买到。

---

## 2. MS Paint 与 Photos 使用 GUID 为本地生成图像添加隐形水印

**原文标题**: MS Paint and Photos inivisibly watermark even locally generated output with GUID

**原文链接**: [https://xusheng.dev/posts/reversing/mspaint_invisible_watermark/main/](https://xusheng.dev/posts/reversing/mspaint_invisible_watermark/main/)

本文以微软 Paint 为重点，揭示其 AI 图像生成并非完全本地。虽然模型文件（如 .onnxe）在设备上运行，但应用会先将提示词发送至微软远程服务器进行内容审核；服务器返回修订后的提示词、promptGenerationId 以及一个唯一 watermarkId（GUID）。随后，Watermarker.dll 中的 WmkWriteWatermark 会将该 GUID 以不可见水印的形式嵌入本地生成的图像像素。该算法采用分块量化与 SVD 风格操作，每个比特至少嵌入三次，嵌入失败会导致整个生成流程失败。此外，Paint 还通过 C2PA 元数据记录相同 GUID 作为软绑定（c2pa.soft-binding），将像素水印与经过签名的来源清单关联。由于本地生成无法像云端 Image Creator 那样在生成时直接加水印，Paint 必须在本地实现并强制使用；同时为保留 C2PA 数据，保存格式被限制为 PNG、JPEG、GIF 和 .paint，BMP 被移除。文章通过重放 Paint 会话请求 moderation 接口，获得真实 GUID 响应，并解析 PNG 的 caBX 块验证像素水印与 C2PA 值一致。总而言之，即使用户在本地生成图像，提示词审核与 GUID 签发仍在微软服务器端完成。

---

## 3. 整个旧金山作为一款视频游戏

**原文标题**: The entire city of San Francisco as a video game

**原文链接**: [https://sf.thijs.gg/](https://sf.thijs.gg/)

摘要：本文展示了一个将旧金山整座城市转变为在线视频游戏的界面概念。页面呈现了类似游戏引擎的加载画面，包含“欢迎来到旧金山”及重试/加载选项。进入后，城市地图以多级缩放（Z20、Z17、Z16、Z15）的瓦片流形式呈现，并显示当前地块状态与所有者。玩家可自由探索，支持WASD移动、鼠标视角、空格跳跃、Shift奔跑、C切换第三人称相机、H使用滑翔翼、V进入步行或车辆等操作。界面提供速度与距离调节、重置功能，以及“世界安全”和“生命关闭”等模式开关。系统实时监测玩家周围470米范围，显示木材、石头、金属等资源数量，并支持复制调试日志。城市各个街区已完成加载，街道准备就绪，细节模式可查看具体区域。整体上，该设计将真实城市地理数据与游戏交互机制结合，营造出可即时传送、自由漫游的虚拟旧金山体验。

---

## 4. IPFS维护者正在收尾

**原文标题**: IPFS Maintainers Winding Down

**原文链接**: [https://ipshipyard.com/blog/2026-the-end-of-ipfs-at-shipyard/](https://ipshipyard.com/blog/2026-the-end-of-ipfs-at-shipyard/)

摘要：本文由Shipyard团队的Cameron Wood与Adin Schmahmann撰写，发布于2025年7月23日。文章宣布IPFS维护者正在逐步结束其网关服务，进入“后网关世界”，并引导用户过渡到直接检索模式。IPFS长期致力于在Web上运行，但网关作为集中化入口与IPFS去中心化理念存在张力。维护者决定将重心转向让用户通过本地节点直接获取内容，而非依赖公共网关。文中回顾了在Web环境中推广IPFS的尝试与挑战，并强调这一转变是为了提升网络韧性、降低中心化依赖，同时鼓励用户运行自己的节点或使用支持IPFS的浏览器与工具。文章还提及过渡期间对现有网关用户的支持措施，以及未来如何通过增强的寻址和内容路由技术实现无缝检索。总体而言，这是一次战略调整，旨在回归IPFS的核心价值，构建更加分布式、可持续的内容分发网络。

---

## 5. 恢复被导出限制截断的Kindle高亮——Claude Code技能

**原文标题**: A Claude Code skill that recovers export-blocked Kindle highlights

**原文链接**: [https://github.com/l3a0/claude-plugins](https://github.com/l3a0/claude-plugins)

中文摘要：本文介绍了一个名为“kindle-highlights”的Claude Code技能，用于从亚马逊Kindle笔记本页面提取全部高亮，包括被导出限制隐藏或截断的内容。该技能通过三种途径获取数据：网页DOM抓取、Mac版Kindle应用SQLite数据库中的精确位置、以及Cloud Reader渲染页面的OCR（利用Apple Vision框架）。它已在实际测试中成功恢复2,432条高亮，其中815条受导出限制（454条截断、361条完全隐藏），恢复文本与Kindle应用位置高度吻合。技能仅适用于macOS，需安装Claude Desktop的Control Chrome扩展、Chrome浏览器、Mac Kindle应用及Xcode命令行工具，最终生成带位置引用的Markdown文件。整个过程操作自有账户数据，输出仅供个人笔记使用，需注意版权。文章还解释了导出限制的成因、绕过方法及技术构建细节，完整故事发布在Substack上。

---

## 6. 大语言模型或可利用推理引擎漏洞控制宿主机

**原文标题**: LLMs could control their host machines by exploiting inference engines

**原文链接**: [https://boydkane.com/essays/llms-could-control-their-host-machines-by-exploiting-inference-engines](https://boydkane.com/essays/llms-could-control-their-host-machines-by-exploiting-inference-engines)

摘要：文章探讨了恶意大语言模型（LLM）可能通过攻击其推理引擎所在宿主机（GPU服务器）的安全风险。推理引擎（如vLLM、SGLang）负责将模型输出的token解析为响应，若解析逻辑存在漏洞，LLM可输出特殊token序列触发任意代码执行。文中列举真实案例：vLLM的XML工具解析器曾将参数直接传入eval()导致远程代码执行（CVE-2025-9141），且开发者曾无视安全警告强行合并相关代码。推理引擎因支持数百种模型架构和复杂聊天模板，解析过程极易出错，类似“将普通文本误判为推理块”的bug已实际发生。多模态输出虽增加攻击面，但当前媒体token解码链尚未构成主要威胁。LLM若能阅读推理引擎源码，可能自行发现漏洞并利用；还可将恶意token序列存入文件或URL，形成持久化提示注入，使其他LLM在读取上下文时触发攻击。随着开源模型部署于更缺乏审查的引擎，风险上升。防御建议包括：将GPU计算与token解析分离到不同主机，GPU主机仅输出logits；限制GPU主机权限，并将其产生的所有数据视为不可信。

---

## 7. 欧洲新包装法规正在扼杀创客与微型创业者

**原文标题**: How Europe is killing makers and micro-entrepreneurs

**原文链接**: [https://lectronz.com/u/lectronz/articles/how-europe-is-killing-makers-and-micro-entrepreneurs](https://lectronz.com/u/lectronz/articles/how-europe-is-killing-makers-and-micro-entrepreneurs)

摘要：欧洲新《包装和包装废弃物法规》（PPWR）将于2026年8月生效，要求生产者对包装废弃物负责。虽然初衷合理，但实施方式对微型企业极其不利：各国规则碎片化，卖家在每个欧盟国家都需单独注册和缴费，导致合规成本远高于包装本身的环境贡献。以一位希腊工程师为例，他一年仅向四个国家卖出少量产品，就需承担约1150欧元行政费用，而对应的包装重量仅半公斤。法规迫使微型卖家退出欧盟市场，转而向美国销售，欧盟反而失去本地创新活力。作者提出三项解决方案：设立欧盟统一的“最低门槛”豁免小型卖家；创建欧盟EPR一站式服务中心（类似VAT OSS）；允许市场平台代表所有微型卖家集体履行义务。文章还提到，欧盟委员会已部分认识到问题，提议暂缓“授权代表”要求至2035年，但尚未通过且只解决部分问题。作者呼吁读者签署请愿书、向欧盟反馈意见，以保护创客和微型企业生态。

---

## 8. Jabber/XMPP：25年数字独立

**原文标题**: Jabber/XMPP: 25 Years of Digital Independence

**原文链接**: [https://gultsch.de/posts/25-years-of-digital-independence/](https://gultsch.de/posts/25-years-of-digital-independence/)

摘要：文章主张应将数字通信视为基础设施，强调开放标准对实现互操作性和供应商独立的重要性。作者批评Signal、Wire、Threema等注重隐私的通信应用仍是封闭的“围花园”，不与其他服务互操作；仅靠开源不足以保障基础设施安全。欧洲推动数字主权时，不应简单用欧洲企业替代美国企业，而应追求集体所有权和可替换性。文章对比了Matrix与XMPP：Matrix由Element公司主导，规范受其控制，缺乏真正的开放标准治理；而XMPP起源于25年前的Jabber，经IETF标准化，并由XMPP标准基金会（XSF）管理扩展协议（XEP）。XMPP通过XEP适应移动时代，支持OMEMO加密、流管理、频道绑定等特性，拥有多个独立实现。文章认为，XMPP经历了时间考验，是真正符合基础设施要求的即时通信标准，而Matrix虽宣传诱人，但可能导致单一供应商锁定。作者呼吁公共部门采用真正的开放标准，而非仅开源平台。

---

## 9. 全球海洋温度创历史新高

**原文标题**: Oceans hit highest temperature on record

**原文链接**: [https://www.bbc.com/news/articles/c62m4gpnp78o](https://www.bbc.com/news/articles/c62m4gpnp78o)

摘要：最新数据显示，全球海洋表面温度再破纪录，非极地海域平均表面温度于8月某日达到21.1摄氏度，略高于2024年3月创下的21.09摄氏度。这一数据来自欧洲哥白尼气候变化服务，结合浮标、船舶和卫星测量结果。科学家指出，此次破纪录的时间点尤为引人关注，因为全球海洋平均温度通常在3月至4月达到峰值，而非8月。他们认为，这既反映了人类活动导致的气候变化持续影响，也表明厄尔尼诺现象正在增强。海洋吸收了人类温室气体排放造成的超过90%的额外热量，因此海洋变暖是气候变化的明确信号。厄尔尼诺预计将在年底前继续加强，可能进一步推高海洋温度。更热的海洋会加剧极端天气、抬高海平面并危害海洋生态，例如珊瑚礁。英国及欧洲附近海域同样异常温暖，英吉利海峡西部已持续近三年处于海洋热浪状态，7月一度比正常水平高出7摄氏度。科学家强调，这一纪录是海洋面临日益增长压力的又一清晰信号，海洋生态系统及其依赖的社区正受到越来越大的威胁。

---

## 10. Hot Chips 2026：CUDA瞄准RISC-V

**原文标题**: Hot Chips 2026: CUDA Targets RISC-V – By Chester Lam

**原文链接**: [https://chipsandcheese.com/p/hot-chips-2026-cuda-targets-risc](https://chipsandcheese.com/p/hot-chips-2026-cuda-targets-risc)

摘要：CUDA是GPU计算领域最重要的软件框架，目前支持x86-64和aarch64 CPU。Nvidia正考虑将CUDA支持扩展到RISC-V，但设置了较高门槛：要求RVA23 CPU、符合RISC-V服务器SoC与平台规范（含RAS、安全处理器等）、支持ACPI、PCIe缓存一致性及PCIe点对点通信。Nvidia强调这些额外要求是为了避免“最低公分母”问题，保证性能与软件可移植性。NVLink Fusion同样要求满足CUDA全部需求，并需与Nvidia紧密合作。作者认为，现有绝大多数RISC-V硬件难以达标，ACPI支持在aarch64领域尚且参差不齐，RISC-V的ACPI标准刚于2025年获批，普及尚需多年。未来能运行CUDA的RISC-V系统更可能是服务器而非廉价单板机。Nvidia正与SiFive合作，后者计划在Hot Chips上演示运行CUDA的系统，其规格暗示为高核心数服务器芯片。作者希望Nvidia不要完全封锁不满足要求的系统，并期望其逐步放宽条件，让更多RISC-V设备有机会运行CUDA，即使某些性能扩展或缓存一致性缺失可经由软件规避，性能代价在部分场景下也可接受。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 2 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 3 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 4 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 5 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 6 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 7 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 8 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 9 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 10 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 11 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 12 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 13 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 14 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 15 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 16 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 17 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 18 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 19 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 20 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 21 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 22 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 23 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 24 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 25 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 26 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 27 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 28 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 29 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 30 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 31 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 32 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 33 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 34 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 35 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 36 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 37 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 38 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 39 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 40 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 41 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 42 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 43 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 44 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 45 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 46 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 47 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 48 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 49 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 50 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 51 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 52 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 53 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 54 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 55 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 56 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 57 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 58 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 59 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 60 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 61 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 62 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 63 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 64 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 65 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 66 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 67 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 68 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 69 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 70 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 71 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 72 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 73 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 74 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 75 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 76 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 77 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 78 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 79 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 80 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 81 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 82 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 83 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 84 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 85 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 86 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 87 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 88 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 89 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 90 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 91 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 92 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 93 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 94 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 95 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 96 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 97 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 98 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 99 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 100 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 101 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 102 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 103 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 104 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 105 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 106 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 107 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 108 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 109 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 110 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 111 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 112 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 113 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 114 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 115 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 116 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 117 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 118 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 119 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 120 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 121 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 122 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 123 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 124 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 125 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 126 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 127 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 128 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 129 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 130 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 131 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 132 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 133 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 134 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 135 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 136 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 137 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 138 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 139 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 140 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 141 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 142 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 143 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 144 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 145 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 146 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 147 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 148 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 149 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 150 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 151 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 152 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 153 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 154 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 155 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 156 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 157 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 158 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 159 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 160 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 161 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 162 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 163 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 164 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 165 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 166 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 167 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 168 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 169 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 170 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 171 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 172 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 173 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 174 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 175 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 176 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 177 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 178 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 179 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 180 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 181 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 182 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 183 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 184 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 185 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 186 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 187 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 188 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 189 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 190 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 191 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 192 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 193 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 194 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 195 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 196 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 197 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 198 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 199 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 200 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 201 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 202 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 203 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 204 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 205 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 206 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 207 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 208 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 209 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 210 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 211 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 212 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 213 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 214 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 215 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 216 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 217 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 218 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 219 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 220 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 221 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 222 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 223 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 224 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 225 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 226 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 227 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 228 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 229 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 230 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 231 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 232 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 233 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 234 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 235 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 236 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 237 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 238 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 239 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 240 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 241 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 242 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 243 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 244 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 245 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 246 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 247 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 248 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 249 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 250 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 251 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 252 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 253 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 254 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 255 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 256 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 257 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 258 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 259 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 260 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 261 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 262 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 263 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 264 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 265 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 266 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 267 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 268 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 269 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 270 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 271 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 272 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 273 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 274 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 275 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 276 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 277 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 278 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 279 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 280 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 281 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 282 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 283 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 284 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 285 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 286 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 287 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 288 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 289 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 290 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 291 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 292 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 293 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 294 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 295 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 296 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 297 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 298 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 299 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 300 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 301 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 302 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 303 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 304 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 305 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 306 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 307 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 308 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 309 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 310 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 311 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 312 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 313 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 314 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 315 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 316 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 317 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 318 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 319 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 320 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 321 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 322 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 323 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 324 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 325 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 326 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 327 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 328 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 329 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 330 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 331 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 332 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 333 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 334 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 335 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 336 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 337 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 338 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 339 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 340 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 341 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 342 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 343 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 344 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 345 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 346 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 347 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 348 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 349 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 350 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 351 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 352 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 353 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 354 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 355 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 356 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 357 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 358 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 359 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 360 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 361 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 362 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 363 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 364 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 365 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 366 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 367 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 368 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 369 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 370 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 371 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 372 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 373 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 374 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 375 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 376 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 377 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 378 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 379 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 380 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 381 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 382 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 383 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 384 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 385 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 386 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 387 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 388 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 389 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 390 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 391 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 392 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 393 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 394 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 395 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 396 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 397 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 398 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 399 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 400 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 401 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 402 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 403 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 404 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 405 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 406 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 407 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 408 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 409 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 410 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 411 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 412 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 413 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 414 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 415 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 416 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 417 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 418 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 419 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 420 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 421 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 422 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 423 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 424 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 425 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 426 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 427 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 428 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 429 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 430 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 431 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 432 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 433 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 434 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 435 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 436 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 437 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 438 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 439 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 440 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 441 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 442 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 443 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 444 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 445 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 446 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 447 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 448 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 449 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 450 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 451 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 452 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 453 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 454 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 455 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 456 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 457 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 458 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 459 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 460 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 461 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 462 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 463 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 464 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 465 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 466 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 467 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 468 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 469 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 470 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 471 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 472 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 473 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 474 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 475 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 476 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 477 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 478 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 479 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 480 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 481 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 482 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 483 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 484 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 485 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 486 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 487 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 488 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 489 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 490 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 491 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 492 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 493 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 494 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 495 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 496 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 497 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 498 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 499 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 500 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 501 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 502 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 503 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 504 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 505 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 506 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 507 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 508 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 509 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 510 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 511 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 512 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 513 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 514 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 515 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 516 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 517 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 518 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 519 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
