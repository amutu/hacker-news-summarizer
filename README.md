# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-29.md)

*最后自动更新时间: 2026-08-29 04:56:49*
## 1. 图形界面应实现全键盘操控

**原文标题**: GUIs should be fully keyboard-driven

**原文链接**: [https://ckardaris.com/blog/2026/08/28/keyboard-driven-guis.html](https://ckardaris.com/blog/2026/08/28/keyboard-driven-guis.html)

本文围绕 Hacker News 上终端界面（TUI）与图形界面（GUI）之争展开。作者认为两者各有优势：GUI 框架功能更强，TUI 对终端用户高效便捷。作者重点反驳了"TUI 优于 GUI 因其天然键盘驱动"这一常见论点，指出这恰恰暴露了 GUI 在键盘导航上的不足，而非 TUI 的固有优势。作者引用 GNOME 人机交互指南，强调 GUI 应支持仅用键盘完成全部操作。作者以自身开发的 GUI 应用 Klisi 为例，说明实现全键盘快捷键并非难事，关键在于开发者的投入意愿。文章最终呼吁：开发者不应在用户体验上妥协，应致力于让应用直观易用，全键盘导航是提升体验的重要维度，不应被忽视。

---

## 2. 美国农业部：五个州召回两万五千磅鸡肉产品

**原文标题**: 25,000 Lbs. Of Chicken Products Recalled in 5 States: USDA

**原文链接**: [https://www.thehealthy.com/news/chicken-recall-fsis-august-2026/](https://www.thehealthy.com/news/chicken-recall-fsis-august-2026/)

无法访问该文章链接

---

## 3. htmx 4.0 正式发布

**原文标题**: Htmx 4.0

**原文链接**: [https://four.htmx.org/announcements/2026-08-28-htmx-4.0.0-is-released](https://four.htmx.org/announcements/2026-08-28-htmx-4.0.0-is-released)

htmx 4.0.0 正式发布，历时八个月打磨。三大核心变更：属性继承由隐式改为显式（需加 :inherited 后缀），这是最大迁移点；事件命名统一为 htmx:相位:动作 格式；历史记录不再默认依赖 localStorage，改为回退时重新请求页面，避免第三方脚本状态错乱。底层引擎从 XMLHttpRequest 全面迁移至 fetch()，对用户基本透明。新特性方面，内置了形态化交换（Morph Swaps）与 <hx-partial> 标签，支持一次响应中更新多个目标元素。生态上新增 hx-preload 预加载、hx-download 下载、hx-live 轻量前端脚本方案，以及 hx-sse、hx-ws、hx-multipart 三种流式扩展，并提供 htmax.js 一体化打包。为降低迁移门槛，官方推出命令行升级检测工具（覆盖 HTML、PHP、Jinja 等多类文件）及面向 LLM 的四份技能文件。4.0 暂不在 NPM 标记为 latest，2.x 继续作为稳定版获长期支持，预计 2027 年初 4.0 线转为默认版本。

---

## 4. 一条漏洞传闻，已足以催生攻击

**原文标题**: Just the rumour of a bug is enough to find an exploit these days

**原文链接**: [https://anil.recoil.org/notes/rumour-is-the-exploit](https://anil.recoil.org/notes/rumour-is-the-exploit)

摘要：作者修复OCaml cohttp 6.3.0路径遍历漏洞时发现，公开修复PR仅十分钟后服务器即遭自动化探测；更甚者，AI agent仅凭"路径遍历"这一模糊方向，便在一分钟内自行生成利用代码。这揭示了安全禁运机制的彻底失效——AI攻击者只需知晓漏洞大致类别即可独立完成利用，不再依赖完整细节。行业数据印证了趋势：漏洞从披露到被利用的平均时间已降至负七天，即利用先于补丁发布，而2018至2019年这一指标为六十三天。2026年提出的"bugonomics"概念指出，瓶颈已从攻击端转移至防御端的修复吞吐量，开源维护者的人力与前沿模型接入能力远未跟上。作者提出三条应对路径：一是构建更私密的补丁开发环境，解决CI脱节等基础设施短板；二是放弃禁运、转向持续快速发布，借鉴Chrome每周安全更新模式，同时需破解开源库下游分发难题；三是在协议层部署虚拟补丁，实现类似Cloudflare应对Log4shell的秒级防护。他还呼吁小型项目（如OCaml）尽快获得前沿模型访问权，并公布两个研究方向：基于MirageOS的自动化防御测试平台，以及将Lean规格编译为运行时执行自动机以强化协议层约束。

---

## 5. 美国制裁A/I集体

**原文标题**: U.S. sanctions against the A/I Collective

**原文链接**: [https://www.inventati.org/](https://www.inventati.org/)

A/I Collective（Autistici/Inventati）成立于2001年，由自主反资本主义运动中关注技术与数字权利斗争的个体及团体联合发起。该组织致力于为活动人士及公众提供数字自我防护平台与工具，倡导自由通信。其所有服务均完全免费，不控制或商品化用户个人数据，依赖志愿者的无偿劳动运营，资金仅来源于自愿捐赠。A/I Collective 仅限非商业用途，服务对象为与其理念相近的个体或团体，每项服务请求均由志愿者以对话形式逐一手动审核，所有请求经匿名化处理后随即销毁。用户申请前须阅读其组织宣言、行为准则及隐私政策方可提交。该组织秉持团结互助与自主组织原则，坚持反资本主义立场。然而，因提供隐私保护与加密通信服务，A/I Collective 遭到美国政府制裁，本文即为其官网针对该制裁事件的公开回应，旨在向公众阐明其使命与立场，并呼吁支持者了解相关文档后申请使用其服务。

---

## 6. 我创办了 Isitdoneyet.gg，帮助判断游戏是否真正完成

**原文标题**: Isitdoneyet.gg is a website I made to figure out if games are complete

**原文链接**: [https://isitdoneyet.gg/](https://isitdoneyet.gg/)

该网站名为"Isitdoneyet.gg"（是否完成了？），由作者个人开发，旨在帮助玩家判断一款游戏是否真正"完成"。其核心理念是：发售不等于完成——许多游戏在上市后仍持续进行漏洞修复、内容更新与平衡性调整。网站设有两大板块："最近完成"列出近期被认定为趋于完善的作品，包括《Planet Zoo》《This Bed We Made》《ERROR143》《陶土之子》《生化危机：安魂曲》《DRACU-RIOT!》《王国 Rush 复仇》《ELDERBORN》《动物收容所》等；"热门趋势"则展示当前关注度最高的游戏，如《赛博朋克2077》《空洞骑士：丝之歌》《陶土之子》《星界边境》《短途徒步》等。涵盖 3A 大作、独立游戏、塔防、生存建造、模拟经营等多种类型。该网站为玩家在决定购买或投入时间前，提供一份直观、实用的"完成度"参考。

---

## 7. 《盗梦空间》风格曲面地图实现逐向导航

**原文标题**: Inception-style curved map for turn-by-turn directions

**原文链接**: [https://www.orbify.eu/demo/](https://www.orbify.eu/demo/)

摘要：Orbify是一款以"导航重塑"为核心理念的创新导航产品，其最大特色是采用《盗梦空间》式的弯曲曲面地图来呈现逐向转向导航信息。当前展示的是该产品的第二版演示（Demo 2，版本v72），界面包含"开始导航"启动按钮及场景加载进度（0%）等交互元素，整体呈现三维沉浸式的视觉体验。该产品已提交国际专利申请（PCT/EP2026/058725），目前处于审查阶段。页面底部标注版权信息：© 2026 Orbify，并再次注明专利状态与申请编号。整体而言，这是一个尚在开发或演示阶段的导航应用原型，通过非传统的曲面地图设计，将常规平铺地图转化为类似电影《盗梦空间》中层层折叠的空间视觉，使用户在转向指引时获得更具空间感与沉浸感的方向体验。

---

## 8. 曲率贝塞尔曲线：经典配方的改良

**原文标题**: Curvature Beziers: Improving on a timeless recipe

**原文链接**: [https://acko.net/blog/curvature-beziers/](https://acko.net/blog/curvature-beziers/)

贝塞尔曲线自1960年代诞生以来始终是CAD与图形软件的基石，但传统编辑方式存在固有缺陷。文章首先指出，贝塞尔曲线由线性插值构造，其曲率连续性与切线是否对称无关，传统工具中"对称切线即最平滑"的直觉实为错误；比例缩放切线虽改善了操作体验，仍无法保证曲率在节点处连续。作者转而直接以曲率作为编辑量，将切线长度换算为曲率手柄。通过一、二阶导数构建曲率向量，可导出关于两个切线长度的联立二次方程组，再化为四次方程求解，需遍历曲率正负（旋转方向）四种符号组合，并剔除切线反向及自环等无效解。当多解共存时，作者设计了权重启发式：解逼近边界或趋于不稳定时权重归零，长切线方案受惩罚；取加权平均后，再以逆距离四次方重采样，使结果平滑吸附至精确解，避免编辑过程中曲线跳跃。该方案可几乎无改动地嵌入现有贝塞尔系统：用户仍操作熟悉的四控制点手柄，仅切线长度含义变为曲率，对称化操作即令两侧曲率相等，更贴合用户直觉。

---

## 9. 开放世界多智能体环境中的自主数学发现

**原文标题**: Autonomous Mathematical Discovery in an Open-World Multi-Agent Environment

**原文链接**: [https://arxiv.org/abs/2608.23691](https://arxiv.org/abs/2608.23691)

本文研究在名为"Station"的开放世界多智能体环境中，AI智能体实现自主数学发现的可能性。该环境中，来自不同模型家族的智能体共同追求同一研究目标，无需中央协调器或预设流程，智能体自主决定研究方向、开展实验、相互协作，并共同构建共享科学文献。研究覆盖AlphaEvolve目录中的12个构造问题及两个额外案例，智能体在五个问题上产出了超越先前文献的新结果：有限域Kakeya集的新无穷族、11维空间中精确的604点kissing构型、离散化Kakeya针问题与符号不确定性问题的新记录，以及Erdős最小重叠问题下界的显著改进；此外还发现了Book Ramsey数的新无穷族。尤为重要的是，智能体不仅给出数值构造，还撰写了相关定理与证明分析，揭示了构造的内在机制，使成果更具可解释性，便于数学家进一步拓展。研究团队公开了全部智能体对话记录、证明及验证代码，实现了发现过程的完全透明。

---

## 10. GLM-5.3 现已开放权重

**原文标题**: GLM-5.3 is now open-weight

**原文链接**: [https://huggingface.co/zai-org/GLM-5.3](https://huggingface.co/zai-org/GLM-5.3)

摘要：GLM-5.3 模型现已以开放权重（open-weight）形式发布，标志着该模型从闭源走向公开共享，用户可自由获取、部署和二次开发。GLM 系列由智谱 AI 推出，是中国主流大语言模型之一，此次开放权重意味着社区研究者与企业可基于该模型进行本地化微调、私有化部署及生态拓展，有助于推动开源大模型生态的发展。该消息发布于约一天前，引发了社区一定程度的关注与讨论。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 2 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 3 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 4 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 5 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 6 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 7 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 8 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 9 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 10 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 11 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 12 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 13 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 14 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 15 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 16 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 17 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 18 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 19 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 20 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 21 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 22 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 23 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 24 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 25 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 26 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 27 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 28 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 29 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 30 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 31 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 32 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 33 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 34 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 35 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 36 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 37 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 38 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 39 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 40 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 41 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 42 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 43 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 44 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 45 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 46 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 47 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 48 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 49 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 50 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 51 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 52 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 53 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 54 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 55 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 56 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 57 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 58 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 59 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 60 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 61 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 62 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 63 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 64 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 65 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 66 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 67 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 68 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 69 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 70 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 71 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 72 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 73 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 74 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 75 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 76 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 77 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 78 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 79 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 80 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 81 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 82 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 83 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 84 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 85 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 86 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 87 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 88 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 89 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 90 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 91 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 92 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 93 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 94 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 95 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 96 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 97 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 98 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 99 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 100 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 101 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 102 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 103 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 104 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 105 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 106 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 107 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 108 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 109 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 110 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 111 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 112 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 113 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 114 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 115 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 116 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 117 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 118 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 119 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 120 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 121 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 122 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 123 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 124 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 125 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 126 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 127 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 128 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 129 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 130 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 131 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 132 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 133 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 134 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 135 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 136 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 137 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 138 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 139 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 140 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 141 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 142 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 143 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 144 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 145 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 146 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 147 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 148 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 149 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 150 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 151 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 152 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 153 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 154 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 155 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 156 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 157 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 158 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 159 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 160 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 161 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 162 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 163 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 164 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 165 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 166 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 167 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 168 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 169 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 170 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 171 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 172 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 173 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 174 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 175 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 176 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 177 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 178 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 179 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 180 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 181 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 182 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 183 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 184 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 185 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 186 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 187 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 188 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 189 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 190 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 191 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 192 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 193 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 194 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 195 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 196 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 197 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 198 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 199 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 200 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 201 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 202 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 203 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 204 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 205 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 206 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 207 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 208 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 209 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 210 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 211 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 212 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 213 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 214 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 215 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 216 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 217 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 218 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 219 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 220 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 221 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 222 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 223 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 224 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 225 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 226 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 227 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 228 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 229 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 230 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 231 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 232 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 233 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 234 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 235 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 236 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 237 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 238 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 239 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 240 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 241 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 242 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 243 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 244 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 245 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 246 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 247 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 248 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 249 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 250 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 251 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 252 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 253 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 254 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 255 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 256 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 257 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 258 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 259 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 260 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 261 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 262 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 263 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 264 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 265 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 266 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 267 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 268 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 269 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 270 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 271 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 272 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 273 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 274 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 275 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 276 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 277 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 278 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 279 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 280 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 281 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 282 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 283 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 284 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 285 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 286 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 287 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 288 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 289 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 290 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 291 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 292 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 293 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 294 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 295 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 296 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 297 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 298 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 299 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 300 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 301 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 302 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 303 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 304 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 305 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 306 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 307 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 308 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 309 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 310 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 311 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 312 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 313 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 314 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 315 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 316 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 317 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 318 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 319 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 320 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 321 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 322 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 323 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 324 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 325 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 326 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 327 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 328 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 329 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 330 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 331 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 332 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 333 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 334 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 335 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 336 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 337 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 338 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 339 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 340 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 341 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 342 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 343 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 344 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 345 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 346 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 347 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 348 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 349 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 350 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 351 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 352 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 353 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 354 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 355 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 356 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 357 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 358 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 359 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 360 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 361 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 362 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 363 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 364 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 365 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 366 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 367 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 368 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 369 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 370 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 371 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 372 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 373 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 374 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 375 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 376 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 377 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 378 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 379 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 380 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 381 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 382 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 383 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 384 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 385 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 386 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 387 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 388 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 389 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 390 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 391 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 392 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 393 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 394 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 395 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 396 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 397 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 398 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 399 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 400 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 401 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 402 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 403 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 404 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 405 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 406 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 407 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 408 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 409 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 410 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 411 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 412 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 413 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 414 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 415 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 416 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 417 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 418 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 419 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 420 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 421 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 422 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 423 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 424 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 425 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 426 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 427 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 428 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 429 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 430 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 431 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 432 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 433 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 434 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 435 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 436 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 437 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 438 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 439 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 440 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 441 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 442 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 443 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 444 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 445 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 446 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 447 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 448 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 449 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 450 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 451 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 452 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 453 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 454 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 455 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 456 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 457 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 458 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 459 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 460 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 461 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 462 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 463 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 464 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 465 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 466 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 467 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 468 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 469 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 470 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 471 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 472 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 473 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 474 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 475 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 476 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 477 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 478 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 479 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 480 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 481 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 482 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 483 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 484 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 485 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 486 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 487 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 488 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 489 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 490 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 491 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 492 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 493 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 494 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 495 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 496 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 497 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 498 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 499 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 500 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 501 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 502 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 503 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 504 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 505 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 506 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 507 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 508 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 509 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 510 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 511 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 512 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 513 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 514 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 515 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 516 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 517 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 518 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 519 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 520 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 521 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 522 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 523 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
