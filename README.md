# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-28.md)

*最后自动更新时间: 2026-08-28 04:55:51*
## 1. 通过优化1.1.1.1的DNS缓存节省100TB内存

**原文标题**: Saving 100 terabytes of memory by optimizing 1.1.1.1's DNS cache

**原文链接**: [https://blog.cloudflare.com/dns-cache-memory-optimization-1111/](https://blog.cloudflare.com/dns-cache-memory-optimization-1111/)

Cloudflare旗下1.1.1.1平台Big Pineapple存储逾2500亿条DNS缓存，每条浪费一个字节约耗250GB。团队经五项连续优化，将单条目内存从953字节降至420字节（降幅56%），全集群释放约100TB内存，相当于130台Gen 13服务器的RAM。优化要点：一是用Box<[T]>替代Vec，消除不再修改后冗余的容量字段，每条目省64字节；二是将answer、authority、additional三段独立列表合并为单列表加u16偏移，省28字节；三是对owner与查询域名相同的记录省略存储，读取时从缓存键还原；四是对记录枚举中NAPTR等大体积变体做Box堆分配，避免高频A/AAAA记录因最大变体而白占百字节；五是绕过逐字段解析，将记录直接以wire format字节写入可复用scratchspace缓冲区再一次性分配，提升内存局部性并省去序列化开销。性能不降反升：插入吞吐量提升43%（62.5万→89.3万条/秒），查找延迟降低19%（828ns→670ns）；p90进程内存从6.5GB降至3.8GB。团队计划将释放的内存重新投入扩大缓存容量以提升命中率。

---

## 2. 小模型时代已至

**原文标题**: Small Models Have Arrived

**原文链接**: [https://calv.info/small-models-have-arrived](https://calv.info/small-models-have-arrived)

作者近期深度体验gpt-5.6-luna，发现小模型在速度、智能与成本上实现突破性进展，复杂任务花费仅数美分，GLM 5.3亦跻身性能前沿。文章指出，消费级AI应用长期难以为突破的核心瓶颈是推理成本：旧模型每次任务约耗1美元，而luna将成本降至约0.1美元，使低价订阅模式终成可能。在商业侧，作者与联合创始人Peter观察到，企业日常工作中约95%属于"快速推进型"——协调、沟通、推动执行，而非极少数需要天才级突破的创新工作，这与企业招聘偏好高度吻合。作者预判，前沿大模型在工程与科研领域的需求将持续增长，但"快、省、够用"的小模型需求即将爆发，企业日常运营将大规模转向此类模型。当然，小模型落地仍需在安全机制、权限管理等方面完善基础设施。

---

## 3. 507种机械运动

**原文标题**: 507 Mechanical Movements

**原文链接**: [https://507movements.com/](https://507movements.com/)

本文介绍经典机械技术参考著作《507种机械运动》的网络动画版项目。该书由亨利·T·布朗绘制，收录了五百零七种机械动作的原始插图，是机械领域的经典参考资料。目前，制作团队正将书中内容逐一制作为网络动画，但尚未全部完成。用户可通过彩色缩略图识别已完成的动画，并利用"上一页""下一页"链接浏览各页面。制作方计划逐步补充，直至全部507个动画上线，同时鼓励读者通过Facebook"订阅"或Twitter"关注"获取最新进度通知。在动画全部完成前，读者仍可欣赏已完成的动画作品及布朗的原版插图。

---

## 4. 借助氛围编程模糊测试器发现 FFmpeg 除零漏洞

**原文标题**: We found a division by zero bug in FFmpeg with a vibecoded fuzzer

**原文链接**: [https://code.ffmpeg.org/FFmpeg/FFmpeg/issues/24290](https://code.ffmpeg.org/FFmpeg/FFmpeg/issues/24290)

摘要：文章标题表明，研究人员利用一种以"氛围编程"（vibe coding）方式编写的模糊测试器，在开源多媒体框架 FFmpeg 中发现了一起除零漏洞。然而，目标网页未能正常加载，实际抓取到的内容为其部署的 Anubis 反爬虫保护页面的提示信息。Anubis 采用类似 Hashcash 的工作量证明机制，对普通用户几乎无感，但能大幅增加大规模 AI 爬虫的累计成本，从而保护服务器不被 AI 公司批量爬取压垮。该方案被视为临时措施，未来将配合浏览器指纹识别与无头浏览器检测技术取代当前的验证页面。此外，Anubis 依赖现代 JavaScript 功能，JShelter 等安全插件可能阻挡其运行，且目前尚未提供无需 JavaScript 的替代方案。

---

## 5. 英伟达成立政治行动委员会，AI芯片巨头加码华盛顿影响力布局

**原文标题**: Nvidia Starts Pac as AI Chip Maker Builds DC Influence Force

**原文链接**: [https://news.bgov.com/bloomberg-government-news/nvidia-starts-a-pac-as-ai-chip-maker-buids-influence-force-in-dc](https://news.bgov.com/bloomberg-government-news/nvidia-starts-a-pac-as-ai-chip-maker-buids-influence-force-in-dc)

摘要：英伟达（NVIDIA）于周四正式发起员工联邦政治行动委员会（PAC），将向联邦选举候选人提供捐款，这是这家AI芯片巨头在美国首都构建政治影响力网络的最新举措。当前，美国国会与特朗普政府正就人工智能监管框架展开激烈博弈，叠加选民在中期选举前对AI技术安全与就业冲击的担忧，英伟达选择在此关键节点加大对华盛顿的政治投入。作为全球市值最高、逾5万亿美元的公司，英伟达所生产的GPU芯片是驱动AI算力的核心硬件，其立场对行业政策走向影响深远。该PAC全称为"英伟达公司雇员联邦政治行动委员会"，资金来源于符合资格员工的自愿捐赠并设有上限。此举标志着英伟达在商业竞争之外，正系统性搭建政府关系与游说体系，旨在AI立法与监管博弈中争取有利政策环境，维护自身核心商业利益。

---

## 6. Gemini Omni 1.1 Flash：赋予开发者更强的视频生成控制权

**原文标题**: Gemini Omni 1.1 Flash

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/build-with-gemini-omni-1-1-flash/](https://blog.google/innovation-and-ai/technology/developers-tools/build-with-gemini-omni-1-1-flash/)

2026年8月27日，Google DeepMind正式发布Gemini Omni 1.1 Flash，面向开发者推出生成式视频模型的重大更新，助力专业视频创作。核心功能包括：场景扩展，可分析前10秒上下文，以10秒为单位将视频延长至累计40秒，保持视觉一致与叙事连贯；首尾帧指定，用户设定起止关键帧后模型自动生成中间过渡，适用于复杂运镜与无缝循环；360p快速预览，生成速度较720p提升约60%，成本降至三分之一，便于快速迭代；4K超分辨率输出，满足专业级画质需求；多模态视频参考，可引用最长3秒视频素材以维持角色与视觉风格一致。该模型已通过Google AI Studio和Gemini Enterprise Agent Platform上线，Adobe Firefly、Figma Weave、Runway等合作伙伴亦完成集成。个人用户方面，所有Google AI Plus、Pro及Ultra订阅者可在全球范围内使用Google Flow，场景扩展功能同步上线Gemini应用。此次更新标志着生成式视频从实验探索迈向可落地的生产级工具。

---

## 7. 84天，反编译一款N64游戏

**原文标题**: Decompiling a Nintendo 64 game in 84 days

**原文链接**: [https://blog.chrislewis.au/decompiling-a-nintendo-64-game-in-84-days/](https://blog.chrislewis.au/decompiling-a-nintendo-64-game-in-84-days/)

摘要：2026年8月，作者宣布初代《Snowboard Kids》实现100%反编译，全程仅84天，仅为续作596天的约七分之一。提速得益于前序项目的经验积累、AI前沿模型与agent框架的助力，以及inspectredc、Bl00D4NGEL等社区成员的深度参与（专家介入约占匹配提交的4.8%）。最大挑战在于游戏采用SGI闭源IDO 5.3编译器，其多阶段优化管线使C代码的微小改动即可引发完全不同的寄存器分配，复杂度远超开源GCC。团队借助N64 Decomp Workbench分析编译差异，以4个Git worktree并行处理函数，并通过共享学习文件记录编译器特性形成反馈循环。模型对比中Codex/Sol xhigh表现最佳，GLM 5.2因高延迟与缩减额度遭弃用。该成果对速跑社区理解CPU路径及modding开发意义重大。后续计划包括代码文档化、重编译、跨引擎关卡移植及PlayStation版反编译。

---

## 8. Microduck——25厘米开源双足机器人

**原文标题**: Microduck

**原文链接**: [https://pollen-robotics.com/microduck/](https://pollen-robotics.com/microduck/)

摘要：Microduck是一款25厘米高的开源双足机器人机器人，内置强化学习模型，开箱即可运行，售价399美元（不含税和运费），2026年8月27日开启预订，圣诞节前发货。其核心亮点是"仿真到真实"（sim2real）技术：开发者可在MuJoCo物理引擎中训练策略，一键部署到实体机器人，再迭代优化后分享至社区。机身预装7种动作：行走、坐起、踢腿、抓取、轮滑、摔倒自起及站立待命。硬件配备15个电机、摄像头、LiDAR及两个IMU，整机重800克，支持物体拾取，板载策略循环频率为50Hz。软件全栈开源，托管于GitHub，采用Apache-2.0协议，提供模拟器与完整RL训练流程。此外提供三种加购包：双充电器套装（39美元）、开发包（含备用电机、电池、NFC标签等，119美元）和玩具配件包（含激光笔、轮滑鞋等，39美元）。机器人提供四种配色可选。社区活动依托Discord，用户可交流经验、分享自定义策略。

---

## 9. M5Stack发布PaperMono电子墨水屏开发终端

**原文标题**: M5Stack Launches PaperMono

**原文链接**: [https://shop.m5stack.com/blogs/news/m5stack-launches-papermono-a-compact-e-ink-development-terminal-for-connected-projects](https://shop.m5stack.com/blogs/news/m5stack-launches-papermono-a-compact-e-ink-development-terminal-for-connected-projects)

M5Stack正式发布PaperMono，一款基于ESP32-S3的紧凑型电子墨水屏开发终端，面向低功耗信息展示与物联网应用。产品搭载3.97英寸4级灰度电子墨水屏，配备触控输入、内置前光、NFC、LoRa、microSD存储、RTC及1150mAh电池，集显示、交互、供电与连接于一体，并支持CrossPoint Reader固件，提供灵活的阅读体验。连接方面，NFC与LoRa模块使其适用于数字门禁卡、远程消息推送、传感器状态屏等低功耗物联网场景。PaperMono提供两个版本：标准版含NFC和LoRa，适合需近场识别或长距低功耗通信的项目；Lite版去除这两项功能，专注核心电子墨水屏开发，但保留相同的显示屏、前光及ESP32-S3平台。典型应用涵盖迷你电纸书阅读器、低功耗仪表板、电子标牌、门禁终端及智能交通终端等。产品现已在M5Stack商店上线销售。

---

## 10. Suica：日本第一张IC交通卡

**原文标题**: Suica, Japan's First IC Transit Card

**原文链接**: [https://www.tokyodev.com/articles/the-story-of-suica](https://www.tokyodev.com/articles/the-story-of-suica)

Suica是JR东日本与索尼联合开发的日本首张非接触式IC交通卡，于2001年上线。其核心为索尼FeliCa芯片：卡片无电池，靠闸机电磁感应供电，200毫秒内完成认证、计费与扣款，全程无需联网。

文章回顾了开发历程：1987年国铁私有化后，东京车站仍靠人工打孔检票。索尼1988年便开始研发FeliCa，但JR东日本因技术不成熟予以拒绝，改用磁条票。索尼转赴香港，1997年助八达通成功推出，验证了可行性。此后双方携手，JR东日本要求200毫秒覆盖全流程交易，挑战更大。

测试阶段曾遇严重挫折，读卡面板错误率高达50%。工业设计师山中伸司团队发现将读卡器倾斜13.5度可顺应人体自然动作，错误率降至1%以下，此设计至今为行业标准。

Suica名取"西瓜"与日语"顺畅"的谐音，配企鹅吉祥物迅速走红，上线19天即发行百万张。随后逐步扩展至e-money消费、手机交通及自动充值功能，并推动PASMO、ICOCA等区域性IC卡普及，深刻改变了日本的出行与支付方式。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 2 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 3 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 4 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 5 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 6 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 7 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 8 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 9 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 10 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 11 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 12 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 13 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 14 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 15 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 16 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 17 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 18 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 19 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 20 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 21 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 22 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 23 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 24 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 25 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 26 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 27 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 28 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 29 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 30 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 31 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 32 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 33 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 34 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 35 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 36 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 37 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 38 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 39 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 40 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 41 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 42 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 43 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 44 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 45 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 46 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 47 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 48 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 49 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 50 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 51 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 52 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 53 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 54 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 55 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 56 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 57 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 58 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 59 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 60 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 61 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 62 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 63 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 64 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 65 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 66 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 67 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 68 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 69 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 70 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 71 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 72 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 73 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 74 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 75 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 76 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 77 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 78 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 79 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 80 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 81 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 82 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 83 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 84 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 85 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 86 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 87 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 88 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 89 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 90 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 91 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 92 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 93 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 94 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 95 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 96 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 97 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 98 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 99 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 100 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 101 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 102 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 103 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 104 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 105 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 106 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 107 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 108 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 109 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 110 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 111 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 112 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 113 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 114 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 115 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 116 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 117 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 118 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 119 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 120 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 121 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 122 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 123 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 124 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 125 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 126 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 127 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 128 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 129 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 130 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 131 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 132 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 133 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 134 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 135 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 136 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 137 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 138 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 139 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 140 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 141 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 142 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 143 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 144 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 145 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 146 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 147 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 148 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 149 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 150 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 151 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 152 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 153 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 154 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 155 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 156 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 157 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 158 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 159 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 160 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 161 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 162 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 163 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 164 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 165 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 166 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 167 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 168 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 169 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 170 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 171 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 172 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 173 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 174 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 175 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 176 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 177 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 178 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 179 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 180 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 181 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 182 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 183 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 184 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 185 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 186 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 187 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 188 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 189 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 190 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 191 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 192 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 193 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 194 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 195 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 196 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 197 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 198 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 199 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 200 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 201 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 202 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 203 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 204 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 205 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 206 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 207 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 208 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 209 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 210 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 211 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 212 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 213 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 214 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 215 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 216 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 217 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 218 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 219 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 220 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 221 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 222 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 223 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 224 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 225 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 226 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 227 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 228 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 229 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 230 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 231 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 232 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 233 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 234 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 235 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 236 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 237 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 238 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 239 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 240 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 241 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 242 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 243 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 244 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 245 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 246 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 247 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 248 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 249 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 250 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 251 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 252 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 253 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 254 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 255 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 256 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 257 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 258 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 259 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 260 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 261 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 262 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 263 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 264 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 265 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 266 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 267 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 268 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 269 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 270 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 271 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 272 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 273 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 274 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 275 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 276 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 277 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 278 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 279 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 280 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 281 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 282 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 283 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 284 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 285 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 286 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 287 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 288 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 289 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 290 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 291 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 292 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 293 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 294 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 295 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 296 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 297 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 298 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 299 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 300 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 301 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 302 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 303 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 304 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 305 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 306 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 307 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 308 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 309 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 310 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 311 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 312 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 313 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 314 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 315 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 316 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 317 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 318 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 319 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 320 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 321 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 322 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 323 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 324 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 325 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 326 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 327 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 328 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 329 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 330 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 331 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 332 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 333 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 334 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 335 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 336 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 337 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 338 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 339 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 340 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 341 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 342 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 343 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 344 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 345 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 346 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 347 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 348 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 349 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 350 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 351 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 352 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 353 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 354 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 355 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 356 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 357 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 358 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 359 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 360 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 361 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 362 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 363 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 364 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 365 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 366 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 367 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 368 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 369 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 370 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 371 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 372 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 373 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 374 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 375 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 376 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 377 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 378 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 379 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 380 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 381 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 382 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 383 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 384 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 385 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 386 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 387 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 388 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 389 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 390 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 391 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 392 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 393 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 394 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 395 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 396 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 397 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 398 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 399 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 400 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 401 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 402 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 403 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 404 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 405 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 406 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 407 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 408 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 409 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 410 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 411 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 412 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 413 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 414 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 415 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 416 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 417 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 418 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 419 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 420 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 421 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 422 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 423 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 424 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 425 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 426 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 427 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 428 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 429 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 430 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 431 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 432 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 433 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 434 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 435 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 436 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 437 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 438 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 439 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 440 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 441 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 442 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 443 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 444 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 445 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 446 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 447 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 448 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 449 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 450 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 451 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 452 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 453 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 454 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 455 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 456 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 457 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 458 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 459 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 460 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 461 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 462 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 463 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 464 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 465 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 466 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 467 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 468 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 469 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 470 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 471 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 472 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 473 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 474 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 475 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 476 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 477 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 478 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 479 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 480 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 481 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 482 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 483 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 484 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 485 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 486 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 487 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 488 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 489 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 490 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 491 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 492 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 493 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 494 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 495 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 496 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 497 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 498 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 499 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 500 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 501 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 502 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 503 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 504 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 505 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 506 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 507 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 508 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 509 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 510 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 511 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 512 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 513 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 514 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 515 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 516 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 517 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 518 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 519 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 520 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 521 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 522 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
