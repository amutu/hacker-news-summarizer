# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-13.md)

*最后自动更新时间: 2026-10-13 04:57:45*
## 1. Codex CLI 默认启动持久化自更新后台守护进程

**原文标题**: Codex CLI installs a persistent, self-updating background daemon by default

**原文链接**: [https://github.com/openai/codex/issues/48195](https://github.com/openai/codex/issues/48195)

摘要：该issue反映Codex CLI 0.157.0起，用户仅打开一次交互会话即默认启动持久后台守护进程，主要问题：进程脱离终端常驻（重附至PID 1）；将约374MB包复制至~/.codex/独立目录运行，导致守护进程版本与npm等安装的CLI版本脱钩；内置每小时自动更新器，可强制重启后端并中断活跃任务；守护进程锁定首个会话的环境变量（如代理），后续会话无法覆盖。社区普遍要求将daemon_auto_start改为默认关闭或首次询问，并建议在最后一客户端断开后自动退出、包管理器安装场景下不复制不自更新。多位用户称CLI因此不可用，有人直言其行为"类似恶意软件"。9月28日已有提交将自动启动默认关闭，但issue仍为开放状态。临时变通：手动执行codex features disable daemon_auto_start，停止守护进程及更新器并清理相关目录。

---

## 2. GLM法律大模型

**原文标题**: GLM-Legal

**原文链接**: [https://z.ai/blog/glm-legal](https://z.ai/blog/glm-legal)

无法访问该文章链接

---

## 3. 用C语言构建现代Web应用

**原文标题**: A Modern Web App in C

**原文链接**: [https://prophitt.me/writing/a-modern-web-app-in-c](https://prophitt.me/writing/a-modern-web-app-in-c)

作者Corey Prophitt分享了他以C语言结合CGI构建商业网站marketyour.games的完整实践。技术栈为OpenBSD、C、httpd与SQLite，无框架、无模板引擎、无独立数据库服务，全部静态资源编译进单一二进制文件，仅依赖libcurl、libsodium和libcjson三个库，编译仅需数秒，部署只需替换一个文件即实现零停机更新。作者指出，2004年导致CGI衰落的原因在2026年已不再成立：现代内核对进程派生高度优化，若仍有瓶颈，FastCGI可轻松升级。CGI的核心优势在于：接口极简，本质即一组HTTP概念，无需学习框架；关注点分离清晰，单个Web服务器直接驱动业务逻辑，调试方便；供应链风险极低；工具链朴素，纯C文件加Makefile，普通编辑器即可胜任；SQLite无运维负担。不足在于CGI缺乏现成的请求处理工具，需自行实现cookie解析、表单验证等基础功能，作者计划发布共享工具头文件加以改善。总体而言，作者认为这套极简栈值得再次使用。

---

## 4. AI编程代理代码产量大增，软件产出却未提升

**原文标题**: AI coding agents generate more code, but not more software

**原文链接**: [https://arstechnica.com/ai/2026/10/ai-coding-agents-generate-more-code-but-not-more-software/](https://arstechnica.com/ai/2026/10/ai-coding-agents-generate-more-code-but-not-more-software/)

哈佛研究员Fiona Chen和James Stratton基于Jellyfish平台数据（涵盖700余家企业、70多万员工、3亿条工作记录，时间跨度2021年至2026年3月），分析了AI编码工具对企业开发效率的实际影响。研究发现，引入AI编码代理后，企业代码行数平均增长30%，提交次数增20%，合并请求增23%，但软件层面的功能交付率并无显著提升。瓶颈在于代码审查环节：AI生成代码后，合并请求的平均审查时间延长49%，需返工的比例近翻倍，审查评论数增加35%，参与审查的人员比例也上升了14%。尽管80%的企业已引入AI辅助审查，但AI仅承担23.3%的审查评论和10.8%的合并请求，人工审查仍是绝对主力。研究同时未发现AI导致显著的就业变化。作者认为，当前AI编码代理带来的编码提速几乎被审查环节的额外消耗完全抵消，企业为此付出的时间与成本是否值得，仍待验证。

---

## 5. 黑客攻击致欧洲多家超市冰箱强制解冻失控

**原文标题**: Hackers activate automatic defrosting accross European supermarket fridges

**原文链接**: [https://www.tomshardware.com/tech-industry/cyber-security/unprecedented-cyberattack-cripples-supermarket-fridges-across-europe-as-hackers-activate-automatic-defrosting-delivery-and-store-prices-also-impacted-by-incident](https://www.tomshardware.com/tech-industry/cyber-security/unprecedented-cyberattack-cripples-supermarket-fridges-across-europe-as-hackers-activate-automatic-defrosting-delivery-and-store-prices-also-impacted-by-incident)

摘要：近日，一场针对欧洲主要超市连锁的网络攻击引发广泛关注。攻击者入侵了丹佛斯（Danfoss）制冷控制系统，将本应每天仅运行两小时的自动解冻功能篡改为持续强制循环，并将温度设置为50摄氏度，导致法国、荷兰、比利时等多国超市冷藏库大量食物面临损耗风险。在法国，Intermarché、Leclerc及Coopérative U确认遭袭，后者总裁称"极其严重"，初步损失已近30万欧元，全国范围内或达数百万欧元。荷兰方面，Albert Heijn、Etos及Gall & Gall的官网被迫关闭，配送中断，电子货架标签遭入侵导致定价失灵，会员计划亦暂停。比利时Albert Heijn旗下Delhaize同样报告出现故障。目前尚不清楚各事件是否为同一攻击。评论区中，网友热议设备为何需联网，认为远程监控虽能减少损耗，但暴露了重大安全漏洞，建议短期内切断网络连接以止损。

---

## 6. 将WiFi 7路由器改造为320Msps软件无线电接收机

**原文标题**: Turn a WiFi 7 Router into a 320Msps Software Defined Radio Receiver

**原文链接**: [https://github.com/h0m3us3r/w1700k-sdr](https://github.com/h0m3us3r/w1700k-sdr)

W1700K SDR项目将Gemtek W1700K WiFi 7路由器改造为宽带软件无线电接收机。核心采用MediaTek MT7996射频前端与Airoha AN7581 SoC，覆盖2.4/5/6 GHz三频段，采样率40至320 Msps（6 GHz可至640/2），输出14位复数IQ。射频固件完全自研，不含任何MediaTek代码，通过ROM补丁及逆向解码的寄存器序列实现冷启动，主机可实时下发本振、采样率、增益等指令，调谐切换约1毫秒完成。数据经1 GiB环形DMA缓冲区以零拷贝UDP通过10 GbE口传输，满载时自动将半数样本对压缩至28位。主机端提供浏览器Web界面，执行262144点FFT、每秒100帧瀑布图显示，并支持抽取滚降实时校正；另配sdr-recv录制工具。项目涵盖平台、内核驱动、固件及主机工具链的完整分层，并提供安装与恢复流程。该系统仅限接收，不运行发射校准；安装将覆写原系统，需自备NAND备份。代码以MIT许可证发布，内核驱动部分为GPL-2.0。

---

## 7. 雪铁龙为电动时代重启2CV经典车型

**原文标题**: Citroen revives the 2CV for an electric age

**原文链接**: [https://www.bbc.com/news/articles/c620r33plgppo](https://www.bbc.com/news/articles/c620r33plgppo)

雪铁龙在巴黎车展发布全新2CV电动概念车，以复古造型致敬1948年推出的经典车型，计划2028年上市，预计售价约1.3万英镑。原2CV曾是法国农民的廉价代步工具，历经四十余年生产，后成为文化符号。新车保留了高轮拱、弧形车顶和"眼睛"造型大灯等经典元素，同时搭载电动动力系统。面对中国车企的激烈竞争，欧洲品牌纷纷以复古情怀营销电动车：雷诺推出R5 R4等复古电动系列，大众推出致敬T2货车的ID.Buzz，福特亦在研发电动Fiesta。行业人士认为，复古设计是欧洲品牌区别于新势力的有力武器，因中国品牌缺乏历史积淀，但情怀之余，新车在功能性、价格及实用性上同样需具备充分竞争力，方能赢得市场。

---

## 8. Muse Wonder：迈向个人超级智能的前沿模型

**原文标题**: Muse Wonder

**原文链接**: [https://research.meta.ai/blog/muse-wonder](https://research.meta.ai/blog/muse-wonder)

Meta正式发布Muse Wonder系列，包含Muse Wonder与Muse Wonder Full两款模型，通过Meta Model API和Muse Code开放使用，目标推动个人超级智能落地。核心创新为"主动记忆"与"主动聚焦"：前者能跨对话追踪用户关键信息并主动检索相关上下文，后者在复杂任务中持续尝试、突破障碍、灵活调整，并在关键操作前主动确认。该系列在领域专业知识（法律、金融、健康）、记忆管理、主动聚焦及前沿编程等基准测试中均达最先进水平。与Muse Spark 1.3相比，Muse Wonder Full凭借更强基座模型，在未经训练的新任务上泛化能力显著更优，可处理跑步规划、定制礼物、婚礼座位编排等多样化场景。安全层面，Muse Wonder为Meta迄今对齐程度最高的模型，在防范CBRN滥用及网络攻击方面提供最强防护，同时保留防御性网络能力。模型训练于吉瓦级Prometheus数据中心，未来将驱动Muse平台内的智能助手、内容生成等功能，并用于开发面向全用户的专用模型。

---

## 9. 为ZX Spectrum手写Demoscene演示引言

**原文标题**: Writing a Demoscene Intro for the ZX Spectrum

**原文链接**: [https://www.markround.com/blog/2026/zx-spectrum-intro](https://www.markround.com/blog/2026/zx-spectrum-intro)

作者是一位80年代便痴迷于Amiga破解引导画面（cracktro）的开发者，时隔近四十年，他终于用纯Z80汇编在原始128K ZX Spectrum上完成了一部完整的单屏demoscene intro。作品仅10287字节，却涵盖该类型全部经典要素：leet风格自定义字体滚动文字、三通道AY芯片音乐、弹跳VU表与视差星场。文章以时间为线索，系统记录了从零搭建开发环境（Pasmo汇编器、FUSE模拟器、zmakebas）到逐一攻克技术难关的全过程——包括通过ULA芯片控制边框、加载SCREEN$屏幕内存、调用ROM打印例程、替换系统字体等，并特别剖析了Spectrum独特的三分段交错式屏幕内存布局这一造成90%以上开发痛苦的根源。此外，作者还分享了在线asm-editor寄存器可视化调试、纸质笔记逐字节推演及遛狗时"橡胶鸭"自述等独特实践经验。全文在技术细节与个人叙事间自如切换，既是Z80汇编与Spectrum硬件的实用入门指南，也是一封献给80年代8位机demo文化的深情致敬。

---

## 10. 《超级马力欧64》制作全幕后——吉尔斯·戈达德完整访谈（2001年）

**原文标题**: The Making Of Super Mario 64 – full Giles Goddard interview (2001)

**原文链接**: [https://pixelatron.com/blog/the-making-of-super-mario-64-full-giles-goddard-interview-ngc/](https://pixelatron.com/blog/the-making-of-super-mario-64-full-giles-goddard-interview-ngc/)

本文是2001年对任天堂程序员吉尔斯·戈达德关于N64游戏《超级马力欧64》开发过程的完整访谈，戈达德当时负责马力奥面部动画。要点如下：开发团队仅约15人，远小于同期《塞尔达》团队；项目早于硬件问世，在SGI Onyx模拟器上启动，由主程序员Nishida-san主导；宫本茂几乎全职投入，热衷实验，推动了相机与角色动作的反复迭代。开发早期用改装世嘉手柄操控，后出现上百种N64手柄原型。相机系统历经上千种方案，由曾参与《星狐2》的川上担当。2D库巴关卡采用固定路线以突出Boss战，鲍姆战场为最先完成的地形。开发节奏极紧，角色定稿即直接入游戏，几无修改。N64并非为软件延期，任天堂项目管理兼顾规划与弹性。1995年任天堂消费者展首秀引发轰动，但出于保密文化，团队并未参会。N64追求"像素质量优先于速度"，画质优于PS但帧率较低。游戏手感的秘诀在于团队将大量时间投入试玩与微调，半数人试玩、半数人开发交替进行。最后冲刺阶段虽有紧张，但整体仍保持秩序。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 2 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 3 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 4 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 5 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 6 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 7 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 8 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 9 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 10 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 11 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 12 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 13 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 14 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 15 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 16 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 17 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 18 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 19 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 20 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 21 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 22 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 23 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 24 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 25 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 26 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 27 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 28 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 29 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 30 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 31 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 32 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 33 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 34 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 35 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 36 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 37 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 38 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 39 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 40 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 41 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 42 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 43 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 44 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 45 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 46 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 47 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 48 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 49 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 50 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 51 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 52 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 53 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 54 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 55 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 56 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 57 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 58 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 59 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 60 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 61 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 62 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 63 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 64 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 65 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 66 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 67 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 68 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 69 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 70 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 71 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 72 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 73 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 74 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 75 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 76 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 77 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 78 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 79 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 80 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 81 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 82 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 83 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 84 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 85 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 86 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 87 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 88 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 89 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 90 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 91 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 92 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 93 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 94 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 95 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 96 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 97 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 98 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 99 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 100 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 101 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 102 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 103 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 104 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 105 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 106 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 107 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 108 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 109 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 110 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 111 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 112 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 113 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 114 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 115 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 116 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 117 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 118 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 119 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 120 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 121 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 122 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 123 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 124 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 125 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 126 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 127 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 128 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 129 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 130 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 131 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 132 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 133 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 134 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 135 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 136 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 137 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 138 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 139 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 140 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 141 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 142 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 143 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 144 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 145 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 146 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 147 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 148 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 149 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 150 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 151 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 152 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 153 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 154 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 155 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 156 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 157 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 158 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 159 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 160 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 161 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 162 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 163 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 164 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 165 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 166 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 167 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 168 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 169 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 170 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 171 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 172 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 173 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 174 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 175 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 176 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 177 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 178 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 179 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 180 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 181 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 182 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 183 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 184 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 185 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 186 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 187 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 188 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 189 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 190 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 191 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 192 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 193 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 194 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 195 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 196 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 197 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 198 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 199 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 200 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 201 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 202 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 203 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 204 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 205 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 206 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 207 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 208 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 209 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 210 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 211 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 212 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 213 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 214 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 215 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 216 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 217 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 218 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 219 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 220 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 221 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 222 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 223 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 224 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 225 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 226 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 227 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 228 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 229 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 230 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 231 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 232 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 233 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 234 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 235 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 236 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 237 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 238 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 239 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 240 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 241 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 242 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 243 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 244 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 245 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 246 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 247 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 248 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 249 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 250 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 251 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 252 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 253 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 254 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 255 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 256 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 257 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 258 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 259 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 260 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 261 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 262 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 263 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 264 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 265 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 266 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 267 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 268 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 269 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 270 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 271 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 272 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 273 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 274 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 275 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 276 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 277 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 278 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 279 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 280 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 281 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 282 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 283 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 284 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 285 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 286 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 287 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 288 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 289 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 290 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 291 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 292 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 293 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 294 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 295 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 296 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 297 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 298 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 299 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 300 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 301 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 302 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 303 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 304 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 305 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 306 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 307 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 308 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 309 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 310 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 311 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 312 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 313 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 314 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 315 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 316 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 317 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 318 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 319 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 320 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 321 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 322 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 323 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 324 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 325 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 326 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 327 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 328 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 329 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 330 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 331 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 332 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 333 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 334 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 335 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 336 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 337 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 338 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 339 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 340 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 341 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 342 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 343 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 344 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 345 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 346 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 347 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 348 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 349 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 350 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 351 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 352 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 353 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 354 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 355 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 356 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 357 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 358 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 359 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 360 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 361 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 362 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 363 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 364 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 365 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 366 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 367 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 368 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 369 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 370 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 371 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 372 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 373 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 374 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 375 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 376 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 377 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 378 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 379 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 380 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 381 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 382 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 383 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 384 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 385 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 386 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 387 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 388 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 389 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 390 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 391 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 392 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 393 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 394 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 395 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 396 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 397 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 398 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 399 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 400 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 401 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 402 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 403 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 404 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 405 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 406 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 407 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 408 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 409 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 410 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 411 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 412 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 413 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 414 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 415 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 416 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 417 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 418 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 419 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 420 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 421 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 422 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 423 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 424 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 425 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 426 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 427 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 428 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 429 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 430 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 431 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 432 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 433 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 434 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 435 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 436 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 437 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 438 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 439 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 440 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 441 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 442 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 443 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 444 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 445 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 446 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 447 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 448 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 449 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 450 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 451 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 452 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 453 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 454 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 455 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 456 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 457 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 458 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 459 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 460 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 461 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 462 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 463 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 464 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 465 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 466 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 467 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 468 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 469 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 470 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 471 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 472 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 473 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 474 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 475 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 476 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 477 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 478 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 479 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 480 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 481 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 482 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 483 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 484 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 485 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 486 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 487 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 488 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 489 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 490 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 491 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 492 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 493 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 494 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 495 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 496 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 497 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 498 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 499 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 500 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 501 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 502 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 503 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 504 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 505 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 506 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 507 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 508 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 509 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 510 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 511 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 512 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 513 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 514 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 515 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 516 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 517 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 518 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 519 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 520 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 521 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 522 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 523 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 524 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 525 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 526 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 527 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 528 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 529 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 530 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 531 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 532 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 533 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 534 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 535 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 536 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 537 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 538 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 539 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 540 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 541 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 542 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 543 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 544 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 545 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 546 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 547 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 548 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 549 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 550 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 551 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 552 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 553 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 554 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 555 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 556 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 557 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 558 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 559 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 560 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 561 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 562 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 563 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 564 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 565 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 566 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 567 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 568 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
