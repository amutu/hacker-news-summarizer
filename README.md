# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-17.md)

*最后自动更新时间: 2026-10-17 04:57:07*
## 1. 特斯拉 Roadster

**原文标题**: Tesla Roadster

**原文链接**: [https://www.tesla.com/roadster](https://www.tesla.com/roadster)

无法访问该文章链接。

---

## 2. Claude揭开ECDSA椭圆曲线参数起源之谜

**原文标题**: Claude reveals ECDSA curve origins

**原文链接**: [https://www.anthropic.com/research/ecdsa-curve-origins](https://www.anthropic.com/research/ecdsa-curve-origins)

2026年10月，Anthropic宣布其AI模型Claude在不到半小时内解开了困扰密码学界近25年的NIST椭圆曲线种子来源之谜。此前外界长期怀疑NSA提供的种子可能暗藏后门，曾有传闻称其源自某句幽默短语的哈希值，但始终未获证实。Claude发现，P-192、P-224、P-256、P-384、P-521等主流曲线的种子实为C标准库中lrand48伪随机数生成器以Unix时间戳为初始种子所产生的输出，生成时间集中在1997年5月至1998年4月。Claude通过识别该生成器高位恒为零的特征模式，结合LLL格基约化算法逆向恢复内部状态，成功复现全部种子。此外，Claude还部分解明了六条曲线基点的生成方式，源自早期NTL/FreeLIP库的随机数发生器。该发现表明生成方式极为简单透明，反而大幅降低了存在隐蔽后门的嫌疑，增强了公众对这些广泛使用的加密标准的信心。目前B-163曲线及P-224至P-521基点的生成方式仍未完全解释。

---

## 3. 越狱PS5上的Llama.cpp：在主机上原生运行任意GGUF模型

**原文标题**: Llama.cpp on a jailbroken PS5: run any GGUF model natively on the console

**原文链接**: [https://github.com/cobanov/PS5LM](https://github.com/cobanov/PS5LM)

PS5LM是一款面向越狱PS5的本地大模型服务器应用，基于llama.cpp的Vulkan后端驱动RDNA 2 GPU及11.4GB共享显存，原生加载推理GGUF模型，无需PC、云端或账号。应用兼容OpenAI（/v1/chat/completions）和Anthropic（/v1/messages）API，任何客户端指向 http://<console>:8081 即可调用。新增基于Ollaya的决策模型功能，通过 /v1/systemone 接口回答带类型与校准概率的决策问题。TV界面实时展示聊天流、设备调用记录及GPU/CPU温度与负载图表。性能方面，Qwen 3.5 9B Q4约55 tokens/秒，27B Q2约20 tokens/秒，600M决策模型0.3秒完成3个推理。应用可从Hugging Face自动下载模型，支持Gemma 4、MiniCPM-V等带视觉投影器的图像输入，模型可存放于内部存储、M.2或USB。运行需PS5固件7.00–13.60越境越狱，加载kstuff-lite、etaHEN、ShadowMountPlus等payload。项目采用GPL-3.0许可证，不涉及索尼SDK或固件文件。

---

## 4. 911报警系统的致命缺陷

**原文标题**: The Fatal Flaw of 911

**原文链接**: [https://www.themarshallproject.org/2026/10/16/911-book-policing-mental-health](https://www.themarshallproject.org/2026/10/16/911-book-policing-mental-health)

无法访问该文章链接

---

## 5. FLUX 3 Image Klein：56亿参数开放权重图像模型

**原文标题**: Flux 3 Image Klein: open weights, 5.6B parameters

**原文链接**: [https://bfl.ai/blog/flux-3-image-klein](https://bfl.ai/blog/flux-3-image-klein)

FLUX 3 Image Klein 是 Black Forest Labs 发布的 56 亿参数开放权重图像模型，支持文生图、图像编辑及最多 10 张参考图的多图生成，具备原生 4K 画质、像素级编辑与边界框定位功能。模型融合图像、视频、音频的多领域学习，生成结果更贴近真实世界。内部评测显示，其在文生图、多图生成和图像编辑三项任务上均居开放权重模型之首，并超越 Ideogram V4.5 与 FLUX.2 [pro] 等闭源模型。针对消费级 GPU 深度优化，INT8 版本仅需 8 GB 显存即可运行；蒸馏版搭配 INT8 在 RTX 5090 上约 4 秒生成一张百万像素图像。发布含基础模型（供微调）与蒸馏模型（低延迟），提供 FP8、INT8、NVFP4 版本，获 NVIDIA 全面支持。生态方面，首发支持 ComfyUI、Diffusers、TensorRT-LLM、SGLang 等框架及 LoRA 训练。BFL API 已上线，定价 0.009 美元/千张。采用 FLUX Kommunity License，年营收 500 万美元以下企业可免费商用；团队还部署了数据集过滤、有害行为抑制及红队测试等多层安全机制。

---

## 6. Waymo正式进军加拿大多伦多

**原文标题**: Waymo in Toronto

**原文链接**: [https://waymo.com/blog/2026/10/waymo-in-toronto/](https://waymo.com/blog/2026/10/waymo-in-toronto/)

Waymo正式宣布进军加拿大多伦多，计划于2028年迎接首批乘客。公司采取安全优先的分阶段策略，先以人工驾驶方式进行高精度地图绘制和路测验证，确保自动驾驶系统适应当地路况。Waymo与多伦多本地企业Element Fleet Management达成合作，由后者提供车队管理服务，双方将共同创造数百个涵盖车队维护、路测验证和客服等领域的岗位。此次合作延续了Waymo与加拿大的既有联系，包括长期投资方加拿大养老金投资委员会及制造伙伴麦格纳国际。安全方面，Waymo数据显示，基于超4亿公里全自动驾驶里程，其重伤及以上事故率比人类驾驶低95%。公司同时强调无障碍出行理念，与BALANCE for Blind Adults、加拿大国家盲人协会（INCA）、Epilepsy Ontario等多个组织合作，为残障群体打造独立出行方案。Waymo表示，其全天候自动驾驶服务将作为多伦多现有交通网络（自行车道、公共交通等）的有力补充，助力这座北美增长最快的都市之一实现更安全、更包容的出行体验。

---

## 7. JPEG XL vs. AVIF for web use-cases

**原文标题**: JPEG XL vs. AVIF for web use-cases

**原文链接**: [https://jakearchibald.com/2026/jpeg-xl-vs-avif/](https://jakearchibald.com/2026/jpeg-xl-vs-avif/)

文章之前已经处理过

---

## 8. 借助Claude设计更高效的量子电路

**原文标题**: Designing more efficient quantum circuits with Claude

**原文链接**: [https://www.anthropic.com/research/designing-efficient-quantum-circuits](https://www.anthropic.com/research/designing-efficient-quantum-circuits)

摘要：Anthropic团队利用Claude Mythos 5，以"自然语言规范加自动评估器"的闭环流程，在化学、优化、物理模拟和数论等八个量子电路设计任务中，自主发现优于已发表最佳方案的新设计，部分改进达一个数量级以上，且全程无需人工干预。文章重点介绍两项突破：其一，在椭圆曲线点加法这一离散对数问题的核心步骤中，Claude发明了模逆运算divsteps的首个可逆量子实现——通过从数值对中直接解码分支信息，免除存储完整迭代历史的开销，大幅节省量子比特，并由此拓展了量子比特数与运行时间的权衡前沿；其二，将量子优化算法DQI中最昂贵步骤的成本降低约12倍。这些改进源于对问题新结构和数学性质的深层洞察，而非对既有设计的局部调优。该工作由Anthropic STEM Fellows Program的Andi Gu主导，与哈vard大学的Susanne Yelin、Mikhail Lukin合作完成。成果表明，AI已具备辅助重新设计量子电路的能力，有望加速实用量子计算机在药物设计、电池开发和清洁化肥生产等领域的应用落地。

---

## 9. 美国九成工时落在AI基准测试覆盖盲区

**原文标题**: 90% of US working hours are spent on tasks not covered well by AI benchmarks

**原文链接**: [https://www.mercor.com/research/labor-index/benchmark-map/](https://www.mercor.com/research/labor-index/benchmark-map/)

摘要：Mercor Research构建了"基准地图"，将29个AI基准与O*NET职业分类（923个职业、18,797项任务）进行映射，评估AI基准对美国经济的覆盖程度。核心发现：仅208个职业的任务达到5条以上基准提示覆盖，22个职业家族中有6个完全空白，约90%的美国工时集中在覆盖不足的任务上。覆盖存在明显偏斜：高工资、高AI暴露度职业（如软件工程、金融分析）被重点覆盖，而法律秘书、法庭文员等中等收入知识工作几乎未被触及。方法论上，研究以公开性、代理任务性、经济真实性等为标准筛选基准，由LLM将基准提示映射至O*NET任务并结合人工校验，再按工时份额估算经济覆盖率。研究初步尝试用O*NET任务等权替代简单平均来评估模型职业表现，在投行、法律、会计、软件工程四场景中效果相近，但仅约三分之一相关任务具备足够样本。作者指出，未来面临统计效力不足、任务难度与质量参差等难题，呼吁增加基准数量与多样性，以缩小对AI真实经济能力的认知盲区。

---

## 10. C++26：新增调试头文件

**原文标题**: C++26: The New Debugging Header

**原文链接**: [https://www.sandordargo.com/blog/2026/09/30/cpp26-debugging](https://www.sandordargo.com/blog/2026/09/30/cpp26-debugging)

长期以来，C++开发者若需在代码中设置程序化断点，必须编写大量平台条件编译代码，Boost.Test、Catch2、Dear ImGui等主流框架各自实现了不同版本，但该知识始终未纳入标准。C++26通过提案P2546R5与P2810R4，正式引入`<debugging>`头文件，提供三个简洁函数：`std::breakpoint()`（无条件断点，x86上通常编译为int3指令）、`std::is_debugger_present()`（实时检测调试器是否附加，结果不缓存）以及`std::breakpoint_if_debugging()`（前两者的组合，仅在调试器存在时触发断点）。三者均为noexcept和freestanding，但非constexpr。其中`is_debugger_present()`可被用户替换定义，类似operator new/delete，以适配裸机等无操作系统级别调试检测的场景。该函数还可用于控制额外诊断输出、禁用超时、切换调试友好分配器等场景。文章指出，断点设置与调试器检测被刻意设计为正交构建块，`breakpoint_if_debugging()`仅作为便利组合。作者认为这是C++26中最实用的标准库新增之一——API仅三个函数，却终结了每个项目重复造轮子的历史。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 2 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 3 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 4 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 5 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 6 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 7 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 8 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 9 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 10 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 11 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 12 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 13 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 14 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 15 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 16 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 17 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 18 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 19 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 20 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 21 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 22 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 23 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 24 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 25 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 26 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 27 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 28 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 29 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 30 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 31 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 32 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 33 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 34 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 35 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 36 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 37 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 38 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 39 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 40 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 41 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 42 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 43 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 44 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 45 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 46 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 47 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 48 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 49 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 50 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 51 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 52 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 53 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 54 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 55 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 56 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 57 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 58 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 59 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 60 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 61 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 62 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 63 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 64 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 65 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 66 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 67 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 68 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 69 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 70 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 71 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 72 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 73 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 74 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 75 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 76 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 77 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 78 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 79 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 80 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 81 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 82 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 83 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 84 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 85 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 86 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 87 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 88 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 89 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 90 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 91 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 92 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 93 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 94 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 95 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 96 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 97 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 98 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 99 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 100 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 101 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 102 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 103 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 104 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 105 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 106 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 107 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 108 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 109 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 110 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 111 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 112 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 113 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 114 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 115 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 116 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 117 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 118 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 119 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 120 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 121 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 122 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 123 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 124 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 125 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 126 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 127 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 128 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 129 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 130 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 131 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 132 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 133 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 134 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 135 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 136 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 137 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 138 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 139 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 140 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 141 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 142 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 143 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 144 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 145 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 146 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 147 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 148 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 149 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 150 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 151 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 152 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 153 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 154 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 155 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 156 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 157 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 158 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 159 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 160 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 161 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 162 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 163 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 164 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 165 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 166 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 167 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 168 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 169 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 170 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 171 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 172 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 173 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 174 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 175 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 176 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 177 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 178 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 179 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 180 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 181 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 182 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 183 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 184 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 185 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 186 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 187 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 188 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 189 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 190 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 191 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 192 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 193 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 194 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 195 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 196 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 197 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 198 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 199 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 200 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 201 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 202 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 203 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 204 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 205 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 206 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 207 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 208 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 209 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 210 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 211 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 212 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 213 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 214 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 215 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 216 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 217 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 218 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 219 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 220 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 221 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 222 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 223 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 224 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 225 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 226 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 227 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 228 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 229 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 230 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 231 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 232 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 233 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 234 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 235 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 236 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 237 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 238 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 239 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 240 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 241 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 242 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 243 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 244 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 245 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 246 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 247 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 248 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 249 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 250 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 251 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 252 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 253 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 254 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 255 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 256 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 257 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 258 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 259 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 260 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 261 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 262 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 263 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 264 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 265 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 266 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 267 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 268 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 269 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 270 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 271 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 272 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 273 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 274 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 275 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 276 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 277 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 278 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 279 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 280 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 281 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 282 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 283 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 284 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 285 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 286 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 287 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 288 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 289 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 290 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 291 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 292 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 293 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 294 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 295 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 296 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 297 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 298 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 299 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 300 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 301 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 302 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 303 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 304 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 305 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 306 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 307 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 308 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 309 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 310 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 311 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 312 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 313 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 314 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 315 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 316 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 317 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 318 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 319 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 320 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 321 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 322 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 323 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 324 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 325 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 326 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 327 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 328 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 329 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 330 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 331 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 332 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 333 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 334 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 335 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 336 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 337 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 338 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 339 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 340 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 341 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 342 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 343 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 344 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 345 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 346 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 347 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 348 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 349 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 350 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 351 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 352 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 353 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 354 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 355 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 356 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 357 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 358 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 359 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 360 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 361 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 362 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 363 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 364 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 365 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 366 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 367 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 368 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 369 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 370 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 371 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 372 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 373 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 374 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 375 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 376 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 377 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 378 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 379 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 380 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 381 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 382 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 383 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 384 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 385 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 386 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 387 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 388 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 389 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 390 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 391 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 392 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 393 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 394 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 395 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 396 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 397 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 398 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 399 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 400 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 401 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 402 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 403 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 404 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 405 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 406 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 407 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 408 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 409 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 410 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 411 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 412 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 413 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 414 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 415 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 416 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 417 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 418 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 419 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 420 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 421 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 422 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 423 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 424 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 425 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 426 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 427 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 428 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 429 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 430 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 431 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 432 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 433 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 434 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 435 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 436 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 437 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 438 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 439 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 440 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 441 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 442 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 443 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 444 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 445 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 446 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 447 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 448 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 449 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 450 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 451 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 452 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 453 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 454 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 455 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 456 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 457 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 458 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 459 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 460 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 461 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 462 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 463 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 464 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 465 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 466 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 467 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 468 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 469 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 470 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 471 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 472 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 473 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 474 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 475 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 476 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 477 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 478 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 479 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 480 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 481 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 482 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 483 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 484 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 485 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 486 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 487 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 488 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 489 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 490 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 491 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 492 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 493 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 494 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 495 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 496 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 497 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 498 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 499 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 500 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 501 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 502 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 503 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 504 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 505 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 506 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 507 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 508 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 509 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 510 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 511 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 512 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 513 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 514 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 515 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 516 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 517 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 518 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 519 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 520 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 521 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 522 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 523 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 524 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 525 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 526 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 527 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 528 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 529 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 530 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 531 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 532 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 533 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 534 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 535 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 536 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 537 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 538 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 539 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 540 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 541 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 542 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 543 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 544 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 545 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 546 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 547 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 548 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 549 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 550 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 551 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 552 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 553 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 554 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 555 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 556 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 557 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 558 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 559 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 560 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 561 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 562 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 563 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 564 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 565 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 566 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 567 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 568 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 569 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 570 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 571 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 572 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
