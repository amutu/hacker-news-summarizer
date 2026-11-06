# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-07.md)

*最后自动更新时间: 2026-11-07 04:57:36*
## 1. Firecracker 虚拟机逃逸：PwnEscape 第二部分

**原文标题**: Firecracker VM Escape: PwnEscape Part 2

**原文链接**: [https://pwn.ai/blog/firecracker-escape](https://pwn.ai/blog/firecracker-escape)

摘要：本文演示CVE-2026-9999利用链的第二阶段：在Firecracker microVM内利用已获取的宿主机物理内存访问权限完成逃逸，获得宿主机root代码执行。攻击路径分四步：EPT解析器通过guest页中的nonce在宿主机物理内存中定位该页HPA；反向映射宿主机页表，由HPA回溯至Firecracker进程页表根PGD；在进程映射中识别ELF镜像并计算ASLR偏移绕过随机化；最后搜索活跃vCPU线程的pt_regs帧，以 syscall 号、KVM_RUN 请求、文件描述符及指令指针等多重校验锁定目标。篡改该帧后，guest 执行一次串口写触发 vCPU 退出 KVM_RUN，内核恢复被改寄存器，Firecracker 线程调用 write(2,"N8V23M2\n",8) 将标记写入 stderr，再经 xor eax,eax;ret 清零返回值并跳回原始 ioctl 续点。随后恢复三处临时栈字，Firecracker 持续运行、SSH 可达、内核无报错。目标为 v1.16.1 以 root 直接运行且未启用 jailer；生产环境若使用 namespace 与 seccomp 需另行评估逃逸后可用权限。

---

## 2. 让 Jev 向 Opus 求助：以 1/4 成本实现 Opus 级准确率

**原文标题**: A Jev that can ask Opus for help gives Opus accuracy at 4x lower cost

**原文链接**: [https://hightouch.com/blog/llm-judges-identity-resolution](https://hightouch.com/blog/llm-judges-identity-resolution)

摘要：本文测试了决策模型 Jev 和 Luna 在身份解析（IDR）过度合并检测任务上的表现，并与前沿模型 Opus 5.5 等对比。在基准测试中，Jev 和 Luna 单独准确率分别为 95.7% 和 97.3%，略逊于 Opus 的 99.0%，但成本仅为后者的 1/38 至 1/77，速度快 10 倍以上。关键发现是：Luna 裸准确率虽高，但置信度严重过度自信，在困难样本上急剧下降；Jev 虽裸分较低，但置信度校准良好，在不确定时主动"承认不知道"。基于此，作者构建了混合架构——Jev 先判定，将置信度落在 30%–90% 区间的案例转交 Opus 复核。在常规测试中，混合 Jev 达到 98.8% 准确率，成本仅 $0.88/千条，为 Opus 单独运行（$3.86）的四分之一；在更难的测试中仍达 95.3%，接近 Opus 单独的 95.1%。混合 Luna 因过度自信无法有效分流，表现明显落后。结论：置信度校准比裸准确率更决定混合架构上限；Jev 的混合方案能随数据难度自动弹性伸缩成本，在保持前沿准确率的同时大幅降低开销，该思路可推广至更广的评估场景。

---

## 3. 美国联邦航空管理局宣布将于2028年前从空中交通管制系统中全面淘汰软盘

**原文标题**: US FAA says it will phase out floppy disks from air traffic control by 2028

**原文链接**: [https://www.reuters.com/world/us/us-faa-says-it-will-phase-out-floppy-disks-air-traffic-control-by-2028-2026-11-05/](https://www.reuters.com/world/us/us-faa-says-it-will-phase-out-floppy-disks-air-traffic-control-by-2028-2026-11-05/)

摘要：美国联邦航空管理局（FAA）宣布，计划于2028年前将其空中交通管制（ATC）系统中仍在使用中的3.5英寸软盘彻底淘汰，替换为现代化数字存储方案。此前有报道披露，FAA下属的多个空中交通管制中心仍依赖软盘备份关键操作程序和指令文件，这一做法在数字化时代引发广泛关注与质疑。软盘作为上世纪80年代兴起的存储介质，容量仅1.44MB，早已在民间和大多数行业领域被U盘、云端存储等取代，但FAA空管系统因设备老化、软件兼容性要求高、系统升级周期漫长等原因，长期沿用该介质。FAA表示，淘汰软盘是整体空管系统现代化升级的一部分，新方案将采用更安全、可靠、高效的数字存储与备份技术，以提升空管运行的安全性与运维保障能力。整个过渡期预计持续至2028年，期间将分阶段在各管制中心完成替换与测试。此事也再次引发公众对美国政府关键基础设施信息化滞后问题的讨论。

---

## 4. 日本乡村空心化，野生动物亦随之消退

**原文标题**: As the Japanese Countryside Empties Out, Wildlife Is Disappearing

**原文链接**: [https://e360.yale.edu/digest/japan-depopulation-biodiversity](https://e360.yale.edu/digest/japan-depopulation-biodiversity)

日本农村人口持续减少，但令人意外的是，废弃农区中的野生动物非但没有回归，反而随之消失。研究者指出，日本山区传统小农场形成了稻田、牧场与林地交错的"马赛克景观"，人类砍伐薪柴、积肥、开垦稻田等日常劳作，实际上为兰花、杜鹃、稻鱼和萤火虫等物种创造了栖息空间，许多物种与人类活动共同演化。2025年一项日本研究显示，人口稳定区域的生物多样性保持稳定，而人口流失地区，蝴蝶、萤火虫、蛙类、鸟类及原生植物数量均显著下降。这一趋势不限于日本，西班牙、中国等国的农村同样面临空心化难题，人工塑造的景观被自然重新接管，却往往危及依赖人类管理的物种。欧洲博登湖地区研究也表明，中世纪小农经济时期的植物多样性达到峰值，超越此前密林与后来工业化农业两个阶段。研究者强调，现代生态保护的关键启示在于：小规模多样化农场能够兼顾生物多样性提升与粮食生产，"发展与保护"并非不可兼顾的单选题。

---

## 5. 特斯拉将于2027年停产赛博皮卡Cybertruck

**原文标题**: Tesla to wind down Cybertruck production

**原文链接**: [https://www.nbcnews.com/tech/tech-news/tesla-wind-cybertruck-production-years-poor-sales-markets-rcna607817](https://www.nbcnews.com/tech/tech-news/tesla-wind-cybertruck-production-years-poor-sales-markets-rcna607817)

2026年11月6日，特斯拉CEO马斯克宣布，公司将于2027年中在得州奥斯汀超级工厂逐步停产Cybertruck，以腾出产能量产全新Cybercab无人出租车，推动特斯拉向AI与机器人公司转型。Cybertruck自2019年亮相以来争议不断，其棱角分明的不锈钢车身遭皮卡爱好者嘲讽，欧洲等市场因行人碰撞安全法规无法获批，仅能在少数市场销售。2023年底交付后销量持续低迷，去年美国仅售20,237辆，较2024年的38,965辆下降48%，远未达马斯克此前25万辆的年销预期。不过analyst指出，福特等品牌电动皮卡在美国同样遇冷，电动皮卡整体需求有限，Cybertruck的困境更多源于其特殊设计在全球合规层面的硬伤。马斯克仍将Cybertruck称为"特斯拉造过的最好的车"，将停产形容为"一个时代的终结"；首席工程师则表示相关技术将延续至Cybercab。目前特斯拉已在奥斯汀小范围推出Cybercab付费试乘，但仍需回应美国公路安全管理部门关于自动驾驶合规认证的质询。

---

## 6. UEFI 裸机编程入门

**原文标题**: First steps in bare-metal programming using UEFI

**原文链接**: [https://kevinboone.me/efitest_index.html](https://kevinboone.me/efitest_index.html)

本文是一个系列教程的索引页，介绍如何在 Linux 工作站上为搭载 UEFI 固件的 PC 开发裸机应用程序。系列文章面向有经验的 Linux 开发者，无需 UEFI 先修知识，内容涵盖开发所需软件工具、编译与链接方法、可启动磁盘的创建以及基本文件管理。作者强调各篇须按顺序阅读，因每篇均依赖前文内容。系列共五部分：第一部分讲解编译与链接；第二部分介绍 EFI 系统分区；第三部分说明如何制作 DVD 或 U 盘启动镜像；第四部分为一则务实的补充说明；第五部分演示如何通过 Simple File 协议进行文件操作。此外，页面还提供了 Webmention 机制，允许其他网站在引用本系列文章时向作者发送通知。

---

## 7. 我们发现1.5万个网站已被感染，但该如何通知它们？

**原文标题**: We know 15k websites are infected. how do we tell them?

**原文链接**: [https://scotthelme.co.uk/we-know-15-579-websites-are-infected-how-do-we-tell-them/](https://scotthelme.co.uk/we-know-15-579-websites-are-infected-how-do-we-tell-them/)

Report URI 团队已确认 15,579 个网站正遭受恶意 JavaScript 攻击，涵盖信用卡窃取（Magecart）、ClickFix 社会工程、设备漏洞利用（如 DarkSword/Coruna 间谍软件）及恶意重定向等类型，受影响网站月总访问量保守估计超过 1.35 亿次。攻击入侵途径主要包括：直接入侵（如 WordPress 漏洞）、供应链脚本投毒、XSS 注入，以及新出现的"DeadTag"手法——攻击者购买已被网站引用的过期域名并复活植入恶意代码。核心困境在于：团队识别感染的速度远快于通知能力，受感染网站缺乏公开联系方式（security.txt 普及率低），大量邮件和消息石沉大海，难以规模化实施负责任披露。目前仅能小范围联络高影响网站，团队现寻求两方面帮助：一是邀请欧洲各国 NCSC/CERT 机构（报告所在区域多为此类）获取受影响域名清单并协助通知相关组织；二是面向有需求的企业提供商业威胁情报订阅。作者坦言尚无明确解决方案，呼吁社区提供建议，将手中情报转化为切实的防护行动。

---

## 8. Blender 界面与运行时：性能远超 GPUI

**原文标题**: Blender's UI and Runtime: Much Faster Than GPUI

**原文链接**: [https://github.com/ppmpreetham/BUI](https://github.com/ppmpreetham/BUI)

BUI 将 Blender 的界面系统解耦为独立 UI 库，核心是以 C 编写的轻量运行时，承载组件树并完成布局、输入与绘制，支持 CPU/GPU 双渲染路径。它通过薄层绑定覆盖 Python（tkinter、Qt 语法、45 个 Blender 原生组件）、Rust（HTML+CSS+Tailwind、gpui 语法）、JavaScript/React 19.3 与 Svelte 5、Dear ImGui 及 C/C++，所有语言共享同一运行时。交互层面完整复刻 Blender 手感：数字字段隐藏光标连续拖拽、表达式求值（如 2*pi）、菜单模糊搜索、Ctrl+Z 全局撤销等。性能上采用损伤渲染，空闲时零 CPU 占用；GPU 模式每帧 CPU 消耗比 gpui 低 2–4 倍，首帧仅约 5 毫秒。图像系统统一支持 PNG、JPEG、WebP、SVG 等格式并支持离屏缩放解码；视频经系统解码器在 GPU 纹理上播放，1080p 仅占 0.99 毫秒渲染时间。Rust 端完整渲染 113 种 HTML 元素与现代 CSS，无需浏览器或 WebView；npm 可构建 6.3–6.9 MB 独立可执行文件，首帧约 70 毫秒。BUI 跨 Windows、Linux（X11/Wayland）与 macOS，全平台 HiDPI 适配，并支持无头测试模式。安装极简：Python 一条 pip，Rust 一条 cargo，无需预装 Blender。

---

## 9. 我收到过的第一份也是最后一份电报——来自丽贝卡·威斯特

**原文标题**: My first and last telegram was from Rebecca West

**原文链接**: [https://thelampmagazine.com/blog/rebecca-wests-nightingale](https://thelampmagazine.com/blog/rebecca-wests-nightingale)

作者尼科·罗文在乔治城公共图书馆旧书摊购得丽贝卡·威斯特游记《黑羊与灰鹰》的平装本，书中夹着一份发往记者安·科特雷尔·弗里的电报，发件人为威斯特本人（本名西西里·安德鲁斯），内容不过一句午餐邀约。电报背后却藏着一段跨越数十年的往事。威斯特在书中描写了萨拉热窝一对犹太歌手夫妇，妻子因歌声动人被称为"Bulbul"（夜莺）。二战中该地区犹太人几近灭绝，Bulbul却幸免于难。1947年弗里在西奈半岛难民营中再遇Bulbul，其歌声令她终生难忘；1949年她发电报请威斯特为Bulbul在英格兰谋一教职。威斯特召弗里到白金汉郡庄园午宴，态度却冷淡疏离，事后亦无任何回音。最终威斯特确已动用关系帮Bulbul获聘，却未提及弗里的功劳。弗里一生未释然，将电报夹入书中文页，2004年辞世后电报沉睡逾二十年，直至罗文偶然翻出。遗憾的是，除威斯特笔下与弗里追忆外，Bulbul的生平已无处可考。文章以一句法语收束：债已清偿，一切扫去，一切遗忘。

---

## 10. Memorilla：面向大语言模型的潜在语义记忆

**原文标题**: Memorilla: Latent Semantic Memory for LLMs

**原文链接**: [https://arxiv.org/abs/2610.21375](https://arxiv.org/abs/2610.21375)

摘要：记忆使大语言模型能够利用参数之外的信息（如历史对话、长文档、智能体先前行为），但冻结模型仅能通过上下文窗口获取这些信息，而现有系统在保持上下文简短的同时检索并整合相关内容方面仍面临难题。本文提出Memorilla，一种将整个文档集合的信息压缩为固定数量查询相关"记忆token"的记忆系统。Memorilla先将文档编码为可复用嵌入，再学习将查询特定信息注入LLM的输入嵌入空间。仅用16个记忆token，该系统在个人化、长文档问答和知识密集型问答等8个基准中的5个上超越了Mem0和MemoRAG等基线。在FactKG基准上，其准确率达84.33%，优于全上下文推理的80.43%，且token用量减少108倍。此外，Memorilla可支持智能体系统的持续学习：在TextWorld环境中，随交互轮次增长，该系统有效抑制了智能体重复探索已访问区域的行为，将平均成功率从18.6%提升至24.2%。总体而言，Memorilla助力冻结LLM在长程交互中高效积累与运用知识，推动了持续学习AI系统的发展。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 2 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 3 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 4 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 5 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 6 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 7 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 8 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 9 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 10 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 11 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 12 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 13 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 14 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 15 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 16 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 17 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 18 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 19 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 20 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 21 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 22 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 23 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 24 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 25 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 26 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 27 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 28 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 29 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 30 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 31 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 32 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 33 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 34 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 35 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 36 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 37 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 38 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 39 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 40 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 41 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 42 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 43 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 44 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 45 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 46 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 47 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 48 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 49 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 50 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 51 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 52 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 53 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 54 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 55 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 56 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 57 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 58 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 59 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 60 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 61 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 62 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 63 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 64 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 65 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 66 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 67 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 68 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 69 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 70 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 71 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 72 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 73 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 74 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 75 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 76 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 77 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 78 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 79 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 80 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 81 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 82 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 83 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 84 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 85 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 86 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 87 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 88 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 89 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 90 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 91 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 92 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 93 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 94 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 95 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 96 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 97 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 98 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 99 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 100 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 101 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 102 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 103 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 104 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 105 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 106 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 107 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 108 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 109 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 110 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 111 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 112 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 113 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 114 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 115 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 116 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 117 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 118 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 119 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 120 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 121 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 122 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 123 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 124 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 125 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 126 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 127 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 128 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 129 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 130 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 131 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 132 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 133 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 134 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 135 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 136 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 137 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 138 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 139 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 140 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 141 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 142 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 143 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 144 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 145 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 146 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 147 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 148 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 149 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 150 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 151 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 152 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 153 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 154 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 155 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 156 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 157 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 158 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 159 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 160 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 161 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 162 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 163 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 164 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 165 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 166 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 167 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 168 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 169 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 170 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 171 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 172 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 173 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 174 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 175 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 176 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 177 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 178 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 179 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 180 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 181 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 182 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 183 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 184 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 185 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 186 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 187 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 188 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 189 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 190 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 191 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 192 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 193 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 194 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 195 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 196 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 197 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 198 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 199 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 200 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 201 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 202 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 203 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 204 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 205 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 206 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 207 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 208 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 209 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 210 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 211 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 212 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 213 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 214 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 215 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 216 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 217 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 218 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 219 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 220 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 221 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 222 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 223 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 224 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 225 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 226 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 227 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 228 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 229 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 230 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 231 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 232 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 233 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 234 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 235 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 236 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 237 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 238 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 239 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 240 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 241 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 242 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 243 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 244 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 245 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 246 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 247 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 248 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 249 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 250 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 251 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 252 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 253 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 254 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 255 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 256 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 257 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 258 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 259 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 260 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 261 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 262 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 263 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 264 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 265 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 266 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 267 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 268 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 269 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 270 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 271 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 272 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 273 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 274 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 275 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 276 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 277 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 278 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 279 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 280 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 281 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 282 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 283 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 284 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 285 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 286 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 287 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 288 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 289 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 290 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 291 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 292 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 293 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 294 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 295 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 296 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 297 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 298 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 299 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 300 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 301 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 302 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 303 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 304 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 305 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 306 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 307 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 308 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 309 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 310 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 311 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 312 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 313 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 314 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 315 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 316 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 317 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 318 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 319 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 320 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 321 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 322 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 323 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 324 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 325 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 326 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 327 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 328 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 329 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 330 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 331 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 332 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 333 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 334 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 335 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 336 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 337 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 338 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 339 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 340 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 341 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 342 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 343 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 344 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 345 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 346 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 347 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 348 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 349 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 350 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 351 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 352 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 353 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 354 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 355 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 356 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 357 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 358 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 359 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 360 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 361 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 362 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 363 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 364 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 365 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 366 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 367 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 368 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 369 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 370 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 371 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 372 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 373 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 374 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 375 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 376 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 377 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 378 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 379 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 380 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 381 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 382 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 383 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 384 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 385 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 386 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 387 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 388 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 389 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 390 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 391 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 392 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 393 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 394 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 395 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 396 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 397 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 398 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 399 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 400 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 401 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 402 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 403 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 404 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 405 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 406 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 407 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 408 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 409 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 410 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 411 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 412 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 413 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 414 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 415 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 416 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 417 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 418 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 419 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 420 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 421 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 422 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 423 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 424 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 425 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 426 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 427 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 428 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 429 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 430 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 431 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 432 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 433 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 434 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 435 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 436 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 437 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 438 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 439 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 440 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 441 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 442 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 443 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 444 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 445 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 446 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 447 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 448 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 449 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 450 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 451 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 452 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 453 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 454 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 455 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 456 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 457 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 458 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 459 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 460 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 461 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 462 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 463 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 464 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 465 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 466 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 467 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 468 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 469 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 470 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 471 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 472 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 473 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 474 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 475 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 476 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 477 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 478 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 479 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 480 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 481 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 482 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 483 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 484 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 485 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 486 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 487 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 488 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 489 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 490 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 491 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 492 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 493 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 494 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 495 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 496 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 497 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 498 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 499 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 500 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 501 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 502 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 503 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 504 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 505 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 506 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 507 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 508 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 509 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 510 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 511 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 512 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 513 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 514 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 515 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 516 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 517 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 518 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 519 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 520 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 521 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 522 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 523 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 524 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 525 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 526 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 527 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 528 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 529 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 530 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 531 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 532 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 533 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 534 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 535 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 536 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 537 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 538 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 539 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 540 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 541 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 542 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 543 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 544 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 545 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 546 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 547 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 548 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 549 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 550 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 551 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 552 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 553 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 554 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 555 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 556 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 557 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 558 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 559 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 560 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 561 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 562 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 563 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 564 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 565 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 566 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 567 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 568 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 569 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 570 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 571 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 572 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 573 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 574 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 575 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 576 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 577 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 578 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 579 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 580 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 581 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 582 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 583 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 584 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 585 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 586 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 587 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 588 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 589 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 590 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 591 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 592 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 593 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
