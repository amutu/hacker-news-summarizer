# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-21.md)

*最后自动更新时间: 2026-09-21 04:57:39*
## 1. 三星预计明年HBM4及HBM4E产量将翻倍以上

**原文标题**: Samsung is expected to more than double output of its HBM4 and HBM4E DRAM

**原文链接**: [https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say](https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say)

据半导体行业消息，三星电子预计明年将其第六代HBM4和第七代HBM4E高带宽内存产量增加一倍以上，核心依据是玻璃载板（HBM晶圆减薄时的关键支撑材料）外购清洗量将从今年每月2万片增至明年5万片，增幅达2.5倍，而去年该数字仅为每月1万片。三星HBM4及HBM4E以12层及以上堆叠为主，对晶圆减薄及翘曲控制要求极高。今年2月，三星已启动HBM4量产出货，采用10纳米级第六代（1c）DRAM搭配4纳米逻辑基底芯片；5月更向英伟达等客户送样12层HBM4E。行业预计，三星明年HBM月产晶圆将从今年约18万片增至约25万片，增幅近40%；HBM4家族出货占比预计从今年约40%升至明年约80%，显示三星正将高附加值的HBM4系列作为扩产核心。

---

## 2. ChatGPT通过广告追踪Cookie获取你在其他网站上的行为数据

**原文标题**: ChatGPT now knows what you do on other websites via ad collector

**原文链接**: [https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/](https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/)

摘要：一项调查揭露OpenAI在其广告平台"bazaar"中通过名为__obi的跨站Cookie，将用户在第三方网站的行为关联至其ChatGPT账户。机制分三步：ChatGPT生成JWT令牌绑定账户与唯一标识；标识符作为Cookie写入.openai.com域（有效期一年，SameSite=None）；用户访问安装了OpenAI广告代码的网站时，浏览器自动将__obi随脚本请求发回OpenAI。调查在Chewy、Wayfair等12个商业网站成功复现，覆盖936个广告像素。SDK还采集表单字段、页面文本及标签管理器数据，邮箱电话经哈希传输，但城市、邮编明文发送；医疗条件、债务等敏感路径亦被记录。关键争议在于，OpenAI将__obi归为"分析"Cookie而非"营销"Cookie，用户即便拒绝营销授权仍被追踪。广告商无法察觉其访客正被关联至ChatGPT身份。该机制在iOS上因Safari拦截第三方Cookie而不生效，但在Android Chrome上完全运作。这是广告追踪技术首次出现在AI聊天产品中，而用户往往向AI倾诉不愿在社交网络公开的信息。

---

## 3. Pirate Face：让开源大模型永存的去中心化方舟

**原文标题**: Pirate Face Rescues LLM Models from Deletion

