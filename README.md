# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-06.md)

*最后自动更新时间: 2026-11-06 04:58:08*
## 1. Unix里的鬼账户

**原文标题**: sshole

**原文链接**: [https://sshhole.com](https://sshhole.com)

摘要：1980年代早期Unix系统中，用户密码哈希直接明文存放于/etc/passwd，与用户名并存，任何人均可读取，安全性极为薄弱。同年，BSD核心开发者比尔·乔伊在该文件中为daemon（守护进程）账户做了一件颇具风格的事：将密码字段填为星号"*"。星号并非合法哈希值，无论输入何种密码都无法通过校验，等于永久封死了以该账户登录的可能——而daemon本就不供人类登录，这一设计既简洁又巧妙，且沿用至今。更妙的是，紧随其后的"真实姓名"字段里，乔伊填了"the devil himself"（魔鬼本尊），在严肃的系统中藏了一记冷幽默。这段出自3BSD /etc/passwd的史料，是Unix早期开发者自由不羁、戏谑自嘲精神的缩影。

---

## 2. Alpine Linux 安全公告：OpenSSH 服务器密码认证绕过漏洞

**原文标题**: Alpine Linux Security Advisory: OpenSSH-server password authentication bypass

**原文链接**: [https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/](https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/)

2026年11月5日，Alpine Linux 发布安全公告，披露 OpenSSH 服务器密码认证绕过漏洞。攻击者仅需一次 SSH 连接，发送 257 至 1024 字节的超长密码即可绕过认证，无需任何密码。根源在于 musl 的 crypt() 函数对超过 256 字节的输入返回"*"，恰好与无密码账户的存储字段一致，导致登录成功。受影响条件：运行无 PAM 的 openssh-server（或 UsePAM no）、PasswordAuthentication 为 yes、存在密码字段为 * 的账户（如 root 或 key-only 用户），且系统至少有一个 $5$ 或 $6$ 哈希账户。Alpine 3.16 至 3.24 及 edge 均受影响，tiny-cloud 镜像中的 alpine 用户尤为突出。修复方案：升级至 3.21.10、3.22.8、3.23.8、3.24.4 等含补丁版本并重启 sshd；若暂无法升级，须将 PasswordAuthentication 设为 no。检测建议：在 /var/log/messages 中查找无密码账户的密码登录记录，排查 doas 使用及新创建用户。该漏洞暂未分配 CVE 编号，由 Özgün Kültekin 发现。

---

## 3. 黑苹果重生：AI 时代的复兴

**原文标题**: The Hackintosh Reborn

**原文链接**: [https://www.naut.ca/blog/2026/11/05/the-hackintosh-reborn-with-ai/](https://www.naut.ca/blog/2026/11/05/the-hackintosh-reborn-with-ai/)

十年前，作者曾在 x86 主机上通过 KVM 虚拟机成功运行 macOS，为"黑苹果"社区贡献了经典指南。2021 年 Apple 转向 ARM 架构后，x86 版 macOS 逐步被弃用，黑苹果社区一度面临消亡，2026 年发布的 macOS 27 更彻底终结了 x86 支持。然而，作者近日在 ThinkPad T490 上安装 macOS 26，借助 Xcode 26 集成的 Claude Code 与 OpenAI Codex 等 AI 工具，仅用一天便完成了一个 iOS 应用，未手动编写任何一行代码。AI 的崛起彻底改变了格局——黑苹果与黑 iOS 社区近期迎来爆发式发展。借助 Claude Code 配合逆向工具 Ghidra，社区在短时间内实现多项突破：macOS 27 运行于骁龙笔记本与 RK3588 等 ARM 开发板，iOS 17 成功移植到任天堂 Switch OLED，通过 nullmoth 实现了对 50 系 Nvidia 显卡的支持。AirDrop 互通、硬件视频解码加速、x86 上运行经翻译的 macOS 27 等进展也在推进之中。文章最后指出，尽管围绕 AI 的争议犹在，但它也为硬件自由带来新希望：用户或许终将真正拥有并自由掌控自己的每一台设备。

---

## 4. 窗口毛衣

**原文标题**: Window Sweaters

**原文链接**: [https://github.com/saragordic/window-sweaters](https://github.com/saragordic/window-sweaters)

"窗口毛衣"是一款 macOS 小工具，由开发者 saragordic 制作，可为应用窗口添加针织毛衣风格的彩色边框，让桌面更温馨。安装方式多样：可通过 Homebrew 命令安装，也可从 GitHub Releases 下载 ZIP 手动拖入"应用程序"文件夹，甚至将仓库链接发给 AI 编码代理即可完成安装。点击菜单栏毛线图标即可切换风格、图案、边框宽度与针脚大小，还能按应用单独开关。目前已为 37 款常用应用（涵盖 Apple 原生应用、办公协作、编程与 AI 工具、设计软件等）手工选配专属配色，其余应用则自动提取图标颜色生成双色针织图案，并提供"按应用"和"之字形"两种模式。技术方面，需 macOS 13 及以上，支持 Apple Silicon 与 Intel，使用系统私有窗口 API，需授予辅助功能权限，亦可通过本地配置文件自定义配色。项目基于 Felix Kratz 的 JankyBorders 构建，采用 GPL-3.0 许可。目前仍有待完善之处，如窗口缩放时边框会暂时隐藏，且尚未通过 Apple 公证，首次运行可能需在隐私设置中手动放行。

---

## 5. 摩托罗拉 Signature 27：首款支持 GrapheneOS 的旗舰手机

**原文标题**: Motorola Signature 27 with GrapheneOS support

**原文链接**: [https://motorolanews.com/motorola-signature-27-2/](https://motorolanews.com/motorola-signature-27-2/)

2026年11月，摩托罗拉发布旗舰机型Signature 27，起售价1599美元。该机汇聚多项行业领先技术：搭载骁龙8 Elite Extreme Gen 6平台，配备Extreme AMOLED Duo Tandem屏幕，峰值亮度达12,000尼特，为当前最亮手机显示屏。影像系统获DXOMARK 2026年度最佳，包含50MP索尼主摄、200MP潜望长焦（支持100x超级变焦）及业内首款专用EVS动作传感器。音频方面，该机为全球唯一搭载Bang & Olufsen定制调校的智能手机。AI层面，支持Google Gemini Intelligence及摩托罗拉Qira智能体，可实现跨应用多步骤任务执行。电池容量7000mAh，支持90W有线与50W无线充电。机身采用航空级铝框架搭配陶瓷与玻璃工艺，通过IP68/IP69及MIL-STD-810H军标认证，提供七年系统更新。值得关注的是，Signature 27是摩托罗拉首款支持GrapheneOS的设备，与GrapheneOS基金会合作开发，并率先搭载ARM内存标记扩展（MTE）硬件，从底层强化隐私与安全防护，开启摩托罗拉在移动安全领域的新篇章。

---

## 6. 《沙龙》：三十一年后的告别

**原文标题**: Goodbye from Salon

**原文链接**: [https://www.salon.com/2026/11/05/goodbye-from-salon/](https://www.salon.com/2026/11/05/goodbye-from-salon/)

2026年11月5日，独立数字媒体《沙龙》（Salon）发文宣布，在运营31年后正式停止出版。《沙龙》创刊于1995年11月，彼时互联网尚处拓荒期，一群记者怀揣理想，率先探索将新闻与读者以全新方式连接的形式，开创了网络数字新闻的先河。三十余年间，《沙龙》融合政治、文化、评论与思想，以鲜明立场审视权力、追问假设、呈现被忽视的声音，不仅报道新闻，更致力于帮助人们解读世界。信中向创刊者、历任采编团队、摄影与设计人员及所有贡献者致以感谢，同时向长期读者表达深意——他们的阅读、评论与订阅，让《沙龙》从一份刊物成长为一个思想社区。《沙龙》坦言，独立数字新闻的商业模式已发生深刻变化，现有模式不再可持续，停刊是艰难但必然的决定。文中寄托希望：真正重要的并非三十一年这一数字，而是这段历程中诞生的新闻实践、思想对话、多元声音与社群力量，愿这一遗产持续影响未来。

---

## 7. Rivet（YC W23）发布：基于 S3 的 Agent 规模化编排平台

**原文标题**: Launch HN: Rivet (YC W23) – Scale and Orchestrate Agents on S3

**原文链接**: [https://github.com/rivet-dev/rivet](https://github.com/rivet-dev/rivet)

Rivet 是一个基于 actor 模型的 Agent 编排平台，由 YC W23 孵化，核心构建于 S3 对象存储之上。每个 Rivet Actor 是长驻进程，内置内存状态、SQLite 数据库与 WebSocket 实时通信，可按 agent、会话、用户或租户粒度创建，运行于标准 Node.js、Bun 或 Rust。关键指标：72KB 内存/Actor（共享进程而非独立沙箱）、4.99ms p99 冷启动（无镜像拉取与 VM 启动）、1.07ms 持久化写入，存储成本约为复制 SSD 的 1/10.4；空闲时自动休眠，唤醒后状态不丢失。功能涵盖故障转移、HTTP/WebSocket 网络、端到端类型安全、Cron 调度、Actor 间互调及 OpenTelemetry 可观测性；配套提供 Agents（持久进程）、Workflows（可重放多步操作）、agentOS（安全执行 Agent 生成代码）等模块。部署支持本地开发、Docker/K8s 自托管、BYOC（控制面部署于用户 VPC，支持 AWS/GCP/Azure）及托管的 Rivet Cloud。唯一依赖为 S3 兼容存储（含 MinIO、R2 等），无需 Postgres 或消息队列。项目以 Apache 2.0 开源，常被视为 Cloudflare Durable Objects 的开源替代，解除其内存、存储与运行时限制。

---

## 8. Servo 九月更新：<progress> 元素、圆角矩形及更多新特性

**原文标题**: September in Servo: <progress>, rounded rectangles, and more

**原文链接**: [https://servo.org/blog/2026/11/05/september-in-servo/](https://servo.org/blog/2026/11/05/september-in-servo/)

Servo 0.7.0 正式发版，涵盖九月共 527 项提交。新 Web 平台特性包括 :checked 伪类、user-select 属性、<progress> 元素、CSS 类型算术、alpha() 函数及 font-width 属性；同时新增大量 DOM API，涵盖 CSS 模块、WebCrypto 的 MLKEM768-X25519 算法、CanvasRenderingContext2D 的 roundRect()、PerformancePaintTiming 等。安全方面升级至 SpiderMonkey v153.3 与 mozangle v0.7，修补了上游安全漏洞。兼容性上，Candy Crush 已可正常运行，egui.rs 演示亦表现良好。进展中的工作包括无障碍树几何信息报告、WebGL2 合规改进、contenteditable 富文本编辑器键盘支持及视频文本轨道事件机制。内嵌 API 新增可访问性事件转发与会话历史清除接口，并移除了若干旧接口。性能方面通过减少冗余分配、优化 GC 交互及复用内存缓冲提升了速度与稳定性，同时修复了 WebRTC、视频、iframe、SharedWorker 等多处 panic 及多进程模式关闭挂起问题。项目本月新增 10 位首次贡献者，月度捐款达 8144 美元，并开放了多级赞助方案。

---

## 9. 双侧人工耳蜗植入者的心理物理学体验

**原文标题**: My psychophysics as a bilateral cochlear implant user

**原文链接**: [https://claude.ai/artifact/L8qsMc3SorytGW3LA81nYf](https://claude.ai/artifact/L8qsMc3SorytGW3LA81nYf)

无法访问该文章链接

---

## 10. 我但愿科技公司能更了解我

**原文标题**: I wish tech companies knew more about me

**原文链接**: [https://rakhim.exotext.com/i-wish-tech-companies-knew-more-about-me](https://rakhim.exotext.com/i-wish-tech-companies-knew-more-about-me)

作者以亲身经历反讽"科技公司无孔不入监视我们"的流行叙事，列举了大量数据收集与善用之间的荒诞落差：购买床垫后收到的仍是床垫广告；音乐平台数年来从未察觉他始终跳过一切带人声的电子乐；搜索引擎将已登录英文账户的他引向芬兰语帮助页；每去德国几天，所有服务便自动切为德语，PS商店语言设置也反复重置。广告更是离谱——不配送芬兰的智能设备、毫不相关的工业3D打印树脂、毫无需求的营销工具，以及一位在赫尔辛基住了十余年的人仍被推送本地酒店。搜索某型烤箱安装视频后，次日首页便塞满杂乱的家电推荐；持有多年的车险仍被银行反复推销；航空手握护照扫描件，却推送与其国籍无关的签证信息；Netflix注册十五年仅一人使用，每次启动仍强制选用户；无子女的他收到儿童产品优惠；HBO持续推荐没有英文字幕的外语影剧。作者并不否认数据确实被广泛追踪、存储和买卖，恰恰相反——正因数据早已在手，他忍不住发出那句辛辣的诘问：能不能至少用上一点？全篇以密集的切身细节和黑色幽默，揭示了"大数据"的承诺与用户日常体验之间触目惊心的鸿沟。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 2 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 3 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 4 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 5 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 6 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 7 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 8 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 9 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 10 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 11 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 12 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 13 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 14 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 15 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 16 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 17 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 18 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 19 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 20 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 21 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 22 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 23 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 24 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 25 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 26 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 27 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 28 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 29 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 30 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 31 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 32 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 33 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 34 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 35 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 36 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 37 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 38 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 39 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 40 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 41 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 42 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 43 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 44 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 45 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 46 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 47 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 48 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 49 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 50 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 51 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 52 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 53 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 54 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 55 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 56 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 57 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 58 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 59 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 60 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 61 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 62 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 63 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 64 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 65 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 66 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 67 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 68 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 69 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 70 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 71 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 72 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 73 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 74 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 75 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 76 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 77 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 78 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 79 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 80 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 81 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 82 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 83 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 84 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 85 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 86 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 87 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 88 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 89 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 90 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 91 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 92 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 93 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 94 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 95 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 96 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 97 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 98 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 99 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 100 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 101 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 102 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 103 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 104 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 105 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 106 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 107 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 108 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 109 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 110 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 111 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 112 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 113 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 114 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 115 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 116 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 117 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 118 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 119 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 120 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 121 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 122 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 123 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 124 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 125 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 126 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 127 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 128 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 129 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 130 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 131 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 132 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 133 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 134 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 135 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 136 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 137 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 138 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 139 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 140 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 141 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 142 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 143 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 144 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 145 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 146 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 147 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 148 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 149 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 150 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 151 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 152 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 153 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 154 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 155 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 156 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 157 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 158 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 159 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 160 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 161 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 162 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 163 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 164 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 165 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 166 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 167 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 168 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 169 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 170 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 171 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 172 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 173 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 174 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 175 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 176 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 177 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 178 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 179 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 180 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 181 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 182 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 183 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 184 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 185 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 186 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 187 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 188 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 189 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 190 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 191 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 192 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 193 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 194 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 195 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 196 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 197 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 198 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 199 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 200 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 201 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 202 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 203 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 204 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 205 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 206 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 207 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 208 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 209 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 210 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 211 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 212 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 213 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 214 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 215 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 216 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 217 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 218 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 219 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 220 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 221 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 222 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 223 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 224 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 225 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 226 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 227 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 228 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 229 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 230 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 231 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 232 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 233 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 234 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 235 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 236 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 237 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 238 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 239 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 240 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 241 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 242 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 243 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 244 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 245 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 246 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 247 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 248 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 249 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 250 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 251 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 252 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 253 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 254 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 255 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 256 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 257 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 258 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 259 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 260 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 261 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 262 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 263 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 264 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 265 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 266 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 267 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 268 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 269 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 270 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 271 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 272 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 273 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 274 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 275 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 276 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 277 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 278 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 279 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 280 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 281 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 282 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 283 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 284 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 285 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 286 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 287 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 288 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 289 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 290 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 291 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 292 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 293 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 294 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 295 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 296 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 297 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 298 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 299 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 300 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 301 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 302 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 303 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 304 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 305 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 306 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 307 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 308 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 309 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 310 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 311 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 312 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 313 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 314 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 315 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 316 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 317 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 318 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 319 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 320 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 321 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 322 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 323 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 324 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 325 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 326 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 327 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 328 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 329 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 330 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 331 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 332 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 333 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 334 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 335 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 336 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 337 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 338 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 339 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 340 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 341 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 342 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 343 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 344 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 345 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 346 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 347 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 348 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 349 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 350 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 351 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 352 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 353 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 354 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 355 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 356 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 357 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 358 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 359 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 360 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 361 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 362 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 363 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 364 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 365 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 366 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 367 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 368 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 369 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 370 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 371 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 372 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 373 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 374 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 375 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 376 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 377 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 378 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 379 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 380 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 381 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 382 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 383 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 384 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 385 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 386 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 387 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 388 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 389 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 390 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 391 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 392 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 393 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 394 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 395 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 396 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 397 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 398 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 399 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 400 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 401 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 402 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 403 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 404 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 405 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 406 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 407 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 408 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 409 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 410 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 411 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 412 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 413 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 414 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 415 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 416 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 417 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 418 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 419 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 420 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 421 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 422 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 423 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 424 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 425 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 426 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 427 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 428 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 429 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 430 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 431 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 432 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 433 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 434 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 435 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 436 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 437 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 438 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 439 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 440 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 441 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 442 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 443 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 444 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 445 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 446 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 447 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 448 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 449 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 450 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 451 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 452 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 453 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 454 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 455 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 456 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 457 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 458 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 459 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 460 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 461 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 462 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 463 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 464 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 465 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 466 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 467 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 468 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 469 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 470 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 471 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 472 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 473 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 474 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 475 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 476 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 477 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 478 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 479 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 480 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 481 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 482 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 483 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 484 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 485 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 486 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 487 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 488 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 489 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 490 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 491 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 492 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 493 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 494 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 495 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 496 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 497 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 498 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 499 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 500 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 501 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 502 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 503 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 504 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 505 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 506 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 507 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 508 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 509 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 510 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 511 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 512 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 513 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 514 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 515 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 516 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 517 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 518 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 519 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 520 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 521 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 522 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 523 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 524 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 525 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 526 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 527 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 528 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 529 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 530 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 531 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 532 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 533 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 534 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 535 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 536 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 537 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 538 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 539 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 540 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 541 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 542 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 543 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 544 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 545 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 546 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 547 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 548 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 549 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 550 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 551 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 552 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 553 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 554 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 555 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 556 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 557 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 558 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 559 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 560 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 561 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 562 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 563 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 564 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 565 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 566 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 567 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 568 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 569 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 570 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 571 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 572 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 573 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 574 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 575 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 576 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 577 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 578 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 579 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 580 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 581 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 582 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 583 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 584 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 585 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 586 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 587 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 588 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 589 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 590 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 591 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 592 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
