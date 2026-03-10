# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-10.md)

*最后自动更新时间: 2026-03-10 20:35:26*
## 1. 托尼·霍尔去世了

**原文标题**: Tony Hoare has died

**原文链接**: [https://blog.computationalcomplexity.org/2026/03/tony-hoare-1934-2026.html](https://blog.computationalcomplexity.org/2026/03/tony-hoare-1934-2026.html)

本文宣布计算机科学先驱托尼·霍尔爵士于2026年3月5日逝世，享年92岁。文章由霍尔的私人熟识吉姆·迈尔斯撰写，聚焦于霍尔的性格与个人轶事，而非对其技术成就（包括快速排序算法、霍尔逻辑及ALGOL语言研究）的全面回顾。

迈尔斯形容霍尔思维敏锐、为人谦逊且极具幽默感，并分享了两人交往中的故事。其中包括促成快速排序算法诞生的著名“六便士赌约”——霍尔证实赌注确实被兑现，以及他在微软工作期间溜去电影院的习惯。作者还提及霍尔那句耐人寻味的评论：政府技术“领先公众想象多年”，其含义被刻意保留为开放式解读。

文章描绘了一位才华横溢却脚踏实地的霍尔，人们将铭记他的温暖、专业精神，以及他对职业生涯与天才本质的深刻思考。

---

## 2. 在我睡觉时运行的代理

**原文标题**: Agents that run while I sleep

**原文链接**: [https://www.claudecodecamp.com/p/i-m-building-agents-that-run-while-i-sleep](https://www.claudecodecamp.com/p/i-m-building-agents-that-run-while-i-sleep)

本文探讨了在无人监督的情况下信任自主AI编码助手输出的挑战。作者指出，虽然这些助手提高了生产力，但也形成了一个“自我庆贺机器”——同一套AI系统既编写代码又测试代码，导致潜在错误难以被发现。

提出的解决方案是采用测试驱动开发（TDD）方法：在助手开始编码*之前*，用通俗英语编写具体、可验证的验收标准。这些标准明确定义了“完成”的含义（例如“用户看到错误信息X”“API返回状态码401”）。

作者随后介绍了一款实用工具——名为“verify”的Claude技能，它能自动化验证流程。当助手构建功能后，该工具通过浏览器自动化（Playwright）测试每个验收标准，生成截图等证据，并输出通过/失败报告。这将审查负担从阅读所有生成代码转变为只需调查未通过的检查项。

核心论点是：预先定义清晰、可观察的成功标准对于信任自主助手至关重要，因为这提供了可自动验证其工作的客观标准。

---

## 3. Yann LeCun筹集10亿美元打造理解物理世界的人工智能

**原文标题**: Yann LeCun raises $1B to build AI that understands the physical world

**原文链接**: [https://www.wired.com/story/yann-lecun-raises-dollar1-billion-to-build-ai-that-understands-the-physical-world/](https://www.wired.com/story/yann-lecun-raises-dollar1-billion-to-build-ai-that-understands-the-physical-world/)

Meta前首席AI科学家Yann LeCun联合创立了一家位于巴黎的初创公司“高级机器智能”（AMI），该公司以35亿美元估值融资超10亿美元。该公司致力于开发AI“世界模型”——即能够理解物理世界、进行推理规划并具备持久记忆的系统。LeCun认为，当前支撑ChatGPT等产品的大型语言模型存在根本性局限，无法实现真正的人类智能，而他认为真正的智能需要建立在物理世界的基础上。

AMI的战略方向与OpenAI和Meta等公司主导的“扩大语言模型规模”的行业主流背道而驰。相反，它计划为制造业、生物医学和机器人等领域的合作伙伴开发实用型AI，通过数据构建真实模拟（例如飞机发动机模型）以进行优化。

这家从成立第一天就定位全球的初创公司由LeCun多位前Meta同事共同创立。LeCun将领导AMI，同时继续担任纽约大学教授。尽管Meta并未投资，但LeCun正在探讨潜在合作，例如为Meta智能眼镜中的助手提供技术支持。

LeCun还强调，AMI计划开发开源技术，并主张任何单一公司都不应控制如此强大的AI。他认同美国政府近期对AI滥用的担忧，指出关于AI应用的社会决策应通过民主程序产生，而非仅由科技领袖决定。

---

## 4. 发布HN：RunAnywhere（YC W26）——在苹果芯片上实现更快的AI推理

**原文标题**: Launch HN: RunAnywhere (YC W26) – Faster AI Inference on Apple Silicon

**原文链接**: [https://github.com/RunanywhereAI/rcli](https://github.com/RunanywhereAI/rcli)

RunAnywhere的RCLI是一款语音控制的AI助手，完全在Apple Silicon Mac（macOS 13+，M1或更高版本）上本地运行。它提供完整的语音转文本（STT）、大语言模型（LLM）和文本转语音（TTS）处理流程，延迟低于200毫秒，无需云服务或API密钥。

主要功能包括通过语音控制43种macOS操作（如媒体、应用、系统功能），基于混合检索增强生成（RAG）的本地文档问答，以及交互式终端界面。其核心采用专有的GPU引擎MetalRT，可在M3/M4芯片上实现高性能推理，M1/M2芯片则回退至llama.cpp引擎。

用户可通过单行命令或Homebrew安装该工具。它支持多种本地模型以适应不同任务，并允许热切换。其架构采用专用线程和优化的内存管理以实现实时性能。核心RCLI软件为开源（MIT协议），而MetalRT为专有引擎。

---

## 5. RISC-V 太慢了

**原文标题**: RISC-V Is Sloooow

**原文链接**: [https://marcin.juszkiewicz.com.pl/2026/03/10/risc-v-is-sloooow/](https://marcin.juszkiewicz.com.pl/2026/03/10/risc-v-is-sloooow/)

作者详细介绍了他们在Fedora RISC-V移植项目上为期三个月的工作经历，重点强调了在问题分类和提交86个软件包拉取请求方面取得的显著进展。然而，核心挑战在于该架构严重的性能限制。目前的RISC-V构建器使用的硬件性能仅相当于低端Arm Cortex-A55核心，导致软件包构建时间极长——例如binutils的构建耗时超过2小时，而在其他架构上仅需30-45分钟。这种缓慢的构建速度，加上为节省内存而必须禁用LTO（链接时优化）的情况，使得在某些构建任务中使用带多核模拟的QEMU甚至比物理RISC-V硬件更快。

作者总结道，要让RISC-V成为Fedora的主要架构，需要配备新型可上架服务器级硬件，能够在启用LTO的情况下将核心软件包的构建时间压缩至一小时以内。未来计划包括启动Fedora 44构建并部署更快的构建器，但当前的硬件条件仍是开发工作的主要瓶颈。

---

## 6. Widevine即将停止其云许可证服务（CLS）

**原文标题**: Widevine retiring its Cloud License Service (CLS)

**原文链接**: [https://castlabs.com/blog/widevine-retiring-cloud-license-service/](https://castlabs.com/blog/widevine-retiring-cloud-license-service/)

**《Widevine 云许可证服务（CLS）停用摘要》**

谷歌旗下领先的DRM技术Widevine将于**2024年12月31日**停用其云许可证服务（CLS）。该服务曾允许内容提供商为受Widevine保护的内容颁发许可证，而无需自行构建和维护许可证服务器基础设施。

此举主要影响当前依赖CLS的内容分发商和服务提供商。他们必须在停用日期前迁移至替代方案，以确保用户播放不中断。由DRM专家castLabs撰写的文章将此视为一次重大的行业转变，即从谷歌托管的集中式服务转向其他模式。

停用要求受影响方选择以下路径之一：
1.  **自行构建并运营内部的Widevine许可证服务器**，这需要大量的技术专长和资源。
2.  **与第三方DRM服务提供商（如castLabs）合作**，这些提供商提供托管式Widevine许可证服务，作为更广泛的多DRM解决方案的一部分。

关键要点在于采取行动的紧迫性。使用CLS的公司必须立即开始规划迁移策略，以避免服务中断。这一变化凸显了视频流媒体行业的一个更广泛趋势：转向使用多DRM服务提供商，这些提供商能够从单一平台管理Widevine、Apple FairPlay和Microsoft PlayReady的许可证，这通常被视为比管理专用的单一DRM服务器更高效且更具前瞻性。

---

## 7. 《超卡发现：神经漫游者、归零、蒙娜丽莎超速》（2022）

**原文标题**: HyperCard discovery: Neuromancer, Count Zero, Mona Lisa Overdrive (2022)

**原文链接**: [https://macintoshgarden.org/apps/neuromancer-count-zero-mona-lisa-overdrive](https://macintoshgarden.org/apps/neuromancer-count-zero-mona-lisa-overdrive)

本文详述了1992年威廉·吉布森《蔓生都会三部曲》（《神经漫游者》《零伯爵》《蒙娜丽莎超速档》）作为Voyager扩展电子书在经典Macintosh系统上的数字发行。该版本是基于HyperCard开发的应用程序，专为优化早期笔记本电脑和台式机的阅读体验而设计，具备定制排版和导航工具。书中收录了吉布森的后记，该后记在其他出版物中鲜少重印。

文件提供两种兼容System 6.x至Mac OS 9系统的归档格式（.sit和.dmg）下载，并可通过Basilisk II等模拟器在现代系统上运行。文章提供了具体的安装说明，指出小说在应用程序中按字母顺序（而非时间顺序）排列，并确认该软件已通过测试且功能完整。

---

## 8. Debian决定不对AI生成贡献作出决定

**原文标题**: Debian decides not to decide on AI-generated contributions

**原文链接**: [https://lwn.net/SubscriberLink/1061544/125f911834966dd0/](https://lwn.net/SubscriberLink/1061544/125f911834966dd0/)

Debian开发者近期就是否制定关于AI生成贡献的正式政策展开辩论，但最终决定不进行投票表决。此次讨论由一份通用决议草案引发，该草案提议在明确披露和贡献者承担责任等条件下允许此类贡献。

辩论焦点包括“AI”这一模糊术语——许多人主张使用“LLM生成”等更精确的表述，以及对指导新贡献者的影响、版权问题、使用抓取知识产权的工具所涉及的伦理争议等担忧。部分开发者主张明确禁止，另一些则认为需要更细致的处理方式。

共识认为，鉴于问题的复杂性、技术的快速演变以及各方对定义和后果缺乏共识，该项目尚未准备好制定最终政策。目前Debian将继续依据现有政策，对AI辅助的贡献采取逐案处理的方式。

---

## 9. 十亿参数理论

**原文标题**: Billion-Parameter Theories

**原文链接**: [https://www.worldgov.org/complexity.html](https://www.worldgov.org/complexity.html)

本文认为，人类历史上依赖简洁优雅的科学理论（如F=ma）是受限于人类记忆及纸笔等工具的结果。这种方法虽适用于“复杂”系统（如发动机），却无法应对真正“复杂”的系统（如经济或气候），因为后者的相互作用是动态且涌现的。

数十年来，圣塔菲研究所等机构的复杂性科学虽能描述这类系统，却无法建立可操作的规定性模型。现代人工智能，特别是大型神经网络，实现了突破。这些模型如同“数十亿参数的理论”——它们是对复杂系统的海量压缩表征，其规模超出人类认知范畴，却能用于模拟和预测。

针对“此类模型缺乏优秀解释理论所具有的简洁普适性”的质疑，作者提出双层理论：训练后的模型权重庞大而具体，但其底层架构（如Transformer）却紧凑通用，能够跨越不同复杂领域进行学习。此外，新兴的机制可解释性领域正通过研究这些模型，提取其所表征系统的深层原理。

总之，人类最棘手的问题或许并非无解，只是需要新的理论载体。虽然答案可能基于概率而非确定性，但人工智能最终提供了大规模建模并干预复杂系统的工具。

---

## 10. FFmpeg-over-IP – 连接远程FFmpeg服务器

**原文标题**: FFmpeg-over-IP – Connect to remote FFmpeg servers

**原文链接**: [https://github.com/steelbrain/ffmpeg-over-ip](https://github.com/steelbrain/ffmpeg-over-ip)

**概述**

FFmpeg-over-IP 是一款工具，能让应用程序在远程服务器上使用 GPU 加速的 FFmpeg，而无需直接访问 GPU 或共享文件系统。它解决了 Docker/虚拟机中 GPU 透传的复杂性，并消除了对 NFS/SMB 挂载的需求。

该系统由两部分组成：一个模拟 `ffmpeg` 的客户端二进制文件，以及一个运行补丁版 FFmpeg 的服务器。当应用程序（如媒体服务器）调用客户端时，客户端会通过 TCP 连接将命令转发给服务器。服务器使用其本地 GPU 执行命令，所有文件 I/O 都通过网络连接隧道回传——文件从不驻留在服务器上。

主要特性包括：
*   **简化设置**：无需 GPU 设备映射、PCIe 透传或共享存储配置。
*   **预构建二进制文件**：发布版本包含支持广泛硬件加速（NVENC、QSV、VAAPI 等）的 FFmpeg/FFprobe。
*   **安全性**：使用 HMAC-SHA256 和共享密钥进行命令认证。
*   **并发性**：支持多个同时的客户端连接。
*   **跨平台**：客户端和服务器适用于 Linux（x86_64/arm64）、macOS 和 Windows。

该工具非常适合将 GPU 密集型的转码任务从本地机器或容器卸载到配备 GPU 的专用远程服务器上。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 2 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 3 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 4 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 5 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 6 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 7 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 8 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 9 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 10 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 11 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 12 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 13 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 14 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 15 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 16 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 17 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 18 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 19 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 20 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 21 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 22 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 23 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 24 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 25 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 26 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 27 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 28 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 29 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 30 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 31 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 32 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 33 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 34 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 35 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 36 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 37 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 38 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 39 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 40 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 41 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 42 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 43 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 44 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 45 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 46 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 47 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 48 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 49 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 50 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 51 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 52 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 53 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 54 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 55 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 56 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 57 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 58 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 59 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 60 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 61 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 62 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 63 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 64 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 65 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 66 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 67 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 68 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 69 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 70 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 71 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 72 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 73 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 74 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 75 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 76 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 77 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 78 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 79 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 80 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 81 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 82 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 83 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 84 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 85 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 86 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 87 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 88 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 89 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 90 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 91 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 92 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 93 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 94 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 95 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 96 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 97 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 98 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 99 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 100 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 101 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 102 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 103 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 104 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 105 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 106 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 107 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 108 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 109 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 110 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 111 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 112 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 113 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 114 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 115 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 116 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 117 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 118 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 119 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 120 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 121 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 122 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 123 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 124 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 125 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 126 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 127 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 128 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 129 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 130 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 131 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 132 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 133 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 134 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 135 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 136 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 137 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 138 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 139 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 140 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 141 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 142 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 143 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 144 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 145 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 146 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 147 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 148 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 149 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 150 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 151 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 152 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 153 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 154 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 155 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 156 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 157 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 158 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 159 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 160 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 161 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 162 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 163 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 164 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 165 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 166 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 167 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 168 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 169 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 170 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 171 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 172 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 173 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 174 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 175 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 176 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 177 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 178 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 179 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 180 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 181 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 182 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 183 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 184 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 185 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 186 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 187 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 188 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 189 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 190 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 191 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 192 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 193 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 194 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 195 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 196 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 197 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 198 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 199 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 200 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 201 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 202 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 203 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 204 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 205 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 206 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 207 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 208 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 209 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 210 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 211 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 212 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 213 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 214 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 215 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 216 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 217 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 218 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 219 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 220 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 221 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 222 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 223 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 224 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 225 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 226 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 227 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 228 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 229 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 230 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 231 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 232 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 233 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 234 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 235 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 236 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 237 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 238 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 239 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 240 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 241 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 242 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 243 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 244 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 245 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 246 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 247 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 248 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 249 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 250 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 251 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 252 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 253 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 254 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 255 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 256 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 257 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 258 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 259 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 260 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 261 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 262 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 263 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 264 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 265 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 266 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 267 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 268 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 269 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 270 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 271 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 272 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 273 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 274 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 275 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 276 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 277 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 278 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 279 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 280 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 281 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 282 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 283 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 284 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 285 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 286 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 287 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 288 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 289 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 290 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 291 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 292 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 293 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 294 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 295 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 296 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 297 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 298 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 299 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 300 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 301 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 302 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 303 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 304 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 305 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 306 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 307 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 308 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 309 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 310 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 311 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 312 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 313 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 314 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 315 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 316 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 317 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 318 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 319 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 320 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 321 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 322 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 323 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 324 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 325 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 326 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 327 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 328 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 329 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 330 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 331 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 332 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 333 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 334 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 335 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 336 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 337 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 338 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 339 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 340 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 341 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 342 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 343 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 344 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 345 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 346 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 347 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 348 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 349 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 350 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 351 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 352 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 353 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
