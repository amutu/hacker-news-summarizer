# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-22.md)

*最后自动更新时间: 2026-07-22 20:32:59*
## 1. 关于雅可比猜想反例的特伦斯·陶与ChatGPT对话

**原文标题**: Terrence Tao's ChatGPT Conversation about the Jacobian Conjecture Counterexample

**原文链接**: [https://chatgpt.com/share/6a5fdc7a-d6f8-83e8-bbea-8deb42cfed56](https://chatgpt.com/share/6a5fdc7a-d6f8-83e8-bbea-8deb42cfed56)

**摘要：**  
该标题指数学家陶哲轩与ChatGPT关于雅可比猜想（代数几何领域著名问题）潜在反例的对话。雅可比猜想指出：若从ℂⁿ到ℂⁿ的多项式映射具有非零常数雅可比行列式，则该映射存在多项式逆映射。陶哲轩与ChatGPT的讨论可能探究了该反例的有效性，分析其数学结构与意义。此对话可作为AI辅助数学推理的案例研究，凸显AI在深度开放研究问题中的潜力与局限。标题本身未提供具体反例细节，重点聚焦于顶尖数学家与AI的交互过程。

---

## 2. GigaToken：语言模型分词速度提升约1000倍

**原文标题**: GigaToken: ~1000x faster Language model tokenization

**原文链接**: [https://github.com/marcelroed/gigatoken/](https://github.com/marcelroed/gigatoken/)

**GigaToken** 是一个新的分词库，声称速度比HuggingFace的tokenizers和tiktoken快高达1000倍，可作为即插即用替代方案。通过利用SIMD优化、最小化分支和实现预分词映射的激进缓存，其吞吐量可达GB/s级别。

**主要特性：**
- **兼容模式**：只需极少的代码改动即可适配现有HuggingFace和tiktoken分词器（例如`gt.Tokenizer(hf_tokenizer).as_hf()`）。
- **原生API**：通过直接在Rust中读取数据，绕过Python开销，实现最快性能。
- **安装**：简单的`pip install gigatoken`。

**性能基准测试（AMD EPYC 144核）：**
- GPT-2：24.53 GB/s（比HF快989倍，比tiktoken快681倍）
- 大多数分词器可达20–24 GB/s，速度提升超过800倍
- 基于SentencePiece的模型（Gemma、Mistral）较慢（快7–17倍）
- 在Apple M4 Max（最高快1,299倍）和AMD Ryzen 9800X3D（最高快110倍）上同样表现惊人

**技术亮点：**
- 使用SIMD优化预分词（通常依赖正则表达式）
- 大量缓存已见过的预分词编码
- 最小化Python交互和线程间通信

**已知局限：**
- WordPiece和SentencePiece未完全优化
- Windows系统建议通过WSL提供支持
- Python迭代开销依然存在

**引用**：由Marcel Rød（2026年）开发，代码托管于GitHub。作者注明大部分代码为手工编写，AI仅用于API实现、兼容性扩展及最终优化阶段。

---

## 3. Show HN：Bento —— 一个HTML文件即可呈现整份PPT（编辑+查看+数据+协作）

**原文标题**: Show HN: Bento - An entire PowerPoint in one HTML file (edit+view+data+collab)

**原文链接**: [https://bento.page/slides/](https://bento.page/slides/)

**《Show HN：Bento——单个HTML文件实现的完整PowerPoint》摘要**

Bento是一款单文件HTML演示工具，将PowerPoint的全部功能整合到一个独立的HTML文件中。与传统依赖单独文件（PPTX、PDF、云服务）的幻灯片不同，Bento将编辑、查看、数据嵌入及实时协作集成在同一文档中。

主要功能包括：
- **自包含格式**：整个演示文稿（幻灯片、编辑内容、数据）存在于单一HTML文件中，无需外部依赖或软件。
- **编辑+查看+数据**：用户可直接在浏览器中编辑幻灯片，嵌入实时数据（如图表、表格），并在编辑与演示模式间无缝切换。
- **实时协作**：多人可同时编辑同一HTML文件，更改实时同步。
- **轻量便携**：文件可共享、电邮或托管到任意位置，加载后支持离线使用。

Bento旨在通过单一、开放、基于文件的解决方案替代PowerPoint、Google幻灯片等工具，解决演示工具的碎片化问题。它面向追求简洁、可控和零配置的开发者、教育工作者及团队。该项目为开源，托管于GitHub，欢迎社区贡献。

---

## 4. AI实验室是否在“鹈鹕最大化”？

**原文标题**: Are AI Labs Pelicanmaxxing?

**原文链接**: [https://dylancastillo.co/posts/pelicanmaxxing.html](https://dylancastillo.co/posts/pelicanmaxxing.html)

**总结：“AI实验室在优化‘鹈鹕骑自行车’指标吗？”**

本文探讨了AI实验室是否暗中优化模型，以在Simon Willison的非正式基准测试中取得优异成绩：生成“一只骑自行车的鹈鹕”的SVG图像。作者测试了七个前沿模型，生成了1,008张涵盖48种动物-交通工具组合（例如“骑独轮车的猫”“坐飞机的鲸鱼”）的SVG图像。每张图像由大型语言模型评判员根据动物准确性、交通工具准确性和动作连贯性进行评分。

**关键发现：**

1. **鹈鹕并未被画得更好**——鹈鹕在8种动物中平均得分排名第6，落后于猫、鲸鱼和浣熊。
2. **自行车并未被画得更好**——自行车在6种交通工具中排名第7（仅飞机得分更低）。
3. **特定组合无显著提升**——固定效应回归分析表明，在调整固有难度后，任何实验室针对“骑自行车的鹈鹕”这一组合均未出现统计上的显著改进。最接近的候选模型（GLM-5.2）仅有微弱且不显著的效果。
4. **无记忆性场景出现**——尽管所有21张鹈鹕自行车图像均朝右，但这一特征很常见（81%的自行车图像朝右）。没有重复出现的独特元素（如特定围巾或太阳）能区分该组合。

**结论：** 没有证据表明AI实验室正在进行“鹈鹕优化”——即专门针对该基准测试进行优化。实验室的改进似乎是通用性的（例如整体SVG生成能力提升），而非针对性的。本研究的局限性包括仅使用单一LLM评判员、样本量较小，以及无法检测更广泛的“SVG优化”策略。

---

## 5. 每个人都应该了解SIMD

**原文标题**: Everyone Should Know SIMD

**原文链接**: [https://mitchellh.com/writing/everyone-should-know-simd](https://mitchellh.com/writing/everyone-should-know-simd)

**摘要：**

本文认为SIMD（单指令多数据流）并不复杂，所有开发者都应掌握这一常见的性能优化方法。SIMD允许CPU通过单条指令并行处理多个数据值（如4、8或16字节），能显著加速遍历大型连续数据的循环。

作者提出了一个简单可重复的五步SIMD编码模式：
1. **广播常量**（例如将比较值扩展到所有向量通道）
2. **逐向量循环**（每次迭代处理等于向量宽度的数据块）
3. **执行SIMD运算**（例如并行比较、加法或乘法所有通道）
4. **规约向量结果**（将并行结果合并为单个值或索引）
5. **处理标量尾部**（使用标准循环处理剩余不足完整向量的元素）

来自终端模拟器（Ghostty）的真实案例演示了控制字符扫描：将标量循环替换为SIMD版本后，在现代CPU上获得了高达5倍的实际加速效果。

尽管编译器能自动向量化简单循环，但往往不可靠。显式SIMD能为热点代码路径提供可预测的确定性优化。本文总结认为，借助现代语言支持（以Zig的通用向量为例），开发者无需深入掌握汇编知识即可轻松应用此模式来扫描、比较或转换大型数据集。

---

## 6. 制作

**原文标题**: Making

**原文链接**: [https://beej.us/blog/data/ai-making/](https://beej.us/blog/data/ai-making/)

**《关于“创造”》——比吉·乔根森·霍尔**

作者反思了使用人工智能创作事物时那种成就感的缺失。他自认为是一位X世代黑客兼多产创作者（编程、木工、艺术），但坦言在为AI生成的作品署名时会感到不适。为说明这一点，他先展示了一些AI生成的虚构故事、艺术和代码，仿佛它们是自己的作品，随后揭示它们实际由Claude/大语言模型生成。

核心论点：**向AI提示指令让它去创作，感觉更像是让别人代劳，而非亲自创造。**他只有在亲手打造的作品（例如一个亲手编写的177行闪卡应用）中才能找到深深的骄傲感，而面对AI生成的输出——即使由他发起——也无法感到自豪。

他承认“提示工程”本身是一种技能（涉及远见、判断与沟通），但他将其视为一种领导力——让别人完成工作，而非亲自创造。他将其与使用编译器或锤子这样的工具对比，后者更像是自身行动的延伸，而非中间人。

最终，作者指出一个灰色地带：让AI编写代码，与让编译器将C语言翻译成汇编指令，究竟有何不同？他提出，区别可能在于：与AI之间存在一种近乎人类的“关系”，而传统工具则是精确、确定性的。对他而言，当他人（或他物）应其要求建造成果时，“创造”的感觉便荡然无存。他总结道，这一区别深刻影响了他作为一名创作者的成就感与身份认同。

---

## 7. 没人知道二手GPU集群价值几何

**原文标题**: Nobody knows what a used GPU cluster is worth

**原文链接**: [https://ciphertalk.substack.com/p/nobody-knows-what-a-used-gpu-cluster](https://ciphertalk.substack.com/p/nobody-knows-what-a-used-gpu-cluster)

**摘要：**本文揭示了以GPU集群为抵押品为人工智能基础设施融资所面临的空前风险。尽管阿波罗全球管理公司等贷款机构已基于xAI旗下拥有20万块GPU的“巨像”集群提供了数十亿美元贷款，但此类抵押品与飞机或房地产等传统资产存在根本性差异。GPU集群缺乏标准化估值方法、无对冲工具，其价值完全取决于运行状态——而运行状态掌握在借款方团队手中，一旦违约该团队便会撤离。在20万块GPU的集群中，故障率极高（日均约50块），静默数据损坏或级联故障可能在无明显迹象的情况下毁掉持续数日的训练任务。文章还指出租金价格剧烈波动（H100从每小时8美元跌至1.70美元，随后飙升至2.35美元），折旧年限存在争议（四年还是六年），迈克尔·伯里等批评人士警告大量收益被夸大。KKR等主要基础设施投资者回避以GPU为抵押的债务，转而持有其背后的电力和建筑资产。核心风险在于：贷款机构在不了解集群真实持续经营价值的情况下定价债务，由此产生的溢价只有在标准化估值、二级市场及对冲工具出现后才会收窄。

---

## 8. 初创公司的Postgres生存指南

**原文标题**: The startup's Postgres survival guide

**原文链接**: [https://hatchet.run/blog/postgres-survival-guide](https://hatchet.run/blog/postgres-survival-guide)

**《初创公司Postgres生存指南》摘要**

本指南将两年的Postgres生产环境经验提炼为工程师可操作的实用建议，假定读者具备基础SQL知识。

**基础篇：** 良好的模式设计应使用标识列或UUID作为主键、timestamptz类型、带级联删除的外键（适用于低数据量），并采用迭代式开发。快速查询依赖索引（主键、唯一约束），表扫描虽慢但在数据量低于2万行时仍可接受。复合索引应将ORDER BY列与索引末尾列对齐。

**写入与迁移篇：** 保持事务简短，仅锁定所需行。针对大表务必使用`CREATE INDEX CONCURRENTLY`。推荐增量式迁移，并借助`NOT VALID`添加检查约束以避免写入阻塞。连接池技术（pgbouncer或内存池）可防止资源浪费与棘手的锁问题。

**进阶挑战篇：** 查询计划器依赖表统计信息，使用`EXPLAIN ANALYZE`调试慢查询。某些情况下全表扫描反而是最优解。批量写入（如pgx中的`SendBatch`）可提升10倍吞吐量。默认的自动清理设置在高写入负载下会失效，需监控死元组及事务ID回卷问题——后者会导致停机。

**高级特性篇：** `FOR UPDATE SKIP LOCKED`能实现高效的工作队列且不产生阻塞。表膨胀（部分填充的数据页）与索引膨胀需要调优自动清理或借助`pg_repack`等工具。指南始终强调：坚持基于索引的查询以避免计划器意外，采用增量式迁移保障系统持续在线。

---

## 9. 幽灵剪切——为何复制粘贴到处失灵

**原文标题**: Ghost Cut – or why Cut and Paste is broken everywhere

**原文链接**: [https://ishmael.textualize.io/blog/ghost-cut/](https://ishmael.textualize.io/blog/ghost-cut/)

文章指出，标准的“剪切与粘贴”功能存在三个根本性缺陷：

1. **剪切无法完全撤销**：撤销剪切会恢复文档中的文本，但不会恢复之前的剪贴板内容，导致用户只能接受不想要的替换结果。
2. **剪切会重新排版文档**：立即移除文本会导致文档重新排版，使用户更难找到原始的粘贴位置。
3. **剪切与粘贴并非原子操作**：这两个操作无法作为单一步骤撤销——撤销粘贴需要再撤销一次剪切，而中间编辑操作会使恢复过程更加复杂。

作者在其编辑器Ishmael中引入了**“幽灵剪切”**作为解决方案。按下Ctrl+X会使选中文本变淡，使其处于无效状态但仍然可见并保留在文档中。剪贴板不会被写入任何内容，也无须执行撤销操作。按下Escape键即可恢复文本。粘贴（Ctrl+V）会移除幽灵化的文本段，并将其插入光标位置，这一过程是原子性的、完全可逆的——且不影响剪贴板。

对于希望保留原始剪切语义的用户，变通方法是先复制（Ctrl+C）再按退格键。作者认为这一功能在文字处理器和文本编辑器中尤其有益，但由于不存在重新排版问题，因此对代码编辑器而言作用较小。

---

## 10. 《一个MUD能评估LLM吗？99美元的概念验证》

**原文标题**: Can a MUD evaluate LLMs? A $99 proof of concept

**原文链接**: [https://cruciblebench.ai/](https://cruciblebench.ai/)

**摘要：**

CrucibleBench提出了一项耗资99美元的概念验证，通过使用MUD（多用户地牢）评估大型语言模型，应用了任天堂“枯萎技术的水平思考”理念。该基于文本的环境提供了三个关键的测量优势：可枚举的动作空间（检测幻觉指令）、显式的NPC社交反馈（追踪信任/怀疑）以及运行内的持久性（后果持续存在）。

核心发现涉及LLM作为评判者的可靠性。评分堆栈中的单一分类器组件使排行榜排名最多变动六位，而总体统计数据保持不变。各模型与独立评判者的一致性介于21.7%至84.8%之间，被总体κ=0.04所掩盖。移除依赖分类器的维度后，六个排名发生了超出噪声范围的变动。值得注意的是，变动最大的模型与分类器同属一个模型系列。

关键行为失败被算法检测到：对话循环（前沿模型占14-66%）、错误房间交互（基础模型严重）、以及探索停滞（信息收集缺乏目标导向行为）。Claude Sonnet 4.6与DeepSeek R1在最小化分类器的评分中位列前茅，而GPT-5.4从第1名跌至第5名。每次运行成本从0.005美元（OLMo）到0.834美元（Grok 4）不等。

作者将此定位为持久化世界行为评估的概念验证，而非经过验证的通用社会智力测量。他们建议，使用LLM评判者的基准应报告每个受试者的一致性以及评判者消融下的排名稳定性。第二阶段旨在以3500美元预算校准并扩展该基准，寻求合作伙伴提供资金、构建或运行评估。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 2 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 3 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 4 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 5 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 6 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 7 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 8 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 9 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 10 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 11 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 12 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 13 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 14 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 15 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 16 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 17 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 18 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 19 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 20 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 21 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 22 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 23 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 24 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 25 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 26 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 27 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 28 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 29 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 30 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 31 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 32 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 33 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 34 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 35 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 36 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 37 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 38 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 39 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 40 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 41 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 42 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 43 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 44 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 45 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 46 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 47 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 48 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 49 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 50 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 51 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 52 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 53 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 54 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 55 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 56 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 57 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 58 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 59 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 60 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 61 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 62 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 63 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 64 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 65 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 66 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 67 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 68 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 69 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 70 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 71 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 72 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 73 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 74 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 75 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 76 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 77 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 78 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 79 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 80 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 81 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 82 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 83 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 84 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 85 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 86 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 87 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 88 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 89 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 90 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 91 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 92 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 93 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 94 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 95 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 96 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 97 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 98 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 99 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 100 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 101 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 102 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 103 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 104 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 105 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 106 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 107 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 108 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 109 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 110 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 111 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 112 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 113 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 114 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 115 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 116 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 117 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 118 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 119 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 120 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 121 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 122 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 123 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 124 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 125 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 126 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 127 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 128 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 129 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 130 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 131 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 132 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 133 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 134 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 135 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 136 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 137 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 138 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 139 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 140 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 141 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 142 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 143 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 144 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 145 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 146 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 147 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 148 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 149 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 150 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 151 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 152 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 153 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 154 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 155 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 156 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 157 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 158 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 159 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 160 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 161 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 162 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 163 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 164 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 165 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 166 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 167 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 168 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 169 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 170 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 171 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 172 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 173 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 174 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 175 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 176 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 177 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 178 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 179 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 180 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 181 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 182 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 183 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 184 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 185 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 186 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 187 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 188 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 189 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 190 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 191 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 192 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 193 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 194 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 195 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 196 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 197 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 198 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 199 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 200 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 201 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 202 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 203 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 204 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 205 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 206 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 207 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 208 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 209 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 210 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 211 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 212 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 213 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 214 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 215 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 216 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 217 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 218 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 219 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 220 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 221 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 222 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 223 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 224 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 225 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 226 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 227 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 228 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 229 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 230 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 231 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 232 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 233 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 234 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 235 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 236 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 237 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 238 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 239 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 240 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 241 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 242 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 243 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 244 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 245 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 246 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 247 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 248 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 249 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 250 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 251 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 252 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 253 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 254 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 255 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 256 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 257 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 258 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 259 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 260 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 261 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 262 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 263 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 264 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 265 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 266 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 267 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 268 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 269 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 270 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 271 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 272 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 273 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 274 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 275 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 276 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 277 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 278 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 279 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 280 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 281 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 282 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 283 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 284 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 285 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 286 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 287 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 288 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 289 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 290 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 291 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 292 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 293 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 294 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 295 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 296 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 297 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 298 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 299 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 300 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 301 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 302 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 303 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 304 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 305 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 306 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 307 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 308 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 309 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 310 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 311 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 312 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 313 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 314 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 315 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 316 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 317 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 318 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 319 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 320 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 321 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 322 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 323 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 324 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 325 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 326 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 327 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 328 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 329 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 330 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 331 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 332 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 333 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 334 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 335 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 336 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 337 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 338 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 339 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 340 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 341 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 342 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 343 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 344 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 345 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 346 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 347 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 348 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 349 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 350 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 351 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 352 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 353 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 354 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 355 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 356 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 357 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 358 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 359 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 360 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 361 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 362 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 363 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 364 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 365 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 366 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 367 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 368 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 369 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 370 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 371 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 372 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 373 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 374 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 375 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 376 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 377 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 378 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 379 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 380 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 381 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 382 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 383 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 384 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 385 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 386 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 387 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 388 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 389 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 390 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 391 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 392 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 393 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 394 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 395 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 396 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 397 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 398 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 399 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 400 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 401 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 402 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 403 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 404 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 405 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 406 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 407 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 408 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 409 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 410 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 411 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 412 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 413 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 414 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 415 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 416 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 417 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 418 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 419 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 420 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 421 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 422 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 423 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 424 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 425 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 426 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 427 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 428 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 429 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 430 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 431 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 432 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 433 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 434 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 435 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 436 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 437 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 438 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 439 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 440 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 441 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 442 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 443 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 444 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 445 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 446 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 447 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 448 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 449 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 450 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 451 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 452 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 453 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 454 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 455 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 456 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 457 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 458 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 459 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 460 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 461 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 462 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 463 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 464 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 465 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 466 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 467 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 468 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 469 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 470 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 471 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 472 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 473 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 474 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 475 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 476 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 477 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 478 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 479 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 480 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 481 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 482 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 483 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 484 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 485 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
