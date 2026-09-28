# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-29.md)

*最后自动更新时间: 2026-09-29 04:56:05*
## 1. 以盗制盗

**原文标题**: Pirating the Pirates

**原文链接**: [https://mubi.com/en/notebook/posts/pirating-the-pirates](https://mubi.com/en/notebook/posts/pirating-the-pirates)

本文以作者与友人在温哥华用盗版碟拼凑《黄金三镖客》"原版"的经历为引，探讨了电影原作被制片厂"修复"篡改的普遍困境。从MGM将片长由161分钟扩至179分钟、重制单声道音轨，到卢卡斯推出《星球大战》"特别版"后原版几近绝迹，电影文化传承面临严峻威胁。精品厂牌如Arrow、Kino Lorber虽致力于还原导演意图，却受预算、版权及片方要求所限，常力不从心。在此背景下，一支"民间保存"运动应运而生：爱好者跨年代比对录像带、激光影碟与碟片，拼合音画，甚至以4K扫描院线胶片重建画面，制作出远超商业发行规格的"去特效版"与remux合辑。业内人Spencer Draper与Arrow的James Flower既赞赏其贡献，也坦言美国DMCA第1201条令此类行为面临联邦违法风险。爱好者社区因此自发形成"海盗守则"——须持有实体拷贝、不得牟利、不外传。文章最终指向核心张力：法律意义上的"盗版"，在保护电影文化遗产的维度上，恰恰是对肆意篡改原作的真正"文化海盗"的正当回应。

---

## 2. MicroLLM 实验室——在浏览器中体验 7 个微型大语言模型

**原文标题**: MicroLLM Lab – Try 7 tiny LLM's in the browser

**原文链接**: [https://stateofutopia.com/experiments/microllmlab/](https://stateofutopia.com/experiments/microllmlab/)

无法访问该文章链接

---

## 3. 约瑟夫·萨博镜头下的美国青少年

**原文标题**: Joseph Szabo’s pictures of American adolescents

**原文链接**: [https://www.newyorker.com/culture/photo-booth/the-teen-portraits-that-captivated-sofia-coppola](https://www.newyorker.com/culture/photo-booth/the-teen-portraits-that-captivated-sofia-coppola)

摄影师约瑟夫·萨博的新书《美国少年》收录了他于1970至80年代在纽约长岛马尔文高中拍摄的青少年黑白照片。萨博1973年起在该校教授暗房摄影，凭真诚与亲近成为学生信任的"自己人"，而非校方监视者。照片以沉稳构图和粗粝质感，捕捉少年间自然而亲密的共处——肩搭肩、耳语、席地而坐，充满未经社交媒体雕琢的松弛与自在。音乐人金·戈登称其记录了"滤镜与算法出现之前"真实的青春质感。该书由导演索菲亚·科波拉创立的Important Flowers出版社发行，科波拉早在1991年便因一张萨博作品而为其着迷，多年后促成此书问世。文中还探讨了照片中弥漫的低调性别流动感——七十年代男女皆着牛仔裤、留肩长发、衣着宽松层叠，折射出那个时代特有的自由与不羁。作者以自身七十年代末的高中经历呼应影像，感慨"在固定角落等朋友"的朴素社交安全已随时代远去。萨博的镜头没有焦虑与评判，只呈现少年在自身族群中的酷与松弛，如同一封写给消逝青春的温柔情书。

---

## 4. 劫持 PS5 的 RTMP 推流

**原文标题**: Hijacking the PS5's RTMP stream

**原文链接**: [https://yashgarg.dev/posts/hijacking-ps5-rtmp-stream/](https://yashgarg.dev/posts/hijacking-ps5-rtmp-stream/)

PS5 不支持向 Discord 共享屏幕，采集卡成本高，Remote Play 又存在输入延迟与外设切换等不便。作者发现 PS5 直播使用 RTMP 协议，且推流地址通过 DNS 动态解析而非硬编码，于是尝试将推流劫持到本机 Mac。过程中发现 Twitch 的 ingest 端点使用 TLS 加密（RTMPS），自签证书无法通过校验；YouTube 虽接受纯 RTMP 但会校验流状态，60 秒后中断。最终通过 DNS 日志定位到 contribute.live-video.net 为纯 RTMP 端点，成功绕过。实现分两步：用 dnsmasq 将相关域名解析至 Mac 局域网 IP，并通过路由器 OpenWRT 的 DHCP 选项 6 将 PS5 的 DNS 指向 Mac，无需在主机上手动配置；再用 nginx-rtmp 监听 1935 端口接收 1080p60 H.264/AAC 流，并通过 on_publish 回调触发菜单栏应用。最终用 mpv 低延迟模式拉取本地流并共享窗口至 Discord，延迟不足一秒，已稳定运行数周。整套方案零硬件成本。

---

## 5. PLC组织成立：迈向独立的公共凭证账本

**原文标题**: First Steps of the PLC Organization – Independent Public Ledger of Credentials

**原文链接**: [https://blog.plcred.org/3mwlphq42d227](https://blog.plcred.org/3mwlphq42d227)

一年前，Bluesky Social PBC宣布将推动成立独立组织来运营公共凭证公共账本（PLC）目录。如今，PLC组织正式注册成立，迈出独立运营的关键一步。PLC目录是AT Protocol的账户系统，负责收集与分发账户更新，包括用户名及PDS托管选择，所有更新均由目录不持有的密码学密钥签名，确保数据不可篡改，用户亦可随时更换密钥或自行注册新身份。PLC组织为瑞士注册协会，无股东、非营利，由会员治理。创始董事会成员包括Let's Encrypt联合创始人Richard Barnes、Google密码学与形式验证专家Thyla van der Merwe、Bluesky协议工程师Bryan Newbold、网络治理与开放标准专家Wendy Seltzer，以及密码学工程师Filippo Valsorda。目前，组织已完成章程制定、数字工具搭建及银行账户开设，由Bluesky提供初始启动资金。下一步将接管PLC目录的资产与日常运营，并制定目录管理政策。长期目标是改善用户网络身份管理工具、实现资金来源多元化，逐步发展为一个高效、可靠且可持续的运营实体。

---

## 6. Parley：支持标准IRC协议的联邦化去中心化聊天

**原文标题**: Parley: Federated, decentralised chat that speaks plain IRC

**原文链接**: [https://git.mills.io/prologic/parley](https://git.mills.io/prologic/parley)

无法访问该文章链接

---

## 7. HN发布：Vespper（YC F24）—— 业界最优Word文档MCP协议

**原文标题**: Launch HN: Vespper (YC F24) – SOTA Docx MCP

**原文链接**: [https://www.vespper.com/blog/launching-vespper-docx-mcp](https://www.vespper.com/blog/launching-vespper-docx-mcp)

AI代理编辑Word文档面临巨大挑战：.docx本质是包含多层XML文件的ZIP包，结构冗长复杂，代理被迫消耗大量上下文处理底层格式而非真正任务。现有三类方案——低层SDK（如python-docx）、MCP服务器（如SuperDoc、Adeu）、DOCX与Markdown/HTML的有损转换——在复杂场景下均力不从心。Vespper借鉴基础设施即代码（IaC）理念，让代理只需编辑语义清晰的HTML，再由专用"协调器"模型将变更自动映射回OOXML。选HTML而非Markdown，因其结构更接近OOXML且CSS可表达样式继承关系。协调器采用3–8B参数小模型，经约1.6万条自监督数据以LoRA微调，将转换框定为单次翻译任务，无需多轮推理，兼顾精度与速度。团队构建了涵盖政府、医疗、金融、法律等领域的2046个任务基准数据集，在GPT 5.6 Sol与Terra上对标包括SuperDoc、Office CLI、Anthropic DOCX Skill在内的五种方案，从内容与样式两维度评分，实测表明Vespper在复杂文档编辑任务上显著领先。

---

## 8. Claude Sonnet 5.5 发布

**原文标题**: Sonnet 5.5

**原文链接**: [https://www.anthropic.com/claude-sonnet-5-5](https://www.anthropic.com/claude-sonnet-5-5)

Claude Sonnet 5.5是Claude 5.5家族的第二个模型，定位为Opus 5.5的高效互补，擅长日常任务、代码修复及文档制作。相比Sonnet 5，速度提升30%以上，每任务成本降低最多30%。性能上，Terminal-Bench 4.0得分从10.3%跃升至70.6%，FrontierCode与CursorBench接近Opus 5.5水平，知识工作（GDPval-AA）亦大幅领先前代。编码能力尤为突出，Epic Games、Unity、CodeRabbit等企业测试表明其可处理数万行代码，迭代次数更少，工具调用更高效。Slack、Zendesk、Balyasny等用户反馈显示质量提升、响应加快、token消耗显著减少。定价与前代一致（输入$2/百万token，输出$10），但因效率提升，实际每任务成本下降约30%。安全方面，这是首个配备网络安全防护的Sonnet模型，高风险任务将自动回退至Sonnet 5；对齐测试整体良好，未见偏离用户意图之证据。Claude Haiku 5.5将于数周内加入该家族。

---

## 9. SB 923成为法律：CCPA删除权延伸至第三方数据

**原文标题**: SB 923 is Law: CCPA deletion rights now reach third-party data

**原文链接**: [https://www.getprivisy.com/blog/sb-923-ccpa-right-to-delete-signed](https://www.getprivisy.com/blog/sb-923-ccpa-right-to-delete-signed)

无法访问该文章链接

---

## 10. GrapheneOS：解决应用运行缓慢的问题

**原文标题**: GrapheneOS – When an app is slow

**原文链接**: [https://blog.wirelessmoves.com/2026/09/grapheneos-when-an-app-is-slow.html](https://blog.wirelessmoves.com/2026/09/grapheneos-when-an-app-is-slow.html)

摘要：作者使用 GrapheneOS 已满一年，对其安全与隐私功能十分满意，但在 Pixel 8 上发现 OsmAnd 地图应用运行明显慢于其他 Android 设备。虽已找到更轻量的替代品 CoMaps，但仍希望偶尔使用 OsmAnd，于是深入排查了卡顿原因。问题出在 GrapheneOS 的加固内存分配器（hardened memory allocator）——地图滚动时需持续加载和丢弃大量数据，该机制为 OsmAnd 带来了显著性能开销。好消息是，GrapheneOS 支持按应用单独关闭此项保护。操作方法：长按应用图标 → 选择"信息" → 下滑至"利用防护（Exploit Protection）" → 保持总开关开启，仅关闭"加固内存分配器"，重启 OsmAnd 后速度即可恢复正常。需注意关闭该保护会带来一定安全风险，但 OsmAnd 几乎不涉及网络加载（仅偶尔更新地图数据），作者认为在此场景下追求速度的取舍完全可以接受。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 2 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 3 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 4 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 5 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 6 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 7 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 8 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 9 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 10 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 11 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 12 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 13 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 14 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 15 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 16 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 17 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 18 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 19 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 20 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 21 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 22 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 23 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 24 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 25 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 26 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 27 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 28 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 29 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 30 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 31 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 32 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 33 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 34 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 35 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 36 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 37 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 38 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 39 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 40 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 41 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 42 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 43 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 44 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 45 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 46 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 47 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 48 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 49 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 50 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 51 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 52 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 53 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 54 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 55 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 56 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 57 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 58 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 59 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 60 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 61 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 62 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 63 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 64 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 65 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 66 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 67 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 68 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 69 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 70 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 71 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 72 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 73 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 74 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 75 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 76 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 77 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 78 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 79 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 80 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 81 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 82 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 83 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 84 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 85 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 86 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 87 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 88 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 89 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 90 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 91 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 92 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 93 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 94 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 95 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 96 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 97 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 98 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 99 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 100 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 101 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 102 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 103 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 104 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 105 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 106 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 107 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 108 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 109 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 110 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 111 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 112 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 113 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 114 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 115 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 116 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 117 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 118 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 119 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 120 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 121 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 122 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 123 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 124 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 125 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 126 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 127 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 128 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 129 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 130 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 131 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 132 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 133 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 134 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 135 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 136 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 137 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 138 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 139 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 140 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 141 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 142 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 143 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 144 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 145 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 146 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 147 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 148 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 149 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 150 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 151 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 152 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 153 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 154 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 155 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 156 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 157 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 158 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 159 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 160 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 161 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 162 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 163 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 164 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 165 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 166 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 167 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 168 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 169 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 170 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 171 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 172 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 173 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 174 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 175 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 176 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 177 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 178 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 179 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 180 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 181 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 182 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 183 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 184 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 185 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 186 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 187 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 188 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 189 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 190 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 191 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 192 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 193 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 194 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 195 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 196 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 197 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 198 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 199 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 200 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 201 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 202 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 203 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 204 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 205 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 206 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 207 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 208 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 209 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 210 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 211 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 212 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 213 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 214 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 215 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 216 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 217 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 218 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 219 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 220 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 221 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 222 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 223 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 224 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 225 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 226 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 227 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 228 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 229 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 230 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 231 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 232 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 233 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 234 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 235 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 236 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 237 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 238 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 239 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 240 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 241 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 242 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 243 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 244 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 245 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 246 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 247 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 248 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 249 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 250 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 251 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 252 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 253 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 254 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 255 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 256 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 257 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 258 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 259 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 260 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 261 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 262 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 263 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 264 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 265 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 266 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 267 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 268 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 269 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 270 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 271 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 272 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 273 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 274 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 275 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 276 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 277 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 278 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 279 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 280 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 281 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 282 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 283 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 284 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 285 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 286 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 287 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 288 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 289 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 290 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 291 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 292 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 293 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 294 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 295 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 296 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 297 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 298 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 299 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 300 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 301 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 302 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 303 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 304 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 305 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 306 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 307 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 308 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 309 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 310 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 311 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 312 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 313 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 314 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 315 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 316 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 317 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 318 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 319 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 320 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 321 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 322 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 323 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 324 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 325 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 326 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 327 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 328 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 329 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 330 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 331 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 332 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 333 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 334 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 335 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 336 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 337 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 338 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 339 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 340 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 341 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 342 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 343 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 344 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 345 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 346 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 347 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 348 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 349 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 350 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 351 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 352 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 353 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 354 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 355 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 356 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 357 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 358 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 359 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 360 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 361 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 362 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 363 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 364 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 365 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 366 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 367 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 368 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 369 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 370 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 371 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 372 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 373 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 374 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 375 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 376 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 377 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 378 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 379 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 380 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 381 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 382 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 383 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 384 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 385 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 386 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 387 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 388 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 389 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 390 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 391 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 392 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 393 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 394 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 395 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 396 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 397 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 398 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 399 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 400 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 401 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 402 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 403 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 404 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 405 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 406 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 407 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 408 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 409 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 410 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 411 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 412 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 413 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 414 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 415 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 416 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 417 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 418 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 419 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 420 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 421 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 422 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 423 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 424 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 425 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 426 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 427 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 428 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 429 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 430 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 431 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 432 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 433 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 434 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 435 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 436 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 437 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 438 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 439 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 440 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 441 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 442 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 443 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 444 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 445 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 446 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 447 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 448 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 449 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 450 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 451 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 452 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 453 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 454 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 455 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 456 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 457 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 458 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 459 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 460 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 461 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 462 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 463 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 464 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 465 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 466 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 467 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 468 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 469 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 470 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 471 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 472 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 473 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 474 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 475 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 476 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 477 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 478 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 479 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 480 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 481 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 482 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 483 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 484 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 485 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 486 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 487 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 488 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 489 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 490 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 491 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 492 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 493 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 494 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 495 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 496 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 497 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 498 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 499 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 500 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 501 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 502 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 503 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 504 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 505 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 506 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 507 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 508 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 509 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 510 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 511 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 512 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 513 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 514 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 515 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 516 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 517 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 518 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 519 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 520 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 521 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 522 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 523 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 524 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 525 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 526 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 527 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 528 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 529 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 530 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 531 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 532 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 533 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 534 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 535 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 536 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 537 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 538 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 539 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 540 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 541 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 542 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 543 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 544 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 545 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 546 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 547 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 548 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 549 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 550 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 551 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 552 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 553 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 554 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
