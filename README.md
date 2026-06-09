# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-09.md)

*最后自动更新时间: 2026-06-09 20:33:00*
## 1. 克劳德寓言 5

**原文标题**: Claude Fable 5

**原文链接**: [https://www.anthropic.com/news/claude-fable-5-mythos-5](https://www.anthropic.com/news/claude-fable-5-mythos-5)

**Claude Fable 5 与 Mythos 5 发布摘要（2026年6月9日）**

Anthropic 发布了 **Claude Fable 5**（面向通用用途安全化的 Mythos 级模型）及 **Claude Mythos 5**（相同模型，通过 Project Glasswing 为授权网络安全用户降低防护限制）。Fable 5 在多数基准测试中达到业界领先水平，在软件工程、视觉识别、知识工作及科学研究（尤其是长篇幅复杂任务）中表现卓越。

**核心能力：** Fable 5 将数月的工程周期压缩至数日（如 Stripe 代码库迁移），仅凭视觉识别通关《宝可梦：火红》，在金融及编程评估中取得最高分，展现出强大的记忆与自主推理能力。Mythos 5 将药物设计效率提升约 10 倍，生成的新型分子生物学假设获 80% 偏好率（优于此前模型），并自主完成可发表水平的基因组学研究。

**安全机制：** 为降低风险（网络攻击升级、滥用），Fable 5 采用安全分类器。当涉及网络安全、生物/化学或模型蒸馏查询时，系统会回退至次优模型（Claude Opus 4.8）而非直接拒绝。回退率低于 5% 的会话，并以保守参数调优确保安全性。

**定价：** 输入令牌 $10/百万，输出令牌 $50/百万——价格较此前 Mythos 预览版降低过半。

---

## 2. GPT-2：过于危险而无法发布（2019）

**原文标题**: GPT-2: Too Dangerous To Release (2019)

**原文链接**: [https://naokishibuya.github.io/blog/2022-12-30-gpt-2-2019/](https://naokishibuya.github.io/blog/2022-12-30-gpt-2-2019/)

**摘要：**  
文章讨论了GPT-2——GPT-1的升级版本，拥有15亿参数（是GPT-1的10倍），并在40GB的网络文本上进行了训练。OpenAI最初认为GPT-2过于危险而暂不发布，担心其被用于恶意生成文本，仅发布了较小版本供研究使用。GPT-1与GPT-2共享相同的基于解码器的Transformer架构，主要区别在于参数规模和训练数据量，这提升了零样本任务的表现。  

九个月后，OpenAI发布了完整的15亿参数模型，并总结了经验：人类认为其输出令人信服，可被微调用于不当用途，检测具有挑战性（RoBERTa模型可达95%准确率），但并未出现明显的滥用实例。文章将GPT-2与ChatGPT（2022年）进行了对比，指出尽管OpenAI采取了安全措施（如防止身份冒充），但其他滥用行为（如学术作弊）依然存在且更难以检测。文章强调了在AI能力与负责任部署之间寻求平衡的持续挑战。

---

## 3. 基于Kolmogorov-Arnold网络的FPGA超快速机器学习

**原文标题**: Ultrafast machine learning on FPGAs via Kolmogorov-Arnold Networks

**原文链接**: [https://aarushgupta.io/posts/kan-fpga/](https://aarushgupta.io/posts/kan-fpga/)

**摘要：**

本文详细介绍了一篇硕士论文，该论文利用Kolmogorov-Arnold网络（KAN）在FPGA上实现超快机器学习，相关成果发表于两篇获奖论文（FPGA 2026, ICML 2026）。

KAN用可学习的单变量边缘函数（\(\phi_{q,p}(x)\)）取代了MLP的固定激活函数和权重，这些函数被参数化为B样条基函数的线性组合。作者利用这种架构，通过查找表（LUT）在FPGA上实现。

**主要贡献：**
1.  **高效推理 (KANELÉ):** KAN被转换为基于LUT的神经网络。与先前输入维度呈指数增长的LUT-NN不同，KAN对单变量函数求和，避免了这种爆炸。预训练的激活值直接存储为LUT，相比先前的KAN-FPGA实现实现了2700倍的加速，并具有最先进的延迟和资源效率。

2.  **FPGA上的在线学习：** 该架构被扩展用于实时模型更新。B样条基函数（而非完整激活值）存储在LUT中，允许通过梯度下降更新系数。关键实现因素包括：**局部性**（每个输入仅激活\(G\)个基函数中的\(S+1\)个，简化了硬件扩展）和**稳定的定点训练**（B样条求和为1，确保输出和梯度保持在可预测范围内，提高了量化稳定性）。

这项工作展示了在FPGA上实现的亚微秒级推理和在线学习，对量子控制、核聚变等应用至关重要。

---

## 4. 像1993年那样制作图形

**原文标题**: Making Graphics Like it's 1993

**原文链接**: [https://staniks.github.io/articles/catlantean-3d-blog-1/](https://staniks.github.io/articles/catlantean-3d-blog-1/)

本文详述了《Catlantean 3D》的开发历程——这款第一人称射击游戏通过自我施加限制，模仿90年代初期的图形技术。游戏采用320×240分辨率，仅使用256种颜色，并基于受VGA 13h模式启发的调色板渲染系统。作者强调，这些限制迫使创作者做出深思熟虑的艺术选择，最终呈现出清晰锐利的视觉效果。

核心技术要点包括：
- **调色板与颜色映射表：** 精心定制了包含256种颜色的调色板。为实现无性能损耗的（基于距离的）光照暗化效果，预计算了一个"颜色映射表"。这个二维矩阵将每个调色板颜色映射至更暗的色阶，通过感知颜色距离（Oklab色彩空间）与色相偏移产生暖色调，实现运行时的O(1)复杂度查询。
- **素材生成：** 采用三种方法：
  1. **预渲染精灵**（Blender 3D模型）用于复杂动画，渲染为纹理后通过Python脚本进行调色板量化。
  2. **手绘精灵**（如状态栏角色头像），在低分辨率下比3D渲染更具表现力与高质量。
  3. **基于手绘艺术生成程序化纹理**。
- **像素比例一致性：** 所有精灵遵循64像素的世界单位比例，确保视觉连贯性，避免素材比例失调带来的突兀感。
- **HUD界面：** 主要使用Affinity Photo手绘制作，涵盖状态栏、字体及过渡画面。

该项目被描述为一次"愚钝"却专注的尝试——在不借助AI辅助的情况下，打造一款精致可发行的游戏，将玩家体验置于单纯技术演示之上。

---

## 5. 一颗巨星可能在一次极其罕见的爆炸中自我毁灭

**原文标题**: A giant star may have destroyed itself in one of the rarest explosions

**原文链接**: [https://phys.org/news/2026-05-giant-star-destroyed-universe-rarest.html](https://phys.org/news/2026-05-giant-star-destroyed-universe-rarest.html)

无法访问该文章链接。

---

## 6. 测试用例简化器是被低估的调试工具

**原文标题**: Test-case reducers are underappreciated debugging tools

**原文链接**: [https://tratt.net/laurie/blog/2026/test_case_reducers_are_underappreciated_debugging_tools.html](https://tratt.net/laurie/blog/2026/test_case_reducers_are_underappreciated_debugging_tools.html)

**概要：**

本文倡导将测试用例简化器作为强大但未被充分利用的调试工具，它能自动缩小导致程序故障的庞大输入，使错误更易于识别。

**要点：**

- **核心概念**：测试用例简化器接收一个程序、一个大型输入以及一个“趣味性测试”（用于检查较小的输入是否仍能触发目标错误）。它系统性地尝试移除输入的各个部分，并保留那些仍能维持错误的简化版本。
- **有效性并非魔法**：作者通过一个简单的行删除简化器演示了基本算法。即便这种粗糙的方法，也能在无需理解底层程序的情况下实现显著的缩减（30-60%）。
- **高级工具**：现成的简化器（如Shrink Ray）采用复杂策略（例如缩小整数、移除注释、并行执行），能够实现90-99%的缩减，极大简化调试过程。
- **编写良好的趣味性测试至关重要**：常见陷阱包括过度简化（接受丢失原始错误的输入）、性能（更快的测试能加速简化）、超时（较短的超时设置可防止程序挂起）以及非确定性（随机行为可能误导简化器）。
- **额外见解**：文章暗示可利用趣味性测试将简化导向其他理想特性，例如最小化错误频率或指令计数。

作者总结认为，测试用例简化器简单却具有变革性，值得在开发者中更广泛地推广使用。

---

## 7. 微软开源工具遭黑客攻击，用于窃取AI开发者密码

**原文标题**: Microsoft's open source tools were hacked to steal passwords of AI developers

**原文链接**: [https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/](https://techcrunch.com/2026/06/08/microsofts-open-source-tools-were-hacked-to-steal-passwords-of-ai-developers/)

**摘要：**微软近日从GitHub临时撤下了数十个开源项目，原因是黑客向代码中注入了密码窃取恶意软件。受影响的包括与Azure、Claude Code、Gemini命令行界面及VS Code相关的工具——这些工具常被AI开发者使用。安全公司Cloudsmith与OpenSourceMalware发现了此次入侵，当用户打开被篡改的工具时，黑客可窃取其凭证。微软证实已下架相关项目，并表示正在调查，已通知少量受影响客户。至少70个微软代码库被禁用。这是继此前Durable Task项目遭攻击后，微软开源项目在数周内第二次被曝安全漏洞。此次事件突显了针对广泛使用代码的供应链攻击日益增长的趋势，此类攻击旨在危害大规模用户群体。

---

## 8. 苹果AI现在可以更改你的密码。这可能会出什么问题？

**原文标题**: Apple's AI Can Now Change Your Passwords. What Could Possibly Go Wrong?

**原文链接**: [https://www.kylereddoch.me/blog/apples-ai-can-now-change-your-passwords-what-could-possibly-go-wrong/](https://www.kylereddoch.me/blog/apples-ai-can-now-change-your-passwords-what-could-possibly-go-wrong/)

**摘要：**

苹果在 WWDC26 上宣布，其 iOS 27、iPadOS 27 和 macOS 27 中的“密码”应用将利用 AI 自动更改弱密码或被泄露的密码。虽然这解决了用户忽视泄露警告的真实问题，但也引发了重大的安全隐患。

核心风险在于，自动化密码更改让 AI 代理获得了控制账户凭证的权限——这是一项高影响力操作。主要危险包括：

- **提示注入：** 网站作为不可信输入。恶意内容可能诱骗代理执行更改安全设置或将凭证发送到别处等操作。
- **凭证暴露：** AI 模型绝不应看到实际密码，因此需要代理与凭证存储之间严格隔离。
- **账户锁定：** 如果代理更改了密码但未能正确保存，用户可能无法访问账户。
- **危害放大：** 自动化创造了更快的攻击面；恶意软件或能访问设备的攻击者可能快速轮换大量密码。
- **安全性不完整：** 仅更改密码可能使其他恢复途径（例如，弱邮箱、多因素认证设置）仍存在风险。

苹果的实现仍处于开发者测试阶段，关键细节尚未记录。作者呼吁苹果证明：凭证与 AI 隔离，操作严格限定于仅更改密码，提交更改需要用户批准（例如，面容 ID），敌意内容无法扩大权限，来源验证严格，故障处理能防止用户被锁定。仅通过实时活动提供可见性是不够的，还需要持久可靠的问责机制。

---

## 9. 亚马逊大规模扁平数据中心网络

**原文标题**: Flat Datacenter Networks at Scale at Amazon

**原文链接**: [https://perspectives.mvdirona.com/2026/06/flat-datacenter-networks-at-scale/](https://perspectives.mvdirona.com/2026/06/flat-datacenter-networks-at-scale/)

**摘要：**

详细阐述了亚马逊从传统胖树数据中心网络向基于随机图的扁平化RNG（弹性网络图）的转型历程。文章追溯了最优路由的理论根源至20世纪70年代的扩展器图与随机网络，与业界层级化的胖树架构形成对比。

在放弃彭罗斯铺砌法后，亚马逊研究人员（Bernardi、Mahajan、Comandur）攻克了三大关键挑战：**路由**（Spraypoint）、**布线**（ShuffleBox）及**运维**（软件工具）。RNG于2024年首次在都柏林附近建成，后经优化并部署至德国和西班牙。

**相较于胖树的核心优势：** 路由器减少69%，吞吐量提升33%，功耗降低40%，运营成本下降27%。RNG具备比例弹性（损失1%路由器即损失1%容量）、可互换容量，以及无需重新设计拓扑即可持续扩展的能力。

**局限**包括随机性性能保障与运维复杂性，已通过诊断软件加以缓解。至2026年初，RNG已成为亚马逊全球新建数据中心的默认设计方案。

---

## 10. 与Mythos共事是一种怎样的体验

**原文标题**: What it feels like to work with Mythos

**原文链接**: [https://www.oneusefulthing.org/p/what-it-feels-like-to-work-with-mythos](https://www.oneusefulthing.org/p/what-it-feels-like-to-work-with-mythos)

本文记述了作者对首款神话级AI模型——克劳德5寓言版的测试体验，核心要点如下：

- **性能跃升**：寓言版在各类任务中显著超越前代模型——从撰写学术社科论文与史诗押韵诗，到仅凭数学运算（无需外部素材）创建复杂游戏。

- **自主工作**：AI可依据数页规格说明书独立工作长达9.5小时，自主调用子智能体进行调研、编程与验证。例如：通过分析2200+航班数据、列车时刻表及公路时速，自主构建交互式等时线地图并完成可视化编码。

- **人类角色转变**：作者形容自己从"术士"变为"赞助人"——委托任务并评判结果，而AI全权处理所有流程决策。该模型在无人类干预下完成数百项微观判断，形成"黑箱"体验。

- **局限性**：成本翻倍（为Opus版两倍），激进的安全护栏在检测到安全提示时会自动降级为弱模型，且代码与文风仍残留"克劳德式表述"。

- **结论**：作者指出，随着AI能力增强，人类参与可能从操控指引转向单纯委托与成果评估——这标志着人机关系的根本性变革。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 2 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 3 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 4 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 5 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 6 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 7 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 8 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 9 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 10 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 11 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 12 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 13 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 14 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 15 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 16 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 17 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 18 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 19 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 20 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 21 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 22 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 23 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 24 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 25 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 26 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 27 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 28 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 29 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 30 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 31 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 32 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 33 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 34 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 35 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 36 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 37 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 38 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 39 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 40 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 41 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 42 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 43 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 44 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 45 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 46 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 47 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 48 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 49 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 50 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 51 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 52 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 53 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 54 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 55 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 56 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 57 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 58 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 59 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 60 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 61 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 62 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 63 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 64 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 65 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 66 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 67 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 68 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 69 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 70 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 71 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 72 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 73 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 74 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 75 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 76 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 77 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 78 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 79 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 80 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 81 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 82 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 83 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 84 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 85 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 86 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 87 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 88 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 89 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 90 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 91 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 92 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 93 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 94 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 95 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 96 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 97 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 98 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 99 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 100 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 101 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 102 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 103 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 104 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 105 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 106 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 107 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 108 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 109 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 110 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 111 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 112 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 113 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 114 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 115 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 116 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 117 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 118 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 119 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 120 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 121 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 122 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 123 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 124 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 125 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 126 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 127 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 128 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 129 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 130 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 131 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 132 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 133 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 134 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 135 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 136 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 137 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 138 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 139 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 140 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 141 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 142 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 143 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 144 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 145 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 146 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 147 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 148 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 149 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 150 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 151 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 152 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 153 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 154 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 155 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 156 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 157 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 158 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 159 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 160 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 161 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 162 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 163 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 164 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 165 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 166 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 167 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 168 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 169 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 170 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 171 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 172 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 173 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 174 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 175 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 176 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 177 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 178 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 179 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 180 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 181 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 182 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 183 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 184 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 185 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 186 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 187 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 188 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 189 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 190 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 191 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 192 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 193 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 194 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 195 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 196 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 197 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 198 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 199 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 200 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 201 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 202 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 203 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 204 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 205 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 206 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 207 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 208 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 209 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 210 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 211 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 212 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 213 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 214 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 215 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 216 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 217 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 218 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 219 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 220 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 221 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 222 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 223 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 224 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 225 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 226 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 227 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 228 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 229 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 230 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 231 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 232 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 233 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 234 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 235 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 236 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 237 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 238 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 239 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 240 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 241 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 242 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 243 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 244 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 245 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 246 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 247 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 248 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 249 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 250 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 251 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 252 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 253 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 254 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 255 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 256 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 257 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 258 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 259 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 260 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 261 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 262 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 263 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 264 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 265 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 266 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 267 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 268 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 269 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 270 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 271 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 272 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 273 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 274 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 275 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 276 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 277 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 278 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 279 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 280 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 281 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 282 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 283 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 284 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 285 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 286 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 287 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 288 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 289 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 290 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 291 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 292 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 293 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 294 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 295 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 296 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 297 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 298 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 299 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 300 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 301 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 302 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 303 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 304 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 305 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 306 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 307 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 308 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 309 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 310 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 311 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 312 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 313 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 314 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 315 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 316 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 317 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 318 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 319 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 320 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 321 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 322 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 323 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 324 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 325 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 326 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 327 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 328 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 329 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 330 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 331 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 332 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 333 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 334 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 335 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 336 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 337 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 338 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 339 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 340 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 341 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 342 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 343 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 344 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 345 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 346 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 347 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 348 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 349 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 350 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 351 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 352 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 353 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 354 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 355 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 356 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 357 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 358 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 359 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 360 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 361 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 362 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 363 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 364 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 365 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 366 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 367 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 368 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 369 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 370 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 371 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 372 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 373 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 374 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 375 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 376 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 377 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 378 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 379 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 380 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 381 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 382 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 383 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 384 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 385 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 386 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 387 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 388 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 389 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 390 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 391 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 392 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 393 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 394 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 395 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 396 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 397 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 398 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 399 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 400 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 401 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 402 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 403 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 404 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 405 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 406 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 407 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 408 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 409 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 410 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 411 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 412 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 413 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 414 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 415 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 416 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 417 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 418 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 419 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 420 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 421 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 422 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 423 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 424 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 425 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 426 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 427 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 428 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 429 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 430 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 431 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 432 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 433 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 434 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 435 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 436 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 437 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 438 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 439 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 440 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 441 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 442 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 443 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 444 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
