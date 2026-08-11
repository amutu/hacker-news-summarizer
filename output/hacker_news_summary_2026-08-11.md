# Hacker News 热门文章摘要 (2026-08-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Nvidia Nemotron 3.5 Lightning 与 NeMo Switchyard

**原文标题**: Nvidia Nemotron 3.5 Lightning and NeMo Switchyard

**原文链接**: [https://blogs.nvidia.com/blog/nemotron-lightning-switchyard-rtx-dgx/](https://blogs.nvidia.com/blog/nemotron-lightning-switchyard-rtx-dgx/)

英伟达宣布推出两项新成果，以提升AI智能体的性能和效率：

**Nemotron 3.5 Lightning** 是一个300亿参数的混合专家（MoE）开源模型，专为高容量、专业化的智能体任务而设计。与同类模型相比，其输出速度最高提升4倍，智能体任务完成速度提升30%。该模型可使用NVIDIA NeMo基于特定领域数据进行后训练，并可在PC、工作站、数据中心和云端运行。CrowdStrike、Harvey、CodeRabbit、Lila Sciences和Fastino Labs等公司已在使用该模型进行定制。

**NeMo Switchyard** 是一个面向AI智能体的开源模型路由库。它可根据质量、延迟或成本优先级，自动将提示词路由到最适合、最高效的模型。NVIDIA基准测试显示，它能保持前沿水平的准确度，同时将任务完成成本降低至仅使用Opus 4.8时的近三分之一。Boomi、Cadence、Cognition、LangChain、LiteLLM、Ramp、Siemens等合作伙伴正在集成或评估Switchyard，以降低成本并提升效率。

Nemotron 3.5 Lightning已在Hugging Face、ModelScope、OpenRouter和build.nvidia.com上以NIM微服务形式提供，并得到云合作伙伴的生态支持。NeMo Switchyard已在GitHub上发布，即将登陆合作伙伴平台。两者相结合，让企业在智能体AI系统的部署、路由和效率方面拥有更强的掌控力。

---

## 2. Mojo 1.0

**原文标题**: Mojo 1.0

**原文链接**: [https://www.modular.com/blog/modular-26-5-mojo-1-0-is-here](https://www.modular.com/blog/modular-26-5-mojo-1-0-is-here)

Mojo 1.0 已正式发布，标志着该语言的一个重要里程碑。此次更新为长期开发提供了稳定、生产就绪的基础，目前的变更以增量式为主。Mojo 已被用于 Modular 商业基础设施的生产环境。

26.5 版本包含最终的清理与简化：变量现在统一使用 `var` 声明，闭包已统一，并采用单一的 Pointer 类型。新功能包括 Python 风格的 lambda 语法、更稳定的 LSP 服务器、改进的内存安全诊断（如引用失效检测），以及更一致并附有描述性消息的 `where` 子句。Mojo AI 技能已为 1.0 做好准备。Mojo 编译器与工具链仍按计划于 2026 年开源。

未来计划聚焦于将 Mojo 打造为通用系统级语言，异步编程、模式匹配和联合类型均已在路线图上。

MAX 也迎来更新：安装选项更简洁（`max["serve"]`、`max["benchmark"]`、`max["all"]`），并新增支持两个模型系列——GLM-5.2 和 Nemotron-H，两者均为混合 Mamba-2 模型。Kimi 2.5 可与 Module V3 配合使用，开源智能体技能集已获得广泛采用。

用户可通过 `uv pip install --upgrade mojo` 或 `max[all]` 快速上手。ModCon 将于 8 月 18 日在旧金山举行，并提供直播选项。文章强调，1.0 只是一个开始，并向近 200 名贡献者以及数千名通过提交问题塑造了这一语言的社区成员表示感谢。

---

## 3. 压缩即预测

**原文标题**: Compression Is Prediction

**原文链接**: [https://ngrok.com/blog/compression-is-prediction](https://ngrok.com/blog/compression-is-prediction)

文章认为，压缩和预测本质上是同一任务。在信息论中，一个良好的模型会对未见过的数据赋予高概率，而这种预测能力可以直接转化为压缩：对于模型能预测的数据，所需的编码比特数更少。反过来，任何有效的压缩器都必须隐式地预测接下来的模式。因此，以最小化预测误差为目标训练模型，等同于教它压缩数据。

文章将这一思想应用于大型语言模型。大型语言模型通过下一个词元预测进行训练，这意味着它们学习了文本的统计结构。它们的交叉熵损失是编码长度的一种度量：损失越低，意味着模型能用更少的比特编码同一文本。这解释了为什么大型语言模型能够充当强大的文本无损压缩器，也解释了为什么压缩性能可以用作理解程度的衡量标准。

文章还将这一概念与实际模型压缩联系起来。训练结束后，可以通过量化等技术来缩小模型，量化会降低权重的精度，从而减少内存和计算需求。这种方法之所以有效，是因为模型中许多细粒度的数值细节是冗余的；即使精度降低，仍能保留足够的预测能力。从这个角度来看，量化是对一个本身通过预测式压缩构建的系统进行有损压缩。

总体而言，文章强调了信息论、机器学习和模型部署之间的深层联系，表明将模型视为预测器和压缩器可以指导更好的设计、评估和效率提升。

---

## 4. 我们过去如何找工作：报纸分类广告的故事

**原文标题**: How we used to get jobs: A newspaper classifieds story

**原文链接**: [https://ironicsans.ghost.io/how-we-used-to-get-jobs/](https://ironicsans.ghost.io/how-we-used-to-get-jobs/)

大卫讲述了他是如何在2000年通过报纸分类广告——具体来说是《纽约时报》上的广告——得到 Polo Ralph Lauren 内部摄影师这份梦想工作的。他长期以来一直讲述这个故事，但决定利用他的数字档案来核实，其中包括自1997年以来的电子邮件和扫描文件。在找到他提交的求职信后，他在《纽约时报》的 Times Machine 档案中搜索并找到了那条广告：一家“领先时尚公司”招聘一名精通4x5相机的专职摄影师，并指示将简历传真至“CWP”（他未来的老板）。

在确认广告的同时，他对两段记忆提出了质疑：第一，他是否真的在谷歌早期通过查询电话号码识别出了这家公司；第二，他未来的老板是否真的留过语音留言，说她已经翻看了“一大堆简历”。他无法核实后者，因为他的答录机磁带从未被数字化。

他分享这个故事，将其作为互联网时代之前求职的遗物，并邀请读者分享他们自己的分类广告经历——无论是找工作、约会、找沙发还是其他任何事。这篇文章反思了怀旧情怀、记忆的可靠性，以及即使在实体报纸上找到的一份工作，也能成为个人历史的一部分。

---

## 5. 大脑可能即将迎来属于它的“奥泽匹克时刻”

**原文标题**: The brain may be about to have its Ozempic moment

**原文链接**: [https://economist.com/science-and-technology/2026/08/11/the-brain-may-be-about-to-have-its-ozempic-moment](https://economist.com/science-and-technology/2026/08/11/the-brain-may-be-about-to-have-its-ozempic-moment)

无法访问文章链接。

---

## 6. 用笔式绘图仪制作全息图

**原文标题**: Making holograms with a pen plotter

**原文链接**: [https://blog.jordan.matelsky.com/Penplotter-holography/](https://blog.jordan.matelsky.com/Penplotter-holography/)

文章描述了使用笔式绘图仪制作手工蚀刻全息图的过程。作者首先解释了关键的光学原理：污迹和反射脊会产生高光，随着观看者移动，高光位置会改变，其移动速度与脊的曲率半径成反比。这使得绘制的脊能够模拟真实的深度，使效果真正具有全息性——即使是很小的裁剪部分也保留完整的场景。

为了制作全息图，作者通过将每个点变成反射脊来“渲染”3D场景，脊的曲率编码距离。文中包含一个简短的、可选的数学公式，但主要方法直观且实用。早期的尝试失败了：柔性覆膜片会移动和翘曲，蜡纸在所需的大量曲线下撕裂。有效的材料是旧CD盒，批量购买很便宜。Harbor Freight工具套装中的锋利尖头针被证明是蚀刻的理想工具。

关键经验教训：光源必须是点光源，才能清晰传达深度；手电筒的瞄准方式使眩光刚好位于蚀刻上方效果最佳；更多蚀刻能改善结果，但可能使表面退化为哑光斑块。作者考虑尝试金刚石尖笔，并询问读者是否有闲置的。

这篇文章的灵感来自威廉·比蒂关于手绘全息图的研究，并强调了古代文明可能用简单工具制作出此类图像的想法。总的来说，作者赞美了用笔式绘图仪创作类似全息艺术的神奇之处，无需昂贵的激光器或光学平台。

---

## 7. 窃取专有LLM API中的推理轨迹

**原文标题**: Stealing Reasoning Traces from Proprietary LLM APIs

**原文链接**: [https://stolen-thoughts.com/](https://stolen-thoughts.com/)

本文展示了一种从OpenAI、Anthropic和Google构建的专有LLM API中解码隐藏“推理”痕迹的方法。解码后的推理内容与API报告的隐藏思维令牌计数高度吻合，表明该技术能够可靠地重建内部思维链内容。

作者从GitHub和Hugging Face收集了6708条公开可用的智能体轨迹，这些轨迹仍包含加密的推理块。解码后，他们恢复了315320个推理块。在真实的非基准测试会话中，他们发现了704个不同的隐私痕迹，包括：

- 62个API密钥
- 33个密码
- 24个访问令牌
- 30个个人电子邮件地址
- 姓名、邮政地址、内部URL及其他技术标识符

在这704个痕迹中，有64个仅出现在推理块内部，在会话的任何其他地方均不可见。解码示例包括一个Codex会话，其中模型在推理过程中大声思考如何搜索并清理仓库中的API密钥、GitHub令牌、Hugging Face令牌和AWS凭证。

该论文还将泄露项目分类统计：351个技术标识符、204个个人身份信息、126个凭证和23个其他项目。总体而言，该研究揭示了一个重大的隐私风险：隐藏的LLM推理痕迹可能包含敏感信息，并且尽管经过加密或意图保密，仍可被恢复。

---

## 8. 一页尽览 PyTorch

**原文标题**: The whole of PyTorch on one page

**原文链接**: [https://tensor.khalilli.ai/blog/part-0-the-map/](https://tensor.khalilli.ai/blog/part-0-the-map/)

# 摘要：一页看尽 PyTorch 全貌 — 第0部分：地图

这篇开篇之作将 PyTorch 的架构从 Python 到芯片划分为八个“楼层”，并使用在 Apple M3 Max 上、torch 2.11.0 环境中运行的可量化验证来勾勒全貌。

**关键层：** `torch._C` 是一个只有 49 KB 的微型存根，它加载真正的框架：`libtorch_cpu.dylib`（206.5 MB）和 `libtorch_python.dylib`（28.5 MB）。用户编写的 Python 代码是最小的一层；编译后的主体占据了主导地位。

**边界：** 每个张量操作都会跨入 C++，在那里，调度器（dispatcher）通过一层层堆栈（autograd、混合精度等）路由调用。一个单元素加法耗时 0.54 微秒——几乎完全是调度机制的开销——将 Python 限制在每秒约 190 万次操作。

**内核：** 存在三千六百七十七个操作名称，每个名称对应到按设备、按数据类型划分的内核实现。调度器每次调用只选择一个。操作列表由 `native_functions.yaml` 和 `derivatives.yaml` 生成。

**两个时钟：** 在 GPU 上，Python 提交任务后立即返回，而芯片在异步计算。在演示中，50 个矩阵乘法排队仅用 1.58 毫秒，但完成它们却花了 73.83 毫秒。这种分离使得 `loss.item()` 代价高昂——它会迫使 Python 等待整个队列执行完毕。

**转折：** `loss.backward()` 之所以有效，是因为前向传播记录了一个 autograd 计算图：一系列函数记录的链（SumBackward0 → AddmmBackward0 → AccumulateGrad）。反向传播只是遍历这个被记录的计算图，运行存储的导数——不会发明任何新东西。

本系列承诺全程提供真实可运行的验证脚本，并建立深度计（depth meter）来追踪未来各部分将在哪一层运作。

---

## 9. Show HN：iPhone应用从两个镜头同时拍摄图像，融合为一张照片

**原文标题**: Show HN: iPhone app takes simultaneous images from 2 lenses, fuses into 1 photo

**原文链接**: [https://photosynthesis.camera](https://photosynthesis.camera)

Photosynthesis 是一款 iPhone 相机应用，可同时从两个后置镜头捕捉图像，并将其融合为一张照片。它将变焦或长焦镜头的细腻细节与主摄或超广角镜头的宽广视野相结合，让用户无需在两者之间取舍，即可同时获得整体背景与高精度细节。该应用不使用生成式AI；每个像素均来自真实光学拍摄，尽管机器学习会帮助对齐并匹配两张图像的颜色。

主要功能包括一键快门、包围式取景参考线、内置对齐与重影校正编辑器，以及分层 PSD、空间/并排3D和可重新导入的 Photosynthesis 文件等导出选项。应用支持从 iPhone 11 起的全部双镜头 iPhone；配备三摄的 Pro 机型还可将长焦与主摄配对，或在测试版中组合全部三颗镜头。

该应用免费提供拍摄、编辑和应用内查看功能，附赠14天完整权限，之后每月可导出3次。无限订阅可解除导出限制，增加专业导出格式、自定义主题/图标，以及可选的 iCloud 或自定义文件夹备份。照片存储在应用内，支持可选备份。这款应用专注于光学真实细节，非常适合演唱会、建筑摄影，以及任何同时需要宽广构图和可裁切清晰度的场景。

---

## 10. 一项关于机器人经营商店的新研究发现，它很友好但不太聪明

**原文标题**: A new study of a bot running a store finds it is friendly but not very smart

**原文链接**: [https://www.nytimes.com/2026/08/04/us/ai-boss-san-francisco-andon-market.html](https://www.nytimes.com/2026/08/04/us/ai-boss-san-francisco-andon-market.html)

无法访问文章链接。

---

## 11. 英格兰将成为首批消除丙型肝炎的国家之一

**原文标题**: England set to be one of the first countries to eliminate hepatitis C

**原文链接**: [https://www.bbc.com/news/articles/c75gk620r22o](https://www.bbc.com/news/articles/c75gk620r22o)

英格兰有望成为全球首批消除丙型肝炎的国家之一，最新数据显示了这一趋势。英国国家医疗服务体系（NHS）已完成对80%已知病例的治疗目标，过去十年间，因该病毒导致的死亡人数下降了36%——距离2030年的目标仅一步之遥。

丙型肝炎是一种“沉默的疾病”，通过接触受感染的血液传播，常见途径包括共用针头。若不及时治疗，可能导致严重的肝脏损伤。服用8至12周的抗病毒药物，可治愈超过95%的病例。自2015年以来，英格兰已有超过10万人被确诊并接受治疗。急诊科血液检测、全科医生注册检测以及免费家庭自测等举措，帮助发现了此前未被诊断的病例。

另一项目标——与2015年相比，将丙型肝炎相关死亡率降低65%——尚未达成，但有望在2030年前实现。英格兰目前约有50,200名成年人携带丙型肝炎病毒，估计其中84.6%已获得确诊，略低于90%的目标。

丙型肝炎信托基金会表示，英格兰正处于一项重大公共卫生成就的“临界点”。NHS国家医学总监弗兰基·斯沃兹教授表示，英格兰“引领世界”，并敦促高风险人群在线订购免费、保密的居家检测试剂盒。出生于乌克兰、罗马尼亚、爱沙尼亚、拉脱维亚、波兰、阿尔巴尼亚、立陶宛、保加利亚、捷克或斯洛伐克等国的成年人尤其建议接受检测，因为部分人可能在1991年之前通过医疗程序感染病毒。

文章还重点介绍了65岁的保罗·伊特维尔的案例，他在一次常规血液检测后被成功治疗；同时提及了1970年至1991年间的受污染血液丑闻，该事件导致数千人感染艾滋病毒和丙型肝炎。

---

## 12. OpenSSH 10.5/10.5p1

**原文标题**: OpenSSH 10.5/10.5p1

**原文链接**: [https://www.openssh.org/releasenotes.html#10.5](https://www.openssh.org/releasenotes.html#10.5)

本文包含 OpenSSH 10.5/10.5p1（发布于 2026-08-11）的发布说明，并引用了之前的 10.4/10.4p1 版本。

OpenSSH 10.5 主要亮点：

- **安全修复：**  
  - 修复了 ssh-agent 中代理锁定与会话绑定扩展之间的交互问题，该问题可能允许远程使用受限密钥或 PKCS#11 令牌。  
  - 修复了 ssh(1) 中通过多路复用连接进行远程转发时可能出现的 realloc 释放后使用（use-after-free）问题。  
  - 确保 authorized_keys 中的 `restrict` 关键字适用于隧道转发。

- **新功能：**  
  - ssh-keygen 现在可以设置或清除 FIDO 私钥标志（touch-required、verify-required）。  
  - ssh(1) 现在会优先尝试用户操作较少的 FIDO 密钥。  
  - 新增 `ssh -Z user@host` 模式，用于打印公钥认证密钥及其顺序。

- **潜在不兼容变更：** 便携版 OpenSSH 现在要求 libcrypto 支持 ECC，包括 NISTP521 曲线。

- **错误修复和可移植性：** 包括 ssh-keyscan 中的非阻塞服务器横幅读取、GSSAPI 选项名称的修复、配置 Match 块对 ChannelTimeout/RekeyLimit 的处理，以及重新允许在 Match 块内使用 PAMServiceName。

OpenSSH 10.4 主要亮点：

- **安全修复：** 修复了 sftp/scp 中恶意服务器文件下载路径问题、认证前 GSSAPI 拒绝服务（DoS）、internal-sftp 参数截断，以及主机密钥更改期间客户端的释放后使用问题。

- **新功能：** 实验性的复合后量子签名方案，结合了 ML-DSA 44 和 Ed25519，以及基于 NFA 的模式匹配器，以避免指数级行为。

- **不兼容变更：** `sshd -G` 现在输出混合大小写指令；Linux seccomp 沙箱失败被视为致命错误；认证后重新加密对非密钥交换消息更加严格。

这些说明包含校验和以及向 openssh@openssh.com 报告安全漏洞的说明。

---

## 13. Jolt：使用Chez Scheme实现的Clojure编译器

**原文标题**: Jolt: Clojure compiler implemented with Chez Scheme

**原文链接**: [https://jolt-lang.github.io](https://jolt-lang.github.io)

Jolt 是一个基于 Chez Scheme 的 Clojure 编译器和运行时。它读取 Clojure 源代码，将其编译为与宿主无关的中间表示（IR），并生成 Scheme，可在 Chez 上原生运行，或通过 Gambit 编译为 JavaScript。该编译器是自托管的：用 Clojure 编写并能编译自身。

主要特性包括通过 `jolt build` 生成独立二进制文件，它会将运行时、标准库、应用和依赖项 AOT 编译为单个可执行文件，无需 Chez、JVM 或源代码。它支持 OS 线程上的 `future`、`promise`、`agent` 和 `pmap` 实现真正的并发，以及 `core.async` 通道和 go 块。数值层级包括精确整数、大整数、精确有理数和双精度浮点数；`=` 区分类别，`==` 进行值等价比较。持久化数据结构采用与 Clojure 兼容的语义：32 路 trie 向量、cons 列表、HAMT 映射/集合以及瞬态。它还支持惰性序列、转换器、解构、多重方法、协议/记录、元数据、命名空间、运行时求值和完整的读取器。

快速入门选项包括 Homebrew 安装、安装脚本，或直接从克隆的仓库中使用 Chez Scheme 运行——无需构建步骤。用法涵盖：`-e` 用于表达式，`run` 用于项目，`-M:test` 用于别名，`build` 用于生成二进制文件，以及用于实时开发的 nREPL 服务器。

与 JVM Clojure 的主要区别：没有通用的 Java 互操作、反射、gen-class 或 proxy（仅提供 `java.*` 的兼容子集以及一个 C FFI）；没有 BigDecimal；正则表达式使用 irregex 而不是 `java.util.regex`，因此大多数常见模式可以工作，但一些 Java 特有的正则表达式功能有所不同。

---

## 14. OpenAI伦理负责人入职不到一年即离职

**原文标题**: OpenAI’s head of ethics leaves less than a year after joining

**原文链接**: [https://www.ft.com/content/e49dfb75-f841-4466-a577-f7aaff8779a0](https://www.ft.com/content/e49dfb75-f841-4466-a577-f7aaff8779a0)

无法访问文章链接。

---

## 15. Show HN: Git-knife——像编辑电子表格一样编辑提交信息、作者和日期

**原文标题**: Show HN: Git-knife – edit commit messages, authors, and dates like a spreadsheet

**原文链接**: [https://github.com/TheRealYT/git-knife](https://github.com/TheRealYT/git-knife)

git-knife 是一款桌面 GUI 工具，用于在类似电子表格的界面中编辑 Git 提交元数据——提交信息、作者/提交者姓名/邮箱、作者日期和提交者日期。它填补了一个空白：成熟的 GUI 工具（GitKraken、Sublime Merge、Fork、lazygit）可以处理重新措辞和重新排序，但将日期和作者身份视为不可变；而 git-filter-repo 等 CLI 工具可以重写它们，但缺乏 GUI。

该应用调用系统 Git CLI，并使用 `git commit-tree` 重建提交，复用每个提交的原始树，从而可证明文件内容未被更改。它支持跨文本字段的批量查找和替换（字面量或正则表达式），预览每项更改，并在每次重写前创建自动备份引用（`refs/knife-backup/...`），支持一键恢复。当重写已推送的历史时，它会发出警告，并建议使用 `git push --force-with-lease`。在 MVP 中，合并提交被锁定；重新排序/压缩/丢弃功能已在规划中。

通过单独的 notes 引用（`refs/notes/git-knife`）将透明的签名注释附加到重写后的 tip 提交上——可见、不隐藏、可切换。

该应用使用 Tauri 构建（Rust 后端，Node.js 前端）。

安全特性：重写过程对旧 tip 使用比较并交换（compare-and-swap）操作，绝不强制删除，并在任何更改前存储备份引用。底层引擎通过一个 shell 脚本验证，该脚本重现 commit-tree 流程并断言内容差异为空。

---

## 16. Manus将恢复为独立公司运营

**原文标题**: Manus will return to operating as an independent company

**原文链接**: [https://manus.im/blog/a-note-to-our-users](https://manus.im/blog/a-note-to-our-users)

Manus 即将恢复为独立公司运营。由于 Manus 与 Meta 分拆，为遵守特定司法辖区的监管要求，部分用户于 2025 年 12 月 29 日（Meta 收购 Manus 之日）当天或之后产生的数据，将在 2026 年 8 月 23 日 08:00 至 8 月 24 日期间（SGT）被删除。

受影响用户需注意以下时间节点：
- 备份窗口：即日起至 2026 年 8 月 23 日 07:59（SGT），可使用备份工具多次备份；备份后如有新数据请再次备份。
- 无法访问时段：2026 年 8 月 23 日至 8 月 24 日（SGT），预计约两天。
- 数据恢复：2026 年 8 月 25 日 08:00（SGT）起可恢复备份数据并正常使用。

通知方式：Manus 将通过应用内通知和电子邮件告知受影响用户；使用 Apple ID 或 Facebook 注册的用户需留意应用内通知。用户也可在帮助中心查询账户是否受影响。备份期间（8 月 11 日至 8 月 23 日）不会向受影响用户收费，恢复数据后还将提供回归奖励。

未受影响用户无需采取任何行动，可正常使用服务。

官方强调：此举措并非数据泄露或安全事件，而是独立运营过渡和监管合规所需。独立后用户数据存储在美国和新加坡。Manus 表示将在整个过程中提供支持，并继续迭代产品。

---

## 17. 你的手机是你拿过的最精密的机器。让我们把它拆开。

**原文标题**: Your phone is the most intricate machine you've ever held. Let's take it apart.

**原文链接**: [https://everythingmachine.io/phone/](https://everythingmachine.io/phone/)

手机屏幕表面涂有一层疏油性氟聚合物，这是一种纳米级的防粘涂层，能让指尖顺滑滑动而非滞涩。这项涂层技术于2009年随iPhone 3GS首次引入，其原理类似于不粘锅：碳链中的氢原子被氟原子取代，形成极其稳定的碳氟键。这些化学键赋予表面极低的表面能，因此油性指纹易于擦拭，拇指滑动时也有顺滑感。然而，这层涂层仅有一个分子厚，会随着每次触摸逐渐磨损。这也解释了为什么手机屏幕朝下放在略有坡度的表面时，往往会自行滑落。

---

## 18. 随着AI吞噬网络，互联网的集体记忆正在消失

**原文标题**: As AI eats the web, the internet’s collective memory is disappearing

**原文链接**: [https://thewalrus.ca/google-search-is-dying/](https://thewalrus.ca/google-search-is-dying/)

这篇文章认为，互联网的集体记忆正在崩溃，因为AI搜索工具和商业平台正在削弱网络作为可靠档案库的作用。谷歌的AI摘要现在会编造基本事实，例如错误的日落时间，这表明占主导地位的搜索系统越来越掩盖原始来源，而不是引导用户找到它们。此外，链接失效、网站被删除以及AI生成的内容污染搜索结果，使问题更加严重。

数字擦除的关键例子包括：迪士尼在关闭FiveThirtyEight后删除了其全部存档；维基百科的流量减少，因为AI系统抓取其内容却不将用户引导回该网站；互联网档案馆同时面临网络攻击和诉讼，其保存网络的能力受到限制。像Instagram快拍这样的短暂格式也意味着许多现代通信从未被存档。

文章呼吁将信息视为公共基础设施，而不是由外国科技巨头拥有的免费服务。文章强调了欧洲的反击：法国使用Qwant和Tchap，德国一家法院裁定谷歌可因AI生成的虚假陈述承担责任。在加拿大，作者敦促投资于公共利益的数字系统，类似于过去的CANARIE和SchoolNet等举措。核心信息是，保存和获取文化记忆必须成为一项主权公共优先事项，而不是留给志愿精神或逐利平台。

---

## 19. Apple Silicon 与 macOS 虚拟机：借助 llama.cpp 加速 LLM 推理

**原文标题**: Apple Silicon and macOS VMs: Faster LLM Inference with llama.cpp

**原文链接**: [https://github.com/trycua/cua/blob/main/blog/gpu-passthrough-macos-vms.md](https://github.com/trycua/cua/blob/main/blog/gpu-passthrough-macos-vms.md)

来自 Lume/Cua 的一份研究发布介绍了一种方法，可在 Apple Silicon 上的 macOS 虚拟机中大幅加速 LLM 推理。使用 Apple Virtualization.framework 的 macOS 虚拟机会向客户机应用报告保守的 Metal 能力配置文件，导致 llama.cpp 选择较慢的 GPU 内核。作者构建了一个小型、进程作用域内的兼容性垫片，拦截 Metal 能力查询并修改两个答案：报告支持 Apple family 9（此前为 family 5），并将最大线程组内存从 32 KB 提升到 64 KB。这使得 llama.cpp 在仍使用半虚拟化 GPU 的同时，能够启用 SIMD 组矩阵、SIMD 组归约和 bfloat16 路径。

在搭载 Tahoe 客户机的 M1 Ultra 上，TinyLlama 1.1B 的提示处理从 432 tok/s 跃升至 4,787 tok/s（提升 11.08 倍，达到裸机的 98%），令牌生成从 12.63 tok/s 提升到 206.60 tok/s（提升 16.36 倍，达到宿主机的 72%）。Gemma 4 12B 的提示处理提升 7.20 倍（515.76 tok/s），生成提升 14.54 倍（49.67 tok/s）。Muse Glimmer 30B 的提示处理提升 7.55 倍，生成提升 8.87 倍。MLX-LM 性能没有变化。该发布包含源代码、构建脚本和原始日志。

该垫片对版本敏感、按进程生效，并且仅限于经过测试的配置。它需要在宿主机上设置一项偏好设置，并将 dylib 注入目标进程。作者邀请在其他芯片和 macOS 版本上进行测试，并澄清这不是物理 GPU 直通，而是解锁 Apple 现有的虚拟化 GPU 路径。

---

## 20. 英伟达的风险生意

**原文标题**: Nvidia's Risky Business

**原文链接**: [https://stratechery.com/2026/nvidias-risky-business/](https://stratechery.com/2026/nvidias-risky-business/)

英伟达的冒险之举将杰伊·库克19世纪的铁路融资与当今的人工智能基础设施热潮进行了历史类比。库克激进地销售债券为北太平洋铁路提供资金，但当1873年信贷收紧时，他的破产引发了恐慌和萧条。文章借用这一类比来审视当前科技巨头在人工智能算力上的巨额支出。

要点如下：

- 大型科技公司已从用自由现金流为人工智能基础设施融资转向大量举债。2025年发行1080亿美元债务后，甲骨文、Meta、Alphabet和亚马逊到2026年7月又筹集了1940亿美元，且利差不断扩大，近期发行需求疲软。
- 谷歌于6月打破发债趋势，通过股权融资筹集了850亿美元，其中包括伯克希尔·哈撒韦100亿美元的投资。这被解读为一个信号：谷歌预期需求巨大，并愿意积极为算力建设提供资金。
- 谷歌DeepMind处境艰难：首席执行官德米斯·哈萨比斯退居二线，其他领导者相继离开，SemiAnalysis宣称由于官僚主义和战略保守，谷歌已不再是前沿实验室。然而，这对谷歌的云业务来说可能是个好消息。
- 谷歌云正转向基础设施领域，向Anthropic等竞争对手出售TPU。超过20%的TPU出货量流向Anthropic，后者也在自建数据中心。谷歌首席执行官认为这种平台策略并非零和博弈，且利润丰厚。
- 文章总结道，即使谷歌在前沿人工智能模型竞赛中落败，它仍可主导人工智能基础设施。由于TPU比英伟达GPU更便宜，且谷歌愿意共享算力，其基础设施押注以及与伯克希尔的合作或许会被证明是明智之举。

---

## 21. Launch HN: Keet (YC S24) – 一个用于创建任何主题视频课程的应用

**原文标题**: Launch HN: Keet (YC S24) – An app to create video courses on anything

**原文链接**: [https://www.trykeet.com/](https://www.trykeet.com/)

**Keet**（YC S24）是一款新的iOS应用，能够针对任何主题生成个性化的、多邻国风格的视频课程。它作为一个个人学习平台，用户可以在上面创建结构化的互动课程，涵盖从拓扑学和量子物理到旧金山历史和现代火箭等主题。

**主要特点：**
- **讲解与游戏：** 每门课程分解为包含短视频讲解的课程，随后是互动测验和游戏（选择题、滑动、排序、连线）来测试知识。
- **结构化学习路径：** 课程按模块和课程组织，让用户能够以小块内容学习，并逐步建立对主题的真正理解。

**常见问题摘要：**
- **获取方式：** Keet目前处于内测阶段；用户可以下载iOS应用加入候补名单。
- **区别：** 与传统学习应用不同，Keet允许用户针对自己选择的任何主题生成带有结构化学习路径的定制互动课程。
- **费用：** 新用户可获得两门免费课程。之后，他们需要购买积分来生成更多课程。
- **自定义：** 用户可以通过设置所需的深度、复杂度和解说风格来定制课程。

由YCombinator支持，Keet面向那些希望快速、互动地学习任何所选主题的终身学习者。

---

## 22. 提升文本设计应知的CSS属性

**原文标题**: CSS properties you should know for better text designs

**原文链接**: [https://master.dev/blog/typographic-css-tricks/](https://master.dev/blog/typographic-css-tricks/)

这篇文章介绍了五个能够改善网页排版并增加其趣味性的CSS属性。

1. **`background-clip`** – 将 `background-clip: text` 与背景图片或渐变以及 `color: transparent` 结合使用，可以让背景填充字形，从而创建出引人注目的基于图片的文本效果。

2. **`vertical-align` / `align-content`** – `vertical-align` 用于在一行文本中对齐行内元素（如 `<span>`、`<img>` 或 `<input>`）。它不会使文本在容器内垂直居中。若要在块级盒子上垂直居中文本，可以使用 `align-content`，无需 Grid 或 Flexbox。

3. **`box-decoration-mode`** – 当文本跨行断开时，`box-decoration-break: clone` 会将边框、内边距、阴影和圆角分别应用于每个行片段，使每一处断行边缘都能获得统一一致的样式。

4. **`letter-spacing`** – 该属性控制每个字形周围的空间，接受正值和负值。它还可以通过动画来创建文字显现效果，方法是扩大间距并改变颜色。

5. **`text-combine-upright`** – 与垂直书写模式配合使用时，该属性可以让短的水平文本（如数字、日期或缩写）以紧凑的直立块状形式显示在垂直文本中。

文章总结道，这五个属性为更细致、更具创意的 CSS 排版设计提供了一个坚实的起点。

---

## 23. H3-metal – 适用于 Apple Silicon 的原生 MiniMax-H3 推理

**原文标题**: H3-metal – Native MiniMax-H3 inference for Apple Silicon

**原文链接**: [https://github.com/antirez/h3.c](https://github.com/antirez/h3.c)

h3-metal 是 MiniMax-H3 推理的原生 Metal 实现，专为 Apple Silicon（目前为 M3 Max/M5 Max）优化。它支持提示词到视频/音频、首帧/末帧条件化，以及有序的 Ref2VA 图像/视频/音频参考。CLI 提供 `--info`、交互式会话，以及用于配置档、分辨率、帧数、步数、层数、复用、令牌缩减、内部画布、SSD 流式传输和 int8 行 FC2 的选项标志。

一种均衡的快速配置使用 22 帧、24 fps、512×512 分辨率、20 步去噪、50 层中的 45 层，以及 `--reuse 2`，可生成约 0.92 秒的视频。四步运行用于非常短的迭代。`--ssd-streaming` 仅保留两个 DiT 块驻留内存，在 512×512 下将 DiT 存储从约 36.5 GiB 减少到约 2.0 GiB，但代价是前向传播速度较慢。质量优先设置则恢复全部 50 层、50 步和复用 1。

控制表总结了：步数（实际去噪次数）、复用（新的 DiT 评估次数）、层数（激活的 transformer 块数）、核心复用、令牌缩减以及内部渲染尺寸。分辨率限制要求宽/高为 32 的倍数，其中 512×512 最安全，768×768 已验证质量接近，以及 768p 级限制如 1344×768。`--seconds` 按 24 fps 转换，并四舍五入到合法的 H3 时间形状。

提示词指导建议采用类似 Context-IR 的描述：主体、动作、场景、镜头、光照/风格和声音。`--show` 提供终端预览；`--frames-dir` 写入 PPM 帧；`--profile` 报告时间、内存和调度次数。支持首帧/末帧锚点以及 Ref2VA 参考，交互式会话中可使用 `!first`、`!last`、`!ref-image` 和 `!refs` 等命令。

---

## 24. 我通过将GitHub Copilot置于中间人代理后面所学到的

**原文标题**: What I learned by putting GitHub Copilot behind a MitM proxy

**原文链接**: [https://www.lighthousenewsletter.com/p/i-put-github-copilot-behind-a-mitm](https://www.lighthousenewsletter.com/p/i-put-github-copilot-behind-a-mitm)

作者将VS Code中的GitHub Copilot置于mitmproxy（中间人代理）之后，对其网络流量进行逆向工程，以理解其底层工作原理。由于大多数AI桌面应用都基于Electron构建，这些发现很可能适用于同类工具。

关键发现：

- **启动行为：** 在用户输入任何内容之前，Copilot就会发起身份验证/OAuth、权限、配置/策略、模型发现以及最近仓库的请求。

- **模型路由：** 在“自动”模式下，Copilot首先将提示词发送到`/models/session/intent`端点，以分类意图（代码生成、调试、推理、工具使用），然后据此选择模型。

- **通过内联补全导致上下文泄露：** 作者在一个`.env`文件中放置了一个假密钥（且已对`.env`禁用Copilot），然后在无关的`pyproject.toml`中键入内容。补全请求仍然将`.env`的内容包含在上下文中，因为该请求是由另一个文件中的按键触发的。对特定文件类型禁用Copilot，并不能阻止其内容在其他文件触发时被包含。

- **Chronicle / session-store.db：** Copilot内置了一个名为`session_store_sql`的工具，用于查询一个本地SQLite数据库（`session-store.db`），其中包含过去的提示词、响应、会话、分支和仓库。模型可以执行只读SQL查询来回忆用户之前处理的内容，并通过反复试错动态发现数据库模式。

更广泛的结论：AI编程助手正在为你的工作构建一种持久、可查询的记忆。上下文——你的代码、历史和关注点——正成为产品本身，并且越来越多地存在于模型可以按需访问的本地数据库中。

---

## 25. 动物摄影档案揭示18000个物种且持续增加中

**原文标题**: Archive of Animal Photography Reveals 18,000 Species and Counting

**原文链接**: [https://www.smithsonianmag.com/science-nature/this-amazing-archive-of-animal-photography-reveals-18000-species-and-counting-heres-how-joel-sartore-built-his-photo-ark-180989282/](https://www.smithsonianmag.com/science-nature/this-amazing-archive-of-animal-photography-reveals-18000-species-and-counting-heres-how-joel-sartore-built-his-photo-ark-180989282/)

乔尔·萨托尔的国家地理“影像方舟”项目已拍摄了其第18000个物种：极度濒危的红色手鱼。该项目始于2006年，当时萨托尔在妻子接受癌症治疗期间，在内布拉斯加州一家动物园拍摄了一只裸鼹鼠。那次经历让他对生命的脆弱有了新的认识，激发了他用影像记录地球动物多样性的想法。

萨托尔拍摄的对象是人工饲养下的动物——来自动物园、水族馆、保护区和实验室——他使用纯黑或纯白背景，让每个动物独立呈现。他的目标是展示所有肉眼可见的物种，从昆虫到哺乳动物，并在尚有时机之时激发公众对野生动物保护的关注。该档案库收录了野外已灭绝的物种，甚至包括一只保存完好的袋狼标本。

该项目还支持实地保护工作。在佛罗里达州的松岩地，影像方舟的资金帮助人们关注到像迈阿密虎甲虫这样被忽视的昆虫。在厄瓜多尔，该项目凸显了两栖动物的损失，包括重新发现的长鼻丑角蛙，其皮肤可能具有生物医学用途。全球近41%的两栖动物物种正面临威胁。

现年64岁的萨托尔正在培养他的儿子科尔接手该项目。萨托尔计划拍摄全球人工饲养下约25000个物种。他希望观众看到他的影像后，能认识到这些生命的存在，并做出选择去拯救它们。

---

## 26. Go是AI辅助软件工程的理想语言

**原文标题**: Go is an ideal language for AI-assisted software engineering

**原文链接**: [https://developers.googleblog.com/why-go-is-an-ideal-language-for-ai-assisted-software-engineering/](https://developers.googleblog.com/why-go-is-an-ideal-language-for-ai-assisted-software-engineering/)

本文认为，Go 语言非常适合 AI 辅助的软件工程时代。随着 AI 生成大量代码，开发者的主要角色从编写代码转变为审查、验证和维护代码。Go 正是为这种团队驱动、长期维护的软件工程而设计的。

主要优势包括：

- **完整的平台：** Go 内置了格式化工具、测试框架、依赖管理和安全工具。这种一致性有助于人类团队和 AI 代理生成统一、更高质量的代码。连贯的生态系统也为大语言模型提供了更干净的训练数据。

- **可读性优先于可写性：** Go 强制统一的格式化和简单的语法，使所有代码看起来都一样，无论是人类还是 AI 编写的。可预测性帮助审查者快速发现幻觉、逻辑缺陷或安全漏洞。

- **可靠性：** Go 的静态类型系统能及早捕获错误，其快速编译器允许 AI 代理快速迭代。丰富的标准库减少了对有风险的第三方依赖。Go 的校验和数据库、模块镜像和 `govulncheck` 解决了供应链安全问题。原生测试和模糊测试工具能全面验证代码。

- **可维护性：** Go 的兼容性承诺确保几年前编写的代码仍然可以编译，防止破坏。`gopls` 等工具和 `go fix` 中的现代化工具保持了代码库和生态系统的统一，遏制了架构漂移。内置的性能分析、跟踪和性能分析引导优化支持闭环性能调优。

总之，Go 对清晰性、平台统一性、可靠性和长期可维护性的重视，使其在 AI 作为队友而人类专注于监督和验证时成为理想的语言。

---

## 27. Show HN：Write.md —— 一款免费、开源、可定制主题的 macOS Markdown 编辑器

**原文标题**: Show HN: Write.md – A free, open-source, themeable Markdown editor for macOS

**原文链接**: [https://writemd.app/](https://writemd.app/)

Write.md是一款面向macOS的免费开源Markdown编辑器，曾在Hacker News上展示。其核心理念是“写作房间”——编辑器允许用户改变文本周围的视觉和氛围环境，而文档本身始终保持纯Markdown格式。这实现了内容与呈现的分离，让写作者可以根据心情或需求（例如安静专注或深夜氛围）定制空间，同时不影响文件的便携性。该编辑器强调主题化和灵活性，定位为一款在保持写作格式简洁的同时塑造周边体验的工具。

---

## 28. 伦敦地铁开始扫描乘客面部

**原文标题**: London Underground begins scanning passengers' faces

**原文链接**: [https://www.btp.police.uk/news/btp/news/england/btp-expands-live-facial-recognition-lfr-trial-into-london-underground-stations/](https://www.btp.police.uk/news/btp/news/england/btp-expands-live-facial-recognition-lfr-trial-into-london-underground-stations/)

英国交通警察（BTP）已将其实时面部识别（LFR）试点扩展至伦敦地铁车站。该技术实时扫描乘客面部，并与警方通缉人员名单（例如因严重犯罪或未执行的逮捕令而被通缉者）进行比对。该试点旨在震慑犯罪、定位通缉人员并提升公共安全。BTP强调，该系统不用于大规模监控，也不用于识别普通公众；仅对与目标名单匹配的人员发出警报。部署地点设有清晰标识，警方表示，仅在确认匹配后才会采取行动。隐私倡导者对其准确性、偏见以及公民自由受到侵蚀表示担忧。BTP坚称，已实施严格的保障措施、数据删除机制和独立监督。此次扩展是在此前交通网络其他地区成功试点之后进行的。该文章是一份警方新闻稿，概述了LFR试点的运营理由、法律依据及持续评估情况。

---

## 29. Bluesky的活跃用户群正在萎缩，因其关注点已扩展至应用之外

**原文标题**: Bluesky's active user base is shrinking as its focus expands beyond the app

**原文链接**: [https://techcrunch.com/2026/08/11/blueskys-active-user-base-is-shrinking-as-its-focus-expands-beyond-the-app/](https://techcrunch.com/2026/08/11/blueskys-active-user-base-is-shrinking-as-its-focus-expands-beyond-the-app/)

Bluesky在选举后初期的增长势头已明显消退。据Similarweb数据显示，其移动应用在2026年6月的全球月活跃用户数为1040万，同比下降27.2%，而7月的日活跃用户数下降25.6%，降至约300万。这相比2024年末的月活跃用户峰值，流失了超过一半。然而，留存下来的社区参与度仍然较高，用户粘性率约为29%，与Threads相近。

据报道，新任CEO Toni Schneider并不太关注Bluesky应用本身，而是优先发展底层AT协议，以驱动不断增长的社会应用和服务生态系统。BlackSky、Eurosky以及专注视频的Skylight等项目正逐渐获得关注。Bluesky还推出了一款名为Attie的AI研究工具，并正在开发隐私数据支持功能，这可能会吸引对私密社交而非公共讨论感兴趣的用户。

用户流失似乎并非因为用户回归X平台。X的移动端月活跃用户在6月同比下降约3%，7月日活跃用户下降7%至1.237亿。相反，值得关注的是Threads：其7月日活跃用户同比增长21.3%至1.47亿，网页访问量飙升112%。Bluesky报告称其注册用户近4600万，但并未披露活跃使用数据。文章认为，Bluesky将战略重心转向自身应用之外的领域可能是有意为之，但其用户参与度的下降仍引发了对其长期留存能力的质疑。

---

## 30. 日本经济面临的权衡抉择

**原文标题**: The Tradeoffs Facing Japan's Economy

**原文链接**: [https://www.emergingtrajectories.com/lh/japan-economy-tradeoffs/](https://www.emergingtrajectories.com/lh/japan-economy-tradeoffs/)

日本经济在日元疲软、高额债务和通胀引发的消费者困境中面临严峻权衡。在债务与GDP之比超过200%的情况下，首相高市早苗领导的政府必须在多重压力之间取得平衡。

**主要挑战：**通胀率徘徊在1.7%，但食品价格上涨了3.2%（鱼类/海产品上涨6.9%）。能源补贴掩盖了燃料成本。高市的支持率从7月的69%降至57%，71%的受访者不认可她的生活成本应对策略。

**权衡一——利率：**日本央行将利率维持在1%。提高利率可以抑制通胀并阻止日元套利交易，但会推高消费者的借贷成本并损害债券持有人的利益。日本四大寿险公司已在2026年第二季度因利率上升损失约960亿美元。

**权衡二——消费者支持与债务：**政府计划将食品税从8%降至1%（耗资约320亿美元），并投入数十亿美元用于燃料补贴。但7800亿美元预算中已有10.7%用于支付债务利息，而这些成本预计将上升50%。一些人警告可能出现“利兹·特拉斯式”的债券市场危机时刻。

**能源与国防：**日本83.5%的能源依赖进口，这加剧了贸易逆差并削弱了日元。政府正在重启核电（目标：到2040年核电占比20%）并扩大国防出口（包括“爱国者”导弹），以抵消贸易失衡。

**长期规划：**一项面向2040年的2.3万亿美元公私合作投资战略，涵盖17个领域（人工智能、半导体、能源、国防），旨在实现经济增长超越债务增长。但融资将需要更多借贷，政治可持续性也存在不确定性。

美日货币干预只是短期缓解。风险依然存在：高市支持率的下降、债券抛售潮，或伊朗和乌克兰战事的长期化。文章总结道，日本正处于十字路口，雄心勃勃的长期愿景正受到紧迫现实约束的威胁。

---

## 31. Show HN: Needle2：14MB智能体大语言模型，适用于手机、可穿戴设备、智能家居和机器人

**原文标题**: Show HN: Needle2: 14MB agentic LLM for phones, wearables, smart home and robots

**原文链接**: [https://cactuscompute.com/needle](https://cactuscompute.com/needle)

Needle 2是一个拥有4500万参数的代理型语言模型，被压缩至14MB，面向手机、可穿戴设备、智能家居中枢和机器人等低成本边缘设备。它可在无GPU/NPU的硬件上运行，会话内存最低仅需28MB，在树莓派5上可实现800+ tok/s的预填充速度和500+ tok/s的解码速度。

该模型专攻函数调用和结构化信息提取，而非通用对话。它能将自然语言指令映射为类型化工具调用，生成语法合法的JSON。模型还会返回置信度分数，以便在必要时将离题查询升级至云端模型处理。Needle 2采用从头训练的"Cactus Quants"2比特量化技术，避免了事后压缩带来的质量损失。其架构融合了固定沃尔什-阿达玛变换、哈希n元语法"印迹"记忆、多通道残差流以及256令牌滑动KV缓存，将内存占用控制在有限范围内并最大限度降低计算量——每令牌约70 MFLOPs，而同类模型则需要数百MFLOPs。

该模型在1150亿令牌的预训练数据基础上，额外使用380亿令牌的针对设备操作和信息提取的后训练数据进行训练。在Mobile Actions基准上，其严格精确匹配得分为63.7%，接近FunctionGemma（270M）和LFM2.5（230M）等更大模型，同时超越了Apple FM。它在Seal-Tools上展现出强大的泛化能力，在BFCL v4上也取得了有竞争力的成绩，但在分布外的Java/JavaScript类别上表现较弱。Needle以单个C++二进制文件形式交付，内置针对ARM、x86和WebAssembly的自调优内核。它已达到生产就绪状态，目前已被Pebble Index 01应用本地用于离线语音操作。

---

## 32. Halcyon Video – 为你的媒体服务器打造的3D视频商店

**原文标题**: Halcyon Video – a 3D video store for your media server

**原文链接**: [https://github.com/halcyon-video/halcyon-video](https://github.com/halcyon-video/halcyon-video)

Halcyon Video是一个3D视频店面，可将您的Jellyfin媒体库重建为一座可漫步其中的1990年代租片店。每部影片都会变成货架上的VHS或DVD盒；您可以浏览过道、翻看盒子背面查看元数据、通过店内CRT终端搜索、用软体购物袋“租”录像带，并在虚拟客厅中观看电影。它基于Vite、TypeScript和three.js构建，可7×24小时运行于HTPC上，闲置时CPU/GPU占用率近乎为零。提供包含2,000部影片的合成媒体库在线演示。

这家商店高度可定制：您可以在特定时代的主题（1990、1993、2000、2010，以及“Night Owl Video”）之间切换，还可调整光照条件（基于实测HDR天空的白天/日落/夜晚）、楼层平面图和媒体格式。品牌重塑只需放入一个Logo——颜色、标牌和封套设计皆为数据而非代码。

集成功能包括Jellyfin（必需）、用于游戏部门的RomM（支持按平台分类的盒子和启动器），以及用于探索发现的Jellyseerr：收藏缺口、热门影片和店员推荐都会以可请求的盒子形式出现。重复的质量版本会合并为一个盒子，智能推荐店员会根据您的媒体库给出有据可依的推荐理由。

2.5D HTML/CSS模式可在Raspberry Pi上运行，Remote Play通过WebRTC将实时店面串流到手机。播放支持直连播放并辅以HLS后备方案、mpv磁盘直读播放以及Jellyfin播放报告。管理终端提供叙事内系统控制，可选的“租赁模式”会强制执行90年代初的归还期限规则。整体体验旨在让人感觉像一家真正的商店，而不是套了皮肤的菜单。

---

## 33. 小鸡 Scheme 6.0

**原文标题**: Chicken Scheme 6.0

**原文链接**: [https://code.call-cc.org/releases/6.0.0/NEWS](https://code.call-cc.org/releases/6.0.0/NEWS)

这篇文章是一组 **CHICKEN Scheme** 的发布说明，涵盖 6.0.0、5.4.0 和 5.3.0 版本。

**6.0.0 亮点：**
- 核心全面支持所有 R7RS small 语言模块。
- 内部字符串现在采用 UTF-8，使系统完全支持 Unicode。
- Blob 被与 R7RS 兼容的字节向量取代；移除了 `#${...}` 语法。
- 文件 I/O 现在支持编码（默认 UTF-8，Latin-1）。
- 进程 API 返回进程对象而非 PID；文件锁定得到简化。
- 多个原语移至 R7RS 模块；`define-record-type` 现在具有生成性。
- FFI 允许直接传递字符串/符号以及复数/C 结构体。
- 工具变更：“feathers” 调试器移至 egg；`csc` 以不同方式处理带空格的工具路径。
- 编译器新增闭包重用/共享优化。
- 构建系统现在使用 `configure` 脚本；放弃旧的 mingw 构建，支持 “zig cc”。

**5.4.0：**
- 安全修复 CVE-2022-45145（egg 元数据命令注入）。
- 移除运行时选项 `-:b`；选项处理得到强化。
- 新增线程安全的信号 API、终结器、弱对及其他库增补。

**5.3.0：**
- 修复了进程上下文设置器、irregex 正则边界情况以及类型声明的问题。
- 弃用 `current-milliseconds`，改用 `current-process-milliseconds`。
- 默认文件打开模式改为 0666。

这些说明强调了 R7RS 合规性、Unicode、字节向量迁移、API 现代化、安全强化以及构建/工具链改进。

---

## 34. 不要抬头

**原文标题**: Don't Look Up

**原文链接**: [https://www.wheresyoured.at/dont-look-up/](https://www.wheresyoured.at/dont-look-up/)

一篇“别抬头”式的文章认为，AI繁荣是一个由两家不盈利公司——OpenAI和Anthropic——支撑起来的脆弱泡沫。大型银行分析师（富国银行、巴克莱、瑞银）估计，微软、谷歌和亚马逊AI收入的70%以上来自这两个实验室。它们的云增长越来越依赖于Anthropic/OpenAI的算力支出，而这种支出在没有大规模外部资金注入的情况下是不可持续的。

要点：
- OpenAI和Anthropic预计2026年将在算力上花费约1000亿美元，仅2026年上半年就需要筹集2170亿美元。
- 为了维持超大规模云厂商的增长，它们2027年可能需要花费2000亿美元以上用于云算力，这需要2500亿至3000亿美元的资金。
- 分析师估计，AI将推动云收入的很大一部分：Azure的33%（2027财年）、谷歌云的48%（2027年）、AWS增长的60%。
- 对AI算力的大部分需求集中在这两个实验室；其他客户微不足道。即使是微软非OpenAI的AI收入也仅有低两位数亿美元级别。
- 超大规模云厂商正在花费数万亿美元的资本支出并背负巨额债务（今年2500亿美元，明年4000亿美元）来建设产能，但终端用户的投资回报率令人质疑。
- 作者驳斥了各种反方观点：增长不够，积压订单不能证明需求，而且这与互联网泡沫不同。
- 核心风险：最赚钱的AI层依赖于最不赚钱的层不断筹集资金。当这种情况停止时，整个链条将面临崩溃。

---

## 35. 为了拯救C，我们必须拯救ABI（2022）

**原文标题**: To save C, we must save ABI (2022)

**原文链接**: [https://thephd.dev/to-save-c-we-must-save-abi-fixing-c-function-abi](https://thephd.dev/to-save-c-we-must-save-abi-fixing-c-function-abi)

文章认为，虽然ABI（应用二进制接口）稳定性常常是阻碍创新的约束条件，但C语言的ABI必须加以保留，以避免灾难性的系统崩溃。文章解释了ABI是支配函数和结构体在机器码中如何表示的低层契约，包括寄存器使用、参数传递和内存布局。

作者通过一个具体示例说明，将函数参数从`long long`改为`__int128_t`会改变汇编代码：64位版本只传递一个寄存器（`rdi`），而128位版本使用两个寄存器（`rdi`和`rsi`）。这展示了编译器如何在源码层面不可见的情况下构建二进制级别的预期。

核心问题在于：C语言不像C++那样对函数名进行修饰（name mangling），因此链接器只关心符号名称，而不关心类型。结果，不匹配的声明和定义可以静默地链接成功，然后在运行时失败。作者通过声明`long long do_stuff(long long)`但定义`__int128_t do_stuff(__int128_t)`来演示这一点；链接器接受了这一代码，而程序行为变得不可预测。

即使有正确的头文件，也无法完全防止ABI破坏，因为共享库暴露的符号，其实际实现可能与应用程序编译时所依据的头文件不同。在*nix系统上，软件包维护者必须确保整个发行版的二进制兼容性；ABI不匹配可能导致段错误、内存损坏，或远离真正原因的难以察觉的故障。

文章总结道，尽管ABI稳定性有其弊端——例如迫使实现者保留过时的类型，或将新功能推迟数年——但维护C语言的ABI至关重要。若不保留ABI，就无法保护C语言本身免于分裂为互不兼容的生态系统。

---

## 36. LFM2.5 2.6B模型可与4倍大的模型相媲美

**原文标题**: LFM2.5 2.6B model competitive with 4x larger models

**原文链接**: [https://huggingface.co/LiquidAI/LFM2.5-2.6B](https://huggingface.co/LiquidAI/LFM2.5-2.6B)

文章重点介绍了LFM2.5，这是一个拥有26亿参数的语言模型，其性能与约为其四倍大小（约100亿参数）的模型相当。该合集包含LFM2.5模型的基础版和后期训练版本，共计16项。该合集于七天前更新，已获得195个点赞，显示出社区关注度。总体而言，关键信息在于该模型相对于其更大规模的同类模型所展现出的出色效率与强劲性能。

---

## 37. Show HN：滚动浏览所有43252003274489856000个魔方状态

**原文标题**: Show HN: Scroll through all 43252003274489856000 Rubik's Cube states

**原文链接**: [https://everycube.alen.is/](https://everycube.alen.is/)

这篇文章介绍了一个交互式项目，让用户可以“滚动浏览”魔方的每一种可能状态——正好有 **43,252,003,274,489,856,000**（约4.3×10¹⁹）种配置。每种状态都以排列的形式呈现，该工具为它们建立索引，使用户能够浏览这个庞大的序列。进度以大规模增量方式显示（1.1×10¹⁹、2.2×10¹⁹、3.2×10¹⁹ 等），凸显了魔方巨大的组合规模。项目还收录了 **Superflip**（超级翻转）和 **Checkerboard**（棋盘格）等著名魔方状态作为参照点。总的来说，这是对魔方排列范围的一次创造性展示。

---

## 38. 克劳德如何标记AI生成的内容

**原文标题**: How Claude marks AI-generated content

**原文链接**: [https://support.claude.com/en/articles/16266773-how-claude-marks-ai-generated-content](https://support.claude.com/en/articles/16266773-how-claude-marks-ai-generated-content)

Anthropic已签署《欧盟人工智能法案》第50(2)条关于AI生成内容透明度的《实践守则》，并正在为Claude的输出实施标记。

主要承诺：

- **新模型**：2026年8月2日或之后在欧盟发布的Claude模型将在发布时支持机器可读标记。
- **全球覆盖**：标记适用于全球范围内受支持的Claude模型输出，涵盖Claude平台（API）、Claude、Claude Code、Claude Cowork和Claude Tag，以及通过AWS、Google Cloud和Microsoft Foundry提供的服务（在支持的情况下）。
- **现有模型**：Anthropic正在努力为截止日期之前发布的模型添加标记支持。
- **检测**：Anthropic将帮助用户和第三方检测Claude标记，后续将提供详细文档。

标记的工作原理：

1. **嵌入文本水印**：Claude在生成的文本中嵌入不可见水印。这不会影响含义、质量或可读性，并且在复制、粘贴和某些编辑操作后仍然保留。
2. **签名来源元数据**：对于支持的文件类型（如.svg、.png、.jpg），Claude会附加符合C2PA标准的签名元数据，表明该文件经过Claude处理，并支持篡改检测。

局限性：

- 检测到标记表示内容可能经过Claude处理，但不确认完整的来源；Claude可能不是原始作者，内容之后也可能被修改。
- 没有标记并不证明内容不是AI生成的。标记可能因以下原因缺失：使用旧模型、大量编辑/改写、文本过短、元数据被剥离，或平台/功能不受支持。

Anthropic建议使用Claude构建应用的开发者独立评估自身在《第50条》下的义务，并表示将在获得技术指导后分享有关标记和检测的技术指南。

---

## 39. 偷渡者——抢占头顶任何飞机或卫星的靠窗座位

**原文标题**: Stowaway – Take the window seat on any plane or satellite overhead

**原文链接**: [https://stowaway.live/](https://stowaway.live/)

偷渡者是一款实时网络体验，让你可以“随行”任何当前正从头顶飞过的飞机或卫星。它利用你的实际位置和你上方实时天空，显示视野内真实的飞机与卫星。你可以点击其中一个来追踪其路径，或者“偷渡”上去，仿佛坐在它的虚拟窗边座位，俯瞰下方真实的地形。场景使用JavaScript和WebGL 2实时渲染，因此必须启用这两项才能正常使用该网站。

---

## 40. 法国将禁止主动打来的电话营销

**原文标题**: France to ban unsolicited telemarketing calls

**原文链接**: [https://www.lemonde.fr/en/france/article/2026/08/06/france-to-ban-unsolicited-telemarketing-calls-from-august-11_6756208_7.html](https://www.lemonde.fr/en/france/article/2026/08/06/france-to-ban-unsolicited-telemarketing-calls-from-august-11_6756208_7.html)

无法访问文章链接。

---

