# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-31.md)

*最后自动更新时间: 2026-05-31 20:32:47*
## 1. Cloudflare Turnstile 要求可指纹识别的WebGL

**原文标题**: Cloudflare Turnstile requiring fingerprintable WebGL

**原文链接**: [https://hacktivis.me/articles/cloudflare-turnstile-webgl-fingerprinting](https://hacktivis.me/articles/cloudflare-turnstile-webgl-fingerprinting)

**摘要：**

本文报道称，Cloudflare Turnstile（一种“验证你是人类”的服务）已开始要求访问WebGL以进行设备指纹识别。该变动已实施约一周，导致基于WebKitGTK的浏览器验证失败，出现无限循环，并阻断了对许多网站的访问。

作者认为，这一WebGL要求的唯一目的是追踪，因为Cloudflare自身声明其使用浏览器指纹识别进行验证。该服务在WebKitGTK上失败，是因为WebKit长期阻止此类指纹识别技术（这一隐私立场甚至为苹果所采用）。作者怀疑Cloudflare已豁免Safari，但实质上封杀了所有其他WebKit浏览器。

文章还批评了Mozilla Firefox，指出虽然Firefox声称能防范WebGL指纹识别，但其经过处理的GPU特征仍足以泄露数据以通过Turnstile验证。即便是“严格”隐私模式也未启用`privacy.resistfingerprinting`标志，这意味着注重隐私的Firefox用户未来也可能面临问题，除非他们手动启用该设置。相比之下，WebKit和Blink等浏览器返回硬编码字符串，提供了更强的保护。

最后，博文指责Cloudflare将追踪置于隐私之上，屏蔽了使用合法隐私工具的用户。

---

## 2. 1-Bit Bonsai：面向本地设备的4B图像生成

**原文标题**: 1-Bit Bonsai Image 4B Image Generation for Local Devices

**原文链接**: [https://prismml.com/news/bonsai-image-4b](https://prismml.com/news/bonsai-image-4b)

**摘要：** PrismML 推出了 Bonsai Image 4B，这是一系列专为笔记本电脑和 iPhone 等本地设备设计的紧凑型图像生成模型。该系列基于 FLUX.2 Klein 4B 构建，包含两个变体：**1-bit**（二进制权重，变压器 0.93 GB）实现最大压缩，以及 **Ternary**（{-1,0,+1} 权重，1.21 GB）实现更优质量。两者均采用 FP16 缩放，与原始 7.75 GB 的变压器相比，内存减少了 6.4 倍至 8.3 倍。在 iPhone 17 Pro Max 上，全精度模型无法适配，但 Bonsai 可在设备上运行，生成一张 512x512 的图像仅需 9.4 秒。基准测试结果显示，三元模型保留了 FLUX.2 Klein 4B 95% 的精度，而 1-bit 版本保留了 88%。该公司认为，本地生成能够实现更快的迭代、更低的成本以及更好的隐私保护。这两个模型均将以 Apache 2.0 许可开源发布，并开放权重。

---

## 3. Dav2d

**原文标题**: Dav2d

**原文链接**: [https://jbkempf.com/blog/2026/dav2d/](https://jbkempf.com/blog/2026/dav2d/)

无法访问该文章链接。

---

## 4. 肌酸可提升大脑能量水平，并将阿尔茨海默病认知衰退速度减缓30%

**原文标题**: Creatine raise brain energy levels and slow Alzheimer's cognitive decline by 30%

**原文链接**: [https://thesciverse.org/scientists-found-that-the-creatine-supplement-millions-take-for-muscle-gains-is-quietly-raising-brain-energy-levels-and-slowing-early-alzheimers-cognitive-decline-by-30/](https://thesciverse.org/scientists-found-that-the-creatine-supplement-millions-take-for-muscle-gains-is-quietly-raising-brain-energy-levels-and-slowing-early-alzheimers-cognitive-decline-by-30/)

根据2025年的一项综合评估与临床试验，常用作肌肉补充剂的肌酸对大脑功能也有显著益处。它能穿越血脑屏障，提升神经元中的磷酸肌酸水平，为高负荷认知任务提供紧急能量储备。一项针对早期阿尔茨海默病患者的里程碑式初步试验发现，每日补充肌酸可使认知衰退速度减缓约30%，同时大脑磷酸肌酸水平出现可测量的提升。对于健康成年人，肌酸能提高处理速度与认知表现，尤其在睡眠剥夺等代谢应激状态下效果更佳。它正逐步成为针对大脑能量缺陷的抑郁症潜在辅助疗法。本文强调，这些大脑益处——包括改善记忆、注意力与抗压能力——会在常规使用中悄然显现，且与健身目标无关。

---

## 5. AI时代的原型制作速度

**原文标题**: The Speed of Prototyping in the Age of AI

**原文链接**: [https://darylcecile.net/notes/speed-of-prototyping-age-of-ai](https://darylcecile.net/notes/speed-of-prototyping-age-of-ai)

这篇文章是一位软件工程师的亲身反思，讲述了过去一年中人工智能如何改变了他们的工作流程。作者指出，他们过去的主要瓶颈——搭建项目框架和连接组件所需的时间——已基本消失，使他们能够更快地从构思转向工作原型。作者列举了最近的一些项目（包括一门系统语言、一门标记语言和一个命令行工具），这些项目放在以前可能根本不会完成或甚至不会启动。

关键要点包括：

- **思维转变**：人工智能迫使人们进行更抽象的规划——专注于系统边界、接口契约和整体规范，而不是逐行编写代码。这提升了他们向人类和模型清晰描述任务与成功标准的能力。
- **生产力提升**：在典型任务上，效率大约提高了四倍（从任务到拉取请求的时间缩短），但更重要的是，工作的*范围*扩大了——以前“想法不错，但没时间做”的项目，现在一个下午就能完成。
- **不足之处**：减少编码意味着必须刻意保持技术熟练度——通过手动实现、阅读源代码、使用调试器——以便在人工智能力不能及时自己依然有能力。
- **工作影响**：更高的效率释放了带宽，可用于自动化项目，并将内部代码空间启动时间缩短了约50%。
- **更广泛的背景**：作者对人工智能的环境与社会影响仍持谨慎态度，但就目前而言，这种速度和探索性确实令人感到有趣。他们推荐阅读麦克·麦奎德、卡西迪·威廉姆斯和西蒙·威利森的类似反思。

---

## 6. Codex 刚刚找到了我电脑上没有 sudo 的“变通方法”。

**原文标题**: Codex just found a "workaround" of not having sudo on my PC

**原文链接**: [https://twitter.com/i/status/2060746160558543217](https://twitter.com/i/status/2060746160558543217)

**摘要：**

这不是一篇文章，而是一张Twitter/X错误页面的截图，并非关于sudo变通方法的发现。该页面显示一条消息，称用户浏览器禁用了JavaScript，导致无法访问X（原Twitter）。页面提示用户启用JavaScript或切换到支持的浏览器以继续使用该平台。页面还包含标准页脚链接，指向帮助、服务条款、隐私、Cookie政策及广告信息，并标注© 2026。标题“Codex刚刚发现了一个‘变通方法’……”似乎是一个具有误导性的标题或评论，与所显示的实际内容（仅为技术性访问错误）无关。

---

## 7. 蓝牙名称引发警报，美联航767航班返回纽瓦克

**原文标题**: United Airlines 767 returns to Newark after Bluetooth name sparks alert

**原文链接**: [https://simpleflying.com/united-airlines-767-returns-newark-bluetooth-name-alert/](https://simpleflying.com/united-airlines-767-returns-newark-bluetooth-name-alert/)

美国联合航空一架波音767-400ER客机（UA236航班）原计划从纽瓦克飞往西班牙马略卡岛帕尔马，2026年5月30日在大西洋中部上空被迫返航，原因是一名乘客的蓝牙扬声器名称触发了安全警报。该设备被命名为“炸弹”，引发了炸弹威胁应急响应。

起飞约60分钟后，机组人员宣布乘客必须关闭蓝牙，并发出最后一分钟警告。有两台设备仍处于激活状态，导致飞机应答机编码设置为7700并折返纽瓦克，于当晚8点50分降落。录音显示，地面团队报告该设备名称为“四个字母的单词”，随后确认为“炸弹”。

飞机降落后，乘客被当地及联邦执法人员接走，被告知将所有随身物品留在机上，仅携带护照和手机。经过安全排查后，乘客于次日凌晨2点30分左右重新登上一架替代航班——即同一架飞机——并再次通过了美国运输安全管理局安检。此次事故之前，美联航航班曾发生多起类似安全恐慌事件，包括一个名为“自由巴勒斯坦，去死吧犹太复国主义者”的WiFi热点，以及近期因炸弹威胁导致疏散的事件，凸显出此类威胁所受的高度重视。

---

## 8. 若远程办公而非人工智能导致初级员工招聘疲软，那又怎样？

**原文标题**: What if remote working, not AI, is to blame for weak junior hiring?

**原文链接**: [https://www.ft.com/content/2205e2d0-50dc-4e80-9bf7-78d0272276c0](https://www.ft.com/content/2205e2d0-50dc-4e80-9bf7-78d0272276c0)

无法访问文章链接。

---

## 9. 回复：[PATCH] OOM_pardon，即“别杀掉我的xlock”

**原文标题**: Re: [PATCH] OOM_pardon, a.k.a. don't kill my xlock

**原文链接**: [https://lwn.net/Articles/104185/](https://lwn.net/Articles/104185/)

本文是对Linux内核邮件列表中关于“OOM_pardon”系统控制提案的讽刺回应。该提案允许用户指定某些进程（如xlock）永远不应被内存不足（OOM）机制杀死。作者安德里斯·布劳威尔以一家航空公司的寓言作为回应。

故事中，航空公司为省钱而减少燃油携带量，却偶尔导致飞行途中燃油耗尽。工程师非但不去解决根本问题，反而研发出一种“燃油耗尽”（OOF）机制：通过弹射乘客来减轻飞机重量。围绕如何“恰当”选择牺牲者，他们制定了详尽的理论——体重、年龄、财富，或头等舱乘客及飞行员可获豁免。

故事的讽刺点在于：当这个弹射机制被创造出来后，即便在没有燃油短缺的情况下，它也会莫名启动失灵。这恰如内核的OOM杀手：与其修复内存管理避免超额承诺，人们却专注于选择杀死哪个进程，而该机制本身还会无故滥杀进程。布劳威尔的类比批判了这种治标不治本的做法。

---

## 10. 可重新启动序列

**原文标题**: Restartable Sequences

**原文链接**: [https://justine.lol/rseq/](https://justine.lol/rseq/)

本文讨论了**可重启序列（rseq）**——Linux内核4.18版本引入的一项功能，它能在无需锁或原子操作的情况下实现超快速、线程安全的数据结构。

**工作原理：** rseq允许线程向内核注册一小段汇编指令序列。如果内核在线程执行中途将其抢占，它会自动跳转至中止处理程序以重试操作。这种双向通信通过共享内存（TLS）实现，效率极高。

**性能提升：** 作者展示了多核系统上的巨大加速效果：
- 在96核Threadripper处理器上，rseq使`malloc()`比传统的互斥锁分片**快43倍**。
- 在命中计数器基准测试中，rseq实现了**每秒2740亿次操作**，而使用互斥锁仅为每秒3000万次——CPU时间上快了近**10000倍**。
- 在128核ARM Ampere CPU上，rseq有效将3GHz处理器提升至33GHz等效性能。

**关键要点：**
- rseq目前需要手写汇编且仅适用于现代Linux，但作者预测未来操作系统和语言将提供支持。
- 传统方法（互斥锁、原子操作、CPU分片）存在缓存竞争、内核开销或可移植性不足的问题。
- rseq提供了最佳平衡：完整的操作系统调度抽象与近乎零开销（CPU ID查找仅1纳秒，而系统调用需1微秒）。
- 当前采用者包括tcmalloc、jemalloc、glibc以及作者自己的Cosmopolitan libc。

文章将rseq定位为利用现代多核处理器的关键技术，声称未使用此类硬件的开发者可能错失10倍性能优化机会。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 2 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 3 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 4 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 5 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 6 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 7 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 8 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 9 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 10 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 11 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 12 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 13 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 14 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 15 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 16 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 17 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 18 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 19 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 20 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 21 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 22 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 23 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 24 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 25 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 26 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 27 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 28 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 29 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 30 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 31 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 32 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 33 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 34 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 35 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 36 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 37 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 38 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 39 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 40 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 41 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 42 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 43 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 44 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 45 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 46 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 47 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 48 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 49 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 50 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 51 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 52 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 53 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 54 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 55 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 56 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 57 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 58 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 59 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 60 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 61 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 62 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 63 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 64 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 65 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 66 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 67 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 68 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 69 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 70 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 71 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 72 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 73 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 74 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 75 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 76 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 77 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 78 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 79 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 80 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 81 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 82 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 83 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 84 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 85 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 86 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 87 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 88 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 89 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 90 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 91 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 92 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 93 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 94 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 95 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 96 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 97 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 98 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 99 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 100 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 101 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 102 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 103 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 104 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 105 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 106 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 107 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 108 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 109 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 110 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 111 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 112 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 113 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 114 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 115 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 116 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 117 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 118 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 119 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 120 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 121 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 122 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 123 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 124 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 125 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 126 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 127 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 128 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 129 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 130 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 131 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 132 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 133 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 134 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 135 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 136 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 137 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 138 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 139 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 140 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 141 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 142 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 143 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 144 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 145 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 146 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 147 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 148 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 149 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 150 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 151 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 152 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 153 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 154 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 155 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 156 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 157 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 158 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 159 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 160 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 161 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 162 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 163 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 164 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 165 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 166 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 167 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 168 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 169 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 170 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 171 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 172 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 173 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 174 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 175 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 176 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 177 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 178 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 179 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 180 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 181 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 182 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 183 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 184 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 185 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 186 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 187 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 188 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 189 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 190 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 191 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 192 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 193 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 194 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 195 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 196 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 197 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 198 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 199 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 200 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 201 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 202 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 203 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 204 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 205 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 206 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 207 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 208 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 209 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 210 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 211 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 212 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 213 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 214 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 215 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 216 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 217 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 218 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 219 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 220 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 221 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 222 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 223 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 224 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 225 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 226 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 227 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 228 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 229 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 230 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 231 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 232 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 233 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 234 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 235 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 236 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 237 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 238 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 239 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 240 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 241 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 242 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 243 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 244 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 245 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 246 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 247 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 248 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 249 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 250 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 251 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 252 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 253 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 254 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 255 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 256 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 257 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 258 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 259 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 260 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 261 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 262 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 263 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 264 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 265 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 266 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 267 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 268 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 269 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 270 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 271 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 272 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 273 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 274 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 275 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 276 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 277 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 278 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 279 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 280 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 281 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 282 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 283 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 284 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 285 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 286 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 287 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 288 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 289 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 290 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 291 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 292 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 293 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 294 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 295 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 296 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 297 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 298 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 299 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 300 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 301 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 302 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 303 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 304 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 305 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 306 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 307 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 308 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 309 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 310 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 311 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 312 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 313 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 314 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 315 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 316 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 317 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 318 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 319 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 320 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 321 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 322 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 323 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 324 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 325 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 326 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 327 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 328 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 329 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 330 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 331 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 332 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 333 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 334 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 335 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 336 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 337 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 338 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 339 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 340 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 341 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 342 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 343 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 344 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 345 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 346 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 347 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 348 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 349 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 350 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 351 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 352 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 353 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 354 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 355 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 356 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 357 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 358 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 359 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 360 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 361 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 362 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 363 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 364 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 365 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 366 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 367 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 368 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 369 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 370 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 371 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 372 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 373 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 374 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 375 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 376 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 377 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 378 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 379 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 380 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 381 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 382 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 383 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 384 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 385 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 386 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 387 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 388 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 389 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 390 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 391 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 392 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 393 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 394 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 395 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 396 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 397 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 398 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 399 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 400 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 401 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 402 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 403 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 404 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 405 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 406 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 407 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 408 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 409 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 410 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 411 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 412 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 413 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 414 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 415 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 416 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 417 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 418 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 419 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 420 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 421 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 422 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 423 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 424 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 425 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 426 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 427 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 428 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 429 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 430 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 431 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 432 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 433 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 434 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 435 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
