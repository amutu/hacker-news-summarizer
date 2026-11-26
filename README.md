# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-27.md)

*最后自动更新时间: 2026-11-27 04:55:07*
## 1. AMD 显卡专属 Llama.cpp 补丁推荐

**原文标题**: AMD Specific Patches for Llama.cpp

**原文链接**: [https://devnull.land/amd-specific-llama-cpp](https://devnull.land/amd-specific-llama-cpp)

摘要：文章发表于2026年11月，作者推荐AMD显卡用户使用llama-cpp-rdna-boosts项目。当时推理引擎领域涌现大量面向特定硬件的定制引擎（如Strata、Basalt等），虽能大幅提升速度，但为追求吞吐量开始篡改模型推理行为（如Strata优先调用显存中的专家而非本应选中的内存专家），存在准确性隐患。相比之下，llama-cpp-rdna-boosts以最小补丁集形式在llama.cpp基线上提供AMD RDNA架构专属优化，具有维护简单、变更透明、与上游同步等优势。作者通过Podman拉取预构建ROCm镜像完成部署，在AMD R9700（经eGPU连接笔记本）上运行Qwen3.8-27B量化模型，Prefill速度从约700提升至1300 tokens/s，Token生成从35提升至55 tokens/s，提升显著。文章也提及曾尝试vllm-radiance等方案，但因构建复杂度过高而放弃，最终选择了轻量、稳定的rdna-boosts。

---

## 2. "RansomwareHelp"技术总监因电汇欺诈遭起诉

**原文标题**: CTO of 'RansomwareHelp' Indicted for Wire Fraud

**原文链接**: [https://krebsonsecurity.com/2026/11/cto-of-ransomwarehelp-indicted-for-wire-fraud/](https://krebsonsecurity.com/2026/11/cto-of-ransomwarehelp-indicted-for-wire-fraud/)

美国佛罗里达公司RansomwareHelp联合创始人兼CTO胡安·帕拉西奥近日被以电汇欺诈罪起诉。该公司运营六年，声称拥有"先进加密工具"可100%恢复被勒索软件加密的数据，并告诫受害者"切勿支付赎金"。然而FBI设局调查揭露，该公司实为秘密向勒索团伙购买解密密钥，再向受害者大幅加价转卖。在FBI钓鱼行动中，帕拉西奥以约6000美元从"假勒索团伙"购得解密器，却向"假受害者"收取16010美元。另一起案例中，一家遭Lockbit攻击的会计公司收到该公司43.9万美元的恢复报价，而安全公司Soteria介入后发现，RansomwareHelp曾利用远程桌面工具删除受害者系统中的勒索信息，并秘密与Lockbit谈判数日，阻止受害者自行与攻击者沟通。该公司主要瞄准缺乏技术知识、处境绝望的小微企业。此案是近期美国司法部连续打击网络安全行业欺诈行为的最新一例，此前已有多家安全公司高管因类似行为被起诉或判刑。

---

## 3. YouTube 广告惩罚者——广告出现即自动重载

**原文标题**: YouTube Ad Punisher – Auto-reloads YouTube pages when an ad plays

**原文链接**: [https://github.com/antonpictures/youtube-punisher](https://github.com/antonpictures/youtube-punisher)

YouTube 广告惩罚者（YouTube Ad Punisher）是一款浏览器扩展，核心机制极简：检测到 YouTube 广告播放时，立即捕获当前播放时间戳并自动重载页面，YouTube 随即通过 URL 参数 &t=Xs 跳转回原位置，实现零等待跳广告。该方案为纯客户端操作，不拦截任何网络请求，因此可规避 YouTube 反广告拦截检测。检测层每 500ms 轮询并结合 MutationObserver 监听广告相关 DOM 变化，重载设有 3 秒冷却防止死循环。若连续 3 次重载仍未清除广告，则跳转至无广告镜像站 yout-ube.com（附 &loop=0 防循环）；同时自动切换辅助标签页 4 秒再切回，利用 Chrome 对后台标签页的节流让广告状态重置。扩展内置广告历史数据库，记录每次广告的投放商、时长、视频标题、播放位置及操作方式，支持 JSON/CSV 导出，数据完全本地存储，弹窗界面提供统计与高频广告商排行。与 uBlock Origin（拦截请求）、SponsorBlock（跳过赞助段落）等工具互补，推荐组合使用。安装支持 Chrome/Brave/Edge/Opera 加载解压缩包，Safari 提供 AppleScript 实验方案。项目采用 MIT 许可。

---

## 4. OpenAI或已进入降本模式

**原文标题**: OpenAI may be in cost control mode

**原文链接**: [https://micjm.com/blog/openai-is-in-cost-control-mode/](https://micjm.com/blog/openai-is-in-cost-control-mode/)

OpenAI近期发布的Astra 6.2和Sol 6.2遭到广泛批评。数据显示，这两款模型疑似为削减成本进行了调优，具体表现为每个任务的输出token数和推理token数明显下降。在真实工作对抗系统中，与同级对手相比，Astra 6.2和Sol 6.2的推理量显著减少；Astra 6和Sol 6.1表现尚属正常，但6.2版本已沦为推理不足的异常值。统计检验结果进一步证实了这一趋势：输出下降的p值，Sol为0.0055、Astra为0.022；推理下降的p值，Sol为0.00013、Astra为0.0064，均具统计显著性。在成本与能力的权衡中，GPT-6至GPT-6.2的升级虽降低了支出比，Elo评分也出现下滑。综合来看，Astra和Sol 6.2相较前代进行了明显的成本优化，但幅度过大，使其成为"思考不足"的异常模型，实际任务表现因此受损。

---

## 5. Rvoip 0.5：纯 Rust 实现的完整 VoIP 技术栈

**原文标题**: Rvoip 0.5 the complete VoIP stack in Rust

**原文链接**: [https://github.com/eisenzopf/rvoip](https://github.com/eisenzopf/rvoip)

rvoip 是 Rust 编写的完整 VoIP 通信库，将 SIP、RTP、WebRTC、QUIC/WebTransport 及语音 AI 统一于同一对话模型，无需外部 SIP 服务器或媒体引擎。工作区含 47 个 crate，用户仅需引入一个依赖即可运行。性能上，单台 AWS c8i.4xlarge（16 vCPU）SIP over TLS 信令吞吐达 8,348 次/秒，TLS+SRTP 语音呼叫达 1,124 次/秒、支撑约 11,200 路并发，p50 建立延迟仅 1 毫秒。项目提供三条开发路径：SIP 电话（软电话、PBX、IVR、B2BUA）、浏览器与跨传输网关（SIP 与 WebRTC 互通）、语音 AI（对接 Vapi 或自建 ASR/TTS 管线）。架构上，所有传输层统一映射为 Conversation、Session、Participant、Connection 等核心对象，由 Orchestrator 调度桥接。成熟度分 Beta-qualified 与 Developer preview 两档，前者已通过发布门禁及互操作验证。rvoip 已在 Asterisk、FreeSWITCH、Kamailio、OpenSIPS 等主流系统上完成互操作测试并提供签名认证。

---

## 6. 美国：一张《文明》风格的游戏地图

**原文标题**: The USA as a Civilizations-esque map

**原文链接**: [https://karpathy.ai/usaciv/](https://karpathy.ai/usaciv/)

无法访问该文章链接

---

## 7. Intel One Mono 开源等宽字体（2023）

**原文标题**: Intel One Mono font (2023)

**原文链接**: [https://github.com/intel/intel-one-mono](https://github.com/intel/intel-one-mono)

Intel One Mono 是 2023 年推出的开源等宽字体家族，由 Frere-Jones Type 联合 Intel 品牌团队及VMLY&R 设计，专为低视力及法定盲人开发者打造，以高清晰度和易读性为核心，旨在缓解编程视觉疲劳、降低代码错误率。字体支持 200 余种拉丁字母语言，提供 Light、Regular、Medium、Bold 四种字重及对应斜体，涵盖 .otf、.ttf、.woff、.woff2 格式，适配桌面、移动端与网页场景。内置多项 OpenType 特性：编程连字（ss01）、箭头符号（ss02）、"www"连字（ss03）、替代数字"3"（ss04）、上提冒号（ss11/ss12）及上标/下标与分数等。官方同时提供 UFO 源文件（分实例与主文件两层），支持用 RoboFont 等工具编辑后生成字体；TrueType 格式含手动 hinting 优化，重建时建议使用 autohint。文中还详述了在 VSCode、Sublime Text、IntelliJ 等编辑器中安装字体及启用连字的具体方法。

---

## 8. Show HN：一个浏览器标签页中并排运行三个 Linux 虚拟机，各搭载不同浏览器

**原文标题**: Show HN: Three Linux VMs in a browser tab, each running a different browser

**原文链接**: [https://michidk.github.io/sidebyside/](https://michidk.github.io/sidebyside/)

本项目展示了在单个浏览器标签页中同时运行三个独立 Linux 虚拟机的技术演示。三台虚拟机以并排（Side by Side）方式呈现，每台中分别运行一款不同的浏览器，用户可在同一页面内直观对比各浏览器的渲染表现与界面差异。该项目体现了浏览器端轻量级虚拟化技术（如 WebAssembly 结合微虚拟机方案）的实际潜力，使开发者无需离开浏览器，即可在彼此隔离的环境中运行完整 Linux 系统及其桌面应用。此类技术对跨浏览器兼容性测试、前端开发调试、安全沙箱隔离等场景具有实用价值，也展示了现代浏览器在性能与虚拟化方面的持续进步。

---

## 9. 好奇心并非独角戏

**原文标题**: Curiosity Is No Solo Act

**原文链接**: [https://thereader.mitpress.mit.edu/curiosity-is-no-solo-act/](https://thereader.mitpress.mit.edu/curiosity-is-no-solo-act/)

无法访问该文章链接。

---

## 10. 乔治·怀特塞德斯（1939—2026）

**原文标题**: George Whitesides, 1939-2026

**原文链接**: [https://www.science.org/content/blog-post/george-whitesides-1939-2026](https://www.science.org/content/blog-post/george-whitesides-1939-2026)

无法访问该文章链接

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-27](output/hacker_news_summary_2026-11-27.md) |
| 2 | [2026-11-26](output/hacker_news_summary_2026-11-26.md) |
| 3 | [2026-11-25](output/hacker_news_summary_2026-11-25.md) |
| 4 | [2026-11-24](output/hacker_news_summary_2026-11-24.md) |
| 5 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 6 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 7 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 8 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 9 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 10 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 11 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 12 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 13 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 14 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 15 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 16 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 17 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 18 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 19 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 20 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 21 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 22 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 23 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 24 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 25 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 26 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 27 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 28 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 29 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 30 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 31 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 32 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 33 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 34 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 35 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 36 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 37 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 38 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 39 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 40 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 41 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 42 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 43 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 44 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 45 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 46 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 47 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 48 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 49 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 50 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 51 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 52 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 53 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 54 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 55 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 56 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 57 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 58 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 59 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 60 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 61 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 62 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 63 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 64 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 65 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 66 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 67 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 68 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 69 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 70 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 71 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 72 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 73 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 74 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 75 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 76 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 77 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 78 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 79 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 80 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 81 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 82 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 83 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 84 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 85 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 86 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 87 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 88 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 89 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 90 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 91 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 92 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 93 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 94 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 95 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 96 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 97 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 98 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 99 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 100 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 101 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 102 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 103 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 104 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 105 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 106 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 107 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 108 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 109 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 110 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 111 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 112 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 113 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 114 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 115 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 116 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 117 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 118 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 119 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 120 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 121 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 122 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 123 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 124 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 125 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 126 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 127 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 128 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 129 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 130 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 131 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 132 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 133 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 134 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 135 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 136 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 137 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 138 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 139 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 140 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 141 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 142 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 143 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 144 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 145 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 146 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 147 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 148 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 149 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 150 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 151 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 152 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 153 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 154 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 155 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 156 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 157 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 158 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 159 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 160 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 161 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 162 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 163 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 164 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 165 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 166 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 167 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 168 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 169 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 170 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 171 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 172 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 173 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 174 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 175 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 176 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 177 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 178 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 179 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 180 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 181 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 182 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 183 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 184 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 185 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 186 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 187 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 188 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 189 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 190 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 191 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 192 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 193 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 194 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 195 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 196 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 197 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 198 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 199 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 200 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 201 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 202 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 203 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 204 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 205 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 206 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 207 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 208 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 209 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 210 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 211 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 212 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 213 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 214 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 215 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 216 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 217 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 218 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 219 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 220 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 221 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 222 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 223 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 224 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 225 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 226 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 227 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 228 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 229 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 230 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 231 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 232 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 233 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 234 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 235 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 236 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 237 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 238 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 239 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 240 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 241 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 242 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 243 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 244 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 245 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 246 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 247 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 248 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 249 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 250 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 251 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 252 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 253 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 254 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 255 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 256 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 257 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 258 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 259 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 260 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 261 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 262 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 263 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 264 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 265 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 266 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 267 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 268 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 269 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 270 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 271 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 272 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 273 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 274 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 275 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 276 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 277 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 278 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 279 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 280 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 281 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 282 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 283 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 284 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 285 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 286 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 287 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 288 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 289 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 290 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 291 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 292 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 293 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 294 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 295 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 296 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 297 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 298 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 299 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 300 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 301 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 302 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 303 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 304 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 305 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 306 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 307 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 308 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 309 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 310 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 311 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 312 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 313 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 314 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 315 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 316 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 317 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 318 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 319 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 320 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 321 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 322 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 323 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 324 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 325 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 326 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 327 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 328 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 329 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 330 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 331 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 332 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 333 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 334 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 335 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 336 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 337 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 338 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 339 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 340 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 341 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 342 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 343 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 344 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 345 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 346 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 347 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 348 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 349 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 350 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 351 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 352 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 353 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 354 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 355 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 356 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 357 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 358 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 359 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 360 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 361 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 362 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 363 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 364 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 365 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 366 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 367 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 368 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 369 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 370 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 371 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 372 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 373 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 374 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 375 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 376 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 377 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 378 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 379 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 380 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 381 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 382 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 383 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 384 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 385 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 386 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 387 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 388 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 389 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 390 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 391 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 392 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 393 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 394 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 395 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 396 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 397 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 398 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 399 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 400 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 401 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 402 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 403 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 404 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 405 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 406 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 407 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 408 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 409 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 410 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 411 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 412 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 413 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 414 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 415 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 416 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 417 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 418 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 419 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 420 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 421 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 422 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 423 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 424 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 425 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 426 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 427 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 428 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 429 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 430 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 431 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 432 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 433 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 434 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 435 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 436 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 437 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 438 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 439 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 440 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 441 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 442 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 443 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 444 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 445 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 446 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 447 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 448 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 449 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 450 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 451 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 452 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 453 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 454 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 455 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 456 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 457 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 458 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 459 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 460 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 461 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 462 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 463 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 464 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 465 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 466 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 467 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 468 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 469 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 470 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 471 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 472 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 473 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 474 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 475 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 476 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 477 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 478 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 479 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 480 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 481 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 482 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 483 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 484 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 485 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 486 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 487 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 488 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 489 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 490 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 491 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 492 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 493 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 494 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 495 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 496 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 497 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 498 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 499 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 500 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 501 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 502 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 503 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 504 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 505 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 506 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 507 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 508 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 509 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 510 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 511 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 512 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 513 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 514 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 515 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 516 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 517 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 518 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 519 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 520 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 521 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 522 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 523 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 524 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 525 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 526 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 527 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 528 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 529 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 530 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 531 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 532 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 533 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 534 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 535 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 536 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 537 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 538 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 539 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 540 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 541 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 542 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 543 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 544 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 545 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 546 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 547 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 548 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 549 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 550 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 551 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 552 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 553 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 554 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 555 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 556 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 557 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 558 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 559 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 560 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 561 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 562 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 563 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 564 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 565 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 566 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 567 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 568 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 569 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 570 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 571 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 572 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 573 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 574 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 575 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 576 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 577 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 578 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 579 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 580 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 581 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 582 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 583 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 584 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 585 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 586 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 587 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 588 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 589 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 590 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 591 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 592 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 593 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 594 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 595 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 596 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 597 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 598 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 599 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 600 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 601 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 602 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 603 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 604 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 605 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 606 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 607 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 608 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 609 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 610 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 611 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 612 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 613 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
