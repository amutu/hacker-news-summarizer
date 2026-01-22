# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-22.md)

*最后自动更新时间: 2026-01-22 20:37:14*
## 1. GPTZero在NeurIPS 2025录用论文中发现100处新幻觉

**原文标题**: GPTZero finds 100 new hallucinations in NeurIPS 2025 accepted papers

**原文链接**: [https://gptzero.me/news/neurips/](https://gptzero.me/news/neurips/)

GPTZero公司使用其幻觉检测工具扫描了NeurIPS 2025会议接受的4,841篇论文，发现**51篇不同论文**中存在**100处已确认的幻觉引用**。这些捏造或不准确的参考文献均被评审每篇投稿的同行评议人员遗漏。

文章将此现象归因于**AI生成投稿的"海啸"**所引发的系统性问题——这股浪潮已使顶级AI会议的评审流程不堪重负。2020年至2025年间，NeurIPS投稿量增长超过220%，严重消耗了评审人员的精力和监督能力。

研究结果揭示了学术同行评议的关键漏洞：包括虚假引用在内的AI生成内容可能蒙混过关。这尤其令人担忧，因为NeurIPS政策明确将幻觉引用视为拒稿依据。文章附有示例表格，展示了被接受论文中虚构的作者、标题以及不存在的DOI或出版信息。

---

## 2. 为什么SSH每按一次键就会发送100个数据包？

**原文标题**: Why does SSH send 100 packets per keystroke?

**原文链接**: [https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/](https://eieio.games/blog/ssh-sends-100-packets-per-keystroke/)

作者发现，SSH在每次击键时会发送约100个小型（36字节）数据包，这导致其通过SSH运行的高性能游戏的CPU和带宽使用量急剧增加。经追踪，此问题源于2023年SSH的一项名为“击键时序混淆”的功能，该功能通过发送“干扰”数据包来掩盖输入模式以保护隐私。

虽然此功能对安全会话有益，但它给延迟敏感的游戏带来了显著的开销。作者找到了客户端解决方案（`ObscureKeystrokeTiming=no`），但仍需服务器端修复。通过研究Go SSH库，他们发现干扰数据包是由服务器通告的扩展（`[email protected]`）触发的`SSH2_MSG_PING`消息。通过分叉并修改该库以禁用此通告，CPU使用率降低了60%以上，带宽消耗减少了一半以上。

本文强调了一项默认安全功能如何在非标准使用场景中引发意外的性能问题，并展示了如何利用网络分析工具和LLM辅助进行有效调试，以导航和修改复杂代码库。

---

## 3. 展示HN：isometric.nyc——纽约市巨型等距像素艺术地图

**原文标题**: Show HN: isometric.nyc – giant isometric pixel art map of NYC

**原文链接**: [https://cannoneyed.com/isometric-nyc/](https://cannoneyed.com/isometric-nyc/)

**摘要：**

"Isometric.nyc" 是一个数字艺术项目，呈现了一幅巨大的、可交互的纽约市等距像素艺术地图。创作者以迷人的低分辨率3D风格，精心重现了这座城市标志性的天际线、地标和街道网格。

该项目的主要特点包括：
*   **规模与细节：** 涵盖了曼哈顿的大部分区域，从金融区到中央公园，包含建筑物、桥梁、公园以及帝国大厦和世界贸易中心一号楼等主要地标。
*   **交互性：** 用户可以平移和缩放地图，探索不同的街区。
*   **艺术风格：** 地图采用一致的等距视角和有限的色彩搭配，形成了一种统一的、复古电子游戏或模型套件的美学风格。
*   **技术实现：** 该项目为网页构建，展示了在像素艺术和数字制图领域一项重要的技术与艺术成就。

其主要目的是艺术性的致敬与探索，为纽约市的建筑与布局提供了一封独特、风格化且可导航的“情书”。

---

## 4. 看起来状态/需分类标签已被移除

**原文标题**: It looks like the status/need-triage label was removed

**原文链接**: [https://github.com/google-gemini/gemini-cli/issues/16728](https://github.com/google-gemini/gemini-cli/issues/16728)

该GitHub议题（#16728）请求谷歌的Gemini CLI工具增加对JetBrains IDE（如IntelliJ IDEA或PyCharm）的原生检测支持。目前，该CLI仅能识别VS Code等环境，导致JetBrains用户不得不依赖第三方插件来模拟VS Code的环境变量，以启用集成功能。

用户SoLoHiCo认为这一变更是必要的，因为现有的基于进程的检测方法在Windows和Linux上不可靠，阻碍了CLI发现并连接到IDE。建议的解决方案是更新工具的内部定义，将`TERMINAL_EMULATOR=JetBrains-JediTerm`环境变量识别为一类受支持的IDE环境。

该议题被标记为“功能请求”，目前处于“待分类”状态，等待项目自动化系统或维护者的审查。

---

## 5. Qwen3-TTS家族现已开源：语音设计、克隆与生成

**原文标题**: Qwen3-TTS Family Is Now Open Sourced: Voice Design, Clone, and Generation

**原文链接**: [https://qwen.ai/blog?id=qwen3tts-0115](https://qwen.ai/blog?id=qwen3tts-0115)

阿里巴巴的Qwen团队开源了其Qwen3-TTS系列文本转语音模型。此次发布包含多个专用模型：一个通用基础模型，一个可通过短音频样本复制说话者声音的语音克隆模型，以及一个允许对音色、语速和情感等语音特征进行细粒度控制的语音设计模型。

该系列模型的核心特性包括高音质、自然的韵律，以及在英语和中文等多种语言中表现稳定的性能。这些模型设计高效，提供多种规模版本以适应不同硬件和延迟需求。

通过开源这些模型，团队旨在推动TTS领域的技术创新，让研究者和开发者能够基于该技术构建内容创作、辅助工具等应用。此次发布包含模型权重和代码，使更广泛的社区能够更便捷地使用先进的语音合成技术。

---

## 6. CSS视觉错觉

**原文标题**: CSS Optical Illusions

**原文链接**: [https://alvaromontoro.com/blog/68091/css-optical-illusions](https://alvaromontoro.com/blog/68091/css-optical-illusions)

本文展示了41个使用CSS创作的光学幻觉效果合集，演示了如何通过代码为网页实现视觉戏法。这些幻觉分为静态与动态两类，分别利用了不同的感知现象。

静态幻觉的代表包括**波根多夫错觉**（错位的对角线）、**怀特错觉**（相同的灰色呈现差异）和**阿德尔森棋盘格**（同色方块看似不同）。其他如**卡尼萨正方形**与**艾伦斯坦错觉**，则展示了大脑如何感知未被实际绘制的形状。值得注意的是一组能产生强烈动感的静态图像，例如**扩张黑洞**与**旋转的蛇**。

动态幻觉通过运动制造感知扭曲，例如**动态艾宾浩斯错觉**（静态圆形看似改变大小）和**反向辐条错觉**（静态辐条在运动背景衬托下仿佛反向旋转）。

作者全程解析了实现每个效果所用的CSS技巧——如渐变、伪元素和混合模式，并常提及其他开发者的灵感启发。本文既是视觉画廊，也是通过代码复现这些经典感知魔术的技术指南。

---

## 7. Tree-sitter 与语言服务器

**原文标题**: Tree-sitter vs. Language Servers

**原文链接**: [https://lambdaland.org/posts/2026-01-21_tree-sitter_vs_lsp/](https://lambdaland.org/posts/2026-01-21_tree-sitter_vs_lsp/)

本文阐述了Tree-sitter与语言服务器（LSP）之间的实际差异。

**Tree-sitter**是一种快速且容错的解析器生成器，主要用于文本编辑器中的**语法高亮**。其关键优势在于，即使在编辑时代码语法不完整，也能保持准确的高亮显示，这与传统的基于正则表达式的系统不同。它还允许查询解析后的语法树，以实现更稳健的文本分析。

**语言服务器**是一个独立的程序，提供对代码的深度**语义分析**，例如查找定义、提供补全和检查类型。它通过标准化的**语言服务器协议（LSP）**与任何文本编辑器通信，解决了为每种语言单独构建编辑器支持的问题。

Tree-sitter处理语法（结构），而语言服务器理解语义（含义）。作者指出，语言服务器也可以提供语法高亮，有时会带有额外的语义细节——例如在Rust中高亮可变变量——尽管其速度可能比Tree-sitter慢。

文章最后附有个人说明，确认内容由人类撰写，强调真实理解相对于AI生成文本的价值。

---

## 8. 我因为搭建了一个Claude.md文件就被封禁了？

**原文标题**: I was banned from Claude for scaffolding a Claude.md file?

**原文链接**: [https://hugodaniel.com/posts/claude-code-banned-me/](https://hugodaniel.com/posts/claude-code-banned-me/)

**《因创建Claude.md文件遭封禁始末》摘要**

作者雨果·丹尼尔详述了其意外遭Anthropic公司Claude AI助手永久封禁的经历。封禁发生在他使用Claude协助创建`claude.md`文件之后——该文件仅为简单的Markdown文档，旨在作为个人使用指南或"框架"，用于规划未来与AI的互动结构。

事件核心在于用户意图与AI内容政策之间的冲突。当雨果要求Claude生成"越狱"或覆盖其自身系统提示与安全准则的文本时，Claude依据伦理准则予以拒绝。雨果澄清其目的并非真正越狱，而是构建一个用于更好组织合法工作（如编程与写作）的元工具，强调该文件仅是概念性实验，而非功能性漏洞利用。

尽管作者多次解释申诉，Anthropic仍维持封禁决定且未提供具体申诉渠道。作者总结认为，封禁源于双方误解：其创建生产力"封装工具"的尝试被误判为恶意规避安全协议的行为。他对此感到沮丧——仅因文件名含AI名称（`claude.md`）及以理论方式探讨其内部机制，便触发不可逆的封禁措施，这暴露出用户创意与自动化政策执行之间可能存在的认知鸿沟。

---

## 9. 关于人类最高水平表现获得的最新发现

**原文标题**: Recent discoveries on the acquisition of the highest levels of human performance

**原文链接**: [https://www.science.org/doi/abs/10.1126/science.adt7790](https://www.science.org/doi/abs/10.1126/science.adt7790)

无法访问文章链接。

---

## 10. Mote：一个交互式生态系统模拟 [视频]

**原文标题**: Mote: An Interactive Ecosystem Simulation [video]

**原文链接**: [https://www.youtube.com/watch?v=Hju0H3NHxVI](https://www.youtube.com/watch?v=Hju0H3NHxVI)

本文字并非视频《Mote：互动生态系统模拟》的内容摘要，而是YouTube网页底部常见的标准法律与信息页脚。

其内容完全包含：
*   YouTube公司政策链接（服务条款、隐私权、安全中心）。
*   版权信息（© 2026 Google LLC）。
*   YouTube/Google的业务联系详情与地址。
*   法律免责声明，指出视频中展示的产品由第三方商家销售，非YouTube出售。
*   行政信息，如首席执行官姓名及举报非法拍摄内容的联系方式。

**此处不包含任何关于视频实际内容的信息，例如“Mote”模拟是什么、其运作原理或可能具有的教育及互动功能。** 若要总结该视频，需要视频本身的转录文本或描述。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 2 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 3 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 4 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 5 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 6 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 7 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 8 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 9 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 10 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 11 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 12 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 13 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 14 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 15 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 16 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 17 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 18 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 19 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 20 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 21 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 22 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 23 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 24 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 25 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 26 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 27 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 28 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 29 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 30 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 31 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 32 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 33 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 34 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 35 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 36 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 37 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 38 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 39 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 40 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 41 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 42 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 43 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 44 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 45 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 46 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 47 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 48 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 49 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 50 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 51 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 52 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 53 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 54 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 55 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 56 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 57 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 58 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 59 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 60 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 61 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 62 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 63 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 64 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 65 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 66 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 67 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 68 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 69 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 70 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 71 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 72 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 73 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 74 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 75 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 76 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 77 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 78 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 79 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 80 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 81 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 82 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 83 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 84 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 85 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 86 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 87 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 88 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 89 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 90 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 91 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 92 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 93 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 94 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 95 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 96 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 97 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 98 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 99 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 100 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 101 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 102 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 103 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 104 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 105 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 106 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 107 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 108 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 109 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 110 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 111 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 112 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 113 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 114 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 115 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 116 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 117 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 118 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 119 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 120 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 121 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 122 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 123 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 124 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 125 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 126 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 127 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 128 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 129 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 130 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 131 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 132 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 133 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 134 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 135 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 136 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 137 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 138 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 139 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 140 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 141 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 142 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 143 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 144 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 145 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 146 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 147 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 148 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 149 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 150 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 151 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 152 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 153 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 154 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 155 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 156 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 157 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 158 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 159 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 160 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 161 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 162 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 163 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 164 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 165 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 166 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 167 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 168 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 169 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 170 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 171 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 172 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 173 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 174 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 175 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 176 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 177 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 178 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 179 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 180 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 181 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 182 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 183 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 184 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 185 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 186 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 187 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 188 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 189 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 190 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 191 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 192 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 193 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 194 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 195 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 196 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 197 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 198 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 199 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 200 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 201 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 202 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 203 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 204 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 205 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 206 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 207 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 208 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 209 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 210 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 211 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 212 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 213 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 214 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 215 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 216 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 217 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 218 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 219 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 220 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 221 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 222 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 223 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 224 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 225 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 226 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 227 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 228 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 229 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 230 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 231 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 232 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 233 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 234 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 235 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 236 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 237 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 238 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 239 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 240 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 241 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 242 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 243 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 244 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 245 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 246 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 247 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 248 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 249 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 250 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 251 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 252 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 253 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 254 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 255 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 256 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 257 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 258 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 259 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 260 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 261 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 262 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 263 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 264 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 265 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 266 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 267 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 268 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 269 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 270 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 271 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 272 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 273 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 274 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 275 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 276 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 277 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 278 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 279 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 280 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 281 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 282 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 283 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 284 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 285 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 286 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 287 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 288 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 289 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 290 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 291 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 292 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 293 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 294 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 295 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 296 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 297 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 298 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 299 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 300 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 301 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 302 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 303 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 304 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 305 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 306 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
