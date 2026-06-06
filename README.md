# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-06.md)

*最后自动更新时间: 2026-06-06 20:33:22*
## 1. Ntsc-rs – 模拟模拟电视与VHS图像效果的开源视频仿真工具

**原文标题**: Ntsc-rs – open-source video emulation of analog TV and VHS artifacts

**原文链接**: [https://ntsc.rs/](https://ntsc.rs/)

**摘要**

ntsc-rs是一款免费开源的视频特效工具，能够精确模拟模拟电视和VHS录像带的成像缺陷。与使用简单颜色查找表或叠加层的其他特效不同，ntsc-rs基于composite-video-simulator和ntscQT等项目中的算法，模拟了NTSC传输和VHS编码的实际物理过程。

该软件采用Rust编写，支持多线程和SIMD加速，能够以高于原始NTSC素材的分辨率实时运行。它提供独立应用程序、网页应用，以及适用于Adobe After Effects、Premiere Pro和所有兼容OpenFX软件（包括DaVinci Resolve、Hitfilm和Vegas）的插件。最新版本为0.9.4，用户可下载或在线试用。

---

## 2. Zeroserve：一款可通过eBPF脚本化的零配置Web服务器

**原文标题**: Zeroserve: A zero-config web server you can script with eBPF

**原文链接**: [https://su3.io/posts/introducing-zeroserve](https://su3.io/posts/introducing-zeroserve)

**Zeroserve 文章摘要**

Zeroserve 是一款零配置 HTTPS 服务器，可直接从单个 tarball 包提供网站服务，并使用 eBPF 作为其脚本层和配置层。它旨在通过将所有配置整合到一个可编程的 eBPF 程序中，由该程序决定请求处理（包括路由、身份验证、速率限制、标头设置和反向代理），从而取代 nginx 和 Caddy。

**主要特性：**
- 直接从 tarball 包提供文件（无需解压），并通过 SIGHUP 信号实现原子热重载
- 所有 I/O 操作均使用 io_uring；每个实例运行单线程事件循环
- 支持 TLS 1.3、HTTP/2、加密客户端问候 (ECH)、SNI 证书选择、JA4 指纹识别

**eBPF 脚本：**
- `.zeroserve/scripts/` 目录下的 C 文件被编译为 eBPF 字节码，并通过 async-ebpf JIT（原生 x86-64）在用户态运行
- 通过内存隔离和抢占定时器（默认为 2 毫秒，生产环境建议 10 毫秒）实现沙箱化
- 脚本共享每个请求的元数据；可通过 `zs_respond` 或 `zs_reverse_proxy` 实现短路处理
- 支持加密、JSON 解析、速率限制、AWS SigV4 签名和 OIDC 登录

**性能（单核，HTTPS）：**
- 小静态文件：每秒 36,681 次请求（nginx 为 31,226 次，Caddy 为 12,830 次）
- 大静态文件：每秒 782 MB（nginx 为 773 MB）
- 在 10 毫秒抢占定时器下，eBPF 脚本性能优于 nginx Lua（每秒 46,945 次请求对比 41,231 次）
- 反向代理（小响应）：每秒 26,486 次请求（nginx 为 21,761 次，Caddy 为 7,683 次）
- 大代理响应：nginx 更快（每秒 585 MB 对比 zeroserve 的 359 MB）
- 内存：每个实例约 15 MB 的按比例集大小 (PSS)，多进程扩展性良好

---

## 3. Meta证实数千Instagram账户因AI聊天机器人漏洞被黑客入侵

**原文标题**: Meta confirms 1000s of Instagram accounts were hacked by abusing its AI chatbot

**原文链接**: [https://this.weekinsecurity.com/meta-confirms-thousands-of-instagram-accounts-were-hacked-by-abusing-its-ai-chatbot/](https://this.weekinsecurity.com/meta-confirms-thousands-of-instagram-accounts-were-hacked-by-abusing-its-ai-chatbot/)

Meta公司发生的一起安全漏洞事件，导致黑客利用其AI驱动的Instagram账户恢复聊天机器人的漏洞，入侵了超过2万个账户。根据向缅因州总检察长提交的数据泄露通知，此次攻击从4月17日左右持续至10月初，至少影响20,225名用户，其中包括缅因州的30人。

该漏洞出现在聊天机器人未能验证用于密码重置的邮箱地址是否与账户持有人的邮箱匹配时。黑客可以请求重置密码，系统会将重置链接发送至黑客控制的邮箱，而非合法用户的邮箱。这使得黑客能够接管Instagram账户及任何关联账户，获取联系人信息、出生日期、帖子、私信及账户活动等数据。

Meta表示该工具按预期运行，但另一条代码路径存在漏洞，绕过了邮箱验证。公司已禁用该聊天机器人，移除漏洞代码，并正在审查其他聊天机器人以防止类似问题重演。受影响用户被指示通过验证渠道重置密码并重新验证身份。Meta称“不清楚”是否有个人信息被获取。此次事件发生之际，Meta近期进行了大规模裁员，同时公司仍在持续大力投资人工智能领域。

---

## 4. 英伟达为Windows PC打造强劲CPU系统

**原文标题**: Nvidia is proposing a beast of a CPU system for Windows PCs

**原文链接**: [https://twitter.com/lemire/status/2062880075117113739](https://twitter.com/lemire/status/2062880075117113739)

提供的内容不包含关于英伟达为Windows PC提出CPU系统的文章。相反，它显示了一个来自X（原Twitter）的错误页面，提示用户的浏览器已禁用JavaScript，导致页面无法加载。文本中包含启用JavaScript或切换到受支持浏览器的通知，并附有网站帮助中心、服务条款、隐私政策及其他标准页脚信息的链接。所列年份为2026年，且没有任何关于英伟达、CPU或Windows PC的实质性内容。因此，无法基于给定文本对所谓文章进行摘要。

---

## 5. 《你逃不掉》

**原文标题**: You Can Run

**原文链接**: [https://magazine.atavist.com/2026/mccann-cocaine-fugitives](https://magazine.atavist.com/2026/mccann-cocaine-fugitives)

**摘要：**

本文讲述了艾琳和梅雷迪思·麦卡恩的故事。1984年，她们在匹兹堡一个富裕郊区度过的田园诗般的童年戛然而止——父母约翰和利亚突然让她们成为逃犯。姐妹俩被告知，父亲因欠税惹上了国税局的麻烦。此后一年半，一家人用假名辗转世界各地，藏匿于马略卡岛、伦敦和不列颠哥伦比亚省等地。

几十年后，已成为律师的艾琳得知，母亲利亚曾藏匿两盒与父亲犯罪生涯相关的政府文件。约翰·H·麦卡恩三世曾是新泽西州市长兼法官，因丑闻辞职。随后他在20世纪70年代的煤炭热潮中入行，最终因财务管理不善及与有组织犯罪的关联指控导致生意崩盘。文章详述了约翰富有魅力却控制欲极强的性格、满口谎言的历史，以及他用奢华生活掩盖的深层危机。在母亲威胁要扔掉这些文件后，艾琳争分夺秒从路边抢回盒子，希望能最终揭开毁灭她们家庭的完整真相。

---

## 6. 展示HN：非欧几里得庞加莱盘中的无限画布笔记

**原文标题**: Show HN: Infinite canvas notes in the non-Euclidean Poincaré disk

**原文链接**: [https://uonr.github.io/poincake/](https://uonr.github.io/poincake/)

本文介绍 **Poincake**，一款基于**双曲几何庞加莱圆盘模型**构建的网页端无限画布笔记应用。

**核心要点：**

- **概念：** 与标准的二维无限画布不同，Poincake 采用非欧几里得空间，将整个无限平面容纳于一个有限的圆内。靠近边缘的对象会急剧缩小，从而实现了真正意义上的无限分层缩放。
- **交互方式：** 用户可点击、拖拽并创建笔记（节点）。平移与缩放融为一种流畅的操作。拖拽对象时，其大小会根据与中心点的双曲距离发生变化。
- **功能特性：** 支持基础文本笔记、类型标签、基于 WebRTC 的实时协作以及浏览器本地数据库的离线存储。
- **独特效果：** 在导航过程中，几何结构会扭曲视角——将笔记移至边缘会导致周围内容看似产生悖论式移动，从而为组织想法创造出全新的空间体验。
- **技术栈：** 采用 React 构建用户界面，并借助自定义 WebGL 着色器在浏览器中高效渲染复杂的双曲几何图形。
- **项目状态：** 开源并托管于 GitHub，供公众使用与贡献。

**核心要义：** Poincake 利用双曲几何重新定义了空间笔记记录方式，在有限的视觉空间内提供了无限深度，使得在非传统、可扭曲变形的画布上组织信息成为可能。

---

## 7. 莱比锡的基准

**原文标题**: Benchmarks in Leipzig

**原文链接**: [https://arxiv.org/abs/2606.05818](https://arxiv.org/abs/2606.05818)

**摘要：**  
文章《莱比锡基准测试》（arXiv:2606.05818，2026年6月）介绍了49位数学家合作创建的一个包含100道研究级数学问题及其已知答案的数据集。该数据集主要是在德国莱比锡马克斯·普朗克数学科学研究所为期三天的研讨会上开发的，用于评估大型语言模型（LLM）的推理能力。  

评估分三个阶段进行：  
1. **第一阶段**：五个最先进的LLM每个问题尝试一次，留下41个未解决问题。  
2. **第二阶段**：其中三个模型每个问题运行20次尝试，未解决问题减少至16个。  
3. **第三阶段**：两个深度思考模型每个问题尝试三次，最终仅剩2个问题未解决。  

结果表明，LLM的数学推理能力正在迅速提升，但仍存在一些挑战。论文包含8个基准统计表和附录中列出的全部100道问题。该工作归类于数学（历史与综述），并与人工智能、代数几何、组合数学和表示论等领域交叉。

---

## 8. 消息人士称，五角大楼将以色列对美间谍威胁提升至最高级别

**原文标题**: Pentagon raised threat of Israeli spying on U.S. to highest level, sources say

**原文链接**: [https://www.nbcnews.com/politics/national-security/pentagon-raised-threat-israeli-spying-us-highest-level-sources-say-rcna348565](https://www.nbcnews.com/politics/national-security/pentagon-raised-threat-israeli-spying-us-highest-level-sources-say-rcna348565)

五角大楼已将针对以色列的反间谍威胁等级提升至"严重"，原因是担忧美方官员遭到的间谍活动加剧。据现任及前任美国官员透露，国防情报局发布内部备忘录指出，以色列为获取美国内部关于中东冲突（特别是对伊朗战争）的决策讨论，具备"严重"级别的人力情报与技术搜集能力。

此警报发布之际，特朗普总统与以色列总理内塔尼亚胡因对伊朗及黎巴嫩的战略分歧关系紧张，包括一次气氛僵硬的通话。特朗普寻求与伊朗达成外交协议，而内塔尼亚胡则倾向于恢复轰炸行动。以色列官员否认对美间谍活动指控，称其"完全虚假"且"出于政治动机"。白宫亦对该报道予以否认。

尽管美方官员在访问以色列时会采取额外防范措施，但两国间的高级别情报共享仍在继续，尤其在伊朗战争相关领域。此次事件令人回想起上世纪80年代乔纳森·波拉德间谍案等历史摩擦。专家指出，以色列长期拥有激进的间谍机构，但当前分歧恐将损害这对紧密盟友间的信任。

---

## 9. 大语言模型的工作原理

**原文标题**: How LLMs work

**原文链接**: [https://www.0xkato.xyz/how-llms-actually-work/](https://www.0xkato.xyz/how-llms-actually-work/)

**LLM工作原理概述**

本文解释了现代基于Transformer的LLM如何运作，聚焦关键组件，无需复杂数学公式。内容包括：

1. **分词**：使用子词单元（如BPE或SentencePiece）将文本转换为整数ID。效率源于将单词拆分为常见片段，但也可能导致计数错误等问题。

2. **嵌入**：通过可学习的嵌入矩阵将Token ID映射为密集向量。语义相似的Token会产生相近的向量，向量运算（如“国王-男人+女人≈女王”）反映了学习到的关系。

3. **位置编码**：注入单词顺序信息。现代LLM使用旋转位置编码（RoPE），基于位置旋转Token向量，从而更好地处理相对距离和长上下文。

4. **注意力机制**：通过查询、键、值向量实现Token间的信息交互。Token计算相似度得分（点积），经Softmax处理得到权重，并对值向量进行加权平均。因果掩码防止从左到右生成时“看到未来”。归纳头通过复制模式实现上下文学习。

5. **多头注意力**：并行运行多个注意力通道（各有可学习的投影），使模型能同时捕捉不同的语言关系。

文章还指出，完整注意力的计算成本很高，不同LLM共享相同的Transformer架构，但在训练数据、规模和后期训练上有所差异。

---

## 10. 谷歌每月将向SpaceX支付9.2亿美元的计算费用

**原文标题**: Google will pay SpaceX $920M per month for compute

**原文链接**: [https://techcrunch.com/2026/06/05/google-will-pay-spacex-920m-per-month-for-compute/](https://techcrunch.com/2026/06/05/google-will-pay-spacex-920m-per-month-for-compute/)

**文章摘要：**

SpaceX通过一份监管文件宣布，已与谷歌达成一项大型计算交易。根据协议，谷歌将从2026年10月至2029年6月，每月向SpaceX支付**9.2亿美元**，以获得约11万块英伟达GPU及其他组件的使用权。该交易规模小于与Anthropic达成的协议（每月12.5亿美元），提供的计算能力约为其一半。

谷歌表示，其AI产品（特别是Gemini Enterprise）需求超出预期，因此需要“过渡性计算能力”。协议包含一项取消条款，双方可在2026年12月31日之后提前90天通知解约。谷歌的计算资源将在2026年9月前逐步提升，期间享受折扣费率；若Spacex未能在2026年9月30日前交付承诺的GPU数量，谷歌有权终止协议，或接受更少的设备并支付更低费用。

该交易恰逢SpaceX即将进行IPO，其目标是以1.75万亿美元的估值融资750亿美元。谷歌是SpaceX的长期投资方，其持股在IPO后预计价值超过1000亿美元。据报道，双方还正在探讨为SpaceX的未来计划建设轨道数据中心。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 2 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 3 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 4 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 5 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 6 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 7 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 8 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 9 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 10 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 11 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 12 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 13 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 14 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 15 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 16 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 17 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 18 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 19 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 20 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 21 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 22 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 23 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 24 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 25 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 26 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 27 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 28 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 29 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 30 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 31 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 32 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 33 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 34 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 35 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 36 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 37 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 38 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 39 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 40 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 41 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 42 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 43 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 44 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 45 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 46 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 47 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 48 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 49 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 50 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 51 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 52 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 53 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 54 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 55 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 56 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 57 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 58 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 59 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 60 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 61 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 62 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 63 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 64 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 65 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 66 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 67 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 68 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 69 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 70 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 71 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 72 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 73 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 74 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 75 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 76 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 77 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 78 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 79 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 80 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 81 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 82 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 83 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 84 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 85 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 86 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 87 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 88 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 89 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 90 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 91 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 92 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 93 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 94 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 95 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 96 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 97 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 98 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 99 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 100 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 101 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 102 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 103 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 104 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 105 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 106 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 107 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 108 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 109 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 110 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 111 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 112 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 113 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 114 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 115 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 116 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 117 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 118 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 119 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 120 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 121 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 122 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 123 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 124 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 125 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 126 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 127 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 128 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 129 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 130 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 131 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 132 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 133 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 134 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 135 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 136 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 137 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 138 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 139 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 140 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 141 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 142 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 143 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 144 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 145 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 146 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 147 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 148 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 149 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 150 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 151 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 152 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 153 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 154 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 155 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 156 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 157 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 158 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 159 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 160 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 161 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 162 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 163 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 164 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 165 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 166 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 167 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 168 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 169 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 170 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 171 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 172 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 173 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 174 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 175 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 176 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 177 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 178 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 179 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 180 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 181 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 182 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 183 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 184 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 185 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 186 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 187 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 188 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 189 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 190 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 191 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 192 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 193 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 194 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 195 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 196 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 197 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 198 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 199 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 200 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 201 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 202 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 203 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 204 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 205 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 206 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 207 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 208 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 209 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 210 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 211 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 212 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 213 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 214 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 215 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 216 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 217 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 218 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 219 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 220 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 221 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 222 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 223 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 224 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 225 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 226 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 227 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 228 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 229 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 230 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 231 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 232 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 233 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 234 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 235 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 236 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 237 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 238 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 239 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 240 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 241 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 242 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 243 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 244 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 245 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 246 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 247 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 248 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 249 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 250 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 251 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 252 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 253 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 254 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 255 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 256 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 257 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 258 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 259 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 260 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 261 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 262 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 263 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 264 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 265 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 266 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 267 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 268 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 269 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 270 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 271 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 272 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 273 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 274 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 275 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 276 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 277 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 278 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 279 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 280 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 281 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 282 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 283 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 284 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 285 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 286 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 287 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 288 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 289 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 290 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 291 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 292 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 293 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 294 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 295 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 296 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 297 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 298 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 299 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 300 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 301 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 302 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 303 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 304 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 305 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 306 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 307 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 308 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 309 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 310 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 311 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 312 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 313 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 314 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 315 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 316 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 317 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 318 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 319 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 320 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 321 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 322 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 323 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 324 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 325 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 326 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 327 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 328 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 329 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 330 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 331 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 332 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 333 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 334 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 335 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 336 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 337 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 338 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 339 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 340 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 341 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 342 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 343 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 344 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 345 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 346 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 347 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 348 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 349 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 350 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 351 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 352 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 353 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 354 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 355 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 356 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 357 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 358 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 359 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 360 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 361 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 362 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 363 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 364 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 365 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 366 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 367 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 368 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 369 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 370 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 371 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 372 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 373 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 374 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 375 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 376 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 377 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 378 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 379 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 380 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 381 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 382 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 383 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 384 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 385 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 386 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 387 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 388 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 389 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 390 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 391 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 392 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 393 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 394 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 395 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 396 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 397 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 398 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 399 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 400 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 401 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 402 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 403 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 404 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 405 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 406 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 407 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 408 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 409 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 410 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 411 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 412 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 413 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 414 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 415 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 416 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 417 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 418 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 419 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 420 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 421 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 422 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 423 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 424 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 425 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 426 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 427 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 428 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 429 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 430 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 431 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 432 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 433 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 434 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 435 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 436 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 437 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 438 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 439 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 440 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 441 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
