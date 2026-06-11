# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-11.md)

*最后自动更新时间: 2026-06-11 20:33:42*
## 1. Show HN：Homebrew 6.0.0

**原文标题**: Show HN: Homebrew 6.0.0

**原文链接**: [https://brew.sh/2026/06/11/homebrew-6.0.0/](https://brew.sh/2026/06/11/homebrew-6.0.0/)

**Homebrew 6.0.0** 于 2026 年 6 月 11 日发布，引入了重要的安全性、性能和功能改进。

**主要亮点：**
- **Tap 信任机制**：新的安全机制要求第三方 tap 在运行其代码前获得明确信任，降低恶意 tap 带来的风险。
- **默认内部 JSON API**：更新更快且网络流量更少；将所有元数据合并为单次下载。
- **Linux 沙箱**：Bubblewrap 沙箱现在使 Linux 与 macOS 保持一致，确保构建/测试/安装后阶段的安全。
- **更优默认设置**：Ask 模式现为开发者默认模式，显示依赖摘要和确认提示。
- **brew bundle**：默认并行安装 formula，并支持 npm、krew、cargo、go 及 winget。
- **性能**：`brew leaves` 速度提升约 30%，并行化 bottle tab 获取，减少 Ruby 库加载。
- **macOS 27（金门）支持**：添加初步支持，计划淘汰 Intel（2026 年 9 月降至三级支持，2027 年 9 月停止支持）。

**安全**：修复了三个安全问题（POST 重定向绕过、Git 钩子 root 漏洞、安装器 plist 漏洞）。新增 `brew vulns` 子命令，检查已安装包是否存在已知漏洞。

**其他值得注意的变更**：新增 `brew exec` 命令、cask 固定、AppImage 支持、systemd 定时器服务、简化 DSL 操作的安装步骤框架，以及文档改进。

Homebrew 仍是一个由志愿者运营的非营利项目，为 CI 和基础设施成本寻求捐赠。

---

## 2. MiMo代码现已发布并开源

**原文标题**: MiMo Code is now released and open-source

**原文链接**: [https://mimo.xiaomi.com/mimocode](https://mimo.xiaomi.com/mimocode)

无法访问文章链接。

---

## 3. 要求撤回加拿大《C-22号法案》的请愿书

**原文标题**: Petition to Withdraw Canada's Bill C-22

**原文链接**: [https://www.ourcommons.ca/petitions/en/Petition/Sign/e-7416](https://www.ourcommons.ca/petitions/en/Petition/Sign/e-7416)

**关于撤回C-22法案的请愿书摘要（e-7416）**

提交给众议院的这份请愿书要求立即撤回C-22法案，该法案旨在修订《刑法典》和《罪犯身份认定法》。请愿者认为，该法案将侵犯基本自由和权利。

主要关切如下：

1.  **强制采集指纹和照片范围的扩大：** 该法案提议，不仅在被指控犯罪时，而且在因任何*可公诉*罪行被捕时，警方均有权强制要求个人提供指纹和照片。请愿者认为，这等同于在审判前将人视为有罪，侵犯了无罪推定原则。
2.  **侵犯隐私及违反《宪章》：** 请愿者主张，这种扩权行为是过度干涉，将从广泛人群（甚至包括非暴力或轻微可公诉罪行嫌疑人）中收集敏感的生物识别数据，从而侵犯《加拿大权利与自由宪章》所保护的隐私权。
3.  **潜在的滥用风险：** 人们担忧，这种被扩大的权力可能被不成比例地用于边缘化社区，并在缺乏明确理由的情况下增加警方的监控力度。

请愿书总结指出，C-22法案是向大规模监控迈出的危险一步。它敦促加拿大政府撤回该法案，以保护所有加拿大人的宪法权利。

---

## 4. AMD不愿修复的RCE漏洞

**原文标题**: The RCE that AMD wouldn't fix

**原文链接**: [https://mrbruh.com/amd2/](https://mrbruh.com/amd2/)

**摘要：**

本文描述了一位研究人员发现的AMD AutoUpdate软件中的远程代码执行漏洞。该更新程序使用HTTPS获取其配置XML文件，但其中的可执行文件下载URL使用HTTP——这使得中间人攻击者能够将其替换为任意恶意文件。AMD的代码未执行任何签名或证书验证，会立即运行下载的文件。

研究人员将该漏洞报告给AMD的漏洞赏金计划，但被以"超出范围"（中间人攻击除外）为由关闭。此事在Hacker News上引发关注后，AMD内部安全团队重新介入，要求研究人员在调查期间撤下博客文章。研究人员同意了，但AMD随后表示该漏洞不符合赏金条件，并要求将标准90天的披露期延长。研究人员最终在124天后公开了漏洞。

讽刺的是，研究人员指出该自动更新程序还存在一个无关的重定向错误（XML URL会跳转但更新程序无法跟随），导致"第22条军规"：更新程序无法通过自我更新来修复漏洞。最终补丁（在Ryzen Master中）使用了HTTPS并声称进行了签名验证，但研究人员发现仅添加了CRC-32校验，而非加密验证。

AMD发布了CVE并致谢研究人员，但未支付赏金。作者批评了AMD的响应迟缓及其对披露流程的处理方式。

---

## 5. 软件存在于提交之间

**原文标题**: Software Is Made Between Commits

**原文链接**: [https://zed.dev/blog/introducing-deltadb](https://zed.dev/blog/introducing-deltadb)

**摘要：**

Zed联合创始人认为，传统版本控制（Git）和拉取请求已不适应现代软件开发，尤其是在AI智能体介入的背景下。他们认为代码真正的“源头”是人与智能体之间的实时对话，而非离散的提交记录。Git仅在工作完成后捕获快照，却丢失了生成代码的关键对话过程。

为解决这一问题，Zed正在构建**DeltaDB**——一种新型版本控制系统。与Git的快照机制不同，DeltaDB将每一次精细操作记录为具有稳定身份的“增量”。它嵌入了无冲突复制工作树，允许多人及智能体同时编辑同一文件。关键在于，DeltaDB将每条消息与其产生的编辑操作配对，防止上下文漂移。引用锚定于增量（而非行号），因此链接在代码变更后依然有效。

这彻底消除了对拉取请求和审查线程的需求，协作在动态演进的工作树中实时完成。智能体也能访问完整对话历史以理解上下文。Git和CI仍用于检查与外部集成，但不再作为主要协作工具。

DeltaDB的测试版将在几周内发布，现已开放早期用户候补名单。

---

## 6. 流行文化中的Emacs形象

**原文标题**: Emacs appearances in pop culture

**原文链接**: [https://ianyepan.github.io/posts/emacs-in-pop-culture/](https://ianyepan.github.io/posts/emacs-in-pop-culture/)

本文梳理了Emacs在流行文化中的登场记录，展现这款小众文本编辑器如何出现在影视、漫画、动画及纪录片中。典型案例包括：

- **《社交网络》（2010）**：马克·扎克伯格使用Emacs编写Perl脚本抓取照片。
- **《创：战纪》（2010）**：角色通过Emacs的eshell阻止黑客程序。
- **《北极寒流》（2010）**：科学家借助Emacs Lisp（具体为`xml-parse.el`）恢复数据。
- **《硅谷》（HBO，2014-2019）**：角色提及编辑器之战，将制表符与空格的对比类比为Vim与Emacs之争。
- **DC漫画《黑客档案》（1992-1993）**：主角执行命令`emacs cure.c`。
- **漫画《王者们的维京》**：黑客场景中出现包含`pcase`和`seq-map`的Emacs Lisp代码。
- **动画《键的金属偶像》（1994-1996）**：终端显示`save-excursion`等Emacs Lisp关键词。
- **《实习大叔》（2013）**：角色建议将Ubuntu默认编辑器由Vi改为Emacs。
- **动画《Aldnoah.Zero》（2014-2015）**：驾驶员在机体战斗中调试`.emacs`文件及Emacs Lisp片段。
- **纪录片《AlphaGo》（2017）**：DeepMind工程师使用极简配置在Emacs中编写Lua代码。
- **Netflix剧集《如何在网上卖迷幻药》**：角色在餐桌上争论Vim与Emacs的优劣。

文章还列举了知名Emacs用户（高德纳、吉多·范罗苏姆、林纳斯·托瓦兹）及特别提及内容（如xkcd的`M-x butterfly`漫画和尼尔·斯蒂芬森的文章）。作者欢迎读者通过邮件提供更多发现。

---

## 7. Waymo 尊享版

**原文标题**: Waymo Premier

**原文链接**: [https://waymo.com/blog/2026/06/waymo-premier/](https://waymo.com/blog/2026/06/waymo-premier/)

Waymo推出了**Waymo Premier**，这是一项仅限受邀会员的专属计划，面向其高频乘客。每月支付**29.99美元**，会员即可享受专为提升全自动驾驶打车服务体验而设计的独家权益。

主要权益包括：
- **优先接单：** 更快的匹配速度和更短的等待时间。
- **乘车优惠：** 每趟行程享10%现金返还，高峰时段奖励更高。
- **抢先体验：** 当Waymo扩展至新城市时，会员可率先使用。
- **灵活取消：** 每月最多**五次免费取消**。

该计划最初面向**旧金山、洛杉矶和凤凰城**的特定用户开放，并计划扩展至更多城市。Waymo表示，该计划非常适合日常通勤者和频繁使用者，能提供更高的可靠性和跨城市通用的价值。用户可留意Waymo应用中的专属邀请通知。

---

## 8. 听力训练练习

**原文标题**: Ear Training Practice Exercises

**原文链接**: [https://tonedear.com/](https://tonedear.com/)

本文介绍了 **Toned Ear: Ear Training**（音感训练），这是一个通过日常练习提供结构化训练以培养音乐聆听技巧的网站。其主要目标是通过建立对声音的直觉理解来提高音乐能力。

主要练习包括：
- **音程**：识别两个连续音符之间的距离。
- **和弦**：辨认所演奏和弦的类型（例如大调、小调）。
- **音阶**：说出所演奏音阶的名称（例如大调、小调）。
- **和弦进行**：识别序列中的每个和弦。
- **绝对音感**：说出单独演奏的一个音符的名称。
- **音级（功能性）**：在和弦进行后，识别最后一个音符相对于调性的音级。
- **调内音程（功能性）**：结合调性内的音级与音程。
- **旋律听写**：在和弦进行后，识别一段短旋律中每个音符的音级。

此外，该网站还提供**教师版**用于课堂教学，支持在线创建作业、设置具体练习、跟踪学生成绩，并包含额外的乐理练习，如和弦构建与调号识别。

---

## 9. 代码行迎来了更好的公关

**原文标题**: Lines of code got a better publicist

**原文链接**: [https://curlewis.co.nz/posts/lines-of-code-got-a-better-publicist/](https://curlewis.co.nz/posts/lines-of-code-got-a-better-publicist/)

**摘要：**

本文批判了AI生产力指标从基于结果的宣称向基于数量的虚荣指标的转变。文章指出，谷歌、Anthropic、OpenAI、Cursor等主要AI供应商如今大肆宣扬“由AI编写的代码百分比”，这本质上就是“经过更好公关的代码行数”。早期的宣称（例如GitHub声称任务完成速度提升55%）是可验证的结果衡量指标；而当前的数量指标，只要使用率上升就永远不会失效。

作者认为，结果证据已变得复杂：尽管一些研究显示任务完成效率提升了26%，但其他研究也揭示了代码更替率上升、重构减少，以及经验丰富的开发者使用AI后效率反而下降（尽管最新研究已部分推翻这些结论）。美国国家经济研究局一项调查发现，69%的企业使用了AI，但约90%的企业报告称未观察到可衡量的生产力影响。

真正令人担忧的是现实世界的影响：Block公司（裁员40%）和Atlassian公司（裁员10%）等企业以AI提升生产力为理由进行裁员，尽管其业务表现强劲。作者认为，这不过是“为其他原因所做的决策进行的公关宣传”，并指出真正的效率提升按理应推动增长，而非减少员工数量。

行动呼吁：日常使用AI，但应使用经过实战检验的指标（如DORA指标、可靠性、收入、客户价值）来衡量工程成果，而不是令牌数或“由AI编写的代码百分比”。

---

## 10. macOS 27 Beta 导致无法启动 Asahi Linux

**原文标题**: macOS 27 Beta breaks the ability to boot Asahi Linux

**原文链接**: [https://www.phoronix.com/news/macOS-27-Beta-Breaks-Asahi](https://www.phoronix.com/news/macOS-27-Beta-Breaks-Asahi)

**摘要：** 该文章报道称，苹果于2026年6月发布的macOS 27“金门”测试版导致Apple Silicon Mac无法启动Asahi Linux。该更新修改了启动选择器和启动磁盘处理方式，使Asahi Linux分区对系统不可见，但数据仍然完整。Asahi Linux警告用户避免使用macOS 27测试版，并建议保留macOS 26或更旧版本的辅助安装以恢复启动权限。已向苹果提交错误报告，但尚未收到回应。此外，Linux 7.2将支持Apple M3设备的启动功能，但尚未准备好供用户使用，尤其是受macOS 27测试版影响的用户。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 2 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 3 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 4 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 5 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 6 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 7 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 8 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 9 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 10 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 11 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 12 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 13 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 14 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 15 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 16 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 17 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 18 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 19 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 20 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 21 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 22 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 23 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 24 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 25 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 26 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 27 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 28 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 29 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 30 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 31 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 32 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 33 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 34 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 35 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 36 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 37 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 38 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 39 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 40 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 41 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 42 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 43 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 44 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 45 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 46 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 47 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 48 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 49 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 50 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 51 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 52 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 53 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 54 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 55 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 56 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 57 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 58 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 59 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 60 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 61 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 62 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 63 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 64 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 65 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 66 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 67 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 68 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 69 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 70 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 71 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 72 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 73 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 74 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 75 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 76 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 77 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 78 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 79 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 80 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 81 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 82 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 83 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 84 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 85 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 86 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 87 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 88 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 89 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 90 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 91 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 92 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 93 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 94 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 95 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 96 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 97 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 98 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 99 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 100 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 101 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 102 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 103 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 104 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 105 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 106 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 107 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 108 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 109 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 110 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 111 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 112 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 113 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 114 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 115 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 116 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 117 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 118 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 119 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 120 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 121 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 122 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 123 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 124 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 125 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 126 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 127 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 128 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 129 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 130 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 131 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 132 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 133 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 134 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 135 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 136 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 137 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 138 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 139 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 140 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 141 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 142 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 143 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 144 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 145 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 146 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 147 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 148 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 149 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 150 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 151 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 152 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 153 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 154 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 155 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 156 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 157 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 158 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 159 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 160 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 161 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 162 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 163 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 164 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 165 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 166 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 167 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 168 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 169 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 170 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 171 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 172 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 173 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 174 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 175 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 176 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 177 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 178 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 179 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 180 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 181 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 182 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 183 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 184 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 185 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 186 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 187 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 188 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 189 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 190 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 191 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 192 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 193 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 194 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 195 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 196 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 197 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 198 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 199 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 200 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 201 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 202 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 203 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 204 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 205 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 206 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 207 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 208 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 209 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 210 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 211 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 212 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 213 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 214 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 215 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 216 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 217 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 218 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 219 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 220 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 221 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 222 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 223 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 224 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 225 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 226 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 227 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 228 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 229 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 230 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 231 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 232 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 233 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 234 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 235 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 236 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 237 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 238 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 239 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 240 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 241 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 242 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 243 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 244 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 245 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 246 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 247 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 248 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 249 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 250 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 251 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 252 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 253 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 254 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 255 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 256 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 257 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 258 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 259 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 260 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 261 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 262 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 263 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 264 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 265 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 266 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 267 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 268 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 269 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 270 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 271 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 272 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 273 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 274 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 275 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 276 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 277 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 278 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 279 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 280 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 281 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 282 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 283 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 284 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 285 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 286 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 287 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 288 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 289 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 290 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 291 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 292 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 293 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 294 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 295 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 296 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 297 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 298 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 299 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 300 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 301 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 302 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 303 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 304 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 305 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 306 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 307 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 308 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 309 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 310 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 311 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 312 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 313 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 314 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 315 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 316 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 317 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 318 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 319 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 320 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 321 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 322 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 323 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 324 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 325 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 326 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 327 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 328 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 329 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 330 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 331 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 332 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 333 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 334 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 335 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 336 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 337 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 338 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 339 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 340 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 341 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 342 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 343 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 344 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 345 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 346 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 347 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 348 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 349 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 350 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 351 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 352 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 353 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 354 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 355 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 356 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 357 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 358 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 359 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 360 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 361 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 362 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 363 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 364 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 365 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 366 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 367 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 368 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 369 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 370 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 371 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 372 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 373 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 374 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 375 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 376 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 377 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 378 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 379 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 380 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 381 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 382 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 383 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 384 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 385 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 386 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 387 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 388 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 389 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 390 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 391 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 392 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 393 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 394 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 395 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 396 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 397 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 398 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 399 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 400 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 401 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 402 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 403 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 404 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 405 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 406 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 407 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 408 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 409 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 410 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 411 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 412 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 413 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 414 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 415 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 416 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 417 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 418 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 419 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 420 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 421 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 422 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 423 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 424 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 425 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 426 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 427 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 428 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 429 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 430 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 431 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 432 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 433 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 434 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 435 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 436 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 437 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 438 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 439 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 440 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 441 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 442 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 443 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 444 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 445 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 446 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
