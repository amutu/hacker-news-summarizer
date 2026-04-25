# Hacker News 热门文章摘要 (2026-04-25)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 1-Bit 葛饰北斋《神奈川冲浪里》（2023）

**原文标题**: 1-Bit Hokusai's "The Great Wave" (2023)

**原文链接**: [https://www.hypertalking.com/2023/05/08/1-bit-pixel-art-of-hokusais-the-great-wave-off-kanagawa/](https://www.hypertalking.com/2023/05/08/1-bit-pixel-art-of-hokusais-the-great-wave-off-kanagawa/)

文章描述了一个个人项目：将葛饰北斋的《富岳三十六景》全部36幅作品，以1-bit像素艺术形式在复古Macintosh电脑上重现。该项目始于五年前，目前处于停滞状态，目标是让每幅图像以原始Macintosh屏幕分辨率512 x 342像素呈现。创作者使用运行System 7系统的Quadra 700或PowerBook 100电脑，以及Aldus SuperPaint 3.0软件，受怀旧情怀驱动，力求捕捉北斋的意境与苏珊·凯尔（尤其是其用MacPaint绘制的“日本女士”封面）开创的像素美学。首件分享的作品是《神奈川冲浪里》（该项目创作的第二或第三幅作品）。该作品采用知识共享许可协议（CC BY-NC-ND 4.0），并提供适用于640 x 480 Macintosh桌面的PNG/PICT压缩包下载。项目的动力源于精准像素放置带来的“心流状态”与满足感。

---

## 2. 《自由通用建造套件》

**原文标题**: The Free Universal Construction Kit

**原文链接**: [https://fffff.at/free-universal-construction-kit/](https://fffff.at/free-universal-construction-kit/)

**摘要：**

由F.A.T.实验室与Sy-Lab共同开发的“通用自由拼装套件”包含近80个可3D打印的转接件，实现乐高、万能工匠、K'Nex及林肯积木等十款经典儿童建构玩具的跨界兼容。该套件允许不同系统的积木组件自由组合，激发混合型创意游戏，并随儿童成长延长玩具使用周期。

所有转接件均通过光学比较仪实现高精度逆向工程。3D模型以.STL格式在Thingiverse等平台免费下载，支持个人3D打印机直接打印，但作者指出2012年左右的桌面级打印机可能因精度不足导致契合度欠佳。

该项目被定位为“草根互操作性解决方案”——类似VLC媒体播放器——旨在突破企业封闭生态与跨品牌兼容性缺失的桎梏。开发者认为，任何玩具公司都不会主动生产此类套件，因为闭合系统更利于各品牌利益。他们主张，在家打印转接件属于受保护的合理使用范畴。为避免专利纠纷，该套件主要适配已过专利保护期的老款玩具；针对Zoob与Zome的转接件将分别推迟至其专利到期日（2016年与2022年）后发布。

该套件采用知识共享署名-非商业性使用-相同方式共享许可协议，禁止商业化批量生产，但鼓励个人使用及通过服务商代工制作。

---

## 3. 全新10GbE USB适配器：更凉爽、更小巧、更实惠

**原文标题**: New 10 GbE USB adapters are cooler, smaller, cheaper

**原文链接**: [https://www.jeffgeerling.com/blog/2026/new-10-gbe-usb-adapters-cooler-smaller-cheaper/](https://www.jeffgeerling.com/blog/2026/new-10-gbe-usb-adapters-cooler-smaller-cheaper/)

**概述：**  
基于RTL8159的新型10GbE USB适配器（如WisdPi售价80美元型号）相比笨重的Thunderbolt 10G适配器，更凉爽、小巧且便宜。但其性能严重依赖USB接口能力。测试中，仅配备USB 3.2 Gen 2x2（20 Gbps）接口的台式机实现了满速10 Gbps（下行约9.5 Gbps）。其他设备（Framework 13、MacBook）的USB 3.1/3.2 Gen 2（10 Gbps）接口仅达到6–7 Gbps。Mac无需驱动但错误识别连接速度；Windows需安装Realtek驱动。

**价值分析：** 80美元售价是5Gbps适配器（30美元）的两倍，但不到Thunderbolt 10G适配器的一半。适合拥有20 Gbps USB接口且需要紧凑型RJ45 10G网络的用户。需要满速10G或SFP+接口的用户仍应选择Thunderbolt。对多数用户而言，2.5G或5G适配器更具性价比。

**散热表现：** 适配器保持低温（42.5°C），远低于发热严重的Thunderbolt竞品；USB 2模式下功耗约0.86W（因测量工具限制未测试满速功耗）。AliExpress提供类似选择，而PCIe卡可绕过USB瓶颈。

---

## 4. 使用编码辅助工具重振你曾打算放弃的项目

**原文标题**: Using coding assistance tools to revive projects you never were going to finish

**原文链接**: [https://blog.matthewbrunelle.com/its-ok-to-use-coding-assistance-tools-to-revive-the-projects-you-never-were-going-to-finish/](https://blog.matthewbrunelle.com/its-ok-to-use-coding-assistance-tools-to-revive-the-projects-you-never-were-going-to-finish/)

**摘要：** 作者描述了利用AI编码工具（具体是Claude Code）重振一个停滞的个人项目：一个让YouTube Music兼容OpenSubsonic API的适配层，从而使其能被任何支持Subsonic协议的客户端使用。

**关键要点：**
- 未完成的“积读”项目（有意但未实现）原本旨在搭建YouTube Music与OpenSubsonic客户端（Navidrome、Feishin、Symfonium）之间的桥梁，使用ytmusicapi获取元数据、yt-dlp处理流媒体。
- 作者设定了清晰的约束：基于FastAPI/Pydantic的技术栈、OpenAPI规范，以及为AI编写的CLAUDE.md文件中详细约定的编写规范。
- 工作流程：计划模式、迭代提示、检查遗漏、使用搜索工具、在步骤间清除上下文。MVP（搜索、流媒体播放）在“一个简短的晚上”即告完成。
- 后续涉及缓存、使用SQLite管理元数据、将流媒体歌曲存至磁盘以及错误处理——这些都是作者之前手工回避的任务。
- 尽管印象深刻，作者对AI造成的“技能退化”表示担忧，并将项目区分为学习型（第一类）与愿望实现型（第二类）。本项目属于第二类，因此AI辅助成为完成它的合理工具。
- 要点总结：AI工具有效地复活了被长期搁置的项目，但用户仍需参与能力拓展项目（第一类）以避免技能退化。

---

## 5. 马丁·高尔韦1980年代康懋达64游戏音乐源文件

**原文标题**: Martin Galway's music source files from 1980's Commodore 64 games

**原文链接**: [https://github.com/MartinGalway/C64_music](https://github.com/MartinGalway/C64_music)

**概要**

2026年4月14日，作曲家马丁·高尔威发布了其上世纪80年代经典Commodore 64游戏的原版音乐源文件。该文件包内含其音乐播放器的代码，使爱好者能够阅读、分析并理解他的创作过程。

高尔威明确允许他人对这些文件进行重组、修改并创作新音乐，唯一条件是注明他为原作者。他澄清了当前的版权归属：尽管这些音乐创作于80年代时他并不拥有版权，但后来他已从英宝格集团手中购得版权。

此次发布详述了两代音乐播放器技术。1984年至1987年中使用的“第一代”播放器为《威兹球》等游戏提供音乐支持。“第二代”播放器最初为游戏《雅典娜》开发，后应用于《传奇时代》和《太空虫》等作品。此次发布为深入了解高尔威标志性游戏音乐编程的技术演变提供了独特视角。

---

## 6. 德斯蒙德·莫里斯去世

**原文标题**: Desmond Morris has died

**原文链接**: [https://www.bbc.com/news/articles/c51y797v200o](https://www.bbc.com/news/articles/c51y797v200o)

著名动物学家、作家、电视节目主持人德斯蒙德·莫里斯去世，享年98岁。他因1967年出版的《裸猿》一书而闻名，该书颇具争议地将现代人类定性为本质上与猿类无异，主张从进化而非文化角度解释人类行为。这部著作成为性革命时期的轰动之作，销量达2000万册。

莫里斯1928年出生于斯温顿附近，攻读动物学专业，开创了行为学——即观察动物行为的研究领域。他曾担任伦敦动物园哺乳动物馆馆长，并成为极具天赋的电视主持人。他还曾给一只名为"刚果"的黑猩猩画笔，探索动物美学，此举令毕加索欣喜不已。

《裸猿》运用达尔文逻辑解读人类的性爱、争斗与饮食行为，认为交配能够加强伴侣关系。该书招致批评：女权主义者反对他将男性主导进化论的刻板描述，许多学者指责其著作缺乏科学依据。即便如此，莫里斯仍继续创作了《人类动物园》与《亲密行为》等作品，研究肢体语言与足球迷的仪式行为。他还曾拒绝为《老大哥》节目提供构想。

1994年，他制作了电视系列片《人类动物》，自称这是"个人视角的观察"。莫里斯于4月20日去世，其子仍健在。他被誉为伟大的科学普及者，帮助人类重新定位自己在自然界中的位置。

---

## 7. Show HN: Kloak——让K8s工作负载远离密钥的密钥管理器

**原文标题**: Show HN: Kloak, A secret manager that keeps K8s workload away from secrets

**原文链接**: [https://getkloak.io/](https://getkloak.io/)

**Kloak：一款基于 eBPF 的 Kubernetes 密钥管理器简介**

Kloak 是一款面向 Kubernetes 的开源、无代理密钥管理工具，它利用纯 eBPF 技术将凭证与应用程序代码隔离。该工具在 Linux 内核层面拦截 HTTPS 流量，仅在请求即将离开 Pod 时，才将经过哈希处理的占位符（基于 ULID）替换为真实密钥。

**核心特性：**
- **设计安全：** 应用程序始终无法接触真实密钥，从而防止因进程被攻破而导致泄露。
- **零代码改动：** 适用于任何语言或框架；开发人员在配置中使用哈希占位符，而非真实凭证。
- **零延迟影响：** eBPF 运行在内核空间，几乎不增加额外开销。
- **原生支持 Kubernetes：** 通过标签（例如 `getkloak.io/enabled: "true"`）与标准 Kubernetes Secret 集成。
- **主机限制：** 对特定主机可使用哪些密钥进行精细化控制。

**工作原理：**
1. 给现有的 Kubernetes Secret 添加标签；Kloak 会为每个 Secret 值生成一个唯一的哈希占位符。
2. 在应用配置中引用该哈希（例如 `Authorization: kloak:MPZVR3GHWT4E6YBCA01JQXK5N8`）。
3. 当应用发起 HTTPS 请求时，Kloak 通过 eBPF 拦截流量，并在转发前将占位符替换为真实密钥。

**架构：** 控制平面（控制器）负责监控 Secret 并管理 eBPF 程序，数据平面则在应用 Pod 的内核层面运行。

**快速开始：** 通过 Helm 安装（`helm install kloak kloak/kloak`）。遵循 AGPL-3.0 协议，完全开源。

---

## 8. 哪个更重要：更多的参数还是更多的计算？（2021）

**原文标题**: Which one is more important: more parameters or more computation? (2021)

**原文链接**: [https://parl.ai/projects/params_vs_compute/](https://parl.ai/projects/params_vs_compute/)

本文挑战了“模型性能仅取决于参数量”的常见假设，主张将计算量与参数量视为独立因素，并提出了两种互补方法来探究这一区别。

首先，**哈希层**通过使用固定且无需学习的哈希机制，在混合专家（MoE）架构中将输入令牌路由至特定专家，从而在不增加额外计算的前提下提升参数量。这种稀疏化方法使拥有数十亿参数（如12.8亿）的模型对每次输入仅调用其中一小部分（如17%），性能优于Switch、BASE等基于学习的路由基线方法，同时提升了训练效率。

其次，**阶梯式注意力**通过重复使用相同的Transformer层来增加计算量而不引入新参数。**阶梯模型**堆叠多个相同的Transformer，提升了语言任务表现；**递进阶梯模型**则逐层延后每个Transformer的时间步，实现循环状态追踪，可解决标准前馈模型无法完成的复杂任务。

这两种方法相互独立且可组合：哈希层与阶梯模型结合的效果显著优于单独使用任一方法。两者共同实现了对参数量与计算量的精细控制，为构建更强大且资源高效的模型开辟了新的架构可能性。

---

## 9. 法国80年代电视加密系统Discret 11

**原文标题**: Discret 11, the French TV encryption of the 80s

**原文链接**: [https://fabiensanglard.net/discret11/](https://fabiensanglard.net/discret11/)

**摘要：**  
本文介绍了上世纪80年代法国Canal+电视频道用于限制非付费用户收看的加密系统“Discret 11”。与现代数字加密不同，Discret 11利用模拟电视信号，基于11位密钥生成的伪随机数（故得此名），对每行扫描线进行水平延迟。线性反馈移位寄存器（LFSR）决定每行延迟0、13或26像素，左侧以黑色填充。由于广播信号包含不可见的黑色边框，丢失的图像数据得以恢复。  

解码器采用Intel 8048微控制器，通过特定行（第310行和第622行）的亮度信号实现同步，并利用16位哈希码将8位用户密钥与解码器序列号结合。这防止了暴力破解和密钥共享。音频通过调幅方式进行了简单加扰。  

密钥每月通过邮寄更新，且存在未启用的分级观众系统，允许按等级设置密钥（如电影、体育）。月末过渡期间设有“免费模式”密钥（1337）。  

尽管设计简单，Discret 11很快被破解。1984年11月4日系统上线两小时内，2%的电视机便出现不兼容问题。同年计划泄露，促使盗版解码器出现。Canal+于1992年以Nagravision替代Discret 11，并于1995年彻底停用。该频道后来取得巨大成功，并推出了CanalSatellite。

---

## 10. 《北斋与密铺艺术》

**原文标题**: Hokusai and Tesselations

**原文链接**: [https://dl.ndl.go.jp/pid/1899550/1/11/](https://dl.ndl.go.jp/pid/1899550/1/11/)

本文似乎是一条元数据记录或标题条目，而非完整文章。其内容涉及日本**国立国会图书馆数字馆藏（NDL Digital Collections）**。关键信息如下：

- **来源：** 国立国会图书馆（日本国家图书馆）
- **服务：** 用于搜索和浏览数字资料的在线平台
- **内容：** 该馆收集并保存的数字资料

标题《北斋与镶嵌图案》在所提供的文本中未作详细说明，表明该条目可能链接至特定馆藏或作品，但文本本身仅描述了该数字图书馆服务的概况。因此，核心信息为：NDL数字馆藏提供对已保存数字资料的可检索访问。

---

## 11. GPT-5.5 生物漏洞赏金计划

**原文标题**: GPT‑5.5 Bio Bug Bounty

**原文链接**: [https://openai.com/index/gpt-5-5-bio-bug-bounty/](https://openai.com/index/gpt-5-5-bio-bug-bounty/)

无法访问文章链接。

---

## 12. 基于Go WebAssembly和grdp构建的网页版RDP客户端

**原文标题**: A web-based RDP client built with Go WebAssembly and grdp

**原文链接**: [https://github.com/nakagami/grdpwasm](https://github.com/nakagami/grdpwasm)

**grdpwasm 概述：基于 Web 的 RDP 客户端**

grdpwasm 是一个基于 Web 的远程桌面协议（RDP）客户端，使用 Go WebAssembly 和 grdp 库在浏览器中运行，无需任何插件。

**架构：** 浏览器（WASM）通过 WebSocket 连接到 Go 代理，该代理再将连接桥接到目标 RDP 服务器的 TCP 端口。此设计绕过了浏览器对原始 TCP 套接字的限制。

**

**构建与运行：** 克隆仓库，运行 `make all`，然后运行 `make serve`。这将在 8080 端口启动一个代理服务器，用于提供静态文件并处理 WebSocket 到 TCP 的转换。

**使用方法：** 打开 `http://localhost:8080`，填写连接表单（主机、端口、域、用户、密码、分辨率），然后点击连接。远程桌面将显示在一个 canvas 元素中。

**功能特性：**
- 支持完整的键盘和鼠标（通过 RDP 转发扫描码）
- 通过 Web Audio API 实现基于 RDPSND 的音频流（PCM 44100 Hz，立体声）
- 提供断开按钮以结束会话

**安全性：** 代理接受来自任何来源的连接；建议仅在受信任的网络中使用。凭据通过 WebSocket 传输，因此在不受信任的网络中请使用 HTTPS/WSS（通过 nginx 等反向代理）。

**开发：** 提供独立的 make 目标用于构建 WASM 二进制文件、代理、wasm_exec.js 以及清理。

**许可证：** GPLv3

---

## 13. 评论与批准拉取请求

**原文标题**: Commenting and approving pull requests

**原文链接**: [https://www.jakeworth.com/posts/on-commenting-and-approving-pull-requests/](https://www.jakeworth.com/posts/on-commenting-and-approving-pull-requests/)

文章主张在拉取请求（PR）评审中采取平衡的方式：批准PR的同时留下非阻塞性评论。作者解释道，评论（无论是吹毛求疵、建议、疑问还是赞赏）都能体现深思熟虑的参与，并可能发现误解或风险，而批准则代表对团队的信任，相信他们会考虑并落实有用的反馈。

该工作流程的关键前提包括：信任团队能对评论采取行动、具备快速的持续集成和团队执行能力，以及适当的仓库配置（例如避免在新增提交时重置批准状态的设置）。使用低配置工具（如代码检查器和自动格式化工具）可减少琐碎评论。作者建议采用常规评论标签（如`nitpick:`、`suggestion:`）来明确意图。

对于阻塞性问题，作者根据具体情况判断，指出此类反馈往往暗示上游存在偏差。目标是通过高度的团队协同，使大多数反馈都成为非阻塞性的。

文章鼓励怀疑者与值得信赖的同事尝试这一方法，将其视为一种优先关注进展而非流程的辅导实践——相当于在说：“我在意这次变更，并告诉你如何能做得更好。由你决定何时发布。”

---

## 14. 互相辩论以优化决策的人工智能代理

**原文标题**: AI agents that argue with each other to improve decisions

**原文链接**: [https://github.com/rockcat/HATS](https://github.com/rockcat/HATS)

**HATS：结构化辩论的多智能体AI系统**

HATS是一套基于“六顶思考帽”框架、通过结构化分歧提升决策质量的AI系统。与大多数AI工具仅提供单一答案不同，HATS组建了由六个专业智能体组成的委员会：

- **白帽**——事实、缺口、假设
- **红帽**——人文影响、直觉
- **黑帽**——风险、失败模式
- **黄帽**——优势、机遇
- **绿帽**——创意、替代方案
- **蓝帽**——引导、综合

这些智能体相互辩论，应对大语言模型常见的过度自信、确认偏差与盲点等弱点。

**核心功能：**
- 多智能体编排，支持OpenAI、Claude、Gemini与本地模型
- 实时会议，含3D虚拟形象、语音（Piper TTS）与唇形同步（Rhubarb）
- 五种会议类型：每日站会、冲刺规划、回顾、评审、临时会议
- 自管理看板，支持自动化任务分派
- MCP集成：生产力工具、文件、网络、数据库及GitHub
- 隔离的项目环境，每个项目目标注入智能体提示词
- 四面板仪表盘：实时状态、拖拽看板与工具控件

**技术栈：** Node.js/TypeScript后端，Three.js虚拟形象，纯HTML/CSS/JS前端（无需构建步骤）。安装需Node.js 20+、LLM提供商的API密钥，以及可选的Piper TTS/Rhubarb（用于语音与唇形同步）。

---

## 15. 异步编程的承诺与现实

**原文标题**: What async promised and what it delivered

**原文链接**: [https://causality.blog/essays/what-async-promised/](https://causality.blog/essays/what-async-promised/)

本文追溯了为应对C10K问题（处理数千个并发连接）而演进的并发模型。文章描述了三次技术浪潮，每次在解决前一波最大问题的同时引入了新问题。

**1. 回调函数**通过非阻塞I/O和事件循环（如Node.js、Nginx）解决了每个连接对应一个线程模型导致的资源耗尽问题。但由此产生了"回调地狱"——控制流颠倒、错误处理碎片化，且缺乏内置的取消机制。

**2. Promise/Future**将异步结果转化为可组合对象（如JavaScript Promise、Java CompletableFuture），提升了开发体验。这扁平化了嵌套回调，并通过`.catch()`统一了错误处理。但Promise引入了：单次语义（不适用于流式场景）、复杂流程的组合笨拙、静默吞没错误，以及函数返回值为普通值或Promise的"类型分裂"问题。

**3. Async/Await**使异步代码呈现顺序执行形态，为线性操作带来重大易用性提升（被C#、JavaScript、Python、Rust采用）。但由此产生了"函数着色"问题——异步函数（红色）无法直接从同步函数（蓝色）调用而无须额外仪式，导致代码库的病毒式蔓延。这引发了生态碎片化（如Rust中相互竞争的运行时）、库维护负担，以及Rust异步编程中"Future锁死"等新型缺陷。

一个隐蔽陷阱：async/await的顺序表象掩盖了并行性，开发者需手动识别独立操作并借助`Promise.all`等组合器。

文章指出，Go（协程）、Java（Project Loom虚拟线程）和Zig等语言选择替代方案以避免着色问题，暗示async/await的代价可能超过其收益。

---

## 16. 中更新世早期古人类使用木材的见解

**原文标题**: Insights into firewood use by early Middle Pleistocene hominins

**原文链接**: [https://www.sciencedirect.com/science/article/pii/S0277379126001824](https://www.sciencedirect.com/science/article/pii/S0277379126001824)

**文章摘要：**

由于出版商设置的付费墙限制，无法直接获取文章链接。但根据标题以及此类研究（发表于《第四纪科学评论》）的典型内容，该文章很可能探讨了早中更新世古人类（约70万至40万年前的先祖人类）如何选择和使用木柴。

关键点可能包括：
- 分析考古遗址中的木炭残留物，以确定哪些树种被燃烧。
- 证据表明古人类对木柴种类做出了有意识的选择，可能优先考虑某些具有特定燃烧特性（如高热值、燃烧时间长或烟雾少）的树种。
- 对古人类认知能力、资源管理以及适应寒冷或烹饪需求的启示。
- 将木柴使用与当地生态和季节性可得性联系起来的特定遗址数据。

如需准确详细的摘要，请提供全文、摘要或可访问的版本。

---

## 17. 只有一方将成为MS-DOS的真正继承者——Windows 2.x

**原文标题**: Only one side will be the true successor to MS-DOS – Windows 2.x

**原文链接**: [https://blisscast.wordpress.com/2026/04/21/windows-2-gui-wonderland-12a/](https://blisscast.wordpress.com/2026/04/21/windows-2-gui-wonderland-12a/)

以下是文章的精简摘要：

本文介绍了**Windows 2.x**，它于1987年12月9日发布，是运行在MS-DOS上的主要图形用户界面外壳。与完整操作系统不同，它增加了桌面图标、重叠窗口和键盘快捷键。微软与**OS/2**（在姊妹文章中介绍）同时开发，意图让OS/2最终取代它。

开发由**坦迪·特罗尔**领导，他只有八个月时间完成该项目。他组建了一支包括图形设计师在内的专门团队，以确保界面用户友好且一致，同时保持与OS/2用户界面的兼容性。

微软发布了两个版本：**Windows/286**（适用于8086/286处理器）和**Windows/386**（针对80386优化，提供保护模式、抢占式多任务处理，并支持超过640 KiB的扩展内存）。2.1版（1988年5月）增加了HIMEM.SYS，并要求配备硬盘。

**苹果于1988年起诉微软**，声称Windows 2.03抄袭了Macintosh的“外观和感觉。”法院分别审查了各个用户界面元素，得出结论认为只有10项可能存在问题，但后来裁定它们不受版权保护。施乐也起诉苹果，但未能成功。

软件包括记事本、卡片文件、计算器，以及捆绑版的**Word和Excel**。系统要求不高（8088 CPU、512KB内存、MS-DOS 3.0以上、EGA/VGA）。Windows 2.x于2001年12月31日停售。

---

## 18. Lute：Luau 的独立运行时

**原文标题**: Lute: A Standalone Runtime for Luau

**原文链接**: [https://lute.luau.org/](https://lute.luau.org/)

**《Lute：Luau的独立运行时》摘要**

Lute是为Luau编程语言设计的独立运行时，将其应用范围从游戏开发扩展至通用计算。文章强调，Lute为常见任务提供了丰富的内置API，使开发者能够将Luau应用于更广泛的场景。

核心功能包括：**文件系统访问**（读写文件和目录）、**HTTP网络**（发起网络请求）、**密码学**（加密、哈希及安全操作）以及**进程管理**（运行与控制系统进程）。这使得Lute成为脚本编写、自动化、后端服务及工具开发的实用工具，同时充分发挥Luau的高性能与安全特性。

通过原生提供这些API，Lute消除了对外部库或复杂配置的依赖，为追求轻量、快速且安全的脚本环境的开发者提供了无缝体验。本质上，Lute将原本主要用于Roblox的Luau语言，转变为一款适用于广泛软件开发任务的通用运行时。

---

## 19. 纯文本已存在数十年，并将继续沿用。

**原文标题**: Plain text has been around for decades and it’s here to stay

**原文链接**: [https://unsung.aresluna.org/plain-text-has-been-around-for-decades-and-its-here-to-stay/](https://unsung.aresluna.org/plain-text-has-been-around-for-decades-and-its-here-to-stay/)

本文探讨了纯文本（ASCII）图表工具（如**Mockdown**（网页/移动端）、**Wiretext**（网页/桌面端）和**Monodraw**（Mac））持久不衰的现实意义。这些工具支持在源代码中嵌入低调的图表，并正逐渐成为生成式AI的入口点。

关键要点：
- 它们代表了20世纪70至80年代TUI（如Turbo Vision）的现代复兴，并融入了网页访问、鼠标/触控板支持及现代性能优化。
- 其价值在于**有意的约束**——作者认为随着AI发展，这一实践将愈发重要。自我约束目前能简化工作流程，而在AI时代，它将使任务更具挑战性和意义。
- 等宽纯文本提供了**可移植性**，以及一个强大且广为人知的编辑界面。
- 这些工具虽被通俗地称为“ASCII”（如同将循环动画统称为“GIF”），使用它们的体验被形容为“有趣”。

本文盛赞文本编辑是一种持久而强大的交互界面，并认为ASCII工具既承载怀旧情怀，又代表着前瞻性的实践方向。

---

## 20. 帕尼帕特：莫卧儿帝国的崛起

**原文标题**: Panipat: The rise of the Mughals

**原文链接**: [https://www.historytoday.com/archive/feature/panipat-rise-mughals](https://www.historytoday.com/archive/feature/panipat-rise-mughals)

**杰里米·布莱克《帕尼帕特：莫卧儿帝国的崛起》摘要**

本文探讨了16世纪帕尼帕特战役在确立莫卧儿帝国为北印度主导力量中的关键作用。帝国由中亚统治者巴布尔（1483-1530）建立，他在失去故土于乌兹别克人后，将目光转向印度。**1526年**，在**第一次帕尼帕特战役**中，巴布尔的1.2万军队击败了规模远为庞大的洛迪军队。其成功依赖于创新战术：使用火绳枪兵和野战火炮，结合防御性车阵和灵活的骑兵突袭，从而化解了敌军战象与骑兵的威胁。此战导致德里与阿格拉沦陷。

巴布尔随后在坎努亚战役（1527年）中击败拉杰普特联盟。巴布尔去世后，其子胡马雍在位期间莫卧儿势力削弱，他于1540年被阿富汗统治者舍尔沙击败，被迫流亡。苏尔王朝衰落后，胡马雍于1555年收复德里，但次年去世。

其子**阿克巴**（时年少年）在**第二次帕尼帕特战役**（1556年）中巩固了帝国。他的摄政王拜拉姆汗击败了依赖战象的苏尔将领赫穆。在赫穆受伤后，莫卧儿骑射手大显神威。此役恢复了莫卧儿对北印度的控制。总之，文章强调了莫卧儿军队的适应性——尤其是对骑射、联合作战战术与后勤的运用——是其崛起与称霸的关键。

---

## 21. 《Mine：面向Coalton与Common Lisp的集成开发环境》

**原文标题**: Mine, an IDE for Coalton and Common Lisp

**原文链接**: [https://coalton-lang.github.io/mine/](https://coalton-lang.github.io/mine/)

**摘要：Coalton 与 Common Lisp 的 Mine 集成开发环境**

Mine 是一款针对 Coalton 和 Common Lisp 的集成开发环境（IDE），支持 Windows、macOS 和 Linux 平台。它提供两个版本：**mine-app**（适用于 Windows/macOS 的独立软件包）和 **mine-core**（适用于所有平台的终端版本，需支持 Unicode 字体和 Kitty 键盘协议）。

主要功能包括：
- **集成 REPL**：可即时执行代码（“代码投射”）
- **交互式调试器**：提供错误详情、修正选项及堆栈跟踪
- **内联诊断**：直接在编辑器中显示错误、警告及优化提示
- **Coalton 类型提示与自动补全**：展示完整的数据类型和函数签名
- **内置结构编辑教程**：约 5 分钟即可学会 ParEdit 风格编辑
- **全原生代码编译**：无需虚拟机或解释器，性能最大化

该 IDE 支持在同一项目中混合使用 Coalton（强类型、静态类型、函数式编程）与 Common Lisp（动态类型、面向对象），使开发者可根据项目需求灵活开发。

---

## 22. 美国地热技术突破或开启150吉瓦能源革命

**原文标题**: America's Geothermal Breakthrough Could Unlock a 150-Gigawatt Energy Revolution

**原文链接**: [https://oilprice.com/Alternative-Energy/Geothermal-Energy/Americas-Geothermal-Breakthrough-Could-Unlock-a-150-Gigawatt-Energy-Revolution.html](https://oilprice.com/Alternative-Energy/Geothermal-Energy/Americas-Geothermal-Breakthrough-Could-Unlock-a-150-Gigawatt-Energy-Revolution.html)

**摘要：**

本文重点介绍了由增强型地热系统（EGS）驱动的美国地热能源潜在变革。尽管美国目前仅有2.7吉瓦的传统地热发电能力，但EGS——采用类似水力压裂的水平钻井技术来创建热液储层——可释放出高达150吉瓦的清洁、稳定电力。

关键进展包括总部位于休斯顿的**Fervo Energy**公司引领该领域。Fervo正在犹他州建设500兆瓦的Cape Station项目（全球最大的EGS设施），并在内华达州建设115兆瓦的Corsac Station项目。该公司近期已向纳斯达克提交首次公开募股申请（股票代码"FRVO"），并从Turboden America公司获得了1.75吉瓦的涡轮机产能。Fervo估计，在其租赁的60万英亩土地上，可开发超过42吉瓦的发电能力。

特朗普政府提供的支持（通过美国能源部向下一代地热技术拨款1.715亿美元）与其对其他可再生能源的态度形成对比。文章将EGS定位为通过实现能源来源多元化、超越化石燃料，对于电网稳定性、能源安全以及降低消费者成本至关重要的技术。

---

## 23. 人工智能的Lambda演算基准测试

**原文标题**: Lambda Calculus Benchmark for AI

**原文链接**: [https://victortaelin.github.io/lambench/](https://victortaelin.github.io/lambench/)

**LamBench 简介**

LamBench 是一个基准测试套件，旨在利用基于 lambda 演算的问题，测试人工智能系统的智能性、速度和优雅性。该套件由 Victor Taelin (v1) 托管于 GitHub，提出了一系列数学与计算挑战（包括矩阵运算），需要符号推理和函数式编程技能。

该基准侧重于衡量 AI 处理抽象、递归和纯函数的能力，而非依赖大型数据集或模式匹配。“智能”指解决复杂逻辑问题的能力；“速度”衡量计算效率；“优雅”则评估解决方案的简洁性与清晰度。

通过利用 lambda 演算（一种形式化的计算系统），LamBench 旨在为 AI 模型提供严格、可复现的测试，区分“记忆”与真正的理解。它适用于希望评估其 AI 系统超越常规基准测试的深度推理能力的研究人员和开发者。该代码库包含问题集和评估标准，以确保测试的一致性。

---

## 24. 将IBM量子后端替换为/dev/urandom

**原文标题**: Replace IBM Quantum back end with /dev/urandom

**原文链接**: [https://github.com/yuvadm/quantumslop/blob/25ad2e76ae58baa96f6219742459407db9dd17f5/URANDOM_DEMO.md](https://github.com/yuvadm/quantumslop/blob/25ad2e76ae58baa96f6219742459407db9dd17f5/URANDOM_DEMO.md)

**摘要：** 本文描述了仅使用 `/dev/urandom`（经典随机噪声）且无需任何量子硬件，成功复现了所谓针对椭圆曲线离散对数问题（ECDLP）的“Q-Day Prize”量子攻击。

作者将 `projecteleven.py` 代码中的 IBM 量子后端替换为 `os.urandom`，其余代码（电路构建、提取流程、验证）均保持不变。修改后的版本恢复了原始 IBM 硬件运行所报告的所有私钥，包括赢得 1 个比特币的旗舰级 17 位挑战。

主要发现：
- 所有小型挑战（4-10 位）均首次尝试使用 `/dev/urandom` 即成功恢复。
- 16 位挑战在 5 次尝试中成功 4 次，17 位挑战在 5 次尝试中成功 2 次（成功率约 40%）。
- 理论分析表明，当 `shots >> n`（群阶）时，仅凭随机噪声即可高概率恢复密钥——与实验结果吻合。

作者解释称，提取算法仅依次尝试每次采样的候选值，若其通过经典验证器（`d_cand·G == Q`）则接受。在均匀随机噪声条件下，当采样次数超过群阶时，随机命中的概率变得显著。

**结论：** 声称的量子攻击实际上是对均匀随机候选值进行的经典验证，无需任何量子硬件即可复现。量子电路实现的工程是真实的，但关于量子 ECDLP 密钥恢复的密码分析声称是无效的。

---

## 25. 通过过度思考、范围蔓延和结构差异来破坏项目

**原文标题**: Sabotaging projects by overthinking, scope creep, and structural diffing

**原文链接**: [https://kevinlynagh.com/newsletter/2026_04_overthinking/](https://kevinlynagh.com/newsletter/2026_04_overthinking/)

**总结：** 凯文分享了因过度思考、范围蔓延和不必要研究导致项目失败的教训。他对比了两种结果：快速搭建周末木工搁板（成功、专注）与花费数小时研究结构差异工具却未能解决最初需求（更好的Emacs差异工作流）。关键在于内化个人成功标准——而非追求宽泛范围或现有成果。

他观察到“范围蔓延守恒定律”：即便有LLM加速，额外功能和岔路探索仍会抵消收益。在一个模糊路径搜索项目中，他在实现不必要的锚点功能上浪费数小时，才意识到根本不需要。

受到difftastic未能匹配差异中实体的触发，他继而调研了结构/语义差异工具（difftastic、semanticdiff.com、gumtree、mergiraf、weave、autochrome）。他的真实目标是用实体级差异在Emacs中审查LLM生成的代码，类似Magit但针对类型/函数。他决定用tree-sitter和贪心匹配构建最小原型，杜绝过度设计。

较长期项目（Clojure-Rust融合语言、CAD工具）因目标模糊仍陷于“结果二”状态。他推崇“直接行动”而非深思熟虑，重视迭代创造而非精雕细琢。文末附有关于Tyvek、家具设计和编程参考资料的杂项链接。

---

## 26. Niri 26.04：可滚动平铺式Wayland合成器

**原文标题**: Niri 26.04: Scrollable-tiling Wayland compositor

**原文链接**: [https://github.com/niri-wm/niri/releases/tag/v26.04](https://github.com/niri-wm/niri/releases/tag/v26.04)

Niri 26.04 是可滚动平铺式 Wayland 合成器的一个重要版本，包含多项重大改进，并迁移至 GitHub 组织。

最受瞩目的功能是**背景模糊**，这是用户需求最高的特性。它通过 `ext-background-effect` 协议（受 foot、kitty、Ghostty 等终端支持）或 niri 配置规则实现。两种模糊模式包括：**xray**（高效静态壁纸模糊）和 **normal**（每帧动态重绘的动态模糊）。模糊效果还通过新的弹出规则扩展到弹出菜单。

其他关键更新包括：
- **可选配置包含**（`include optional=true "file.kdl"`），缺失时不会报错，支持波浪号（`~`）路径扩展。
- **视图滚动时指针跟随**，使多窗口导航更加流畅。
- **屏幕录制增强**：为 PipeWire 添加元数据光标模式（支持 OBS 光标切换）、动态录制目标的延时启动（修复 Teams 中 1×1 像素问题），以及新的 **IPC 命令**（`niri msg casts`）用于查询活跃屏幕录制状态。
- 项目 GitHub 星标数突破 20,000，并新增专用艺术资源库。

---

## 27. HEALPix

**原文标题**: HEALPix

**原文链接**: [https://en.wikipedia.org/wiki/HEALPix](https://en.wikipedia.org/wiki/HEALPix)

HEALPix（二维球体分层等面积等纬度像素化算法）是一种1997年提出的球体像素化算法，广泛应用于宇宙学中绘制宇宙微波背景图。该算法在赤道区域采用圆柱等面积投影（兰伯特投影），在极地区域采用伪圆柱等面积投影（间断科利尼翁投影）。标准的H=4、K=3投影将球体映射到平面上的十二个正方形面，这些面进一步被划分为沿等纬度环排列的等面积像素。这种结构可实现高效的球谐变换。该方案并非基于多面体，虽类似于菱形十二面体但具有不同的顶点构型。在FITS标准中，该投影由关键字HPX表示。替代方案包括分层三角网格（HTM）和四边形球面立方体。相关软件包HEALPix实现了该算法，盖亚任务使用它进行源识别。

---

## 28. 八问生成3D人体——无需照片，无需GPU

**原文标题**: A 3D Body from Eight Questions – No Photo, No GPU

**原文链接**: [https://clad.you/blog/posts/questionnaire-mlp/](https://clad.you/blog/posts/questionnaire-mlp/)

本文介绍了一种仅通过八个问卷问题即可生成精准3D人体测量的方法，无需照片或GPU算力。

该系统采用小型MLP（两个隐藏层，每层256个单元），将20个输入特征（源自身高、体重、体型、身材、罩杯、性别、族裔等八个问题）映射至Anny模型中的58个人体形态参数，在CPU上仅需毫秒级运算。

关键成果：身高精度达0.3厘米，体重0.3千克，胸围/腰围/臀围平均绝对误差3-4厘米——在围度测量上优于作者此前基于照片的流程。

核心创新在于引入物理感知损失函数，该函数包含人体模型的前向传播过程。由于用户提供精确身高体重，损失函数通过反向传播Anny体积计算来严格执行这些数据，而非独立最小化参数误差。

项目揭示多项重要发现：人体密度因性别与成分而异（男性约1059 kg/m³，女性约1031 kg/m³，此前通用值为980）；2厘米围度变化可影响约2千克体重；族裔特征（非洲/亚洲/高加索）需用户明确输入，否则会产生3千克的噪声基准。

文章承认局限性：人们难以准确自评体型，且肢体比例未被纳入。未来迭代可能允许用户直接视觉调整肩宽或臀围等特征。该系统已提供渐进式网页应用及REST API接口。

---

## 29. 发送给一家视频游戏出版商的邮件

**原文标题**: The mail sent to a video game publisher

**原文链接**: [https://www.gamefile.news/p/panic-mail-arco-despelote-time-flies-thank-goodness-teeth](https://www.gamefile.news/p/panic-mail-arco-despelote-time-flies-thank-goodness-teeth)

游戏发行商Panic效仿上世纪80年代动视的做法，推出了一项粉丝奖励计划：玩家通关《谢天谢地你来了》《阿尔科》和《德斯佩洛特》等指定游戏后，只需寄来一个写好回信地址并贴好邮票的信封，就能获得一枚特别徽章。艺术家詹姆斯·卡伯特在游戏中加入了一个提示面板，鼓励玩家随信附上想对开发者说的话，这一设计意外引发了大量充满创意与真情的信件涌入。

Panic的市场总监卡莉·斯特格曼已收到超过一千封邮件，办公室俨然变成了“圣诞收发室”。粉丝寄来的物品包括手绘作品、刺绣工艺品、一台iPod Nano、一封婚礼请柬、一份曲奇食谱，甚至还有一只刻意夹带的死苍蝇和一颗无意中掉落的儿童乳牙。玩家们分享着游戏如何帮助他们与亲人重归于好、战胜疾病、或找到情感共鸣。有位玩家甚至为曾盗版某款游戏致歉，并附上了20美元。

这项计划在开发者和玩家之间建立起了一种强大而真实的联结。Panic联合创始人卡贝尔·萨瑟指出，网络上的赞美虽多，但手写信件带来的感动无可替代。公司会将所有信件扫描分享给全球的开发团队。由于回信数量过于庞大，当地邮递员开玩笑说，Panic可保他饭碗不丢。

---

## 30. 我的音频接口默认开启了SSH功能

**原文标题**: My audio interface has SSH enabled by default

**原文链接**: [https://hhh.hn/rodecaster-duo-fw/](https://hhh.hn/rodecaster-duo-fw/)

该文描述了用户在Rodecaster Duo音频接口中发现安全漏洞的过程。购买该设备用于家庭使用后，用户试图在固件更新时捕获固件以进行逆向工程。他们发现固件仅是一个未经签名校验的简单gzip压缩包，存储在两个分区中以防变砖。

更严重的是，用户发现该设备默认启用了SSH，且仅支持公钥认证。两个默认SSH密钥（RSA和Ed25519）被预装在设备中，可实现网络访问。更新流程通过USB发送HID指令（"M"和"U"字符），然后将固件文件（archive.tar.gz和archive.md5）复制到设备暴露的磁盘上。

用户成功制作自定义固件以启用密码认证并添加自己的SSH密钥，展示了修改设备的便捷性。他们向RODE报告了安全问题（默认SSH访问及未知密钥），但未收到回复。用户对如此精良的商业设备竟缺乏签名固件更新等基本安全措施表示惊讶，并计划监控未来固件的变化。该文揭示了一款家用音频设备存在的严重安全隐患。

---

