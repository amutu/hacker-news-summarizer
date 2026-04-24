# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-24.md)

*最后自动更新时间: 2026-04-24 20:33:03*
## 1. OpenAI 在 API 中发布 GPT-5.5 和 GPT-5.5 Pro

**原文标题**: OpenAI releases GPT-5.5 and GPT-5.5 Pro in the API

**原文链接**: [https://developers.openai.com/api/docs/changelog](https://developers.openai.com/api/docs/changelog)

**OpenAI API 更新日志摘要（2026年4月更新）**

OpenAI 于2026年4月23日在API中发布了 **GPT-5.5** 和 **GPT-5.5 Pro**。GPT-5.5 是一款面向复杂专业工作的新一代前沿模型，支持100万token上下文窗口、图像输入、结构化输出、函数调用、工具搜索、内置计算机使用、托管Shell及技能。默认采用中等推理力度。GPT-5.5 Pro 通过 Responses API 提供，适用于需要更多计算资源的难题。

其他主要更新包括：
- **GPT Image 2**：全新顶级图像生成模型，支持灵活尺寸及批量API。
- **Agents SDK 增强**：沙盒化代理执行、可定制框架及内存控制。
- **近期模型（2026年3月）**：GPT-5.4 mini/nano 用于更快、更具成本效益的工作负载；GPT-5.3 聊天支持；Sora 2 API 扩展（20秒视频、1080p、角色参考）。
- **早期功能**：GPT-5.2（2025年12月）引入压缩与高度推理；GPT-5.1（2025年11月）专注可操控性与编码；GPT-5系列发布（2025年8月）具备最低推理能力。
- **基础设施**：企业密钥管理、英国数据驻留、IP白名单、优先级处理及批量折扣。
- **音频与视频**：gpt-realtime-1.5、gpt-audio-1.5、Realtime API 的DTMF支持，以及Sora 2视频编辑端点。

OpenAI 持续强调代理工作流、多模态输入，并通过精简模型与批量API折扣实现成本优化。

---

## 2. SFO静音机场（2025）

**原文标题**: SFO Quiet Airport (2025)

**原文链接**: [https://viewfromthewing.com/san-francisco-airport-removed-90-minutes-of-daily-noise-travelers-say-it-changed-everything/](https://viewfromthewing.com/san-francisco-airport-removed-90-minutes-of-daily-noise-travelers-say-it-changed-everything/)

旧金山国际机场（SFO）自2018年起实行"静音机场"模式，通过限制广播通知、背景噪音及营销宣传来缓解旅客压力。疫情期间，机场与航空公司合作推行集中化、精简化的寻人广播系统，将公共广播通知削减40%。仅在国际航站楼，每日即可减少逾90分钟的非必要广播。登机口特定通知现已取代航站楼全域广播，同时持续致力于降低自动扶梯与自动步道的运行噪音。

SFO是美国首个采用此模式的机场，而阿姆斯特丹史基浦机场（自2011年起）、新加坡樟宜机场及苏黎世机场已有类似举措。支持者认为静音环境有益于神经多样性旅客及对感官过载敏感的人群，但视障旅客可能依赖语音提示。如今多数旅客通过手机应用、短信及电子屏幕获取航班动态，大幅减少了对广播通知的需求。尽管部分旅客可能错过登机口变更等关键提醒，但总体旅客偏好更倾向于这种安静氛围。

---

## 3. 通过过度思考、范围蔓延和结构比较来破坏项目

**原文标题**: Sabotaging projects by overthinking, scope creep, and structural diffing

**原文链接**: [https://kevinlynagh.com/newsletter/2026_04_overthinking/](https://kevinlynagh.com/newsletter/2026_04_overthinking/)

**摘要**

凯文反思了两种项目方法：一种是“直接动手”的乐趣，另一种是过度思考与范围蔓延的困境。他以一个周末木工项目（与朋友一起制作厨房搁架）为例说明前者——明确的成功标准（享受过程）避免了过度设计；而后一种方法则让他耗费数小时研究结构差异工具，才想起原本的需求只是为审查LLM生成的代码寻找更简单的Emacs差异工作流程。

他指出了三个长期项目（硬件原型设计接口、Clojure/Rust融合语言、CAD语言）陷入过度思考陷阱，模糊的成功标准导致数百小时研究却无实际产出。他决心拥抱“动手做事”，哪怕结果不完美。

凯文随后通过一个文件搜索项目探讨了“范围蔓延守恒定律”：LLM推荐了一个带额外功能（锚点）的库。他在实现锚定功能上花费数小时后才意识到自己根本不需要它，这说明了编程速度的提升可能被无关功能抵消。

文章列举了结构差异工具（difftastic、semanticdiff.com、diffsitter、gumtree、mergiraf、weave、diffast、autochrome）及其理想工作流程：通过实体级差异审查LLM输出。他的最小化方案是：构建基于Rust的树形解析器实体提取器（带贪心匹配模式），再接入Emacs，同时抵制功能膨胀。

关键启示：“我宁愿做过很多，也不愿只是思考过很多。”他需要将成功标准内化，以避免过度思考——有时，你只需要一个搁架。

---

## 4. SDL现支持DOS系统

**原文标题**: SDL Now Supports DOS

**原文链接**: [https://github.com/libsdl-org/SDL/pull/15377](https://github.com/libsdl-org/SDL/pull/15377)

本文记录了SDL（Simple DirectMedia Layer）的一次重大更新，该版本现已支持DOS操作系统。该移植由AJenbo、icculus及多位贡献者协作完成，为在DOS上运行SDL3应用提供了全面实现。

**主要特性：**
- **视频：** 支持VGA和VESA 1.2+帧缓冲模式，包括RGB、8位索引色、VGA DAC调色板编程、带垂直同步的硬件翻页以及VBE状态保存/恢复。
- **音频：** 支持Sound Blaster 16（16位立体声，最高44.1 kHz）、Sound Blaster Pro（8位立体声，最高22 kHz）及早期Sound Blaster型号（8位单声道）。
- **输入：** 支持扩展扫描码的PS/2键盘、INT 33h鼠标驱动、通过BIOS支持游戏端口摇杆。
- **线程：** 使用setjmp/longjmp的协作调度器，集成真正的互斥锁、信号量和条件变量。
- **定时器：** 基于PIT的原生定时器，分辨率约1.19 MHz。
- **构建：** CMake交叉编译工具链文件及DJGPP CI任务。
- **缺失特性：** 音频录制、共享库加载（SDL_LoadObject）及部分原生时间实现暂不支持。

**重要讨论：**
- 发现一个缺陷：`SDL_GetClosestFullscreenDisplayMode()`会错误选择INDEX8色彩模式或不合适的分辨率。修复方案是将INDEX8模式隐藏在提示选项（`SDL_DOS_ALLOW_INDEX8_MODES`）后，并在SDL主分支短暂回滚后重新按逻辑排序显示模式。
- 该移植已稳定到可运行《雷神之锤》及多数演示程序，但部分自动化测试因格式化函数问题未通过。
- 该拉取请求已合并至SDL主分支。

---

## 5. 我的音频接口默认开启了SSH功能

**原文标题**: My audio interface has SSH enabled by default

**原文链接**: [https://hhh.hn/rodecaster-duo-fw/](https://hhh.hn/rodecaster-duo-fw/)

作者发现其Rodecaster Duo音频接口默认启用了SSH公钥认证功能，并内置两把硬编码SSH密钥。在更新固件时，他们通过监控磁盘活动与USB流量捕捉到更新流程。固件以未经验签的gzip压缩包形式分发，可被轻易修改。该设备采用双分区系统保障安全更新。

更新流程包括：通过HID发送'M'指令，挂载暴露的磁盘分区，将`archive.tar.gz`及MD5校验文件`archive.md5`复制至分区，设置权限后卸载分区，随后发送'U'指令触发刷写。作者成功制作了自定义固件以启用SSH密码认证并添加个人SSH密钥，最终得以通过SSH连接设备。

他们通过客服工单向RODE报告了安全漏洞（默认SSH密钥与固件未签名），但未获回复。尽管如此，作者仍称赞该设备的实用性，并表示有意购入更多RODE产品。作者指出，当前能轻易修改固件的设备已愈发罕见。

---

## 6. 谷歌将向Anthropic投资高达400亿美元，以现金和算力形式支付。

**原文标题**: Google to invest up to $40B in Anthropic in cash and compute

**原文链接**: [https://techcrunch.com/2026/04/24/google-to-invest-up-to-40b-in-anthropic-in-cash-and-compute/](https://techcrunch.com/2026/04/24/google-to-invest-up-to-40b-in-anthropic-in-cash-and-compute/)

**摘要：**谷歌已承诺向人工智能公司Anthropic提供高达400亿美元现金及计算资源，初始投资100亿美元，估值3500亿美元，另根据特定业绩目标追加300亿美元。该协议于Anthropic发布其全新强大模型“Mythos”后达成，该模型在网络安全领域具有重要应用，但因存在滥用风险而受到限制。此项投资凸显了人工智能竞赛对海量算力的依赖。Anthropic此前已从亚马逊获得50亿美元融资（作为更广泛1000亿美元计算协议的一部分），并与CoreWeave达成基础设施协议。谷歌云将在五年内为Anthropic额外提供500万千瓦的算力容量，以补充2027年起由博通提供的350万千瓦TPU算力现有协议。Anthropic的估值已从2月的3500亿美元飙升至潜在的8000亿美元，并最早可能于10月启动首次公开募股。

---

## 7. 我取消订阅Claude：令牌问题、质量下降与支持不力

**原文标题**: I Cancelled Claude: Token Issues, Declining Quality, and Poor Support

**原文链接**: [https://nickyreinert.de/en/2026/2026-04-24-claude-critics/](https://nickyreinert.de/en/2026/2026-04-24-claude-critics/)

文章详细描述了一位用户使用**Anthropic**旗下**Claude Code**的体验：从最初的热衷到最终取消订阅，原因归结为三个关键问题：

1. **糟糕的客户支持：** 用户仅提了两个简单问题，token用量便激增（100%）。他联系客服后，AI机器人给出了模板化回复，人工客服则回复了一段关于每日限额的复制粘贴式解释——未能解决实际问题——便关闭了工单。

2. **质量下降与token问题：** 随着时间的推移，token限额变得更为苛刻（原本能同时处理三个项目，现在一个项目约两小时就用完）。用户举例称，**Claude Opus**给出了一个偷懒的解决方案（添加通用初始化器），而非正确重构JSX。这浪费了五小时token限额中约50%的用量。在承认偷懒后，Opus才进行了修正。

3. **缓存与不明确的限额：** 用户指出，休息后对话缓存会丢失，导致必须重新读取代码库并再次消耗token。此外，还出现了一个未在文档中说明的“月度用量限额”警告，两小时后却又自行消失，令人困惑。

尽管用户认可该产品的潜力，但最终结论是：**Anthropic无法支撑其客户规模**，因此他取消了订阅。

---

## 8. 经典美式餐厅

**原文标题**: The Classic American Diner

**原文链接**: [https://blogs.loc.gov/picturethis/2026/04/the-classic-american-diner/](https://blogs.loc.gov/picturethis/2026/04/the-classic-american-diner/)

本文探讨了经典美式小餐馆作为美国饮食文化独特部分的持久文化意义，并通过国会图书馆馆藏照片加以呈现。文章重点介绍了这些餐馆的共同特征，例如许多小餐馆外观形似火车车厢——这一20世纪的设计选择也便于运输。典型案例包括佐治亚州哥伦布市一家同时供应美式和韩式料理的小餐馆，以及佛蒙特州采用"流线型"风格的乡村女孩餐厅。历史照片展现了当时的菜单与价格，如1940年马里兰州5美分的热狗和1959年纽约75美分的火腿蛋套餐。其他影像记录了为卡车司机提供全天候服务的小餐馆，突显其作为24小时路边站点的角色。2010年代和2020年的近期照片表明，小餐馆依然备受青睐，常融入世纪中叶的怀旧元素——例如田纳西州的阳光小餐馆和凤凰城的5角硬币餐厅，它们采用棋盘格地板与红色装饰。文章最后指出这些照片或许能激发读者造访小餐馆的兴趣，并引导读者查阅更多国会图书馆馆藏的相关影像。

---

## 9. 深度求索第四代

**原文标题**: DeepSeek v4

**原文链接**: [https://api-docs.deepseek.com/](https://api-docs.deepseek.com/)

本文介绍**DeepSeek v4 API**，该API兼容OpenAI和Anthropic的API格式。关键内容包括：

- **基础URL**：兼容OpenAI请使用`https://api.deepseek.com`；兼容Anthropic请使用`https://api.deepseek.com/anthropic`。
- **身份验证**：需使用从DeepSeek获取的API密钥。
- **可用模型**：
  - `deepseek-v4-flash` 和 `deepseek-v4-pro`（当前模型）
  - `deepseek-chat` 和 `deepseek-reasoner`（旧名称，于2026年7月24日弃用；分别映射至`deepseek-v4-flash`的非思考模式和思考模式）
- **API调用示例**：展示如何使用curl、Python（OpenAI SDK）和Node.js（OpenAI SDK）通过非流式请求调用Chat API。
- **可选参数**：支持`thinking`（启用/禁用）、`reasoning_effort`（例如高）和`stream`（设置为true可启用流式响应）。

本文为开发者提供实用的代码片段，帮助其快速将DeepSeek语言模型集成到应用程序中。

---

## 10. 以机械键盘品牌斐尔可（FILCO）闻名的Diatec公司已停止运营。

**原文标题**: Diatec, known for its mechanical keyboard brand FILCO, has ceased operations

**原文链接**: [https://gigazine.net/gsc_news/en/20260424-filco-diatec/](https://gigazine.net/gsc_news/en/20260424-filco-diatec/)

以人气FILCO机械键盘品牌（以Majestouch系列闻名）著称的日本公司Diatec，已于2026年4月22日停止运营。该公司网站发布关闭公告，感谢客户支持，并确认截至该日，所有通过邮购及用户支持收集的个人信息均已按照法律法规安全删除。FILCO键盘因其坚固稳定的外壳备受赞誉，公司曾于2022年推出有线/无线双模Majestouch Convertible3、2023年推出配备宏按键的分体式Majestouch Xacro M10SP等瞩目产品。本文还列举了数则相关科技及配件行业新闻。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 2 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 3 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 4 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 5 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 6 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 7 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 8 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 9 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 10 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 11 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 12 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 13 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 14 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 15 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 16 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 17 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 18 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 19 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 20 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 21 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 22 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 23 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 24 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 25 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 26 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 27 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 28 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 29 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 30 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 31 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 32 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 33 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 34 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 35 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 36 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 37 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 38 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 39 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 40 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 41 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 42 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 43 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 44 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 45 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 46 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 47 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 48 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 49 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 50 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 51 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 52 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 53 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 54 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 55 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 56 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 57 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 58 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 59 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 60 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 61 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 62 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 63 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 64 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 65 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 66 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 67 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 68 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 69 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 70 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 71 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 72 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 73 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 74 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 75 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 76 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 77 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 78 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 79 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 80 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 81 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 82 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 83 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 84 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 85 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 86 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 87 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 88 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 89 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 90 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 91 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 92 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 93 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 94 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 95 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 96 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 97 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 98 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 99 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 100 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 101 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 102 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 103 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 104 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 105 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 106 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 107 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 108 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 109 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 110 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 111 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 112 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 113 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 114 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 115 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 116 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 117 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 118 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 119 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 120 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 121 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 122 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 123 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 124 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 125 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 126 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 127 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 128 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 129 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 130 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 131 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 132 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 133 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 134 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 135 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 136 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 137 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 138 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 139 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 140 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 141 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 142 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 143 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 144 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 145 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 146 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 147 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 148 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 149 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 150 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 151 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 152 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 153 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 154 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 155 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 156 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 157 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 158 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 159 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 160 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 161 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 162 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 163 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 164 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 165 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 166 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 167 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 168 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 169 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 170 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 171 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 172 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 173 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 174 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 175 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 176 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 177 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 178 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 179 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 180 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 181 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 182 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 183 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 184 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 185 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 186 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 187 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 188 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 189 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 190 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 191 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 192 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 193 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 194 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 195 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 196 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 197 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 198 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 199 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 200 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 201 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 202 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 203 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 204 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 205 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 206 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 207 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 208 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 209 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 210 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 211 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 212 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 213 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 214 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 215 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 216 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 217 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 218 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 219 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 220 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 221 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 222 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 223 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 224 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 225 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 226 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 227 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 228 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 229 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 230 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 231 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 232 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 233 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 234 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 235 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 236 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 237 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 238 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 239 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 240 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 241 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 242 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 243 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 244 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 245 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 246 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 247 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 248 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 249 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 250 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 251 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 252 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 253 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 254 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 255 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 256 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 257 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 258 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 259 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 260 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 261 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 262 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 263 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 264 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 265 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 266 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 267 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 268 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 269 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 270 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 271 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 272 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 273 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 274 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 275 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 276 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 277 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 278 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 279 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 280 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 281 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 282 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 283 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 284 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 285 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 286 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 287 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 288 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 289 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 290 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 291 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 292 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 293 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 294 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 295 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 296 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 297 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 298 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 299 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 300 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 301 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 302 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 303 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 304 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 305 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 306 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 307 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 308 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 309 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 310 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 311 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 312 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 313 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 314 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 315 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 316 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 317 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 318 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 319 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 320 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 321 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 322 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 323 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 324 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 325 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 326 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 327 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 328 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 329 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 330 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 331 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 332 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 333 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 334 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 335 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 336 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 337 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 338 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 339 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 340 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 341 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 342 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 343 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 344 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 345 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 346 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 347 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 348 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 349 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 350 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 351 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 352 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 353 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 354 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 355 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 356 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 357 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 358 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 359 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 360 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 361 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 362 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 363 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 364 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 365 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 366 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 367 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 368 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 369 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 370 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 371 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 372 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 373 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 374 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 375 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 376 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 377 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 378 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 379 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 380 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 381 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 382 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 383 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 384 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 385 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 386 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 387 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 388 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 389 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 390 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 391 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 392 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 393 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 394 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 395 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 396 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 397 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 398 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
