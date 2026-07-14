# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-14.md)

*最后自动更新时间: 2026-07-14 02:57:07*
## 1. Git历史记录命令值得更多关注

**原文标题**: The Git history command deserves more attention

**原文链接**: [https://lalitm.com/post/git-history/](https://lalitm.com/post/git-history/)

**摘要：**  
本文重点介绍了 Git 的实验性命令 `git history`（在 2.54 和 2.55 版本中发布），作为 `jj` 的轻量级替代方案，用于在不切换工具的情况下管理并行工作。它包含三个子命令：  

- **`fixup`**：暂存修复内容，将其折叠到旧提交中，然后自动重写所有后代提交并移动关联分支——比 `git rebase --update-refs` 更强大。该命令是原子性的，会拒绝可能导致冲突的操作。  
- **`reword`**：编辑旧提交的消息，并在不影响工作树或索引的情况下重建其上方的提交栈。  
- **`split`**：通过选择代码块，以交互方式将一个提交拆分为两个，避免了复杂的 `git rebase` 操作。  

主要优势：原子性（没有半损坏状态）、自动更新变基范围之外的分支，以及内置于核心 Git 中（无需额外安装）。局限性：尚不支持合并提交，且缺乏一流的冲突处理机制（尽管文档暗示未来会改进）。  

作者指出，`git history` 并不能完全取代 `jj`（后者提供撤销日志、工作副本即提交、以及携带冲突的变基功能），但认为这对日常 Git 用户来说是一个重大进步。

---

## 2. 无线通信基础

**原文标题**: Fundamentals of Wireless Communication

**原文链接**: [https://web.stanford.edu/~dntse/wireless_book.html](https://web.stanford.edu/~dntse/wireless_book.html)

本文介绍了David Tse与Pramod Viswanath合著的教材《无线通信基础》（剑桥大学出版社，2005年）。该书面向具备概率论与数字通信背景的研究生及执业工程师，系统阐述了物理层无线通信理论，重点涵盖MIMO通信、空时编码、机会通信、OFDM及CDMA等关键主题。书中通过GSM、IS-95（CDMA）、IS-856（1xEV-DO）、Flash OFDM和ArrayComm SDMA等实际案例，强调理论与现实系统之间的联系。

网络版（PDF）包含练习题，受标准版权保护。教师可通过申请获取配套资源，包括习题解答手册和教学幻灯片。该书已被全球50多所院校广泛采用。作者还基于本书开设了为期2天共12小时的短期课程，已在全球多家企业与高校讲授。

---

## 3. 无需打开Xcode即可构建和发布Mac与iOS应用

**原文标题**: Building and shipping Mac and iOS apps without opening Xcode

**原文链接**: [https://scottwillsey.com/building-and-shipping-mac-and-ios-apps-without-ever-opening-xcode/](https://scottwillsey.com/building-and-shipping-mac-and-ios-apps-without-ever-opening-xcode/)

**摘要：在不打开 Xcode 的情况下构建 Mac 与 iOS 应用**

本文介绍如何在完成一次性初始设置后，完全通过命令行开发和发布 Mac 与 iOS 应用，从而绕过 Xcode 的图形用户界面。

**关键

**一次性图形界面设置：**
1. 安装 Xcode 并将其设置为命令行工具链
2. 接受许可协议并运行首次启动组件
3. 在 Xcode 设置中登录 Apple ID
4. 创建 Developer ID Application 证书（用于公证分发）
5. 通过 `xcrun notarytool store-credentials` 存储公证凭证
6. 创建包含团队 ID 和包前缀的 `Local.xcconfig` 文件（已加入 gitignore）

**自动化构建流水线：**
`scripts/release.sh` 脚本处理完整流程：归档 → Developer ID 签名 → 公证 → 钉选 → 安装到 `/Applications`。脚本在出现任何错误时会立即报错退出。`CLAUDE.md` 文件配置 AI 编码代理自动使用这些命令。

**快速开发：**
未签名的构建使用 `CODE_SIGNING_ALLOWED=NO` 实现快速编译和测试；发布脚本则处理正确的签名和公证。

这种方法让开发者能够完全通过终端命令和 AI 编码工具"随心编码"，在初始配置之后无需再触碰 Xcode 的图形界面。

---

## 4. 一位在摄影普及前用画笔记录印度的英国女性

**原文标题**: An Englishwoman who sketched India before photography took hold

**原文链接**: [https://www.bbc.com/news/articles/cm2drrv6q54o](https://www.bbc.com/news/articles/cm2drrv6q54o)

艾米莉·伊登，一位天赋异禀的英国艺术家兼作家，于19世纪30年代随其兄长、总督乔治·伊登（奥克兰勋爵）游历印度北部。在摄影技术普及之前，她以细腻笔触描绘了所遇的形形色色的人物——从王公贵族到仆役、商贾与武士——捕捉了一个正处政治变革边缘的地区。其题材之广，远胜同代画师。1844年，根据她原始素描制作的二十余幅手工上色石版画结集为《印度王公与民众人像》出版，现正于德里DAG画廊的《王公与民众》展览中展出。尽管初时思乡情切，伊登天然的好奇心与敏锐眼光仍驱使她记录下那些异域的服饰、建筑与风景。她的素描中包括马哈拉贾·兰吉特·辛格宫廷、阿富汗流亡者与锡克武士的罕见影像。她亦是一位诙谐的作家，其书信后结集为《溯河而上》与《印度来信》出版。尽管伊登秉持英国"文明教化使命"的信念，其作品仍属同代英国女艺术家之翘楚，为摄影术普及前的印度留下了独一无二的视觉记录。

---

## 5. 苹果新SpeechAnalyzer API性能对比：与Whisper及前代产品基准测试

**原文标题**: Apple's new SpeechAnalyzer API, benchmarked against Whisper and its predecessor

**原文链接**: [https://get-inscribe.com/blog/apple-speech-api-benchmark.html](https://get-inscribe.com/blog/apple-speech-api-benchmark.html)

苹果全新SpeechAnalyzer API（适配iOS/macOS 26系统）在英语设备端转录准确率上全面超越前代产品及OpenAI的Whisper模型。在LibriSpeech数据集的基准测试中，SpeechAnalyzer在清晰语音环境下实现2.12%的词错误率（WER），嘈杂语音环境下为4.56%，而Whisper Small对应的两项数据分别为3.74%和7.95%——且运行速度提升约三倍。旧版SFSpeechRecognizer表现最差，错误率高达9.02%和16.25%。

文章强烈建议开发者从旧版API迁移，因新引擎可降低3.5至4倍错误率。不过Whisper在多语言支持（覆盖100+种语言，而苹果仅约30种）及跨平台兼容性方面仍具优势。

该基准测试可复现：Whisper测试结果与OpenAI公布数据高度吻合，仅因更严格的标准化处理及CoreML量化存在微小偏差。苹果引擎的原始转录文本已开放下载。测试全程在搭载M2 Pro芯片的Mac设备端运行，使用完全一致的生产环境代码路径。

实践发现：该基准测试揭示了作者自研应用Inscribe的缺陷——SpeechAnalyzer输入未完成终结化导致程序卡死，该漏洞已通过即时更新修复。对于当前苹果硬件上的英语转录需求，内置SpeechAnalyzer已成为最强设备端解决方案。

---

## 6. MorphoHDL：一种用于扩展电路的极简语言

**原文标题**: MorphoHDL: A minimalistic language for growing circuits

**原文链接**: [https://paradigms-of-intelligence.github.io/morpho/](https://paradigms-of-intelligence.github.io/morpho/)

**MorphoHDL 概述**

MorphoHDL 是一种极简硬件描述语言，旨在简化电路构建与综合。其核心概念是通过少量原语将电路描述为演化结构，而非静态连接。

该语言包含四个基本命令：`cell(n, t)`（创建名称为 `n`、类型为 `t` 的单元）、`wire(c1, p1, c2, p2)`（将单元 `c1` 的端口 `p1` 连接至单元 `c2` 的端口 `p2`）、`pull(n, v)`（将输入 `n` 设为常量 `v`）以及 `probe(n)`（声明输出 `n`）。

MorphoHDL 旨在用于快速原型开发与教学，以极简性取代 VHDL 或 Verilog 的冗长。它通过逐步构建电路图的过程式命令来描述硬件。该语言支持基于函数的分层设计与参数化模块，在无需完整面向对象范式的前提下实现可复用性。

其关键优势包括：代码量显著减少（例如全加器仅需约10行）、迭代设计期间可即时反馈，以及更贴近物理布线的思维模型。局限性包括：缺乏硬件仿真或形式化验证工具、对时序逻辑支持有限，以及无法保证综合效率。

MorphoHDL 被定位为硬件设计师的“口袋刀”——最适合小型探索性项目，在此类场景中，表达速度比工具完备性更为重要。

---

## 7. 使用LLM陪审团构建食品元数据

**原文标题**: Building Food Metadata with LLM Juries

**原文链接**: [https://careersatdoordash.com/blog/building-food-metadata-with-llm-juries-context-optimization-multimodal-ai/](https://careersatdoordash.com/blog/building-food-metadata-with-llm-juries-context-optimization-multimodal-ai/)

**摘要：**

DoorDash 开发了一种创新系统，利用“大语言模型评审团”——多个大型语言模型协同评估并优化食品描述——来生成高质量的食品元数据，旨在提升数百万道菜品的搜索、推荐和菜单准确性。

该方法结合了**上下文优化**与**多模态AI**。上下文优化通过向大语言模型提供结构化提示词，包括餐厅类型、菜系、饮食标签及用户意图（如“这道菜是否无麸质？”）。多模态AI则整合文本（菜单描述、评论）与图像（菜品照片）来增强元数据准确性，尤其适用于名称模糊或需视觉提示的菜品。

关键步骤：
1. **评审团组成**：多个大语言模型（如GPT-4、Claude）各自独立从不同角度（成分、饮食适宜性、文化准确性）评估菜品的元数据。
2. **投票与共识**：模型对属性投票（如“含乳制品吗？”）。分歧引发辩论环节，模型阐述其推理依据，从而达成更优共识。
3. **人机协同**：异常案例被标记供人工审核，在确保质量的同时不影响可扩展性。

成果：该大语言模型评审团系统相比单模型方法实现了更高的准确性与一致性，减少了饮食标签（如纯素、清真）的误判，并妥善处理了文化差异（例如区分“鸡肉提卡玛萨拉”与“黄油鸡肉”）。该方法现已支持DoorDash的元数据流水线，提升了搜索相关性与用户信任度。

该博客强调，将多样化的大语言模型与人工监督相结合，对于复杂、特定领域的元数据任务而言，是替代人工策展的一种可扩展且经济高效的选择。

---

## 8. 如果你不是在做自己热爱的事，成功或许并不重要。

**原文标题**: Success may not matter if you aren't doing what you love

**原文链接**: [https://12gramsofcarbon.com/p/founders-guide-success-may-not-matter](https://12gramsofcarbon.com/p/founders-guide-success-may-not-matter)

本文认为，尽管**产品-市场契合**至关重要，但**创始人-市场契合**对初创企业的长期成功同样重要。创始人-市场契合是指创始人与所服务市场之间在文化、性情和身份认同上的协调统一。作者主张，如果创始人与特定市场缺乏天然联结，盲目追逐任何行业、任何客户的产品-市场契合便是错误的。

关键要点包括：
- **文化与身份认同：** 创始人必须与客户共享"气场契合"（语言、背景、兴趣），才能建立信任、理解问题并高效销售。面向企业科技的销售与面向创意消费者群体的销售截然不同。
- **多维度坐标：** 契合度取决于内向/外向性格、技术背景、地理位置、个人兴趣、团队规模偏好，甚至着装风格等因素。
- **取舍与内省：** 创始人-市场契合的核心在于识别哪些取舍对创始人而言在7-10年的创业承诺中"不可承受"。试图进入不匹配的市场需要过度消耗精力，从而增加职业倦怠风险。
- **可持续性：** 缺乏创始人-市场契合时，即便初创企业取得了一定成功（如七位数年经常性收入），也可能因创始人失去兴趣或感到挫败而走向消亡。

最终，作者得出结论："黄金路径"即是创始人-市场契合与产品-市场契合的重叠区域，因为这能确保创始人的热情与身份认同支撑其穿越建设企业的漫长征程。

---

## 9. 递归自我改进的经济学 [pdf]

**原文标题**: The Economics of Recursive Self-Improvement [pdf]

**原文链接**: [https://elasticity.institute/rsi-paper.pdf](https://elasticity.institute/rsi-paper.pdf)

根据所提供的内容，该PDF文件似乎已损坏或格式不正确。大部分数据由编码流、PDF对象引用和二进制元数据组成，而非关于“递归自我改进的经济学”的可读文本或结构化信息。

文件中唯一可识别的英文文本片段包括：
- 标题：“递归自我改进的经济学 [pdf]”
- 零散、不完整的行，如“k���&J|”、“I$�7_”/   return">in the e”和“ntering a phase of”

**总结：**
所提供文档不包含可提取的连贯内容。它很可能是一个损坏或不完整的PDF文件，无法进行有意义的总结。从现有数据中无法得出关于递归自我改进的经济学的任何要点或关键信息。

---

## 10. 将您的歌声转换为可打印的乐谱（在浏览器中）

**原文标题**: Turn your singing voice into printable notes (in the browser)

**原文链接**: [https://om-intelligence.ch/projects/vocal-notation/vocal-notation.html](https://om-intelligence.ch/projects/vocal-notation/vocal-notation.html)

本文介绍了一款基于浏览器的工具，可将歌唱声音实时转换为可打印的乐谱。

**工作原理：** 用户对着麦克风演唱，节拍器设定节奏网格。该工具检测每拍细分时段的音高，并将这些音高作为音符记录在五线谱上。可视化界面实时显示基频与谱线对应关系，垂直线代表节拍。红色符干表示检测到新音符（重新起音），而非延续同一音高。

**主要功能：**
- **谱号选择：** 自动（最少加线）、高音谱号、高音八度移调（适用于男声）、低音谱号。
- **调号：** 自动检测或手动选择（最多5个升号/降号）。
- **节奏设置：** 速度（BPM）、网格细分（四分/八分/十六分音符）、每小节拍数（2-6拍）。
- **检测控制：** 音高容差（±50音分）、噪声门（过滤微弱声响）、重新起音灵敏度（区分重复音与连音）。建议用户佩戴耳机避免节拍器声音串扰。
- **导出格式：** MusicXML、ABC、SVG及直接打印。

**输出显示：** 实时音高轨迹、动态生成的乐谱，支持复制、下载或关闭当前会话。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 2 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 3 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 4 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 5 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 6 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 7 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 8 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 9 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 10 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 11 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 12 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 13 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 14 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 15 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 16 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 17 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 18 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 19 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 20 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 21 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 22 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 23 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 24 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 25 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 26 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 27 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 28 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 29 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 30 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 31 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 32 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 33 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 34 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 35 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 36 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 37 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 38 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 39 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 40 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 41 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 42 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 43 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 44 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 45 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 46 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 47 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 48 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 49 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 50 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 51 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 52 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 53 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 54 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 55 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 56 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 57 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 58 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 59 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 60 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 61 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 62 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 63 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 64 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 65 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 66 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 67 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 68 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 69 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 70 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 71 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 72 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 73 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 74 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 75 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 76 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 77 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 78 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 79 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 80 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 81 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 82 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 83 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 84 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 85 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 86 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 87 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 88 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 89 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 90 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 91 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 92 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 93 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 94 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 95 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 96 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 97 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 98 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 99 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 100 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 101 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 102 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 103 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 104 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 105 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 106 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 107 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 108 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 109 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 110 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 111 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 112 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 113 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 114 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 115 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 116 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 117 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 118 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 119 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 120 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 121 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 122 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 123 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 124 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 125 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 126 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 127 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 128 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 129 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 130 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 131 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 132 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 133 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 134 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 135 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 136 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 137 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 138 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 139 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 140 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 141 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 142 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 143 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 144 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 145 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 146 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 147 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 148 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 149 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 150 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 151 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 152 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 153 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 154 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 155 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 156 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 157 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 158 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 159 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 160 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 161 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 162 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 163 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 164 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 165 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 166 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 167 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 168 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 169 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 170 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 171 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 172 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 173 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 174 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 175 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 176 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 177 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 178 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 179 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 180 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 181 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 182 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 183 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 184 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 185 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 186 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 187 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 188 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 189 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 190 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 191 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 192 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 193 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 194 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 195 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 196 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 197 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 198 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 199 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 200 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 201 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 202 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 203 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 204 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 205 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 206 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 207 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 208 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 209 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 210 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 211 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 212 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 213 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 214 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 215 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 216 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 217 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 218 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 219 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 220 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 221 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 222 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 223 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 224 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 225 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 226 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 227 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 228 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 229 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 230 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 231 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 232 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 233 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 234 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 235 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 236 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 237 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 238 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 239 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 240 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 241 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 242 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 243 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 244 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 245 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 246 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 247 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 248 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 249 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 250 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 251 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 252 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 253 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 254 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 255 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 256 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 257 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 258 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 259 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 260 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 261 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 262 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 263 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 264 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 265 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 266 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 267 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 268 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 269 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 270 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 271 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 272 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 273 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 274 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 275 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 276 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 277 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 278 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 279 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 280 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 281 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 282 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 283 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 284 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 285 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 286 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 287 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 288 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 289 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 290 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 291 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 292 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 293 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 294 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 295 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 296 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 297 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 298 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 299 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 300 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 301 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 302 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 303 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 304 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 305 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 306 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 307 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 308 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 309 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 310 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 311 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 312 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 313 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 314 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 315 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 316 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 317 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 318 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 319 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 320 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 321 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 322 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 323 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 324 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 325 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 326 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 327 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 328 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 329 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 330 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 331 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 332 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 333 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 334 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 335 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 336 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 337 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 338 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 339 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 340 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 341 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 342 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 343 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 344 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 345 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 346 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 347 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 348 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 349 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 350 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 351 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 352 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 353 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 354 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 355 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 356 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 357 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 358 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 359 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 360 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 361 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 362 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 363 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 364 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 365 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 366 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 367 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 368 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 369 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 370 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 371 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 372 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 373 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 374 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 375 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 376 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 377 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 378 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 379 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 380 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 381 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 382 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 383 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 384 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 385 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 386 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 387 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 388 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 389 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 390 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 391 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 392 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 393 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 394 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 395 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 396 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 397 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 398 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 399 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 400 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 401 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 402 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 403 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 404 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 405 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 406 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 407 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 408 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 409 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 410 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 411 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 412 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 413 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 414 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 415 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 416 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 417 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 418 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 419 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 420 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 421 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 422 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 423 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 424 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 425 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 426 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 427 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 428 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 429 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 430 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 431 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 432 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 433 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 434 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 435 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 436 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 437 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 438 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 439 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 440 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 441 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 442 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 443 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 444 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 445 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 446 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 447 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 448 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 449 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 450 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 451 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 452 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 453 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 454 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 455 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 456 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 457 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 458 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 459 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 460 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 461 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 462 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 463 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 464 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 465 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 466 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 467 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 468 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 469 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 470 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 471 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 472 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 473 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 474 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 475 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 476 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 477 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
