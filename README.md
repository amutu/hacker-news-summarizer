# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-09.md)

*最后自动更新时间: 2026-03-09 20:38:59*
## 1. 使用波函数坍缩算法构建程序化六边形地图

**原文标题**: Building a Procedural Hex Map with Wave Function Collapse

**原文链接**: [https://felixturner.github.io/hex-map-wfc/article/](https://felixturner.github.io/hex-map-wfc/article/)

本文详细介绍了如何利用波函数坍缩算法创建程序化六边形地图生成器。该系统可在约4,100个六边形单元格上构建具有道路、河流、森林等地形的独特且确定性的中世纪岛屿地图。

核心挑战在于将原本基于匹配边缘放置瓦片的WFC算法适配到六边形网格中，这显著增加了复杂度。为此，地图被划分为19个独立求解但受相邻边界约束的较小网格。作者开发了精密的冲突恢复系统，包括用于修补边界问题的“局部WFC”流程，并以山地瓦片作为最终修复手段。

地形高程引入了第三维度，要求瓦片在五个高度层级间正确连接。虽然WFC主导地形生成，但Perlin噪声被用于树木和建筑的有机分布，因为单纯使用WFC会产生不佳的大尺度图案。

视觉呈现方面，项目采用Three.js配合WebGPU和TSL着色器。关键效果包括带有焦散动画的水体和海岸波浪，通过自定义的“环绕度”遮罩技术实现海湾效果。性能方面采用批量网格和共享材质进行优化，使数千个单元格能够高效渲染。

最终成果是一个快速可靠的生成器，能在约20秒内生成全新的可探索地图，实现了算法精度与艺术设计的融合。

---

## 2. JSLinux现已支持x86_64架构

**原文标题**: JSLinux Now Supports x86_64

**原文链接**: [https://bellard.org/jslinux/](https://bellard.org/jslinux/)

**摘要：**

JSLinux，一款基于浏览器的模拟器，现已新增对x86_64系统的支持。主要更新是推出了全新的Alpine Linux 3.23.2（x86_64）虚拟机，该虚拟机具备控制台界面、VFsync功能，并支持AVX-512和APX等高级CPU指令集。

文章列出了当前所有可用的模拟系统，涵盖x86、x86_64和riscv64架构的多种操作系统。这些系统范围广泛，从轻量级基于控制台的Linux发行版（Alpine、Buildroot、Fedora）到图形环境（X Window），甚至包括Windows 2000和FreeDOS等经典系统。每个虚拟机均详细说明了其CPU架构、操作系统、用户界面类型、VFsync支持情况，以及特定功能或注意事项的说明。

核心公告在于该平台扩展了对现代64位x86模拟的能力，从而增强了其在网页浏览器中直接运行更广泛软件的多样性。

---

## 3. 展示HN：Mog编程语言

**原文标题**: Show HN: The Mog Programming Language

**原文链接**: [https://moglang.org](https://moglang.org)

本文介绍了**Mog**——一种为简洁高效而设计的新编程语言。作者将其作为“Show HN”项目发布，邀请开发者社区探索并提供反馈。

Mog的核心理念是成为一种**极简的通用语言**，易于学习和使用。其强调的主要特性包括：
*   **清晰可读的语法**，减少样板代码。
*   **强静态类型系统**，确保可靠性与性能。
*   **内置并发支持**，简化并行程序编写。
*   注重**实用工具链**，从一开始就包含包管理器和构建系统。

该指南本身是交互式的，需要JavaScript才能运行，这表明项目可能提供了在线演练环境或实时代码示例。本文的整体目的是宣布Mog的发布，阐释其设计目标，并鼓励开发者尝试使用并参与其早期开发。

---

## 4. DARPA新型X-76

**原文标题**: DARPA's new X-76

**原文链接**: [https://www.darpa.mil/news/2026/darpa-new-x-76-speed-of-jet-freedom-of-helicopter](https://www.darpa.mil/news/2026/darpa-new-x-76-speed-of-jet-freedom-of-helicopter)

美国国防高级研究计划局（DARPA）已正式将其新型实验飞机命名为X-76，并进入建造阶段。该飞机是SPRINT计划的一部分，由DARPA与美国特种作战司令部联合推进，贝尔德事隆公司在完成设计评审后负责制造。

该计划的核心目标是打破长期存在的军事性能取舍，将固定翼喷气式飞机的高速性与直升机不依赖跑道、垂直起降（VTOL）的能力相结合。X-76验证机旨在实现超过400节的巡航速度，同时保留悬停及在无准备场地起降的能力。

项目官员强调，消除对跑道的依赖将提供关键的作战灵活性，减少易受攻击性，并实现随时随地的快速突袭部署。X-76的编号于2026年公布，刻意呼应美国建国年份1776年的革新精神。

在完成当前制造与地面测试阶段后，该项目计划于2028年初进入飞行测试阶段。

---

## 5. Fixfest是全球维修师、修补匠和活动家的聚会。

**原文标题**: Fixfest is a global gathering of repairers, tinkerers, and activists

**原文链接**: [https://fixfest.therestartproject.org/](https://fixfest.therestartproject.org/)

Fixfest是一项定期举办的全球性活动，汇聚了维修爱好者、活动家、政策制定者、教育工作者和企业代表，旨在分享技能并推动全球维修运动。该活动通常每两到三年举办一次，最近一次国际聚会于2025年9月在伦敦举行，吸引了超过220名参与者。

在大型国际会议间隔期间，各地也会组织国家或区域性的Fixfest活动。文章鼓励读者订阅通讯，以获取未来活动的更新信息，并注明邮箱地址可能会与未来的组织方共享，但仅用于Fixfest相关联络。

文章强调了2025年Fixfest作为社群建设活动的成功，并提供了相关项目及票务资讯的新闻链接。文末附上了对潜在嘉宾、赞助方或未来主办方的合作邀请。

---

## 6. 修复Sun SPARCstation IPX第一部分：电源与NVRAM（2020）

**原文标题**: Restoring a Sun SPARCstation IPX part 1: PSU and NVRAM (2020)

**原文链接**: [https://www.rs-online.com/designspark/restoring-a-sun-sparcstation-ipx-part-1-psu-and-nvram](https://www.rs-online.com/designspark/restoring-a-sun-sparcstation-ipx-part-1-psu-and-nvram)

本文详细介绍了修复一台老式Sun SPARCstation IPX工作站的过程，重点关注了两个常见故障点。第一个问题是电源故障，这是IPX和IPC型号的常见问题。作者用质量更高的新电解电容替换了电源中所有失效和漏液的电容。首次尝试修复一台电源未果后，作者从另一台IPX上取下的第二台电源经成功更换电容后，使主机系统恢复了运行。

解决的第二个问题是失效的NVRAM芯片（M48T02），该芯片存储着以太网MAC地址和主机ID等关键系统数据。作者更换了新芯片，并使用OpenBoot PROM（OBP）监控器重新编程了这些数据。尽管新芯片能正确保存设置，系统仍显示NVRAM更换错误，导致无法自动启动——这是一个已知但尚未解决的系统特性。

经过这些修复，作者成功将机器启动至Solaris 7系统。未来计划包括清洁发黄的塑料机箱、进一步排查持续的NVRAM错误，以及安装与时代匹配的Solaris操作系统版本。

---

## 7. Bluesky首席执行官杰伊·格拉伯即将卸任。

**原文标题**: Bluesky CEO Jay Graber is stepping down

**原文链接**: [https://bsky.social/about/blog/03-09-2026-a-new-chapter-for-bluesky](https://bsky.social/about/blog/03-09-2026-a-new-chapter-for-bluesky)

Bluesky首席执行官杰伊·格拉伯将卸任，转任公司首席创新官。她解释称，在将平台从零建设至拥有超4000万用户后，公司当前需要专注于规模化运营的领导者，而她希望回归自身擅长的创新与产品开发领域。

Automattic（WordPress.com母公司）前首席执行官、True Ventures合伙人托尼·施耐德将加入公司担任临时首席执行官，直至确定永久继任者。施耐德担任Bluesky顾问已逾一年，且Automattic与True Ventures均为公司投资方。格拉伯对施耐德在使命驱动的开源公司领域的经验充满信心，相信他能引领Bluesky进入下一发展阶段。

格拉伯表示，此次职务调整符合她的理念——当个人角色与热情及优势相匹配时，才能实现最大价值。她期待在新岗位上专注于探索去中心化社交媒体的新构想，同时支持团队在新领导层带领下持续成长。

---

## 8. 佛罗里达州法官裁定闯红灯摄像头罚单违宪。

**原文标题**: Florida judge rules red light camera tickets are unconstitutional

**原文链接**: [https://cbs12.com/news/local/florida-news-judge-rules-red-light-camera-tickets-unconstitutional](https://cbs12.com/news/local/florida-news-judge-rules-red-light-camera-tickets-unconstitutional)

布劳沃德县一名法官驳回了一张闯红灯摄像罚单，裁定佛罗里达州的自动执法法违宪。史蒂文·P·德卢卡法官认为，该法规不当将举证责任转移给车主——它假定违规时车主就是驾驶人，并要求车主通过宣誓书证明自己并非驾驶人。

法院认定这类民事违规行为属于“准刑事”程序，因为它们会带来处罚并影响驾驶记录。因此，州政府必须排除合理怀疑地证明每个要素，包括驾驶人的身份。法官裁定，该法律的推定违反了宪法规定的正当程序保护。

尽管该裁决目前仅适用于布劳沃德县的这一具体案件，但法律专家指出，它可能激发其他地区的类似挑战。上诉可能会促成更广泛的全州性判例。反对摄像头的倡导团体称赞这一决定是重大胜利，而支持者则坚称该系统提高了十字路口的安全性。

未来的影响尚不明确，因为尚不清楚该裁决是否会被上诉。目前，这对佛罗里达州的闯红灯摄像头系统（即《马克·万德尔交通安全法》）构成了重大的法律挑战。

---

## 9. 字体工匠：将你的手写体转化为真实字体

**原文标题**: Fontcrafter: Turn Your Handwriting into a Real Font

**原文链接**: [https://arcade.pirillo.com/fontcrafter.html](https://arcade.pirillo.com/fontcrafter.html)

**FontCrafter 简介**

FontCrafter 是一款免费的在线工具，可将你的手写笔迹转换为功能完整的数字字体。整个过程均在浏览器本地完成，确保隐私安全——你的手写扫描件永远不会上传至服务器。

创建字体时，用户需打印提供的模板，用深色笔填写三行字符框，然后扫描或拍摄已完成的纸张。应用会自动检测每个字符，并允许手动验证。随后，用户可通过为字体命名、定义三行字符的用途（例如用于大写/小写变体）以及启用连字功能（如“ff”、“th”以实现自然的字母连接）和字距调整功能（优化间距）来自定义字体。

该工具生成全面的字体文件，包含超过 100 个扩展字符（如智能引号和货币符号），并支持欧洲语言的带重音字符。它可导出四种格式的字体：适用于桌面应用的 OTF、通用兼容的 TTF、用于网站的 WOFF2，以及可直接嵌入 CSS 的 Base64 格式。

与一些竞品不同，FontCrafter 完全免费，无需账户、订阅或添加水印。用户拥有生成字体的所有权，可将其用于个人和商业项目。

---

## 10. 闪存介质寿命测试——六年之后

**原文标题**: Flash media longevity testing – 6 years later

**原文链接**: [https://old.reddit.com/r/DataHoarder/comments/1q6xnun/flash_media_longevity_testing_6_years_later/](https://old.reddit.com/r/DataHoarder/comments/1q6xnun/flash_media_longevity_testing_6_years_later/)

**《闪存介质长期保存测试——六年后总结》**

这篇Reddit帖子更新了一项长期现实世界实验的结果，该实验测试了断电状态下未使用的闪存介质（SD卡、U盘和固态硬盘）的数据保存能力。原始测试始于2015年，并于2018年和2024年进行了最终检查。

**主要发现：**
*   **整体耐用性**：经过约8.5年的存储，大多数测试设备保留了全部数据，未出现任何比特错误。这表明在正常的室内条件下，现代优质闪存介质可将数据保存十年或更久。
*   **故障模式**：少数发生的故障几乎完全是**设备完全失效**（即设备无法被主机检测或读取），而非因比特衰减导致的数据逐渐损坏。这表明主要风险在于控制器或电子元件的灾难性故障，而非存储单元中的电荷泄漏。
*   **值得注意的例外**：最显著的数据丢失出现在**2000年代中期生产的非常老旧、低容量（2GB）的存储卡**上，这些卡出现了严重的数据损坏。这突显出较旧、低密度的闪存技术在长期归档存储中可靠性较低。
*   **品牌相关性**：没有任何一个现代品牌（如SanDisk、三星、金士顿）持续表现优于其他品牌。可靠性与闪存技术的年代和世代关联更紧密，而非制造商。
*   **核心要点**：对于在闪存介质上归档存储重要数据，关键的**最佳实践是定期验证与更新**——每隔几年将数据复制到新设备上。这可以降低突发控制器故障的风险，在此时间尺度内，该风险比静默数据退化的威胁更大。实验得出结论：如果管理得当，闪存是适用于长期（5-10年）冷存储的可行介质。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 2 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 3 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 4 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 5 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 6 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 7 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 8 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 9 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 10 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 11 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 12 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 13 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 14 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 15 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 16 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 17 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 18 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 19 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 20 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 21 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 22 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 23 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 24 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 25 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 26 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 27 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 28 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 29 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 30 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 31 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 32 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 33 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 34 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 35 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 36 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 37 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 38 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 39 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 40 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 41 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 42 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 43 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 44 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 45 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 46 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 47 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 48 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 49 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 50 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 51 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 52 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 53 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 54 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 55 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 56 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 57 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 58 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 59 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 60 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 61 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 62 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 63 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 64 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 65 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 66 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 67 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 68 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 69 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 70 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 71 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 72 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 73 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 74 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 75 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 76 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 77 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 78 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 79 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 80 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 81 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 82 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 83 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 84 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 85 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 86 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 87 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 88 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 89 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 90 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 91 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 92 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 93 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 94 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 95 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 96 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 97 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 98 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 99 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 100 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 101 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 102 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 103 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 104 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 105 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 106 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 107 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 108 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 109 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 110 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 111 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 112 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 113 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 114 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 115 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 116 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 117 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 118 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 119 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 120 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 121 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 122 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 123 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 124 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 125 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 126 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 127 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 128 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 129 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 130 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 131 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 132 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 133 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 134 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 135 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 136 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 137 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 138 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 139 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 140 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 141 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 142 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 143 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 144 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 145 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 146 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 147 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 148 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 149 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 150 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 151 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 152 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 153 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 154 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 155 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 156 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 157 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 158 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 159 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 160 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 161 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 162 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 163 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 164 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 165 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 166 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 167 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 168 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 169 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 170 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 171 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 172 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 173 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 174 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 175 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 176 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 177 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 178 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 179 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 180 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 181 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 182 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 183 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 184 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 185 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 186 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 187 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 188 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 189 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 190 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 191 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 192 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 193 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 194 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 195 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 196 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 197 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 198 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 199 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 200 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 201 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 202 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 203 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 204 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 205 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 206 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 207 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 208 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 209 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 210 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 211 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 212 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 213 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 214 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 215 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 216 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 217 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 218 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 219 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 220 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 221 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 222 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 223 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 224 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 225 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 226 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 227 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 228 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 229 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 230 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 231 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 232 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 233 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 234 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 235 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 236 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 237 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 238 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 239 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 240 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 241 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 242 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 243 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 244 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 245 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 246 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 247 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 248 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 249 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 250 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 251 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 252 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 253 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 254 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 255 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 256 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 257 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 258 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 259 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 260 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 261 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 262 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 263 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 264 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 265 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 266 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 267 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 268 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 269 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 270 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 271 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 272 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 273 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 274 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 275 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 276 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 277 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 278 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 279 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 280 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 281 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 282 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 283 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 284 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 285 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 286 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 287 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 288 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 289 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 290 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 291 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 292 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 293 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 294 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 295 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 296 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 297 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 298 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 299 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 300 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 301 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 302 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 303 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 304 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 305 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 306 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 307 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 308 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 309 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 310 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 311 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 312 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 313 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 314 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 315 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 316 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 317 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 318 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 319 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 320 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 321 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 322 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 323 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 324 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 325 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 326 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 327 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 328 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 329 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 330 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 331 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 332 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 333 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 334 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 335 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 336 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 337 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 338 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 339 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 340 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 341 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 342 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 343 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 344 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 345 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 346 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 347 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 348 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 349 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 350 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 351 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 352 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
