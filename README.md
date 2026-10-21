# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-22.md)

*最后自动更新时间: 2026-10-22 04:56:36*
## 1. Mistral Large 4 大模型发布

**原文标题**: Mistral Large 4

**原文链接**: [https://docs.mistral.ai/models/mistral-large-4-0](https://docs.mistral.ai/models/mistral-large-4-0)

Mistral Large 4于2026年10月6日以公开预览形式发布（版本v26.10），是一款采用开源权重的前沿通用多模态大模型。该模型基于细粒度专家混合（MoE）架构，拥有1.05万亿总参数与520亿活跃参数，并配备16亿参数的视觉编码器，支持100万token超长上下文。定价方面，输入每百万token为1.36美元，缓存输入为0.14美元，输出为4.18美元。功能上，该模型涵盖结构化输出、函数调用、文档问答、前缀匹配、聊天补全、批处理、智能体与会话管理、内置工具调用等能力，兼容/v1/chat/completions和/v1/conversations等接口。此外，平台还列出Z.ai GLM 5.3、Z.ai GLM 5.2及Shieldstral 1.0等模型供用户对比选择。

---

## 2. 今日PHP安全发布与PHP安全体系强化之路

**原文标题**: Today's PHP security release, and how we're strengthening security

**原文链接**: [https://thephp.foundation/blog/2026/10/21/todays-php-security-release-and-how-were-strengthening-php-security/](https://thephp.foundation/blog/2026/10/21/todays-php-security-release-and-how-were-strengthening-php-security/)

摘要：2026年10月21日，PHP项目发布8.5.12、8.4.27、8.3.36及8.2.35版本，修复两个关键远程代码执行漏洞：CVE-2026-109618（内存溢出致RCE）与CVE-2026-109619（释放后使用致RCE），均允许未认证攻击者在默认配置下执行代码，CVSS评分9.2。漏洞涉及PHP核心内存管理与错误处理，修复面临兼容性、性能及大量第三方扩展适配的多重权衡。2024年PHP首次接受Quarkslab外部审计时已发现OOM问题，但因无明确利用路径且核心开发者资源匮乏，修复长期停滞。2026年PHP基金会成立生态系统安全团队，增派专职安全工程师，引入Claude Mythos、Daybreak Red等AI工具加速漏洞发现与验证。Calif、OpenAI、Wiz等机构密集报告后，修复成为最高优先级。然而发布前48小时CVE编号意外泄露，Calif误发演示视频，Chainguard单方面提前公开修复镜像，协调披露节奏受阻。文章呼吁依赖PHP的企业、云服务商及政府机构向PHP基金会持续注资，培养更多精通PHP代码库的工程师，从根本上消除安全隐患。

---

## 3. GitLab CVSS 10.0整数溢出漏洞严重补丁发布

**原文标题**: GitLab CVSS 10.0 Integer Overflow issue

**原文链接**: [https://docs.gitlab.com/releases/patches/patch-release-gitlab-19-5-1-released/](https://docs.gitlab.com/releases/patches/patch-release-gitlab-19-5-1-released/)

2026年10月21日，GitLab发布紧急安全补丁，修复版本涵盖19.5.1、19.4.3、19.3.6、19.2.9、19.1.9、19.0.10及18.11.13，影响GitLab社区版和企业版。本次共修复12个安全漏洞，其中最严重的是CVE-2026-110264（CVSS 10.0），为正则表达式编译器中的整数溢出漏洞，攻击者无需认证即可通过构造特殊正则表达式触发整数溢出，进而实现远程代码执行。该漏洞影响GitLab 7.0至19.5的广泛版本，已被GitLab安全团队通过HackerOne计划报告。此外还包括：CVE-2026-15723（CVSS 8.2，OmniAuth与LDAP自动关联认证绕过）、CVE-2026-112212（CVSS 7.5，OAuth/OIDC发现端点缓存投毒）、多个中低危漏洞涉及访问控制、凭据泄露及GraphQL越权等问题。GitLab已同步发布两款威胁检测规则帮助自托管实例识别利用尝试。GitLab.com及GitLab Dedicated已自动完成修补，无需额外操作。GitLab强烈建议所有自托管用户立即升级至对应最新补丁版本，并持续遵循其安全最佳实践。

---

## 4. Windows 11为何仍内置Windows 95的内存管理器

**原文标题**: Why Windows 11 still ships with Windows 95's memory manager hidden inside it

**原文链接**: [https://www.windowslatest.com/2026/10/19/why-windows-11-still-ships-with-windows-95s-memory-manager-hidden-inside-it/](https://www.windowslatest.com/2026/10/19/why-windows-11-still-ships-with-windows-95s-memory-manager-hidden-inside-it/)

摘要：Windows 11 26H2版中仍保留一项名为EmulateHeap的兼容性修复，其核心是将Windows 95的堆管理器源代码重新编译后嵌入系统兼容性框架，使依赖旧版内存管理行为的老程序得以运行。此事渊源可追溯至经典游戏《模拟城市》（SimCity）：该游戏存在释放后读取内存的缺陷，在Windows 3.x上因系统不立即释放内存而侥幸通过，但在Windows 95中崩溃。微软随即为该游戏专门修改了操作系统内存分配器。此后，更多老应用同样依赖Windows 95堆的特殊行为，微软便将整套旧堆管理器代码直接复制编译，作为通用兼容方案。微软工程师雷蒙德·陈评价此举"极其简单却完全疯狂"。该代码并非后台常驻，仅在为指定应用启用修复时才从磁盘加载。用户可通过微软Windows ADK工具包中的"兼容性管理员"验证其存在。不过，该修复并非万能——部分老游戏如《GTA：罪恶都市》启用后反而出现声音丢失等问题。颇具讽刺意味的是，微软正用WinUI 3取代Windows 95时代的属性对话框，却仍为少数老应用保留着30年前的内存管理代码，却未能将同样精力用于修复被移除的3D弹珠台。

---

## 5. PyPI LiteLLM 1.107.0遭投毒：植入凭证窃取器与远程控制后门

**原文标题**: Compromised LiteLLM 1.107.0 on PyPI Installs a Credential Stealer and Backdoor

**原文链接**: [https://safedep.io/litellm-pypi-compromise-credential-stealer-backdoor/](https://safedep.io/litellm-pypi-compromise-credential-stealer-backdoor/)

摘要：LiteLLM 1.107.0在PyPI上的发布包被植入凭证窃取器与远程代码执行后门，所有七个平台wheel均受影响，PyPI已下架该版本。恶意代码通过三个文件注入site-packages：cook.pth在每次Python进程启动时加载cook.py窃取器，sitecustomize.py则启动后台守护进程作为持久化后门，无需导入litellm即可触发。窃取器收集SSH密钥、云凭证（AWS/Azure/GCP）、浏览器密码、CI/CD密钥、各AI开发工具令牌及LiteLLM代理数据库中的LLM API密钥，经AES-256加密后发送至攻击者服务器www.litellm[.]dev。后门每小时从攻击者GitHub仓库读取C2地址，下载并执行远程载荷。投毒手段为在pyproject.toml的maturin构建段注入data="cook"配置，使构建时将恶意cook/目录打包进wheel，而上游GitHub源码不含任何恶意内容。SafeDep评估认为攻击系通过入侵BerriAI私有发布管道实现，1.106.2及rc1、rc2版本均安全。攻击者约在发布两小时后删除了相关GitHub账户，后门目前因C2地址缺失而失效，但此前已感染的主机可能已执行过第二阶段载荷。

---

## 6. 谷歌 Rust 风格指南

**原文标题**: Google's Rust Style Guide

**原文链接**: [https://google.github.io/styleguide/rustguide.html](https://google.github.io/styleguide/rustguide.html)

摘要：本文件是谷歌内部 Rust 语言风格指南，涵盖代码格式与 API 设计，适用于 google3、Android、ChromeOS、Fuchsia 及 Chrome 等代码库。核心目标为提升可读性与可维护性、支撑大规模重构（LSCs），并与开源 Rust 生态保持一致；规则对库代码为强制，对应用代码为强建议。主要内容包括：代码组织偏好小型 crate 与扁平文件布局，模块按主类型命名，禁止 glob 导入，use 语句限定单一模块，优先局部导入 trait，顶层函数以模块名限定调用；格式上统一使用 rustfmt（100 列上限）；所有权方面避免 Rc/Arc，优先借用而非深拷贝；函数设计优先枚举替代布尔值、接受 Into 参数、返回迭代器；类型层面新类型优于类型别名，命名字段优于元组；特征实现优先使用标准库 trait 与 derive，必要时再定义扩展 trait；并发上 Chrome 禁止使用 async/await；命名涵盖方法、生命周期、泛型参数等规范；实现上优先模式匹配而非 check-then-unwrap、expect 优于 unwrap、避免过度类型推断。与官方 Rust 风格冲突时以本指南为准，其余遵循公共规范。

---

## 7. 八比特信任：eMudhra CA 私钥毫秒被破

**原文标题**: Eight Bits of Trust: eMudhra's CA keys cracked in milliseconds

**原文链接**: [https://scotthelme.co.uk/eight-bits-of-trust-emudhras-ca-keys-cracked-in-milliseconds/](https://scotthelme.co.uk/eight-bits-of-trust-emudhras-ca-keys-cracked-in-milliseconds/)

2026年10月，安全研究员发现eMudhra八个中间CA的P-384椭圆曲线私钥竟仅为单字节小整数（4、56、115等），任何人可在毫秒内穷举恢复，而正常私钥应为384位随机数。这八个中间证书涵盖六个TLS签发CA与两个代码签名CA，均于2025年4月创建并获Sectigo交叉签名，暴露窗口长达17个月。Chrome、Firefox及Safari已阻断相关证书，主流浏览器暂时安全；但curl、Python、Node、Git等绝大多数非浏览器TLS客户端默认不校验证书吊销与透明度日志，仍可被中间人攻击，攻击者只需处于网络路径上即可伪造任意域名证书拦截流量。Windows代码签名同样受影响。根因系HSM密钥生成脚本缺陷叠加人工操作失误，弱密钥被误用。应对建议：更新各系统CA信任库及容器镜像；路由器、IoT等无法更新的设备将暴露至2039年。

---

## 8. DuckDB 2.0.0 长期支持版"Cinnamon Teal"发布

**原文标题**: DuckDB 2.0.0 LTS “Cinnamon Teal”

**原文链接**: [https://duckdb.org/2026/10/21/announcing-duckdb-200](https://duckdb.org/2026/10/21/announcing-duckdb-200)

DuckDB团队发布2.0.0 LTS版本（代号"Cinnamon Teal"），基于近20,000个提交，为迄今最大功能发布。核心亮点：Quack协议（含CONNECT语句）实现客户端-服务器架构，支持连接PostgreSQL/MySQL并远程下推查询；异步I/O大幅提升Parquet/CSV及对象存储读取性能；VARIANT类型全面集成，支持半结构化数据shredding与列式执行；CLI新增Agent模式，为编码代理输出精简Markdown结果；全新PEG解析器默认取代旧版Bison解析器，扩展可定制SQL语法；新增触发器（BEFORE/AFTER、过渡表），支持增量维护统计视图；SQL方言新增$变量简写、数据修改CTE、NEAREST连接、嵌套模式等。扩展方面，C API v2大幅增强，支持注册自有可信扩展仓库；核心扩展DuckLake/Iceberg/Delta同步更新。迁移注意：2.0创建的数据库文件旧版本无法读取，建议先在影子环境测试。版本支持：2.0 LTS至2027年10月，1.5延至2027年3月。

---

## 9. EA宣布关闭传奇工作室BioWare

**原文标题**: EA is shutting down BioWare

**原文链接**: [https://www.theverge.com/games/1015647/ea-is-shutting-down-bioware](https://www.theverge.com/games/1015647/ea-is-shutting-down-bioware)

EA确认关闭旗下RPG工作室BioWare，并取消正在预研的下一款《质量效应》游戏，涉及约400人被裁，其中BioWare约50人。此举发生在EA于今年8月以550亿美元被沙特公共投资基金、Silver Lake等财团私有化之后。BioWare成立逾30年，曾打造《博德之门》《无冬之夜》《龙腾世纪》《质量效应》《圣歌》等经典，深刻塑造了RPG类型，但近年作品接连失手，2017年《质量效应：仙女座》、2019年《圣歌》及2025年《龙腾世纪：幕帘守卫》均未达预期。EA同时公布多项战略调整：Respawn与DICE将合作开发新项目，据报为新《星球大战：前线》；继续推进《漫威：钢铁侠》和新《星球大战：绝地》；研发社交开放世界美式橄榄球游戏"Project Gridiron"及拳击游戏《Fight Night》新作；《模拟人生》暂停"Project Lotus"转向"Project Evergreen"；《Skate》工作室缩减规模。亚马逊《质量效应》改编剧的命运仍不明朗。

---

## 10. 自动化之后：单人创业将成为常态

**原文标题**: After automation: Solo founding will be the default

**原文链接**: [https://every.to/thesis-statements/julian-weisser](https://every.to/thesis-statements/julian-weisser)

作者Julian Weisser（Solo Founders创始人）指出，过去因开发与销售各占满全部精力，联合创始人几乎是创业标配，Facebook、Airbnb等故事更将这一模式神化。然而AI时代彻底改写了格局——构建产品并触达客户所需的时间和资金大幅缩减。据其与Carta联合发布的报告，2018至2026年间，单人创业者占新创企业的比例近乎翻倍，已达39%，"单干"正从异类变为常态。哈佛学者Noam Wasserman的研究显示，65%的高潜力创业公司因人际冲突而非产品或市场问题而失败；去掉联合创始人这一变量，便消除了创业最大的杀手。但单人模式也有新代价：孤独。缺少一个能质疑计划、识别瓶颈、在疲惫时给予鼓励的人类伙伴，将成为新的主要风险，而AI虽能提速，却无法替代共情与陪伴。因此作者提出，提升单人创业成功率的关键并非随意拉一个联合创始人，而是构建资源网络与创业者社群，实现"独立创业、协同成长"。在自动化日益成熟的当下，独自创业前所未有的可行，但独自并不意味着孤立。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 2 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 3 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 4 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 5 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 6 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 7 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 8 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 9 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 10 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 11 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 12 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 13 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 14 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 15 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 16 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 17 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 18 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 19 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 20 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 21 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 22 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 23 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 24 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 25 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 26 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 27 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 28 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 29 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 30 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 31 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 32 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 33 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 34 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 35 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 36 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 37 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 38 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 39 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 40 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 41 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 42 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 43 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 44 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 45 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 46 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 47 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 48 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 49 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 50 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 51 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 52 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 53 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 54 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 55 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 56 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 57 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 58 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 59 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 60 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 61 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 62 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 63 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 64 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 65 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 66 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 67 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 68 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 69 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 70 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 71 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 72 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 73 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 74 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 75 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 76 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 77 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 78 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 79 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 80 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 81 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 82 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 83 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 84 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 85 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 86 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 87 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 88 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 89 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 90 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 91 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 92 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 93 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 94 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 95 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 96 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 97 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 98 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 99 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 100 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 101 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 102 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 103 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 104 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 105 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 106 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 107 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 108 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 109 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 110 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 111 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 112 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 113 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 114 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 115 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 116 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 117 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 118 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 119 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 120 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 121 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 122 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 123 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 124 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 125 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 126 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 127 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 128 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 129 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 130 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 131 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 132 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 133 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 134 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 135 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 136 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 137 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 138 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 139 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 140 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 141 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 142 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 143 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 144 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 145 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 146 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 147 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 148 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 149 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 150 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 151 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 152 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 153 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 154 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 155 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 156 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 157 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 158 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 159 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 160 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 161 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 162 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 163 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 164 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 165 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 166 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 167 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 168 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 169 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 170 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 171 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 172 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 173 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 174 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 175 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 176 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 177 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 178 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 179 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 180 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 181 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 182 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 183 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 184 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 185 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 186 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 187 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 188 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 189 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 190 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 191 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 192 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 193 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 194 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 195 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 196 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 197 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 198 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 199 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 200 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 201 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 202 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 203 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 204 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 205 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 206 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 207 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 208 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 209 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 210 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 211 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 212 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 213 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 214 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 215 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 216 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 217 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 218 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 219 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 220 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 221 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 222 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 223 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 224 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 225 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 226 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 227 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 228 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 229 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 230 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 231 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 232 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 233 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 234 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 235 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 236 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 237 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 238 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 239 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 240 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 241 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 242 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 243 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 244 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 245 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 246 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 247 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 248 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 249 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 250 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 251 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 252 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 253 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 254 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 255 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 256 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 257 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 258 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 259 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 260 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 261 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 262 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 263 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 264 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 265 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 266 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 267 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 268 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 269 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 270 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 271 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 272 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 273 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 274 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 275 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 276 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 277 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 278 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 279 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 280 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 281 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 282 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 283 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 284 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 285 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 286 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 287 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 288 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 289 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 290 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 291 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 292 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 293 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 294 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 295 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 296 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 297 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 298 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 299 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 300 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 301 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 302 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 303 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 304 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 305 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 306 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 307 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 308 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 309 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 310 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 311 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 312 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 313 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 314 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 315 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 316 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 317 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 318 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 319 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 320 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 321 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 322 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 323 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 324 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 325 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 326 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 327 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 328 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 329 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 330 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 331 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 332 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 333 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 334 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 335 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 336 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 337 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 338 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 339 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 340 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 341 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 342 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 343 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 344 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 345 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 346 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 347 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 348 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 349 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 350 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 351 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 352 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 353 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 354 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 355 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 356 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 357 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 358 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 359 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 360 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 361 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 362 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 363 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 364 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 365 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 366 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 367 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 368 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 369 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 370 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 371 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 372 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 373 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 374 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 375 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 376 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 377 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 378 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 379 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 380 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 381 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 382 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 383 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 384 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 385 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 386 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 387 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 388 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 389 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 390 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 391 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 392 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 393 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 394 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 395 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 396 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 397 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 398 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 399 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 400 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 401 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 402 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 403 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 404 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 405 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 406 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 407 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 408 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 409 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 410 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 411 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 412 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 413 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 414 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 415 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 416 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 417 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 418 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 419 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 420 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 421 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 422 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 423 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 424 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 425 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 426 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 427 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 428 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 429 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 430 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 431 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 432 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 433 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 434 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 435 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 436 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 437 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 438 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 439 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 440 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 441 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 442 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 443 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 444 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 445 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 446 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 447 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 448 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 449 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 450 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 451 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 452 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 453 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 454 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 455 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 456 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 457 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 458 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 459 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 460 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 461 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 462 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 463 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 464 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 465 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 466 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 467 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 468 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 469 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 470 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 471 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 472 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 473 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 474 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 475 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 476 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 477 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 478 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 479 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 480 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 481 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 482 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 483 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 484 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 485 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 486 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 487 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 488 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 489 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 490 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 491 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 492 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 493 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 494 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 495 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 496 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 497 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 498 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 499 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 500 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 501 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 502 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 503 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 504 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 505 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 506 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 507 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 508 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 509 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 510 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 511 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 512 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 513 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 514 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 515 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 516 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 517 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 518 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 519 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 520 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 521 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 522 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 523 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 524 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 525 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 526 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 527 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 528 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 529 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 530 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 531 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 532 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 533 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 534 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 535 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 536 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 537 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 538 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 539 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 540 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 541 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 542 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 543 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 544 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 545 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 546 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 547 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 548 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 549 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 550 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 551 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 552 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 553 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 554 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 555 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 556 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 557 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 558 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 559 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 560 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 561 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 562 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 563 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 564 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 565 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 566 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 567 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 568 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 569 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 570 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 571 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 572 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 573 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 574 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 575 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 576 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 577 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
