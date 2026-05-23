# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-23.md)

*最后自动更新时间: 2026-05-23 20:33:00*
## 1. 是时候聊聊我的写作电脑了

**原文标题**: It's time to talk about my writerdeck

**原文链接**: [https://veronicaexplains.net/my-first-writerdeck/](https://veronicaexplains.net/my-first-writerdeck/)

本文介绍了如何将旧笔记本电脑改装成专用的“WriterDeck”——一款极简的离线写作设备，并采用Debian Linux系统实现。作者出于注意力问题和网络干扰的考虑，将一台已使用六年、配备优质键盘和哑光屏幕的System76 Galago Pro笔记本重新利用起来。

关键步骤包括：
- 以文本模式安装Debian，为简化操作跳过桌面环境和全盘加密。
- 安装时将root密码留空，以设置sudo用户。
- 将默认网络栈替换为`network-manager`，以便通过`nm-tui`更便捷地连接Wi-Fi。
- 安装`neovim`（替代nano）以及来自backports的`kmscon`，以获得可伸缩终端。
- 配置`tmux`并应用自定义设置：顶部状态栏、亮度控制（通过`light`绑定至F8/F9键）和电池电量显示（使用`acpi`）。
- 添加`vim-vimwiki`用于笔记记录与写作整理。
- 安装`syncthing`将WriterDeck的vimwiki文件夹同步至服务器，避免私人笔记丢失。
- 通过kmscon的systemd覆盖实现tty自动登录，并在`.bashrc`中设置自动启动tmux和vimwiki。

最终打造出一个免打扰的写作环境，开机后直接进入带有neovim的tmux界面。作者已使用该设备撰写博客文章和脚本，并强调其目标是在无浏览器或通知干扰的情况下，实现有目的、专注的写作。

---

## 2. 关于<dl>（2021）

**原文标题**: On The <dl> (2021)

**原文链接**: [https://benmyers.dev/blog/on-the-dl/](https://benmyers.dev/blog/on-the-dl/)

**《论<dl>（2021）》摘要**

本文倡导使用未被充分利用的HTML `<dl>`（描述列表）元素，该元素能够语义化地标记名称-值对。它由三个元素组成：`<dl>`（列表）、`<dt>`（术语/名称）和`<dd>`（详情/值）。一个`<dt>`可对应多个`<dd>`，且为便于样式设置，`<dt>`与`<dd>`分组可包裹在`<div>`中。

作者认为，使用`<dl>`此类语义化元素有益于用户——尤其是使用屏幕阅读器的用户，因为设备能识别列表模式，从而实现播报键值对数量、指示在列表中的位置以及允许用户跳过整个区块等功能。这些优势是嵌套`<div>`所无法提供的。

一个突出的示例是《龙与地下城》的属性面板（statblock），其中包含多个不同的名称-值组（例如，能力值、攻击等），均通过`<dl>`有效标记。

**关键要点：**
- 为任意名称-值对列表（如书籍详情、配套设施、统计数据）使用`<dl>`。
- 该模式在理论上和实践上均能提升可访问性。
- `<dl>`适用范围广泛，既能提供语义结构，又可适应多种视觉布局。

---

## 3. 德州一名女子因在脸书发帖质疑小镇水质被捕

**原文标题**: Texas woman arrested for Facebook post about town water quality

**原文链接**: [https://reclaimthenet.org/texas-woman-arrested-for-facebook-post-about-town-water-quality](https://reclaimthenet.org/texas-woman-arrested-for-facebook-post-about-town-water-quality)

一名德克萨斯州女子因在脸书上发帖批评当地水质被捕。本文聚焦司法部用于确认其身份的法律依据。司法部的理论是，用户点击标准应用程序隐私协议中的"我同意"按钮，即意味着自愿同意接受联邦政府识别。该论点将此点击行为视为授权政府获取并使用用户个人数据进行调查，实质上将日常应用使用转化为一种政府记录。此案凸显了人们对数字隐私以及标准服务条款所隐含的同意范围的担忧。

---

## 4. 我的两件式办公桌设置

**原文标题**: My two-part desk setup

**原文链接**: [https://arslan.io/2025/11/18/my-two-part-desk-setup/](https://arslan.io/2025/11/18/my-two-part-desk-setup/)

作者描述了对家庭办公桌布置的一次变革性调整，灵感源自一次汉堡之旅——他注意到当地办公桌都朝向房间，而非墙壁。这一简单的旋转让空间更显开阔、舒适且安全，因为既能看见房门，视野也更具纵深感。

更具意义的是，他用一张大桌面（200x75厘米的USM Haller）替代了原先仅摆放电子设备的书桌，并将其划分为两个明确区域：**数字区**靠近窗户，放置电脑和显示器，用于写作、编程和通话，保持极简与整洁；**模拟区**则留给笔记本、钢笔、书籍和速写本——专为阅读、写日记、做计划和创意活动而设，也包括与孩子共度的时光。

这种分隔形成了清晰的心理边界；椅子在两个区域间移动时，心境也随之切换。作者指出，纯粹的极简主义可能扼杀创造力，因此倡导根据需求融合极简与繁复。采用这种双区布局九到十个月后，他深感满意，并无意回归过去那种仅摆放电子设备的书桌。

---

## 5. 反向工程1980年太空实验室计算机中的电路

**原文标题**: Reverse engineering circuitry in a Spacelab computer from 1980

**原文链接**: [https://www.righto.com/2026/05/reverse-engineering-spacelab-computer.html](https://www.righto.com/2026/05/reverse-engineering-spacelab-computer.html)

**摘要：**

本文描述了对Mitra 125 MS小型计算机处理器板的逆向工程，该计算机曾用于控制1980年代航天飞机上的太空实验室。这款16位计算机由法国公司CIMSA制造，未采用微处理器，而是使用分立TTL集成电路，主要是74181四位ALU芯片。太空实验室计算机使用了八块54S181芯片构建32位ALU，以提升乘法和浮点运算性能。

文章详述了该板卡的架构：多路复用器从寄存器、总线或常量中选择输入；三个32位寄存器存储结果；超前进位芯片加速运算。该逆向工程板卡处理32位中的12位，并标注了ALU、多路复用器和寄存器芯片。PCB采用统一孔网格、金属散热片和防误插的键控连接器。

文章还提供了历史背景，解释了法国“计算计划”（1966年）旨在美国对用于核研究的超级计算机实施出口限制以及通用电气争议性收购布尔公司后，建立独立的计算机产业。该政策催生了CII公司，其开发了Mitra系列。尽管该计划最终未能挑战美国的主导地位，但Mitra 125 MS在太空实验室的指令与数据管理子系统中可靠运行，由三台计算机管理实验室操作与实验。

---

## 6. 《巨石阵定位器：寻找太阳与你的街道对齐的时刻》

**原文标题**: Hengefinder: Finding When the Sun Aligns with Your Street

**原文链接**: [https://victoriaritvo.com/blog/hengefinder/](https://victoriaritvo.com/blog/hengefinder/)

本文介绍了**Hengefinder**工具的创建过程——该工具受曼哈顿悬日启发，可计算太阳与任何东西走向街道完美对齐（即"悬日"）的时间。作者解析了三大核心挑战：

1.  **道路方位角**：计算街道相对于真北的角度。平面地球模型在此失效，因为经度度数在极地附近会收缩。解决方案是用`cos(纬度)`缩放经度，使其与纬度单位统一后再使用`atan2`函数。

2.  **太阳方位角**：天文学定义的日落（太阳完全沉入地平线以下）对悬日而言过晚——悬日需要太阳圆盘恰好触及地平线。作者采用**"末次真值"二分搜索法**，找到太阳高度角降至目标阈值之前的最后一分钟。

3.  **匹配方位角与太阳方位角**：太阳的日落方位角在全年中并非单调变化。作者采用**两阶段搜索法**替代每日暴力计算：先通过粗采样识别可能错失交叉点的时段（依据符号变化或方向反转），再对这些时段进行逐日细粒度搜索。

最终生成的工具允许用户输入任意地址查询下一次悬日。由约翰·普里比尔开发的移动端扩展功能还新增了月出悬日与"索伦悬日"（太阳/月亮与建筑物顶部对齐）。文章最后指出，悬日在几何上虽属罕见，却遍布全球——例如阿姆斯特丹历史悠久的哈勒默特雷克运河上，这些景象常常被人们忽略。

---

## 7. 我们删除了文件系统，使其速度提升了47倍

**原文标题**: We made our filesystem 47× faster by deleting it

**原文链接**: [https://microsandbox.dev/blog/oci-filesystem-47x-faster](https://microsandbox.dev/blog/oci-filesystem-47x-faster)

**摘要：通过删除文件系统使其速度提升47倍**

文章描述了microsandbox如何通过从用户空间FUSE文件系统切换到基于内核的方法，实现了47倍加速（最坏情况下超过1000倍）。早期版本（v0.3）使用FUSE，虚拟机内的每个文件操作都需要与主机进程往返通信——每次Python导入都会触发数十次这样的往返，多层镜像进一步放大了开销。任何缓存都无法匹敌Docker overlayfs等内核级性能。

解决方案：彻底替换用户空间文件系统，改用虚拟机直接挂载的预构建Linux磁盘镜像。通过EROFS（内核中的只读文件系统），microsandbox构建仅包含元数据的镜像，将所有OCI层合并为一个虚拟磁盘。主机仅在拉取时承担一次层遍历成本；客户机内核原生处理所有运行时查找。

关键改动：
- **自研镜像工具**（用Rust编写的EROFS/ext4/VMDK写入器）避免依赖主机OS工具，在Linux和macOS上保持单一二进制承诺。
- **每个沙箱仅需两个块设备**，与层数无关：一个只读用于镜像，一个可写用于暂存。
- **不再在用户空间重新实现overlayfs**——白名单、不透明目录和扩展属性等边缘情况均由内核处理。

主要成效：元数据扫描从500毫秒降至约2毫秒；主机文件系统代码减少5300行。绑定卷和首次拉取场景仍存在局限性。

---

## 8. 特朗普政府称，绿卡申请人必须离开美国提交申请

**原文标题**: Green card seekers must leave U.S. to apply, Trump administration says

**原文链接**: [https://www.nytimes.com/2026/05/22/us/politics/green-card-changes-trump.html](https://www.nytimes.com/2026/05/22/us/politics/green-card-changes-trump.html)

无法访问该文章链接。（该网址引用了未来的日期，即2026年5月22日，这超出了您请求时当前可访问的时间范围。《纽约时报》可能尚未发布此文章，或者该链接可能是一个占位符/虚构引用。）

---

## 9. z386：基于原始微码的开源80386处理器

**原文标题**: z386: An Open-Source 80386 Built Around Original Microcode

**原文链接**: [https://nand2mario.github.io/posts/2026/z386/](https://nand2mario.github.io/posts/2026/z386/)

本文介绍**z386**，一款基于FPGA的开源CPU，通过反汇编恢复的**原始Intel微码**重现了Intel 80386架构。该项目旨在运行真实软件的同时保留386的内部逻辑，并非逐指令模拟器，而是通过实现微码所期望的硬件来达成目标。

**关键要点：**
- **性能：** z386运行频率约85 MHz，性能堪比快速386或低端486，配备16 KB统一L1缓存。基准测试显示3DBench约34 FPS、Doom（最高画质）约16.5 FPS，略逊于同类项目ao486，但逻辑资源占用更少（8K行代码，18K个ALUT）。
- **架构：** 设计遵循原始386的八单元结构：预取、译码、微码定序器、ALU/移位器、分段、保护、分页及缓存/内存通路。微码驱动所有操作，ROM宽度37位，容量2560条。
- **译码与定序：** 译码采用逐字节处理，但使用PLA式表格实现紧凑逻辑。微码定序器处理分支、延迟槽及"运行下条指令"逻辑，简单指令至少消耗两个周期。
- **能力：** z386可启动DOS 6/7，运行保护模式程序（DOS/4GW、DOS/32A），流畅游玩《毁灭战士》《坎农·福德尔》等游戏。它既是教学级重建品，也是可用的FPGA CPU，在忠实复现386关键结构的同时，采用了FPGA友好型优化策略（DSP块、快速缓存）。

---

## 10. 80386微代码反汇编

**原文标题**: 80386 Microcode Disassembled

**原文链接**: [https://www.reenigne.org/blog/80386-microcode-disassembled/](https://www.reenigne.org/blog/80386-microcode-disassembled/)

本文详述了80386微处理器微码ROM的成功反汇编，该微码是一个从高分辨率芯片图像中提取的94,720位二进制数据块。与早期借助专利辅助完成的8086反汇编不同，80386曾是一个“黑箱”，直到通过图像处理、神经网络和人工分析协同合作才得以解码。

关键发现包括：
- 微码从解码ROM中共有215个入口点（相较于8086的60个），处理所有指令——包括许多未公开指令。
- 与现代CPU不同，每条指令都通过微码执行；不存在“纯硬件”执行方式。
- 0x849-0x856处疑似存在“垃圾代码”例程，可能与缺页处理相关，但会将CR2寄存器设置为错误值。
- 发现一个潜在安全漏洞：在保护模式下进行4字节I/O端口访问时，微码仅检查前三个地址的权限位，可能导致第四个字节被非法访问。

作者感谢合作者（Daniel Balsom、Smartest Blob、nand2mario、Ken Shirriff），并指出该微码很可能来自比B1更新的步进版本（因为IBTS/XBTS指令仅出现在解码器中）。完整反汇编代码已在GitHub上发布，并附有解释性博文链接以便进一步理解。这项研究为复现历史错误的芯片仿真开辟了可能性。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 2 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 3 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 4 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 5 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 6 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 7 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 8 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 9 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 10 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 11 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 12 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 13 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 14 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 15 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 16 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 17 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 18 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 19 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 20 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 21 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 22 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 23 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 24 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 25 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 26 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 27 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 28 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 29 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 30 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 31 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 32 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 33 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 34 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 35 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 36 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 37 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 38 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 39 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 40 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 41 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 42 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 43 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 44 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 45 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 46 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 47 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 48 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 49 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 50 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 51 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 52 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 53 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 54 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 55 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 56 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 57 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 58 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 59 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 60 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 61 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 62 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 63 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 64 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 65 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 66 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 67 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 68 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 69 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 70 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 71 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 72 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 73 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 74 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 75 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 76 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 77 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 78 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 79 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 80 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 81 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 82 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 83 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 84 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 85 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 86 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 87 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 88 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 89 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 90 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 91 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 92 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 93 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 94 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 95 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 96 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 97 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 98 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 99 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 100 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 101 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 102 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 103 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 104 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 105 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 106 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 107 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 108 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 109 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 110 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 111 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 112 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 113 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 114 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 115 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 116 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 117 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 118 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 119 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 120 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 121 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 122 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 123 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 124 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 125 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 126 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 127 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 128 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 129 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 130 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 131 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 132 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 133 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 134 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 135 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 136 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 137 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 138 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 139 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 140 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 141 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 142 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 143 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 144 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 145 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 146 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 147 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 148 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 149 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 150 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 151 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 152 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 153 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 154 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 155 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 156 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 157 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 158 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 159 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 160 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 161 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 162 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 163 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 164 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 165 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 166 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 167 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 168 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 169 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 170 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 171 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 172 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 173 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 174 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 175 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 176 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 177 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 178 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 179 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 180 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 181 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 182 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 183 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 184 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 185 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 186 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 187 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 188 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 189 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 190 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 191 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 192 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 193 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 194 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 195 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 196 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 197 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 198 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 199 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 200 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 201 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 202 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 203 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 204 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 205 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 206 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 207 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 208 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 209 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 210 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 211 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 212 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 213 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 214 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 215 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 216 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 217 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 218 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 219 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 220 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 221 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 222 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 223 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 224 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 225 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 226 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 227 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 228 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 229 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 230 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 231 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 232 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 233 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 234 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 235 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 236 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 237 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 238 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 239 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 240 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 241 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 242 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 243 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 244 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 245 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 246 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 247 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 248 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 249 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 250 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 251 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 252 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 253 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 254 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 255 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 256 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 257 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 258 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 259 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 260 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 261 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 262 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 263 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 264 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 265 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 266 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 267 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 268 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 269 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 270 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 271 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 272 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 273 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 274 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 275 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 276 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 277 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 278 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 279 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 280 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 281 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 282 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 283 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 284 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 285 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 286 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 287 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 288 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 289 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 290 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 291 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 292 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 293 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 294 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 295 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 296 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 297 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 298 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 299 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 300 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 301 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 302 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 303 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 304 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 305 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 306 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 307 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 308 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 309 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 310 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 311 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 312 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 313 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 314 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 315 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 316 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 317 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 318 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 319 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 320 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 321 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 322 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 323 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 324 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 325 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 326 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 327 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 328 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 329 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 330 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 331 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 332 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 333 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 334 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 335 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 336 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 337 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 338 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 339 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 340 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 341 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 342 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 343 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 344 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 345 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 346 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 347 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 348 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 349 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 350 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 351 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 352 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 353 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 354 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 355 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 356 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 357 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 358 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 359 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 360 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 361 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 362 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 363 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 364 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 365 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 366 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 367 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 368 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 369 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 370 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 371 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 372 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 373 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 374 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 375 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 376 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 377 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 378 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 379 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 380 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 381 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 382 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 383 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 384 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 385 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 386 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 387 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 388 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 389 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 390 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 391 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 392 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 393 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 394 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 395 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 396 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 397 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 398 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 399 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 400 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 401 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 402 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 403 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 404 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 405 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 406 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 407 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 408 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 409 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 410 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 411 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 412 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 413 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 414 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 415 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 416 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 417 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 418 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 419 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 420 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 421 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 422 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 423 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 424 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 425 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 426 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 427 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
