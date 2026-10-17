# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-18.md)

*最后自动更新时间: 2026-10-18 04:56:54*
## 1. 白化珊瑚触碰健康邻居数日即可恢复生机

**原文标题**: Bleached corals thrive within days when touching healthy neighbour

**原文链接**: [https://www.nature.com/articles/d41586-026-03266-x](https://www.nature.com/articles/d41586-026-03266-x)

海水升温致珊瑚白化问题日益严峻，失去共生藻的珊瑚面临饥饿死亡。2026年10月14日发表于《科学进展》的一项研究带来希望：斯坦福大学Danny Collins团队发现，将白化珊瑚碎片与健康碎片直接接触，可在数天内完成共生藻再转移，使白化珊瑚快速复苏。该发现源于科学家Palumbi在实验室的偶然观察——两片意外接触的珊瑚碎片在交界处出现颜色蔓延。Collins随后用同一基因个体的鹿角珊瑚制备十对（五对接触、五对间隔数毫米）进行实验。结果显示，接触组白化碎片接触健康碎片仅一周即可脱离后自行完全恢复，第八周全数康复，共生藻每四天翻倍，远快于野外自然恢复；而间隔组二十周后全部死亡。高分辨率显微镜揭示，同基因珊瑚通过形成组织桥实现融合并传递共生藻，不同物种或同物种不同个体均无法融合。研究者认为，这一快速、完全的恢复机制有望为大规模珊瑚修复提供可行方案，为应对全球珊瑚衰退注入新希望。

---

## 2. 爱沙尼亚在线投票系统源代码

**原文标题**: Source code of the Estonian online voting system

**原文链接**: [https://github.com/valimised/ivxv](https://github.com/valimised/ivxv)

本仓库旨在将爱沙尼亚在线投票系统（IVXV）的源代码向公众公开，供社会审查与验证。该仓库不用于日常活跃开发，但会持续保持更新，以确保所公布的代码与实际选举中使用的版本完全一致。由于该投票系统承载的是具有法律约束力的正式选举，其开发与运行必须严格遵循相关选举法律法规。因此，爱沙尼亚i-voting系统及配套的i-vote验证应用的实际开发工作，均在爱沙尼亚国家选举办公室的严格监督之下进行，以确保系统的合法性、安全性和可靠性。如需了解更多选举相关信息，公众可访问爱沙尼亚国家选举委员会官方网站 www.valimised.ee 获取详细内容。

---

## 3. Commodore 64 硬件模拟器：拔除引脚与芯片，观察电路后果

**原文标题**: The Commodore 64 hardware simulator: break chips and pins, see the results

**原文链接**: [https://github.com/antirez/c64-hw-simulator](https://github.com/antirez/c64-hw-simulator)

c64-hw-sim 是一款针对 Commodore 64（250407 版）主板的引脚级硬件模拟器。用户可模拟抬起引脚、对地或正电压短路、拔出芯片、断开电阻等故障，并实时观察屏幕画面、键盘响应及全部信号线变化；故障现象均由电路模型计算得出，而非人为预设。项目有两大用途：一是无需承担损坏实机的风险即可深入理解 C64 内部原理；二是辅助维修，将模拟症状与真实故障比对以缩小排查范围、减少不必要的拆焊。性能上，即便在 Apple M5 Max 上也仅达实时速度的 48%，不适合运行游戏，但足以满足学习与维修需要。技术上基于 floooh 的 6510、VIC-II、CIA、SID 等周期精确核心，结合 KiCad 设计文件自动生成 216 个元器件与 249 条网络线的 C 代码，采用引脚驱动强度与浮空电容漂移模型。支持图形界面与无头命令行模式，可加载 .prg 文件、动态注入或修复故障、批量录制帧序列，并附带 31 项常见故障测试脚本。当前局限在于浮空与供电模型参数为估算值，视频输出、SID 滤波器、电源及 PLL 尚未仿真，芯片内部故障（如坏内存单元）仍在规划中。

---

## 4. 拆坝通河：鱼群重返美国东北部

**原文标题**: Dam removals are bringing fish back across the northeastern United States

**原文链接**: [https://www.smithsonianmag.com/science-nature/dam-removals-are-bringing-fish-back-across-the-northeastern-united-states-striking-down-one-tiny-barrier-at-a-time-180989679/](https://www.smithsonianmag.com/science-nature/dam-removals-are-bringing-fish-back-across-the-northeastern-united-states-striking-down-one-tiny-barrier-at-a-time-180989679/)

摘要：文章以1859年梭罗因反对大坝而勘测康科德河的往事开篇，引出东北部延续数百年的大坝阻断鱼类洄游问题。自1912年起，全美已拆除逾2300座大坝，2024年达到峰值，恢复连通超2500英里水系。西部克拉马斯河和埃尔沃河的拆坝令鲑鱼大规模回归，但东北部虽单体规模小、关注度低，却是拆除总量最多的区域。新罕布什尔州鱼类学家菲里用微型芯片追踪河鲱鱼等洄游鱼类，揭示即便主河道畅通，支流中仍有大量小型坝体与涵管阻隔鱼类进入关键产卵地。历史上，新英格兰水坝曾导致近200亿磅河鲱鱼消失，造成"生态-社会失范"，居民对鱼类洄游的文化记忆几近断裂。如今拆坝正催生"集体记忆"复苏，缅因州佩诺布斯科特河12年间回归河鲱鱼激增至六百万尾。然而部分居民仍以怀旧情感反对拆坝，支流疏通仍任重道远。从梭罗吟叹"自然终将推平大坝"到今日拆坝文艺复兴，河流正逐步重获自由。

---

## 5. Furifont, a Japanese font that shows furigana

**原文标题**: Furifont, a Japanese font that shows furigana

**原文链接**: [https://furifont.antfu.me/](https://furifont.antfu.me/)

文章之前已经处理过

---

## 6. 用多力多滋薯片粉让鸡胸肉变透明

**原文标题**: Making chicken transparent using Dorito dust

**原文链接**: [https://chillphysicsenjoyer.substack.com/p/making-chicken-transparent-using](https://chillphysicsenjoyer.substack.com/p/making-chicken-transparent-using)

本文记录了一项趣味物理实验：用多力多滋薯片上的食用色素柠檬黄（tartrazine）浸泡鸡胸肉，尝试使其变透明。灵感源于一篇利用柠檬黄实现活体动物组织光学透明的论文。作者将鸡胸肉切片，分别浸泡于水（对照组）和约0.19M柠檬黄溶液中，室温下放置6至12小时。结果显示，经处理的鸡胸肉出现部分透光，呈现类似软糖的胶状质感，但透明度远不及原论文（原实验使用0.62M浓度、40°C及机械摇床）。文章从光学原理解释透明机制：不透明源于光的吸收及不同折射率介质间的光散射。生物组织中蛋白质、脂质与水的折射率不同，导致光线在内部散射。柠檬黄溶入水后可提高水的折射率（从约1.33向蛋白质和脂质的约1.45靠近），减少散射从而实现透明。作者还借助麦克斯韦方程和洛伦兹振荡器模型，推导了极化率与复折射率的关系，强调需提升折射率实部的同时控制其虚部（吸收）。该技术的潜在应用包括简化活体荧光成像、降低独立科研成本，体现了作者"低成本有效观测"的研究理念。

---

## 7. DeepSeek-v4.1-Flash-1017

**原文标题**: DeepSeek-v4.1-Flash-1017

**原文链接**: [https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash-1017](https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash-1017)

摘要：该页面为 DeepSeek-v4.1-Flash-1017 的发布或更新信息，内容包含 11 个条目（可能为版本说明、文件清单或发布日志），页面于约 15 小时前进行更新，累计获得 932 次浏览或互动。DeepSeek-v4.1-Flash 为深度求索公司推出的轻量级快速推理模型系列，"Flash"版本主打低延迟与高吞吐，"1017"为版本迭代标识。由于页面正文未提供，目前可见信息仅限于上述元数据，尚无法获取具体技术参数、性能指标或功能变更详情。如需了解该版本的具体更新内容、模型架构或基准测试结果，建议前往 DeepSeek 官方网站或其开源社区查阅完整发布说明。

---

## 8. 微软与卡内基梅隆大学联手培养AI时代初级软件工程师

**原文标题**: Microsoft and CMU Team Up to Train Early Career Software Engineers

**原文链接**: [https://www.cs.cmu.edu/news/2026/microsoft-cmu-praise](https://www.cs.cmu.edu/news/2026/microsoft-cmu-praise)

2026年10月，微软与卡内基梅隆大学（CMU）格里芬计算机学院联合推出"AI加速软件工程实习计划"（PRAISE），面向微软早期职业工程师，提供在线学术课程与在职导师制指导，帮助其掌握机器学习工程与AI增强软件开发技能。项目源于CMU校友、微软首席技术官拉辛诺维奇2025年访校时的提议，他指出AI虽赋能资深工程师，但初级员工难以同等受益，AI改变工作流但不会取代人类判断。双方据此将CMU学术资源与微软工程实践深度融合。本学期学员修读"生产环境机器学习"及"AI增强软件工程实习"等课程，春季将开设"DevOps安全开发与部署"等课程，学分可计入CMU软件工程硕士学位。CMU计划逐步扩大招生并引入更多行业伙伴，项目主任奥德里奇教授表示，该模式有望成为全行业加速新人成长的范本。

---

## 9. Pele – 将 Mermaid 图表渲染为可主题化 SVG

**原文标题**: Pele – Mermaid diagrams as themeable SVG

**原文链接**: [https://pele.run/](https://pele.run/)

Pele 是一款轻量级开源库，可将 Mermaid 图表语法渲染为支持 CSS 变量主题化的 SVG。其核心优势在于性能与体积：渲染耗时仅 0.05–0.3 毫秒（Mermaid.js 为 6–82 毫秒），gzip 后包大小仅 230 kB（Mermaid.js 为 1.6 MB），且零直接依赖（Mermaid.js 需 23 个）。主题化方面，Pele 通过 --pele-bg、--pele-fg、--pele-line 等 CSS 变量控制背景、前景与边框颜色，修改变量即可实时切换配色，无需重新渲染图表，并内置浅色/深色主题与小屏幕自适应布局。集成方式简单，支持 npm、pnpm、yarn、bun 安装，核心 API 为 render() 函数，传入 Mermaid 语法字符串即返回 SVG 字符串，开发者将其写入页面 DOM 即可完成渲染，适合对依赖体积和渲染速度有严格要求的项目。

---

## 10. Chrome 与 Edge 移除 XSLT 支持：哪些功能会失效，哪些不受影响

**原文标题**: Chrome and Edge are removing XSLT: what breaks and what does not

**原文链接**: [https://doctor-seo.net/en/blog/news/chrome-edge-removing-xslt/](https://doctor-seo.net/en/blog/news/chrome-edge-removing-xslt/)

Chrome 和 Edge 已弃用并移除对 XSLT（可扩展样式表语言转换）的原生支持，即浏览器不再能将 .xml 文件通过 .xsl 样式表自动渲染为格式化页面。受影响的场景包括：直接在浏览器中打开 XML 文件并依赖 XSLT 进行客户端转换、通过链接引用外部 XSL 样式表的老式应用、部分依赖浏览器 XSLT 引擎的 SEO 落地页或数据展示页面。不受影响的情形包括：服务器端（如 PHP、ASP.NET、Java）执行的 XSLT 转换、Firefox 和 Safari 等仍保留 XSLT 支持的浏览器、以及通过 JavaScript 或后端 API 完成转换的现代 Web 应用。文章建议开发者尽快将客户端 XSLT 迁移至服务器端处理或改用 JavaScript 方案（如 XSLT.js、Saxon-JS 等库），以确保在 Chrome/Edge 用户群体中页面正常显示，并避免 SEO 收录和用户体验问题。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 2 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 3 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 4 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 5 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 6 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 7 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 8 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 9 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 10 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 11 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 12 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 13 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 14 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 15 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 16 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 17 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 18 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 19 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 20 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 21 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 22 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 23 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 24 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 25 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 26 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 27 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 28 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 29 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 30 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 31 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 32 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 33 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 34 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 35 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 36 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 37 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 38 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 39 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 40 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 41 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 42 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 43 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 44 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 45 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 46 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 47 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 48 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 49 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 50 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 51 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 52 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 53 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 54 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 55 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 56 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 57 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 58 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 59 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 60 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 61 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 62 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 63 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 64 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 65 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 66 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 67 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 68 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 69 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 70 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 71 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 72 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 73 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 74 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 75 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 76 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 77 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 78 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 79 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 80 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 81 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 82 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 83 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 84 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 85 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 86 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 87 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 88 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 89 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 90 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 91 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 92 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 93 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 94 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 95 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 96 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 97 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 98 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 99 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 100 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 101 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 102 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 103 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 104 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 105 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 106 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 107 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 108 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 109 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 110 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 111 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 112 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 113 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 114 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 115 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 116 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 117 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 118 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 119 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 120 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 121 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 122 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 123 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 124 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 125 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 126 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 127 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 128 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 129 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 130 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 131 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 132 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 133 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 134 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 135 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 136 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 137 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 138 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 139 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 140 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 141 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 142 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 143 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 144 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 145 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 146 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 147 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 148 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 149 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 150 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 151 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 152 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 153 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 154 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 155 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 156 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 157 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 158 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 159 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 160 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 161 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 162 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 163 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 164 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 165 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 166 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 167 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 168 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 169 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 170 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 171 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 172 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 173 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 174 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 175 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 176 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 177 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 178 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 179 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 180 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 181 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 182 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 183 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 184 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 185 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 186 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 187 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 188 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 189 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 190 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 191 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 192 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 193 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 194 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 195 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 196 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 197 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 198 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 199 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 200 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 201 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 202 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 203 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 204 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 205 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 206 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 207 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 208 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 209 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 210 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 211 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 212 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 213 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 214 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 215 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 216 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 217 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 218 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 219 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 220 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 221 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 222 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 223 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 224 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 225 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 226 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 227 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 228 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 229 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 230 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 231 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 232 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 233 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 234 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 235 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 236 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 237 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 238 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 239 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 240 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 241 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 242 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 243 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 244 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 245 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 246 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 247 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 248 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 249 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 250 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 251 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 252 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 253 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 254 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 255 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 256 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 257 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 258 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 259 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 260 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 261 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 262 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 263 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 264 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 265 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 266 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 267 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 268 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 269 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 270 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 271 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 272 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 273 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 274 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 275 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 276 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 277 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 278 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 279 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 280 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 281 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 282 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 283 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 284 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 285 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 286 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 287 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 288 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 289 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 290 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 291 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 292 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 293 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 294 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 295 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 296 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 297 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 298 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 299 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 300 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 301 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 302 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 303 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 304 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 305 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 306 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 307 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 308 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 309 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 310 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 311 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 312 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 313 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 314 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 315 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 316 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 317 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 318 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 319 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 320 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 321 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 322 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 323 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 324 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 325 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 326 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 327 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 328 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 329 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 330 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 331 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 332 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 333 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 334 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 335 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 336 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 337 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 338 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 339 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 340 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 341 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 342 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 343 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 344 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 345 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 346 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 347 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 348 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 349 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 350 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 351 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 352 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 353 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 354 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 355 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 356 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 357 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 358 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 359 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 360 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 361 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 362 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 363 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 364 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 365 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 366 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 367 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 368 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 369 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 370 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 371 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 372 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 373 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 374 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 375 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 376 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 377 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 378 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 379 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 380 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 381 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 382 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 383 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 384 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 385 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 386 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 387 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 388 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 389 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 390 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 391 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 392 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 393 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 394 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 395 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 396 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 397 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 398 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 399 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 400 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 401 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 402 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 403 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 404 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 405 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 406 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 407 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 408 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 409 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 410 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 411 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 412 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 413 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 414 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 415 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 416 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 417 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 418 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 419 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 420 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 421 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 422 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 423 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 424 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 425 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 426 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 427 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 428 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 429 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 430 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 431 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 432 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 433 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 434 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 435 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 436 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 437 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 438 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 439 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 440 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 441 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 442 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 443 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 444 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 445 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 446 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 447 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 448 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 449 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 450 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 451 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 452 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 453 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 454 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 455 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 456 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 457 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 458 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 459 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 460 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 461 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 462 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 463 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 464 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 465 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 466 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 467 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 468 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 469 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 470 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 471 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 472 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 473 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 474 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 475 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 476 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 477 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 478 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 479 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 480 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 481 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 482 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 483 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 484 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 485 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 486 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 487 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 488 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 489 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 490 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 491 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 492 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 493 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 494 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 495 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 496 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 497 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 498 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 499 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 500 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 501 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 502 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 503 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 504 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 505 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 506 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 507 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 508 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 509 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 510 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 511 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 512 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 513 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 514 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 515 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 516 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 517 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 518 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 519 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 520 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 521 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 522 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 523 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 524 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 525 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 526 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 527 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 528 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 529 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 530 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 531 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 532 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 533 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 534 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 535 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 536 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 537 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 538 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 539 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 540 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 541 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 542 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 543 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 544 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 545 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 546 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 547 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 548 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 549 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 550 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 551 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 552 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 553 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 554 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 555 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 556 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 557 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 558 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 559 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 560 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 561 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 562 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 563 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 564 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 565 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 566 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 567 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 568 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 569 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 570 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 571 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 572 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 573 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
