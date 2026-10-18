# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-19.md)

*最后自动更新时间: 2026-10-19 04:56:42*
## 1. 软件背后的人

**原文标题**: Someone behind the software

**原文链接**: [https://karrisaarinen.com/posts/someone-behind-the-software/](https://karrisaarinen.com/posts/someone-behind-the-software/)

文章指出，优秀的软件产品承载着创作者的经验、热情与思维方式。作者批评行业将开发视为工厂流水线，如今更试图用AI agent自动化整条流程，却忽略了真正的差异在于理解力与风格。作者在Linear推崇"直觉"——并非主观偏好，而是经由实践和试错积累的判断力。产品通过创作者关注什么、拒绝什么、在"可用"之后仍坚持打磨，形成灵魂；单个功能再完善，若与整体冲突仍会损害体验，需要有人取舍并持续验证。作者担忧当下许多产品趋于杂乱：人们更关注技术"能加什么"而非产品"应当是什么"，变更以叠加为主，缺乏统一视角。AI更让个体借助agent各自为战，如无数小工厂并行生产，改动单独看合理，合在一起却似弗兰肯斯坦拼凑，产品丧失个性，沦为所有输出的平均值。他寄望于开发变易后，人们拥有更多空间深耕问题、打磨答案，让作品各部分彼此归属，感受到软件背后那个"人"而非冰冷的工厂。

---

## 2. Free Pascal 编译器现支持动态包

**原文标题**: Free Pascal compiler now supports dynamic packages

**原文链接**: [https://www.getlazarus.org/dynamic/](https://www.getlazarus.org/dynamic/)

Free Pascal 编译器与 Lazarus IDE 首次完整支持动态包，用户可在数秒内安装组件、控件和扩展，无需重新编译整个 IDE。动态包以各平台标准共享库形式实现，内含编译器生成的元数据，支持运行时检查与查询，并提供跨包安全管理动态类型和线程变量的机制。主要限制包括：包内单元名不可与包名同名（系统自动追加"Package"后缀），不同包单元名必须唯一，且动态包因含完整映射而体积较大。RTL 方面新增 DynPkgTypes.pas 单元，提供 TPackageType 记录及加载、枚举、搜索、卸载包等函数。Lazarus IDE 方面进行了多项改进：修改包内代码后自动重建并以独立进度窗口提示；新增常驻包窗口便于浏览管理；包菜单支持即装即卸无需重建 IDE；支持按平台和控件集限制包可用性；新增表单/框架一键转换为可安装控件的功能，自动添加至组件面板。完整代码已提交至 GitLab 的 dynamic packages 分支，欢迎下载体验并反馈问题。

---

## 3. 微米级RepRap

**原文标题**: RepRapMicron

**原文链接**: [https://github.com/VikOlliver/RepRapMicron/wiki](https://github.com/VikOlliver/RepRapMicron/wiki)

微米级RepRap（μRepRap）是一个旨在利用常见易得材料实现微米及亚微米级3D制造的项目，理念延续自RepRap开源3D打印运动。项目借助OpenFlexure项目的3D打印显微镜平台起步，目标是打造可在家庭工坊中实现优于3μm重复定位精度的微型制造系统。当前推荐的PIKA V0.02版本在约8mm立方空间内达到约1μm定位精度，可沉积4μm紫外光敏树脂液滴，并以光纤探针固化9μm树脂线条；已弃用的MAUS版本曾作为弹性机构测试平台。项目愿景是让微米级制造如RepRap普及桌面3D打印般走向大众，推动微电子领域突破对硅基工艺的依赖，并为生物医学领域提供廉价、可快速迭代的设备。核心技术要素包括基于400步NEMA17步进电机的三轴控制、探针式打印头（可用电蚀刻尖端或医用针头）及UV树脂毛细沉积系统，配合USB显微镜完成观测与校准。未来仍需攻克悬臂结构、折叠铰链等复杂三维形状的制造难题，并逐步构建更小尺度的生态工具链，最终实现微米级系统的自我复制。

---

## 4. PalmOS 版 Lemmings 游戏（源码及截图）

**原文标题**: PalmOS Lemmings

**原文链接**: [https://github.com/ardiri/palmos-lemmings](https://github.com/ardiri/palmos-lemmings)

该页面介绍了一款运行于 PalmOS 平台的 Lemmings（经典益智引导类游戏）移植项目。项目源码以"按原样"的方式免费公开，仅供学习研究等教育用途，使用者需自行承担相关责任。页面同时提供了游戏运行的截图，供下载者预览实际效果。整体内容简练，属于典型的早期开源/教育类小型软件发布页，面向对 PalmOS 开发或 Lemmings 游戏机制感兴趣的开发者与爱好者。

---

## 5. DeepSeek search and fetch – $0.75 per 1000 successful requests

**原文标题**: DeepSeek search and fetch – $0.75 per 1000 successful requests

**原文链接**: [https://api-docs.deepseek.com/guides/search/](https://api-docs.deepseek.com/guides/search/)

DeepSeek 搜索与抓取 API——每千次成功请求 0.75 美元

DeepSeek 推出 Search（搜索）和 Fetch（抓取）两项 API，为智能体及 RAG 应用提供实时网页访问能力。Search API 由自研搜索引擎驱动，返回结构化搜索结果，支持 site、lang、after/before 等查询操作符，结果包含标题、摘要、正文、来源权威等级等字段；Fetch API 传入 URL 即可获取页面标题与 Markdown 正文。两者共享 Bearer 认证，接口地址为 api.deepseek.com/v1/tools/ 下对应端点。计费方面，每项 API 按成功请求收取，每千次 0.75 美元，仅 HTTP 200 且返回有效结果时计费，空结果、失败请求及超时均免费；`count` 参数不影响单价。速率限制上，Search 与 Fetch 各自独立，账户级 QPS 上限均为 5 次/秒，Fetch 另设单域名 QPS 限制，超限返回 HTTP 429。错误格式兼容 OpenAI 标准。此外，通过 DeepSeek Harness、Claude Code 或 Codex 触发的工具调用当前免费，自 2026 年 11 月 1 日（北京时间）起正式计费。

---

## 6. 英特尔8087芯片：浮点加法与减法的实现

**原文标题**: The Intel 8087 chip: floating-point addition and subtraction

**原文链接**: [https://www.righto.com/2026/10/8087-addition-subtraction-microcode.html](https://www.righto.com/2026/10/8087-addition-subtraction-microcode.html)

摘要：本文深入剖析了1980年英特尔推出的8087浮点协处理器，重点讲解浮点加法与减法的硬件电路及微代码实现。作者通过物理拆解芯片并以显微镜拍摄，展示了含1648条微指令的ROM及数据通路。数据通路核心组件包括69位整数加法器、任意位宽移位器和指数转换器，其中移位器用于对齐操作数的二进制小数点。8087内部采用80位"临时实数"格式（1位符号、15位带偏置指数、64位尾数），通过八寄存器栈和临时寄存器tmpA、tmpB、tmpC完成运算。微代码加/减法流程为：比较两操作数指数，必要时交换顺序；将较小尾数右移以对齐小数点；执行整数加或减；对结果进行规范化左移。文章还详述了零、无穷大、NaN等特殊值处理及溢出、下溢的指数调整机制。8087使加法速度较8086提升近100倍，复杂运算提升更为显著。

---

## 7. SIGSALY：丘吉尔致总统的绝密热线

**原文标题**: SIGSALY: Churchill's top secret hotline to the president

**原文链接**: [https://www.iwm.org.uk/history/iwm/cwr/telephone](https://www.iwm.org.uk/history/iwm/cwr/telephone)

二战期间，为在英美"特别关系"中实现绝对安全的跨大西洋通信，美国贝尔电话实验室于1940年秘密启动了代号"X计划"的项目，即SIGSALY系统。该系统将人声数字化后与随机噪声混合，经无线电传输至对端再还原为声音，德军截获后只能听到无法辨识的噪声。系统使用12分钟音乐唱片作为随机噪声源，两端须精确同步播放同一片唱片，用后即销毁，因此通话必须事先预约。每套终端造价100万美元、重达50吨，共部署12台，分布于五角大楼、白宫、伦敦、阿尔及尔、澳大利亚等地。伦敦终端设于塞尔福里奇百货公司地下三层，并延伸至美国使馆、唐宁街十号及丘吉尔的战时指挥部。在指挥部的地下设施中，该设备被藏于一个伪装为厕所的壁橱内，连工作人员也不知其存在。1944年4月，丘吉尔与罗斯福首次通过该系统通话，此后双方及盟军高层累计进行了至少3000次通话。1945年罗斯福去世后，丘吉尔通过SIGSALY致电继任者杜鲁致哀。该系统是英美战时同盟的标志性象征，体现了双方对这一"特殊关系"的高度重视与深厚信任。

---

## 8. Show HN：《塞尔达传说》完整时间线——《时之笛》重制前的补课指南

**原文标题**: Show HN: The Zelda timeline to catch up before the Ocarina of Time remake

**原文链接**: [https://legendofhyrule.com/](https://legendofhyrule.com/)

本文为任天堂塞尔达系列官方时间线，梳理了从创世神话到最新作品的完整故事脉络。时间线始于三位黄金女神创世并留下三角力量，经女神希利亚与魔王德米斯的战争、天空岛悬浮时代（《天空之剑》），至希卡族建立海拉鲁王国。核心枢纽为1998年《时之笛》，该作使时间线分裂为"童年时代""成年时代"与"英雄陨落"三条平行线，各自延伸至《风之杖》《幻影沙漏》《四之冒险》及大洪水等不同未来。文中还涵盖《黄昏公主》《旷野之息》《王国之泪》《三角英雄》《智慧的回忆》（2024）等作品，最新条目为即将登场的《时之笛》Switch 2重制版。全文按发售年份与主机平台（FC至Switch 2）标注各作位置，并简述林克、塞尔达、加农多夫等核心角色在时间线中的关联，帮助玩家在接触重制版前快速补齐全系列叙事脉络。

---

## 9. Developing for Debugging (2025)

**原文标题**: Developing for Debugging (2025)

**原文链接**: [https://www.davepacheco.net/blog/2025/developing-for-debugging-dns-propagation/](https://www.davepacheco.net/blog/2025/developing-for-debugging-dns-propagation/)

文章之前已经处理过

---

## 10. Namecheap 刚刚查封并禁用了我的所有域名

**原文标题**: Namecheap just seized and disabled all my domains

**原文链接**: [https://www.reddit.com/r/sysadmin/comments/1x8cycd/namecheap_just_seized_and_disabled_all_my_domains/](https://www.reddit.com/r/sysadmin/comments/1x8cycd/namecheap_just_seized_and_disabled_all_my_domains/)

无法访问该文章链接

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 2 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 3 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 4 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 5 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 6 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 7 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 8 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 9 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 10 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 11 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 12 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 13 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 14 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 15 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 16 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 17 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 18 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 19 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 20 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 21 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 22 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 23 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 24 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 25 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 26 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 27 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 28 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 29 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 30 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 31 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 32 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 33 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 34 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 35 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 36 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 37 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 38 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 39 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 40 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 41 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 42 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 43 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 44 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 45 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 46 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 47 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 48 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 49 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 50 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 51 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 52 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 53 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 54 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 55 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 56 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 57 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 58 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 59 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 60 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 61 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 62 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 63 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 64 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 65 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 66 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 67 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 68 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 69 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 70 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 71 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 72 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 73 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 74 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 75 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 76 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 77 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 78 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 79 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 80 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 81 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 82 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 83 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 84 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 85 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 86 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 87 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 88 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 89 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 90 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 91 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 92 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 93 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 94 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 95 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 96 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 97 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 98 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 99 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 100 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 101 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 102 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 103 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 104 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 105 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 106 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 107 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 108 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 109 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 110 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 111 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 112 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 113 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 114 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 115 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 116 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 117 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 118 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 119 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 120 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 121 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 122 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 123 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 124 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 125 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 126 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 127 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 128 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 129 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 130 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 131 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 132 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 133 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 134 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 135 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 136 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 137 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 138 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 139 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 140 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 141 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 142 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 143 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 144 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 145 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 146 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 147 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 148 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 149 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 150 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 151 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 152 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 153 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 154 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 155 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 156 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 157 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 158 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 159 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 160 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 161 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 162 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 163 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 164 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 165 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 166 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 167 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 168 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 169 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 170 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 171 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 172 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 173 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 174 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 175 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 176 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 177 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 178 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 179 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 180 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 181 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 182 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 183 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 184 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 185 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 186 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 187 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 188 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 189 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 190 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 191 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 192 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 193 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 194 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 195 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 196 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 197 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 198 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 199 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 200 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 201 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 202 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 203 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 204 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 205 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 206 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 207 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 208 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 209 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 210 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 211 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 212 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 213 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 214 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 215 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 216 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 217 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 218 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 219 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 220 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 221 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 222 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 223 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 224 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 225 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 226 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 227 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 228 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 229 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 230 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 231 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 232 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 233 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 234 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 235 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 236 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 237 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 238 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 239 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 240 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 241 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 242 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 243 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 244 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 245 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 246 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 247 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 248 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 249 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 250 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 251 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 252 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 253 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 254 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 255 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 256 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 257 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 258 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 259 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 260 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 261 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 262 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 263 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 264 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 265 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 266 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 267 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 268 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 269 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 270 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 271 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 272 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 273 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 274 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 275 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 276 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 277 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 278 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 279 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 280 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 281 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 282 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 283 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 284 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 285 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 286 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 287 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 288 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 289 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 290 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 291 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 292 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 293 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 294 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 295 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 296 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 297 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 298 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 299 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 300 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 301 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 302 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 303 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 304 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 305 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 306 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 307 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 308 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 309 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 310 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 311 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 312 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 313 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 314 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 315 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 316 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 317 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 318 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 319 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 320 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 321 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 322 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 323 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 324 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 325 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 326 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 327 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 328 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 329 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 330 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 331 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 332 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 333 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 334 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 335 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 336 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 337 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 338 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 339 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 340 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 341 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 342 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 343 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 344 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 345 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 346 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 347 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 348 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 349 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 350 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 351 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 352 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 353 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 354 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 355 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 356 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 357 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 358 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 359 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 360 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 361 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 362 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 363 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 364 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 365 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 366 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 367 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 368 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 369 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 370 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 371 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 372 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 373 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 374 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 375 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 376 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 377 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 378 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 379 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 380 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 381 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 382 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 383 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 384 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 385 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 386 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 387 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 388 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 389 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 390 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 391 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 392 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 393 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 394 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 395 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 396 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 397 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 398 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 399 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 400 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 401 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 402 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 403 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 404 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 405 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 406 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 407 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 408 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 409 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 410 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 411 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 412 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 413 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 414 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 415 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 416 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 417 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 418 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 419 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 420 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 421 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 422 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 423 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 424 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 425 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 426 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 427 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 428 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 429 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 430 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 431 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 432 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 433 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 434 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 435 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 436 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 437 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 438 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 439 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 440 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 441 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 442 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 443 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 444 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 445 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 446 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 447 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 448 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 449 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 450 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 451 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 452 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 453 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 454 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 455 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 456 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 457 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 458 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 459 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 460 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 461 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 462 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 463 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 464 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 465 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 466 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 467 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 468 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 469 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 470 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 471 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 472 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 473 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 474 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 475 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 476 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 477 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 478 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 479 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 480 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 481 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 482 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 483 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 484 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 485 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 486 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 487 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 488 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 489 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 490 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 491 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 492 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 493 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 494 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 495 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 496 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 497 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 498 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 499 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 500 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 501 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 502 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 503 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 504 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 505 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 506 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 507 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 508 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 509 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 510 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 511 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 512 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 513 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 514 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 515 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 516 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 517 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 518 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 519 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 520 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 521 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 522 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 523 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 524 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 525 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 526 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 527 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 528 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 529 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 530 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 531 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 532 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 533 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 534 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 535 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 536 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 537 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 538 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 539 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 540 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 541 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 542 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 543 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 544 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 545 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 546 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 547 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 548 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 549 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 550 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 551 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 552 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 553 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 554 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 555 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 556 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 557 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 558 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 559 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 560 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 561 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 562 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 563 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 564 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 565 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 566 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 567 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 568 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 569 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 570 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 571 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 572 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 573 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 574 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
