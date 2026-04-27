# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-27.md)

*最后自动更新时间: 2026-04-27 20:33:10*
## 1. 微软与OpenAI终止独家及收入分成协议

**原文标题**: Microsoft and OpenAI end their exclusive and revenue-sharing deal

**原文链接**: [https://www.bloomberg.com/news/articles/2026-04-27/microsoft-to-stop-sharing-revenue-with-main-ai-partner-openai](https://www.bloomberg.com/news/articles/2026-04-27/microsoft-to-stop-sharing-revenue-with-main-ai-partner-openai)

无法访问文章链接。

---

## 2. Easyduino：适用于KiCad的开源PCB开发板

**原文标题**: Easyduino: Open Source PCB Devboards for KiCad

**原文链接**: [https://github.com/Hanqaqa/Easyduino](https://github.com/Hanqaqa/Easyduino)

**Easyduino项目简介**

Easyduino是一项开源计划，为Arduino Uno、Nano、ESP32、ESP32 S3、Raspberry Pi Pico和STM32 Bluepill等主流微控制器开发板提供KiCad PCB设计。该项目旨在统一原始版本中因各国采用不同EDA工具（Eagle、Altium、KiCad）而存在的多样化软件与设计规范。所有设计均采用四层铜箔叠层（JLC04161H-7628）以简化布线，并针对JLCPCB制造进行优化。

每个项目均包含KiCad源文件、一份说明与原始版本差异的README文档（例如替换难以采购的元件如Atmega16u2，或省略昂贵的01005封装器件），以及生产用文件：Gerber文件、BOM表、贴片坐标文件、数据手册，以及原理图和PCB的PDF/PNG文件。非标准封装则存放于专用文件夹中。

本项目需使用KiCad v8.0.0或更高版本（已通过v10测试），并支持利用Jobset功能简化输出生成。欢迎贡献者报告错误或提议新增开发板，但需遵循一致的原理图设计规范。待办事项包括测试RP2040和ESP32 S3板卡的v1.1修订版本，以及探索基于NXP的设计。项目采用CERN OHL v2宽松许可协议，允许自由使用、修改及商业应用，仅需保留原作者署名。

---

## 3. “为什么不直接用精益？”

**原文标题**: “Why not just use Lean?”

**原文链接**: [https://lawrencecpaulson.github.io//2026/04/23/Why_not_Lean.html](https://lawrencecpaulson.github.io//2026/04/23/Why_not_Lean.html)

**摘要**

本文批判了“Lean是形式化数学唯一可行选择”的主流观点，指出该领域已有60年丰富历史。作者（疑似劳伦斯·保尔森）梳理了关键里程碑：AUTOMATH（1968年）形式化了兰道的《分析基础》；博耶和摩尔的ACL2证明了几何不完备定理等结论；基于LCF的系统（HOL Light、Isabelle/HOL）在Lean崛起前就已处理重大成果（四色定理、开普勒猜想）。Lean成功的部分原因在于摒弃了Rocq对“构造性证明”的执念，并被汤姆·黑尔斯选用于定义高级数学对象。然而，作者批评Lean社群的“狂热崇拜”及对“命题即类型”原则的狭隘固守——该原则将证明与庞大且不必要的证明对象混为一谈。相比之下，罗宾·米尔纳的LCF方法通过抽象数据类型高效检查证明而无需存储庞大项，这一教训被依赖类型系统所忽视。作者力挺Isabelle/HOL，称赞其卓越的自动化能力（Sledgehammer）、清晰的结构化证明（Isar），并避免依赖类型的缺陷（不可判定类型检查、宇宙层级）。他指出即便是Lean的mathlib内部也常不鼓励依赖类型。最终，作者认为AI工具或可跨系统转换可读证明，降低对单一证明助手的依赖。作者承认此前遗漏，并预告后续将撰文讨论Mizar。

---

## 4. macOS 27 即将带来的网络功能变化

**原文标题**: Networking changes coming in macOS 27

**原文链接**: [https://eclecticlight.co/2026/04/23/networking-changes-coming-in-macos-27/](https://eclecticlight.co/2026/04/23/networking-changes-coming-in-macos-27/)

**摘要：macOS 27 即将迎来网络功能变更**

苹果公司就预计于2026年9月发布的macOS 27系统，发布了两项关于网络变更的早期预警。

**1. 移除AFP支持：** 苹果长期以来暗示将移除其传统文件共享协议——Apple Filing Protocol (AFP)。在macOS 27中，AFP支持可能最终被取消。这将影响依赖Time Capsules或不支持SMB3的老旧NAS设备的用户。不升级至macOS 27的用户仍可使用AFP，但升级至新系统的Apple Silicon Mac用户可能需要更换其网络存储设备。

**2. 更严格的TLS

**时间表：** 开发者测试版将于2026年6月8日发布；公测版约在2026年7月8日；正式版可能于2026年9月中旬推出。两项变更均不追溯既往。

---

## 5. 中国阻止Meta收购AI初创公司Manus

**原文标题**: China blocks Meta's acquisition of AI startup Manus

**原文链接**: [https://www.cnbc.com/2026/04/27/meta-manus-china-blocks-acquisition-ai-startup.html](https://www.cnbc.com/2026/04/27/meta-manus-china-blocks-acquisition-ai-startup.html)

中国国家规划机构国家发展和改革委员会已下令Meta终止其对新加坡人工智能初创公司Manus价值20亿美元的收购，理由是需要遵守法律法规。该交易于去年12月宣布，曾受到中国和华盛顿方面的审查。中国于今年1月启动调查，而美国立法者则限制美国投资中国人工智能企业。Manus最初在中国创立，后迁至新加坡，这种模式被一些科技创始人和风投机构用来规避两国政府的审查。该初创公司开发通用人工智能代理，截至去年12月（产品发布8个月后），其年经常性收入已达1亿美元。Meta此前表示该收购"完全符合适用法律"。这一干预行动令那些希望借助"新加坡洗白"模式的中国科技创始人和风险投资家感到震惊。一名中国官员暗示，妥善处理此类问题可能有助于推动APEC相关讨论。

---

## 6. 超级ZSNES – GPU驱动的超级任天堂模拟器

**原文标题**: Super ZSNES – GPU Powered SNES Emulator

**原文链接**: [https://zsnes.com/](https://zsnes.com/)

**Super ZSNES 摘要 – GPU 驱动的 SNES 模拟器**

ZSNES 的原班开发人员已重新聚首，开发了 **Super ZSNES**，这是一款完全重写、由 GPU 驱动的 SNES 模拟器。它的目标是在 CPU 和音频核心上实现远超原版的精确度，GPU 驱动的 PPU 核心则支持高分辨率 Mode 7 和针对不同游戏的增强功能。

主要功能包括现代化的经典界面（带飘雪效果）、即时存档、倒带、快进、作弊码和自动存档历史记录。最突出的是 **超级增强引擎**，目前支持七款流行游戏，并计划支持更多。增强功能包括手绘高分辨率艺术图、背景纹理/法线贴图、针对易卡顿游戏的超频、宽屏支持（可用时）、无压缩音频替换以及 3D 高度映射 Mode 7。所有增强功能均可单独开关，且不含任何受版权保护的 ROM 数据——用户必须自行提供 ROM。

下载可适用于 Windows、Mac、Linux 和 Android（iOS 即将推出）。开发人员指出，这是早期版本，存在一些模拟错误，缺少特殊芯片支持（DSP1、SuperFX 等），并且正在进行性能优化。未来计划加入联机游戏和更多增强类型。该软件按“原样”提供，不提供任何担保，且与任何商标公司无关。

---

## 7. 清理SVG文件的烦恼

**原文标题**: The woes of sanitizing SVGs

**原文链接**: [https://muffin.ink/blog/scratch-svg-sanitization/](https://muffin.ink/blog/scratch-svg-sanitization/)

本文详述了Scratch在处理SVG安全策略中反复出现的漏洞，并论证其从根本上不可持续。自2019年起，Scratch试图通过在用户控制的SVG插入主文档处理前，剥离危险内容（如`<script>`标签）来保障安全。

文章列举了该修补式方法的一系列失败案例：

1.  **2019年：** 通过`<script>`标签实现XSS（用正则表达式修复）。
2.  **2020年：** 通过大小写变体和内联事件处理程序绕过正则表达式（用DOMPurify修复）。
3.  **2022年：** 通过`<image href>`造成HTTP泄露（用自定义钩子修复）。
4.  **2023年：** 通过CSS `@import`造成HTTP泄露（用JS CSS解析器修复）。
5.  **2024年：** 通过Paper.js库使用未净化的SVG造成XSS（部分修复）。
6.  **2025年：** 通过CSS `url()`造成HTTP泄露（扩展净化逻辑修复）。
7.  **2026年：** 因之前`url()`修复中的三个漏洞造成HTTP泄露（转义码、多值、CSS变量）。
8.  **2026年：** 利用CSS长过渡动画实现全页面样式篡改（未修复）。
9.  **2026年（披露）：** 通过`image-set()`造成HTTP泄露（未修复）。
10. **20XX年（未来）：** 因CSS新特性如`src()`和`image()`可能造成HTTP泄露（未修复）。

核心论点是：依赖复杂且被动响应的净化方案注定失败。每次修复都会产生新的绕过途径，而未来浏览器的变更必然导致更多漏洞。作者总结道，当前策略不可持续，尤其是针对全页面样式篡改这类问题，根本不存在简单全面的修复方案。

---

## 8. 射频工程的悄然复兴

**原文标题**: The Quiet Resurgence of RF Engineering

**原文链接**: [https://atempleton.bearblog.dev/quiet-resurgence-of-rf-engineering/](https://atempleton.bearblog.dev/quiet-resurgence-of-rf-engineering/)

**摘要：** 作者作为一名航空航天软件工程师，认为射频工程在长期衰退后正经历显著复兴。

该领域因互联网泡沫后电信行业整合以及软件职业兴起（人才从硬件流失）而萎缩。然而射频从未消亡——国防部门使其保持关键地位。如今多个行业同时推动其复兴：

1.  **太空经济繁荣：** 十年内发射次数增长10倍（从260次增至2695次）。每颗卫星和地面站都需要收发器、天线和滤波器。2024年太空经济规模达6130亿美元。
2.  **5G部署：** 5G MIMO无线电使用的射频元件（放大器、开关）是4G基站的8-16倍，推动元件市场迈向500亿美元。
3.  **6G研发：** 亚太赫兹频率及集成传感的早期研究将催生新硬件需求。
4.  **持续驱动力：** 汽车雷达（碰撞规避强制配置）和Wi-Fi 7带来稳定持久需求。

人才供应严重短缺。73%的电气工程雇主无法在六个月内填补职位，半导体行业（受《芯片法案》推动）正争抢同样萎缩的毕业生资源。射频工程师平均年薪已超13万美元。

尽管作者承认软件工程师可学到足够射频知识胜任工作，但设计复杂硬件需要深厚、不可速成的物理直觉。核心结论是：射频领域目前需求旺盛、供给受限，值得认真考虑。

---

## 9. Mercor公司4万名AI承包商处窃取4TB语音样本

**原文标题**: 4TB of voice samples just stolen from 40k AI contractors at Mercor

**原文链接**: [https://app.oravys.com/blog/mercor-breach-2026](https://app.oravys.com/blog/mercor-breach-2026)

一个名为Lapsus$的组织从AI承包商平台Mercor窃取了4TB数据，暴露了超过4万名承包商的语音样本和政府身份证件。与以往的数据泄露不同，此次事件将高质量语音录音（每条时长2至5分钟）与经过验证的身份文件配对，从而能够实现先进的语音克隆和欺诈。

攻击者现在可以利用这些克隆语音绕过银行声纹验证、对雇主发起语音钓鱼攻击、实施深度伪造视频通话诈骗（如2500万美元的Arup案）、进行保险欺诈，以及针对家庭实施冒充诈骗。联邦调查局报告称，2026年老年人欺诈造成的损失达23亿美元，其中紧急冒充电话是增长最快的类别。

对于受害者，文章建议：减少公开音频痕迹；与家人和财务联系人建立口头暗号；在银行和智能设备上删除并重新注册声纹；禁用声纹作为验证因素；对可疑录音进行取证分析。

取证分析服务ORAVYS为每位数据泄露受害者提供最多三个可疑样本的免费检测。分析师会寻找诸如编解码器不匹配、不自然的呼吸模式、微抖动、共振峰轨迹错误、室内声学不一致、韵律平坦以及语速稳定性等方面的痕迹，以检测合成语音。

---

## 10. 海岸巫师联合公司

**原文标题**: United Wizards of the Coast

**原文链接**: [https://unitedwizardsofthecoast.com/news/announcing-united-wizards-coast-cwa](https://unitedwizardsofthecoast.com/news/announcing-united-wizards-coast-cwa)

**摘要：**

2026年4月27日，《万智牌：竞技场》团队的员工宣布成立工会——**海岸巫师联合-CWA**。绝大多数符合条件的竞技场员工签署了工会卡以示支持。该团体已通知海岸巫师（WOTC）领导层其组建工会的意向，并请求自愿承认。

该工会的目标是启动集体谈判，为竞技场团队争取更好的待遇和工作条件。他们强调，此举旨在维护员工的权益与福祉，这不仅对团队而言是重要一步，对整个游戏行业也是如此。声明中附有一封致WOTC领导层的信函链接，敦促其真诚参与。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 2 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 3 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 4 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 5 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 6 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 7 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 8 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 9 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 10 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 11 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 12 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 13 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 14 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 15 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 16 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 17 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 18 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 19 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 20 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 21 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 22 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 23 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 24 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 25 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 26 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 27 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 28 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 29 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 30 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 31 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 32 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 33 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 34 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 35 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 36 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 37 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 38 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 39 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 40 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 41 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 42 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 43 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 44 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 45 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 46 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 47 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 48 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 49 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 50 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 51 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 52 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 53 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 54 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 55 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 56 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 57 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 58 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 59 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 60 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 61 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 62 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 63 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 64 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 65 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 66 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 67 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 68 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 69 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 70 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 71 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 72 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 73 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 74 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 75 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 76 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 77 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 78 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 79 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 80 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 81 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 82 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 83 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 84 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 85 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 86 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 87 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 88 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 89 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 90 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 91 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 92 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 93 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 94 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 95 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 96 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 97 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 98 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 99 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 100 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 101 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 102 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 103 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 104 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 105 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 106 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 107 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 108 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 109 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 110 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 111 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 112 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 113 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 114 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 115 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 116 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 117 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 118 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 119 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 120 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 121 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 122 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 123 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 124 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 125 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 126 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 127 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 128 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 129 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 130 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 131 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 132 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 133 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 134 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 135 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 136 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 137 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 138 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 139 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 140 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 141 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 142 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 143 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 144 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 145 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 146 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 147 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 148 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 149 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 150 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 151 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 152 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 153 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 154 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 155 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 156 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 157 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 158 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 159 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 160 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 161 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 162 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 163 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 164 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 165 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 166 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 167 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 168 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 169 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 170 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 171 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 172 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 173 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 174 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 175 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 176 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 177 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 178 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 179 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 180 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 181 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 182 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 183 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 184 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 185 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 186 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 187 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 188 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 189 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 190 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 191 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 192 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 193 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 194 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 195 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 196 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 197 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 198 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 199 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 200 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 201 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 202 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 203 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 204 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 205 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 206 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 207 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 208 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 209 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 210 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 211 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 212 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 213 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 214 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 215 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 216 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 217 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 218 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 219 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 220 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 221 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 222 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 223 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 224 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 225 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 226 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 227 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 228 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 229 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 230 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 231 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 232 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 233 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 234 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 235 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 236 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 237 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 238 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 239 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 240 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 241 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 242 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 243 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 244 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 245 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 246 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 247 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 248 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 249 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 250 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 251 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 252 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 253 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 254 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 255 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 256 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 257 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 258 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 259 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 260 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 261 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 262 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 263 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 264 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 265 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 266 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 267 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 268 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 269 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 270 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 271 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 272 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 273 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 274 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 275 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 276 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 277 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 278 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 279 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 280 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 281 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 282 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 283 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 284 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 285 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 286 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 287 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 288 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 289 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 290 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 291 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 292 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 293 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 294 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 295 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 296 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 297 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 298 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 299 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 300 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 301 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 302 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 303 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 304 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 305 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 306 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 307 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 308 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 309 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 310 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 311 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 312 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 313 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 314 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 315 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 316 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 317 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 318 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 319 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 320 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 321 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 322 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 323 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 324 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 325 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 326 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 327 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 328 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 329 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 330 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 331 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 332 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 333 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 334 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 335 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 336 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 337 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 338 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 339 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 340 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 341 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 342 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 343 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 344 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 345 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 346 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 347 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 348 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 349 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 350 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 351 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 352 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 353 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 354 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 355 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 356 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 357 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 358 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 359 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 360 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 361 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 362 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 363 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 364 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 365 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 366 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 367 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 368 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 369 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 370 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 371 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 372 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 373 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 374 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 375 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 376 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 377 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 378 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 379 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 380 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 381 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 382 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 383 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 384 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 385 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 386 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 387 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 388 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 389 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 390 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 391 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 392 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 393 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 394 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 395 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 396 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 397 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 398 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 399 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 400 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 401 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
