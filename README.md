# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-11.md)

*最后自动更新时间: 2026-08-11 20:43:33*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 2 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 3 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 4 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 5 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 6 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 7 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 8 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 9 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 10 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 11 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 12 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 13 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 14 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 15 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 16 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 17 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 18 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 19 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 20 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 21 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 22 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 23 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 24 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 25 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 26 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 27 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 28 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 29 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 30 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 31 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 32 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 33 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 34 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 35 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 36 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 37 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 38 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 39 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 40 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 41 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 42 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 43 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 44 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 45 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 46 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 47 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 48 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 49 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 50 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 51 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 52 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 53 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 54 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 55 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 56 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 57 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 58 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 59 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 60 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 61 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 62 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 63 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 64 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 65 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 66 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 67 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 68 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 69 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 70 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 71 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 72 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 73 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 74 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 75 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 76 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 77 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 78 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 79 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 80 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 81 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 82 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 83 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 84 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 85 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 86 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 87 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 88 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 89 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 90 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 91 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 92 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 93 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 94 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 95 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 96 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 97 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 98 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 99 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 100 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 101 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 102 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 103 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 104 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 105 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 106 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 107 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 108 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 109 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 110 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 111 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 112 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 113 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 114 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 115 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 116 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 117 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 118 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 119 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 120 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 121 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 122 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 123 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 124 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 125 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 126 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 127 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 128 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 129 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 130 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 131 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 132 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 133 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 134 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 135 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 136 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 137 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 138 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 139 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 140 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 141 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 142 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 143 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 144 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 145 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 146 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 147 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 148 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 149 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 150 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 151 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 152 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 153 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 154 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 155 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 156 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 157 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 158 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 159 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 160 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 161 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 162 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 163 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 164 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 165 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 166 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 167 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 168 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 169 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 170 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 171 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 172 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 173 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 174 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 175 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 176 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 177 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 178 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 179 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 180 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 181 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 182 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 183 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 184 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 185 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 186 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 187 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 188 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 189 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 190 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 191 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 192 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 193 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 194 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 195 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 196 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 197 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 198 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 199 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 200 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 201 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 202 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 203 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 204 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 205 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 206 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 207 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 208 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 209 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 210 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 211 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 212 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 213 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 214 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 215 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 216 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 217 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 218 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 219 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 220 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 221 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 222 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 223 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 224 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 225 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 226 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 227 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 228 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 229 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 230 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 231 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 232 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 233 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 234 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 235 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 236 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 237 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 238 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 239 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 240 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 241 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 242 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 243 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 244 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 245 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 246 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 247 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 248 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 249 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 250 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 251 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 252 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 253 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 254 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 255 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 256 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 257 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 258 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 259 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 260 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 261 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 262 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 263 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 264 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 265 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 266 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 267 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 268 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 269 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 270 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 271 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 272 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 273 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 274 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 275 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 276 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 277 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 278 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 279 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 280 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 281 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 282 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 283 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 284 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 285 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 286 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 287 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 288 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 289 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 290 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 291 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 292 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 293 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 294 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 295 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 296 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 297 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 298 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 299 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 300 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 301 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 302 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 303 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 304 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 305 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 306 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 307 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 308 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 309 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 310 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 311 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 312 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 313 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 314 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 315 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 316 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 317 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 318 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 319 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 320 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 321 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 322 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 323 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 324 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 325 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 326 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 327 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 328 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 329 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 330 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 331 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 332 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 333 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 334 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 335 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 336 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 337 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 338 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 339 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 340 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 341 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 342 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 343 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 344 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 345 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 346 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 347 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 348 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 349 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 350 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 351 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 352 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 353 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 354 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 355 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 356 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 357 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 358 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 359 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 360 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 361 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 362 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 363 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 364 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 365 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 366 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 367 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 368 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 369 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 370 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 371 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 372 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 373 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 374 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 375 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 376 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 377 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 378 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 379 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 380 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 381 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 382 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 383 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 384 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 385 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 386 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 387 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 388 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 389 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 390 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 391 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 392 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 393 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 394 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 395 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 396 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 397 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 398 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 399 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 400 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 401 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 402 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 403 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 404 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 405 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 406 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 407 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 408 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 409 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 410 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 411 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 412 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 413 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 414 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 415 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 416 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 417 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 418 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 419 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 420 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 421 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 422 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 423 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 424 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 425 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 426 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 427 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 428 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 429 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 430 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 431 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 432 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 433 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 434 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 435 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 436 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 437 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 438 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 439 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 440 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 441 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 442 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 443 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 444 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 445 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 446 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 447 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 448 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 449 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 450 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 451 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 452 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 453 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 454 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 455 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 456 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 457 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 458 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 459 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 460 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 461 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 462 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 463 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 464 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 465 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 466 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 467 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 468 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 469 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 470 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 471 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 472 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 473 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 474 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 475 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 476 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 477 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 478 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 479 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 480 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 481 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 482 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 483 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 484 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 485 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 486 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 487 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 488 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 489 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 490 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 491 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 492 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 493 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 494 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 495 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 496 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 497 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 498 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 499 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 500 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 501 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 502 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 503 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 504 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 505 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
