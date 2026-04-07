# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-07.md)

*最后自动更新时间: 2026-04-07 20:36:57*
## 1. Project Glasswing：为人工智能时代保障关键软件安全

**原文标题**: Project Glasswing: Securing critical software for the AI era

**原文链接**: [https://www.anthropic.com/glasswing](https://www.anthropic.com/glasswing)

Project Glasswing是一项由Anthropic主导、联合AWS、微软、谷歌和摩根大通等科技与金融巨头的新网络安全计划。该计划旨在运用先进人工智能，主动保护全球关键软件基础设施。

该计划的启动源于Anthropic未发布的新AI模型Claude Mythos Preview所展现的能力。该模型在主流操作系统、浏览器及其他核心软件中，已展示出能自主发现并利用长期隐藏（部分漏洞存在数十年）的重大软件漏洞的突破性能力。

核心担忧在于，如此强大的人工智能能力将很快扩散，可能导致更频繁、更具破坏性的网络攻击。Project Glasswing计划通过部署Mythos Preview进行主动防御，为防护方争取先机。合作方将使用该模型扫描并加固自身系统及关键开源软件。Anthropic将提供1亿美元使用额度及400万美元捐赠以支持相关行动。

文章列举了Mythos Preview在网络安全与代码基准测试中超越以往模型的实证。早期合作方反馈强调，该AI代表着根本性变革——它极大缩短了漏洞发现与利用的时间窗口，因此必须通过紧急协作来加固基础设施，以防恶意行为者掌握类似能力。

---

## 2. 系统卡片：克劳德神话预览版 [pdf]

**原文标题**: System Card: Claude Mythos Preview [pdf]

**原文链接**: [https://www-cdn.anthropic.com/53566bf5440a10affd749724787c8913a2ae0841.pdf](https://www-cdn.anthropic.com/53566bf5440a10affd749724787c8913a2ae0841.pdf)

根据所提供的PDF内容，这份文档似乎是关于名为“Claude Mythos”模型的**系统卡或技术预览**。

核心内容被大量编辑或损坏，大部分内容显示为乱码、占位符标记（如`<>`）和原始数据流。不过，仍可提取出几个明确的关键点：

*   **主题：** 文档聚焦于“Claude Mythos预览版”，表明其详细介绍了Claude模型某个变体的预发布或评估版本。
*   **目的：** 作为一份系统卡，其主要目标是提供透明度。它可能旨在记录模型的能力、局限、预期用途，以及其开发和评估背后的方法论。
*   **内容提示：** 反复出现的术语和短语表明文档涵盖了标准的AI安全与评估主题，包括：
    *   **模型评估：** 提及“评估”、“分析”和“性能”。
    *   **能力与局限：** 讨论“能力”、“局限”和“预期用途”。
    *   **安全与对齐：** 提及“安全”、“对齐”和“风险”。
    *   **训练与开发：** 关于“训练数据”、“方法论”和“开发过程”的说明。

**总结：** 这是一份关于“Claude Mythos”的技术预览文档。虽然具体细节在PDF损坏的数据流中基本被掩盖，但文档的结构和可见术语证实了它是一份系统卡。其目的是透明地概述模型的设计、功能、评估出的优缺点，以及用于其测试和安全评估的框架，符合负责任的AI披露实践。

---

## 3. 评估Claude Mythos预览版的网络安全能力

**原文标题**: Assessing Claude Mythos Preview's cybersecurity capabilities

**原文链接**: [https://red.anthropic.com/2026/mythos-preview/](https://red.anthropic.com/2026/mythos-preview/)

Anthropic的Claude Mythos预览模型在AI驱动的网络安全能力上实现了重大飞跃。该模型能够自主发现并利用主流操作系统和网页浏览器中的零日漏洞，甚至常能找出存在数十年的隐蔽漏洞。它已展现出串联多个漏洞、构建复杂攻击链的能力，包括突破沙箱隔离和实现权限提升的攻击方案。

这些能力是代码理解与推理能力整体提升的副产品，而非专门安全训练的成果。此前Opus 4.6等模型在自主开发攻击方案方面成功率近乎为零，而Mythos预览版在测试中多次成功构建了可实际运行的攻击程序。

Anthropic承认该技术的双重用途属性，指出虽然如此强大的模型可能短期内让攻击者受益，但他们相信防御方终将通过主动利用AI修复漏洞获得优势。为管控过渡期风险，公司启动了"玻璃翼计划"，初期仅向关键行业合作伙伴和开源开发者提供有限访问权限，以协助加固核心系统。

针对发现的漏洞，公司采用负责任披露流程——截至发布时仍有超过99%的漏洞尚未修复。他们详细说明了评估方法的技术细节，包括使用智能体框架进行漏洞搜索，并承诺在披露流程完成后公布经哈希验证的漏洞详情。

---

## 4. GLM-5.1：迈向长视野任务

**原文标题**: GLM-5.1: Towards Long-Horizon Tasks

**原文链接**: [https://z.ai/blog/glm-5.1](https://z.ai/blog/glm-5.1)

**《GLM-5.1：迈向长程任务》摘要**

本文介绍了智谱AI的新一代大语言模型GLM-5.1，该模型专为擅长处理复杂、长程任务而设计，这些任务需要在多个步骤中进行扩展推理、规划和工具使用。

其核心进展包括：

1.  **增强的长上下文处理能力：** GLM-5.1拥有显著扩展的上下文窗口（高达100万tokens），更重要的是，其在长文本中的“大海捞针”信息检索准确率得到提升。这使得它能够在超长文档或对话中保持连贯性并找到相关信息。

2.  **卓越的工具使用与规划能力：** 一个核心重点是模型能够将高层目标分解为逻辑性的子任务序列，选择正确的工具（如API、代码执行器或搜索引擎），执行它们并整合结果。这使其在复杂数据分析、多步骤研究和流程自动化等任务上表现出色。

3.  **更强的推理与指令遵循能力：** 该模型在测试数学推理、代码生成以及严格遵守复杂详细用户指令的基准上表现出性能提升。

4.  **模型变体：** GLM-5.1系列包含多个版本：
    *   **GLM-5.1-Flash：** 一个高效、轻量级的模型，适用于对速度要求苛刻的应用。
    *   **GLM-5.1-Max：** 旗舰模型，在具有挑战性的长程推理任务上提供最高性能。

总体而言，GLM-5.1代表了从专注于简短问答的模型，向能够自主管理冗长复杂项目的强大AI智能体的转变。它被定位为构建高级研究、复杂客户支持和自动化业务流程编排等领域应用的强大基础。

---

## 5. S3文件与S3的演变面貌

**原文标题**: S3 Files and the changing face of S3

**原文链接**: [https://www.allthingsdistributed.com/2026/04/s3-files-and-the-changing-face-of-s3.html](https://www.allthingsdistributed.com/2026/04/s3-files-and-the-changing-face-of-s3.html)

本文探讨了亚马逊S3如何从一个简单的对象存储演变为更通用的数据平台，最终推出了**S3 Files**。

核心问题在于**数据摩擦**：许多应用程序和工具（如基因组学分析或AI训练）是为本地文件系统设计的，迫使用户手动在S3之间复制数据。这拖慢了创新速度，尤其是在AI代理降低了构建新应用的成本、使得数据可访问性比以往任何时候都更加关键的当下。

为此，S3团队一直在添加新的托管数据原语以简化访问：
*   **S3 Tables**（2024年推出）：为数据提供一流的表抽象，自动化管理任务，并改进了Apache Iceberg等开放格式。
*   **S3 Vectors**（2023年推出）：为语义搜索和AI中使用的向量索引提供可扩展、经济高效且弹性的存储层。

最新推出的**S3 Files**直接解决了文件与对象之间的鸿沟。它将Amazon EFS与S3集成，允许任何S3存储桶或前缀作为网络文件系统挂载到EC2、容器或Lambda上。这意味着数据可以同时作为文件和对象访问，消除了繁琐的复制管道需求。文章指出，实现这种无缝集成是一项重大的技术挑战，被描述为一场“令人不快的妥协之战”，但对于让基于文件的庞大工具生态系统能够即时使用S3数据至关重要。

---

## 6. 柬埔寨为著名扫雷鼠马加瓦揭幕雕像

**原文标题**: Cambodia unveils a statue of famous landmine-sniffing rat Magawa

**原文链接**: [https://www.bbc.com/news/articles/c0rx7xzd10xo](https://www.bbc.com/news/articles/c0rx7xzd10xo)

柬埔寨在暹粒为马加瓦揭幕了一座雕像，以纪念这只在扫雷工作中表现卓越的非洲巨颊囊鼠。马加瓦由比利时慈善机构Apopo训练，自2016年起在柬埔寨工作，凭借其敏锐的嗅觉定位爆炸物。在五年的职业生涯中，它清理了超过14.1万平方米的土地，嗅出100多枚地雷和未爆弹药，极大加快了排雷进程。2020年，它因动物英勇行为获颁PDSA金质奖章，成为首只获此荣誉的老鼠。

这座用当地石材雕刻的雕像在国际扫雷意识日前夕揭幕，旨在提醒人们柬埔寨仍面临地雷威胁——该国超过一百万人至今生活在受污染的土地上。Apopo的项目经理指出，柬埔寨的目标是在2030年前实现无地雷。

文章还强调了这些“英雄鼠”的高效性，它们体重较轻，不会触发地雷爆炸。Apopo持续开展这项工作，另一只老鼠罗宁自2021年以来已发现109枚地雷，打破了马加瓦的纪录。这些老鼠还接受过结核病检测和打击非法野生动物贸易的训练。

---

## 7. 展示 HN：适用于苹果芯片的 Gemma 4 多模态微调工具

**原文标题**: Show HN: Gemma 4 Multimodal Fine-Tuner for Apple Silicon

**原文链接**: [https://github.com/mattmireles/gemma-tuner-multimodal](https://github.com/mattmireles/gemma-tuner-multimodal)

本文介绍**Gemma多模态微调工具**，这是一个可直接在Apple Silicon Mac（MPS）上对谷歌Gemma模型进行文本、图像和音频微调的工具包。它无需NVIDIA GPU，并支持从Google云存储（GCS）或BigQuery等云端源流式传输训练数据，无需本地下载。

主要功能包括：
*   **多模态LoRA微调**，适用于文本、图像（字幕生成/视觉问答）和音频任务。
*   **Apple Silicon原生支持**，可在M1/M2/M3 Mac上高效运行。
*   **云端数据流式传输**，支持训练大型数据集，不受本地存储限制。
*   **纯文本微调**，可使用本地CSV文件进行指令或补全任务。

该工具包支持Gemma 3n和Gemma 4模型系列（2B和4B参数变体）。它通过CLI和向导进行设置，利用Hugging Face和PEFT进行训练，并以标准格式导出模型。应用场景包括特定领域音频转录、视觉问答以及创建私有的设备端AI流程。

安装要求Python 3.10+、原生ARM64环境、PyTorch以及用于模型访问的Hugging Face身份验证。

---

## 8. 一位卡车司机花了20年时间，制作了纽约市所有建筑的微缩模型。

**原文标题**: A truck driver spent 20 years making a scale model of every building in NYC

**原文链接**: [https://www.smithsonianmag.com/smart-news/a-truck-drive-spent-20-years-making-this-astonishing-scale-model-of-every-single-building-in-new-york-city-180988443/](https://www.smithsonianmag.com/smart-news/a-truck-drive-spent-20-years-making-this-astonishing-scale-model-of-every-single-building-in-new-york-city-180988443/)

来自纽约州北部的卡车司机乔·麦肯花费二十余年，手工打造了一座巨型纽约市比例模型。2004年，他从洛克菲勒中心30号单栋建筑模型起步，最终完成了占地1350平方英尺、由320个模块组成的复制品，每个模块约代表城市一平方英里的区域。

这座1:2400比例的模型采用轻木、丙烯颜料和埃尔默胶水等普通材料制成，成本约2万美元，几乎还原了纽约五大行政区及部分新泽西州、纳苏县的每栋建筑、街道、桥梁和公园。麦肯的创作灵感源于童年时见过的《纽约市全景模型》。

他的作品在TikTok上引发广泛关注，现于纽约市博物馆“他建造这座城市：乔·麦肯的模型”特展中展出，展期将持续至2026年夏季。参观者可通过望远镜观察精妙细节。博物馆工作人员强调，这件模型凝聚了创作者深沉的个人热忱与创造力，透过一位深切眷恋这座城市之人的视角，捕捉了纽约的万千气象。

---

## 9. 展示 HN：粗野主义混凝土笔记本支架（2024）

**原文标题**: Show HN: Brutalist Concrete Laptop Stand (2024)

**原文链接**: [https://sam-burns.com/posts/concrete-laptop-stand/](https://sam-burns.com/posts/concrete-laptop-stand/)

本文详细介绍了受粗野主义建筑与城市衰败风格启发而创作的一款独特定制笔记本电脑支架。该支架采用原始混凝土浇筑而成，因此格外沉重，同时融合了功能性与美学元素。

其主要特点包括：内置三孔插电插座、两个USB充电端口，以及一个用于种植珍珠吊兰的固定式花盆。设计刻意追求破败美学，通过破损的边角、人工锈蚀的钢筋和裸露的仿腐蚀铜线，模拟城市探险场所的视觉特征。

制作过程采用模具分两次浇筑混凝土，并运用特殊技法营造风化表面质感。使用振动工具消除气泡。花盆为固定式铁罐，铜线与钢筋的逼真腐蚀效果通过化学处理实现（铜线使用氨水，钢材采用盐水与双氧水处理）。另有一个小型“笔筒”经过类似锈蚀处理，并用颜料模拟霉斑纹理。

创作者对最终成果十分满意——尽管支架重量可观，但成功地将对粗野主义风格的热爱与衰败主题、实用功能融为一体。

---

## 10. 通过浏览器中的Linux虚拟机借助USB/IP桥接WebUSB来拯救老旧打印机

**原文标题**: Rescuing old printers with an in-browser Linux VM bridged to WebUSB over USB/IP

**原文链接**: [https://printervention.app/details](https://printervention.app/details)

本文详细介绍了**printervention.app**的创建过程，这是一个基于浏览器的Linux虚拟机网络应用，旨在挽救老旧且不受支持的USB打印机。

作者George MacKerron的灵感来源于一台老旧的佳能SELPHY照片打印机，该设备已不被现代操作系统支持。虽然Linux机器可以驱动它打印，但他希望找到一个更简单、通用的解决方案。

核心技术是**v86**——一个在浏览器中运行Alpine Linux并搭载CUPS和Gutenprint的x86模拟器。该应用通过**WebUSB**连接打印机，识别设备，并在虚拟机内自动安装正确的驱动程序。

关键创新在于将模拟的Linux USB系统与实体打印机桥接。这是通过结合**USB/IP**（在Linux端）与**tcpip.js**（在浏览器端）实现的，创建了基于TCP的双向桥接，从而支持带有完整状态反馈的标准CUPS打印。

应用还添加了处理实际使用场景的功能：将iPhone的HEIC图像转换为JPEG格式，将图像嵌入尺寸准确的PDF以确保打印精度，并保留色彩配置文件。

作者希望该应用能拯救许多打印机免于被填埋，并看到与打印机耗材公司商业合作的潜力。他还计划为旧款扫描仪开发类似应用（**yes-we-scan.app**）。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 2 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 3 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 4 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 5 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 6 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 7 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 8 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 9 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 10 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 11 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 12 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 13 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 14 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 15 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 16 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 17 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 18 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 19 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 20 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 21 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 22 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 23 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 24 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 25 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 26 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 27 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 28 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 29 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 30 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 31 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 32 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 33 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 34 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 35 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 36 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 37 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 38 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 39 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 40 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 41 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 42 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 43 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 44 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 45 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 46 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 47 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 48 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 49 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 50 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 51 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 52 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 53 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 54 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 55 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 56 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 57 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 58 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 59 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 60 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 61 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 62 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 63 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 64 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 65 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 66 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 67 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 68 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 69 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 70 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 71 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 72 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 73 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 74 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 75 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 76 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 77 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 78 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 79 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 80 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 81 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 82 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 83 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 84 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 85 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 86 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 87 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 88 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 89 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 90 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 91 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 92 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 93 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 94 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 95 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 96 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 97 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 98 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 99 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 100 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 101 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 102 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 103 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 104 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 105 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 106 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 107 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 108 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 109 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 110 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 111 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 112 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 113 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 114 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 115 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 116 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 117 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 118 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 119 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 120 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 121 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 122 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 123 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 124 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 125 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 126 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 127 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 128 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 129 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 130 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 131 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 132 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 133 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 134 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 135 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 136 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 137 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 138 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 139 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 140 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 141 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 142 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 143 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 144 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 145 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 146 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 147 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 148 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 149 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 150 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 151 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 152 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 153 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 154 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 155 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 156 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 157 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 158 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 159 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 160 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 161 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 162 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 163 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 164 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 165 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 166 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 167 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 168 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 169 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 170 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 171 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 172 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 173 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 174 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 175 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 176 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 177 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 178 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 179 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 180 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 181 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 182 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 183 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 184 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 185 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 186 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 187 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 188 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 189 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 190 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 191 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 192 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 193 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 194 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 195 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 196 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 197 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 198 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 199 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 200 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 201 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 202 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 203 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 204 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 205 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 206 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 207 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 208 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 209 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 210 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 211 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 212 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 213 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 214 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 215 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 216 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 217 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 218 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 219 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 220 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 221 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 222 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 223 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 224 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 225 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 226 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 227 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 228 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 229 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 230 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 231 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 232 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 233 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 234 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 235 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 236 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 237 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 238 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 239 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 240 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 241 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 242 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 243 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 244 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 245 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 246 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 247 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 248 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 249 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 250 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 251 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 252 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 253 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 254 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 255 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 256 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 257 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 258 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 259 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 260 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 261 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 262 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 263 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 264 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 265 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 266 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 267 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 268 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 269 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 270 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 271 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 272 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 273 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 274 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 275 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 276 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 277 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 278 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 279 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 280 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 281 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 282 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 283 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 284 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 285 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 286 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 287 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 288 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 289 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 290 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 291 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 292 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 293 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 294 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 295 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 296 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 297 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 298 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 299 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 300 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 301 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 302 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 303 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 304 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 305 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 306 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 307 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 308 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 309 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 310 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 311 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 312 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 313 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 314 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 315 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 316 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 317 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 318 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 319 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 320 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 321 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 322 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 323 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 324 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 325 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 326 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 327 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 328 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 329 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 330 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 331 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 332 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 333 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 334 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 335 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 336 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 337 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 338 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 339 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 340 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 341 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 342 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 343 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 344 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 345 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 346 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 347 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 348 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 349 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 350 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 351 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 352 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 353 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 354 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 355 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 356 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 357 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 358 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 359 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 360 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 361 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 362 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 363 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 364 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 365 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 366 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 367 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 368 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 369 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 370 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 371 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 372 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 373 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 374 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 375 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 376 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 377 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 378 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 379 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 380 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 381 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
