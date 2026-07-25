# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-25.md)

*最后自动更新时间: 2026-07-25 20:38:33*
## 1. 在明尼苏达州莫里斯利用风力生产氨和肥料

**原文标题**: Producing ammonia and fertiliser using wind power in Morris, Minnesota

**原文链接**: [https://ammoniaenergy.org/articles/flexible-renewable-ammonia-demonstrator-now-operational-in-minnesota/](https://ammoniaenergy.org/articles/flexible-renewable-ammonia-demonstrator-now-operational-in-minnesota/)

明尼苏达州莫里斯市的一座开创性设施已启动首个低碳氨生产季，目标日产一吨用于本地肥料。风力涡轮机为电解槽供电，向哈伯-博施工厂供应氢气，创新控制系统可调整生产速率以应对波动的可再生能源。该项目位于明尼苏达大学西中央研究与推广中心，由明尼苏达大学、RTI国际和卡萨莱合作完成。它基于2013年的试点项目进行规模扩展，未来可发展为由农民合作社所有的商业可再生氨中心。氨可储存或与乙醇生产的二氧化碳结合生产尿素，这是明尼苏达州最常用的肥料。研究人员强调了经济效益：本地生产可负担的氮肥，减少供应链不稳定，并通过动态工厂运行以最小化昂贵的氢气储存。该项目在AEA的2025年12月期节目中详细介绍。

---

## 2. 被偷的纽扣

**原文标题**: Stolen Buttons

**原文链接**: [https://anatolyzenkov.com/stolen-buttons](https://anatolyzenkov.com/stolen-buttons)

提供的文本中并没有一篇题为“Stolen Buttons”的连贯文章。相反，它似乎是来自多个网站的界面元素、促销信息和菜单项的杂乱集合。关键片段包括：

- **自动墨水配送**：一种在耗材不足时自动发送打印机墨水或碳粉的服务，附带免费注册优惠和条款。  
- **Schulranzen Timeless**：Airpaq 出品的一款轻便、宽敞的学生背包，以德语描述，可选择配置、购买或了解更多。  
- **Adobe After Effects**：与瑞典语的“DesignShowcase”一同提及，可能是一个设计或教程资源。  
- **登录/注册提示**：多处呼吁注册、登录、创建账户或管理购物车，通常与高级功能、试用或社区帖子相关。  
- **其他杂项**：诸如“访问 Reddit”“浏览组件”“了解热力图”“参见 MLA 格式指南”等短语，表明内容混杂了电商、设计和教育材料。

不存在关于被盗纽扣的中心叙事或文章。这段文本似乎是粘贴自一个杂乱的网页或界面流程，而非结构化的文章。

---

## 3. 展示HN：Proxmox → 通过网络将主机的蓝牙共享给虚拟机

**原文标题**: Show HN: Proxmox -> Share your host's Bluetooth with a VM over the network

**原文链接**: [https://github.com/lucid-fabrics/proxmox-bluetooth](https://github.com/lucid-fabrics/proxmox-bluetooth)

本文介绍了一种解决Proxmox Linux虚拟机蓝牙直通问题的工具，尤其针对英特尔板载芯片（BE200、AX210、AX211）在分配给虚拟机时重置的问题。该方案不采用直接直通，而是让宿主机保留蓝牙芯片，并利用BlueZ的`btproxy`将原始HCI数据通过本地网络流式传输到虚拟机，虚拟机将识别为一个正常适配器。

**关键要点：**
- **问题：** 英特尔CNVi蓝牙芯片物理上需要宿主机驱动加载固件；任何虚拟机移交都会导致芯片擦除。游戏发行版（ChimeraOS、Bazzite）同样面临此问题。
- **解决方案：** 两条命令：在Proxmox宿主机上执行（`curl ... | sudo bash`）以共享适配器；在虚拟机内部执行（`curl ... | sudo bash -s -- <主机IP>`）以连接。两者均支持开机自启和自动重连。
- **兼容性：** 适用于所有Linux支持的蓝牙芯片（英特尔、联发科、USB适配器），但固件损坏的芯片（如Barrot）除外。支持手柄、耳机、BLE传感器。
- **性能：** 延迟增加不到1毫秒，无明显卡顿。
- **限制：** 每次仅支持一台虚拟机（每颗芯片）；仅限Linux客户机；共享期间宿主机失去本地蓝牙功能。
- **恢复：** 若英特尔芯片看似失效，请完全断电重启设备（关闭电源开关15秒）。针对ChimeraOS/Bazzite挂起问题，请屏蔽休眠目标。

该工具采用MIT许可，开源设计，专为无需购置新硬件、在虚拟机中需要蓝牙功能的家用实验室用户打造。

---

## 4. Android或很快限制设备端ADB

**原文标题**: Android May Soon Restrict On-Device ADB

**原文链接**: [https://kitsumed.github.io/blog/posts/android-may-soon-restrict-on-device-adb/](https://kitsumed.github.io/blog/posts/android-may-soon-restrict-on-device-adb/)

该文章讨论了Android的一项拟议变更，旨在将设备端ADB连接（环回）限制为仅通过Wi-Fi接口（wlan0），这一提议基于谷歌IssueTracker上一位ADB维护者以安全为由的评论。作者Kitsumed（基于Shizuku的应用开发者）解释道，ADB（Android调试桥）允许高权限的开发者交互。设备端ADB使用户能够通过环回在同一设备上运行ADB客户端和服务器，从而支持Shizuku、应用管理器和通话录音等工具。

该拟议变更旨在阻止恶意应用利用权限提升漏洞。然而，作者认为，如果没有用户明确的操作（启用USB调试、授权连接或配对），设备端ADB无法被利用。三种场景表明，恶意应用无法启动ADBD或绕过手动审批。因此，限制环回将破坏合法用途——如没有电脑的开发者、无障碍工具和高级用户应用——而不会带来真正的安全收益。

作者建议提供一个持久化开关（重启后仍保留）以允许环回ADB，而非永久封禁。他们强调，因假设性风险而禁用该功能是不成比例的，类似于尽管设备管理或无障碍功能可能被滥用但仍然保留它们。鼓励在问题跟踪器上提供建设性反馈，但应避免垃圾信息。

---

## 5. 开放权重AI迎来其Kubernetes时刻

**原文标题**: Open-weight AI is having its Kubernetes moment

**原文链接**: [https://tobi.knaup.me/2026-07-25-open-weight-ai-is-having-its-kubernetes-moment/](https://tobi.knaup.me/2026-07-25-open-weight-ai-is-having-its-kubernetes-moment/)

该文章认为，开放权重AI模型正迎来一个“Kubernetes时刻”——一个开放、可定制的平台能够吸引远超任何单一供应商所能实现的创新。作者结合自己联合创办Mesosphere（被Kubernetes颠覆）的经验指出，开放权重模型（如Qwen、Gemma、GLM-5.2、Kimi K3）现已接近前沿性能，催生了一个日益壮大的生态系统，涵盖推理工具、微调及各类专业适配。这一生态系统的累积效应，使得封闭模型很难长期超越它。

作者批评了美国拟禁止中国开放权重模型的提议，称其为“自摆乌龙”，因为这将孤立美国开发者，而世界其他国家却正基于这些模型进行创新——中国模型已占Hugging Face下载量的41%。相反，美国应该通过以下方式展开竞争：发布采用宽松许可的顶级美国开放权重模型；通过政府采购推动互操作、可移植的系统；建设配套技术栈（推理、工具、硬件）；通过独立测试而非全面禁令来制定安全标准。核心信息是：开放生态系统驱动创新；美国应当通过参与而非筑墙来引领。

---

## 6. 展示HN：我制作了一些晶体管动画

**原文标题**: Show HN: I made some transistor animations

**原文链接**: [https://brandonli.net/semisim/animations](https://brandonli.net/semisim/animations)

本文介绍了一种半导体模拟器，可生成三种晶体管类型的动画：NPN双极结型晶体管、n沟道金属氧化物半导体场效应晶体管和n沟道结型场效应晶体管。动画中，蓝点和红点分别代表电子和空穴，白色闪烁表示复合事件。

提供了三组动画：

1. **基于速度**：载流子速度等于扩散电流与漂移电流之和除以总电荷；扩散过程未显式展示。
2. **扩散与漂移**：载流子通过扩散和漂移两种方式运动，呈现最精确的描绘，但视觉上更为复杂。
3. **探针测量**：显示各端点的电流和电压。

该模拟器允许用户比较不同的可视化方法，以理解这些半导体器件中的载流子运动和端点行为。

---

## 7. Show HN：Brolly，一个纯文本天气预报网站

**原文标题**: Show HN: Brolly, a plain-text weather forecast site

**原文链接**: [https://brolly.sh/forecast/RWFP2qW8](https://brolly.sh/forecast/RWFP2qW8)

**摘要：**  
Brolly 是一个极简主义纯文本天气预报网站（brolly.sh），由来自英国约克的 Jacob 创建。它以清晰、类似终端的布局展示当前天气状况、每日/每周展望以及详细的逐小时数据，涵盖温度、风力、降水、紫外线指数、空气质量和花粉浓度。示例显示了英格兰约克的预报，数据来自 Open-Meteo。主要功能包括“更改位置”选项、日期间导航以及降水和紫外线的可视化条。该网站提供搜索、统计、关于和隐私页面。联系方式：hello@brolly.sh。

---

## 8. 我的图像如何被抖动

**原文标题**: How My Images Are Dithered

**原文链接**: [https://dead.garden/blog/how-my-images-are-dithered.html](https://dead.garden/blog/how-my-images-are-dithered.html)

本文介绍了作者使用ImageMagick为图像赋予印刷般抖动效果的方法，具体采用粉红色单色美学。其目标是模拟AM（幅度调制）半色调——通过改变点的大小来表现色调——尽管该技术并不改变点的大小，而是在叠加旋转网点图案后进行减色处理。

操作流程：将图像转换为CMYK，分离出四个颜色通道，应用带高斯滤波的2×2图案背景，然后对每个通道进行失真（旋转）处理（角度分别为0°、15°、45°、75°）以避免莫尔条纹，叠加各通道，最后限制颜色数量。旧方法在转换为灰度后将颜色缩减为两种（黑色和粉色），模拟出伪AM效果。新方法使用`-remap`允许多种粉色色调，增强了层次感。作者承认此方法效率不高——可能导致文件体积增大，并在老旧CPU上耗时约10秒——纯粹是为了美学效果。示例显示浅色图像需要手动调整（亮度、反转）。文章包含完整的shell脚本，并指出真正的弗洛伊德-斯坦伯格抖动算法能生成更小的文件。该博文标记为元/代码，发布于德国埃尔福特。

---

## 9. Bitchat现已上线Radicle

**原文标题**: Bitchat is now on Radicle

**原文链接**: [https://radicle.network/nodes/rosa.radicle.network/rad%3Az2v9tRJz1oknFAqCSY5W5c76nVvm6](https://radicle.network/nodes/rosa.radicle.network/rad%3Az2v9tRJz1oknFAqCSY5W5c76nVvm6)

文章“Bitchat现已上线Radicle”仅显示一条通知，指出用户浏览器禁用了JavaScript。通知说明必须启用JavaScript才能使用该网站。由于页面无法在没有JavaScript的情况下加载，因此未提供有关Bitchat或Radicle的更多内容或详细信息。核心信息是该网站需要JavaScript功能才能访问。

---

## 10. 将 PyTorch Monarch 引入 AMD GPU

**原文标题**: Bringing PyTorch Monarch to AMD GPUs

**原文链接**: [https://pytorch.org/blog/bringing-pytorch-monarch-to-amd-gpus-single-controller-distributed-training-on-rocm/](https://pytorch.org/blog/bringing-pytorch-monarch-to-amd-gpus-single-controller-distributed-training-on-rocm/)

本文介绍了将 PyTorch Monarch 移植到基于 ROCm 的 AMD Instinct GPU 上，以实现大语言模型的容错分布式训练。解决的关键挑战包括：传统检查点机制浪费计算资源、导致集群空闲时间，并且随着故障概率上升而无法扩展。Monarch 引入了一种基于单程序、角色（actor）的运行时，通过监督树实现分层故障隔离来管理 GPU 集群，支持快速本地恢复，无需全局重启。

移植过程中需要借助 `hipify_torch` 和 RCCL 适配集体通信，通过 HIP 等价接口管理 GPU 内存，以及使用带有 HIP 绑定的 `libibverbs` 集成 RDMA。Rust 绑定通过兼容性垫片避免分叉。开源贡献确保了对 ROCm 7.0+ 的支持。

在 16 节点 SLURM 集群（128 个 MI300 GPU）和 32 节点 Kubernetes 集群（256 个 MI355 GPU）上进行的实验训练了 Llama 3 8B 模型。尽管频繁注入故障（每 180 秒一次），训练仍无缝进行：活跃工作节点数虽有波动，但恢复迅速，损失曲线与无全局检查点重启的基准运行保持一致。

未来工作包括扩展网卡支持、支持更多框架以及优化恢复延迟。与 TorchTitan 和 TorchFT 的集成展示了一个面向 AMD GPU 的生产级、高弹性训练栈。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 2 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 3 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 4 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 5 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 6 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 7 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 8 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 9 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 10 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 11 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 12 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 13 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 14 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 15 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 16 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 17 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 18 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 19 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 20 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 21 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 22 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 23 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 24 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 25 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 26 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 27 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 28 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 29 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 30 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 31 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 32 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 33 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 34 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 35 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 36 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 37 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 38 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 39 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 40 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 41 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 42 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 43 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 44 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 45 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 46 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 47 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 48 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 49 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 50 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 51 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 52 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 53 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 54 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 55 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 56 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 57 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 58 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 59 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 60 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 61 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 62 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 63 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 64 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 65 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 66 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 67 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 68 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 69 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 70 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 71 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 72 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 73 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 74 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 75 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 76 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 77 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 78 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 79 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 80 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 81 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 82 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 83 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 84 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 85 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 86 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 87 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 88 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 89 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 90 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 91 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 92 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 93 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 94 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 95 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 96 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 97 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 98 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 99 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 100 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 101 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 102 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 103 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 104 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 105 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 106 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 107 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 108 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 109 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 110 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 111 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 112 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 113 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 114 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 115 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 116 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 117 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 118 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 119 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 120 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 121 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 122 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 123 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 124 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 125 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 126 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 127 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 128 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 129 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 130 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 131 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 132 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 133 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 134 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 135 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 136 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 137 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 138 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 139 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 140 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 141 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 142 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 143 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 144 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 145 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 146 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 147 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 148 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 149 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 150 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 151 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 152 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 153 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 154 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 155 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 156 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 157 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 158 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 159 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 160 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 161 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 162 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 163 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 164 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 165 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 166 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 167 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 168 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 169 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 170 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 171 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 172 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 173 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 174 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 175 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 176 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 177 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 178 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 179 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 180 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 181 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 182 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 183 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 184 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 185 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 186 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 187 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 188 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 189 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 190 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 191 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 192 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 193 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 194 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 195 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 196 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 197 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 198 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 199 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 200 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 201 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 202 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 203 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 204 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 205 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 206 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 207 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 208 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 209 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 210 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 211 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 212 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 213 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 214 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 215 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 216 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 217 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 218 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 219 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 220 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 221 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 222 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 223 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 224 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 225 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 226 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 227 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 228 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 229 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 230 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 231 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 232 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 233 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 234 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 235 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 236 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 237 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 238 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 239 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 240 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 241 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 242 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 243 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 244 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 245 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 246 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 247 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 248 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 249 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 250 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 251 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 252 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 253 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 254 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 255 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 256 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 257 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 258 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 259 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 260 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 261 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 262 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 263 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 264 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 265 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 266 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 267 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 268 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 269 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 270 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 271 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 272 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 273 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 274 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 275 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 276 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 277 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 278 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 279 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 280 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 281 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 282 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 283 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 284 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 285 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 286 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 287 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 288 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 289 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 290 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 291 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 292 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 293 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 294 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 295 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 296 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 297 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 298 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 299 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 300 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 301 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 302 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 303 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 304 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 305 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 306 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 307 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 308 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 309 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 310 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 311 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 312 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 313 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 314 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 315 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 316 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 317 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 318 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 319 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 320 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 321 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 322 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 323 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 324 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 325 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 326 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 327 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 328 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 329 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 330 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 331 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 332 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 333 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 334 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 335 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 336 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 337 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 338 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 339 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 340 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 341 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 342 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 343 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 344 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 345 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 346 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 347 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 348 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 349 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 350 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 351 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 352 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 353 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 354 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 355 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 356 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 357 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 358 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 359 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 360 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 361 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 362 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 363 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 364 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 365 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 366 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 367 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 368 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 369 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 370 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 371 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 372 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 373 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 374 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 375 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 376 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 377 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 378 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 379 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 380 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 381 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 382 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 383 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 384 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 385 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 386 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 387 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 388 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 389 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 390 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 391 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 392 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 393 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 394 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 395 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 396 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 397 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 398 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 399 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 400 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 401 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 402 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 403 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 404 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 405 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 406 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 407 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 408 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 409 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 410 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 411 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 412 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 413 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 414 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 415 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 416 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 417 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 418 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 419 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 420 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 421 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 422 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 423 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 424 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 425 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 426 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 427 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 428 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 429 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 430 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 431 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 432 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 433 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 434 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 435 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 436 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 437 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 438 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 439 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 440 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 441 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 442 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 443 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 444 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 445 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 446 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 447 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 448 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 449 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 450 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 451 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 452 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 453 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 454 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 455 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 456 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 457 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 458 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 459 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 460 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 461 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 462 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 463 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 464 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 465 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 466 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 467 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 468 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 469 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 470 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 471 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 472 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 473 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 474 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 475 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 476 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 477 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 478 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 479 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 480 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 481 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 482 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 483 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 484 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 485 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 486 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 487 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 488 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
