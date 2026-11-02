# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-03.md)

*最后自动更新时间: 2026-11-03 04:55:29*
## 1. Astra可直接读写权重以改进Qwen

**原文标题**: Astra can read and write weights to improve Qwen

**原文链接**: [https://rikiyat.github.io/blog/weight-space-programming/](https://rikiyat.github.io/blog/weight-space-programming/)

摘要：MIT团队发现，前沿大模型GPT-6 Astra能以"权重空间编程"方式，无需梯度或训练循环，直接读写神经网络权重。"读"方面：Astra仅凭17,253个原始权重即正确识别四款游戏中各网络对应的游戏；仅看扩散模型权重便判断出生成形状；仅凭中间层权重即识别出720万参数语言模型的训练语料（Python、日文、英文），并精准定位全部"复制注意力头"。"写"方面：Astra单次编辑修复PPO策略的局部最优问题，使小车爬坡成功率从0%升至100%；零样本生成三个MinAtar游戏网络权重，全面超越PPO训练1亿步的效果。改进真实模型方面，Astra编辑Qwen3.5-0.8B仅0.016%的权重，将MATH-500从7.9%提升至48.1%，IFEval提升3倍，并修复了模型卡中已知的推理循环缺陷。该范式表明，传统依赖Adam等符号优化器的权重更新正被LLM的原生推理取代，对模型优化与可解释性均意义深远。

---

## 2. Momentic（YC W24）——通过AI智能体实际使用应用以捕获Bug

**原文标题**: Launch HN: Momentic (YC W24) – Agents that catch bugs by using your app

**原文链接**: [https://momentic.ai/](https://momentic.ai/)

Momentic（YC 2024冬季批次）是一款面向开发者的智能测试产品，核心思路是部署AI智能体像真实用户一样操作应用程序，主动发现潜在缺陷与漏洞。文章展示了其典型检测案例：在某一消费级金融科技应用的功能分支上，Momentic智能体在模拟用户登录流程时，发现一处因登录路由变更而被静默绕过的"新设备双因素认证（2FA）"提示。该变更使得新设备登录跳过了关键的安全验证环节，攻击者可能借此绕过身份校验，对支付类应用构成严重风险。Momentic的价值在于将传统被动测试转变为主动的、连续的体验式检测，能在功能合并前暴露流程层面的逻辑缺陷，帮助团队在早期修复安全漏洞、降低上线风险。

---

## 3. 美国男女名字互换现象

**原文标题**: US boy names that became girl names and vice versa

**原文链接**: [https://namedaisy.com/blog/boy-names-that-became-girl-names](https://namedaisy.com/blog/boy-names-that-became-girl-names)

无法访问该文章链接

---

## 4. AI时代的无我数学

**原文标题**: Egoless Mathematics in the AI Era

**原文链接**: [https://terrytao.wordpress.com/2026/11/02/egoless-mathematics-in-the-ai-era/](https://terrytao.wordpress.com/2026/11/02/egoless-mathematics-in-the-ai-era/)

摘要：本文由Ben Eastaugh与Chris Sternal-Johnson发表于WordPress博客平台，主题聚焦于人工智能时代数学研究的"无我"精神。所谓"无我数学"，强调在数学探索中摒弃个人偏见与主观执念，以客观真理为唯一准则，追求纯粹而严谨的逻辑推演。文章探讨了在AI深度参与数学证明、猜想验证及问题求解的当下，人类数学家如何保持这种去自我化（egoless）的研究态度，以及AI工具对数学共同体协作方式、证明标准与知识生产范式带来的冲击与重塑。在机器可以大规模生成与验证证明的时代，"无我"不再仅是个人修养，更成为人机协作中确保数学可靠性的核心伦理原则。本文试图思考：当算法取代部分人类直觉与灵感时，数学的客观性与真理追求如何得以延续，人类在数学创造中的独特角色又是什么。

---

## 5. Show HN 展示：体素风格华沙——城市中心交互式3D地图

**原文标题**: Show HN: Warsaw in voxels – An interactive 3D map of the city centre

**原文链接**: [https://p.migdal.pl/warsaw-vibe-voxel/](https://p.migdal.pl/warsaw-vibe-voxel/)

摘要：该项目发布于 Hacker News，是一个以体素（Voxel，三维像素方块）风格构建的华沙市中心交互式3D可视化地图。用户可在网页中以前瞻性的方块化视角浏览波兰首都城市核心的三维立体模型，将真实建筑与城市结构转化为风格化的体素数据呈现。页面当前处于地图数据加载阶段，项目由开发者在 HN 社区分享，属于技术创意与开源可视化类作品，旨在以新颖的体素渲染方式让公众直观感受华沙城区的空间布局与建筑风貌。

---

## 6. 若热爱某网站，请将它备份

**原文标题**: If you love a website, back it up

**原文链接**: [https://blog.mistys-internet.website/post/2026/10/29/if-you-love-a-website-back-it-up/](https://blog.mistys-internet.website/post/2026/10/29/if-you-love-a-website-back-it-up/)

摘要：作者从事网络归档工作，因一个经营二十年的老动画粉丝网站teapuppies.com突然消失、域名沦为赌博广告，深感遗憾，遂撰文呼吁个人主动备份所喜爱的网页，而非被动等待大型机构介入。文章介绍了三款个人网页归档工具：一是ArchiveWeb.page浏览器扩展，操作最简单，安装后点击即可归档单页或整站；二是archiveweb.page独立应用，内置浏览器，无需安装扩展；三是Browsertrix，适合大型网站的自动爬取归档，功能丰富但为付费服务（有开源版可自行部署）。三者均采用WARC/WACZ等标准归档格式，能完整记录请求、响应及页面交互，兼容客户端JavaScript等复杂页面。归档后可在本地回放浏览，也可通过ReplayWeb.page嵌入组件将整站回放嵌入博客或网页中分享，或将WACZ文件传递给他人共同保管。作者鼓励读者立即行动，备份心中所爱，并呼吁社区间互相传递备份，以多份副本保障珍贵数字记忆的存续。

---

## 7. SOML：一种为人类而生的配置格式

**原文标题**: SOML – A Config Format for Humans

**原文链接**: [https://github.com/soml-lang/soml](https://github.com/soml-lang/soml)

SOML（Sindre's Objectively Marvelous Language）是一种面向手写场景的配置格式，旨在兼具 JSON 的严格性与 YAML 的可读性。其核心原则是：值的类型完全由语法决定而非内容——带引号即为字符串，无引号则必为数字、日期、时间戳、时长或关键字，否则报错，从根本上消除了 YAML 中"country: no 被解析为 false"等隐患。语法上，顶层无需大括号，键名免引号（支持连字符与数字开头），换行替代逗号，支持 # 和 /\* \*/ 两种注释；提供字面字符串（单引号免转义）、去缩进块字符串，以及原生日期、时间戳和时长类型，使 timeout: 30s 无需猜测单位。与 JSON 比，SOML 去除冗余符号并加入注释；与 YAML 比，杜绝按内容猜类型、缩进定结构、别名炸弹及标签远程代码执行风险；与 TOML 比，统一大括号层级语法，消除表头隐式作用域与点号键歧义。此外，SOML 定义唯一规范形式与规范格式化工具，便于哈希、签名与文件比较，并配有近 1000 例跨语言一致性测试套件，确保各实现行为统一。目前为草案阶段，欢迎反馈。

---

## 8. 潜入礼堂，见证Windows 2000发布会彩排

**原文标题**: Sneaking into the auditorium for the Windows 2000 launch rehearsal

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20261102-00/?p=112818/](https://devblogs.microsoft.com/oldnewthing/20261102-00/?p=112818/)

摘要：Windows 2000旧金山发布会上，部分团队成员被派往配套博览会，少数人获准出席主会场。作者等人提前到达Civic Auditorium，在入场前百无聊赖，有人试图溜进VIP帐篷（最终带回一个纪念版套装），作者则通过一扇未锁的门潜入空荡的上层看台。他观察到精致的舞台：十米高巨型笔记本、两侧投影屏幕、灰色幕布及飞机客舱布景。随后目睹开场彩排——笔记本缓缓合上再打开，屏幕演示登录Windows 2000并点击_start_菜单，接着播放视频蒙太奇，旁白宣布"欢迎Patrick Stewart"，但登场的竟是一名戴耳机的临时演员，仅做灯光与摄影走位。作者悄悄离场，未向同伴透露主持人身份。正式发布会如期由Patrick Stewart主持，这位演员气场强大，尽管念的是他未必看得懂的提词器文稿，却令每一句都掷地有声。飞机客舱场景则演示了红外文件传输等移动办公功能，由演员John O'Hurley扮演名为William Wentworth的角色（邮箱www@www.com），颇具那个年代的风趣。

---

## 9. 开什么玩笑，Ubuntu？

**原文标题**: WTF Ubuntu?

**原文链接**: [https://chalmovsky.com/posts/wtf-ubuntu](https://chalmovsky.com/posts/wtf-ubuntu)

近日，CVE-2026-98432这一严重漏洞震动Linux社区。该漏洞存在于内核TCP代码中，自2016年便已潜伏，CVSS评分高达9.8分，可远程利用，Anthropic已宣布成功构建出可获取服务器完全控制权（root）的漏洞利用程序。然而，Debian、Arch、Alpine等志愿者维护的发行版均已迅速修复，由Canonical运营的Ubuntu截至2026年11月2日仍未发布补丁，所有受支持版本（含LTS）仍标记为"易受攻击"——距漏洞评级已九天，距root利用公开已六天。作者痛批官网"及时修补""企业级安全"等宣传形同虚设，讽刺一家以安全订阅营利的公司，响应速度竟不及志愿者社区。因无法及时完成服务迁移，作者被迫将全部Ubuntu服务器下线，宣布彻底丧失信任，决定将所有服务迁离Ubuntu。

---

## 10. 甲骨文拟发行200亿美元新股及债券为AI基建融资

**原文标题**: Oracle files to sell $20B in new stock, bonds to finance AI buildout

**原文链接**: [https://www.cnbc.com/2026/11/02/oracle-files-to-sell-20-billion-in-new-stock-bonds-to-finance-ai-buildout.html](https://www.cnbc.com/2026/11/02/oracle-files-to-sell-20-billion-in-new-stock-bonds-to-finance-ai-buildout.html)

甲骨文周一向美国证券交易委员会提交计划，拟发行100亿美元普通股及100亿美元优先票据，为AI基础设施建设融资，该方案在上周投资者日已有预告。消息公布后股价当日仍跌超6%。公司称募资将用于资本支出、偿债及未来投资，并宣布2027至2030财年融资上限为200亿美元，计划借助供应商融资、客户提供硬件及预付款，于2028年下半年实现正自由现金流。UBS认为此举缓解了市场对融资成本及债务环境的担忧。然而，甲骨文年内股价已下滑33%，过去12个月跌50%；其2031年到期债券收益率升至7.27%，五年CDS利差飙至296、一年涨幅270%，接近高收益债水平。标普7月已将其评级下调至BBB-，截至8月底总负债达1253亿美元。分析人士强调，甲骨文乃至整个AI赛道核心在于执行力——能否如期完成建设而不再回头融资，将决定市场最终态度。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 2 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 3 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 4 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 5 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 6 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 7 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 8 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 9 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 10 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 11 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 12 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 13 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 14 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 15 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 16 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 17 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 18 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 19 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 20 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 21 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 22 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 23 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 24 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 25 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 26 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 27 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 28 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 29 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 30 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 31 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 32 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 33 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 34 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 35 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 36 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 37 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 38 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 39 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 40 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 41 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 42 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 43 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 44 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 45 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 46 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 47 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 48 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 49 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 50 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 51 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 52 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 53 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 54 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 55 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 56 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 57 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 58 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 59 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 60 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 61 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 62 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 63 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 64 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 65 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 66 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 67 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 68 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 69 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 70 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 71 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 72 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 73 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 74 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 75 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 76 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 77 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 78 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 79 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 80 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 81 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 82 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 83 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 84 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 85 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 86 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 87 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 88 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 89 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 90 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 91 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 92 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 93 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 94 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 95 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 96 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 97 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 98 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 99 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 100 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 101 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 102 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 103 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 104 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 105 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 106 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 107 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 108 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 109 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 110 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 111 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 112 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 113 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 114 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 115 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 116 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 117 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 118 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 119 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 120 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 121 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 122 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 123 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 124 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 125 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 126 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 127 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 128 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 129 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 130 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 131 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 132 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 133 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 134 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 135 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 136 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 137 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 138 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 139 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 140 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 141 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 142 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 143 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 144 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 145 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 146 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 147 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 148 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 149 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 150 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 151 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 152 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 153 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 154 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 155 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 156 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 157 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 158 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 159 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 160 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 161 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 162 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 163 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 164 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 165 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 166 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 167 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 168 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 169 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 170 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 171 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 172 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 173 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 174 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 175 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 176 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 177 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 178 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 179 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 180 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 181 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 182 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 183 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 184 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 185 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 186 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 187 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 188 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 189 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 190 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 191 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 192 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 193 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 194 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 195 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 196 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 197 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 198 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 199 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 200 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 201 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 202 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 203 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 204 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 205 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 206 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 207 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 208 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 209 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 210 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 211 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 212 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 213 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 214 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 215 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 216 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 217 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 218 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 219 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 220 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 221 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 222 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 223 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 224 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 225 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 226 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 227 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 228 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 229 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 230 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 231 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 232 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 233 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 234 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 235 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 236 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 237 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 238 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 239 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 240 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 241 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 242 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 243 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 244 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 245 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 246 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 247 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 248 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 249 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 250 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 251 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 252 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 253 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 254 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 255 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 256 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 257 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 258 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 259 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 260 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 261 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 262 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 263 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 264 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 265 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 266 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 267 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 268 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 269 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 270 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 271 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 272 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 273 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 274 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 275 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 276 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 277 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 278 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 279 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 280 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 281 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 282 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 283 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 284 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 285 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 286 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 287 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 288 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 289 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 290 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 291 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 292 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 293 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 294 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 295 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 296 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 297 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 298 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 299 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 300 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 301 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 302 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 303 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 304 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 305 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 306 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 307 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 308 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 309 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 310 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 311 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 312 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 313 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 314 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 315 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 316 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 317 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 318 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 319 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 320 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 321 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 322 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 323 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 324 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 325 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 326 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 327 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 328 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 329 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 330 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 331 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 332 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 333 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 334 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 335 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 336 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 337 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 338 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 339 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 340 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 341 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 342 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 343 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 344 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 345 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 346 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 347 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 348 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 349 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 350 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 351 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 352 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 353 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 354 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 355 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 356 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 357 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 358 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 359 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 360 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 361 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 362 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 363 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 364 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 365 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 366 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 367 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 368 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 369 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 370 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 371 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 372 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 373 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 374 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 375 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 376 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 377 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 378 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 379 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 380 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 381 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 382 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 383 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 384 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 385 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 386 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 387 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 388 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 389 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 390 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 391 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 392 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 393 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 394 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 395 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 396 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 397 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 398 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 399 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 400 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 401 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 402 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 403 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 404 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 405 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 406 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 407 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 408 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 409 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 410 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 411 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 412 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 413 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 414 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 415 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 416 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 417 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 418 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 419 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 420 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 421 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 422 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 423 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 424 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 425 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 426 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 427 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 428 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 429 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 430 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 431 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 432 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 433 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 434 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 435 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 436 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 437 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 438 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 439 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 440 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 441 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 442 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 443 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 444 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 445 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 446 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 447 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 448 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 449 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 450 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 451 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 452 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 453 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 454 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 455 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 456 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 457 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 458 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 459 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 460 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 461 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 462 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 463 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 464 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 465 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 466 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 467 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 468 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 469 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 470 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 471 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 472 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 473 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 474 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 475 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 476 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 477 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 478 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 479 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 480 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 481 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 482 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 483 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 484 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 485 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 486 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 487 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 488 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 489 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 490 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 491 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 492 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 493 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 494 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 495 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 496 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 497 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 498 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 499 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 500 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 501 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 502 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 503 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 504 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 505 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 506 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 507 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 508 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 509 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 510 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 511 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 512 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 513 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 514 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 515 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 516 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 517 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 518 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 519 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 520 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 521 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 522 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 523 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 524 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 525 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 526 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 527 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 528 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 529 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 530 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 531 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 532 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 533 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 534 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 535 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 536 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 537 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 538 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 539 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 540 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 541 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 542 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 543 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 544 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 545 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 546 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 547 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 548 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 549 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 550 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 551 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 552 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 553 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 554 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 555 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 556 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 557 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 558 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 559 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 560 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 561 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 562 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 563 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 564 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 565 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 566 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 567 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 568 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 569 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 570 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 571 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 572 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 573 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 574 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 575 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 576 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 577 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 578 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 579 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 580 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 581 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 582 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 583 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 584 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 585 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 586 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 587 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 588 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 589 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
