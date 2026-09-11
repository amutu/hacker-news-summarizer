# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-12.md)

*最后自动更新时间: 2026-09-12 04:56:46*
## 1. 数学领域中人工智能的目标错位

**原文标题**: A misalignment of AI in mathematics

**原文链接**: [https://mathandai.org/](https://mathandai.org/)

本文由26位菲尔兹奖得主联署，指出AI公司推崇以解决数学难题为基准测试的做法，与数学社区的核心目标存在严重错位。数学研究的本质在于理解基本结构，著名问题仅是衡量理解深度的标志；解题本身只是手段，概念洞察才是目的。数学社区依靠培养人才、孕育思想、促进交流等缓慢而深刻的人类互动过程运转，这一传统正面临威胁。AI快速批量产出解题结论，往往缺乏规范表述、方法提炼与文献引用，不仅带来署名与归属问题，更可能破坏新思想生长的土壤，使人类间至关重要的知识传承链条断裂。作者强调，这一困境并非数学独有——当AI能直接产出多年训练所追求的成果时，工作本身的意义面临质疑，所有知识型与创造性职业乃至全人类都将遭遇类似挑战。文章呼吁AI公司、数学界及全社会紧急应对，确保技术进步不偏离服务人类理解与创造的初衷，并指出若决策得当，AI亦可成为推动数学发展的助力。

---

## 2. GrapheneOS 重写版短信应用正式发布

**原文标题**: GrapheneOS' rewritten Messages app is released

**原文链接**: [https://github.com/GrapheneOS/Messaging/releases/tag/13](https://github.com/GrapheneOS/Messaging/releases/tag/13)

GrapheneOS 短信应用第13版正式发布，全面采用 Jetpack Compose 与 Material 3 重构界面，支持大屏双栏布局。主要更新涵盖：会话列表新增置顶、静音、归档、快速操作及多重新设计；会话界面重建消息气泡，支持多选删除、全屏消息详情、MMS 主题编辑、群组管理及 SIM 回退优化；媒体模块重写照片选择器、音频录制（含滑动取消）和图片查看器；分享器新增搜索与多选功能。安全方面，YouTube 链接预览默认关闭，共享内容验证拒绝 file: URI 及私有文件，小部件接收器不再导出，修复 GIF 空引用及 MMS 解析内存越界等漏洞。同时修复了小部件、数据库插入、通话快速回复等多处崩溃，优化通知与同步机制，支持多用户及工作配置文件，完善无障碍功能，扩展单元测试与 CI 流水线。平台层面升级至 minSdk 36、targetSdk 37，引入 Compose BOM、Navigation 3、Coil 3 及 CameraX 等依赖。

---

## 3. Litelm：LiteLLM 精简版

**原文标题**: Litelm: LiteLLM Without the Bloat

**原文链接**: [https://github.com/kennethwolters/litelm](https://github.com/kennethwolters/litelm)

litelm 是从 LiteLLM 中提取核心调用路径的精简库，仅约 2,900 行代码、2 个依赖（openai、httpx），聚焦模型路由、消息格式转换、流式输出、工具调用与嵌入等核心能力，去除了代理服务器、缓存、成本追踪、负载均衡等冗余模块。其 API 与 LiteLLM 完全一致，现有用户只需将 import 中的 litellm 替换为 litelm 即可无缝迁移，每个函数均提供异步版本。项目支持 19 家服务商（OpenAI、Anthropic、Groq、Mistral、xAI、Azure、Bedrock、Ollama 等），通过 provider/model-name 语法统一路由；错误统一映射至自有异常体系，覆盖上下文超限、速率限制、认证失败等场景。开发采用人类主导、AI 辅助模式；维护者于 2026 年 9 月完成上游审计，triage 360 个核心提交，262 项自测、45 项在线服务商测试及 10 项 DSPy 集成测试全部通过。当前为 Alpha 阶段。

---

## 4. Claude 仅供18岁以上用户使用

**原文标题**: Claude is only available to people over 18 years

**原文链接**: [https://support.claude.com/en/articles/15171100-age-assurance-on-claude](https://support.claude.com/en/articles/15171100-age-assurance-on-claude)

Claude（Anthropic的消费级产品）仅限18岁以上用户使用，注册时需确认本人年龄。系统设有安全机制，检测到未成年使用迹象时将禁用账户，并通知用户进行年龄验证。验证通过第三方平台Yoti完成，用户可通过邮件链接选择以下任一方式：1）面部年龄估算——拍摄自拍，由AI技术估算年龄，无需身份证件；2）身份证件验证——上传护照、驾照或国民身份证等照片；3）Yoti数字ID应用——若已安装Yoti应用，可共享"18岁以上"验证属性。验证通过后账户即恢复使用。在数据保护方面，Yoti为经过独立审计、符合SOC2标准的年龄验证服务商，用户的面部照片、证件图像等个人信息在核验完成后即被删除。Anthropic仅收到通过或未通过的验证结果，全程不会查看、处理或存储任何验证过程中的个人数据。

---

## 5. Snap!——面向少儿与成人的可视化计算机科学编程语言

**原文标题**: Λ Snap – An inviting programming language for kids and adults for CS study

**原文链接**: [https://snap.berkeley.edu/](https://snap.berkeley.edu/)

Snap! 是一款面向各年龄段的图形化编程语言及计算机科学学习平台，兼具趣味性与学术深度。首页集中展示了大量社区作品，按主题分为多个板块：精选区汇聚了 Wordle 游戏、3D 动态画面、迷宫、记忆配对等互动应用；数学区涵盖中心极限定理、矩阵运算、傅里叶变换、正弦波及超公式等可视化演示；模拟区包含活塞运动、康威生命游戏、天体物理、弹簧振动等科学仿真；音乐区涉及 MIDI 转换、合成器、波形编辑及多声部乐器等创作工具。页面还收录了 2025 年 Snap! 大会（Snap!Con 2025）的系列项目，包括神经网络可视化、语音识别、AP 计算机科学课程任务等，展现了平台在人工智能与课堂教学中的应用潜力。总体而言，Snap! 以积木式拖拽界面大幅降低编程门槛，同时支持从零基础启蒙到高等数学、物理建模及 AI 探索的多层次教学场景。

---

## 6. EPA拟取消数据中心排污许可公众审查制度

**原文标题**: The EPA is planning to scrap public review rules for data center pollution

**原文链接**: [https://capitalbnews.org/data-centers-permit-rules-epa/](https://capitalbnews.org/data-centers-permit-rules-epa/)

摘要：调查显示七成美国人反对在所在社区附近建设AI数据中心，但美国环保署（EPA）正计划取消联邦规定，即各州在批准工业设施空气污染许可证前须告知公众并开放意见征集，同时允许开发商在许可获批前动工。这意味着居民可能丧失质疑和知情权。受冲击最大的是美国南方农村地区，该区域黑人社区集中、数据中心增长最快。环境层面，数据中心推动燃气电厂建设，排放氮氧化物、细颗粒物及甲醛等致癌物；经济层面，基础设施成本转嫁至居民电费，部分地区房价一年飙升80%，住户被驱逐。部分地方政府与科技企业签署保密协议、拒绝公开用电信息，进一步加剧不透明。近200个倡导团体及十余个州已联手反对。环保署辩称改革旨在"加快许可、支持经济发展"，局长泽尔丁更将"让美国成为世界AI之都"列为首要优先。然而，56岁的EPA本以保护环境和公共健康为使命，此举被批评者视为"背叛民主"。该提案预计一年内正式落地。

---

## 7. 致幻药物在安第斯文明崛起中扮演关键角色

**原文标题**: Mind-altering drugs played key role in rise of Andean civilization

**原文链接**: [https://www.science.org/content/article/mind-altering-drugs-played-key-role-rise-andean-civilization](https://www.science.org/content/article/mind-altering-drugs-played-key-role-rise-andean-civilization)

无法访问该文章链接

---

## 8. AlphaGenome绘制90亿DNA变异图谱

**原文标题**: AlphaGenome maps 9B DNA variants

**原文链接**: [https://spectrum.ieee.org/alphagenome-atlas](https://spectrum.ieee.org/alphagenome-atlas)

摘要：谷歌旗下DeepMind团队发布全新AI模型AlphaGenome，该模型可系统预测并映射高达90亿种可能的DNA单碱基变异，相当于构建了一张覆盖极广的"基因组变异图谱"。AlphaGenome能够预判单个碱基的替换、插入或缺失如何影响基因表达与功能，将极大加速人类对遗传变异的认知，为疾病机制研究、精准医疗及药物开发提供重要参考。该文由自由科学记者Greg Uyeno撰写，于2026年9月8日发表于生物医学AI资讯平台AINewsBiomedical。

---

## 9. 我运维 PB 级 ClickHouse 集群五年

**原文标题**: I've operated petabyte-scale ClickHouse clusters for 5 years

**原文链接**: [https://www.tinybird.co/blog/what-i-learned-operating-clickhouse](https://www.tinybird.co/blog/what-i-learned-operating-clickhouse)

摘要：本文作者来自 Tinybird，拥有逾八年 ClickHouse 经验并管理多个 PB 级集群，分享核心运维心得。架构上采用分片加副本的经典设计，负载均衡器是调度核心，需按请求类型与负载动态路由，并建议读写分离以保障稳定性。存储方面，开源版对云原生存储支持较弱，零复制（zero-copy replication）存在数据丢失风险，推荐本地 SSD 缓存搭配 S3 的冷热分层方案，压缩首选 ZSTD。升级须借助向后兼容的复制协议实现滚动更新，并构建 CI/CD 自动化流程，在集群环境下做多版本混合回归测试；发布后至少等待一个月再升级，警惕数据格式不兼容、SQL 行为变更及性能波动等问题。作者特别强调运维 ClickHouse 必须阅读源码，关注版本间配置差异。成本上，32 核机器约承载 5GB/s 吞吐，ZooKeeper 须独立部署，SSD 容量只增不减需提前规划。人力方面，小规模集群兼职即可胜任，写入超过 2 万行/秒则需专人维护。整体而言，搭建集群容易，长期稳定运行才是真正挑战。

---

## 10. Rune 现已开源

**原文标题**: Rune is now open source

**原文链接**: [https://rune.build/blog/rune-is-now-open-source](https://rune.build/blog/rune-is-now-open-source)

Rune 项目正式宣布开源。该消息发布在 Rune 官方博客上，标志着 Rune 的代码与资源已向社区公开，意味着开发者可以免费查看、使用、修改和分发相关代码。由于原文页面需要启用 JavaScript 才能完整加载，目前可获取的内容十分有限，仅包含标题与博客来源信息，暂未提供更多关于开源协议、技术栈、社区参与方式等细节。此次开源是 Rune 项目发展的重要里程碑，预计将吸引更多开发者参与共建，推动项目生态的繁荣。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 2 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 3 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 4 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 5 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 6 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 7 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 8 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 9 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 10 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 11 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 12 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 13 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 14 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 15 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 16 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 17 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 18 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 19 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 20 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 21 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 22 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 23 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 24 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 25 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 26 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 27 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 28 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 29 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 30 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 31 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 32 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 33 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 34 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 35 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 36 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 37 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 38 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 39 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 40 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 41 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 42 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 43 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 44 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 45 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 46 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 47 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 48 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 49 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 50 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 51 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 52 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 53 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 54 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 55 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 56 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 57 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 58 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 59 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 60 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 61 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 62 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 63 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 64 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 65 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 66 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 67 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 68 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 69 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 70 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 71 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 72 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 73 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 74 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 75 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 76 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 77 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 78 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 79 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 80 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 81 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 82 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 83 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 84 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 85 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 86 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 87 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 88 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 89 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 90 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 91 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 92 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 93 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 94 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 95 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 96 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 97 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 98 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 99 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 100 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 101 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 102 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 103 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 104 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 105 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 106 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 107 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 108 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 109 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 110 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 111 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 112 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 113 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 114 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 115 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 116 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 117 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 118 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 119 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 120 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 121 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 122 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 123 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 124 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 125 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 126 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 127 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 128 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 129 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 130 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 131 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 132 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 133 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 134 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 135 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 136 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 137 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 138 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 139 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 140 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 141 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 142 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 143 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 144 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 145 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 146 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 147 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 148 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 149 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 150 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 151 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 152 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 153 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 154 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 155 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 156 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 157 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 158 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 159 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 160 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 161 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 162 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 163 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 164 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 165 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 166 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 167 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 168 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 169 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 170 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 171 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 172 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 173 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 174 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 175 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 176 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 177 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 178 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 179 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 180 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 181 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 182 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 183 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 184 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 185 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 186 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 187 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 188 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 189 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 190 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 191 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 192 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 193 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 194 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 195 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 196 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 197 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 198 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 199 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 200 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 201 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 202 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 203 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 204 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 205 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 206 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 207 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 208 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 209 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 210 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 211 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 212 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 213 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 214 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 215 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 216 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 217 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 218 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 219 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 220 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 221 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 222 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 223 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 224 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 225 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 226 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 227 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 228 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 229 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 230 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 231 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 232 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 233 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 234 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 235 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 236 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 237 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 238 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 239 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 240 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 241 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 242 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 243 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 244 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 245 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 246 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 247 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 248 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 249 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 250 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 251 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 252 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 253 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 254 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 255 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 256 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 257 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 258 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 259 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 260 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 261 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 262 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 263 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 264 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 265 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 266 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 267 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 268 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 269 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 270 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 271 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 272 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 273 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 274 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 275 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 276 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 277 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 278 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 279 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 280 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 281 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 282 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 283 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 284 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 285 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 286 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 287 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 288 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 289 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 290 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 291 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 292 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 293 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 294 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 295 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 296 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 297 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 298 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 299 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 300 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 301 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 302 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 303 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 304 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 305 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 306 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 307 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 308 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 309 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 310 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 311 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 312 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 313 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 314 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 315 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 316 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 317 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 318 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 319 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 320 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 321 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 322 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 323 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 324 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 325 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 326 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 327 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 328 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 329 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 330 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 331 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 332 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 333 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 334 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 335 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 336 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 337 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 338 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 339 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 340 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 341 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 342 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 343 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 344 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 345 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 346 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 347 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 348 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 349 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 350 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 351 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 352 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 353 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 354 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 355 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 356 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 357 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 358 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 359 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 360 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 361 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 362 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 363 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 364 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 365 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 366 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 367 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 368 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 369 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 370 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 371 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 372 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 373 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 374 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 375 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 376 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 377 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 378 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 379 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 380 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 381 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 382 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 383 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 384 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 385 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 386 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 387 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 388 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 389 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 390 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 391 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 392 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 393 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 394 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 395 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 396 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 397 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 398 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 399 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 400 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 401 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 402 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 403 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 404 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 405 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 406 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 407 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 408 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 409 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 410 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 411 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 412 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 413 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 414 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 415 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 416 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 417 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 418 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 419 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 420 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 421 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 422 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 423 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 424 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 425 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 426 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 427 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 428 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 429 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 430 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 431 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 432 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 433 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 434 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 435 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 436 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 437 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 438 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 439 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 440 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 441 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 442 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 443 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 444 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 445 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 446 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 447 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 448 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 449 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 450 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 451 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 452 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 453 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 454 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 455 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 456 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 457 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 458 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 459 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 460 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 461 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 462 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 463 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 464 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 465 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 466 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 467 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 468 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 469 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 470 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 471 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 472 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 473 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 474 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 475 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 476 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 477 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 478 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 479 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 480 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 481 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 482 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 483 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 484 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 485 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 486 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 487 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 488 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 489 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 490 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 491 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 492 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 493 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 494 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 495 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 496 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 497 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 498 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 499 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 500 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 501 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 502 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 503 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 504 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 505 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 506 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 507 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 508 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 509 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 510 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 511 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 512 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 513 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 514 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 515 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 516 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 517 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 518 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 519 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 520 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 521 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 522 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 523 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 524 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 525 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 526 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 527 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 528 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 529 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 530 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 531 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 532 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 533 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 534 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 535 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 536 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 537 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
