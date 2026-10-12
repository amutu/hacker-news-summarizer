# Hacker News 热门文章摘要 (2026-10-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Thinking will become a hobby

**原文标题**: Thinking will become a hobby

**原文链接**: [https://www.spinellis.gr/blog/20261008/?li261008](https://www.spinellis.gr/blog/20261008/?li261008)

文章之前已经处理过

---

## 12. Meta Muse日活增长骤降，内部人士仅卖不买

**原文标题**: Muse DAU dropped and Meta insiders decided to sell

**原文链接**: [https://theinference.org/article/meta-s-muse-daily-user-growth-fell-62-in-three-weeks-and-insiders-made-172-trades-without-a-buy](https://theinference.org/article/meta-s-muse-daily-user-growth-fell-62-in-three-weeks-and-insiders-made-172-trades-without-a-buy)

摘要：Meta于9月8日推出的AI代理应用Muse在22天内获500万下载，一度登上美区免费榜首位，但此后增长迅速降温。截至10月7日，日均下载约16.5万，较峰值下滑21%；净新增日活从约19.8万/天骤降至7.4万/天，三周内跌幅达62%。短空机构Hunterbrook于10月9日发布做空报告，指出Muse已被亚马逊、Costco、Netflix等平台屏蔽或限权，代理功能大打折扣。与此同时，内部人交易一边倒：过去六个月172笔交易全部为卖出，无一笔买入。扎克伯格9月24日以约778美元均价出售2140万美元股票，CEO、CFO均同步减持，但均为预先设定的10b5-1计划，非突发抛售。股价收于719美元，低于扎克伯格减持价约8%，亦低于共识目标795美元及摩根大通旗下Wells Fargo给出的1000美元最高目标。财务端，Meta二季度资本开支飙升至301亿美元，自由现金流仅17.5亿美元，经营利润率从43%降至31%，2026全年资本开支指引高达1300亿至1450亿美元。多数分析师将Muse视作类似2022年Reels的投入周期，盈利或需等到2027年。市场关注10月Q3财报能否验证Muse用户下滑仅为发布初期低谷而非产品根本性问题。

---

## 13. OpenFatigue 正式发布

**原文标题**: Introducing OpenFatigue

**原文链接**: [https://openfatigue.ai/](https://openfatigue.ai/)

OpenFatigue 正式亮相，并着重介绍了其独特的"类开放"许可模式。该软件的许可证文本向公众完全公开，任何人都可以免费阅读；但在实际使用、修改或分发软件时，用户需与法务部门另行协商，并非传统意义上"开箱即用"的完全开源。这种"开放但附条件"的策略，在保持信息透明度的同时，为权利方保留了充分的法律管控空间。

---

## 14. 六十载寻踪，橘猫毛色基因之谜终揭晓

**原文标题**: Secret of Orange Cats Revealed After 60-Year Search

**原文链接**: [https://www.sciencealert.com/secret-of-orange-cats-finally-revealed-after-60-year-search](https://www.sciencealert.com/secret-of-orange-cats-finally-revealed-after-60-year-search)

两个独立研究团队破解了困扰猫学界六十余年的谜团：橘猫毛色由Arhgap36基因前导序列中一段5千碱基缺失所致。该基因在橘猫黑色素细胞中的RNA表达量是非橘猫的13倍，但蛋白编码区并无突变，异常源于上游非编码区的缺失。该基因位于X染色体，解释了为何绝大多数橘猫为雄性，而雌性橘猫因两条X染色体随机失活，常呈现三花或玳瑁的拼色花纹；三花猫与玳瑁猫的差异在于前者额外携带一个影响黑色素细胞存活的白色斑点突变。九州大学团队进一步证实，Arhgap36过表达会抑制深色真黑色素生成，使色素转向红黄色的褐黑色素。此外，"橘猫更笨"的民间说法并无科学依据，该基因仅在色素细胞中过表达，对健康及认知无负面影响。成果已发表于《当前生物学》。

---

## 15. 出版商终结了平装书，却怪罪读者

**原文标题**: Publishers Killed the Paperback, Then Blamed Readers

**原文链接**: [https://jacobin.com/2026/10/books-publishing-reading-mass-market-paperback](https://jacobin.com/2026/10/books-publishing-reading-mass-market-paperback)

本文指出，美国成人阅读水平持续下滑，主流叙事将原因归于社交媒体等外部因素，却鲜有追问出版业自身的责任。文章以2025年大众平装书停产为切入点，对比1939年与2025年两大畅销书目，揭示出版业在品种多样性上的严重萎缩——从涵盖诗歌、戏剧、冒险、推理等多元类型，退守为商业小说与系列续作的单一赛道。在定价方面，平装书从当年的"鸡蛋价"涨至数倍之多，而精装书反而比1940年代更便宜，平价与高价产品间的价差被人为拉大。在渠道方面，超市、药店、加油站等传统售书点相继退出，Costco、Borders等连锁渠道亦缩减或倒闭。文章引用加拿大仍保留平装书销售且国民阅读水平明显优于美国的数据，质疑美国出版业对平价阅读渠道的"主动放弃"。全文批判五大出版社在并购集中后追求短期利润，牺牲了产品活力、价格可达性与渠道广度，却将阅读衰退归咎于读者自身，呼吁社会正视出版供给侧对国民阅读习惯衰落实应承担的责任。

---

## 16. Show HN：PS2 游戏静态转译为 WebAssembly 并在浏览器中运行

**原文标题**: Show HN: PS2 games statically recompiled to WebAssembly

**原文链接**: [https://github.com/snuri00/ps2-web-recomp](https://github.com/snuri00/ps2-web-recomp)

该项目将 PS2 游戏直接运行于浏览器，无需传统模拟器。核心思路是将 Emotion Engine 机器码静态翻译为 C++，编译为 WebAssembly，并链接一套重写的 PS2 系统软件与硬件模拟层，图形由 WebGPU 渲染，音频经 Web Audio 输出。目前已跑通《GT4》（集成显卡双倍分辨率 50 帧）与《战神2》（原生分辨率 60 帧）。用户自带光盘镜像，一条命令即可在本地生成网页或原生可执行文件（约 3.5 分钟）。技术层面，重编译器 eerecomp 以 16 KiB 为单元生成 C++，完整保留 R5900 的 128 位寄存器、多媒体指令、分支延迟槽及非标准浮点行为；向量单元微程序预编译为 SIMD C++；GS 图形合成器以 WebGPU 计算着色器在 GPU 端完成光栅化；IOP 则用 R3000 解释器执行游戏自带的 IRX 模块。性能优化涵盖减少 GPU 调用、纹理缓存复用、修复着色器线程分歧、以 MessageChannel 替代 setTimeout 等。项目仅含原始代码与第三方许可代码，不含任何游戏数据；已适配支持 WebGPU 的 Chrome/Edge 及 Steam Deck 原生运行，存档可导入导出为 PCSX2 格式。

---

## 17. 凯文·凯利2016年AI预言，十年后回望

**原文标题**: Kevin Kelly's 2016 AI Predictions, 10 Years Later

**原文链接**: [https://taylor.town/kk-ai-2026](https://taylor.town/kk-ai-2026)

本文回顾凯文·凯利在2016年著作《必然》中关于人工智能的核心预测，并对照十年后的现实加以审视。主要论点包括：到2026年，谷歌的主业将从搜索转变为AI，搜索仅是训练AI的数据来源；受网络效应驱动，通用云端AI将形成两至三家的寡头垄断；AI的终极形态并非拟人化的超级智能，而是类似AWS的隐形基础设施，如水电般按需供给；未来99%的AI交互将是狭窄却专精的专用程序，而非通用大脑；人们将能以自然对话向云端提问任何已知问题，答案边际成本趋近于零，搜索成为人人享有的基本公用服务。文章还提及2017年Transformer架构的问世，以及凯利虽预见寡头格局却仍倡导开放权重的理想。在生成式AI全面爆发的当下，这些十年前的判断正逐一接受验证。

---

## 18. 设备指纹：Cookie 的新衣

**原文标题**: Fingerprints are the new cookies

**原文链接**: [https://royfish.dev/fingerprints-are-the-new-cookies](https://royfish.dev/fingerprints-are-the-new-cookies)

文章揭示了一种比 Cookie 更隐蔽的用户追踪手段——设备指纹技术。即使清除 Cookie、连接 VPN 或开启无痕模式，网站仍可通过浏览器暴露的硬件与软件特征（GPU、CPU、音频处理、屏幕参数、字体、时区等）生成近乎唯一的用户标识。作者以"昵称"互动演示了这一点：同一设备刷新页面或换设备浏览，昵称始终保持一致。文章嘲讽了谷歌在 Cookie 政策上"承诺弃用—转移视线—悄然加速"的三幕操作，指出其最终用设备指纹替代了第三方 Cookie 并开放为广告产品。海量个体数据汇聚成"21 世纪的水晶球"，以最高价售予出价者。技术层面，文章用信息熵原理解释了组合特征的唯一性：单个特征区分度有限，但叠加硬件测量后候选池急剧缩小，足以锁定个体，正如 Akinator 猜人游戏——你的浏览器替你在回答所有问题。文章建议用户前往 coverageyourtracks.eff.org 检测指纹唯一性，推荐 Brave、Tor 或 Mullvad 浏览器获得引擎级防护；隐私扩展虽有一定效果却可能因用户极少使用而反而增加唯一性，无法替代底层保护。文末附有 WebGL、Canvas、音频上下文等指纹采集代码示例。

---

## 19. 我在Reddit上的网络爬虫法律AMA

**原文标题**: My Reddit AMA on the Law of Web Scraping

**原文链接**: [https://blog.ericgoldman.org/archives/2026/10/my-reddit-ama-on-the-law-of-web-scraping.htm](https://blog.ericgoldman.org/archives/2026/10/my-reddit-ama-on-the-law-of-web-scraping.htm)

本文是互联网法学者Eric Goldman为Reddit社区r/WebScrapingInsider举办的网络爬虫法律AMA所写的介绍。Goldman从事互联网法律研究与教学逾三十年，对爬虫持复杂政策立场：一方面，财产所有者应有权决定其财产的使用方式；另一方面，爬虫促进信息获取与市场效率，而反爬虫机制可能将互联网从"免许可导航"变为"逐站设卡"，损害互联网核心价值。在法律层面，他认为爬虫领域极为混乱，尤其"对动产侵入"（TTC）教义已近乎"不可教"，他为此设计了四步分析法：确认动产归属、判断是否构成"使用"、认定是否"未经授权"、评估是否造成可识别损害。他特别指出，一次合法爬虫须同时规避TTC、联邦CFAA、州计算机犯罪法、版权法（含DMCA）、服务合同等多重法律，任何一项不通过即面临民事甚至刑事风险。其核心判断为："爬虫无处不在，但法律上并不明确。"他反复提醒读者，本文不构成法律建议，决策前须咨询专业律师。

---

## 20. QGIS实施AI贡献暂停令

**原文标题**: QGIS enacts moratorium on AI contributions

**原文链接**: [https://github.com/qgis/QGIS-Enhancement-Proposals/pull/387](https://github.com/qgis/QGIS-Enhancement-Proposals/pull/387)

摘要：2026年9月，QGIS项目通过QEP428议案，将AI贡献政策由此前的"人类参与审核"升级为"全面禁止"。核心原因是AI生成的Pull Request激增，给本已超负荷的维护团队带来巨大审查压力，同时侵蚀了以人类技能传承为基础的社区生态——贡献者依赖AI无法积累能力，难以成长为审查者。该议案被定位为临时性"关门"措施，未来将逐案讨论是否有限开放（如IDE补全、翻译、安全审计等场景）。讨论中争议集中在政策措辞是否过宽：有成员提议将禁令明确限定为"不允许由大语言模型或AI代理撰写的代码贡献"，以排除搜索、头脑风暴、谷歌翻译等灰色地带。维护层最终将合规标准界定为"你是否凭自身善意独立编写了该代码"。此外，有成员建议禁令范围应扩展至文档、缺陷报告及GitHub上的各类书面交互。该议案于10月5日通过讨论期进入投票阶段，整体获得多数成员支持，被视为保护开源社区可持续性的一项必要举措。

---

## 21. Zig 中的类型安全 HTML 模板

**原文标题**: Type-safe HTML templating in Zig

**原文链接**: [https://lalinsky.com/2026/10/11/type-safe-html-templating-in-zig.html](https://lalinsky.com/2026/10/11/type-safe-html-templating-in-zig.html)

作者拥有二十年 Web 开发经验，历经 PHP、Python、Jinja 等时代，近年转向 Zig 生态（zio、Dusty）建设。因现有方案无法满足"编译时类型安全、零分配、默认 XSS 防护、类 HTML 语法"四项需求，他参考 Go 的 Templ 与 Zig 的 Ziex，开发了模板库 zt。zt 模板在 zig build 阶段解析转译为 Zig 代码，模板与业务模块可双向导入，所有参数经编译器类型检查，字段拼写错误在编译期即报错并精确定位到原始模板行。动态值默认 HTML 转义，URL 属性额外校验危险协议，输出原始 HTML 须显式写 `{!value}`。控制流复用 Zig 原生 if/for/switch，支持组件传递与布局嵌套（@children），全程无运行时分配，仅生成序列化的 std.Io.Writer 写入。配合 htmx 或 Datastar，可不用一行 JavaScript 构建动态 SPA。作者亦提示了 std.Io 取消场景下的一处隐患。项目尚处早期，作者诚邀社区反馈，并就块级控制流是否改用 @if/@for 等语法征求讨论。

---

## 22. 法国数百超市遭网络攻击 冷藏设备失控致巨额损失

**原文标题**: Fridges in French supermarkets hit by cyber attack

**原文链接**: [https://www.bbc.com/news/articles/crq5nzxv9q4yo](https://www.bbc.com/news/articles/crq5nzxv9q4yo)

摘要：法国数百家超市遭遇大规模网络攻击，黑客入侵丹麦丹佛斯（Danfoss）公司提供的远程温度管理软件，操控冷藏及冷冻设备异常升温，部分冰箱夜间温度飙升至50摄氏度并持续数小时，导致大量生鲜和冷冻食品变质报废。此次攻击波及Coopérative U（超100家门店）、Intermarché及Netto（180家）、家乐福（80家）、Monoprix（约5%门店）和E.Leclerc等主要零售连锁，全法约1.5万家超市中约400家受到影响，部分门店甚至因设备过热引发小火灾。两家超市损失已达27万欧元，全国总损失预计达数百万欧元。丹佛斯表示，受影响设备为较旧型号，安全软件无法更新以抵御已知风险，公司此前已多次建议客户保持系统更新。法国巴黎检方已启动重大网络犯罪调查，欧洲食品专员汉森谴责此次袭击，称"将食品武器化已成为现实，粮食安全需在所有层面获得更多关注"。各连锁超市正全力恢复设备并尽快补货。

---

## 23. 我在Google发现了一个价值9万美元的远程代码执行漏洞

**原文标题**: I Found a $90k Remote Code Execution Vulnerability in Google

**原文链接**: [https://simonkoeck.com/writeups/google-devsite-flask-session-pickle-rce](https://simonkoeck.com/writeups/google-devsite-flask-session-pickle-rce)

摘要：作者梳理Google开发者文档站共享的OAuth流程时，发现其Flask session cookie存在严重缺陷。该cookie为签名非加密格式，解码后内含pickle序列化的OAuth2WebServerFlow对象，其中明文存储了client_id与client_secret。更致命的是，该client_secret同时充当Flask的SECRET_KEY验证cookie签名，签名密钥被嵌入它所签名的数据中。作者离线验算确认可完全伪造任意session。由于回调流程中存在pickle.loads()反序列化，攻击者将恶意pickle（利用REDUCE opcode调用任意函数）嵌入伪造cookie即可实现未授权RCE。作者以time.sleep(N)延迟响应证明代码执行成立，未做破坏性操作。该漏洞根植于DevSite共享平台，波及developers.google.com、firebase.google.com、developer.android.com等站点。修复需四管齐下：轮换泄露密钥、为各部署配置独立高熵SECRET_KEY、OAuth流程对象存服务端、弃用pickle。漏洞于2026年8月6日报告、当日接受，10月7日修复，Google授予$90,000赏金。

---

## 24. 联邦执法部门获准使用伪基站追捕唐·莱蒙报道制作人

**原文标题**: Feds Got Warrants to Use Fake Cell Towers to Hunt Down Don Lemon's Producer

**原文链接**: [https://www.wired.com/story/feds-got-warrants-to-use-fake-cell-towers-to-hunt-down-don-lemons-producer/](https://www.wired.com/story/feds-got-warrants-to-use-fake-cell-towers-to-hunt-down-don-lemons-producer/)

摘要：联邦执法部门获准使用伪基站定位并逮捕21岁的唐·莱蒙前报道制作人杰罗姆·理查森。理查森等39人被控密谋侵犯明尼苏达Cities Church礼拜者权利，起因是该教堂牧师兼任ICE圣保罗分局负责人，记者莱蒙和福特等亦被起诉。执法部门还申请了针对福特和莱蒙的伪基站及电话追踪令。值得注意的是，政府申请书中曾虚假声称莱蒙和福特"随抗议者高呼口号"，后承认至少15份文件存在此不实陈述。伪基站可无差别截取周边所有手机数据，被隐私倡导者批为"大面积监控工具"，电子前哨基金会警告此举"是对第一修正案的惊人侵犯"。然而理查森获准搜查令两天后便自行到法院投案，令人质疑动用侵入性追踪手段的必要性。此前法官曾拒绝8份逮捕令中的5份，明确指出莱蒙与理查森"并非抗议者，而是记者及制作人，无犯罪证据"。莱蒙最终在格莱美颁奖礼期间遭突袭逮捕，福特亦于家中被捕，执法手段的激进程度引发广泛质疑。

---

## 25. 用智能体逆向一切——从应用行为到原生二进制

**原文标题**: Reverse engineer anything with agents, from app behavior down to native binaries

**原文链接**: [https://github.com/morluto/rea](https://github.com/morluto/rea)

摘要：REA（Reverse Engineer Anything）是一个面向AI智能体的MCP逆向工程服务，支持从应用层行为到原生底层的全面分析。用户运行 `npx rea-agents setup` 即可将REA注册到Claude Code、Cursor、Codex、Gemini CLI等支持本地MCP的Agent中，并自动安装配套工作流指令。分析目标涵盖原生二进制（需配合Hopper/Ghidra/IDA）、JavaScript/Electron应用、.NET程序集、网站、Android APK、Flutter应用、固件、WASM、EVM字节码、SQLite数据库及网络抓包等。所有分析在本地完成，结果附带证据与局限性说明；静态JavaScript与.NET分析无需原生引擎。项目同时提供CLI命令行，支持脚本化调用。REA采用MIT许可证，适用于合法研究、教育与软件互操作场景，明确禁止未授权逆向。项目已在GitHub获得逾11万颗星。

---

## 26. 用Julia学微积分

**原文标题**: Calculus with Julia

**原文链接**: [https://jverzani.github.io/CalculusWithJuliaNotes.jl/](https://jverzani.github.io/CalculusWithJuliaNotes.jl/)

这是一套借助开源编程语言Julia学习微积分的教学笔记。Julia语法简洁，适合数值计算，笔记主要利用其进行图形化、数值化与代数化演示，体现哈佛"四规则"（图形、数值、代数、语言）的教学理念。与Mathematica等符号计算系统不同，本笔记侧重数值计算，将符号推导留作手写练习，以避免削弱学习效果。核心目标是借助技术深入理解微积分概念，同时不陷入编程机制细节，仅使用有限的计算概念集合，通过少量可组合的操作函数解决入门微积分问题。内容按页组织，每页聚焦一个核心概念，末尾附自测题，并配有CalculusWithJulia辅助包以简化常见任务。笔记以Quarto格式发布，支持PDF下载，欢迎社区贡献勘误与补充。内容参考了Strang、Knill、Schey、Hass等学者的经典教材。当前版本为0.27，发布于2026年8月。

---

## 27. （后量子）密码学正确答案

**原文标题**: (Post-Quantum) Cryptographic Right Answers

**原文链接**: [https://words.filippo.io/right-answers/](https://words.filippo.io/right-answers/)

本文为Latacora 2026年版"密码学正确答案"，延续自2009年Colin Percival开创的传统，为开发者提供面向后量子迁移的密码学实践指南。文章指出后量子过渡时间线已大幅提前，业界共识须在2029年前完成迁移，时间仅剩三年。好消息是对称密码受量子威胁极小，但几乎所有非对称方案均已更新。核心推荐包括：数据加密优先使用云KMS，本地场景选XAEAD-256-GCM或XChaCha20Poly1305，大数据量用Cobblestone-128流式方案；密钥交换采用X25519+ML-KEM-768（X-Wing）混合方案；非对称加密用HPKE（MLKEM768-X25519）或age；签名统一用ML-DSA-44；哈希继续用SHA-2；口令哈希选Argon2id或scrypt，但更建议直接采用通行密钥（passkey）。文章强调2026年两大新变化：后量子签名方案已趋成熟、可立即部署，以及LLM可有效辅助发现密码实现中的漏洞。同时提醒开发者避免纯经典非后量子密钥交换（存在"先收集后解密"风险），避免自行实现密码协议，优先使用成熟标准库与协议。

---

## 28. Terence Tao: Math 2.0 [pdf]

**原文标题**: Terence Tao: Math 2.0 [pdf]

**原文链接**: [https://teorth.github.io/tao-web/slides/math-2-0-caltech-2026.pdf](https://teorth.github.io/tao-web/slides/math-2-0-caltech-2026.pdf)

文章之前已经处理过

---

## 29. GitHub Actions、拉取请求与问题服务异常事件

**原文标题**: Incident with Actions, Pull Requests and Issues

**原文链接**: [https://www.githubstatus.com/incidents/93njd414rpbx](https://www.githubstatus.com/incidents/93njd414rpbx)

2026年10月12日12:21 UTC，GitHub报告Actions、拉取请求（Pull Requests）和问题（Issues）出现性能下降并启动调查。12:33 UTC确认用户遭遇Actions标签页加载失败、Checks API异常、新Actions运行无法入队、Issues创建与更新受阻及PR审查请求延迟等问题，涉及REST与GraphQL API。13:02 UTC拉取请求率先恢复；13:38 UTC初始缓解未完全成功，Actions、Issues及项目仍受影响，Web和邮件通知出现延迟。14:35 UTC起Issues和Actions问题相继缓解，项目功能同步恢复。14:37 UTC团队着手清除通知积压，通知虽已恢复但持续延迟，预计至19:28 UTC后还需约一小时处理完毕。20:16 UTC事件正式解决，GitHub承诺后续发布根因分析报告。全程约8小时，主要影响Actions持续集成、Issues协作及通知推送功能，核心服务最终全部恢复正常。

---

## 30. 决策集重排序器

**原文标题**: Bag of Decisions Reranker

**原文链接**: [https://softwaredoug.com/blog/2026/10/08/bag-of-decisions.html](https://softwaredoug.com/blog/2026/10/08/bag-of-decisions.html)

摘要：本文提出一种新颖的重排序思路：将查询从传统的"词袋"转化为"决策集"。具体做法是让LLM针对每个查询生成一组判断相关性的是非问题（如查询"儿童书桌"会生成"文档是否涉及儿童专用书桌""是否提及适龄尺寸"等十余条），再借助Jev决策模型逐条输出"是"的概率，将所有概率求和作为最终重排序分数。该方法本质上是按查询动态生成评估特征——由LLM确定"该看什么"，由Jev衡量"是否满足"。作者在Wayfair WANDS和Amazon ESCI两个电商数据集上对比了BM25、Jev单问重排序和决策集重排序三种策略。结果显示，决策集重排序在WANDS上NDCG达到0.610（BM25为0.541，Jev为0.574），在ESCI上达到0.360（BM25为0.289，Jev为0.314），两项指标均领先。文章指出当前生成的问题仍存冗余，未来可优化LLM提示以产出更精准、更多样的判别问题，也可为不同领域训练专用决策模型。整体而言，这一轻量实验展现了决策集重排序的潜力，值得进一步深入研究。

---