**原文链接**: [https://pirateface.co/](https://pirateface.co/)

Pirate Face 是一个面向主权 AI 的去中心化基础设施，将 Hugging Face 上的开源模型（LLM、图像、音频、数据集等）镜像为磁力链接，通过全球 P2P 蜂群永久保存，消除单一托管方的审查与删除风险。核心特性包括：抗审查——模型一旦从 HF 下架，P2P 网络自动接管，无单点故障；校验和验证——每份权重文件附带 HF 官方 SHA-256 哈希，确保字节级一致、杜绝篡改；无缝兼容——用户仅需设置环境变量 HF_ENDPOINT=https://pirateface.co，现有训练与推理流水线即可零代码切换。下载采用 Web-Seed（BEP-19）机制，即使零节点也能直连 HF 获取模型，HF 下线后自动回退至 P2P 网络并标记为"已拯救"。平台允许用户认领公开用户名并绑定 Hugging Face 身份以获取"已验证创作者"徽章，防止冒充。提交模型须满足 MIT 或 Apache-2.0 许可证（Kimi-K3 除外）且先在 HF 上架。积分系统奖励认领、推荐及拯救已删除模型的行为，未来计划向账户持有者发放免费算力额度与专属模型。无需注册即可浏览、下载和做种。

---

## 4. 通义千问图像 2.1

**原文标题**: Qwen Image 2.1

**原文链接**: [https://qwen.ai/blog?id=qwen-image-2.1](https://qwen.ai/blog?id=qwen-image-2.1)

摘要：本文内容极为有限，仅包含"Qwen"一词，未提供实质性正文。根据标题"Qwen Image 2.1"推断，该主题涉及阿里巴巴通义千问（Qwen）系列图像生成模型的2.1版本。通义千问是阿里巴巴集团研发的大语言模型系列，其图像生成子模型旨在实现高质量的文本到图像合成。2.1版本通常意味着在前代基础上进行了性能优化或功能迭代，可能涵盖图像分辨率、生成速度、风格多样性等方面的改进。由于原文缺乏具体细节，无法进一步概括其技术架构、核心能力、应用场景或评测表现等关键信息。建议查阅官方技术报告或发布页面以获取完整内容。

---

## 5. 新加坡国家图书馆推出微额奖励计划培养全民阅读习惯

**原文标题**: Singapore’s National Library Board offers micropayments to build reading habits

**原文链接**: [https://www.gadgetreview.com/singapore-is-paying-people-to-put-down-their-phones-and-read-books](https://www.gadgetreview.com/singapore-is-paying-people-to-put-down-their-phones-and-read-books)

2026年9月6日，新加坡国家图书馆理事会启动为期五年的ReadSG试点项目，鼓励国民放下手机、每日阅读15分钟。用户通过GovTech平台CrowdTaskSG记录阅读时间，每日可获20虚拟硬币（1000硬币兑1新元），每天仅限一次，连续50天阅读约可累计1新元。项目另设"Read for Good"公益环节：全民累计750万阅读分钟即可解锁最高15万新元的慈善捐赠。国家图书馆将奖励定位为行为助推而非收入来源，机制借鉴健身应用和会员积分体系，旨在以低门槛激励建立每日阅读习惯。ReadSG承接了2016年"国民阅读运动"等十余年扫盲遗产，目前仍处试点阶段，将根据反馈持续优化。批评者认为20硬币的回报难以吸引原本无阅读意愿者，支持者则援引行为经济学研究，指出微小激励在参与门槛低时足以促成习惯养成。该项目已引发全球政府和教育机构的关注，被视为以游戏化和微支付干预公众屏幕行为的城市级实验。若五年间积累充分参与数据，ReadSG有望成为其他城市破解手机依赖、推动公共阅读行为的参考案例。

---

## 6. 最奇特字母W的由来

**原文标题**: A Necessary History of the Oddest Letter: W

**原文链接**: [https://lithub.com/a-necessary-history-of-the-oddest-letter-w/](https://lithub.com/a-necessary-history-of-the-oddest-letter-w/)

字母W诞生于罗马帝国衰落后日耳曼语与拉丁文的碰撞。拉丁字母原本没有/w/音，而日耳曼统治者姓名（如克洛维、奥多亚塞）中大量出现这个音。六世纪起，法兰克王国书吏将两个U连写，至十一世纪融合为W，并传至英格兰。古英语中曾有专属字母wynn（Ƿ）与W竞争，最终W胜出。W在英语中承担多重功能：除表/w/音外，还标记元音位移（如town、cow中OW），并记录古英语G音的历史演变（fugol→fowl，sagu→saw）。文章着重揭示W的"圆唇效应"：/w/使后续元音圆唇化且后移，导致was与has、wand与hand不再押韵。这一现象约十五世纪才出现，莎士比亚时代尚无，其十四行诗中was仍与glass押韵，但拼写未能跟进语音变化，至今保留旧式写法。

---

## 7. 苹果 iPhone 18 Pro 相机评测

**原文标题**: Apple iPhone 18 Pro Camera test

**原文链接**: [https://www.dxomark.com/apple-iphone-18-pro-camera-test/](https://www.dxomark.com/apple-iphone-18-pro-camera-test/)

苹果 iPhone 18 Pro 在 DXOMARK 评测中获得172分，相机表现优秀。该机搭载4800万像素可变光圈主摄（f/1.48–f/4.0）、4800万像素超广角及4800万像素8倍光学长焦，三摄均为高规格配置。照片方面，曝光准确、动态范围宽，对比度与肤色渲染自然，纹理与噪点平衡良好；可变光圈在复杂场景中有效提升多主体清晰度，人像虚化与分割精度出色，但暗光下缺乏虚化效果，远端长焦细节不及华为 Pura 80 Ultra 等竞品。视频方面获189分登顶榜首，防抖流畅自然，户外动态范围强，暗光肤色与色彩表现改善明显。主要短板包括：逆光人像曝光偏低、白平衡偶有偏色、鬼影与锯齿伪影仍较明显、长焦远端画质落后于顶级旗舰。总体而言，iPhone 18 Pro 凭借可变光圈、优秀防抖及均衡画质，稳居旗舰影像第一梯队。

---

## 8. 货币的层级

**原文标题**: The Hierarchy of Money

**原文链接**: [https://gregorygundersen.com/blog/2026/09/20/hierarchy-of-money/](https://gregorygundersen.com/blog/2026/09/20/hierarchy-of-money/)

本文以村庄寓言为载体，无门槛地层层展开货币体系的演化全貌。村民以稀缺的灰色石头为货币，供给经成本自发调节；为解决跨期需求，债务、信用与利息（资金时间价值）相继诞生。银行家以借贷利差实现中介职能，并发展出资产负债记账法。流动性危机揭示银行因"短存长贷"的期限错配而天然脆弱：挤兑一旦发生，被迫折价抛售资产便造成真实财富毁损。此后银行接管日常支付，以银行券替代实物流通；银行间因客户交易自发产生临时债权债务，催生了总结算与净结算，最终引入隔夜拆借利率以赋予系统弹性。文章进而追问：当银行券和存款被普遍接受、无需即时兑付，货币的边界究竟在哪里？全文贯穿"某些货币优于另一些货币"这一核心命题，揭示货币层级——从底层实物到上层信用凭证——如何塑造信任、流动性及整个金融体系的运转逻辑。

---

## 9. 我把 Jev 改造成了（一个蹩脚的）聊天机器人

**原文标题**: I turned Jev into a (lousy) chatbot

**原文链接**: [https://github.com/kyle-pena-nlp/jevchat/](https://github.com/kyle-pena-nlp/jevchat/)

jevchat 是一个将 Jev 决策模型转化为逐步文本生成的实验性聊天工具。核心原理：每步向 Jev 提一个选择问题，由模型对候选符号（字母、整词或 BPE 子词）给出概率，经采样器抽取下一个符号后追加，循环直至 STOP 标记。项目提供多种采样策略——整体 choice、二分 bisect、分桶 buckets、多轮 refine——搭配多种字母表（26 小写字母、完整 ASCII、整词、1k/2k/5k BPE），以及 hypothesis 与 symbol 两种选项呈现方式；其中 hypothesis 将拼接后的完整文本作为选项，可使正确符号概率翻倍。此外支持束搜索、多轮集成、温度与 top-p 等常规参数，并带实时生成速率与概率分布面板，支持交互式对话和单次提问两种模式。项目定位为趣味实验，作者坦言成本不切实际、生成结果令人发笑，开发过程由 Claude 辅助完成。包含 158 个完全离线的单元测试，无需 API 即可验证核心逻辑。

---

## 10. 美国老牌精密机床制造商Sherline宣布停产停业

**原文标题**: Sherline Tools Is Going Out of Business

**原文链接**: [https://toolguyd.com/sherline-tools-shutting-down-usa-production/](https://toolguyd.com/sherline-tools-shutting-down-usa-production/)

美国精密机床品牌Sherline Tools近日向客户发布公告，宣布将逐步停止生产运营。Sherline以精密车床、铣床、微型机加工附件及小型CNC机床著称，是一家历史悠久的美国本土制造商。公司表示，2017年被收购后曾投资新产品设计、升级系统与制造工艺，但受新冠疫情冲击、制造与运营成本攀升及消费者购买习惯转变等因素综合影响，维持生产已无可持续。公司计划利用现有设备、物料和人员，在2026年10月底前继续生产与销售，但依赖大型设备的产线将更早停摆，部分产品可能提前断货。在后续安排方面，Sherline承诺在库存允许范围内继续在线供应替换零件，履行保修义务，并保留技术文档与教育资源档案，确保客户不会失去支持。一位公司负责人随后在Facebook群组中进一步确认，公司最迟将于今年年底前彻底停止运营。此举意味着这家承载众多机加工爱好者记忆的微型制造品牌将正式落幕，令人惋惜。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 2 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 3 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 4 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 5 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 6 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 7 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 8 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 9 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 10 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 11 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 12 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 13 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 14 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 15 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 16 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 17 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 18 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 19 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 20 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 21 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 22 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 23 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 24 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 25 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 26 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 27 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 28 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 29 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 30 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 31 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 32 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 33 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 34 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 35 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 36 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 37 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 38 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 39 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 40 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 41 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 42 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 43 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 44 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 45 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 46 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 47 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 48 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 49 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 50 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 51 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 52 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 53 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 54 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 55 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 56 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 57 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 58 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 59 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 60 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 61 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 62 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 63 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 64 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 65 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 66 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 67 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 68 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 69 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 70 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 71 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 72 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 73 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 74 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 75 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 76 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 77 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 78 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 79 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 80 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 81 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 82 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 83 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 84 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 85 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 86 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 87 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 88 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 89 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 90 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 91 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 92 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 93 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 94 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 95 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 96 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 97 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 98 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 99 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 100 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 101 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 102 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 103 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 104 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 105 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 106 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 107 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 108 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 109 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 110 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 111 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 112 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 113 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 114 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 115 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 116 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 117 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 118 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 119 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 120 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 121 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 122 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 123 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 124 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 125 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 126 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 127 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 128 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 129 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 130 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 131 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 132 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 133 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 134 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 135 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 136 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 137 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 138 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 139 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 140 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 141 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 142 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 143 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 144 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 145 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 146 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 147 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 148 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 149 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 150 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 151 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 152 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 153 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 154 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 155 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 156 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 157 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 158 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 159 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 160 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 161 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 162 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 163 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 164 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 165 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 166 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 167 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 168 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 169 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 170 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 171 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 172 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 173 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 174 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 175 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 176 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 177 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 178 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 179 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 180 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 181 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 182 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 183 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 184 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 185 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 186 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 187 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 188 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 189 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 190 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 191 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 192 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 193 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 194 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 195 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 196 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 197 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 198 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 199 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 200 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 201 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 202 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 203 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 204 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 205 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 206 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 207 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 208 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 209 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 210 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 211 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 212 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 213 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 214 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 215 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 216 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 217 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 218 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 219 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 220 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 221 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 222 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 223 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 224 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 225 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 226 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 227 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 228 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 229 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 230 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 231 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 232 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 233 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 234 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 235 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 236 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 237 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 238 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 239 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 240 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 241 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 242 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 243 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 244 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 245 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 246 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 247 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 248 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 249 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 250 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 251 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 252 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 253 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 254 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 255 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 256 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 257 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 258 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 259 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 260 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 261 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 262 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 263 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 264 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 265 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 266 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 267 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 268 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 269 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 270 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 271 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 272 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 273 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 274 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 275 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 276 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 277 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 278 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 279 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 280 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 281 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 282 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 283 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 284 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 285 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 286 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 287 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 288 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 289 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 290 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 291 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 292 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 293 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 294 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 295 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 296 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 297 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 298 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 299 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 300 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 301 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 302 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 303 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 304 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 305 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 306 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 307 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 308 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 309 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 310 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 311 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 312 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 313 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 314 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 315 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 316 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 317 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 318 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 319 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 320 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 321 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 322 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 323 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 324 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 325 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 326 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 327 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 328 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 329 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 330 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 331 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 332 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 333 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 334 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 335 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 336 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 337 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 338 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 339 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 340 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 341 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 342 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 343 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 344 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 345 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 346 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 347 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 348 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 349 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 350 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 351 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 352 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 353 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 354 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 355 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 356 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 357 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 358 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 359 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 360 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 361 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 362 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 363 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 364 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 365 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 366 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 367 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 368 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 369 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 370 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 371 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 372 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 373 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 374 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 375 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 376 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 377 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 378 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 379 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 380 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 381 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 382 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 383 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 384 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 385 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 386 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 387 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 388 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 389 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 390 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 391 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 392 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 393 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 394 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 395 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 396 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 397 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 398 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 399 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 400 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 401 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 402 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 403 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 404 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 405 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 406 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 407 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 408 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 409 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 410 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 411 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 412 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 413 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 414 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 415 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 416 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 417 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 418 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 419 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 420 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 421 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 422 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 423 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 424 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 425 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 426 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 427 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 428 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 429 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 430 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 431 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 432 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 433 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 434 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 435 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 436 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 437 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 438 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 439 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 440 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 441 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 442 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 443 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 444 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 445 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 446 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 447 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 448 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 449 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 450 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 451 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 452 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 453 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 454 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 455 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 456 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 457 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 458 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 459 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 460 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 461 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 462 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 463 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 464 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 465 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 466 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 467 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 468 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 469 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 470 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 471 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 472 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 473 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 474 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 475 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 476 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 477 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 478 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 479 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 480 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 481 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 482 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 483 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 484 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 485 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 486 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 487 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 488 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 489 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 490 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 491 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 492 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 493 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 494 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 495 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 496 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 497 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 498 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 499 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 500 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 501 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 502 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 503 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 504 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 505 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 506 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 507 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 508 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 509 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 510 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 511 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 512 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 513 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 514 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 515 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 516 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 517 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 518 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 519 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 520 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 521 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 522 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 523 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 524 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 525 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 526 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 527 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 528 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 529 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 530 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 531 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 532 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 533 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 534 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 535 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 536 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 537 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 538 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 539 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 540 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 541 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 542 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 543 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 544 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 545 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 546 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
