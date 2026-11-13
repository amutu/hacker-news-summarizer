# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-14.md)

*最后自动更新时间: 2026-11-14 04:55:51*
## 1. FM-1 工作台

**原文标题**: FM-1 Workbench

**原文链接**: [https://open.m-vave.com/fm1-workbench](https://open.m-vave.com/fm1-workbench)

FM-1 开机动画约 1 秒，按键或旋钮可跳过，不会自动播放。合成器配备 8 条轨道、6 种音源、16 个内置工程，每轨支持 16、32、48 或 64 步；常用操作为单键，完整细调置于长按菜单与网页。上手分五步：①试听——在 HOME 总览转 PRESETS 切换预设，按 PLAY 播放；②改声音——SELECT 选轨，短按 EDIT 调参数，转 ALGORITHM 或 K2 换音源；③改节奏——按 SEQ 进入，K3 选音符或鼓声部，白键开关步，OCT± 翻页；④调平衡——按 GLO 进混音，白键 1–8 静音、9–16 独奏，K1–K4 调四轨音量；⑤保存——按 SAVE 选 USER 槽确认。实机将 MASTER 置于适中位置即可发声，网页点琴键或播放即出声，无需额外开关。保存方面，实机 SAVE 直接存入设备槽；网页另提供"保存到设备""存到浏览器""导出项目文件"三种方式，分别对应设备槽、本机浏览器与电脑备份。

---

## 2. 600组实验后，我对JEPA世界模型的发现

**原文标题**: After 600 experiments, here's what I discovered about JEPA world models

**原文链接**: [https://haddyalchaer.com/jepa](https://haddyalchaer.com/jepa)

摘要：本文报告了作者在LeWM（一种JEPA世界模型）上完成的600组实验，核心发现是：模型预测精度并非主要瓶颈——其预测效果已与模拟器真实物理几乎持平，真正的瓶颈在于规划方式。作者在不重新训练的前提下提出四种改进方法：（1）将75步长程任务拆分为每25步一段的层次规划，成功率从22%升至80%；（2）构建演示数据的隐空间记忆图并添加跨演示跳跃代价，成功率从62%升至85%；（3）利用物理对称性（平移、旋转、镜像）变换已有演示片段填补记忆空白，使成功率从32%恢复至85%；（4）发现目标图像中推杆位置会严重干扰规划，仅移除该约束即可使精确物理规划的成功率提升4倍。此外，作者指出标准Push-T测试偏易，并设计了更严格的跨演示测试。当前最大挑战是当目标超出演示数据覆盖范围时，如何让模型自主提出有效子目标。

---

## 3. 逆向 Coway 空气净化器：彻底告别云端控制

**原文标题**: Reverse engineering my Coway air purifier to ditch the cloud

**原文链接**: [https://scottjg.com/posts/2026-11-11-reverse-engineering-my-coway-air-purifier-to-ditch-the-cloud/](https://scottjg.com/posts/2026-11-11-reverse-engineering-my-coway-air-purifier-to-ditch-the-cloud/)

摘要：作者将 Coway Airmega IconS 空气净化器接入 Apple Home 的"晚安"场景（关灯同时调大风量），但现有 Home Assistant 集成依赖 Coway 云端服务，频繁因服务器宕机、接口变更、账号封禁等问题中断。为彻底摆脱云端依赖，作者搭建了一套中间人（MitM）环境：用树莓派创建隔离 Wi-Fi 热点，经 nftables 将设备流量重定向至 mitmproxy，再由笔记本桥接至家庭网络。关键发现是设备启动时通过明文 HTTP 从 AWS S3 下载 Amazon 根证书，而非内置信任锚，因此无需借助 eMudhra CA 漏洞即可实施证书替换。注入自定义 CA 后，作者成功拦截设备与云端的全部通信，发现其使用 MQTT over TLS（端口 8883）下发控制指令。通过篡改 API 响应中的证书与服务器地址字段，可将设备指向自建 MQTT 服务器，完全绕开 Coway 云。AI 工具在搭建环境及解码 MQTT 消息方面发挥了关键作用。文章末尾提到设备还支持蓝牙配置，作者计划进一步逆向该流程，以彻底摆脱对 Coway App 的依赖。

---

## 4. 价值1140万美元英伟达硬件在加州至德州运输途中离奇失踪

**原文标题**: $11.4M in Nvidia hardware vanishes during shipment from CA to TX

**原文链接**: [https://www.freightwaves.com/news/11-4-million-in-nvidia-hardware-vanishes-during-shipment-from-california-to-texas](https://www.freightwaves.com/news/11-4-million-in-nvidia-hardware-vanishes-during-shipment-from-california-to-texas)

2026年8月29日，六托盘价值约1140万美元的英伟达计算机硬件在从加州奥克兰发往德州沃斯堡的途中失踪。涉事卡车挂有食品运输公司标识，提货后一路南行，途中多次长时间停靠，最终在圣贝纳迪诺县失去踪迹。奥克兰警方于9月13日确认立案，正展开重大盗窃调查，但尚未核实货物估值、公布涉案人员或逮捕信息，英伟达方面亦未回应媒体问询。此案正值全美高价值科技货运盗窃频发之际，近期已有近1.11亿美元数据中心设备被盗；另一起1200万美元案件中，嫌疑人冒充正规货运公司骗取货物，但警方尚未确认两案存在关联。2025年，北加州弗蒙特和联合城曾发生多起涉英伟达产品、总额逾750万美元的盗窃案。此外，两辆印有英伟达标识的拖车也曾被盗，实际所载却为四万磅沙子，后已在附近追回。文章强调，在高科技货运领域，承运商身份核验、运输全程可视化及沟通机制是防范货盗与货运欺诈的关键环节。

---

## 5. Perplexity Decider v1.3：训练、评估与应用场景

**原文标题**: Perplexity Decider v1.3: Training, eval, and use cases

**原文链接**: [https://www.perplexity.ai/hub/blog/perplexity-decider](https://www.perplexity.ai/hub/blog/perplexity-decider)

无法访问该文章链接

---

## 6. Show HN：等距旧金山——一幅旧金山湾区像素艺术地图

**原文标题**: Show HN: Isometric SF – A pixel-art map of the SF Bay Area

**原文链接**: [https://isometricsf.com/](https://isometricsf.com/)

Isometric SF 是由开发者 Justin Chavez（@jus10chavez）创作的像素艺术地图项目，以等距视角（isometric）呈现旧金山湾区全貌，将地理信息渲染为兼具游戏质感与真实感的像素画面。项目整合了多种开源数据：地图底图来自 OpenStreetMap（ODbL 协议），三维影像取自 Google Maps 摄影级 3D 瓦片，土地覆盖数据源自 ESA WorldCover 2021 年项目，高程数据采用 Copernicus WorldDEM-30，地名信息参考 Wikivoyage 社区贡献。瓦片素材以 CC BY-NC 4.0 协议发布，非商业场景下可免费复用，但须注明出处并链接至 isometricsf.com；商业用途需通过 X 平台联系作者获取授权。该项目以 Show HN 形式发布于 Hacker News，展示了独立开发者将开放地理数据与像素艺术创意相结合的技术成果。

---

## 7. 末日：公元2026年11月13日，星期五

**原文标题**: Doomsday: Friday, 13 November, A.D. 2026 (1960)

**原文链接**: [https://www.science.org/doi/10.1126/science.132.3436.1291](https://www.science.org/doi/10.1126/science.132.3436.1291)

无法访问该文章链接。

---

## 8. 模型现已能在权重空间传播病毒

**原文标题**: Models can now transmit viruses in weight-space

**原文链接**: [https://www.alphaxiv.org/abs/2611.weight-space-misfolding](https://www.alphaxiv.org/abs/2611.weight-space-misfolding)

无法访问该文章链接

---

## 9. Ctrl+C、Ctrl+V、Ctrl+CVE：绕过Android剪贴板读取安全措施

**原文标题**: Ctrl+C, Ctrl+v, Ctrl+cve: Bypassing Android's Clipboard Read Security Measures

**原文链接**: [https://toninoble.com/post/ctrlc-ctrlv-ctrlcve](https://toninoble.com/post/ctrlc-ctrlv-ctrlcve)

无法访问该文章链接。

---

## 10. 发现一种驱动衰老而不引发炎症的蛋白质

**原文标题**: Found: A protein that drives ageing without unleashing inflammation

**原文链接**: [https://www.nature.com/articles/d41586-026-03638-3](https://www.nature.com/articles/d41586-026-03638-3)

摘要：研究人员发现了一种驱动人体组织衰老的酶。研究表明，通过生物工程技术使小鼠缺乏该酶后，其肝脏组织的年龄相关性硬化与纤维化显著减轻，提示该酶在衰老过程中发挥关键作用。这一发现具有重要意义：靶向降低该蛋白质水平的药物有望在未来对抗衰老效应，同时不会削弱机体免疫功能。该研究发表于《免疫》（Immunity）期刊（2026年），为衰老领域提供了新的干预靶点，区别于以往以慢性炎症（"炎性衰老"）为核心的衰老理论。当前衰老研究热点还涉及脂肪细胞异质性与产热调控、伴侣动物长寿可能性、以及低温环境下列虫寿命延长等方向，显示该领域正从机制解析向跨物种应用拓展。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 2 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 3 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 4 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 5 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 6 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 7 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 8 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 9 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 10 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 11 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 12 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 13 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 14 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 15 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 16 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 17 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 18 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 19 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 20 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 21 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 22 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 23 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 24 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 25 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 26 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 27 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 28 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 29 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 30 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 31 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 32 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 33 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 34 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 35 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 36 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 37 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 38 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 39 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 40 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 41 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 42 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 43 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 44 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 45 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 46 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 47 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 48 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 49 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 50 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 51 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 52 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 53 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 54 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 55 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 56 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 57 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 58 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 59 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 60 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 61 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 62 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 63 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 64 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 65 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 66 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 67 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 68 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 69 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 70 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 71 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 72 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 73 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 74 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 75 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 76 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 77 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 78 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 79 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 80 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 81 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 82 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 83 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 84 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 85 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 86 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 87 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 88 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 89 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 90 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 91 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 92 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 93 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 94 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 95 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 96 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 97 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 98 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 99 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 100 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 101 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 102 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 103 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 104 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 105 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 106 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 107 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 108 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 109 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 110 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 111 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 112 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 113 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 114 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 115 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 116 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 117 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 118 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 119 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 120 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 121 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 122 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 123 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 124 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 125 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 126 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 127 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 128 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 129 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 130 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 131 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 132 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 133 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 134 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 135 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 136 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 137 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 138 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 139 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 140 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 141 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 142 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 143 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 144 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 145 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 146 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 147 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 148 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 149 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 150 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 151 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 152 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 153 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 154 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 155 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 156 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 157 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 158 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 159 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 160 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 161 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 162 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 163 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 164 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 165 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 166 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 167 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 168 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 169 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 170 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 171 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 172 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 173 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 174 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 175 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 176 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 177 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 178 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 179 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 180 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 181 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 182 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 183 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 184 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 185 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 186 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 187 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 188 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 189 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 190 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 191 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 192 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 193 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 194 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 195 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 196 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 197 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 198 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 199 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 200 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 201 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 202 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 203 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 204 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 205 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 206 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 207 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 208 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 209 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 210 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 211 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 212 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 213 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 214 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 215 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 216 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 217 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 218 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 219 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 220 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 221 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 222 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 223 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 224 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 225 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 226 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 227 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 228 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 229 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 230 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 231 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 232 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 233 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 234 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 235 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 236 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 237 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 238 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 239 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 240 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 241 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 242 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 243 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 244 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 245 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 246 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 247 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 248 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 249 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 250 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 251 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 252 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 253 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 254 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 255 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 256 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 257 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 258 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 259 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 260 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 261 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 262 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 263 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 264 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 265 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 266 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 267 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 268 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 269 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 270 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 271 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 272 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 273 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 274 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 275 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 276 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 277 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 278 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 279 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 280 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 281 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 282 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 283 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 284 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 285 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 286 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 287 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 288 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 289 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 290 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 291 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 292 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 293 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 294 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 295 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 296 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 297 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 298 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 299 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 300 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 301 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 302 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 303 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 304 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 305 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 306 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 307 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 308 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 309 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 310 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 311 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 312 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 313 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 314 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 315 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 316 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 317 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 318 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 319 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 320 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 321 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 322 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 323 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 324 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 325 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 326 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 327 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 328 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 329 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 330 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 331 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 332 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 333 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 334 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 335 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 336 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 337 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 338 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 339 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 340 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 341 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 342 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 343 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 344 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 345 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 346 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 347 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 348 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 349 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 350 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 351 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 352 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 353 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 354 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 355 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 356 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 357 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 358 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 359 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 360 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 361 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 362 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 363 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 364 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 365 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 366 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 367 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 368 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 369 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 370 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 371 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 372 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 373 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 374 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 375 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 376 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 377 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 378 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 379 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 380 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 381 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 382 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 383 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 384 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 385 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 386 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 387 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 388 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 389 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 390 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 391 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 392 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 393 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 394 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 395 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 396 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 397 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 398 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 399 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 400 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 401 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 402 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 403 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 404 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 405 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 406 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 407 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 408 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 409 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 410 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 411 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 412 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 413 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 414 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 415 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 416 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 417 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 418 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 419 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 420 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 421 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 422 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 423 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 424 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 425 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 426 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 427 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 428 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 429 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 430 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 431 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 432 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 433 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 434 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 435 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 436 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 437 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 438 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 439 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 440 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 441 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 442 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 443 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 444 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 445 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 446 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 447 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 448 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 449 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 450 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 451 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 452 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 453 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 454 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 455 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 456 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 457 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 458 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 459 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 460 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 461 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 462 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 463 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 464 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 465 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 466 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 467 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 468 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 469 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 470 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 471 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 472 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 473 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 474 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 475 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 476 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 477 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 478 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 479 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 480 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 481 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 482 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 483 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 484 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 485 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 486 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 487 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 488 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 489 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 490 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 491 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 492 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 493 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 494 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 495 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 496 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 497 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 498 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 499 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 500 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 501 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 502 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 503 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 504 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 505 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 506 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 507 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 508 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 509 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 510 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 511 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 512 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 513 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 514 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 515 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 516 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 517 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 518 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 519 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 520 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 521 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 522 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 523 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 524 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 525 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 526 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 527 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 528 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 529 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 530 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 531 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 532 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 533 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 534 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 535 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 536 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 537 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 538 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 539 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 540 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 541 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 542 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 543 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 544 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 545 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 546 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 547 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 548 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 549 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 550 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 551 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 552 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 553 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 554 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 555 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 556 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 557 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 558 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 559 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 560 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 561 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 562 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 563 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 564 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 565 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 566 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 567 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 568 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 569 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 570 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 571 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 572 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 573 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 574 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 575 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 576 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 577 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 578 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 579 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 580 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 581 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 582 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 583 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 584 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 585 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 586 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 587 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 588 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 589 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 590 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 591 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 592 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 593 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 594 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 595 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 596 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 597 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 598 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 599 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 600 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
