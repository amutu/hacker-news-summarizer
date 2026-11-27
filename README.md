# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-28.md)

*最后自动更新时间: 2026-11-28 04:54:27*
## 1. 热门购物网站惊现利用WebRTC的信用卡盗刷脚本

**原文标题**: Credit card skimming scripts using WebRTC found on popular shopping sites

**原文链接**: [https://www.infohawk.com/news/2026-11-27-black-friday-webrtc-skimmer](https://www.infohawk.com/news/2026-11-27-black-friday-webrtc-skimmer)

黑五前一周，Lascana、Samsonite、American Tourister、Revolve及FWRD五家知名购物网站被植入信用卡盗刷脚本，各站点在报告后已于11月24至25日完成清除。该攻击利用WebRTC技术建立数据通道，绕过传统connect-src安全策略，将用户卡号、有效期、安全码及个人信息外传至攻击者。恶意脚本仅针对移动端结账页面，经Amazon S3桶加载后，通过Cloudflare的TURN中继传输代码与窃取数据以隐藏真实端点。注入途径包括篡改Quorum营销像素、Seers Cookie横幅配置及Revolve自有CDN文件。文章建议网站在支付页面设置严格connect-src规则，将卡信息隔离于独立支付框架，并全面审查第三方追踪像素。消费者应留意账单异常，借记卡盗刷须尽快报案以降低损失。文章同时警示，供应链攻击正规模化蔓延——11月16日Optimizely漏洞曾波及Zoom、BBC等178家机构——行业亟需筑牢防御。

---

## 2. Convex 技能在用户不知情的情况下将应用创意上传至远程服务器

**原文标题**: Convex skills send the user's app idea to a remote server without telling them

**原文链接**: [https://github.com/convex/convex-backend-skill/issues/64](https://github.com/convex/convex-backend-skill/issues/64)

2026年10月，用户thirtysix在GitHub issue #64中披露，Anthropic官方插件市场中的convex-backend-skill存在三处隐私与安全隐患：quickstart技能将用户的项目创意以"telemetry"名义POST至basic-anteater-667.convex.site，用户全程不知情；add技能从同一域名下载脚本后直接管道传入bash执行；labs-quickstart技能更将下载与执行拆为两条独立命令，并明文注明目的是"绕过安全分类器的拦截"。举报者认为这并非恶意行为，但刻意规避用户或管理员自行设置的安全检查，加之远程脚本未做哈希锁定且主机名为随机生成，用户无从审查其内容。其改进建议包括：发送创意前须告知用户并提供关闭选项；将引导脚本内置于插件或以哈希值固定；删除关于规避分类器的指令，让下载执行步骤正常接受审批。社区反响强烈，部分用户表示因此放弃Convex转投竞品，亦有评论因推广无关项目被批评为垃圾信息。该issue截至发文时仍为开放状态，暂无官方回应。

---

## 3. GPT 6.2 Astra破解历史谜团

**原文标题**: GPT 6.2 Astra Solves a Historical Mystery

**原文链接**: [https://generativehistory.substack.com/p/gpt-62-astra-solves-a-historical](https://generativehistory.substack.com/p/gpt-62-astra-solves-a-historical)

本文报道了OpenAI新模型GPT 6.2 Astra在历史研究领域的突破性应用。在AI于数学领域取得飞速进展（如纳维-斯托克斯方程、黎曼猜想等）的背景下，作者测试该模型能否将研究能力推广至历史等非确定性领域。作者向模型提供耶鲁大学贝内克图书馆所藏一本1808年匿名素描本的图像，该素描本记录了从蒙特利尔至苏必利尔湖的旅程，两百余年来作者不详。模型仅用22分钟便锁定作者为流亡英国、后在加拿大任职的法国没落贵族Chabot子爵，并指引至克利夫兰州立大学馆藏的一则微缩胶片日记。日记中精确的行迹与素描本完全吻合，且直接记载了"我画了一幅素描"，构成决定性证据。模型通过一篇2014年博士论文的脚注追踪到该档案，这是人类历史学家几乎不可能触及的路径。该日记本身即为重大发现，附有已销毁的西北公司珍贵文献。文章指出，尽管模型在表达上偶有奇特之处，但其推理过程完整展现了假设构建、文献检索与证据验证的历史研究全流程，预示着AI自主学术研究的未来。

---

## 4. Show HN：bouncemarket——一款弹球实时预测市场游戏

**原文标题**: Show HN: bouncemarket – a live prediction market game for a bouncing ball

**原文链接**: [https://bouncemarket.minhanhday.com/](https://bouncemarket.minhanhday.com/)

bouncemarket 是由 minh-anh day 创建的一款弹球实时预测市场游戏，发布于 Hacker News 平台。游戏核心玩法为预测弹球反弹方向：玩家可在"左"或"右"两个方向上购买股份，每份获胜股份支付 1 积分。市场采用动态定价机制，两侧价格随购买数量实时变动，模拟真实预测市场的供需逻辑。界面左、右两侧分别展示对应方向的价格、当前持股数及购买按钮，玩家初始持 0 股，每次可购 1 股；游戏提供"重置为 10"的积分恢复功能。此外还包含实时市场赔率与排行榜，增强竞技与社交互动体验。该项目以极简弹球物理模拟为载体，将博弈与实时交易机制融入轻量游戏，展现了预测市场概念在休闲场景中的创意应用。

---

## 5. 雪铁龙高压液压系统

**原文标题**: Citroën Hydraulic System

**原文链接**: [https://www.citroenet.org.uk/miscellaneous/hydraulics/hydraulics-1.html](https://www.citroenet.org.uk/miscellaneous/hydraulics/hydraulics-1.html)

雪铁龙高压液压系统（又称液气悬挂）是该品牌标志性技术，以氮气为弹簧介质、液压油提供阻尼与调平，兼具卓越舒适性与操控性。该系统1954年首用于15CV H，1955年随DS19量产，此后广泛应用于GS、SM、CX、BX、XM、Xantia、C5、C6等车型，并被劳斯莱斯、奔驰等授权采用。核心部件为悬挂球体，由金属球壳与橡胶隔膜构成，上部充入高压氮气，下部连接液压油路，通过隔膜压缩实现弹簧作用，球体寿命约6至10万公里。系统由发动机驱动泵提供150至180巴压力，可驱动悬挂、刹车、转向乃至DS的离合与换挡。高度校正器根据载荷自动调节车身高度，后刹从后悬挂取油并实现抗俯仰。1970年代起引入Hydractive电子控制，通过传感器与电磁阀切换软/硬阻尼模式；Xantia Activa进一步加入主动防侧倾液压缸。系统优势包括自适应刚度、恒定灯束角度、可举升换胎及通过性强，缺点为侧倾偏大、路噪明显及桥面通过异常。经矿物油LHM流体改进后，系统可靠性已大幅提升。

---

## 6. AT&T Unix PC（3B1）虚拟机

**原文标题**: The AT&T Unix PC (3B1) VM

**原文链接**: [https://virtuallyfun.com/2026/11/22/the-ultimate-att-unix-pc-3b1-vm-w-tcp-ip-and-apps/](https://virtuallyfun.com/2026/11/22/the-ultimate-att-unix-pc-3b1-vm-w-tcp-ip-and-apps/)

本文介绍了作者Tenox对FreeBee模拟器（运行1985年AT&T UNIX PC/3B1）的重大更新。在Phil Pemberton于2010年发起FreeBee项目的基础上，作者通过PR提交多项改进：新增以太网与TCP/IP支持（基于libslirp，可运行WIN/TCP的telnet、ftp、rsh）；实现无缝鼠标操作，无需F10抓取，支持滚轮；引入Turbo模式（最高10倍加速）与CPU空闲优化（空闲占用从44%降至4%）；修复Office表单冻结、Alt键卡死及macOS闪烁等缺陷；新增脚本控制接口。文章还展示了一个"终极镜像"，内含UNIX System V 3.51m及187个软件包，涵盖Microsoft Word、Multiplan、dBASE III、GNU Emacs、TeX、GCC等工具及80余款游戏。作者于2026年还开发了2048、贪吃蛇、推箱机等原生3B1新游戏，以及telnetu终端模拟器和Archaic网页浏览器，并提供720×696高屏实验版本。文章附跨平台（macOS/Linux/Windows）便携镜像，运行脚本即可体验，输入tenox进入Office，root进入Shell，无需密码。

---

## 7. DART小行星偏转实验首批撞击图像发布

**原文标题**: First images of the impact of DART asteroid deflection experiment

**原文链接**: [https://arstechnica.com/space/2026/11/europes-hera-mission-returns-to-the-chaotic-scene-of-a-cosmic-smashup/](https://arstechnica.com/space/2026/11/europes-hera-mission-returns-to-the-chaotic-scene-of-a-cosmic-smashup/)

摘要：四年前的2022年9月，NASA的DART探测器以每秒6.14千米的速度撞击小行星Dimorphos，释放约100亿焦耳能量，将其绕母小行星Didymos的12小时轨道缩短约33分钟，效果远超预期。近日，欧洲航天局（ESA）的Hera探测器经两年旅程抵达该双小行星系统，公布了首批撞击效果图像。画面显示，DART在Dimorphos上刻出一个体育场大小的撞击坑，几乎与该小行星本身（直径约151米）相当，并致其轨道姿态剧烈翻滚。Hera还在双星系统周围发现数百块从足球到洗衣机大小的岩石碎片，远超预期。这些碎片或为DART撞击抛出，或为Dimorphos形成时的古老遗迹，尚待确认。碎片群对Hera计划于明年1月释放的两个立方星Juventas和Milani的部署与着陆构成导航挑战，但因小行星重力极弱，各航天器相对速度仅约12厘米/秒，致命碰撞风险有限。未来六个月，Hera将进行更近距离观测，两个立方星将尝试在Dimorphos表面着陆，采集重力场、成分及内部结构数据，以重建撞击动力学，为未来真实的行星防御任务提供关键参考。

---

## 8. 虚假的计算机验证证明

**原文标题**: False computer-checked proofs

**原文链接**: [https://cr.yp.to/proofs/falseccp.html](https://cr.yp.to/proofs/falseccp.html)

本文由D. J. Bernstein撰写，系统汇总了主流形式化证明验证程序中已报告的声音性漏洞。文章列出HOL Light、Mizar、Metamath、Isabelle、Lean、HOL98/HOL4及Coq/Rocq等程序在默认使用模式下的漏洞记录，按数量从少到多排列，其中Coq/Rocq报告的漏洞最多，远超其余系统。这些漏洞已被证实可利用，足以让错误命题通过验证。Bernstein提出数条安全建议：一是缩小可信计算基础规模，如HOL Light内核仅约400行代码，简洁性有利于审查；二是将同一证明交由多个独立验证器交叉检查，降低单一程序漏洞的影响；三是对验证器本身进行形式化正确性证明，如HOL Light推理规则已于2006年、其克隆体Candle于2022年分别在HOL Light和HOL4中完成机器验证。但作者仍担忧依赖大型二进制验证器检查另一个大型验证器的循环信任问题，呼吁进一步简化验证器。本列表不含用户界面层面漏洞，那类问题同样可能误导用户对已证明内容的判断。

---

## 9. 迈克尔·尼尔森下架其神经网络与深度学习经典著作

**原文标题**: Michael Nielsen took down his book on neural nets

**原文链接**: [https://twitter.com/michael_nielsen/status/2126359767362748777](https://twitter.com/michael_nielsen/status/2126359767362748777)

2026年11月27日，知名深度学习教育者迈克尔·尼尔森（Michael Nielsen）在社交媒体上宣布，已将其广受欢迎的免费在线书《神经网络与深度学习》（neuralnetworksanddeeplearning.com）从网络上撤下。该书长期被视为深度学习领域的经典入门读物，以通俗易懂的方式系统讲解了神经网络原理与深度学习基础，吸引了全球大量学习者。此条动态发布后迅速引发广泛关注，单条推文即获得约12.7万次浏览及数千条互动，反映出该书在机器学习社区中的深远影响力及读者对其下架的强烈关注。尼尔森未说明下架的具体原因，但这一举动在AI与深度学习学习者群体中激起热烈讨论。

---

## 10. 多州起诉SpaceX，要求叫停Grok生成儿童色情及非自愿亲密图片

**原文标题**: States sue SpaceX to stop Grok from generating child sex images, revenge porn

**原文链接**: [https://www.oag.state.va.us/media-center/news-releases/jay-jones/3162-attorneys-general-jones-and-rayfield-file-suit-against-spacex-parent-company-of-x-xai-and-grok-over-creation-and-promotion-of-child-exploitation-and-non-consensual-images-on-platform](https://www.oag.state.va.us/media-center/news-releases/jay-jones/3162-attorneys-general-jones-and-rayfield-file-suit-against-spacex-parent-company-of-x-xai-and-grok-over-creation-and-promotion-of-child-exploitation-and-non-consensual-images-on-platform)

摘要：2026年11月23日，弗吉尼亚州与俄勒冈州检察长联合起诉SpaceX，指控其旗下社交平台X及AI工具Grok（由xAI开发，现更名"SpaceX超级智能"）在缺乏必要安全防护的情况下，允许Grok未经本人知情同意即生成性化图片，包括儿童性虐待材料（CSAM）和非自愿亲密图片（NCII）。起诉书称，SpaceX不仅未设置行业标准的审核机制，还推出"spicy mode"专门促进裸露及性化内容生成，同时向公众虚假宣传平台已具备完善的安全保护。据反数字伤害中心（CCDH）研究，2025年12月29日至2026年1月8日约10天内，Grok在X上生成并发布约300万张性化图片，其中约2.3万张疑似涉及儿童，平均每41秒即有一张儿童性化图片出现，且近30%在被标记后一周仍公开可访问。弗吉尼亚州检察长琼斯强调，此案旨在为被误导的消费者维权，企业不得以创新为名忽视用户安全；俄勒冈州检察长雷菲尔德指出，SpaceX明知危害儿童和社区，却谎称安全防护已到位。弗吉尼亚州案件在里士满巡回法院提起，俄勒冈州案件在穆尔特诺米县巡回法院提起。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-28](output/hacker_news_summary_2026-11-28.md) |
| 2 | [2026-11-27](output/hacker_news_summary_2026-11-27.md) |
| 3 | [2026-11-26](output/hacker_news_summary_2026-11-26.md) |
| 4 | [2026-11-25](output/hacker_news_summary_2026-11-25.md) |
| 5 | [2026-11-24](output/hacker_news_summary_2026-11-24.md) |
| 6 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 7 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 8 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 9 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 10 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 11 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 12 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 13 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 14 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 15 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 16 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 17 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 18 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 19 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 20 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 21 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 22 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 23 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 24 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 25 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 26 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 27 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 28 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 29 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 30 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 31 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 32 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 33 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 34 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 35 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 36 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 37 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 38 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 39 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 40 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 41 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 42 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 43 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 44 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 45 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 46 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 47 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 48 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 49 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 50 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 51 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 52 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 53 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 54 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 55 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 56 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 57 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 58 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 59 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 60 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 61 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 62 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 63 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 64 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 65 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 66 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 67 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 68 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 69 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 70 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 71 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 72 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 73 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 74 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 75 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 76 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 77 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 78 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 79 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 80 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 81 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 82 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 83 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 84 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 85 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 86 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 87 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 88 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 89 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 90 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 91 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 92 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 93 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 94 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 95 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 96 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 97 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 98 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 99 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 100 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 101 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 102 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 103 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 104 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 105 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 106 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 107 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 108 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 109 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 110 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 111 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 112 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 113 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 114 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 115 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 116 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 117 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 118 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 119 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 120 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 121 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 122 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 123 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 124 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 125 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 126 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 127 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 128 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 129 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 130 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 131 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 132 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 133 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 134 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 135 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 136 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 137 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 138 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 139 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 140 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 141 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 142 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 143 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 144 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 145 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 146 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 147 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 148 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 149 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 150 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 151 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 152 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 153 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 154 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 155 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 156 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 157 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 158 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 159 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 160 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 161 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 162 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 163 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 164 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 165 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 166 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 167 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 168 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 169 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 170 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 171 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 172 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 173 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 174 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 175 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 176 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 177 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 178 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 179 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 180 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 181 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 182 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 183 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 184 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 185 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 186 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 187 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 188 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 189 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 190 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 191 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 192 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 193 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 194 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 195 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 196 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 197 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 198 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 199 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 200 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 201 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 202 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 203 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 204 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 205 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 206 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 207 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 208 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 209 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 210 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 211 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 212 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 213 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 214 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 215 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 216 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 217 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 218 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 219 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 220 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 221 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 222 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 223 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 224 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 225 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 226 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 227 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 228 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 229 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 230 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 231 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 232 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 233 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 234 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 235 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 236 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 237 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 238 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 239 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 240 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 241 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 242 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 243 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 244 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 245 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 246 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 247 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 248 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 249 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 250 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 251 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 252 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 253 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 254 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 255 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 256 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 257 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 258 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 259 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 260 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 261 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 262 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 263 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 264 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 265 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 266 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 267 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 268 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 269 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 270 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 271 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 272 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 273 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 274 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 275 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 276 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 277 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 278 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 279 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 280 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 281 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 282 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 283 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 284 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 285 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 286 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 287 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 288 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 289 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 290 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 291 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 292 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 293 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 294 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 295 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 296 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 297 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 298 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 299 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 300 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 301 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 302 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 303 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 304 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 305 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 306 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 307 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 308 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 309 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 310 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 311 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 312 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 313 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 314 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 315 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 316 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 317 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 318 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 319 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 320 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 321 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 322 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 323 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 324 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 325 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 326 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 327 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 328 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 329 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 330 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 331 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 332 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 333 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 334 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 335 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 336 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 337 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 338 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 339 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 340 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 341 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 342 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 343 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 344 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 345 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 346 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 347 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 348 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 349 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 350 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 351 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 352 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 353 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 354 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 355 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 356 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 357 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 358 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 359 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 360 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 361 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 362 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 363 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 364 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 365 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 366 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 367 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 368 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 369 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 370 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 371 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 372 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 373 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 374 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 375 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 376 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 377 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 378 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 379 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 380 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 381 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 382 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 383 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 384 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 385 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 386 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 387 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 388 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 389 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 390 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 391 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 392 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 393 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 394 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 395 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 396 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 397 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 398 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 399 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 400 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 401 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 402 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 403 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 404 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 405 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 406 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 407 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 408 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 409 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 410 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 411 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 412 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 413 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 414 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 415 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 416 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 417 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 418 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 419 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 420 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 421 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 422 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 423 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 424 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 425 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 426 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 427 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 428 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 429 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 430 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 431 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 432 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 433 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 434 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 435 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 436 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 437 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 438 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 439 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 440 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 441 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 442 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 443 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 444 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 445 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 446 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 447 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 448 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 449 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 450 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 451 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 452 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 453 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 454 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 455 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 456 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 457 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 458 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 459 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 460 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 461 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 462 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 463 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 464 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 465 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 466 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 467 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 468 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 469 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 470 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 471 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 472 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 473 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 474 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 475 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 476 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 477 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 478 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 479 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 480 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 481 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 482 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 483 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 484 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 485 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 486 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 487 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 488 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 489 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 490 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 491 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 492 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 493 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 494 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 495 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 496 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 497 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 498 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 499 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 500 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 501 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 502 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 503 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 504 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 505 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 506 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 507 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 508 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 509 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 510 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 511 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 512 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 513 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 514 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 515 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 516 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 517 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 518 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 519 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 520 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 521 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 522 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 523 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 524 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 525 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 526 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 527 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 528 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 529 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 530 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 531 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 532 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 533 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 534 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 535 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 536 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 537 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 538 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 539 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 540 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 541 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 542 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 543 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 544 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 545 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 546 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 547 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 548 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 549 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 550 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 551 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 552 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 553 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 554 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 555 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 556 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 557 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 558 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 559 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 560 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 561 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 562 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 563 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 564 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 565 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 566 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 567 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 568 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 569 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 570 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 571 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 572 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 573 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 574 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 575 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 576 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 577 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 578 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 579 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 580 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 581 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 582 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 583 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 584 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 585 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 586 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 587 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 588 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 589 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 590 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 591 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 592 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 593 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 594 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 595 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 596 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 597 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 598 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 599 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 600 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 601 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 602 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 603 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 604 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 605 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 606 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 607 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 608 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 609 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 610 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 611 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 612 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 613 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 614 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
