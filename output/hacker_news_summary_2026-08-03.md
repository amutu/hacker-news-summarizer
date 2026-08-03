# Hacker News 热门文章摘要 (2026-08-03)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Launch HN: Hoplite (YC S26) – 轻松部署云端编码代理

**原文标题**: Launch HN: Hoplite (YC S26) – Effortlessly deploy cloud coding agents

**原文链接**: [https://hoplite.sh](https://hoplite.sh)

无法访问文章链接。

---

## 12. Cloudflare 可计费用量 API：以编程方式实现成本可见性

**原文标题**: The Billable Usage API: programmatic cost visibility for Cloudflare

**原文链接**: [https://blog.cloudflare.com/billable-usage-api/](https://blog.cloudflare.com/billable-usage-api/)

Cloudflare 已为自助服务账户推出**可计费用量 API**，让开发者和财务团队能够以编程方式访问账户级别的成本和用量数据。该 API 通过单一端点返回按产品和服务周期细分的用量与成本，涵盖所有基于用量的 Cloudflare 产品（Workers、R2、D1、Workers AI、Vectorize、Images、Stream）。数据每日更新。

该 API 返回每个产品每个计费周期的数据行，包含 ServiceName、ChargePeriodStart/End、PricingQuantity、ConsumedUnit、ContractedCost 和 CumulatedContractedCost 等字段。许多字段有意映射到 FinOps 开放成本和用量规范（FOCUS），从而便于与现有成本管理工具链集成，不过完全符合该规范仍在路线图中。

Cloudflare 还与基础设施成本管理平台 **Vantage** 合作，提供原生集成。Vantage 每日摄取可计费用量数据，支持跨供应商分配、通过成本警报进行异常检测，并可通过 Vantage 的 FinOps 代理或 MCP 服务器查询，同时涵盖 AWS、Azure 和其他云成本。

该 API 旨在为“程序化支出”提供“程序化可见性”，解决代理和自动化在配置资源时产生成本却缺乏可见性的问题。当前限制包括仅支持每日更新和自助服务账户。未来计划包括更细粒度的时间窗口、预测以及企业合同覆盖。

要试用：生成具有 Billing Read 权限的 API 令牌并调用该端点。完整参考见 Cloudflare API 文档，Vantage 也提供快速连接，帮助实现整合的成本可见性。

---

## 13. 200毫秒

**原文标题**: 200 Milliseconds

**原文链接**: [https://200ms.thenodebook.com](https://200ms.thenodebook.com)

“200毫秒”是一个互动可视化项目，解构单个HTTP请求的生命周期——从用户按下回车键到最终响应——大约跨越200毫秒。它追踪请求经过的每个主要网络和系统层：DNS解析、TCP握手、TLS协商、内核处理、Node.js事件循环处理、Postgres数据库查询，以及返回客户端的路径。

该作品突出显示了请求生命周期中有多少时间被看似不可见的步骤消耗：DNS查找、连接建立、加密握手和上下文切换。通过让读者逐个点击查看每个阶段，它揭示了每一层带来的真实世界延迟，并强调实际应用代码和数据库查询仅占总时间的一小部分。

该可视化还展示了Node.js的异步特性，显示事件循环在等待数据库响应等慢速外部操作时如何管理并发I/O。内核在套接字处理和进程调度中的作用变得具体可感，而Postgres步骤则演示了即使是快速的本地查询也可能增加有意义的延迟。

总体而言，这篇文章是面向开发者的教育工具，提供了分布式系统开销的直观、时间锚定的地图。其主要结论是：现代Web请求是一条紧密耦合、常常被忽视的操作链——而优化性能需要理解完整路径，而不仅仅是应用层。

---

## 14. 凯利公式模拟器

**原文标题**: Kelly Criterion Simulator

**原文链接**: [https://kellysimulator.com/](https://kellysimulator.com/)

无法访问文章链接。

---

## 15. AirLLM 70B模型单块4GB GPU推理

**原文标题**: AirLLM 70B inference with single 4GB GPU

**原文链接**: [https://github.com/lyogavin/airllm](https://github.com/lyogavin/airllm)

AirLLM 通过每次仅加载一层，在极低显存GPU上实现大型语言模型推理，避免量化、蒸馏或剪枝。70B模型可在单张4GB GPU上运行；Llama 3.1 405B可适配8GB显存，DeepSeek-V3（671B）约12GB，而2.8T参数的Kimi K3通过针对稀疏MoE模型的逐专家流式加载，可在4GB以下显存运行。

使用方式很简单：`pip install airllm`，然后 `AutoModel.from_pretrained("model-id")` 即可兼容大多数主流模型（Llama、Qwen、DeepSeek、Mistral、Phi、Gemma、ChatGLM 等）。首次推理时，原始模型会被按层拆分并保存；请确保有足够的磁盘空间。

主要特性包括：
- 分块量化压缩（`4bit`/`8bit`），可实现最高3倍加速，且精度损失极小（仅权重量化，因为磁盘加载是瓶颈）。
- 可配置选项：`compression`、`profiling_mode`、`layer_shards_saving_path`、用于门控模型的 `hf_token`、`prefetching` 重叠，以及用于节省磁盘空间的 `delete_original`。
- 通过 MLX 和 PyTorch 支持 MacOS（Apple Silicon）。
- AutoModel 自动检测模型架构。

更新亮点包括 FP8 支持、更新的模型（Qwen3、DeepSeek-V3）、CPU 推理，以及值得注意的 Kimi K3 支持，该支持需要 `compressed-tensors`、`flash-attn`、CUDA 12 的 torch 和 transformers 4.56.x。

文章还包含示例笔记本、常见错误FAQ（磁盘空间、分词器填充、门控模型）以及引用信息。核心思想：显存需求取决于层大小，而非整个模型大小，从而以同样的一行接口在爱好者硬件上运行大规模模型。

---

## 16. 使用任务运行器处理常见编码任务

**原文标题**: Use Task Runners for Common Coding Tasks

**原文链接**: [https://hamvocke.com/blog/task-runners/](https://hamvocke.com/blog/task-runners/)

本文介绍了如何通过使用任务运行器来简化不同代码库中的常见编码任务，这样开发者就不需要记住特定于技术栈的命令。无需回想该用 `npm`、`yarn`、`pnpm`、`gradlew` 还是 `mix`，你只需说出 `build`、`test`、`lint` 或 `format`。文中介绍了几种方法：

- **Bash 脚本**：编写一个简单的可执行脚本（例如 `run`），其中包含每个任务的函数（`install`、`build`、`test`、`format`）。这种方式灵活且可以加入保护措施，但语法有时会显得笨拙。

- **Make**：使用包含 `install`、`build`、`test`、`format` 等目标的 `Makefile`。它广泛可用，并在某些 shell 中支持 Tab 自动补全。务必将目标声明为 `.PHONY`，以避免与同名文件冲突。

- **Just**：这是 Make 的现代替代品，存储在 `justfile` 中。它更加简洁（无需 `.PHONY`），但大多数机器上并未预装。

- **Mise**：一种开发工具，用于管理软件包、工具和环境变量，也可通过 `mise.toml` 文件运行任务。任务可以包含描述和命令，必要时还可拆分到单独的文件中。

文章总结道，使用任务运行器是一种简单的生活质量改进，易于设置，对个人和团队都有益处。

---

## 17. Bonsai：简街的 UI 库

**原文标题**: Bonsai: Janestreet's UI Library

**原文链接**: [https://github.com/janestreet/bonsai](https://github.com/janestreet/bonsai)

Bonsai 是 Jane Street 的 OCaml UI 库，用于构建响应式 Web 应用程序，部分灵感来自 Elm。它几乎用于 Jane Street 所有的内部 Web 应用，从公司工具到交易系统监控器。

组件是纯函数式状态机，可组合且增量渲染：只有在相关状态变化时才会重新计算值。与将状态、渲染和增量性合并为单一“组件”抽象的那些框架不同，Bonsai 允许开发者独立地组合这些原语。状态可以在组件层级之外管理，并提供生命周期和作用域的 API——例如，在标签式界面中处理有状态子组件，而无需手动提升状态。

使用 OCaml 编写可以让同一套类型和业务逻辑在前端和后端之间共享，提高代码可读性并减少错误。Bonsai 还包含模板语言、组件专用样式表和测试框架。测试可以编程方式操作 DOM、显示 UI 变化的差异，并包含模拟服务器调用，从而无需打开浏览器即可进行完整的组件测试。

Bonsai 本身实际上是一个用于增量、可组合状态机的核心库。专门化层包括用于交互式浏览器 UI 的 **Bonsai_web**、用于终端 UI 的 **Bonsai_term**，以及一个原型 **Bonsai_vr**。常见的预处理器是用于类 JSX HTML 的 **ppx_html** 和用于 CSS 的 **ppx_css**。文档包括快速入门、“Thinking in Bonsai”、操作指南文章、播客节目和示例。

---

## 18. 用Rust实现SearXNG

**原文标题**: SearXNG in Rust

**原文链接**: [https://github.com/MikeLuu99/searxng-rust](https://github.com/MikeLuu99/searxng-rust)

一个基于Rust的、类似SearXNG的元搜索引擎，**metadata-search-engine-rs**，将搜索查询并发分发到DuckDuckGo、Brave、Startpage和Yahoo。它使用`scraper` crate抓取HTML结果，通过规范化URL（去除跟踪参数、移除区域前缀、排序查询参数）去重，并使用倒数排名融合（RRF）对合并后的结果进行排名，提升被多个引擎返回的页面。

关键技术点：

- 基于Rust 1.75+、Cargo构建，使用`reqwest`进行HTTP请求，`scraper`/html5ever进行解析。
- 既可以作为库使用（`cargo add metadata-search-engine-rs`），也可以从源码作为服务器运行。
- 服务器提供`GET /health`和`GET /search?q=<query>`接口，返回包含排名结果、查询引擎和失败信息的JSON。
- 错误处理：缺少/为空`q`时返回400，所有引擎均失败时返回503。
- 测试套件包含每个模块的单元测试，以及被忽略的、访问真实搜索引擎的实时测试。
- 示例代码展示了单引擎查询、全引擎RRF聚合以及选择特定引擎。
- 另有一个基于ratatui的终端UI可用。
- 可扩展：新引擎实现`SearchEngine` trait，包含`name()`和异步`search()`方法。

该项目提供了一个完整、可定制的元搜索解决方案，具有简洁的API、并发查询、透明的排名以及易于添加新来源的特点。

---

## 19. 邓宁-克鲁格效应可能并不存在

**原文标题**: The Dunning-Kruger Effect Is Probably Not Real

**原文链接**: [https://www.mcgill.ca/oss/article/critical-thinking/dunning-kruger-effect-probably-not-real](https://www.mcgill.ca/oss/article/critical-thinking/dunning-kruger-effect-probably-not-real)

我无法总结这篇文章，因为未提供全文——仅有标题和订阅新闻通讯的提示。请分享文章内容，我将很乐意为您写一篇300字以内的简洁摘要。

---

## 20. ZX Spectrum系统巡览：声音

**原文标题**: ZX Spectrum System Tour: Sound

**原文链接**: [https://bumbershootsoft.wordpress.com/2026/08/01/zx-spectrum-system-tour-sound/](https://bumbershootsoft.wordpress.com/2026/08/01/zx-spectrum-system-tour-sound/)

本文概述了ZX Spectrum的声音选项，并展示了三个播放C大调音阶的程序。

**1. 通过BIOS控制蜂鸣器：** 1位蜂鸣器由软件控制。无需编写低级代码，可以直接调用ROM例程（位于`$03B5`，BASIC的`BEEP`命令使用之）。频率代码HL = `437500/f - 30.125`，持续时间代码DE = `f × t`。一个紧凑的汇编程序从表中加载频率/持续时间对并调用该ROM例程。

**2. 直接控制蜂鸣器：** 为了实现自定义振荡器代码，作者采用了16位频率累加器方法：反复将频率值加到计数器中；当溢出时，切换端口`$FE`的扬声器位（`$10`），同时保留边框颜色和磁带音频位（`$08`）。时序很棘手：条件`JR`指令的时序可变，因此使用`JP`。当代码运行在`$4000–$7FFF`时，Spectrum的视频RAM访问会导致等待状态，使直接蜂鸣器发声在那里不可靠。在48K机型上重定位到`$9000`可以避免此问题；将代码放在`$8000`仍然失败，因为堆栈被推入争用区域。解决方案使用一个暂存RAM变量和一个展开的循环，以实现一致的时序和更长的持续时间。

**3. 128K上的AY-3-8910：** 该声音芯片的编程方式与Atari ST的类似，但端口不同：寄存器号写入`$FFFD`，值写入`$BFFD`。时钟为3.5469 MHz，因此频率代码 = `3546900/(32f)`，包络长度代码 = `3546900/(512t)`。随附的例程使寄存器读写变得容易，并提供了一个便于调用的宏。

文章总结道，蜂鸣器仅适合短促的音效和提示音，而AY-3能够胜任完整的音乐驱动程序和环境音效。

---

## 21. 别当血肉替身

**原文标题**: Don't be a meat proxy

**原文链接**: [https://gruhn.me/blog/2026-08-03/](https://gruhn.me/blog/2026-08-03/)

这篇文章批评了在对话中直接转发ChatGPT或Claude回复的习惯——无论是在Slack、代码审查还是WhatsApp等场景中。作者承认自己也有过这种行为，但表示自己已经太多次成为接收方。简单地转发AI输出不会增加任何价值：接收者自己就可以使用AI，而且速度更快、上下文更准确。AI回复往往冗长啰嗦，充满听起来合理但实际荒谬的内容，且术语堆砌——作者引用了一个关于“NATS控制平面事件”的令人费解的Claude句子作为例子。

相反，作者认为，你仍然应该使用AI，但不要充当被动的“肉代理”。阅读AI的输出，理解它，验证它，然后写出你自己的回复。这种努力才是真正增加价值的地方。

文章还特别针对代码审查进行了讨论。借助Claude Code等工具，一个人几乎可以毫不费力地交付代码：粘贴工单描述，让AI编写代码，然后将审查者的反馈粘贴给AI并迭代修改。但在这种工作流程中，人实际上并没有实现任何东西——是审查者通过AI完成了真正的工作，而这个人只是充当了一个低价值的中介。启示是：使用AI作为辅助，但要保持参与并进行有意义的介入。不要做一个肉代理。

---

## 22. Show HN：为你的MCP上的代理会话提供产品分析（和评估）

**原文标题**: Show HN: Product analytics (and evals) for agent sessions on your MCP

**原文链接**: [https://armature.tech/](https://armature.tech/)

Armature是一个产品分析平台，用于分析AI客户端（如Claude、ChatGPT或Claude Code）内部发生的智能体会话，而非用户自有界面中的会话。它可以捕获并重建任何MCP服务器或连接器上的完整会话，精确显示用户提出的问题、智能体的思考过程以及每一次工具调用。

主要功能包括：
- **用例分组**：自动识别并按访问量和成功率对用户的核心意图进行排序，包括不受支持的请求。
- **问题检测**：即使API返回200 OK，也能发现故障、循环和死胡同，并按根本原因进行分组。
- **会话回放**：评估用户是否得到了他们想要的结果，并允许你从用户请求到智能体推理再到每次API调用，回放完整的追踪记录。

设置十分快捷：生成API密钥，将Armature SDK添加到你的MCP服务器，即可部署。个人身份信息和机密信息会在存储前自动进行脱敏处理。

定价方面，每月前1,000次会话免费，之后每1,000次会话收费50美元，同时提供定制方案。

Armature与PostHog或Amplitude等追踪UI点击的工具，以及LangSmith/Langfuse等观察开发者构建的智能体的工具有所不同。Armature专为产品团队打造，旨在帮助他们了解用户自己的智能体如何体验和与其产品交互。

---

## 23. SQLite关键CVE还是大语言模型垃圾内容？

**原文标题**: SQLite Critical CVEs or LLM Slop?

**原文链接**: [https://research.jfrog.com/post/sqlite-critical-cves-or-llm-slops/](https://research.jfrog.com/post/sqlite-critical-cves-or-llm-slops/)

JFrog安全研究人员发现，GitHub仓库“programmervuln/cveadvisory-”中发布的一批新SQLite CVE，尽管被NVD和CISA的ADP标记为严重（Critical），但绝大多数是AI生成的伪造内容。在55条公告中，54条完全是假的；只有一条包含真实漏洞。

这些伪造的CVE（例如CVE-2026-51302、-51303、-51300、-51297、-51296、-51304）声称SQLite存在释放后使用（use-after-free）漏洞。调查揭示：

- 引用的函数和行号在目标版本中不存在（例如，`exprComputeOperands()`不在3.41.0版本中；`json.c`文件只有2706行，但引用的行号却到了3575）。
- 引用的补丁是伪造的——差异对比显示相关源文件没有变化。
- 提供的PoC要么解析失败，要么在ASan下正常运行且没有崩溃。
- 这些CVE都没有出现在SQLite的官方公告页面上。
- AI检测工具将这些文本标记为机器生成。

文章将此归因于系统性缺陷：CVE提交流程缺乏身份验证，而NIST的NVD因报告激增于2024年2月暂停了深度分析，使得听起来合理的虚假公告得以传播到GHSA和企业扫描器中。

识别“垃圾CVE”（slop CVEs）的关键警示信号：没有供应商证实、缺少提交历史、元数据矛盾、引用不存在的代码。

影响：组织浪费时间调查和修补不存在的问题；自动化AI分诊代理可能尝试“修复”虚构代码，引入不必要的更改。建议：不要盲目信任来自未知来源的新CVE，对照官方公告/提交进行验证，检查你的环境是否实际受影响，并在安全环境中复现PoC。JFrog已将调查结果报告给GHSA、Red Hat和NVD。

---

## 24. SPF 记录语法：机制、限定符、修饰符与宏

**原文标题**: SPF Record Syntax: Mechanisms, Qualifiers, Modifiers, and Macros

**原文链接**: [https://dmarcguard.io/blog/spf-record-syntax/](https://dmarcguard.io/blog/spf-record-syntax/)

本文是依据 RFC 7208 的 SPF 记录语法的技术参考。

**核心结构**：SPF 记录是一条 TXT 记录，以精确的版本标签 `v=spf1` 开头，后跟以空格分隔的术语：机制和修饰符。求值从左到右进行，第一个匹配生效。语法错误会使整条记录无效，并返回 PermError。

**机制**（带有可选限定符）：`all`、`include`、`a`、`mx`、`ptr`、`ip4`、`ip6` 和 `exists`。每一个都测试连接 IP。`include` 递归检查另一个域的记录，但只传播 Pass；内部的 Fail/Softfail 仅表示“不匹配”。`ptr` 已弃用。`ip4`/`ip6` 不依赖 DNS；`exists` 支持基于宏的动态检查。

**限定符**在机制匹配时设置结果：`+` Pass（默认）、`-` Fail、`~` Softfail、`?` Neutral。最后的 `-all` 或 `~all` 是常见的策略默认值；如果没有显式的 `all` 或 `redirect`，隐式结果为 Neutral。

**修饰符**：`redirect=` 在所有机制均未匹配后，将求值交给另一域的记录；`exp=` 提供经宏展开的失败说明。两者均只允许出现一次。

**宏**：十一个字母（`s`、`l`、`o`、`d`、`i`、`p`、`h`、`c`、`r`、`t`、`v`）加上转换器和分隔符，可实现动态 DNS 查找，例如 `%{ir}.%{v}._spf.%{d2}`。

**DNS 限制**：计入查找次数的术语（`include`、`a`、`mx`、`ptr`、`exists`、`redirect`）总数不得超过 10；超过则返回 PermError。空查找应限制在 2 次以内。

**放置**：只发布一条 `v=spf1` TXT 记录；多条 SPF 记录会导致 PermError。旧的 type-99 SPF 资源记录已过时；仅使用 TXT 记录。

---

## 25. 通过手动重输LLM生成的代码来防止认知债务

**原文标题**: Prevent cognitive debt by manually retyping LLM-generated code

**原文链接**: [https://ankursethi.com/blog/prevent-cognitive-debt-by-manually-retyping-llm-generated-code/](https://ankursethi.com/blog/prevent-cognitive-debt-by-manually-retyping-llm-generated-code/)

作者仍然在个人项目中使用编程助手，但已经形成了一套手动工作流程，以避免认知债务。作者不让AI助手自由编辑文件，而是迫使它们只在聊天中提出代码和命令，然后由作者手动输入。项目指令明确禁止AI创建、编辑或删除文件，也禁止运行任何修改项目的命令——所有更改都必须显示在聊天中，由人工执行。

这种方法牺牲了速度：不再是快10倍，作者大约只快了2倍。然而，代价换来的是更深的理解。手动输入每一行代码能建立对代码的心智模型，有助于发现幻觉或糟糕的设计选择，允许清理和重组，并形成对代码库的空间认知。作者将此比作给新手程序员的一句经典建议：永远不要复制粘贴代码；手动敲出来才能完全理解它。

作者承认这效率低下，甚至有些滑稽，但他重视理解胜过生产力。他表达了对软件行业正在积累认知债务的担忧——很快我们可能就不理解自己的数字基础设施是如何运转的了。虽然他无法改变整个行业，但他确保自己个人理解所产出的所有软件，并认为任何低于这一标准的做法都是职业失职。

---

## 26. C++ 浮点数转整数转换可能是未定义行为

**原文标题**: C++ float-to-int conversion can be undefined behavior

**原文链接**: [https://kttnr.net/blog/cpp-float-to-int-conversion-undefined-behavior/](https://kttnr.net/blog/cpp-float-to-int-conversion-undefined-behavior/)

当截断后的浮点值无法放入目标整数类型时，C++ 的浮点转整数转换是未定义行为。常见的写法如 `int i = f;`、`int(f)` 和 `static_cast<int>(f)` 对于超出范围的输入都会触发此未定义行为，然而编译器通常不会发出警告，即使启用了 `-Wall` 和 `-Wextra`；`-Wconversion` 只能捕获隐式转换的情况。

Cppreference 文档确认，如果浮点值无法放入整数类型，行为就是未定义的——即使目标类型是无符号整数也是如此，因为取模运算并不适用。

这个错误出现在实际项目中。微软的指南支持库 (GSL) 包含 `gsl::narrow`，其本应安全地检测窄化转换并在值无法表示时抛出异常。然而，它并没有正确处理浮点转整数的情况，导致某些输入下存在未定义行为。当这个问题被报告时，维护者以“在目标平台上该未定义行为是良性的，因为不涉及硬件陷阱表示”为由不予修复。

在实践中，不同硬件上的行为各不相同：x86 的 `CVTTSS2SI` 将无法表示的值映射为 `INT_MIN`，而 AArch64 的 `FCVTZS` 则会饱和处理并将 NaN 映射为零。程序可能不会崩溃，但未定义行为仍然很危险——编译器可能会以意想不到的方式转换或优化代码，导致结果不一致或未来出现问题。

正确的修复方法是在转换之前执行边界检查。有人提出了一种基于 Rust 饱和转换方法的概念验证库。未定义行为还可以使用 Clang/GCC 的未定义行为消毒器（尤其是 `-fsanitize=float-cast-overflow`）来检测；建议使用 UBSan 测试 C++ 代码。文章强调，GSL 中的错误推理一直存在于代码库中，该问题至今未修复。

---

## 27. INT8 ConvRot 说明（不再需要 FP8）

**原文标题**: Explanation of INT8 ConvRot (FP8 is no longer needed)

**原文链接**: [https://note.com/hirorohi03/n/n047a8c5f7f8b?hl=en](https://note.com/hirorohi03/n/n047a8c5f7f8b?hl=en)

INT8 ConvRot 是 ComfyUI v0.27.0（2026年7月1日）中新支持的量化格式，作为 FP8 格式的潜在替代品引起了广泛关注。它将 INT8 编码与一种名为 ConvRot 的量化算法相结合，该算法基于 2025 年的一篇论文。ConvRot 使用类似卷积的局部块处理和基于旋转的组变换，将离群值重新分布到各个维度，克服了 INT8 长期以来的弱点——离群值导致的精度损失。这使得 INT8 能够匹配甚至超越 FP8 乃至 FP8 Scaled 的性能，同时保持速度优势。

要点：

- **格式分层**：INT8 ConvRot 与普通 INT8 或 INT8 逐张量量化不同，它采用逐行缩放（Row-wise scaling）和 ConvRot 量化方法。它与 FP8、FP8 Scaled、MXFP8、NVFP4 等格式截然不同。
- **硬件优势**：FP8 仅原生支持 RTX 40/50 系列。INT8 也支持 RTX 20/30 系列，这使得 INT8 ConvRot 对旧款 GPU 特别有利。
- **使用**：ComfyUI 从 v0.27.0 开始原生支持；需要 comfy-kitchen 0.2.16 或更高版本。Comfy-Org 在 HuggingFace 上提供了官方 INT8 ConvRot 模型，适用于 Ideogram-4、Krea-2、QIE-2511 和 Wan_2.2 等模型。自定义节点 ComfyUI-INT8-Fast 提供即时转换和保存功能，但输出可能需要 `convert_to_comfy.py` 才能实现原生兼容性。Forge Neo 在提交 6d0bc6e（版本 2.27）中增加了支持。
- **性能报告**：Reddit 基准测试显示速度排名：INT8 ConvRot > NVFP4 > MXFP8 ≈ FP8 Scaled > GGUF Q8 > FP16/BF16。精度接近 GGUF Q8。作者本人使用 Krea2 在 RTX 5090 上的测试显示，与 fp8_scaled 相比，热启动速度提升 35%，冷启动快 18%。对于 RTX 20/30 系列，由于缺乏 FP8 硬件支持，预期收益会更大。

总之，INT8 ConvRot 在当前 Nvidia GPU 上提供了最先进的速度和接近 FP16 的精度，使其成为 8 位量化模型的新兴标准。

---

## 28. Rust项目目标：不可移动类型与保证析构函数

**原文标题**: Rust project goals: Immobile types and guaranteed destructors

**原文链接**: [https://github.com/rust-lang/rust-project-goals/blob/main/src/2026/move-trait.md](https://github.com/rust-lang/rust-project-goals/blob/main/src/2026/move-trait.md)

这篇文章概述了一个 Rust 项目目标：引入新的自动 trait——`Move` 和 `Forget`，允许类型选择退出被移动或被遗忘。当前语言假设所有值都可以被重新定位，并可通过 `mem::forget` 丢弃，这使自引用类型（目前由 `Pin` 管理）变得复杂，并阻碍了保证析构函数的执行。

该提案将能力定义为正向特征：`Move` 表示类型可以被重新定位，`Destruct` 表示它可以被隐式丢弃，`Forget` 表示它可以被安全遗忘。实现 `!Move` 的类型是不可移动的，必须保持稳定的地址；`!Forget` 类型必须运行其析构函数。这使得安全的作用域生成（scoped spawn）成为可能，其中句柄的析构函数会 join（等待）任务，因为句柄不能被遗忘。

这项工作遵循了放宽普遍假设的先例，例如 `Sized` 层次结构。该项目包括编译器 MVP、RFC 以及 Linux 内核中的测试。它明确降低了 `Future` trait 变更的优先级，因为 `Future` 依赖于 `Pin`，需要单独的迁移项目。

文章还将这种方法与“Pin 易用性”（Pin ergonomics）计划进行对比，认为 `Pin` 本身才是问题所在，而 `Move` 是一种旨在最终弃用 `Pin` 的替代方案。关键工作项包括实现 `Move` trait、使用迭代器测试 `!Move`、探索 `Forget` 设计以及起草 RFC。对团队提出的需求是语言团队和类型团队的大力支持，包括设计会议和实现审查。常见问题解答（FAQ）澄清了与 `Sized` 层次结构的关系、安全作用域生成的理由，并提供了进一步阅读的链接。

---

## 29. Qwen3.8-Max：编程与协作的新标杆

**原文标题**: Qwen3.8-Max: A New Bar for Coding and Cowork

**原文链接**: [https://qwen.ai/blog?id=qwen3.8](https://qwen.ai/blog?id=qwen3.8)

所提供的文本非常稀疏——仅给出了标题和“Qwen”一词。根据标题，该文章似乎是在宣布**Qwen3.8-Max**，这是一款定位为提高编程与协作工作水准的新AI模型。它可能着重强调了改进的代码生成、调试功能，以及对基于团队的工作流程更好的支持。然而，由于实际文章内容未包含在内，因此无法准确总结具体细节、基准测试或功能对比。

---

## 30. DMARC 能保护您免受什么，不能保护您免受什么

**原文标题**: What DMARC Protects You From, and What It Does Not

**原文链接**: [https://senderledger.com/articles/what-dmarc-actually-protects-you-from](https://senderledger.com/articles/what-dmarc-actually-protects-you-from)

DMARC仅验证一个窄范围的事情：可见的发件人行中的域名是否授权了该邮件，并通过SPF或DKIM来证明。它并不能阻止钓鱼、垃圾邮件或恶意内容。

**工作原理：**  
- SPF根据域名的允许服务器列表检查隐藏的信封发件人。  
- DKIM验证加密签名。  
- DMARC要求任一通过验证的机制与可见的发件人域名“对齐”。  
- 只要SPF或DKIM任一完成认证并对齐，即视为通过；两者均未通过时才视为失败。  
- 对齐可以是宽松模式（匹配组织域）或严格模式（域名完全一致）。

**DMARC真正能防御的：**  
- 精确域名伪造：攻击者未经授权在发件人行中使用你的准确域名。  
- 它还提供汇总报告，显示有哪些系统正在以你的域名发送邮件。

**DMARC无法防御的：**  
- 相似域名（例如 your-bank-support.com）——它们会在自己的域名上通过DMARC。  
- 显示名称冒充：伪造的“Your Bank Security”之类的名称隐藏在无关域名后面。  
- 被盗用的邮箱：攻击者使用真实账户时，认证依然合法通过。  
- 恶意但已认证的域名：注册和有效认证证明的是所有权，而非诚信。  
- 垃圾邮件过滤或收件箱投递——经过认证的垃圾邮件仍然是垃圾邮件。  
- 转发和邮件列表，它们可能破坏合法邮件的SPF或DKIM验证。

简而言之，DMARC证明的是授权，而非信任。达到p=reject策略可以阻止精确域名伪造，但不能使你免受钓鱼攻击。其他威胁需要单独的控制措施、人工判断和持续监控。

---

## 31. Kraid 现在是一个真正的编译器了

**原文标题**: Kraid is a now a real compiler

**原文链接**: [https://www.collabora.com/news-and-blog/news-and-events/kraid-is-a-now-a-real-compiler.html](https://www.collabora.com/news-and-blog/news-and-events/kraid-is-a-now-a-real-compiler.html)

用于 Panfrost 驱动栈的新编译器 Kraid 达到了一个重大里程碑：它现在通过了全部 80 万项 Vulkan CTS 计算着色器测试，包括一些旧编译器无法通过的测试。作者称这证明了 Kraid 现在是一个真正的编译器，但强调工作远未结束。

目前，只有计算着色器使用 Kraid。顶点和片段着色器支持仍在进行中。生成代码的质量目前刻意保持较低水平——这是为了对寄存器分配器进行压力测试，并在寄存器压力紧张的情况下暴露 bug 而做出的战略选择。

文章概述了 Kraid 目前具备的功能：基于 SSA 的寄存器分配器，带有固定寄存器预算；近线性时间的 SSA 溢出器；完善的 64 位操作处理；整数/浮点拓宽；完整的 swizzle 支持；字和字节粒度上的复制传播；16 位目标，以及通过模拟实现的 8 位目标；从 Arm 的 XML 中提取的指令编码；以及验证指令语义的硬件单元测试。

下一步包括优化生成的代码、调整寄存器分配器、改进布尔值和 8 位数据处理，以及完成顶点和片段着色器。片段着色器更棘手，因为 BLEND 和 ATEST 指令会影响寄存器分配，并且混合着色器需要为类似函数指针的调用定义 ABI。这些都不是根本性问题，但仍需进行设计工作。Kraid 在 64 位算术上已经优于旧编译器，随着优化的继续，性能应该会进一步提升。

---

## 32. Show HN: Nightcrawler – 运行在智能手机上的本地AI渗透测试智能体

**原文标题**: Show HN: Nightcrawler – A local AI pentesting agent running on a smartphone

**原文链接**: [https://github.com/garagehq/nightcrawler/](https://github.com/garagehq/nightcrawler/)

Nightcrawler是一个完全在智能手机上运行的自主渗透测试代理，无需云连接。它使用手机GPU上的小型AI模型（LFM2.5-1.2B）来决定主机发现、服务枚举、漏洞测试和报告生成等操作。它还可以通过USB适配器选择性地破解WPA2 WiFi。

关键组件：带有LLM的代理循环、强制授权目标的范围代理，以及用于执行命令的Kali MCP服务器。它隐蔽运行——慢速扫描、主机轮换和掩护流量——以避免检测。功能包括27个漏洞利用剧本、包含24,956个条目的CVE数据库、用于监控和控制的Web仪表板、被动网络发现以及自愈机制。架构包括Web界面、SQLite数据库和范围/速率限制代理。

硬件：搭载Kali NetHunter的Android手机（在OnePlus 8、骁龙865上测试）、root权限和12GB以上内存。性能因型号而异，实际生成速度约为13 token/秒。代理使用循环：选择目标、构建上下文、询问LLM、验证命令、执行、学习并重置上下文。它通过垃圾检测、去重和直接执行剧本来弥补小型模型约50%命令成功率的不足。

仪表板提供实时命令流、主机卡片、网络地图、漏洞详情和C2控制。经过72小时以上的测试：每个网络发现30多个主机，运行了2,000多条命令，发现10多个漏洞。

Nightcrawler仅用于获得书面许可的授权测试。它在MIT许可下开源，可贡献的领域包括模型微调、剧本和CVE数据库扩展。

---

## 33. 肯塔基州是否即将向数据中心提供数十亿美元的税收减免？

**原文标题**: Is Kentucky About to Give Billions in Tax Breaks to Data Centers?

**原文链接**: [https://kypolicy.org/kentucky-data-center-tax-breaks/](https://kypolicy.org/kentucky-data-center-tax-breaks/)

肯塔基州为数据中心设备设立了销售税豁免政策，该政策于2024年创建，2025年扩展至全州范围，但至今尚未授予任何豁免。这项优惠可适用于大型设施，最长可达50年，涵盖几乎所有设备和软件，但不包括土地、建筑外壳、电力以及行政办公设备。

尽管该州此前估计此项豁免每年将造成约1500万美元的财政损失，但肯塔基政策研究所（KyPolicy）估计，仅杰斐逊县、霍斯维尔、博伊德/格里纳普县和梅森县四个拟建的AI优化数据中心（总装机容量达3.084吉瓦），在初期设备配置阶段就可能使肯塔基州损失12亿至22亿美元的销售税收入。此外，每3至5年的设备更换还会带来额外成本。其他12个拟建项目及公用事业管道显示，成本可能还会大幅攀升。相比之下，这项补贴的规模可能接近甚至超过该州对大学、K-12基础教育经费或医疗补助（Medicaid）的支出。

文章指出，全美有超过40个州提供数据中心税收优惠，但许多州如今因财政担忧、创造的永久性就业岗位稀少以及与投机性AI需求和公用事业成本相关的风险，正在暂停、限制或终止这些优惠。例如，俄亥俄州、亚利桑那州、得克萨斯州、纽约州、伊利诺伊州和内布拉斯加州已暂停相关优惠，弗吉尼亚州则开征新税。

肯塔基州的地方政府——包括纳尔逊县、戴维斯县、费耶特县、格里纳普县、博伊德县和斯科特县——已对数据中心实施暂停令。州指南要求进行社区参与并提供公用事业影响信息，官员表示项目不得将成本转嫁给费率支付者。关于数据中心税收激励的报告须在2027年8月前提交，但2027年的立法机构可能会更早采取行动。文章敦促在授予大规模税收优惠之前进行全面辩论。

---

## 34. Pandoc 的二十年

**原文标题**: Twenty Years of Pandoc

**原文链接**: [https://pandoc.org/twenty-years-of-pandoc.html](https://pandoc.org/twenty-years-of-pandoc.html)

Pandoc，通用文档转换器，由约翰·麦克法兰创建，于2006年8月3日在GPL许可下首次发布。它用Haskell编写，最初是一个使用解析器组合子的Markdown解析器，生成抽象语法树而非使用正则表达式。这种设计使其具有可扩展性：添加N个读取器和M个写入器即可实现N×M种转换。最初支持Markdown、reStructuredText、HTML、LaTeX和RTF，随后迅速发展。

此后发布了二百多个版本。早期里程碑包括为Debian打包、在Hackage上发布，以及新增DocBook、MediaWiki、OpenDocument和ODT等格式。Pandoc 1.0（2008年）增加了语法高亮和引文生成功能。后续版本引入了模板、YAML元数据、Lua和JSON过滤器以及Markdown扩展。Pandoc于2010年迁移至GitHub，并增加了EPUB、docx及许多其他格式的支持。

主要贡献者包括阿尔伯特·克雷温克尔、杰西·罗森塔尔和马修·皮克林，他们分别添加了Org-mode支持、docx读取和EPUB输入功能。麦克法兰还领导了CommonMark项目，并于2014年发布了规范。Pandoc 2.0（2017年）带来了架构变革，允许在读取器和写入器中进行I/O操作，并增加了Lua过滤器。随后又添加了PowerPoint写入器和Jupyter笔记本（ipynb）支持。来自Handshake的10万美元捐赠用于支持维护者。

引文处理从零开始重写为一个Haskell citeproc库，提高了速度和保真度。Pandoc现在支持数十种文档格式，并已成为最流行的Haskell程序，广泛应用于Quarto和Jupyter等学术工具中。这篇文章回顾了这个小型的拖延症项目如何成为全球必不可少的工具。

---

## 35. 火车模拟器控制器

**原文标题**: Train Simulator Controller

**原文链接**: [https://z80.me/blog/tsc-2026-july/](https://z80.me/blog/tsc-2026-july/)

本文是2026年7月关于一个物理火车模拟器控制器项目的进度更新，该项目复刻了英国Class 80x驾驶室。

**车头灯：** 制作者为车头灯控制面板设计了一款定制PCB，测试了白色和红色表面贴装LED，并使用磨砂扩散片。在确定购买新的开关太贵后，他们用零件组装了一个六档选择开关。与《Train Sim World》的集成有限，因为游戏不暴露LED输出状态。

**钣金面板：** 在硬纸板原型被证明脆弱且不逼真之后，制作者改用激光切割并粉末涂层的钢板。用TPWS和司机提醒装置面板进行的测试很成功，看起来很专业。所有其他面板随后都用哑光黑色钣金制作，但给它们加标签成了问题：白色丙烯酸涂料渗入哑光粉末涂层中，无法擦干净，因此需要新的标签方法。

**AWS向日葵指示器：** 制作者测试了更逼真的AWS“向日葵”指示器——一个机械版和两个LED版——它们还能发出真实的警示喇叭和清脆的铃声。一个微型机械装置可以工作，但需要高端开关，与当前CAN总线I/O板的低端FET不兼容。他们正在重新设计子板以支持两种开关模式。他们正在考虑在仪表板上安装一个微型LED向日葵，尽管缺少电磁版本的机械“砰”声。

总的来说，这篇帖子报告了多个仪表板组件的进展，并计划在每个部件完成后发布详细的博客文章。

---

## 36. 一键畅玩游戏：Rip-O-Bot（1989）

**原文标题**: Games at the press of a button: The Rip-O-Bot (1989)

**原文链接**: [https://blog.gingerbeardman.com/2026/08/02/games-at-the-press-of-a-button-the-rip-o-bot/](https://blog.gingerbeardman.com/2026/08/02/games-at-the-press-of-a-button-the-rip-o-bot/)

《泡泡龙》与《彩虹岛》的设计师三辻富贵朗（“MTJ”）曾在1989年为日本杂志《GAMEST》撰写游戏设计专栏。在专栏中，他抨击了“抄袭”游戏，并引用一位经理的话——对方不以为然地表示，玩家很快就会成为不知原作的一代人，因此只需做表面改动就够了。

为说明这一危险，MTJ写了一个科幻短剧：在“不久的将来”，一位设计师将一款山寨游戏标题输入他称为“帕库灵机器人”（Pakuringu Robotto，“Rip-O-Bot”）的机器。只需按下随机选择键，机器人就能生成背景、角色及其他元素，产出一部“抄袭游戏的杰作”。MTJ警告说，当这样的机器人问世时，普通设计师将大量失业——他并问读者，是否仍有动力和独创力去竞争。他的核心论点是：“归根结底，游戏就是创意！”他认为，画面很快就会变得与现实难以区分，因此外观是一条死路；独创性才是最后仅存的武器。

这篇文章还附有一段令人感慨的注记：手冢治虫刚于1989年2月去世，MTJ问道，“游戏界的手冢治虫”是否会出现——这是从相反方向切入的同一个问题。

MTJ于2008年去世，早于当今的生成式AI，但他的预言与AI极为相似。文章作者指出，这启发了他自己的游戏制作工具Jinks——该工具旨在将设计师从重复性工作中解放出来，使其专注于创意与系统。来源：《GAMEST》第31期，1989年4月，作者辅以机器辅助翻译。

---

## 37. Cloudflare Workers和容器现已支持入站TCP连接与gRPC

**原文标题**: Cloudflare Workers and Containers now support inbound TCP connections and gRPC

**原文链接**: [https://blog.cloudflare.com/grpc-workers/](https://blog.cloudflare.com/grpc-workers/)

Cloudflare 宣布在其 Workers 和 Containers 平台上支持入站 TCP 连接和 gRPC，该功能在 Agents Week 期间以私有测试版形式推出。

主要包括：

- **`connect(socket)` 处理器**：一项新的 Workers 运行时功能，允许 Worker 从 Spectrum（Cloudflare 的非 HTTP 入站代理）接受入站 TCP socket。该 socket 可以在 Workers、Durable Objects 和 Containers 之间传递，使开发者能够完全控制 TCP 流量的路由。

- **来自 Containers 的双向 gRPC**：开发者可以在 Cloudflare 的容器中以任何语言部署 gRPC 服务器，支持全双工、双向流式传输。这使得语音 AI 和实时应用能够在 Cloudflare 的 330+ 个地点实现低延迟服务。

- **Workers 作为 gRPC 服务器/客户端**：使用 gRPC-web 协议，Workers 可以提供一元（unary）和服务器流式（server-streaming）gRPC API，并对外部 gRPC 服务器进行出站调用。Cloudflare 会自动将入站 gRPC 转换为 gRPC-web，将出站 gRPC-web 转换为 gRPC，这意味着现有客户端和服务器无需更改。示例包括为移动应用构建 gRPC 后端，或在现有 gRPC 后端前放置一个 Worker。

文章包含代码示例，演示了 socket 处理、容器连接以及用 Go 编写的简单 gRPC 服务器，还有一个使用 @connectrpc/connect 包在 Worker 中编写的一元 gRPC 服务器和客户端。

Cloudflare 表示将首先与一小部分开发者合作进行私有测试，并计划最终扩展到基于 UDP 的协议。感兴趣的开发者可以通过链接表单注册测试版。

---

## 38. Octane——React的编程模型，编译版

**原文标题**: Octane – React’s programming model, compiled

**原文链接**: [https://octanejs.dev](https://octanejs.dev)

Octane 为 React 的编程模型引入了一种编译式方法，旨在消除手动依赖管理和僵化的 Hook 规则。它不再依赖 `useEffect`、`useMemo` 和 `useCallback` 的依赖数组，而是由编译器自动追踪每个构造实际使用的值。这意味着 Hook 可以安全地放在条件语句中或提前返回之后，因为编译器理解它们的真实依赖，而不是强制执行静态的位置规则。结果是更自然、更少约束的编码体验：开发者编写逻辑时无需担心过期的闭包、缺失的依赖或 exhaustive-deps 的 lint 错误。Octane 有效地将 React 的运行时和心智负担转移到编译期，使编程模型更简单、更直观，同时保持正确性和性能。

---

## 39. 在我们的系统中寻找僵尸：CPU瓶颈的真实案例

**原文标题**: Finding zombies in our systems: A real-world story of CPU bottlenecks

**原文链接**: [https://medium.com/pinterest-engineering/finding-zombies-in-our-systems-a-real-world-story-of-cpu-bottlenecks-ea4722e552eb](https://medium.com/pinterest-engineering/finding-zombies-in-our-systems-a-real-world-story-of-cpu-bottlenecks-ea4722e552eb)

无法访问文章链接。

---

## 40. 16岁少年用AI推翻教授观点

**原文标题**: 16 Year old used AI to disprove professor

**原文链接**: [https://twitter.com/MaseehG_/status/2084327646209392907](https://twitter.com/MaseehG_/status/2084327646209392907)

Maseeh Ghodsi发布的一篇帖子声称，他在16岁时使用定制的GPT-5.5框架推翻了由加州大学洛杉矶分校和罗格斯大学的Chan和Pak教授提出的枚举组合学中的一个案例。该推文包含一个arXiv链接（arXiv:2607.10084）、2026年8月3日的时间戳，并显示有9,910次浏览和55,549个赞。该帖子将这一AI辅助的证伪视为自己的成就，强调使用专门的AI模型来挑战既有的学术工作。帖子本身没有提供有关数学内容的更多细节。

---

