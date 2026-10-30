# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-31.md)

*最后自动更新时间: 2026-10-31 04:56:52*
## 1. My favourite PowerMac is a Nintendo Wii

**原文标题**: My favourite PowerMac is a Nintendo Wii

**原文链接**: [https://virtuallyfun.com/2026/10/29/my-favourite-powermac-is-a-nintendo-wii/](https://virtuallyfun.com/2026/10/29/my-favourite-powermac-is-a-nintendo-wii/)

文章之前已经处理过

---

## 2. Northflank平台遭安全入侵

**原文标题**: Northflank Breached

**原文链接**: [https://status.northflank.com](https://status.northflank.com)

2026年10月30日，云平台Northflank发生重大安全事件，其环境变量疑似被解密，多个用户确认AI密钥已被盗用。事件始于当日11:43（UTC）Wiz系统发出威胁警报，随后工程师于11:44开始处置，12:02起部署网络策略补丁，13:00向Wiz CIRT请求安全支持。截至15:28，调查仍在进行。Northflank已为Postgres和MongoDB启用密钥轮换功能，建议所有用户立即轮换workloads、secret groups及global secrets中的所有凭据，并关闭Addons的公开访问。平台9大组件中，网络、证书、服务、Addons、任务、构建及日志指标等7项处于"重大中断"状态，整体正常运行率为99.64%；而Northflank应用、API及文档站点仍保持正常运行。官方提醒用户：在进一步调查结果确认前，须视所有环境变量为已泄露状态，立即执行密钥轮换。

---

## 3. Cursor市场中Claude Code VS Code扩展被植入持久化SSH后门

**原文标题**: Backdoor in Claude Code for VS Code extension on the Cursor Marketplace

**原文链接**: [https://phorion.io/blog/offical-claude-code-vsx-compromise/](https://phorion.io/blog/offical-claude-code-vsx-compromise/)

Phorion发现Cursor市场中Claude Code for VS Code扩展（v2.1.313）被植入跨平台SSH后门，Cursor已紧急下架。攻击者通过注入IIFE，在扩展加载时即执行恶意代码，无需用户交互。感染链包含四个阶段：将攻击者Ed25519公钥写入authorized_keys；建立指向134.209.82.225的反向SSH隧道实现隐蔽远程访问；通过LaunchAgent（macOS）、crontab（Linux）或启动项（Windows）设置持久化；向攻击者发送主机侦察beacon（含环境变量名等线索）。macOS路径存在关键缺陷：systemsetup -getremotelogin在无管理员权限时报错而非返回"Off"，导致脚本跳过启用SSH步骤，若目标未开启Remote Login则隧道无法回连，但持久化文件仍会写入，一旦SSH被开启后门即刻激活。检测应重点关注IDE进程修改authorized_keys、非Apple进程创建com.apple.*标签的plist文件、异常SSH远程端口转发及向该IP的出站连接。组织应立即排查使用记录，卸载扩展后须彻底清理残留的SSH密钥、隧道脚本及所有持久化机制。

---

## 4. 展示 HN：在约 1GB Qwen 权重中运行一台任天堂

**原文标题**: Show HN: A working Nintendo in ~1GB of Qwen weights

**原文链接**: [https://github.com/dbreunig/nesformer](https://github.com/dbreunig/nesformer)

nesformer 将 NES 的 6502 CPU 完整编译进 Qwen3.5-4B 模型权重，无需训练，由编译器逐参数计算生成。核心思路是复用 Qwenputer 的 Gated DeltaNet 状态矩阵作为机器内存：每个矩阵行即为一个存储单元，6502 寄存器、2KB 工作 RAM 与 32KB 程序 ROM 全部驻留其中。模型逐 token 输出 CPU 执行日志，宿主程序负责 PPU 渲染、控制器读取与 vblank 中断注入。项目支持 NROM（mapper 0）卡带，可运行超级玛丽、大金刚等经典游戏，画面与标准 6502 模拟器逐帧一致。权重共 466.6M 参数（bf16 约 933MB），非零参数仅 9.3M，压缩后仅 3.3MB，且可直接用 Hugging Face 标准接口加载。当前局限包括：仅支持 NROM，无法处理 MMC1/MMC3 等换页机制；不支持非官方指令与 APU 声音；PPU 逐扫描线渲染，部分精灵效果为近似。性能上，numba 引擎约 1,650 token/s，600 帧（10 秒游戏时间）需约 25 分钟，比真实 NES 慢 150–290 倍。项目基于 Divyansh Agrawal 的 Qwenputer，采用 MIT 协议开源。

---

## 5. Bunny CDN 安全事件通报

**原文标题**: Bunny CDN Security Incident

**原文链接**: [https://status.bunny.net/incidents/p6gf1by9kr7m](https://status.bunny.net/incidents/p6gf1by9kr7m)

2026年10月28日，Bunny.net发布安全事件通报：其一家基础设施供应商报告，位于亚美尼亚的一台CDN节点服务器因第三方服务器管理软件遭非法入侵而受影响。Bunny.net工程团队在20分钟内切断该节点流量，随即完成日志保全、安全擦除及权限吊销，该服务器已被永久移除。双方调查均未发现节点数据被非法访问的证据，但无法完全排除可能性。潜在暴露信息包括临时缓存的CDN内容、Pull Zone配置及该服务器上的TLS证书。作为预防，Bunny.net已撤销并重新签发平台域名（b-cdn.net、bunny.run）的全部TLS证书，客户自定义域名的托管证书正分批重新签发，预计10月31日前完成；使用托管证书的客户无需任何操作。自行管理证书的用户建议尽快撤销并以新私钥重新签发。客户账号数据未存储于该服务器，内部系统亦未受影响。

---

## 6. 限制开放网络无法遏制恶意爬虫

**原文标题**: Breaking the open web won't stop the bad bots

**原文链接**: [https://www.techpolicy.press/breaking-the-open-web-wont-stop-the-bad-bots/](https://www.techpolicy.press/breaking-the-open-web-wont-stop-the-bad-bots/)

摘要：面对AI开发者大规模抓取网络内容引发的流量激增与广告收入损失，超300名媒体代表推动国会审议《隐形机器人禁止法案》。该法案要求所有自动访问网站者披露身份及目的，违者可面临数万美元罚款。文章作者指出，法案并未直接针对有害抓取行为，反而会威胁记者、研究人员和档案管理员等合法使用爬虫工具的群体。华尔街日报曾借助爬虫完成普利策获奖调查，互联网档案馆则依靠爬虫归档逾万亿网页。法案存在定义模糊问题：披露身份无法判断行为是否有害，且会破坏调查所需的匿名性。此外，强制身份识别有违第一修正案对接收信息自由的保护。文章认为，现有隐私法、版权法和消费者保护法已能应对多数非法数据使用；政策制定者应支持IETF等技术机构开发匿名行为认证协议，而非仓促立法。若确需新法，责任应当基于造成可量化损害的行为，而非抓取者的匿名状态。开放网络的基石在于公民无需逐一寻求许可即可自由获取、分析和保存公共信息，匿名本身不应成为被规制的对象。

---

## 7. Florilegium：LaTeX 中的程序化花卉边饰

**原文标题**: Florilegium: Procedural Flowers in LaTeX

**原文链接**: [https://github.com/kevinraymond/florilegium](https://github.com/kevinraymond/florilegium)

Florilegium 是一个 LaTeX 宏包，在页面边栏程序化生成德尔夫特蓝风格花卉装饰。所有花瓣、叶片与茎干均由 Lua 在排版时计算的参数化曲线构成，以水彩笔触渲染并直接写入 PDF，无任何图片或外部资源。项目含两种模式：手摆模式以预设控制点布置植物；生长模式借鉴 1998 年 Wong 等人 SIGGRAPH 论文的空间填充思路，以贪心算法反复选取最大空白圆盘、向空隙延伸分支，自动填满文本留出的空间。边饰可响应正文：支持从 OpenType 字体提取首字母轮廓并饰以藤蔓、在标题或指定行旁添加花卉，以及按页数实现从春蕾到秋籽的季节渐变。各页随机配有蝴蝶、蜜蜂、蜗牛或小鸟等"访客"。整套配色由单一 ink 色在 OKLCH 空间派生色阶，浅端不偏灰。另附纯 PostScript 版本，Ghostscript 可直接渲染，无需 TeX。构建仅需 LuaLaTeX 一次通过，每页约一秒。

---

## 8. 联邦代码锻造台

**原文标题**: The federated code forge

**原文链接**: [https://tangled.org/blog/forge/](https://tangled.org/blog/forge/)

Tangled 是首个基于 AT Protocol 的联邦式代码托管平台，兼顾开放协议的持久性与中心化平台的便捷体验。用户可自由自托管 Git 服务、CI 运行器乃至全部基础设施，同时与生态内所有人无缝协作。本次重大更新包括：UI 全面重构为 Svelte 前端并部署至全球边缘节点；架构由原 Go 单体拆分为独立前端与 Rust 编写的 bobbin 内存索引服务，覆盖 11 个以上区域；knot2 将 Git 与 SSH 服务合入单一二进制。数据模型上，Issues、Pull Request、评论等以协作对象（COB）形式直接写入 knot，与代码同生命周期，极大提升项目可移植性，并通过 PDS 上的 attestation 记录实现双向防篡改验证。此外，组织账户已上线，基于真实 AT Protocol 账户支持团队管理；堆叠 PR 流程全面优化，Git 与 Jujutsu 用户均可提交和审查堆叠变更。后续还将陆续推出私有仓库、CLI、多语言 SDK 及 Agent 技能。Tangled 以开发者主权和开放协议为基石，力求成为未来十年的代码托管首选。

---

## 9. 构建AI原生工程组织

**原文标题**: Building an AI-native engineering org

**原文链接**: [https://twitter.com/sgondala2/status/2115832070274723875](https://twitter.com/sgondala2/status/2115832070274723875)

本文探讨了如何打造以AI为核心驱动力的工程组织。与传统"在既有流程中嵌入AI工具"的思路不同，AI原生组织从架构设计、团队协作到技术选型，均以AI能力为第一性原则进行重构。作者Sashank Gondala指出，关键在于将AI从辅助工具提升为组织基础设施，使工程师的工作重心从手写代码转向问题定义、系统编排与结果验证。文章围绕以下维度展开：一是组织结构上，打破按语言或功能划分的传统团队边界，转向以AI能力域为核心的敏捷单元；二是人才角色上，强调工程师需具备AI系统设计、提示工程及模型评估能力，"AI编排者"逐步替代"代码工人"成为核心角色；三是文化流程上，倡导以迭代实验取代瀑布式开发，将AI反馈回路嵌入CI/CD全生命周期；四是治理安全上，在加速创新的同时建立模型风险管控与数据合规机制。总体而言，构建AI原生工程组织并非单纯的技术升级，而是一次从底层逻辑出发的组织范式转移，要求领导层在战略、人才与文化层面同步推进变革。

---

## 10. 无限Mac：BeOS

**原文标题**: Infinite Mac: BeOS

**原文链接**: [https://blog.persistent.info/2026/10/infinite-mac-beos.html](https://blog.persistent.info/2026/10/infinite-mac-beos.html)

无限Mac网站现已支持在浏览器中运行多个版本的BeOS，用户可即时启动、安装预置软件、挂载光盘镜像并保存工作。BeOS是一款以多媒体为核心的多任务多线程操作系统，曾被移植至Power Macintosh，Apple甚至一度考虑收购其开发商Be公司，因此可视为苹果"未走之路"的一瞥。技术上，作者依托DingusPPC模拟器，解决了一系列兼容性问题，包括ADB按键模拟缺陷、屏幕深度切换中显示控制器与数模芯片的通知顺序、早期版本的小端视频更新以及HFS分区数据校验等，大幅提升了模拟器硬件模拟精度，目前DingusPPC可能是唯一能运行PowerPC版BeOS的模拟器。体验上，BeOS启动与操作极快，POSIX子系统和类Unix终端颇具现代感，但系统整体偏开发者导向，自带应用多为技术演示，第三方软件也普遍处于早期阶段。其UI兼具创新与折中：标签式窗口标题、手部默认光标、类Windows的Deskbar与Mac式Finder Tracker并存。与NeXTStep相比，NeXT在成熟度和跨架构支持上更胜一筹。此外，本次更新还新增了截屏与录屏功能，收录了Rhapsody及Mac OS X开发者预览光盘，并将镜像迁移至自托管服务以保障稳定性。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 2 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 3 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 4 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 5 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 6 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 7 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 8 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 9 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 10 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 11 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 12 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 13 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 14 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 15 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 16 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 17 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 18 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 19 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 20 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 21 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 22 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 23 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 24 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 25 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 26 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 27 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 28 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 29 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 30 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 31 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 32 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 33 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 34 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 35 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 36 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 37 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 38 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 39 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 40 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 41 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 42 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 43 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 44 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 45 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 46 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 47 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 48 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 49 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 50 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 51 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 52 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 53 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 54 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 55 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 56 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 57 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 58 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 59 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 60 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 61 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 62 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 63 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 64 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 65 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 66 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 67 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 68 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 69 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 70 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 71 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 72 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 73 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 74 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 75 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 76 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 77 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 78 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 79 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 80 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 81 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 82 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 83 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 84 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 85 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 86 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 87 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 88 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 89 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 90 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 91 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 92 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 93 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 94 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 95 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 96 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 97 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 98 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 99 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 100 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 101 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 102 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 103 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 104 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 105 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 106 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 107 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 108 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 109 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 110 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 111 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 112 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 113 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 114 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 115 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 116 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 117 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 118 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 119 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 120 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 121 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 122 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 123 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 124 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 125 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 126 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 127 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 128 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 129 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 130 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 131 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 132 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 133 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 134 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 135 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 136 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 137 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 138 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 139 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 140 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 141 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 142 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 143 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 144 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 145 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 146 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 147 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 148 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 149 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 150 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 151 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 152 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 153 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 154 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 155 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 156 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 157 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 158 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 159 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 160 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 161 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 162 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 163 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 164 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 165 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 166 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 167 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 168 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 169 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 170 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 171 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 172 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 173 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 174 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 175 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 176 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 177 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 178 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 179 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 180 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 181 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 182 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 183 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 184 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 185 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 186 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 187 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 188 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 189 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 190 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 191 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 192 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 193 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 194 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 195 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 196 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 197 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 198 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 199 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 200 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 201 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 202 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 203 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 204 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 205 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 206 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 207 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 208 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 209 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 210 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 211 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 212 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 213 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 214 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 215 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 216 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 217 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 218 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 219 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 220 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 221 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 222 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 223 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 224 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 225 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 226 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 227 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 228 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 229 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 230 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 231 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 232 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 233 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 234 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 235 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 236 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 237 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 238 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 239 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 240 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 241 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 242 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 243 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 244 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 245 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 246 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 247 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 248 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 249 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 250 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 251 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 252 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 253 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 254 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 255 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 256 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 257 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 258 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 259 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 260 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 261 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 262 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 263 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 264 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 265 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 266 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 267 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 268 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 269 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 270 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 271 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 272 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 273 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 274 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 275 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 276 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 277 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 278 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 279 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 280 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 281 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 282 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 283 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 284 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 285 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 286 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 287 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 288 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 289 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 290 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 291 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 292 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 293 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 294 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 295 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 296 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 297 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 298 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 299 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 300 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 301 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 302 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 303 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 304 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 305 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 306 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 307 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 308 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 309 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 310 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 311 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 312 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 313 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 314 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 315 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 316 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 317 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 318 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 319 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 320 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 321 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 322 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 323 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 324 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 325 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 326 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 327 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 328 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 329 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 330 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 331 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 332 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 333 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 334 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 335 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 336 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 337 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 338 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 339 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 340 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 341 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 342 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 343 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 344 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 345 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 346 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 347 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 348 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 349 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 350 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 351 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 352 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 353 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 354 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 355 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 356 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 357 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 358 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 359 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 360 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 361 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 362 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 363 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 364 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 365 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 366 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 367 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 368 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 369 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 370 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 371 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 372 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 373 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 374 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 375 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 376 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 377 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 378 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 379 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 380 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 381 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 382 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 383 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 384 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 385 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 386 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 387 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 388 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 389 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 390 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 391 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 392 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 393 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 394 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 395 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 396 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 397 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 398 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 399 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 400 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 401 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 402 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 403 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 404 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 405 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 406 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 407 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 408 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 409 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 410 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 411 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 412 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 413 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 414 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 415 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 416 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 417 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 418 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 419 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 420 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 421 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 422 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 423 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 424 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 425 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 426 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 427 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 428 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 429 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 430 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 431 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 432 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 433 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 434 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 435 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 436 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 437 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 438 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 439 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 440 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 441 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 442 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 443 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 444 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 445 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 446 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 447 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 448 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 449 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 450 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 451 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 452 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 453 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 454 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 455 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 456 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 457 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 458 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 459 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 460 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 461 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 462 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 463 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 464 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 465 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 466 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 467 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 468 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 469 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 470 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 471 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 472 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 473 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 474 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 475 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 476 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 477 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 478 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 479 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 480 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 481 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 482 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 483 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 484 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 485 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 486 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 487 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 488 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 489 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 490 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 491 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 492 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 493 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 494 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 495 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 496 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 497 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 498 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 499 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 500 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 501 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 502 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 503 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 504 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 505 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 506 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 507 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 508 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 509 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 510 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 511 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 512 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 513 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 514 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 515 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 516 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 517 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 518 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 519 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 520 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 521 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 522 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 523 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 524 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 525 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 526 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 527 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 528 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 529 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 530 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 531 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 532 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 533 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 534 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 535 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 536 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 537 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 538 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 539 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 540 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 541 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 542 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 543 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 544 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 545 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 546 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 547 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 548 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 549 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 550 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 551 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 552 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 553 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 554 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 555 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 556 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 557 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 558 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 559 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 560 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 561 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 562 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 563 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 564 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 565 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 566 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 567 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 568 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 569 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 570 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 571 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 572 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 573 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 574 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 575 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 576 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 577 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 578 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 579 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 580 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 581 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 582 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 583 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 584 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 585 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 586 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
