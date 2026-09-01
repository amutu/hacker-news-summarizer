# Hacker News 热门文章摘要 (2026-09-02)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Claude Fable 5.1 与 Claude Mythos 5.1 正式发布

**原文标题**: Claude Fable 5.1 and Claude Mythos 5.1

**原文链接**: [https://www.anthropic.com/claude-fable-and-mythos-5-1](https://www.anthropic.com/claude-fable-and-mythos-5-1)

Anthropic发布Claude Fable 5.1与Claude Mythos 5.1，二者为同一模型的不同安全配置：Fable 5.1全面开放，Mythos 5.1仅限网络安全与生命科学领域的可信访问计划。核心改进三方面：价格上，凭缓存读取降价，典型负载成本降约25%，高智能体场景最高降45%；数据上，推出企业前沿安全系统（EFS），数据完全由客户管控，实现零数据保留；安全上，网络安全误报减少60%，并与美国政府合作开放生物学能力。性能方面，Fable 5.1在Terminal-Bench-Science（52.6%）、CursorBench 3.2（73.4%）、Humanity's Last Exam（65.0%）等基准大幅超越前代Fable 5及竞品。企业反馈突出其长时间无人值守运行、深层根因分析能力（如Millennium溯源百万分之一崩溃）、跨多服务代码精准映射及写作质量显著提升。Jane Street、Cognition、Block、Datadog、MongoDB等头部机构已将其纳入核心工作流。

---

## 2. Play商店拦截AuroraStore，影响GrapheneOS用户

**原文标题**: Play Store blocks AuroraStore, hurting GrapheneOS users

**原文链接**: [https://gitlab.com/AuroraOSS/AuroraStore/-/work_items/1566](https://gitlab.com/AuroraOSS/AuroraStore/-/work_items/1566)

用户报告在Aurora Store（含2026-08-31 Nightly版）中通过匿名账户安装任何应用时，均会收到"服务器繁忙，请稍后重试"的错误提示，安装操作全部失败。该问题在更换VPN、清除缓存、刷新匿名账户、强制关闭应用及重启设备后依旧存在，无法通过常规排查手段解决。用户设备为Fairphone 5（Android 16，CalyxOS 7.2.4.20），运行Aurora Store 4.8.4，采用Session安装方式，且未绑定Google账户。由于用户无Google账户，尚无法确认该故障是否仅影响匿名账户。该issue提交至AuroraStore GitLab项目，属于Bug类报告，核心诉求为恢复Aurora Store的正常应用下载与安装功能。

---

## 3. ChatGPT/Codex 桌面应用捆绑了完整的 LibreOffice 套件

**原文标题**: The ChatGPT/Codex app bundles a full copy of LibreOffice

**原文链接**: [https://simonwillison.net/2026/Sep/1/codex-libreoffice/](https://simonwillison.net/2026/Sep/1/codex-libreoffice/)

摘要：2026年9月1日，有网友通过磁盘清理工具 OmniDiskSweeper 浏览本地缓存文件夹（~/.cache/）时发现，OpenAI 的 Codex 桌面应用（现已更名为 ChatGPT）在其中占用了约 1.7GB 空间，存放于名为 codex-primary-runtime 的目录。该目录不仅捆绑了完整的 Python 和 Node.js 运行时环境，还包含 Poppler、git 以及开源办公套件 LibreOffice（2010年从 OpenOffice.org 分叉而来）的本地二进制文件。进一步查看路径 ~/.cache/codex-runtimes/codex-primary-runtime/plugins/openai-primary-runtime/plugins/documents 可以发现，应用还附带了专门的"技能"配置文件，用于指导 Codex 如何定位和调用上述二进制工具。这意味着 ChatGPT 桌面端已将办公文档处理等本地能力直接打包进安装包，无需用户另行安装依赖即可在本地完成文档操作。

---

## 4. 翻新泰克 TDS7104 示波器

**原文标题**: Refurbishing a Tektronix TDS7104 Oscilloscope

**原文链接**: [https://tomverbeure.github.io/2026/08/23/Tektronix-TDS7104-Refurbishing.html](https://tomverbeure.github.io/2026/08/23/Tektronix-TDS7104-Refurbishing.html)

作者以300美元在硅谷跳蚤市场购得一台泰克TDS7104四通道示波器（1GHz带宽，最高10Gs/s采样率），开机后遭遇CMOS电池报错与硬盘坏道。文章详述完整维修流程：先经USB转IDE适配器对6GB IBM Travelstar硬盘做镜像备份；更换主板CR2032电池后启动恢复，屏幕过暗实为Gamma设置过低而非背光灯故障。作者特别提醒无需拆卸前面板（塑料卡扣极易断裂），并记录了32颗Torx-15螺丝的逐步拆解过程。尝试以mSATA SSD替代机械盘时遭遇注册表加载失败（STOP c0000218），32GB与64GB方案均告失败，遂转向Windows 2000 Pro完整重装，涉及USB引导、专有驱动及泰克固件安装等环节。文章还梳理了该型号常见故障——CMOS电池失效、PowerPC备份电池耗尽、电源滤波电容漏电——及对应修复思路，并介绍了NLX主板（Socket 370）、Chips&Technologies 69000显卡DMA驱动LCD波形叠加显示、以及PowerPC+VxWorks控制板等硬件架构。

---

## 5. Hacker News 发布：Nori Robotics（YC S26）——面向开发者的低成本人形机器人

**原文标题**: Launch HN: Nori Robotics (YC S26) – A low-cost humanoid robot for development

**原文链接**: [https://www.norirobotics.com/](https://www.norirobotics.com/)

Nori Robotics 是一家 YC S26 批次的创业公司，推出名为 NORI A3 的低成本人形机器人，售价 1,688 美元（全价、无定金），计划 2026 年秋季发货，在美国旧金山组装。该产品以亲民价格面向开发者，旨在将人形机器人带入日常家庭场景。功能上，NORI A3 可辅助厨房料理、物品整理、取物、洗碗、叠衣等家务；同时提供"技能市场"，用户可在家中训练机器人并共享技能。硬件方面：双臂各 7+1 自由度，单臂 1.5 公斤负载；搭载 12 米探测距离的激光雷达（8-12Hz，0.72° 角分辨率）；配备 4 个 720p RGB 摄像头（最高 30fps），分别安装于夹爪、头部和颈部；内置扬声器与麦克风支持语音指令；电池续航 6-8 小时。软件方面，配套 Nori Lab 笔记本应用，支持机器人的训练、操作与管理。整体来看，该产品以极低价格提供较完整的开发平台，力图大幅降低人形机器人的开发与部署门槛。

---

## 6. AnkiDroid：Google Play不再认可Open Collective捐赠链接

**原文标题**: AnkiDroid: Google Play no longer allowing Open Collective donation link

**原文链接**: [https://github.com/ankidroid/Anki-Android/issues/21656](https://github.com/ankidroid/Anki-Android/issues/21656)

AnkiDroid是一款拥有逾千万用户的开源安卓记忆卡应用，由志愿者维护，通过Open Collective（一家依据美国税法501(c)(6)条款免税的非营利组织）接受捐赠，此为其唯一资金来源。2026年7月20日，Google Play以支付政策违规为由，要求AnkiDroid提供免税资质证明或移除捐赠链接。开发者随即提交了Open Source Collective的IRS 501(c)(6)免税认定函，但Google于8月6日回复称该组织"并非免税"，其政策仅认可501(c)(3)等慈善组织，且拒绝解释501(c)(6)为何不被接受，8月7日再次驳回。若不解决，AnkiDroid将于9月11日在全球（印度和俄罗斯除外）被强制下架。开发者被迫在抗议中移除Play商店版本的捐赠链接。目前项目向社区公开求助，核心诉求是Google明确501(c)(6)是否满足其政策中"免税捐赠"的豁免条件，同时提醒公众不要直接联系Google支持团队，而是帮助传播此事件。

---

## 7. Show HN：在 48GB 内存 Mac 上以约 12 tok/s 运行 104GB Qwen3.8-Flash-Next

**原文标题**: Show HN: Running 104GB Qwen3.8-Flash-Next on 48GB Mac with at ~12 tok/s

**原文链接**: [https://github.com/carloslfu/slotstream](https://github.com/carloslfu/slotstream)

slotstream 是一款纯 Swift 单二进制工具，无需 Python，让内存仅 48GB 的 Mac 跑起 104GB 的 Qwen3.8-Flash-Next（125B 混合专家模型，4-bit 量化）。核心思路是从 SSD 按需流式读取权重：68GB 路由专家经 pread 载入跨层共享的缓存池，32GB n-gram 表按需分页，仅 3.8GB 稠密主干常驻。实测 M5 Pro 48GB 上解码约 12 tok/s，冷启动首 token 约 3 秒，峰值内存 32GB。工具自动按可用内存分级适配（8GB 至 48GB+），运行时每 15 秒动态增减缓存且输出不变；并支持前缀缓存与投机解码。接口兼容 Ollama 与 OpenAI Chat API，Open WebUI 等现有工具可直接对接。安装仅需一行 curl 或 git clone 后 make build，104GB 权重一次性下载后校验 sha256。当前仅支持该单一模型，要求 macOS 14+、512GB 硬盘。项目 MIT 开源，附完整测试套件与文档。

---

## 8. Ambient CSS v3：Blender 理念融入 CSS

**原文标题**: Ambient CSS v3 – Blender meets CSS

**原文链接**: [https://ambientcss.vercel.app/](https://ambientcss.vercel.app/)

Ambient CSS v3 是一套面向前端开发的基于物理的光照系统，旨在将三维渲染软件 Blender 中的真实光照模型引入 CSS 领域。该系统通过模拟真实世界中的光线传播、反射与折射等物理特性，为网页元素赋予逼真的光影效果，让二维界面呈现出接近三维渲染的视觉质感。v3 版本进一步强化了与 Blender 工作流的设计理念对接，使设计师能够在熟悉的三维渲染逻辑下，为 CSS 样式赋予全局光照、环境光遮蔽（AO）等高级渲染表现，从而在纯前端环境中实现电影级画面品质。该项目对于追求高品质视觉体验的 Web 开发者、交互设计师及创意前沿领域具有显著的参考价值。

---

## 9. 影视取景地地图——涵盖13,312部影片、剧集、游戏、动漫与漫画

**原文标题**: Movie Scene Map – 13,312 films, series, games, anime and manga

**原文链接**: [https://moviescenemap.com/](https://moviescenemap.com/)

影视取景地地图（Movie Scene Map）是一个免费交互地图，收录166个国家的15,535个真实取景地点，关联9,262部影视剧集、2,153款电子游戏、407部动漫及366部漫画。数据源自维基数据的拍摄地点条目，关联各地点坐标、照片及维基条目；来自维基正文的句子证据标注为"per Wikipedia"，与结构化数据严格区分，游戏与动漫则按故事背景而非拍摄地标注。地点涵盖7,458个城镇、4,168处地标、2,155处自然景观、830条街巷、593座城堡及133个影棚。美国以5,121个地点居首，加州以1,749部作品成为取景最密集地区。平台完全免费，无广告无付费墙，数据以CC0协议开放下载，并提供MCP端点供AI调用。用户可通过补充维基数据条目完善缺失信息，每次更新均有变更日志记录。

---

## 10. 1.5小时训练小型Transformer，性能比肩多款大语言模型

**原文标题**: I trained a small transformer in 1.5hrs and it beats many LLMs

**原文链接**: [https://mvakde.github.io/blog/44-on-arc-1/](https://mvakde.github.io/blog/44-on-arc-1/)

摘要：作者在一张5090 GPU上仅用1.5小时从零训练了一个8层小型Transformer，在ARC-1测试集上达到约44%准确率，ARC-2达7%，性能与TRM、HRM等前沿方法持平，而总成本仅67美分。该工作是作者ARC-AGI研究系列的第三篇文章，核心目标是探索Transformer架构下的样本效率极限并大幅降低迭代成本。技术升级包括采用SwiGlu、RMSNorm等现代架构组件，引入3D RoPE位置编码与每任务独立嵌入，使用Normuon优化器替代AdamW，并通过减少数据增强、Flash Attention等手段降低成本。文章还系统回应了Jeremy Howard、Lucas Beyer等知名研究者提出的多项质疑，包括"在测试集上训练是否作弊""测试时训练的合理性"等争议，明确指出ARC作为元学习基准允许转导式推理。作者同时批评了当前社区对递归架构的盲目追捧以及合成数据滥用的问题，建议ARC-1/2应禁止离线预训练以公平衡量样本效率。代码已开源，作者认为在Transformer框架内65%得分完全可达。

---

## 11. 调谐指示管（魔术眼管）

**原文标题**: Magic eye tube

**原文链接**: [https://en.wikipedia.org/wiki/Magic_eye_tube](https://en.wikipedia.org/wiki/Magic_eye_tube)

魔术眼管（又称调谐指示管、电子射线指示管）是一种通过荧光屏显示电子信号幅度的微型阴极射线真空管，主要用于收音机中指示信号强度以辅助准确调谐。1932年美国人艾伦·杜蒙特发明此管，1935年RCA推出首款商用型号6E5，此后广泛应用于1936至1980年间的真空管收音机，后随晶体管普及而淘汰。其工作原理为：管内设有锥形荧光屏（涂有硅锌矿）和内置三极管放大器，当未对准电台时，控制栅极的负电压将电子束排斥，在屏幕中央形成暗区；正确调谐后栅极电压变化使两侧亮光逐渐合拢，暗隙最窄即表示信号最强，该管由收音机的自动增益控制（AGC）电压驱动。常见型号包括美国的6E5、6G5、6AB5及欧洲的EM84等。除收音机调谐外，魔术眼管还用于磁带录音机电平指示、粗略频率比较及电容电桥平衡检测。如今其功能已被半导体电路与LED等显示技术取代，属已淘汰器件。

---

## 12. Ed Zitron的AI唱空预测准确率如何？

**原文标题**: How accurate have Ed Zitron's AI skeptic predictions been?

**原文链接**: [https://danluu.com/zitron/](https://danluu.com/zitron/)

摘要：本文作者以中立立场系统检验了最具影响力的AI怀疑论者Ed Zitron的预测记录。作者首先以2024年11月Zitron"Meta、谷歌、微软正在衰亡"的论断为例，用三家公司的营收与利润数据逐一驳斥：2023至2026上半年，三家公司收入与利润均持续大幅增长，所谓"不知道如何增长"的绝望叙事完全不成立。作者指出Zitron的论证存在系统性缺陷：依赖Similarweb等第三方不准数据、将局部问题夸大为全局危机、逻辑链条关键环节经不起推敲。作者还引用前英特尔工程师Snellman等业内人士的评价，指出Zitron的经济分析"全是捏造或歪曲"，且存在明显的方向性错误，疑似"故意欺骗"。文章随后列出Zitron从2024年2月至2025年3月的十余项核心预测——包括"AI已达上限""生成式AI是死路""OpenAI增长停滞将崩溃""数据耗尽""谷歌5亿用户目标荒谬"等——均标注为"错误"，无一命中。作者强调，公众引用Zitron往往并非因其论证严谨，而是借其"看过数据"的表象为自身情绪背书，实则其数字既不支持其结论，推理也完全站不住脚。

---

## 13. 自行车脚刹的工作原理（2018）

**原文标题**: How bicycle coaster brakes work (2018)

**原文链接**: [https://www.dougbarnesauthor.com/2018/06/how-bicycle-coaster-brakes-work.html](https://www.dougbarnesauthor.com/2018/06/how-bicycle-coaster-brakes-work.html)

本文以邦迪克斯70型（Bendix 70）为例，介绍自行车脚刹的历史、优缺点及工作原理。脚刹诞生于19世纪90年代，1924年起由邦迪克斯公司量产，五六十年代广泛见于施文、哥伦比亚等品牌。其优势在于结构简单、免维护、无外露线管与制动手柄、不受雨天影响且可兼容变速；不足则是无法站立调平踏板、制动难以精细控制、易锁死车轮致侧滑，且与后拨链器不兼容，更换后轮较困难。

工作原理的核心是驱动侧螺旋螺钉：前踩时螺旋将离合器锁紧轮毂内壁，驱动车轮前行；空蹬时离合器脱离，车轮自由滑行；后踩时离合器沿螺纹滑向制动侧，推动扩张器使两侧刹车片向外膨胀、紧压轮毂内壁，通过摩擦实现制动，反向踩踏力度越大制动力越强。制动摩擦面需涂高温脂，其余部位用普通脂。

作者巴恩斯在马里兰州C&O运河自行车租借项目中，拆解修复了一辆使用四十余年、内部油脂已固化为焦油状的古董哥伦比亚自行车脚刹，清洁换脂后恢复良好性能，重新投入租借服务。

---

## 14. Jujutsu 创造者出任 ERSC 首席技术官

**原文标题**: The creator of Jujutsu has joined ERSC

**原文链接**: [https://ersc.io/blog/martin-joins-ersc](https://ersc.io/blog/martin-joins-ersc)

2026年9月1日，东河源控（ERSC）宣布任命版本控制系统 Jujutsu 的创造者 Martin von Zweigbergk 为首席技术官，全面领导公司下一代版本控制平台的工程开发。Martin 于 2019 年末以个人副业开启 Jujutsu 项目，后转入谷歌全职推进，该项目在 GitHub 上已获超 3 万颗星，采用 Apache 2.0 开源许可证。此前他曾参与开发 Fig 并为 Git 贡献代码，在版本控制领域深耕逾十年。ERSC 联合创始人兼首席执行官 Benjamin Brit 表示，Martin 的加入将为公司带来全新高度的技术能力，其十余年攻克的难题正是当前诸多工程团队正面临的挑战。ERSC 成立于 2025 年，获 Amplify Partners 投资，致力于构建面向人与机器的下一代版本控制平台，以应对 AI 重塑软件行业所带来的源码管理与协作需求激增，旗下存储产品 ERSC Storage 将于本月进入私有测试。Martin 指出，Jujutsu 已显著改善本地端版本控制体验，但远程服务层仍依赖 Git，在规模化产品上很快触及天花板，因此存储层亟需根本性变革，而这一工作更适合由公司而非开源项目来支撑。他本人将继续担任 Jujutsu 开源项目的核心维护者。

---

## 15. 美国航空机械师布莱克曼逝世，享年百岁

**原文标题**: American Airlines mechanic Azriel “Al” Blackman has died

**原文链接**: [https://simpleflying.com/american-airlines-mechanic-passes-away-100-record-80-years/](https://simpleflying.com/american-airlines-mechanic-passes-away-100-record-80-years/)

2026年7月24日，美国航空机械师阿兹里尔·"阿尔"·布莱克曼与世长辞，享年100岁。作为吉尼斯世界纪录认证的最长航空机械师职业生涯保持者，他将逾80年生涯全部奉献给美国航空及其前身。1942年二战期间，年仅16岁的布莱克曼以每小时50美分的起薪加入美国出口航空公司，在拉瓜迪亚机场从事水上飞机维护。此后八十余年间，他亲历航空业从活塞时代、喷气时代到宽体客机的全面变革，维护过该航司运营的几乎所有机型，最终服务于波音777机队，并长期担任纽约肯尼迪国际机场维修机组主管，是年轻机械师的导师与行业"活百科全书"。2017年，美国航空以一架波音777-200纪念其入职75周年，员工昵称该机为"7BK"；2022年他更迎来司龄80周年的里程碑。美国航空称其为"真正的航空传奇"，赞其敬业与奉献精神影响无数同行。布莱克曼常说："当你热爱你所做的事，那就不是工作。"

---

## 16. Atlas：面向空间智能的世界模型

**原文标题**: Atlas: A World Model for Spatial Intelligence

**原文链接**: [https://www.worldlabs.ai/blog/atlas](https://www.worldlabs.ai/blog/atlas)

摘要：Atlas是World Labs推出的新一代通用世界模型，作为多模态自回归扩散变换器，可原生处理文本、图像、视频和3D数据，将所有输入整合为共享空间上下文，实现3D一致性生成。其核心能力涵盖四方面：一是相机控制生成，用户可指定1至6张参考图像及精确相机路径，生成最长1分钟1440p视频，并借助空间上下文将不相关图像在3D空间中拼接为连贯场景；二是空间重建，仅需2至3张图像即可高质量重建真实场景，也兼容上百张图像，支持输出点云和3D高斯泼溅，超越专用3D重建模型；三是时空模拟，可从少量普通手机视频实现"子弹时间"视角重构，并为机器人提供Real-to-Sim仿真，生成机器人运动中的RGB与深度数据；四是图像生成，可从文本生成图像及360度全景。架构上，Atlas融合LLM与视频模型优势，兼顾KV缓存等加速技术与扩散蒸馏等算法。在相机控制生成和3D重建基准测试中，Atlas均优于更专用的模型，且性能随训练算力提升持续改善。该模型将驱动World Labs旗下Marble等产品。

---

## 17. 无预读的 io_uring

**原文标题**: Io_uring Without Readahead

**原文链接**: [https://frn.sh/io-uring/](https://frn.sh/io-uring/)

Turso 数据库的 io_uring 后端采用 O_DIRECT 绕过内核预读，需在应用层自行实现。作者以 TPC-H 基准测试（1.2 GiB 库、Q6 全表扫描）分析了预读的收益与代价。无预读时每次仅提交一个 SQE，读写串行且无请求合并，设备请求约19.6万，为最差配置。启用32页滑动窗口后，多个读请求并发在途，block layer 将相邻请求合并（合并率91-93%），设备请求降至约1.6万，平均请求大小从4.37 KiB增至56.53 KiB。sqpoll 轮询线程独占65% CPU 周期，多核场景下可独立运行，但 CPU 密集负载下需权衡。关闭 sqpoll 后 io_uring 仍比 syscall 后端慢约3秒，主因是缓存：O_DIRECT 跳过页缓存拷贝，数据不预热 CPU cache，缓存缺失率从7.7%升至13.3%。综上，无预读的 io_uring 因缺乏并发与合并最慢；sqpoll 适用于多核环境；O_DIRECT 省去拷贝但增加缓存未命中；预读虽浪费部分 I/O，但维持队列深度带来的收益远大于代价。

---

## 18. 规格说明并不存在

**原文标题**: Specifications Don't Exist

**原文链接**: [https://www.galois.com/articles/specifications-dont-exist](https://www.galois.com/articles/specifications-dont-exist)

Galois的Mike Dodds指出，形式化验证正面临一个被忽视的核心瓶颈：对大多数软件系统而言，精确自洽的形式化规格说明根本不存在，甚至不可能被写出。作者以两个幽默的外星人故事切入——GCC等系统可以形式化验证，只是代价极高；而浏览器等复杂系统则缺乏可验证的形式化定义。文章提出，好的形式化规格应兼具数学清晰、易于推理、边界明确、广泛共识与稳定等特征，编译器、密码库等属于少数"天然可形式化"的系统。现实中，系统充斥着互相矛盾、碎片化的非形式化"规格"——幻灯片、需求文档、用户故事、测试用例等，各方对其理解往往不一致。以PDF为例，各阅读器以不同方式容错，使"PDF"的边界模糊不清；Galois在DARPA SafeDocs项目中耗时数年构建的形式化规格，最终既不描述真实行为，也不具备规范力。文章展望认为，即便AI使证明成本趋近于零，规格说明仍将是最大瓶颈。作者呼吁借鉴测试用例等"有限但实用"的规格路径，将规格说明视为与编程类似的意图表达工具，以更低门槛推动其普及。

---

## 19. 极速轻播（Fastpotify）

**原文标题**: Fastpotify

**原文链接**: [https://fastpotify.rocks/](https://fastpotify.rocks/)

Fastpotify 是一款主打极致轻量的应用，核心优势在于"快"与"省"。它采用原生二进制架构，无需依赖浏览器引擎，避免了传统网页封装应用（如 Electron 等）带来的臃肿开销，从而在启动速度和资源占用上实现显著突破。在性能方面，该应用启动时间控制在 1 秒以内，内存占用仅为 100–250 MB，远低于同类产品，即便在配置较低的老旧设备或资源受限环境中也能流畅运行。整体设计哲学聚焦于剥离冗余模块，以最小代价交付核心功能，适合对启动响应和内存效率有较高要求的用户。

---

## 20. 根本不存在AI

**原文标题**: There Is No AI

**原文链接**: [https://wadler.blogspot.com/2026/08/there-is-no-ai.html](https://wadler.blogspot.com/2026/08/there-is-no-ai.html)

摘要：本文引用虚拟现实先驱杰伦·拉尼尔的观点，指出所谓AI（如GPT-4）并非创造新智能，而是对人类已有文本和图像的统计性混合重组，本质上类似于增强版维基百科或图片搜索。将AI视为社会协作工具而非独立智能体，反而能让技术更少神秘感，降低管理失当的风险。文章进而提出"数据尊严"理念，以替代当前"免费服务换用户数据"的模式——该模式已导致平台垄断、注意力剥削和算法成瘾等弊端。在数据尊严框架下，创作者即便内容经模型再加工也能获得报酬，科技平台则收取服务费。作者以AI修树机器人为例说明：技术虽可能冲击原有职业，却也能催生如全息修剪等全新创造性工作，并通过集体组织将收益分配给社区。此外，企业自身亦有动力推动数据尊严，因为模型质量取决于输入多样性；激励人们创造虚拟世界等新内容，方能将模型拓展至新领域。全文倡导以更诚实的经济模式整合AI，兼顾技术发展与人类尊严。

---

## 21. 梅尔文·谢因曼医生：导管消融术40周年纪念

**原文标题**: Dr. Melvin Scheinman: 40th Anniversary of Catheter Ablation

**原文链接**: [https://ucsfhealthcardiology.ucsf.edu/facstaff/spotlight/dr-melvin-scheinman-40th-anniversary-catheter-ablation](https://ucsfhealthcardiology.ucsf.edu/facstaff/spotlight/dr-melvin-scheinman-40th-anniversary-catheter-ablation)

无法访问该文章链接

---

## 22. 物理不可变光学归档库

**原文标题**: Physically Immutable Optical Archive Libraries

**原文链接**: [https://savartus.com/solutions/enterprise-laser-storage/](https://savartus.com/solutions/enterprise-laser-storage/)

ELS（企业激光存储）是Savartus推出的物理不可变光学归档库系统，专为长期数据安全保存而设计。其核心优势包括：采用WORM（一次写入、多次读取）光盘技术，从物理层面杜绝数据篡改，且不受电磁脉冲（EMP）、病毒或灾害影响；光学介质寿命达50至100年，远超磁带和机械硬盘需7至15年更换的周期，大幅降低合规迁移成本；非访问状态下几乎零功耗，能耗仅为传统存储设备的不超过10%。产品涵盖7款库系统（4款机架式、3种机架规格），支持12种光盘盒（尺寸近似LTO），容量从0.1PB（蓝光）到8.3PB（Folio 1000）不等，具备耐热、抗电磁场及防潮能力。系统通过Web界面及可选命令行兼容各操作系统，支持Glacier协议实现与现有应用的无头集成。典型应用场景涵盖长期归档、合规留存及物理WORM不可变存储层。Savartus提供美国本土的安装、预防性维护、故障维修、培训及专业技术支持服务。

---

## 23. 《矮人要塞》创作者怒批AI令游戏行业一片狼藉

**原文标题**: Dwarf Fortress' creator says the industry's in shambles over AI

**原文链接**: [https://www.pcgamer.com/gaming-industry/dwarf-fortress-creator-says-the-industrys-in-shambles-over-ai-and-layoff-happy-ceos-everyone-i-know-their-bosses-are-slowly-getting-psychosis/](https://www.pcgamer.com/gaming-industry/dwarf-fortress-creator-says-the-industrys-in-shambles-over-ai-and-layoff-happy-ceos-everyone-i-know-their-bosses-are-slowly-getting-psychosis/)

摘要：在Gamescom 2026上，《矮人要塞》创作者Tarn Adams接受PC Gamer采访，痛批当前游戏行业因生成式AI陷入"崩溃"。他指出，行业虽账面利润可观，却连续数年来遭受大规模裁员与工作室关闭的冲击。Adams讽刺道，CEO们试图"按一个按钮就生成一款游戏"，让从业者失去工作却仍要消费者买单，这一模式不可持续，最终只会"破裂—清算—重演"的循环往复。他提到身边许多从业者正承受老板"AI焦虑"的压迫，领导层因不理解一线工作而逐渐精神失常。Adams还以父亲在污水处理厂被裁为例，指出管理层长期忽视并低估劳动者价值的问题由来已久，并非AI时代独有。但生成式AI的冲击更为恶劣：高管们能看到模拟成品，便自我欺骗以为质量可规模化复制。文章还引用了有关AI诱发精神健康问题的研究，暗示企业决策层同样无法免疫。此外，Adams还幽默地抱怨，因"AI"一词被过度滥用，他如今谈及游戏内机制时不得不改称"矮人行为"而非"矮人AI"，侧面反映了行业话语体系的荒诞。

---

## 24. Firefox iOS 版推出内置广告拦截功能

**原文标题**: Introducing Ad Blocker for Firefox on iOS

**原文链接**: [https://blog.mozilla.org/en/firefox/ad-blocker-on-ios/](https://blog.mozilla.org/en/firefox/ad-blocker-on-ios/)

2026年9月1日，Mozilla 为 iOS 版 Firefox 浏览器推出内置广告拦截功能（Ad Blocker）。该功能基于 Apple WebKit 内容拦截技术与 EasyList 过滤规则，在广告及相关追踪器加载前将其拦截，减少页面干扰。无需安装扩展，用户只需在"设置 > 浏览 > 广告拦截"中开启，功能默认关闭，由用户自主决定。需注意，网站自身投放的广告、搜索结果中的广告及 Firefox 新标签页中的赞助内容均不受拦截。该功能与 Firefox 已有的增强型跟踪保护协同工作，进一步限制跨网站追踪。桌面端和安卓端仍延续扩展插件生态，iOS 因系统限制需将功能直接内置。Mozilla 强调广告是支撑开放网络的重要力量，故将拦截设为可选项以平衡创作者利益与用户体验。用户可通过 Mozilla Connect 反馈问题或查阅支持页面了解详情。

---

## 25. 我们正在重建 Monica

**原文标题**: We are rebuilding Monica

**原文链接**: [https://www.monicahq.com/en/blog/we-are-rebuilding-monica/](https://www.monicahq.com/en/blog/we-are-rebuilding-monica/)

Monica 是一款由 Regis Freyd 于2017年创建的开源个人CRM，旨在帮助用户记录亲友信息、活动与关系，GitHub星标已超2.5万。创始人宣布将彻底重建 Monica（v3），并以"Building Monica"系列文章公开记录全过程。经过近十年迭代，Monica 的架构积累了大量早期设计决策，新需求不得不迁就旧方案，部分模块已难以修改。作者反思后追问：如果今天从零开始，应如何定义"一个人""关系"与"活动"？例如，关系应作为独立领域而非联系人的附属属性，需涵盖离婚、重组家庭等复杂情形。v3 的核心理念是：提供良好默认体验的同时，赋予用户极高的自定义能力——由用户决定哪些信息重要，而非被预设数据库结构限制，界面也将更富趣味与个人感。但不变的是：项目将持续开源、支持自托管，保障隐私与数据所有权；Monica 不会替用户定义关系的亲疏，关系的维系始终是用户自己的事。这次重建并非推倒重来，而是带着十年经验与两代产品的教训，对问题本身的全新理解。作者将不定期分享技术决策、设计理念及失败尝试，不刻意设定发布节奏。

---

## 26. 洗手间档案

**原文标题**: Restroom Archive

**原文链接**: [https://restroomarchive.com](https://restroomarchive.com)

本文仅有标题"Restroom Archive"（洗手间档案），未提供正文内容。该标题可能指向与洗手间、卫生间相关的档案资料或专题汇编，内容或涉及公共卫生设施的历史沿革、设计演变、文化习俗记录，亦可能为某一机构或项目对如厕设施相关文档的系统性整理。因缺乏正文，无法进一步概括具体要点。

---

## 27. Keenable SELECT：用 SQL 搜索网络的智能体

**原文标题**: Keenable SELECT: an agent that searches the web in SQL

**原文链接**: [https://keenableai.github.io/select-showcase/](https://keenableai.github.io/select-showcase/)

Keenable SELECT 是一个基于 MCP 的服务器，核心工具 select 让用户通过只读 DuckDB SQL 语句在实时网络数据上执行查询。其创新在于将语义算子嵌入 SQL：WEB_SEARCH 并行执行多查询并去重，WEB_FETCH 获取页面内容，SEM_EXTRACT、SEM_MATCH、SEM_SCORE 等算子调用 LLM 逐行完成字段提取、语义过滤与评分；精确 SQL 过滤先于 LLM 算子执行，大幅降低 token 成本，单次调用可处理逾千个网页。系统由两个智能体协作：研究智能体以工具循环自主编写并运行查询以收集数据；报告智能体在沙盒 Python 环境中将结果集构建为交互式 HTML 报告，经截图与 JS 错误检测迭代优化后发布。系统支持对话式追问，并完整记录每次查询、工具调用及结果集轨迹。文章展示二十余份成品报告，涵盖 YC 创业命名演变、搜索引擎发展史、AI 数据中心建设、动物园动物出逃事件、开源 LLM 发布时间线等主题，每份报告均可追溯完整推理过程。

---

## 28. 浏览器端 Office Open XML 文档查看器

**原文标题**: A browser-based viewer for Office Open XML documents

**原文链接**: [https://ooxml.silurus.dev/](https://ooxml.silurus.dev/)

本项目是一个基于 JavaScript 的浏览器端 Office 文件查看库，采用 Rust 编译为 WebAssembly 解析 DOCX、XLSX 和 PPTX 文件，并以 Canvas 2D API 进行渲染，实现参考 ECMA-376/ISO 29500 标准。DOCX 支持分页布局、复杂表格、内嵌图像与绘图形状、中日韩排版、数学公式及修订标记；XLSX 支持多工作簿、冻结窗格、公式计算、图表、条件格式及数据透视表；PPTX 支持母版继承、预设形状、3D 效果、组合图表及嵌入音视频。项目提供即用型查看器与自定义 API，支持页面切换、缩放、查找等交互，并内置实时渲染示例。近期版本（v0.83.0–v0.84.1）主要改进包括大文件快速显示首页、新增 TIFF 图片支持及 Word 文本框间距优化。

---

## 29. Tmp.0ut Volume 5

**原文标题**: Tmp.0ut Volume 5

**原文链接**: [https://tmpout.sh/5/](https://tmpout.sh/5/)

文章之前已经处理过

---

## 30. 欧盟维修政策正重塑科技产品设计

**原文标题**: The EU's repair policies are changing the way tech is designed

**原文链接**: [https://theconversation.com/the-eus-repair-policies-are-changing-the-way-tech-is-designed-288468](https://theconversation.com/the-eus-repair-policies-are-changing-the-way-tech-is-designed-288468)

摘要：全球电子废物急剧增长，修复产品以延长使用寿命被视为减少浪费的关键途径，但高度集成的设计和维修资源的匮乏使消费者更倾向于直接购买新品。为此，欧盟2024年《可持续产品条例》将可修复性确立为产品设计的核心原则，《电池条例》也对电池可更换性提出明确要求。欧盟联合研究中心（JRC）据此开发了可修复性评分体系，从产品设计（工具、紧固件等）和制造商服务（备件供应、维修指引）两个维度对设备进行评估，已覆盖智能手机、平板、家电及电池等产品类别。新规已显现成效：市场上涌现无胶屏幕、可旋拧拆卸后盖、可换键盘与电池、秒拆式无线耳机等创新设计，手持游戏机厂商也宣布调整设计以合规进入欧盟市场。这些变革表明，法规并非规定设计细节，而是为创新指明方向。其目标契合半个多世纪前迪特·拉姆斯"长久耐用、对环境友好"的设计理念，推动循环经济落地，实现降低废弃物与排放、节约消费者成本、为制造商与维修商开辟新商机等多赢局面。

---

