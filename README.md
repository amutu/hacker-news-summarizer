# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-03.md)

*最后自动更新时间: 2026-06-03 20:32:22*
## 1. Elixir v1.20：现已逐步转型为类型化语言

**原文标题**: Elixir v1.20: Now a gradually typed language

**原文链接**: [https://elixir-lang.org/blog/2026/06/03/elixir-v1-20-0-released/](https://elixir-lang.org/blog/2026/06/03/elixir-v1-20-0-released/)

**Elixir v1.20 发布公告摘要**

Elixir v1.20 已发布，标志着一个重要里程碑：它现在是一种渐进类型语言。该类型系统使用集合论类型（并集、交集、否定），并引入了一种独特的 `dynamic()` 类型，不同于传统的渐进类型。

主要特性：

- **健全、渐进、开发者友好**：类型系统无需注解即可推断类型，能以极低的误报率发现已验证的错误和死代码。
- **`dynamic()` 类型**：与其他系统中的 `any()` 不同，`dynamic()` 支持**兼容性**（仅在提供类型和接受类型不相交时报告违规）和**窄化**（根据代码使用细化类型，例如 `data.a + data.b` 将 `data` 窄化为包含数字字段的映射）。这能在不增加开发者负担的情况下实现精确的错误检测。
- **守卫与子句的类型推断**：系统从守卫（例如 `is_list(x)`、`tuple_size(x) < 3`）以及 case/条件子句中推断类型，实现精确的窄化和死代码检测。

**性能**：编译时间得到改善，尤其是在多核机器上。新增的 `:module_definition` 选项（`:interpreted`）可进一步加快大型项目的编译速度。

**后续步骤**：类型签名和带类型的结构体定义将在确保性能、高效的递归/参数类型以及映射遍历支持之后引入。此版本鼓励开发者进行更新，并修复自动发现的错误。

---

## 2. Gemma 4 12B：统一的无编码器多模态模型

**原文标题**: Gemma 4 12B: A unified, encoder-free multimodal model

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/introducing-gemma-4-12b/](https://blog.google/innovation-and-ai/technology/developers-tools/introducing-gemma-4-12b/)

**Gemma 4 12B 公告摘要**

Google DeepMind 推出了适用于笔记本电脑的新型多模态模型 Gemma 4 12B。该模型弥合了边缘友好型 E4B 与更大的 26B MoE 模型之间的差距，在更小的内存占用中提供先进能力。它也是首个原生支持音频输入的中型 Gemma 模型。

主要功能包括新颖的**无编码器架构**，其中视觉和音频输入直接流入 LLM 主干，消除了单独的编码器以减少延迟和内存使用。视觉处理使用轻量级嵌入模块，而音频则直接投影到文本词元空间中。

该模型在高级推理和代理工作流方面提供了**接近 26B 模型的基准性能**，但可在配备 **16GB VRAM/统一内存** 的消费级笔记本电脑上本地运行。它以 **Apache 2.0 许可证** 发布，并支持 Hugging Face、llama.cpp 和 vLLM 等开发者工具。它还包括用于降低延迟的**多词元预测 (MTP) 起草器**。

---

## 3. 我最近被诊断出患有抗NMDA受体脑炎

**原文标题**: I was recently diagnosed with anti-NMDA receptor encephalitis

**原文链接**: [https://burntsushi.net/encephalitis/](https://burntsushi.net/encephalitis/)

一名软件开发者自述了罹患抗NMDA受体脑炎的经历，这是一种引发脑部炎症的自身免疫性疾病。症状起初表现为类似流感的症状、焦虑和惊恐发作，随后发展为慢性下颌疼痛、平衡障碍，以及包括自杀意念、妄想和幻听在内的严重精神病症状。一次跌倒后被送往急诊，随后转入精神病院——这是该疾病常见的误诊情况（常被误认为焦虑症或精神分裂症）。凭借私人关系，患者得以转至布列根和妇女医院，在接受静脉注射免疫球蛋白和类固醇治疗（后经脊髓液抗体检测确诊）后才获得救治。目前作者正参与萨特利珠单抗的CIELO临床试验，自述预后良好且正在康复中，但指出该病尚无治愈方法。他们感谢妻子凯特琳·布雷迪始终坚持争取神经科诊疗，以及雇主查理·马什提供的非凡支持。文章指出这种疾病或许能解释历史上关于魔鬼附身的记载，并推荐苏珊娜·卡哈兰的《燃烧的大脑》以了解更多详情。作者对能回归"正常"自我、重燃工作热情表达了感激之情。

---

## 4. ESP32-S31

**原文标题**: ESP32-S31

**原文链接**: [https://www.espressif.com/en/products/socs/esp32-s31](https://www.espressif.com/en/products/socs/esp32-s31)

基于所提供的内容，本文概述了乐鑫科技的产品和资源目录，重点聚焦于**ESP32-S3**微控制器及其生态系统。

**要点：**

1.  **核心产品：** ESP32-S3被突出介绍为ESP32系列中的关键系统级芯片（SoC），该系列还包括ESP32-C、ESP32-H和ESP32-P4等其他型号。
2.  **硬件产品：** 乐鑫为这些芯片提供SoC、模组和开发套件（包括来自M5Stack等合作伙伴的）。
3.  **软件与SDK：**
    - **通用框架：** 主要开发框架是**ESP-IDF**，此外还有针对人工智能（ESP-SR、ESP-DL）和物联网/多媒体（ESP-ADF）的附加解决方案。
    - **第三方生态系统：** 支持**ESP-Arduino**和**Zephyr®**。
4.  **云服务：** 提供**ESP RainMaker®**和**ESP Insights**，用于设备管理和监控。
5.  **解决方案：** 涵盖人工智能、音频、人机界面（智能屏显）、低功耗（ESP-NOW）和设备连接（ESP-Mesh-Lite、AWS IoT ExpressLink）。
6.  **支持与资源：** 提供广泛的技术文档、下载资源（工具、SDK、应用程序）、认证指导和常见问题解答。通过论坛、教育课程（Rust、书籍、视频）和开发者门户网站促进社区互动。
7.  **公司信息：** 包括公司背景、新闻、投资者关系、职业机会以及销售和技术支持的联系方式。

---

## 5. 达芬奇调色系统21

**原文标题**: DaVinci Resolve 21

**原文链接**: [https://www.blackmagicdesign.com/products/davinciresolve/whatsnew](https://www.blackmagicdesign.com/products/davinciresolve/whatsnew)

DaVinci Resolve 21 引入了专用的**照片页面**，将好莱坞级别的调色工具和节点式编辑带入静态摄影领域，支持 Resolve FX、LUT 以及 AI 工具（如 Magic Mask 和 UltraSharpen）。

关键的**AI 更新**包括：
- **IntelliSearch**：用于查找对象、人脸或文字。
- **Face Age Transformer**（面部年龄变换）、**Face Reshaper**（面部重塑）和**Blemish Removal**（瑕疵去除）。
- **AI CineFocus**：用于景深控制。
- **AI Speech Generator**（AI 语音生成器）：基于语音样本生成语音。
- **AI Slate ID**（AI 场记板识别）：用于自动提取元数据。
- **AI UltraSharpen**（AI 超级锐化）和**Motion Deblur**（运动去模糊）：提升图像质量。

**编辑**和**剪辑**页面新增关键帧曲线改进、Fusion 特效动画、HTML/Lottie 图形支持以及智能视图管理。

**调色**引入了**MultiMaster Trim**（多重主调色）以实现 HDR/SDR 同步输出、Magic Mask 就地渲染、图层列表节点视图以及分组调色版本。

**Fusion**新增了 70 多种**Krokodove** VFX 工具、宏编辑器检查器、通过 Fairlight 实现的音频驱动动画，以及升级后的 USD 工具集。

**Fairlight**通过轨道文件夹、6 段片段均衡器、均衡/电平匹配器以及 Chain FX 预设改进了音频管理。

**工程**亮点包括 Apple Immersive 注视点渲染、MainConcept H.265/MV-HEVC 编码，以及通过 Panomap 旋转和 ILPD 重定向扩展的 VR180/360 沉浸式工作流程。

---

## 6. Gooey：一款面向Zig的GPU加速UI框架

**原文标题**: Gooey: A GPU-accelerated UI framework for Zig

**原文链接**: [https://github.com/duanebester/gooey](https://github.com/duanebester/gooey)

## Gooey 概述：面向 Zig 的 GPU 加速 UI 框架

Gooey 是一个早期阶段的、面向 Zig 的 GPU 加速 UI 框架，支持 macOS（Metal）、Linux（Vulkan/Wayland）和浏览器（WASM/WebGPU）。其显著特点是**零外部 Zig 依赖**，仅基于平台系统框架构建。

### 主要特性
- **GPU 渲染**：支持 Metal、Vulkan 及 MSAA 抗锯齿
- **声明式 UI**：使用 `ui.*` 原语实现 flexbox 风格布局系统
- **Cx/UI 分离**：`cx.*` 负责状态、事件处理和焦点管理，`ui.*` 处理布局
- **纯状态模式**：可测试的状态方法，支持自动重新渲染
- **4 种处理器类型**：`cx.update()`（纯状态）、`cx.command()`（框架访问）、`cx.defer()`（事件后处理）及带参数的 `*With` 变体（参数 ≤8 字节）
- **丰富控件集**：文本输入框、文本区域、复选框、滚动容器
- **动画系统**、拖拽功能、输入法支持、无障碍访问（VoiceOver、Orca、ARIA）
- **原生功能**：文件对话框、剪贴板、SVG 渲染、自定义着色器

### 架构
状态与 UI 完全分离，无需渲染即可实现完整的单元测试。后台任务使用 Zig 0.16 的 `std.Io` 处理异步操作，无需锁机制即可将类型化结果推送回渲染循环。

### 快速开始
需要 Zig 0.16.0 及以上版本。包含多个演示应用（待办事项、计数器、动画、代码编辑器、数据表格）。该框架处于**早期开发阶段**，API 持续演进中。

---

## 7. 停止杀害游戏

**原文标题**: Stop Killing Games

**原文链接**: [https://jxself.org/stop-killing-games.shtml](https://jxself.org/stop-killing-games.shtml)

**总结：**

本文认为，“停止杀害游戏”运动虽出于善意，却瞄准了错误的解决方案。该运动支持加州AB 1921法案，该法案强制开发者提供离线补丁或退款，但作者指出这仅是治标不治本。

真正的问题在于专有软件本身，它赋予了开发者绝对的控制权。游戏之所以被“杀害”，是因为企业利用隐藏源代码、数字版权管理（DRM）和强制服务器连接——这些旨在剥夺用户控制权的数字镣铐。这不是意外，而是专有软件的刻意设计。

作者将玩家的愤怒与自由软件基金会的原则相联系。当一款70美元的游戏在服务器关闭后变得无法游玩时，用户体验到的不公，与被锁定无法修理约翰迪尔拖拉机的农民如出一辙。玩家正凭直觉要求“软件自由”，只是未使用这一术语。

真正的解决方案是四项基本自由：出于任何目的运行程序的权利（自由0）、研究并修改代码的权利（自由1）、重新分发副本的权利（自由2），以及分享修改后版本的权利（自由3）。如果一款游戏拥有这些自由，它便无法被“杀害”。AB 1921法案仅要求“主人停止殴打用户”，而非夺走鞭子。这场运动应以本名要求软件自由，而非满足于监管上的权宜之计。

---

## 8. 人工智能并无意识——特德·姜

**原文标题**: Artificial intelligence is not conscious – Ted Chiang

**原文链接**: [https://www.theatlantic.com/philosophy/2026/06/no-artificial-intelligence-is-not-conscious/687378/](https://www.theatlantic.com/philosophy/2026/06/no-artificial-intelligence-is-not-conscious/687378/)

特德·姜认为，像Anthropic的Claude这样的大型语言模型（LLM）并不具备意识，尽管该公司领导层声称如此。他解释称，LLM的功能相当于句子续写机器，每次根据统计模式生成一个词。与聊天机器人的对话类似于角色扮演或共同撰写文档；聊天机器人的角色与尤利乌斯·凯撒和成吉思汗之间的对话一样虚构。文本生成的流畅性不应被误认为是意识或道德能力。特德·姜将相信LLM具有意识比作相信一个包含转录文本的Word文档拥有多个意识心智。他指出，没有人声称类似神经网络的AlphaFold具有意识，因为它不会生成语法正确的句子——意识的幻觉源于我们习惯从语言中解读意图的习惯。要相信人工智能具有意识，特德·姜需要一个漫长的发展路径：具备生存技能、社会复杂性以及习得的非语言交流能力的具身智能体，类似于生物进化。没有这样的背景，声称AI具有意识就如同深度伪造——看似合理却缺乏底层现实的模拟。他总结道，Claude的“宪法”最好被视为一份用于角色扮演游戏的84页角色表，而非某个意识实体的道德文件。

---

## 9. 无需接触，通过扬声器入侵你的电脑

**原文标题**: Hacking your PC using your speaker without ever touching it

**原文链接**: [https://blog.nns.ee/2026/06/03/katana-badusb/](https://blog.nns.ee/2026/06/03/katana-badusb/)

**摘要：**  
本文详细介绍了在Creative Sound Blaster Katana V2X音箱中发现的安全漏洞。作者对音箱专有的CTP协议及固件进行了逆向工程，发现以下问题：  

1. **无固件签名校验**——修改后的固件可通过USB直接刷写，无需认证，仅需修正SHA-256校验和（CHK2）。  
2. **蓝牙未授权访问**——任何人可在约15米范围内通过BLE连接音箱（无需配对）并发送CTP指令，包括读取数据、更改设置或升级固件。  
3. **远程攻击链**——攻击者可通过蓝牙上传自定义固件（耗时约10分钟），该固件能够：  
   - 添加HID键盘描述符（音箱本身已暴露USB HID接口）。  
   - 启动后注入按键操作（例如打开终端并执行命令）。  
   - 将音箱转变为隐蔽监听工具（内置麦克风）或“橡皮鸭”按键注入器——全程无需物理接触。  
4. **持久性攻陷**——恶意固件可禁用未来更新，且蓝牙即使在休眠模式下仍保持活跃且无法关闭。  

Creative公司无视该问题，声称不存在网络安全风险，且未发布补丁。作者创建了缓解补丁，可阻止蓝牙上的CTP通信（导致官方应用失效），并提供通过USB应用的修复工具。

---

## 10. Let's Encrypt的后量子未来

**原文标题**: A Post-Quantum Future for Let's Encrypt

**原文链接**: [https://letsencrypt.org/2026/06/03/pq-certs](https://letsencrypt.org/2026/06/03/pq-certs)

**摘要：**  
Let's Encrypt 正过渡至基于后量子安全认证的网络公钥基础设施（Web PKI），采用 **Merkle 树证书（MTCs）**。该方法应对量子计算机日益增长的威胁——这类计算机可实时伪造数字签名。尽管后量子加密已迫在眉睫（因“先收集、后解密”的风险），但认证已成为近期焦点，谷歌（2029年）、美国国家安全局（2030–2035年）及欧盟（2030年）均已设定最后期限。  

当前后量子签名方案（如ML-DSA）体积过大（例如签名达2,420字节，而当前仅为64–256字节），导致TLS握手失败及大规模性能下降。MTC通过将多个证书聚合至单一签名（“地标”）解决此问题，浏览器则独立学习地标。即便采用后量子算法，其握手数据量仍小于当前方案。透明度内置于设计中——每份证书均为已发布的Merkle树组成部分。  

Let's Encrypt 计划于2026年底搭建预演环境，2027年投入生产。变更将涉及签发、ACME协议、吊销及日志记录，但现有证书不受影响。该组织敦促服务器运维人员立即启用混合后量子密钥交换（X25519MLKEM768）以保护加密通信。此转型将逐步推进，需要浏览器、库及ACME客户端等更广泛生态系统的支持。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 2 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 3 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 4 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 5 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 6 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 7 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 8 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 9 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 10 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 11 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 12 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 13 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 14 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 15 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 16 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 17 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 18 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 19 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 20 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 21 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 22 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 23 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 24 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 25 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 26 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 27 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 28 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 29 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 30 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 31 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 32 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 33 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 34 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 35 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 36 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 37 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 38 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 39 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 40 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 41 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 42 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 43 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 44 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 45 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 46 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 47 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 48 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 49 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 50 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 51 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 52 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 53 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 54 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 55 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 56 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 57 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 58 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 59 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 60 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 61 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 62 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 63 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 64 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 65 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 66 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 67 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 68 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 69 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 70 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 71 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 72 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 73 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 74 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 75 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 76 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 77 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 78 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 79 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 80 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 81 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 82 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 83 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 84 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 85 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 86 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 87 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 88 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 89 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 90 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 91 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 92 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 93 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 94 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 95 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 96 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 97 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 98 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 99 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 100 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 101 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 102 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 103 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 104 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 105 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 106 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 107 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 108 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 109 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 110 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 111 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 112 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 113 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 114 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 115 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 116 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 117 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 118 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 119 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 120 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 121 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 122 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 123 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 124 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 125 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 126 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 127 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 128 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 129 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 130 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 131 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 132 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 133 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 134 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 135 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 136 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 137 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 138 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 139 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 140 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 141 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 142 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 143 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 144 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 145 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 146 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 147 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 148 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 149 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 150 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 151 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 152 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 153 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 154 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 155 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 156 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 157 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 158 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 159 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 160 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 161 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 162 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 163 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 164 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 165 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 166 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 167 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 168 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 169 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 170 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 171 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 172 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 173 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 174 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 175 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 176 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 177 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 178 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 179 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 180 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 181 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 182 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 183 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 184 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 185 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 186 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 187 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 188 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 189 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 190 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 191 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 192 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 193 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 194 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 195 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 196 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 197 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 198 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 199 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 200 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 201 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 202 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 203 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 204 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 205 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 206 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 207 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 208 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 209 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 210 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 211 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 212 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 213 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 214 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 215 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 216 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 217 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 218 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 219 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 220 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 221 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 222 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 223 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 224 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 225 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 226 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 227 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 228 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 229 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 230 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 231 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 232 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 233 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 234 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 235 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 236 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 237 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 238 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 239 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 240 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 241 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 242 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 243 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 244 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 245 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 246 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 247 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 248 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 249 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 250 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 251 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 252 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 253 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 254 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 255 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 256 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 257 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 258 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 259 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 260 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 261 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 262 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 263 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 264 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 265 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 266 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 267 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 268 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 269 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 270 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 271 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 272 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 273 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 274 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 275 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 276 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 277 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 278 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 279 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 280 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 281 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 282 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 283 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 284 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 285 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 286 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 287 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 288 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 289 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 290 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 291 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 292 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 293 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 294 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 295 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 296 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 297 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 298 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 299 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 300 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 301 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 302 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 303 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 304 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 305 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 306 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 307 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 308 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 309 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 310 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 311 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 312 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 313 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 314 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 315 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 316 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 317 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 318 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 319 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 320 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 321 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 322 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 323 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 324 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 325 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 326 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 327 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 328 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 329 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 330 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 331 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 332 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 333 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 334 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 335 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 336 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 337 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 338 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 339 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 340 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 341 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 342 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 343 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 344 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 345 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 346 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 347 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 348 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 349 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 350 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 351 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 352 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 353 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 354 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 355 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 356 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 357 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 358 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 359 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 360 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 361 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 362 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 363 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 364 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 365 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 366 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 367 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 368 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 369 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 370 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 371 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 372 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 373 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 374 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 375 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 376 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 377 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 378 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 379 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 380 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 381 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 382 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 383 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 384 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 385 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 386 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 387 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 388 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 389 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 390 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 391 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 392 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 393 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 394 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 395 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 396 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 397 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 398 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 399 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 400 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 401 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 402 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 403 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 404 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 405 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 406 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 407 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 408 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 409 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 410 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 411 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 412 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 413 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 414 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 415 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 416 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 417 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 418 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 419 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 420 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 421 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 422 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 423 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 424 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 425 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 426 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 427 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 428 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 429 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 430 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 431 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 432 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 433 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 434 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 435 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 436 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 437 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 438 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
