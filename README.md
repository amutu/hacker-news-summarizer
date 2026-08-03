# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-03.md)

*最后自动更新时间: 2026-08-03 20:46:05*
## 1. 数学与理论计算机科学的十大进展

**原文标题**: Ten advances in mathematics and theoretical computer science

**原文链接**: [https://openai.com/index/ten-advances-in-mathematics/](https://openai.com/index/ten-advances-in-mathematics/)

无法访问文章链接。

---

## 2. 开发者工具必须开源

**原文标题**: Devtools must be open source

**原文链接**: [https://blog.exe.dev/devtools-must-be-open-source](https://blog.exe.dev/devtools-must-be-open-source)

五年前，几乎没有工程师会为自己编写软件，但智能体已经改变了个性化定制的成本逻辑。两个关键提示词就能实现这一点：下载应用源码并在本地构建，同时记录下未来任何改动都意味着修改这份源码；再设置一个每晚运行的定时任务，拉取上游更新，并将本地修改变基到新版本之上。这样，智能体既能处理最初的定制，也能承担后续的维护，让个人软件变得切实可行。

这项技术可以以“技能”的形式嵌入开源智能体，用户只需说一句“把 Shelley 的界面改成高对比度”即可。文章中的例子是：作者希望将他的差异审查工具 meat.dev 集成到 Shelley 中，让提交在后台预先处理，并在界面中加一个开关。仅凭一条提示词就完成了这一切——而这通过传统的扩展 API 很难实现。

更广泛的观点是：当智能体能够读取和修改源代码时，配置文件与插件系统就变得不那么必要了。与其为大量用户构建通用的可扩展机制，不如直接为某一个用户修改软件。这降低了定制的初始成本和长期维护成本，也同样适用于小团队：他们可以只组装自己需要的功能，而不是去配置一个臃肿的产品。

面向终端用户的产品若想保持相关性，就必须可定制——这意味着它们必须是开源的。同样的基于技能的方法也适用于 Pi 或 Codex 这类开源智能体。但 Claude Code 是闭源的，用户只能使用其内置的“钩子”。作者认为，如果这些钩子不适合你的工作流程，你就应该换一个你可以自行定制的智能体。

---

## 3. 风电和太阳能首次超越化石燃料，在德国能源结构中占据主导地位。

**原文标题**: Wind and solar overtake fossil fuels in Germany for the first time

**原文链接**: [https://www.intellinews.com/wind-and-solar-overtake-fossil-fuels-in-germany-for-the-first-time-ever-458379/](https://www.intellinews.com/wind-and-solar-overtake-fossil-fuels-in-germany-for-the-first-time-ever-458379/)

文章重点介绍了气候和能源领域的两大关键动态。

**要点：** 在德国，风能和太阳能发电量首次超过化石燃料发电量。这标志着该国向可再生能源转型过程中的一个重要里程碑。

**次要要点：** 文章还指出，欧洲正经历多年来最严重的野火季节。这与全球厄尔尼诺现象有关，该现象已在影响大宗商品市场。

简而言之：德国在清洁能源方面取得重大进展，而极端天气和厄尔尼诺现象正引发人们对火灾和市场波动的担忧。

---

## 4. 庆祝Kermit诞生45周年：15年来首度发布C-Kermit新版本

**原文标题**: Celebrating 45 Years of Kermit with the First New C-Kermit Release in 15 Years

**原文链接**: [https://changelog.complete.org/archives/44456-celebrating-45-years-of-kermit-with-the-first-new-c-kermit-release-in-15-years-and-working-with-a-decades-old-c-codebase](https://changelog.complete.org/archives/44456-celebrating-45-years-of-kermit-with-the-first-new-c-kermit-release-in-15-years-and-working-with-a-decades-old-c-codebase)

文章标题宣告了Kermit软件项目的一个里程碑：这是C-Kermit时隔15年来的首次新版本发布，恰逢该项目45周年。然而，页面可见内容并未包含实际报道，而是显示了一个机器人检测验证页。页面称正在检查访客是否为机器人，并要求用户等待。页面还表示必须启用JavaScript才能通过验证。该消息解释说，AI公司改变了网站托管的社交契约，迫使网站采取此类保护措施。并补充说，无JavaScript的解决方案仍在开发中。简而言之，页面上可访问的文本是一个安全验证关卡，而非文章；Kermit发布新闻的实质性内容被挡在了这个验证屏幕之后。

---

## 5. 更小、更快、更安全：大规模运行Kimi与GLM

**原文标题**: Smaller, faster, safer: running Kimi and GLM at scale

**原文链接**: [https://blog.cloudflare.com/smaller-faster-safer-models/](https://blog.cloudflare.com/smaller-faster-safer-models/)

Cloudflare 的 Workers AI 使用三种技术，在 GPU 上高效服务大型开放模型，例如 Moonshot 的 Kimi K 系列和 Z.ai 的 GLM。

1. **KV 缓存量化**：KV 缓存存储注意力键和值，通常以 16 位 BF16 格式保存。通过将其存储为 8 位 FP8 格式，缓存大小减半——对于 Kimi K2.6，这大致将上下文容量从约 686K 个 token 翻倍至约 1.37M 个 token。尽管在给定并发度下 FP8 每个请求的速度稍慢，但它允许在内存耗尽之前处理更多并发请求。BF16 最多支持 32 个请求，而 FP8 可达到 64 个，并在每 token 成本降低约 30% 的情况下，提供约 41% 更高的峰值吞吐量。评估基准显示，准确性没有明显差异。预填充是计算密集型，因此保持 BF16；解码是内存密集型，受益于 FP8。

2. **模型权重压缩**：GLM 5.2 的权重从 8 位浮点数压缩为 4 位整数，将检查点从 705 GB 缩小到 421 GB（约 40%），在 8 路张量并行设置中，每 GPU 内存从约 88 GB 降至约 52 GB。解码速度得到提升，因为需要从内存中流式传输的权重数据更少——在低并发下最高提升 55%。使用 INT4 时预填充较慢，因此分离式架构在解码时使用 INT4，在预填充时使用 FP8。准确性在各项基准测试中保持在 0.8 分以内。

3. **KV 缓存完整性检查**：由于更多请求共享相同的物理缓存，页面映射错误的风险增加。Cloudflare 添加了带有每页标签的完整性检查；不匹配会中止受影响的请求。开销在吞吐量和尾延迟方面低于 1%，并且可以零成本禁用。

这些优化使更多客户能够以更低成本使用，而不会改变模型准确性。

---

## 6. MiniMax H3 在 ComfyUI 中的首日支持：开放权重、原生音频与 2K 视频

**原文标题**: MiniMax H3 Day-0 Support in ComfyUI: Open Weights, Native Audio, and 2K Video

**原文链接**: [https://blog.comfy.org/p/minimax-h3-day-0-support-in-comfyui](https://blog.comfy.org/p/minimax-h3-day-0-support-in-comfyui)

MiniMax H3 是一款新发布的开源权重全模态视频模型，在 ComfyUI 中提供发布当日（day-0）原生支持。它接受文本、图像、视频和音频输入，可生成长达 15 秒、分辨率高达 2K 的视频片段，并在同一过程中生成真正的立体声音频，而非后期添加。

关键能力包括文生视频、图生视频、首尾帧控制及参考视频生成。其突出特性在于多模态上下文理解：它能够将图像、音频和视频与描述它们关系的提示词相结合。此外，它还支持编辑和运动迁移，让参考视频提供动作或镜头运动，而主体和风格则来自其他输入。

文章展示了详细的示例提示词，包括漫画书超级英雄场景、科技产品短片以及高端时尚金缮面具序列，均演示了带同步音频的多镜头视频生成。

ComfyUI 已针对本地推理对 H3 进行了显著优化。通过剪枝调制权重（约占参数的 40%）并用查找表替代，加上使用 int8 量化和自定义内核，内存占用降低了 66%——最小变体从 123.6 GB 降至 42.5 GB。结合动态显存（VRAM）卸载，这使得 2K 视频模型能够在 RTX 3060 等消费级 GPU 上运行。

要开始使用，用户需将 ComfyUI 更新至 0.30.0 版本，下载提供的 T2V、I2V 或 R2V 工作流，并将模型文件放置在正确的目录中。模型权重托管在 Hugging Face 上的 Comfy-Org/MiniMax-H3 下。

---

## 7. 针对挪威政府IT基础设施的DDoS攻击——现状

**原文标题**: DDoS against Norwegian government IT infrastructure – status

**原文链接**: [https://status.digdir.no/incidents/d7hvqmf2yr3l](https://status.digdir.no/incidents/d7hvqmf2yr3l)

挪威数字化局（Digitaliseringsdirektoratet）报告称，2026年8月3日遭受分布式拒绝服务（DDoS）攻击，导致多个政府IT服务出现登录和运行问题。事件大约在欧洲中部时间00:50开始，主要影响国家身份登录系统ID-porten和MinID，以及包括Maskinporten、Kontakt- og reservasjonsregisteret、eFormidling、ELMA、eInnsyn、Ansattporten、Altinn和各种自助服务在内的其他服务。

此次攻击针对ID-porten，该系统由该机构的运营合作伙伴Vivicta托管。这导致多个公共数字服务的访问中断，用户无法登录。当天，该机构频繁发布状态更新，表明正在持续进行故障排查和缓解工作。流量约在13:40开始恢复，部分服务逐渐重新上线。然而，到傍晚时情况尚未完全解决：21:00的最后更新称，大多数解决方案已正常运行，但用户仍可能遇到不稳定和响应时间不一的情况。

状态报告证实，此次DDoS攻击对挪威关键政府数字基础设施造成了广泛干扰，相关团队全天致力于恢复正常运行。

---

## 8. 安迪·帕夫洛加入ClickHouse，创立ClickHouse Labs

**原文标题**: Andy Pavlo joins ClickHouse to establish ClickHouse Labs

**原文链接**: [https://clickhouse.com/blog/andy-pavlo-joins-clickhouse](https://clickhouse.com/blog/andy-pavlo-joins-clickhouse)

专门研究数据库系统的卡内基梅隆大学教授Andy Pavlo即将加入ClickHouse，创立并领导ClickHouse Labs——一个新的行业研究小组。Pavlo自ClickHouse于2016年开源发布以来便一直关注该项目，其早期对C++和SIMD向量化执行的使用给他留下了深刻印象，这领先于当时大多数开源分析型数据库。

ClickHouse Labs不会是一个孤立的研究单位。它将与ClickHouse的工程师、客户和合作伙伴紧密合作，开发和实践新想法。该小组还将与ClickHouse的PostgreSQL团队合作，以加强其托管服务，并探索事务型和分析型数据库方面的挑战。

其使命是产出具有科学价值的研究成果，并将最佳想法转化为惠及用户的技术，遵循IBM Research和Microsoft Research等组织的模式。近期优先事项包括验证工程团队积压的部分优化工作并将其投入生产，然后以此为基础探索更前沿的方向。

一个关键的研究问题是：像ClickHouse和PostgreSQL这样的数据库应如何为新兴的人工智能和智能体技术演进——既包括数据库管理系统如何更好地支持智能体，也包括智能体如何帮助自动化数据库管理系统的开发。Pavlo预计将研究新的硬件、算法、数据结构、执行策略以及开发/运维方法。他相信，ClickHouse坚实的关系型基础使其能够很好地适应这些不断演进的、数据密集型的工作负载。

Pavlo将此视为一个机会，将他研究数据库内部机制和培养建设者的职业生涯与一支顶尖工程团队相结合，创建一个致力于推进数据库技术的实验室。

---

## 9. 大规模并行Postgres备份

**原文标题**: Massively Parallel Postgres Backups

**原文链接**: [https://planetscale.com/blog/massively-parallel-postgres-backups](https://planetscale.com/blog/massively-parallel-postgres-backups)

PlanetScale 使用大规模并行技术来备份分片的 Postgres 数据库，以最大程度地减少对生产查询的影响。对于稳态备份，系统不会在主库或提供流量的副本上运行备份，而是为每个分片启动一个临时 EC2 实例来处理这项工作。

每个备份节点首先从 S3 恢复最近的备份，然后重放归档的预写日志（WAL）以追赶至当前状态。由于 Postgres 在 WAL 段写满后才归档，最近几分钟的变更会直接从主库流式传输。一旦所有分片追赶至一致时间点 T，复制即停止，备份会被加密并上传到新的 S3 存储桶；随后这些节点被停用。这种从 S3 恢复的方法还在每个备份周期中验证了之前的备份可以被恢复和重放。

对于全新数据库，首次备份使用 pg_basebackup 为临时节点填充初始数据，然后遵循相同的基于 wal-g 的上传路径，保持格式一致。

并行性使备份变得快速：一个 32 TB 的数据库在单个节点上以 500 MB/s 的速度备份大约需要 22 小时，但分布在 8 个分片上约需 2.8 小时，分布在 32 个分片上则只需 42 分钟。备份速度随分片数量扩展。

除了数据安全之外，备份还支持日常运维：通过按目标大小启动新节点并使其追赶至最新状态，来调整 Metal 数据库（本地 NVMe）的大小；以及通过恢复最近的备份并从主库同步 WAL 来替换故障节点。PlanetScale 的分片 MySQL 数据库使用类似的方法，涉及 VTBackup、MySQL 二进制日志以及从主库进行复制追赶。

---

## 10. 好莱坞如何停止在好莱坞拍电影

**原文标题**: How Hollywood stopped making movies in Hollywood

**原文链接**: [https://www.statsignificant.com/p/how-hollywood-stopped-making-movies](https://www.statsignificant.com/p/how-hollywood-stopped-making-movies)

好莱坞电影产业最初聚集在洛杉矶，是因为那里的阳光、廉价土地，以及远离爱迪生的专利，并作为高效的外景制片厂体系而蓬勃发展。但两大趋势使制片工作逐渐外流：一是在外景地拍摄的大片崛起，二是追求税收优惠的IP驱动型系列电影增多。制片厂越来越多地选择在伦敦、亚特兰大和温哥华等枢纽拍摄，这些地方提供世界级的设施和慷慨的返税优惠。对于高预算电影而言，这些激励措施能省下数千万美元，使拍摄地点更多取决于财务考量而非故事需求。结果，故事设定与实际拍摄地日益偏离——多伦多充当纽约，布拉格则代表其他欧洲城市。评论常抱怨奈飞的浪漫喜剧设定在纽约却在纽约奥尔良拍摄，但作者质疑观众是否真的在意或察觉。

文章还探讨了“成本病”，这一经济问题影响着电影制作等劳动密集型行业。作者回忆了在华纳兄弟的一个暑期实习经历，当时外景场地空荡得诡异，无薪实习生漫步在《老友记》的中央公园咖啡馆等布景中。成本病体现在助理薪资微薄、剧组为税收抵免而四处奔波、高管将制作外包或转向人工智能。结果是，好莱坞越来越像一个做决策的办公中心，而非真正拍摄电影的地方。文章总结道，好莱坞的许多问题都可追溯到高昂的成本，尤其是租金，这导致制作文化空心化。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 2 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 3 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 4 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 5 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 6 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 7 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 8 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 9 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 10 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 11 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 12 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 13 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 14 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 15 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 16 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 17 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 18 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 19 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 20 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 21 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 22 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 23 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 24 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 25 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 26 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 27 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 28 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 29 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 30 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 31 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 32 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 33 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 34 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 35 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 36 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 37 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 38 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 39 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 40 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 41 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 42 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 43 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 44 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 45 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 46 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 47 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 48 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 49 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 50 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 51 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 52 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 53 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 54 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 55 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 56 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 57 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 58 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 59 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 60 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 61 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 62 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 63 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 64 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 65 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 66 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 67 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 68 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 69 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 70 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 71 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 72 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 73 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 74 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 75 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 76 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 77 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 78 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 79 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 80 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 81 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 82 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 83 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 84 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 85 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 86 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 87 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 88 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 89 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 90 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 91 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 92 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 93 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 94 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 95 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 96 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 97 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 98 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 99 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 100 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 101 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 102 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 103 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 104 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 105 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 106 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 107 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 108 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 109 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 110 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 111 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 112 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 113 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 114 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 115 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 116 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 117 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 118 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 119 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 120 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 121 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 122 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 123 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 124 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 125 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 126 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 127 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 128 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 129 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 130 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 131 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 132 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 133 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 134 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 135 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 136 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 137 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 138 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 139 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 140 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 141 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 142 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 143 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 144 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 145 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 146 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 147 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 148 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 149 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 150 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 151 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 152 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 153 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 154 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 155 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 156 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 157 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 158 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 159 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 160 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 161 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 162 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 163 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 164 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 165 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 166 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 167 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 168 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 169 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 170 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 171 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 172 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 173 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 174 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 175 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 176 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 177 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 178 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 179 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 180 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 181 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 182 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 183 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 184 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 185 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 186 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 187 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 188 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 189 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 190 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 191 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 192 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 193 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 194 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 195 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 196 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 197 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 198 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 199 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 200 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 201 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 202 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 203 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 204 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 205 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 206 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 207 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 208 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 209 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 210 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 211 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 212 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 213 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 214 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 215 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 216 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 217 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 218 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 219 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 220 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 221 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 222 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 223 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 224 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 225 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 226 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 227 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 228 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 229 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 230 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 231 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 232 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 233 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 234 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 235 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 236 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 237 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 238 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 239 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 240 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 241 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 242 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 243 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 244 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 245 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 246 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 247 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 248 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 249 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 250 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 251 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 252 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 253 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 254 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 255 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 256 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 257 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 258 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 259 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 260 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 261 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 262 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 263 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 264 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 265 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 266 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 267 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 268 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 269 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 270 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 271 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 272 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 273 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 274 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 275 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 276 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 277 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 278 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 279 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 280 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 281 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 282 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 283 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 284 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 285 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 286 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 287 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 288 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 289 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 290 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 291 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 292 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 293 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 294 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 295 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 296 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 297 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 298 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 299 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 300 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 301 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 302 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 303 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 304 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 305 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 306 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 307 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 308 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 309 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 310 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 311 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 312 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 313 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 314 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 315 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 316 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 317 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 318 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 319 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 320 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 321 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 322 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 323 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 324 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 325 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 326 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 327 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 328 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 329 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 330 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 331 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 332 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 333 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 334 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 335 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 336 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 337 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 338 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 339 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 340 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 341 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 342 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 343 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 344 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 345 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 346 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 347 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 348 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 349 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 350 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 351 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 352 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 353 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 354 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 355 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 356 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 357 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 358 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 359 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 360 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 361 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 362 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 363 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 364 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 365 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 366 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 367 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 368 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 369 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 370 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 371 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 372 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 373 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 374 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 375 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 376 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 377 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 378 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 379 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 380 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 381 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 382 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 383 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 384 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 385 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 386 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 387 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 388 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 389 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 390 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 391 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 392 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 393 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 394 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 395 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 396 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 397 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 398 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 399 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 400 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 401 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 402 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 403 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 404 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 405 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 406 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 407 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 408 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 409 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 410 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 411 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 412 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 413 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 414 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 415 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 416 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 417 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 418 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 419 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 420 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 421 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 422 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 423 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 424 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 425 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 426 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 427 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 428 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 429 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 430 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 431 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 432 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 433 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 434 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 435 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 436 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 437 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 438 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 439 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 440 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 441 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 442 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 443 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 444 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 445 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 446 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 447 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 448 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 449 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 450 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 451 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 452 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 453 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 454 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 455 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 456 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 457 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 458 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 459 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 460 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 461 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 462 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 463 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 464 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 465 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 466 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 467 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 468 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 469 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 470 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 471 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 472 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 473 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 474 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 475 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 476 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 477 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 478 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 479 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 480 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 481 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 482 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 483 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 484 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 485 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 486 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 487 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 488 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 489 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 490 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 491 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 492 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 493 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 494 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 495 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 496 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 497 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
