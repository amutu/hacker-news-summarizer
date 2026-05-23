# Hacker News 热门文章摘要 (2026-05-23)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. PHP的古怪之处

**原文标题**: PHP's Oddities

**原文链接**: [https://flowtwo.io/post/php%27s-oddities](https://flowtwo.io/post/php%27s-oddities)

**《PHP怪癖现象》综述**

作者回顾五年PHP开发经验，指出尽管PHP常遭无端指责，且已发展为成熟的通用语言，但其仍存在易引发缺陷的反直觉特性。两大核心问题尤为突出：

1. **数组并非真正数组**——PHP数组实为有序键值字典。`array_filter()` 与 `unset()` 等内置函数会保留键名而非重新索引，导致数字索引断裂。开发者必须调用 `array_values()` 恢复顺序排列，这种反直觉设计极易引发隐秘错误。

2. **类属性类型的"未初始化"状态令人困惑**——未声明类型的属性默认值为 `null`，但声明类型的属性若未显式初始化将不可访问（引发致命错误）。这制造了 `null` 与"未初始化"的语义割裂，尤其在反序列化场景中使空值检测复杂化。此外，动态添加属性的能力进一步模糊了类型明确性。

作者承认PHP的优势（低开发摩擦、Laravel框架可靠性），并总结道：语言特性怪癖可通过经验驾驭，但其类型系统与数组行为确应受到批评。

---

## 12. SpaceX发射星舰v3火箭

**原文标题**: SpaceX launches Starship v3 rocket

**原文链接**: [https://www.space.com/space-exploration/launches-spacecraft/spacex-starship-v3-megarocket-first-test-flight](https://www.space.com/space-exploration/launches-spacecraft/spacex-starship-v3-megarocket-first-test-flight)

SpaceX于2026年5月22日从得克萨斯州星基地发射了首枚星舰第三版火箭，执行其第12次亚轨道试飞。该火箭高达408英尺，是有史以来最强大的运载火箭。本次任务遭遇若干问题：超重型助推器的33台猛禽发动机中有一台在升空时熄火，助推器未能完成返场点火并按计划坠入墨西哥湾，且39号飞船在爬升过程中损失了六台发动机中的一台。

尽管出现这些故障，上面级仍成功进入太空并部署了22个有效载荷，包括20颗模拟星链卫星和两颗配备摄像头的真实星链单元，这些摄像头拍摄了星舰在轨运行的震撼画面。由于发动机问题，原定的在轨发动机二次点火被取消。随后，39号飞船再入地球大气层，执行了一项新颖的着陆燃烧机动，并如期溅落海中。

此次发射标志着向运营任务迈出重要一步，包括美国宇航局依赖星舰作为月球着陆器的“阿尔忒弥斯”计划。不过，该火箭仍需在搭载宇航员前演示轨道飞行、在轨加注燃料以及无人月球着陆能力。美国宇航局局长贾里德·艾萨克曼称赞此次发射，称其“离月球更近一步……离火星更近一步”。

---

## 13. 《从第一性原理让深度学习飞驰》（2022）

**原文标题**: Making Deep Learning Go Brrrr from First Principles (2022)

**原文链接**: [https://horace.io/brrr_intro.html](https://horace.io/brrr_intro.html)

**摘要：**  
本文通过分析三个关键瓶颈（计算、内存带宽和开销），介绍如何优化深度学习性能。  

- **计算**：最大化GPU计算利用率至关重要，因为FLOPs的增长速度快于内存带宽。然而，GPU仅在矩阵乘法（如Tensor Core）中表现高效；非矩阵乘法操作（如LayerNorm、激活函数）的FLOPs占比虽小，却可能受内存限制。  
- **内存带宽**：在GPU显存与计算单元之间移动数据成本高昂。受内存限制的操作（如`torch.cos`）大部分时间消耗在数据传输上，而非计算本身。**算子融合**——将多个操作合并为单个内核——可减少内存读写，是最有效的优化手段。例如，融合`x.cos().cos()`可将全局内存访问量减半。  
- **开销**：Python解释器及框架调度（如PyTorch）的速度相对GPU极慢。A100在Python执行单个操作的时间内可完成约9.75M次浮点运算。使用小张量时，开销成为主要瓶颈。  

**核心要点**：需判断当前处于何种瓶颈区域。若受内存限制，融合可提升性能；若受计算限制，则需减少其他瓶颈。基于A100的简单估算（如对比FLOPs与内存带宽）即可指导优化。NVFuser、XLA或Triton等工具可实现自定义融合。

---

## 14. 意大利取消波音“飞马座”订单，转向采购空客A330 MRTT

**原文标题**: Italy Cancels Boeing Pegasus Order, Shifting to Airbus A330 MRTT

**原文链接**: [https://www.euronews.com/my-europe/2026/05/21/italy-moves-to-airbus-a330-tankers-in-major-nato-aligned-shift](https://www.euronews.com/my-europe/2026/05/21/italy-moves-to-airbus-a330-tankers-in-major-nato-aligned-shift)

根据题为《意大利取消波音“飞马座”订单，转购空客A330 MRTT》的文章，主要内容如下：

意大利已取消其波音“飞马座”加油机订单，并决定转而采购空客A330 MRTT（多用途加油运输机）。文章详细阐述了意大利放弃波音KC-46A“飞马座”订单，改用空客A330 MRTT机队满足其空中加油和运输需求的决策。此举标志着意大利军事采购战略的重大转变，从美国制造商波音转向欧洲联合企业空客。关键信息是意大利选择空客A330 MRTT来执行其加油和运输任务，从而有效取消了此前对波音“飞马座”项目的承诺。

---

## 15. 《致富有道》

**原文标题**: The Art of Money Getting

**原文链接**: [https://kk.org/cooltools/book-freak-210-the-art-of-money-getting/](https://kk.org/cooltools/book-freak-210-the-art-of-money-getting/)

P.T. 巴纳姆的《致富之道》（1880年）将其奋斗一生总结为20条直白的准则，核心原则如下：

1. **切勿选错行当**——寻找适合天赋的工作，并力争做到最好。多数人只为糊口而工作，而成功者先找到自己的专长。
2. **像躲避瘟疫一样远离债务**——债务侵蚀自尊与自由。确保收入大于支出，尤其年轻时避免借贷。
3. **全力以赴**——半心半意的努力使人贫穷。全心投入、精益求精，能让你超越那些敷衍了事之人。
4. **坚守诚信**——信任至关重要。不诚实或许能带来短期利益，却会付出终生代价。声誉才是你真正的资产。

巴纳姆的建议包含可行步骤：审视当前工作与天赋的匹配度，列出并清偿债务（从最小的一笔开始），挑选一项半途而废的任务全力以赴去完成。

那句名言是：“金钱在某种程度上如同火焰，它是极好的仆人，却是可怕的主人。”

---

## 16. Project Glasswing：初步更新

**原文标题**: Project Glasswing: An Initial Update

**原文链接**: [https://www.anthropic.com/research/glasswing-initial-update](https://www.anthropic.com/research/glasswing-initial-update)

以下是文章的简要总结：

**Project Glasswing 更新：AI驱动的网络安全**

Anthropic于2026年4月启动的Project Glasswing项目，利用其Claude Mythos Preview模型保护关键软件。在项目启动的第一个月，约50家合作伙伴发现了超过1万个高危或严重漏洞。瓶颈已从寻找漏洞转向验证和修补漏洞。

关键成果包括：Cloudflare发现2000个漏洞，Mozilla在Firefox 150中修复了271个漏洞，外部基准测试显示Mythos Preview在漏洞利用开发方面表现最强。对超过1000个开源项目的扫描已识别出约6202个高危或严重漏洞，其中90.6%经分类验证为真阳性。一个实例是wolfSSL加密库中发现的伪造证书漏洞（CVE-2026-5194）。

文章强调，尽管漏洞发现速度加快，但补丁部署滞后，造成了风险窗口期。建议开发者缩短补丁周期，防御者加强网络防护。Anthropic已发布相关工具，包括**Claude Security**（企业公开测试版）和针对合法安全研究的**网络验证计划**。他们还计划向合格客户发布Mythos级扫描工具，并与开源安全基金会合作，支持因AI生成报告数量激增而不堪重负的开源维护者。

---

## 17. 《构建论坛软件的思考》

**原文标题**: Reflections on Building Forum Software

**原文链接**: [https://www.counting-stuff.com/reflections-on-building-forum-software/](https://www.counting-stuff.com/reflections-on-building-forum-software/)

本文讲述了作者构建 **bsBB** 的经历——这是一款以Bluesky认证为驱动的论坛软件，旨在向Web 1.0时代的论坛致敬。该项目主要借助AI编程工具完成，既是作者为社区打造的一个“严肃”作品，也是一项充满怀旧情怀的个人心爱项目。

核心反思包括：
- **使用大语言模型进行编码**：作为一名擅长高层系统设计、规划及预判用户问题的非专业程序员，作者发现大语言模型在处理底层实现细节时十分有用。然而，这一过程表明，AI生成的代码需要持续警惕；大语言模型可能会产生大量细微缺陷，需要反复审查审计。
- **学习系统知识**：虽然未深入掌握具体实现细节，作者却对系统层面的影响有了更深刻的认识——例如Bluesky认证的挑战（需要公共域名）以及关于数据同步、审核工具和权限设置的决策。
- **局限性与类比**：作者将AI辅助编程比作从分析师转型为设计分析框架的角色——更多是运用管理和制定指南的能力，而非直接编码。如果不练习，底层编程技能可能会生疏。

总体而言，本文凸显了大语言模型对非专业程序员的价值与局限性，强调AI工具并非万能灵药，仍需人类持续监督，尤其是在分析代码方面。

---

## 18. ——危险地跳过阅读代码

**原文标题**: - -dangerously-skip-reading-code

**原文链接**: [https://olano.dev/blog/dangerously-skip/](https://olano.dev/blog/dangerously-skip/)

**摘要：**

本文认为，随着AI生成代码速度加快且难以阅读，组织可能需要从审查代码转向审查规范与测试。作者承认，传统上程序员负责理解并维护源代码，但大语言模型生成的非确定性输出速度过快，人类难以有效审查。然而，这一转变应作为**组织决策**而非个人决策——原因在于风险管理和阿姆达尔定律，该定律警告协调与流程中的瓶颈将抵消生产力提升。

要获得速度优势，组织必须减少人工介入，精简官僚流程，并授权工程师自主掌控完整工作流。返工成本变得低廉，因此预先防范错误不再关键。严谨性应转向**规范**（而非提示词）与**测试**（而非测试驱动开发）。文章提议将标准化Markdown规范作为新的知识单元，并通过自动化PR检查确保代码同时符合规范与测试。团队需对理解规范负责，而非生成的代码本身。这重新定义了AI增强语境下的优秀工程实践。

---

## 19. 评估Spec CPU2026

**原文标题**: Evaluating Spec CPU2026

**原文链接**: [https://chipsandcheese.com/p/evaluating-spec-cpu2026](https://chipsandcheese.com/p/evaluating-spec-cpu2026)

**《SPEC CPU2026评估》摘要**

本文回顾了SPEC新发布的CPU2026基准测试套件，该套件包含52个工作负载（相比SPEC CPU2017的43个有所增加）。作者使用GCC 14.2.0对现代CPU（AMD Zen 5和Intel Lion Cove）进行了测试，分析了性能、IPC、自上而下瓶颈、分支预测和缓存。

**主要发现：**
- **参考系统**：SPEC采用Ampere eMAG 8180（基准分1.0），该配置被批评为过时且与当代硬件对比无关。
- **性能**：Zen 5和Lion Cove在整数测试中表现接近；Zen 5在浮点测试中领先，部分得益于AVX-512的使用。
- **IPC趋势**：整数套件的IPC比SPEC CPU2017更高且更集中，低IPC工作负载更少。浮点得分分布更为分散。505.mcf和520.omnetpp等低IPC测试已被移除；代码编译测试（721.gcc、725.llvm）现为IPC最低的项目。
- **分支预测**：SPEC CPU2026对分支预测的依赖降低；731.astcenc是分支预测难度最大的测试，但仍比505.mcf等旧测试温和。
- **缓存**：整数工作负载对AMD操作缓存和L1I缓存的挑战较以往更大；Intel更大的L1I（64 KB）和L2（3 MB）能更好地应对代码足迹需求。数据缓存可良好处理大多数工作负载；除765.roms和759.fotonik3d外，末级缓存未命中情况罕见。

总体而言，该套件将重点转向核心吞吐量和代码足迹挑战，相较于SPEC CPU2017，减少了对分支预测和内存延迟的依赖。

---

## 20. Kindle忠实用户陷入慌乱，亚马逊翻过旧款电子阅读器篇章

**原文标题**: Kindle loyalists scramble as Amazon turns page on old e-readers

**原文链接**: [https://www.reuters.com/business/retail-consumer/kindle-loyalists-scramble-amazon-turns-page-old-e-readers-2026-05-19/](https://www.reuters.com/business/retail-consumer/kindle-loyalists-scramble-amazon-turns-page-old-e-readers-2026-05-19/)

无法访问该文章链接。

---

## 21. 《在Vim中使用Lisp（2019）》

**原文标题**: Lisp in Vim (2019)

**原文链接**: [https://susam.net/lisp-in-vim.html](https://susam.net/lisp-in-vim.html)

本文比较了两款用于交互式Lisp开发的Vim插件——Slimv与Vlime，二者功能类似Emacs中的SLIME，均采用基于Swank后端的客户端-服务器架构。

**Slimv**（2009年发布）需要Vim支持Python（如`vim-nox`），并内置了修改版Swank服务器。若Vim在tmux、GNU Screen或桌面环境中运行，它能自动启动服务器。安装方式为将仓库克隆至`~/.vim/pack/plugins/start/`目录。

**Vlime**（2017年发布）兼容标准Vim且无需Python，通过Quicklisp自动下载Swank服务器。因其目录结构非标准，需手动安装至`~/.vim/bundle/`目录。

两款插件均支持通过Paredit进行结构化编辑（Slimv内置该工具），并提供集成REPL、调试、宏展开及符号检查等特性。文章针对每款插件提供了分步安装指南，包括前置条件（SBCL、tmux、Git）及基础操作命令（如用`,c`连接Swank，用`,e`求值表达式）。

作者对比指出：Slimv更为成熟且具备自动启动便利性，而Vlime更新颖、安装更简单且支持默认Vim配置。关键区别在于对Python的依赖（Slimv）及服务器自动启动功能（Slimv）。文章还简要提及对其他Lisp方言（Scheme、Clojure）及实现（CLISP、ECL）的使用。

---

## 22. Elixir 中的最高随机权重

**原文标题**: Highest Random Weight in Elixir

**原文链接**: [https://jola.dev/posts/highest-random-weight-in-elixir](https://jola.dev/posts/highest-random-weight-in-elixir)

**摘要：Elixir 中的最高随机权重**

本文介绍了 HRW（最高随机权重）哈希算法，作为 Elixir 中 ExHashRing 的一种更简单、无状态的替代方案，用于一致性哈希。与需要在监管树中管理有状态进程的 ExHashRing 不同，HRW 以纯函数方式工作——只需传入键和节点列表即可获取所属节点。

基础算法使用 `Enum.max_by` 搭配 `:erlang.phash2({key, node})` 作为评分函数。对于小型集群（例如 14 个节点），其性能与 ExHashRing 几乎相同（每次查询约 418 纳秒对比 375 纳秒）。然而，基础 HRW 的时间复杂度为 O(n)，在 10,000 个节点时比 ExHashRing 慢约 4200 倍（2.2 毫秒对比 0.52 微秒）。

为解决这一问题，文章提出了**基于骨架的 HRW**——一种预先构建的数据结构，可实现 O(log n) 的复杂度。在 10,000 个节点时，基于骨架的 HRW 每次查询仅需 1.41 微秒，仅为 ExHashRing 速度的约 3 倍，且无需 NIF 或有状态进程。

分布测试表明，使用 `:erlang.phash2` 的 HRW 能提供出色的负载均衡（10 个节点时标准差为 2.5%），在节点数较多时优于 ExHashRing（ExHashRing 在 1000 个节点时偏差达 31%，而 HRW 约为 10%）。MurmurHash 替代方案仅带来微小改进。

文章发布了 **hrw** Hex 包，其中包含额外策略，如 `Weighted`（用于异构集群）和 `Bounded`（用于已知键集）。作者推荐在大多数场景下使用普通 HRW，仅在节点数非常大时考虑使用骨架 HRW 或 ExHashRing。

---

## 23. Oura称其收到政府索取用户数据的要求

**原文标题**: Oura says it gets government demands for user data

**原文链接**: [https://this.weekinsecurity.com/oura-says-it-gets-government-demands-for-user-data-will-it-share-how-many/](https://this.weekinsecurity.com/oura-says-it-gets-government-demands-for-user-data-will-it-share-how-many/)

**摘要：** 这篇由网络安全记者撰写的文章探讨了估值超110亿美元的健康可穿戴公司Oura的隐私问题。作者指出，Oura的系统并非端到端加密，意味着敏感的用户健康数据（心率、睡眠、位置、月经周期）可被公司员工访问，也可能被黑客、内部人员或持有搜查令的政府获取。虽然Oura承认收到过"不频繁的"政府数据请求，并声称会审查其合法性，但该公司拒绝透露收到多少请求以及其配合频率。八个月前，Oura表示正在"积极评估"发布透明度报告，但此后未回应后续询问。作者认为，作为健康可穿戴领域的主导者，Oura有责任向其550万用户披露政府数据需求，以建立并维持信任。缺乏这种透明度，用户将无从知晓政府是否正在获取他们的私人健康数据。

---

## 24. sp.h：通过为C语言提供高质量、超便携的标准库来修复它

**原文标题**: sp.h: Fixing C by giving it a high quality, ultra portable standard library

**原文链接**: [https://spader.zone/sp/](https://spader.zone/sp/)

**摘要：** 本文介绍了 **sp.h**，一个包含15000行代码的单头文件C99库，旨在通过直接基于操作系统原语（系统调用）而非libc构建高质量、超便携标准库来“修复C语言”。

**关键点：**

- **摒弃libc**，认为其对现代程序（特别是异步I/O和字符串处理）提供的是无用的接口。
- **无隐式堆分配**：强制通过`sp_mem_t`显式使用分配器，将内存视为程序拥有而非运行时管理。
- **摒弃空终止字符串**，改用`sp_str_t`（指针+长度），实现O(1)长度检查、零拷贝子串和更安全的解析。
- **设计原则**：显式错误处理、无可变全局状态、零初始化内存以及完整命名空间。该库旨在被阅读、修改和移植。
- **可移植性**：支持Linux、Windows、macOS、WASM、浏览器、MSVC、MinGW、TCC，甚至可在无libc环境下运行。采用C99编写。
- **非目标**：不追求与现有接口的兼容性、对罕见架构的支持或细粒度的计算密集型优化。专注于正确的抽象和零拷贝I/O。

作者认为C语言因其简洁性、直接编译为机器码以及与操作系统的深度融合仍然具有价值，并通过Discord、IRC或电子邮件邀请协作。

---

## 25. 日本企业为何涉足如此多元化的业务领域

**原文标题**: Why Japanese companies do so many different things

**原文链接**: [https://davidoks.blog/p/why-japanese-companies-do-so-many](https://davidoks.blog/p/why-japanese-companies-do-so-many)

日本企业展现出极度的多元化特征，往往能在与核心业务无关的高科技领域也取得卓越成就。例如，全球最大马桶制造商TOTO如今主要利润来自为半导体制造生产静电卡盘，且这一增长由人工智能需求驱动。同样，京瓷和住友大阪水泥的产品线涵盖陶瓷、厨刀、打印机、水泥、化妆品及人造宝石等多元领域。

经济学家青木昌彦对日本企业模式的分析解释了这一现象，该模式与西方企业形成鲜明对比。其核心特征包括终身雇佣制、年功序列晋升制以及批量聘用应届毕业生。这些实践构成了米尔格罗姆和罗伯茨互补性理论中所述的连贯"组合"，使得多元化经营既自然又高效。当企业投资于具备灵活多技能特质的员工并建立长期合作关系时，将这种能力应用于多条产品线而非专注单一领域显然更具优势。

因此，日本企业并非为多元化而多元化；其强调稳定性、技能迁移与内部灵活性的组织架构，使它们能在众多高度专业化的领域脱颖而出。这种模式与以股东利益为导向、专注单一领域的西方企业截然不同，也解释了为何日本既能主导静电卡盘等精密部件，又能在马桶、钢琴及水泥领域占据统治地位。

---

## 26. 向乌干达难民营运送一台笔记本电脑

**原文标题**: Shipping a laptop to a refugee camp in Uganda

**原文链接**: [https://notesbylex.com/shipping-a-laptop-to-a-refugee-camp-in-uganda](https://notesbylex.com/shipping-a-laptop-to-a-refugee-camp-in-uganda)

本文详细描述了一台二手笔记本电脑从澳大利亚运送到乌干达难民营中的刚果学生Django手中的复杂且昂贵的过程。

作者最初尝试通过澳大利亚邮政寄送（花费111.60澳元），但因锂电池不允许通过国际航空运输而失败。私营快递公司Pack & Send成功寄出（花费213澳元），但真正的挑战始于乌干达。Django作为难民没有税务识别号，面临官僚主义障碍：乌干达税务局要求本人到场核实，需步行两小时再转乘三小时公交车前往一个遥远的办公室，期间还遭遇变相索贿。经过两天时间，他终于获得了税务识别号。

额外成本不断增加：代理费（约35澳元）、海关税费（约47澳元）以及修改报关单的补费（约18.50澳元）。笔记本电脑一度被扣押，因为二手进口需要原始购买收据。在作者证明这是二手赠品后，电脑才被放行。

最终交付过程一片混乱：笔记本电脑被随意留在一家五金店，险些交给一名陌生的摩托车骑手。Django本人骑摩托车跋涉三小时，从满是焊接设备的货架上布满灰尘的角落里取回了电脑。

总花费达约426澳元，已接近电脑本身的价值，凸显了难民在获取基本教育工具时所面临的巨大物流、经济和官僚主义障碍。

---

## 27. Rubish：一个纯Ruby编写的Unix Shell

**原文标题**: Rubish: A Unix shell written in pure Ruby

**原文链接**: [https://github.com/amatsuda/rubish](https://github.com/amatsuda/rubish)

**Rubish概述：纯Ruby实现的Unix Shell**

Rubish是一个完全用Ruby编写的Unix Shell，在深度整合Ruby特性的同时保持与Bash的完全兼容。它解析Shell语法，将其编译为Ruby代码，并通过Ruby虚拟机执行。

**核心特性：**
- **Bash兼容**：可直接运行现有bash脚本无需修改
- **深度Ruby集成**：通过条件（`{ count > 3 }`）、方法链（`ls().sort.uniq`）、迭代器块（`ls.each { |f| puts f }`）和内联Ruby求值混合Shell命令与Ruby代码
- **Ruby方法调用风格**：使用括号调用命令（`ls('-la')`）
- **Lambda表达式和Ruby风格函数定义**
- **自定义Ruby提示符**：通过`rubish_prompt`函数实现动态内容
- **延迟加载**：通过后台线程实现慢速初始化工具（rbenv、nvm）的延迟加载
- **受限模式**（`-r`）：对不受信任的脚本禁用Ruby特性
- **Zsh兼容**：支持setopt、compdef、autoload和zsh风格提示符代码

**安装**：可通过Homebrew或源码安装。可设置为登录Shell。

**嵌入**：提供公共API（`Rubish::REPL`），支持以编程方式驱动会话，包括分词、解析、补全和自定义I/O后端。

**内置命令**：包含标准Shell内置命令，涵盖目录导航、I/O、变量、作业控制、函数、历史记录等功能。

Rubish旨在用完全兼容的Shell取代bash，同时充分利用Ruby在脚本编写和交互使用方面的强大能力。

---

## 28. Electrobun 2.0 将因 Rust 重写而与 Bun 解耦

**原文标题**: Electrobun 2.0 will be decoupled from Bun due to the Rust rewrite

**原文链接**: [https://twitter.com/i/status/2058064720553222567](https://twitter.com/i/status/2058064720553222567)

**摘要：**

文章宣布，由于项目采用 **Rust 重写**，**Electrobun 2.0 将与 Bun 解耦**。这一变化意味着 Electrobun 将不再依赖 Bun 运行时，其核心架构转向 Rust 以提升性能、稳定性和独立性。此次重写旨在解决先前基于 Bun 的版本所存在的运行时耦合与维护挑战等问题。通过迁移至 Rust，Electrobun 力求为构建桌面应用提供更强大、更灵活的框架，同时减少对外部依赖。解耦后，开发者无需 Bun 即可使用 Electrobun，有望拓宽其采用范围。然而，此次过渡可能会为现有用户带来破坏性变更，需要迁移至新的基于 Rust 的版本。文章还指出，浏览器中禁用了 JavaScript，但这是与 Electrobun 核心更新无关的独立技术问题。总体焦点在于向 Rust 的战略性迁移，以增强项目的可扩展性与长期可行性。

---

## 29. 破解《Zork》谜题

**原文标题**: Solving the “Zork” Mystery

**原文链接**: [https://www.dpolakovic.space/blogs/zork-part2](https://www.dpolakovic.space/blogs/zork-part2)

**《解开“Zork”之谜》摘要**

文章讲述了作者发现并分析1977年大型机版《Zork》原始源代码中“丢失”的一次提交记录的过程。《Zork》是开创性的文字冒险游戏。这个谜团始于2018年，当时作者发现已知最早的《Zork》源代码是1979年的，使用MDL编程语言编写。通过互联网档案馆，他们找到了一份1977年麻省理工学院的实验室备忘录，其中包含《Zork》游戏状态（“Zork的状态”）的部分列表，但它是用一种不同的、不熟悉的格式编写的——一种名为 **ZIL（Zork实现语言）** 的自定义领域特定语言。

作者苦苦思索ZIL与MDL之间的关系，直到他们发现了一个名为 **Zilch** 的编译器的文档，该编译器可将ZIL源代码翻译成MDL。原来，1977年的备忘录并非游戏的实际源代码，而是世界数据库的已编译、人类可读的表示形式。真正的1977年ZIL源代码在麻省理工学院删除其旧备份磁带时丢失了。

2022年，游戏联合创作者马克·布兰克发布了一张存档光盘，其中包含了1977年大型机版本的 **所有原始ZIL源文件**。作者随后成功反编译并运行了这些文件，并使用现代《Zork》汇编器（ZAP）验证了其正确性。该项目最终将所有ZIL源代码发布在GitHub上，为后人保留了已知最早的《Zork》版本。

---

## 30. 提升C#内存安全性

**原文标题**: Improving C# Memory Safety

**原文链接**: [https://devblogs.microsoft.com/dotnet/improving-csharp-memory-safety/](https://devblogs.microsoft.com/dotnet/improving-csharp-memory-safety/)

**摘要：提升 C# 内存安全性**

微软正在重新设计 C# 的 `unsafe` 关键字（计划于 C# 16 和 .NET 12 中推出），以提升内存安全性。核心变革在于将 `unsafe` 从标记**语法**（指针使用）转变为标记**契约**——即任何编译器无法验证为内存安全的代码。

主要变化包括：
- 所有不安全操作（指针解引用、调用不安全成员）都**需要内部 `unsafe { }` 代码块**。
- **方法签名上的 `unsafe` 会将义务传播**给调用方，创建可见的安全边界。
- **强烈建议使用 `/// <safety>` 文档**，以形式化调用方的义务。
- **禁止在类型、静态构造函数、终结器及委托上使用 `unsafe`**——作用域移至成员级别。
- **新增 `safe` 关键字**，用于编译器需要显式声明的场景（例如 `extern`）。
- **签名中的指针类型不再传播不安全性**——仅解引用视为不安全（`IntPtr` 被视为指针）。
- **无“信任机制”**——违反规则将导致编译错误。

该模型确保每个不安全操作均限定范围、可审查且通过调用图可追溯，使安全假设显式化，而非依赖惯例。通过项目属性选择启用（类似于可为空引用类型）。目标是为开发者和 AI 生成代码提供结构性防护，减少用于互操作或性能优化的不安全代码中的内存安全缺陷（如未定义行为）。

---

