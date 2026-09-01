# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-02.md)

*最后自动更新时间: 2026-09-02 04:56:56*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 2 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 3 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 4 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 5 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 6 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 7 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 8 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 9 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 10 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 11 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 12 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 13 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 14 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 15 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 16 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 17 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 18 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 19 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 20 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 21 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 22 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 23 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 24 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 25 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 26 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 27 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 28 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 29 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 30 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 31 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 32 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 33 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 34 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 35 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 36 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 37 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 38 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 39 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 40 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 41 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 42 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 43 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 44 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 45 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 46 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 47 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 48 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 49 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 50 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 51 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 52 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 53 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 54 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 55 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 56 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 57 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 58 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 59 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 60 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 61 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 62 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 63 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 64 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 65 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 66 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 67 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 68 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 69 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 70 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 71 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 72 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 73 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 74 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 75 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 76 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 77 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 78 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 79 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 80 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 81 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 82 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 83 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 84 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 85 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 86 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 87 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 88 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 89 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 90 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 91 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 92 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 93 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 94 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 95 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 96 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 97 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 98 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 99 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 100 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 101 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 102 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 103 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 104 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 105 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 106 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 107 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 108 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 109 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 110 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 111 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 112 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 113 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 114 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 115 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 116 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 117 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 118 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 119 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 120 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 121 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 122 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 123 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 124 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 125 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 126 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 127 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 128 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 129 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 130 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 131 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 132 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 133 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 134 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 135 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 136 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 137 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 138 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 139 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 140 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 141 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 142 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 143 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 144 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 145 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 146 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 147 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 148 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 149 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 150 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 151 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 152 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 153 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 154 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 155 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 156 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 157 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 158 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 159 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 160 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 161 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 162 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 163 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 164 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 165 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 166 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 167 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 168 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 169 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 170 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 171 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 172 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 173 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 174 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 175 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 176 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 177 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 178 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 179 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 180 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 181 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 182 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 183 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 184 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 185 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 186 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 187 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 188 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 189 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 190 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 191 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 192 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 193 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 194 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 195 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 196 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 197 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 198 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 199 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 200 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 201 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 202 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 203 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 204 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 205 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 206 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 207 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 208 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 209 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 210 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 211 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 212 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 213 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 214 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 215 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 216 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 217 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 218 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 219 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 220 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 221 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 222 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 223 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 224 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 225 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 226 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 227 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 228 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 229 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 230 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 231 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 232 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 233 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 234 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 235 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 236 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 237 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 238 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 239 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 240 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 241 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 242 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 243 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 244 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 245 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 246 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 247 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 248 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 249 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 250 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 251 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 252 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 253 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 254 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 255 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 256 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 257 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 258 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 259 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 260 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 261 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 262 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 263 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 264 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 265 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 266 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 267 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 268 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 269 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 270 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 271 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 272 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 273 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 274 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 275 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 276 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 277 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 278 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 279 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 280 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 281 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 282 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 283 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 284 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 285 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 286 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 287 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 288 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 289 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 290 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 291 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 292 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 293 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 294 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 295 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 296 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 297 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 298 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 299 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 300 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 301 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 302 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 303 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 304 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 305 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 306 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 307 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 308 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 309 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 310 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 311 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 312 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 313 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 314 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 315 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 316 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 317 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 318 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 319 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 320 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 321 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 322 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 323 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 324 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 325 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 326 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 327 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 328 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 329 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 330 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 331 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 332 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 333 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 334 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 335 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 336 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 337 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 338 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 339 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 340 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 341 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 342 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 343 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 344 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 345 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 346 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 347 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 348 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 349 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 350 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 351 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 352 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 353 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 354 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 355 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 356 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 357 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 358 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 359 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 360 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 361 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 362 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 363 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 364 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 365 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 366 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 367 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 368 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 369 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 370 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 371 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 372 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 373 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 374 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 375 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 376 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 377 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 378 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 379 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 380 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 381 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 382 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 383 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 384 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 385 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 386 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 387 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 388 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 389 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 390 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 391 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 392 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 393 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 394 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 395 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 396 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 397 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 398 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 399 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 400 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 401 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 402 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 403 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 404 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 405 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 406 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 407 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 408 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 409 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 410 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 411 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 412 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 413 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 414 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 415 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 416 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 417 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 418 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 419 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 420 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 421 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 422 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 423 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 424 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 425 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 426 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 427 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 428 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 429 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 430 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 431 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 432 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 433 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 434 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 435 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 436 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 437 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 438 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 439 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 440 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 441 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 442 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 443 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 444 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 445 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 446 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 447 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 448 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 449 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 450 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 451 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 452 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 453 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 454 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 455 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 456 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 457 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 458 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 459 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 460 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 461 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 462 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 463 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 464 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 465 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 466 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 467 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 468 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 469 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 470 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 471 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 472 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 473 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 474 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 475 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 476 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 477 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 478 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 479 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 480 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 481 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 482 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 483 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 484 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 485 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 486 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 487 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 488 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 489 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 490 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 491 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 492 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 493 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 494 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 495 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 496 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 497 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 498 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 499 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 500 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 501 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 502 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 503 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 504 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 505 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 506 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 507 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 508 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 509 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 510 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 511 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 512 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 513 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 514 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 515 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 516 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 517 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 518 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 519 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 520 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 521 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 522 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 523 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 524 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 525 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 526 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 527 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
