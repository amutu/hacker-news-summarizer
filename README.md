# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-17.md)

*最后自动更新时间: 2026-11-17 04:57:57*
## 1. 美国银行、大通银行、合众银行、富国银行及Zelle支付服务遭报故障

**原文标题**: Outages reported at Bank of America, Chase, U.S. Bank, Wells Fargo and Zelle

**原文链接**: [https://apnews.com/article/bank-outage-chase-wells-fargo-truist-50fee2693c22f597fa6ca51a97ef2cda](https://apnews.com/article/bank-outage-chase-wells-fargo-truist-50fee2693c22f597fa6ca51a97ef2cda)

无法访问该文章链接

---

## 2. 太阳能板间放牧绵羊的生态与经济价值

**原文标题**: Grazing sheep in fields with solar arrays

**原文链接**: [https://news.cornell.edu/stories/2026/10/sheep-grazing-solar-fields-offers-farmers-economic-ecological-gains](https://news.cornell.edu/stories/2026/10/sheep-grazing-solar-fields-offers-farmers-economic-ecological-gains)

摘要：康奈尔大学两项新研究揭示了太阳能板间放牧绵羊的生态效益与经济前景。一项发表于《环境研究快报》的研究基于康奈尔卡斯卡迪拉社区太阳能农场为期三年的试验，发现每公顷放牧两只绵羊可使蜜蜂、瓢虫等有益昆虫数量较割草对照区增加38%，其中蜜蜂增幅达83%；四只/公顷时效果与割草相当，八只/公顷虽植被管理最佳但蜜蜂数量下降45%。另一项发表于《制造与服务运营管理》的研究由康奈尔商学院团队完成，开发了电子表格模型，帮助农民依据畜群规模、成本、收入及场地植被优化经营决策，同时协助开发商制定可持续合约，该工具已被美国联合光农复合公司采用。经济层面，美国约半数羊肉依赖进口，太阳能放牧为羊农提供稳定收入，有望推动本土羊产业扩张，带动加工、信贷及供应链发展，振兴乡村经济。研究由康奈尔农业与生命科学学院多团队合作完成，资金来自阿特金森可持续发展中心、国家食品与农业研究所及国家科学基金会。

---

## 3. Jiff 1.0：Rust 的日期时间库

**原文标题**: Jiff 1.0: A datetime library for Rust

**原文链接**: [https://burntsushi.net/jiff/](https://burntsushi.net/jiff/)

Jiff 是 Rust 生态中广受采用的日期时间库，此次发布 1.0 正式版，承诺长期稳定维护，避免破坏性更新。其核心理念是"成功之坑"设计——将时区、夏令时等复杂逻辑内化于库内部，降低用户出错概率。文章以"洋葱模型"介绍了 Jiff 的类型层次：从 civil::Date、civil::Time 到 civil::DateTime，再到 Timestamp（Unix 时间戳）与 TimeZone，最终组合为 ZonedDateTime，覆盖从本地时间到绝对时刻的完整转换。时区处理是重点：Jiff 自动应对夏令时的"折叠"（时间重复）与"间隙"（时间跳过），默认采用"兼容"策略，亦支持 earlier、later、unambiguous 等策略。持续时间方面，Span 混合日历单位（年、月、日）与物理单位（时、分、秒），SignedDuration 仅表示物理时间。此外还涵盖解析与格式化（strptime/strftime）、多历法支持及基于 ICU4X 的国际化等功能。目标读者为需要健壮、易用日期时间处理的 Rust 开发者。

---

## 4. Frame – 31.5英寸全彩电子墨水屏

**原文标题**: Frame – 31.5" color ePaper display

**原文链接**: [https://trmnl.com/blog/introducing-frame](https://trmnl.com/blog/introducing-frame)

TRMNL正式发布第三款产品Frame——一款31.5英寸全彩电子墨水屏，搭配手工木质外壳，首批限量约470台，预计2026年底开始发货，大部分于2027年初送达。Frame延续TRMNL生态全部功能，并新增多项特性：Clock Sync定时刷新减少闪烁并延长续航；microSD离线模式实现零数据上传；背面增设USB-C接口支持常电连接；自研Lazarus色彩引擎优化Spectra 6面板色彩表现；支持横竖双方向安装，可选配支架。平台还推出"本地艺术"插件，致敬创始人早期创业项目ArtSpot。创始人回忆，其2013年创办的艺术展示平台ArtSpot虽已关闭，但"让艺术融入日常"的愿景延续至今；TRMNL坚持"不做电视、不做时钟"的理念，在灰度产品验证成功后决定拥抱全彩。供应链方面，TRMNL强调透明化：塑料件在乔治亚州以3D打印日产，木壳由自家木工坊按需制作，电子件依赖海外但库存充足。首批仅发往美国、加拿大、墨西哥和澳大利亚，2027年初计划在柏林开设第二木工坊覆盖欧洲，所有产品均由团队自行组装，绝不外包。

---

## 5. 方圆形

**原文标题**: Squircles

**原文链接**: [https://linebender.org/wiki/curves/squircle/](https://linebender.org/wiki/curves/squircle/)

方圆形是介于正方形与圆形之间的形状，无统一定义，存在多种曲线变体。最知名的是超椭圆（|x|^n+|y|^n=1），由Piet Hein推广，n=2为圆，n趋向无穷趋近正方形。文章以"gauge"（中点坐标0.5^(1/n)）作为统一度量。方圆形分两类：单解析曲线与平边混合方案，后者可适配任意宽高比而不扭曲角形。Apple在iOS 7将图标改为自研方圆形，早期分析误判为超椭圆指数5，实为平边方圆形，但存在多余直线段与不对称等小瑕疵。Figma发布清理后的近似方案，社区涌现大量开源实现，但曲率不连续，仅达G1连续；Clothoid方圆形具备G2连续但gauge范围更窄。方圆形已被纳入CSS corner-shape属性，Chromium采用两段贝塞尔曲线近似超椭圆，效果良好；以指数3超椭圆配平边长度可较好还原Apple形状。此外，多项式螺旋线、双曲线、Fernández-Guasti曲线等亦可充当方圆形。文章还指出方圆形的偏移曲线并非严格方圆形，但视觉差异有限。

---

## 6. ThinkPad电源键"复活密码"：让死机笔记本重获新生（2007）

**原文标题**: The Secret ThinkPad Powerbutton Code to Bring Dead Laptops Back to Life (2007)

**原文链接**: [https://masnick.com/posts/the-secret-thinkpad-powerbutton-code-to-bring-dead-laptops-back-to-life/](https://masnick.com/posts/the-secret-thinkpad-powerbutton-code-to-bring-dead-laptops-back-to-life/)

2007年，博主Mike Masnick的新款ThinkPad z61t在会议前突然完全死机，无指示灯、无反应。他致电IBM客服，客服告知一个"电源键复活密码"：先拔掉电源适配器和电池，以每秒一次的速度连按电源键10次，再长按电源键30秒，最后装回电池并按一次开机，电脑即恢复正常。客服称原理是释放主板上的残留静电电荷。文章发布后引发大量评论，众多用户证实该技巧有效，涵盖T41、T42、T61、T43、X41、X200、T400、T500等多个型号，有人甚至在笔记本被牛奶浸湿、USB插反烧毁后仍成功复活，避免了数百美元维修费用。但也有少数用户反馈该技巧无效，最终通过重新插拔内存条或取出光驱解决问题。总体而言，这是一篇以亲身经历分享、经大量用户验证的ThinkPad应急自救指南，虽原理简单（本质为硬件级硬重置放电），却能解决绝大多数"完全无响应"的死机问题。

---

## 7. Aristotle新增Rust语言支持

**原文标题**: Aristotle Expands into Rust

**原文链接**: [https://www.harmonic.fun/news/aristotle-rust-verification/](https://www.harmonic.fun/news/aristotle-rust-verification/)

Aristotle（形式化验证工具）宣布新增Rust语言支持，继C与Verilog后进一步拓展验证能力。该工具可证明Rust代码无未定义行为且符合规范，涵盖unsafe块，并能验证C迁移至Rust后的行为一致性。CEO Tudor Achim表示，Rust已成为关键领域新代码的主要语言，AI也正深度参与编码，Aristol适用于云计算、汽车、航空航天、金融等行业。在区块链领域，Rust是Solana智能合约的核心语言，链上交易不可撤销，单一漏洞即可能导致巨额资金损失。Aristol可替代缓慢且易过时的手动审计，对每行代码进行全输入形式化验证。实际案例中，开源订单簿Manifest经Aristol验证了28项结果并发现一处舍入缺陷；主经纪商Project 0则确保存取、借贷、清算等操作中账目始终一致。Aristol已与Solana基金会达成合作，助力新开发者验证合约。产品即日起上线，提供自助及定制部署服务。

---

## 8. 《Heat》版权之争：曼恩"与己交易"成胜负手

**原文标题**: Michael Mann's 'Heat' Copyright Fight Turns on a Deal with Himself

**原文链接**: [https://copyrightlately.com/michael-mann-heat-copyright-termination/](https://copyrightlately.com/michael-mann-heat-copyright-termination/)

2026年11月，New Regency在洛杉矶联邦法院起诉导演迈克尔·曼恩，请求判令其三项版权终止通知无效。曼恩试图收回1981至1985年间《Heat》早期剧本版权，声称该时期他系自由创作者而非其控股公司（loan-out）的员工。New Regency则指出，1994年版权登记将作者明确列为"曼恩公司（雇佣作品）"，且近二十年协议均标注该剧本为雇佣作品。

诉讼背景是《Heat 2》即将开拍：Warner Bros.因预算问题退出后，Amazon两度分别从双方购买续集权利以对冲诉讼风险。曼恩的终止通知指向1988年一项据称仅存于口头、无法举证的协议及1989年一项书面协议。

法律核心在于：若剧本确为雇佣作品，版权自始归属公司，个人无权行使终止权。曼恩并未否认loan-out公司存在，仅主张争议作品创作于雇佣关系之外，但跨越近二十年的纸面证据均不利于他，且其1989年协议中曾担保相关权利未转让他人，与终止通知内容自相矛盾。

文章认为New Regency证据优势明显，但曼恩的论点并非毫无法律空间。鉴于Amazon已同时持有双方协议，案件大概率以和解收场。

---

## 9. 软件正在经历系统性崩塌

**原文标题**: Software is breaking down at a systemic level

**原文链接**: [https://www.breck-mckye.com/blog/2026/11/software-is-breaking-down-at-a-systemic-level/](https://www.breck-mckye.com/blog/2026/11/software-is-breaking-down-at-a-systemic-level/)

2026年，微软全球宕机、美国FAA全面停飞、PHP2Shell漏洞波及七成网站、eMudhra私钥泄露等多起事件集中爆发，暴露出软件行业正面临系统性崩溃。这些问题表面原因各异，却共享同一特征：由低质量零件构成的高复杂度系统，任何单点失效都可能引发连锁崩塌。文章指出，危机根源可追溯至十年前云计算与开源生态的兴起。NPM等包管理器让开发者无需理解底层细节即可调用他人代码，技术岗位从专业分工走向通才化，工程师逐渐丧失对系统的整体掌控力，也失去了预警风险的能力。近年来AI的介入进一步加剧了问题。作者提出"退相干"概念：AI生成的代码在局部看似合理，却在整体上彼此矛盾、逐渐失控。工程师已将设计、编排乃至整体架构交由AI代理，深度思考正在消亡，取而代之的是虚假自信与习得性无助。从需求文档到代码实现，整条工作链已被AI贯穿，缺乏真正的意图与人为把控。文章警告，软件已深度嵌入航空、金融、交通等社会基础设施，公众对技术系统的信任远超其承载能力。若复杂性继续以不可持续的速度积累，2026年的频繁故障将不再是例外，而将成为常态。

---

## 10. 巨型路边地标面临成本攀升与前途未卜

**原文标题**: Giant Roadside Attractions Face Mounting Costs and an Uncertain Future

**原文链接**: [https://www.nytimes.com/2026/11/08/world/canada/roadside-attractions-giant-dinosaur.html](https://www.nytimes.com/2026/11/08/world/canada/roadside-attractions-giant-dinosaur.html)

加拿大阿尔伯塔省德鲁赫勒市拥有巨型霸王龙雕塑"泰拉"，高86英尺，约为真实霸王龙的四倍，是这座"世界恐龙之都"的标志性景观。然而，泰拉正面临自身"灭绝"危机：土地租约将于2029年到期，维护成本持续攀升，当地商会已决定届时关闭该景点。泰拉存在逾25年，曾吸引无数游客停车拍照，勇者更可攀登106级台阶从雕塑口中俯瞰加拿大荒原。泰拉并非孤例，北美和澳大利亚有数千个社区曾以巨型路边雕塑吸引目光、提升知名度，但数十年过去，这些地标普遍面临新鲜感消退、维护费用高企的双重困境，地方政府被迫在存续与拆除间抉择。这一趋势折射出"路边奇观"文化在当代经济压力下的衰落，也引发人们对地方文化遗产如何延续的广泛思考。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 2 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 3 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 4 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 5 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 6 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 7 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 8 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 9 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 10 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 11 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 12 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 13 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 14 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 15 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 16 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 17 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 18 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 19 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 20 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 21 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 22 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 23 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 24 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 25 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 26 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 27 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 28 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 29 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 30 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 31 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 32 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 33 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 34 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 35 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 36 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 37 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 38 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 39 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 40 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 41 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 42 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 43 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 44 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 45 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 46 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 47 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 48 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 49 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 50 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 51 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 52 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 53 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 54 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 55 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 56 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 57 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 58 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 59 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 60 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 61 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 62 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 63 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 64 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 65 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 66 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 67 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 68 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 69 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 70 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 71 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 72 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 73 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 74 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 75 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 76 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 77 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 78 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 79 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 80 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 81 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 82 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 83 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 84 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 85 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 86 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 87 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 88 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 89 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 90 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 91 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 92 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 93 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 94 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 95 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 96 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 97 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 98 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 99 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 100 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 101 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 102 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 103 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 104 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 105 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 106 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 107 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 108 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 109 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 110 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 111 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 112 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 113 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 114 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 115 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 116 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 117 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 118 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 119 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 120 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 121 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 122 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 123 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 124 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 125 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 126 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 127 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 128 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 129 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 130 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 131 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 132 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 133 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 134 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 135 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 136 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 137 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 138 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 139 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 140 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 141 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 142 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 143 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 144 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 145 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 146 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 147 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 148 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 149 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 150 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 151 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 152 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 153 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 154 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 155 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 156 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 157 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 158 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 159 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 160 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 161 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 162 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 163 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 164 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 165 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 166 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 167 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 168 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 169 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 170 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 171 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 172 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 173 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 174 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 175 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 176 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 177 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 178 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 179 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 180 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 181 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 182 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 183 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 184 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 185 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 186 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 187 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 188 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 189 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 190 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 191 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 192 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 193 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 194 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 195 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 196 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 197 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 198 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 199 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 200 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 201 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 202 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 203 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 204 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 205 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 206 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 207 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 208 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 209 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 210 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 211 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 212 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 213 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 214 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 215 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 216 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 217 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 218 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 219 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 220 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 221 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 222 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 223 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 224 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 225 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 226 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 227 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 228 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 229 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 230 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 231 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 232 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 233 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 234 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 235 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 236 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 237 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 238 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 239 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 240 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 241 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 242 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 243 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 244 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 245 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 246 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 247 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 248 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 249 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 250 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 251 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 252 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 253 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 254 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 255 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 256 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 257 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 258 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 259 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 260 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 261 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 262 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 263 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 264 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 265 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 266 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 267 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 268 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 269 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 270 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 271 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 272 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 273 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 274 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 275 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 276 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 277 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 278 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 279 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 280 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 281 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 282 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 283 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 284 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 285 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 286 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 287 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 288 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 289 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 290 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 291 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 292 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 293 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 294 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 295 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 296 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 297 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 298 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 299 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 300 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 301 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 302 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 303 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 304 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 305 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 306 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 307 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 308 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 309 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 310 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 311 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 312 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 313 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 314 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 315 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 316 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 317 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 318 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 319 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 320 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 321 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 322 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 323 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 324 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 325 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 326 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 327 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 328 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 329 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 330 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 331 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 332 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 333 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 334 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 335 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 336 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 337 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 338 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 339 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 340 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 341 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 342 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 343 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 344 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 345 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 346 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 347 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 348 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 349 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 350 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 351 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 352 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 353 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 354 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 355 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 356 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 357 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 358 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 359 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 360 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 361 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 362 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 363 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 364 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 365 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 366 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 367 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 368 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 369 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 370 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 371 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 372 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 373 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 374 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 375 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 376 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 377 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 378 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 379 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 380 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 381 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 382 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 383 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 384 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 385 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 386 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 387 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 388 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 389 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 390 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 391 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 392 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 393 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 394 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 395 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 396 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 397 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 398 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 399 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 400 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 401 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 402 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 403 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 404 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 405 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 406 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 407 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 408 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 409 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 410 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 411 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 412 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 413 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 414 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 415 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 416 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 417 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 418 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 419 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 420 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 421 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 422 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 423 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 424 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 425 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 426 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 427 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 428 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 429 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 430 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 431 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 432 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 433 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 434 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 435 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 436 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 437 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 438 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 439 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 440 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 441 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 442 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 443 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 444 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 445 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 446 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 447 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 448 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 449 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 450 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 451 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 452 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 453 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 454 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 455 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 456 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 457 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 458 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 459 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 460 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 461 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 462 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 463 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 464 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 465 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 466 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 467 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 468 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 469 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 470 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 471 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 472 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 473 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 474 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 475 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 476 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 477 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 478 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 479 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 480 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 481 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 482 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 483 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 484 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 485 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 486 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 487 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 488 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 489 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 490 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 491 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 492 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 493 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 494 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 495 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 496 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 497 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 498 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 499 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 500 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 501 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 502 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 503 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 504 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 505 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 506 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 507 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 508 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 509 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 510 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 511 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 512 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 513 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 514 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 515 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 516 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 517 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 518 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 519 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 520 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 521 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 522 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 523 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 524 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 525 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 526 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 527 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 528 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 529 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 530 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 531 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 532 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 533 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 534 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 535 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 536 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 537 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 538 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 539 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 540 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 541 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 542 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 543 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 544 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 545 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 546 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 547 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 548 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 549 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 550 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 551 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 552 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 553 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 554 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 555 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 556 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 557 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 558 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 559 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 560 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 561 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 562 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 563 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 564 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 565 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 566 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 567 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 568 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 569 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 570 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 571 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 572 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 573 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 574 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 575 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 576 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 577 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 578 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 579 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 580 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 581 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 582 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 583 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 584 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 585 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 586 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 587 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 588 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 589 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 590 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 591 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 592 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 593 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 594 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 595 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 596 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 597 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 598 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 599 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 600 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 601 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 602 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 603 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
