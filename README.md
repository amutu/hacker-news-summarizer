# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-10.md)

*最后自动更新时间: 2026-08-10 20:46:13*
## 1. Kinney Drugs因数百起客户投诉撤下AI电话助手

**原文标题**: Kinney Drugs pulls back AI phone assistant after hundreds of customer complaints

**原文链接**: [https://www.wcax.com/2026/08/07/kinney-drugs-pulls-back-ai-phone-assistant-after-hundreds-customer-complaints/](https://www.wcax.com/2026/08/07/kinney-drugs-pulls-back-ai-phone-assistant-after-hundreds-customer-complaints/)

Kinney Drugs正在缩减其AI电话助手“Burt”的使用规模，此前有数百名客户投诉称该助手出现通话内容不连贯、剂量信息错误以及错过处方通知等问题。这款AI以该药店连锁创始人的名字命名，于今年5月上线，负责处理患者关于处方和续药的沟通。

客户反映该技术存在严重问题，促使公司恢复使用传统的按键式电话系统来接收患者来电。Kinney Drugs总裁John Marraffa承认了这一失败，他表示，虽然隐私和安全方面处理得当，但客户体验不佳，公司对此负有责任。

此外，隐私问题也引发担忧，客户担心AI平台可能泄露其个人健康信息。Marraffa安抚称，Burt完全符合HIPAA（健康保险携带和责任法案）合规要求，不是开源的，也不会生成或篡改数据。尽管有所收缩，Kinney仍将继续使用Burt进行外呼沟通，例如发送处方续药短信，但患者必须主动选择接收此类信息。

---

## 2. 深入了解Claude的数学能力

**原文标题**: Learning more about Claude's mathematical capabilities

**原文链接**: [https://www.anthropic.com/research/riemann-zeta](https://www.anthropic.com/research/riemann-zeta)

Anthropic研究员给Claude的一个未发布研究版本提出了挑战，要求它对黎曼猜想进行“真正的尝试”。虽然它没有解决这个著名问题，但Claude出人意料地改进了一个相关结果：它将黎曼ζ函数在临界线上的零点比例的下界从41.6%提高到了67.2%。

这一发现建立在Baluyot、Goldston、Suriajaya和Turnage-Butterbaugh先前工作的基础上，并结合了Bombieri在2000年发表的一篇论文。Claude使用了一个带有二次型的函数空间，将正定和负定子空间放在一起处理，并利用一阶和二阶矩信息推导出了一个不等式。

在方法论上，Claude在Claude Code中通过两次会话使用了60个子代理，消耗了3100万输出令牌。它运行了数千次数值检查，下载了54篇arXiv论文以排除已有工作，并独立地重新证明了自己的结果。两位Anthropic数学家Levent Alpöge和Ralph Furman验证了这一证明，外部专家Brian Conrey和Dan Goldston对其进行了审查。Claude还生成了一份可正式验证的Lean证明。

Claude最初对自己的结果持怀疑态度，但来自操作人员的鼓励帮助它继续了下去。Anthropic指出，这一成就不太可能带来黎曼猜想的证明，但它凸显了AI模型在数学领域的快速进步。文章附有Claude的论文、形式化证明、非正式笔记、解释和对话记录的相关链接。

---

## 3. 没有真正的“完成”：2022年阿巴拉契亚小径全程徒步后的思考

**原文标题**: There is no “done”: Reflections on a completed Appalachian Trail thru-hike (2022)

**原文链接**: [https://thetrek.co/appalachian-trail/there-is-no-done-reflections-on-a-completed-at-thru-hike/](https://thetrek.co/appalachian-trail/there-is-no-done-reflections-on-a-completed-at-thru-hike/)

艾米莉·哈克尼回顾了她完成2022年阿巴拉契亚小径全程徒步的经历——从三月开始，历时五个半月，行程2200英里。在弗吉尼亚州的家中醒来，她仍然会本能地对降雨预报作出反应，但意识到自己不再需要冒雨徒步了。

她解释说，大约在田纳西州时，她停止了写博客，因为身心俱疲，无法写作。当人们问起这次徒步怎么样时，她难以总结：“艰难、有趣、值得、可怕、狂野、奇妙。”

这篇文章更深层的脉络是悲伤。她徒步的部分原因是为了处理父亲的去世，最初希望能借此分散自己的注意力。小径打破了她的防备，迫使她感受一切：喜悦、恐惧、愤怒，尤其是悲伤。她不停地哭泣，但这变成了治愈。她学到了“唯一的出路是穿越它”，无论是在小径上还是在悲伤中。一个例子是马霍苏克隘口，一片她害怕但又必须穿越的艰难巨石地带。

她反思一切事物的无常——即使是古老的山脉——并在接受生命的循环中找到平静。到最后，她意识到悲伤永远不会“结束”；它仍然是与她父亲的一种联系。登顶后下撤卡塔丁山时，另一位徒步者形容那种感觉为“平静”，她表示同意。文章以祝福结尾：“祝你们大家都有非常愉快的旅途。”

---

## 4. 在 Apple Vision Pro 上运行 Android ARM64 VR APK

**原文标题**: Run Android ARM64 VR APKs on Apple Vision Pro

**原文链接**: [https://github.com/shinyquagsire23/Klepton](https://github.com/shinyquagsire23/Klepton)

Klepton 是一个项目，可让 Android ARM64 VR 应用（尤其是 Beat Saber）在 Apple Vision Pro 和 macOS 上运行，而无需 JIT。它通过将 Android `.so` 库翻译为可加载的 macOS/visionOS dylib/framework，然后将它们链接到 Klepton 运行时中来工作。目前仅支持 Java-thin 应用；不包含 ART 或 JVM。

图形翻译通过 ANGLE 处理，将 GLES 3.2 转换为使用 Metal 后端的 GLES 3.0；Vulkan 则通过 MoltenVK 进行翻译。运行时包含多个兼容层：`libklepton_bionic` 将 Android 的 libc/libm/libdl/pthread/log 映射到 Apple 的 libSystem；`libklepton_ndk` 实现 Android NDK API，如 ALooper、ANativeWindow、ASensor 和 AAsset；`libklepton_jni` 提供合成的 JavaVM/JNIEnv；`libklepton_ovrp` 重新实现 Oculus VR Platform 函数。前端使用 MoltenVK、ANGLE、Compositor Services、ARKit、GameController 和 AVAudioEngine。

一个关键的技术问题是，Android 和 macOS 都保留了 x18 寄存器，但 macOS 在上下文切换时会将其清零。由于许多较旧的 Android 应用使用 x18，Klepton 会修补所有使用 x18 的代码，改为使用每个库的 TLS 槽位。

该项目还可以在运行时使用 `mmap` 加载和修补 `.so` 文件，但这仅在 macOS 上有用，因为那里允许 JIT。如果某些应用依赖 LuaJIT 或 V8 等脚本运行时，则可能仍然需要 JIT。

构建说明位于 BUILDING.md 中。基本前提条件包括 `brew install pkg-config sdl3 apktool`、使用 `apktool` 解压 APK，以及运行 `make check`。项目提供了 `build_run_viewer.sh`、`build_run_vpro.sh` 和 `build_run_slink.sh` 等快速脚本，用于不同的目标平台。

状态：Beat Saber 可在 macOS 和 visionOS 上运行，仅有轻微图形问题；Steam VR Link 以及更广泛的通用性和构建工具支持仍在开发中。

---

## 5. Claude将黎曼猜想的界从41.6%推进至67.2%

**原文标题**: Claude moves bound of the Riemann Hypothesis from 41.6% to 67.2%

**原文链接**: [https://twitter.com/jarredsumner/status/2086869681785500011](https://twitter.com/jarredsumner/status/2086869681785500011)

贾里德·萨姆纳请Claude解决黎曼猜想。Claude并未完全解决该问题，但在1.5天内证明了黎曼ζ函数至少有67%的零点位于临界线上——相比此前41.6%的已知界限有了显著提升。据报道，这一结果令解析数论学家们感到兴奋，也凸显了Claude日益增长的数学能力。

---

## 6. 一个有趣的傅里叶变换——1/f噪声（2007）

**原文标题**: An Interesting Fourier Transform – 1/f Noise (2007)

**原文链接**: [https://www.dsprelated.com/showarticle/40.php](https://www.dsprelated.com/showarticle/40.php)

文章讨论了幂律函数的一个显著性质：它们的傅里叶变换也是幂律。具体而言，对于单边时域函数 u(t) t^α，其变换幅度正比于 ω^-(α+1)，并带有额外的伽马函数缩放因子 Γ(α+1) 和相位项。例子涵盖 α = -2 到 α = 2；α = 0 给出单位阶跃和理想积分器的 1/ω 响应，而 α = 1 对应于两个积分器的级联（1/ω²）。

特殊情况出现在 α = -1，此时伽马函数无定义。更有趣的是 α = -0.5：两个域具有相同的幂律指数，使得 u(t)t^-1/2 及其变换幅度 ω^-1/2 具有自相似性。

作者将此与1/f噪声联系起来，这是一种在电子、交通、音乐、DNA等中发现的尚未被充分理解的噪声。其功率谱约为1/f，因此其幅度谱约为1/f^1/2。因此，在有限意义上，1/f噪声是它自身的傅里叶变换：形状为 u(t)t^-1/2 的脉冲产生1/f功率谱，而将白噪声通过具有该冲激响应的滤波器则会生成1/f噪声。然而，清晰的物理解释仍然难以捉摸。真实1/f噪声的相位未知，相应的时域波形也可能并非简单的 t^-1/2。作者指出，高斯曲线和幂律都是自傅里叶的这一事实或许能提供线索，并邀请人们在这一长期谜团上探索研究方向。

---

## 7. Blackwing铅笔是如何制造的[视频]

**原文标题**: How Blackwing Pencils are Made [video]

**原文链接**: [https://www.youtube.com/watch?v=fow-LsdaH2E](https://www.youtube.com/watch?v=fow-LsdaH2E)

该视频介绍了人气颇高的“黑翼铅笔”是如何制造而成的。

内容方面，从木材的选材、切割、开槽加工，到混合石墨与粘土制作笔芯、将其嵌入铅笔本体、粘合与加压、干燥、表面涂装与刻印，再到安装标志性的金属箍环和橡皮，按工序逐一展示制造过程。此外，还着重展现了工匠手工精细打磨和品质管理的情景。

不过，所给出的“Content”部分只是YouTube标准的页脚信息，并不包含正文或视频的详细脚本。因此，该摘要基于标题和一般的制造工艺常识。

---

## 8. Show HN：语音驱动的谋杀之谜，用你的声音审问AI嫌疑人

**原文标题**: Show HN: Voice driven murder mystery, Interview AI suspects with your voice

**原文链接**: [https://www.whodunnitai.com/](https://www.whodunnitai.com/)

一篇“Show HN”帖子介绍了WhoDunnitAI，这是一款语音驱动的谋杀悬疑游戏。玩家可以用自己的声音审问AI嫌疑人。游戏免费游玩，但除非你提供自己的OpenAI密钥以获取无限访问权限，否则审问时间有限。嫌疑人实时语音由GPT-Realtime-2驱动，每次审问每分钟都会产生实际费用。为了帮助覆盖这些AI费用并维持游戏运行，作者Chase Myers接受任何金额的捐赠。帖子中包含一个演示视频和一个捐赠链接。

---

## 9. 德国创下六个月初创企业新纪录

**原文标题**: Germany Sets New Six-Month Startup Record

**原文链接**: [https://www.gtai.de/en/meta/press/germany-sets-new-six-month-start-up-record-2012048](https://www.gtai.de/en/meta/press/germany-sets-new-six-month-start-up-record-2012048)

德国在2026年上半年创下了科技初创企业的新纪录，共有3053家新公司成立——比2025年下半年增长了52%。根据德国初创企业协会和Startupdetector的一项研究，其中超过三分之一（1038家）是AI初创企业，凸显了AI在德国创新生态系统中的核心地位。GTAI专家Asha-Maria Sharma将此增长归因于德国工业、出行和能源企业积极寻求AI解决方案，使初创企业能够更快地测试技术并进入市场。反过来，AI也帮助创始人在资本较少的情况下创办公司。软件仍是最强的子领域，新增了844家公司。GTAI是德国政府负责国际商业推广的机构，支持外国企业进入德国市场以及德国企业走向海外。

---

## 10. 对于编码代理来说，最好的编程语言是什么？

**原文标题**: What's the best programming language for coding agents?

**原文链接**: [http://danluu.com/pl-tokens/](http://danluu.com/pl-tokens/)

这篇文章批判性地考察了关于动态类型或高度简洁的语言对基于LLM的编程智能体更具令牌效率的说法。文章引用了早期评估，这些评估似乎表明Clojure和J等语言优于静态语言，但作者认为这些结果并不可靠，因为任务过于简单，且评估存在方法论缺陷，包括一个导致测试评分出错的符号链接错误。

为了验证这一说法，作者运行了两个更大、更贴近实际的评估：

1. **Zstd解码器**：智能体需在无测试的情况下，根据RFC实现解码器。
2. **Pandoc**：一个改写的TDD风格评估，使用ProgramBench材料及留出测试集。

结果显示，**没有任何语言类型明显占据主导地位**。在中等投入下，动态语言看起来稍好一些，但在更高投入下，静态语言往往能与之持平或超越。在琐碎任务中看到的极端令牌效率优势，在更大问题中消失了。J和汇编等冷门或“奇异”语言表现不佳，而更流行的语言则与更好、更便宜的结果呈现弱到中等程度的相关性。

作者预先注册的猜想大多得到证实：
- “动态语言对LLM更具令牌效率”的笼统说法**不成立**。
- “J或其他高密度语言会更优越”的想法**不成立**。
- “静态语言在超高投入下表现更好”并未得到明确支持。

常见说法——如PHP糟糕的代码声誉会损害性能、Haskell等强大语言更好、动态语言在小任务上占优而静态语言在大任务上占优——均未得到这些评估的支持。文章总结道，大多数关于语言对LLM适用性的宽泛说法并不可靠，而这些问题直到现在才可能通过基于LLM的评估得到检验。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 2 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 3 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 4 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 5 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 6 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 7 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 8 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 9 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 10 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 11 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 12 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 13 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 14 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 15 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 16 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 17 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 18 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 19 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 20 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 21 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 22 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 23 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 24 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 25 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 26 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 27 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 28 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 29 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 30 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 31 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 32 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 33 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 34 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 35 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 36 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 37 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 38 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 39 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 40 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 41 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 42 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 43 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 44 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 45 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 46 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 47 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 48 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 49 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 50 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 51 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 52 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 53 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 54 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 55 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 56 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 57 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 58 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 59 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 60 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 61 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 62 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 63 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 64 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 65 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 66 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 67 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 68 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 69 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 70 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 71 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 72 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 73 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 74 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 75 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 76 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 77 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 78 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 79 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 80 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 81 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 82 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 83 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 84 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 85 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 86 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 87 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 88 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 89 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 90 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 91 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 92 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 93 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 94 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 95 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 96 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 97 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 98 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 99 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 100 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 101 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 102 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 103 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 104 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 105 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 106 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 107 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 108 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 109 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 110 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 111 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 112 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 113 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 114 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 115 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 116 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 117 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 118 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 119 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 120 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 121 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 122 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 123 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 124 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 125 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 126 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 127 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 128 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 129 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 130 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 131 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 132 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 133 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 134 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 135 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 136 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 137 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 138 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 139 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 140 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 141 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 142 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 143 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 144 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 145 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 146 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 147 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 148 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 149 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 150 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 151 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 152 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 153 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 154 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 155 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 156 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 157 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 158 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 159 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 160 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 161 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 162 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 163 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 164 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 165 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 166 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 167 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 168 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 169 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 170 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 171 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 172 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 173 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 174 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 175 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 176 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 177 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 178 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 179 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 180 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 181 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 182 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 183 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 184 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 185 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 186 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 187 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 188 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 189 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 190 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 191 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 192 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 193 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 194 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 195 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 196 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 197 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 198 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 199 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 200 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 201 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 202 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 203 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 204 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 205 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 206 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 207 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 208 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 209 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 210 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 211 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 212 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 213 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 214 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 215 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 216 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 217 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 218 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 219 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 220 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 221 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 222 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 223 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 224 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 225 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 226 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 227 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 228 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 229 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 230 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 231 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 232 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 233 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 234 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 235 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 236 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 237 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 238 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 239 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 240 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 241 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 242 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 243 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 244 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 245 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 246 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 247 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 248 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 249 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 250 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 251 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 252 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 253 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 254 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 255 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 256 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 257 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 258 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 259 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 260 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 261 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 262 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 263 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 264 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 265 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 266 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 267 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 268 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 269 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 270 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 271 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 272 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 273 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 274 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 275 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 276 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 277 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 278 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 279 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 280 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 281 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 282 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 283 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 284 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 285 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 286 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 287 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 288 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 289 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 290 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 291 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 292 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 293 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 294 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 295 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 296 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 297 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 298 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 299 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 300 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 301 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 302 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 303 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 304 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 305 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 306 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 307 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 308 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 309 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 310 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 311 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 312 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 313 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 314 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 315 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 316 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 317 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 318 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 319 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 320 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 321 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 322 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 323 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 324 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 325 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 326 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 327 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 328 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 329 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 330 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 331 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 332 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 333 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 334 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 335 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 336 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 337 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 338 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 339 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 340 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 341 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 342 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 343 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 344 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 345 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 346 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 347 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 348 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 349 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 350 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 351 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 352 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 353 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 354 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 355 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 356 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 357 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 358 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 359 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 360 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 361 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 362 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 363 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 364 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 365 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 366 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 367 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 368 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 369 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 370 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 371 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 372 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 373 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 374 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 375 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 376 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 377 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 378 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 379 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 380 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 381 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 382 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 383 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 384 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 385 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 386 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 387 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 388 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 389 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 390 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 391 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 392 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 393 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 394 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 395 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 396 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 397 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 398 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 399 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 400 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 401 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 402 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 403 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 404 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 405 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 406 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 407 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 408 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 409 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 410 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 411 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 412 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 413 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 414 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 415 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 416 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 417 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 418 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 419 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 420 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 421 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 422 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 423 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 424 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 425 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 426 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 427 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 428 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 429 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 430 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 431 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 432 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 433 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 434 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 435 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 436 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 437 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 438 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 439 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 440 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 441 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 442 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 443 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 444 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 445 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 446 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 447 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 448 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 449 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 450 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 451 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 452 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 453 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 454 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 455 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 456 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 457 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 458 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 459 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 460 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 461 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 462 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 463 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 464 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 465 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 466 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 467 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 468 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 469 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 470 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 471 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 472 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 473 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 474 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 475 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 476 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 477 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 478 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 479 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 480 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 481 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 482 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 483 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 484 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 485 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 486 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 487 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 488 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 489 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 490 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 491 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 492 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 493 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 494 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 495 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 496 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 497 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 498 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 499 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 500 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 501 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 502 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 503 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 504 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
