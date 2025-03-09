## 成员
|序号 |职位 | 姓名 | ID | 
|---|---|---|---|
| 1 |组长|崔正阳| @NANA |
| 2 |顾问|殷统创| @殷统创 |
Fork的仓库：
https://github.com/jslee02/awesome-robotics-libraries
https://github.com/TianxingChen/Embodied-AI-Guide
---
<h1 align="center">具身智能入门指南 Embodied-AI-Guide</h1>

<p align="center"> </p>


> Embodied AI（具身智能）入门的路径以及高质量信息的总结, 期望是按照路线走完后, 新手可以快速建立关于这个领域的认知, 希望能帮助到各位入门具身智能的朋友, 欢迎点Star、分享与提PR🌟~<br>【 <a href="https://github.com/tianxingchen/Embodied-AI-Guide">Embodied-AI-Guide</a>, Latest Update: Feb. 5, 2025 】<img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Ftianxingchen%2FEmbodied-AI-Guide&count_bg=%232B8DD9&title_bg=%237834C6&icon=github.svg&icon_color=%23E7E7E7&title=Page+Viewers&edge_flat=false"/> <img alt="GitHub repo stars" src="https://img.shields.io/github/stars/TianxingChen/Embodied-AI-Guide">


# Contents - 目录

<nav>
  <ul>
    <li><a href="#start">1. Start From Here - 从这里开始</a></li>
    <li><a href="#info">2. Useful Info - 有利于搭建认知的资料</a></li>
    <li><a href="#algorithm">3. Algorithm - 算法</a>
      <ul>
        <li><a href="#common-tools">3.1 Common Tools - 常用工具</a></li>
        <li><a href="#foundation-models">3.2 Foundation Models - 基础模型</a></li>
        <li><a href="#robot-learning">3.3 Robot Learning - 机器人学习</a>
          <ul>
            <li><a href="#rl">3.3.1 Reinforcement Learning - 强化学习</a></li>
            <li><a href="#il">3.3.2 Imitation Learning - 模仿学习</a></li>
          </ul>
        </li>
        <li><a href="#llm_robot">3.4 LLM for Robotics - 大语言模型在机器人学中的应用</a></li>
        <li><a href="#vla">3.5 Vision-Language-Action Models - VLA模型</li>
        <li><a href="#cv">3.6 Computer Vision - 计算机视觉</a>
          <ul>
            <li><a href="#2dv">3.6.1 2D Vision - 二维视觉</a></li>
            <li><a href="#3dv">3.6.2 3D Vision - 三维视觉</a></li>
            <li><a href="#4dv">3.6.3 4D Vision - 四维视觉</a></li>
            <li><a href="#vp">3.6.4 Visual Prompting - 视觉提示</a></li>
          </ul>
        </li>
        <li><a href="#cg"> 3.7 Computer Graphics - 计算机图形学</a></li>  
        <li><a href="#mm"> 3.8 Multimodal Models - 多模态模型</a></li>  
        <li><a href="#embodied-ai-4-x">3.9 Embodied AI for X - 具身智能+X</a>
          <ul>
            <li><a href="#medical">3.9.1 EAI for Healthcare - 具身医疗</a></li>
            <li><a href="#uav">3.9.2 UAV - 无人机</a></li>
            <li><a href="#ad">3.9.3 Autonomous Driving - 自动驾驶</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#hardware">4. Hardware - 硬件</a>
      <ul>
        <li><a href="#embedded">4.1 Embedded - 嵌入式</a></li>
        <li><a href="#mechanical">4.2 Mechanical Design - 机械设计</a></li>
        <li><a href="#robosystem">4.3 Robot System Design - 机器人系统设计</a></li>
        <li><a href="#control">4.4 Control - 控制学</a></li>  
        <li><a href="#sensors">4.5 Sensors - 传感器</a></li>
        <li><a href="#tactile">4.6 Tactile Sensing - 触觉感知</a></li>
        <li><a href="#companies">4.7 Companies - 公司</a></li>
      </ul>
    </li>
    <li><a href="#software">5. Software - 软件</a>
      <ul>
        <li><a href="#simulators">5.1 Simulators - 仿真器</a></li>
        <li><a href="#benchmarks">5.2 Benchmarks  - 基准集</a></li>
        <li><a href="#datasets">5.3 Datasets  - 数据集</a></li>
      </ul>
    </li>
    <li><a href="#paper_list">6. Paper Lists - 论文列表</a></li>
    <li><a href="#acknowledgement">7. Acknowledgement - 致谢</a></li>
    <li><a href="#license">🏷️ License - 许可证</a></li>
    <li><a href="#star-history">⭐️ Star History - Star历史</a></li>
  </ul>
</nav>



<section id="start"></section>

# 1. Start From Here - 从这里开始

> 具身智能是指一种基于物理身体进行感知和行动的智能系统, 其通过智能体与环境的交互获取信息、理解问题、做出决策并实现行动, 从而产生智能行为和适应性。

## How - 如何学习这份指南

我们希望的是帮助新人快速建立领域认知, 所以设计理念是：**简要**介绍目前具身智能涉及到的主要技术, 让大家知道不同的技术能够解决什么问题, 未来想要深入发展的时候能够有头绪。

## About us - 关于我们
我们是一个由具身初学者组成的团队, 希望能够通过我们自己的学习经验, 为后来者提供一些帮助, 加快具身智能的普及。欢迎更多朋友加入我们的项目, 也很欢迎交友、学术合作, 有任何问题, 可以联系邮箱`chentianxing2002@gmail.com`。

<p><b>🦉Contributors</b>: <a href="https://tianxingchen.github.io">陈天行 (25' 港大PhD)</a>, <a href="https://github.com/kxwangzju">王开炫 (25' 港大PhD)</a>, <a href="https://jiayueru.github.io/">贾越如 (北大Ms)</a >, <a href="https://metaphysicist0.github.io/">姚天亮 (25' 港中文PhD)</a>, <a href="https://c7w.tech/about/">高焕昂 (清华PhD)</a>, <a href="https://axi404.top/">高宁 (西交 BS)</a>, <a href="https://github.com/guo-cq">郭常青 (清华 Ms)</a>, <a href="https://shijiapeng03.github.io/">彭时佳 (深大BS)</a>, <a href="https://yudezou.github.io/">邹誉德 (25' 上交AILab联培PhD)</a>, <a href="">陈思翔 (25' 北大PhD)</a>, <a href="https://github.com/csyufei">朱宇飞 (25' 上科大Ms)</a>, <a href="https://hao-starrr.github.io/">王文灏 (宾大Ms)</a>, <a href="https://github.com/StarCycle">李卓恒 (港大PhD)</a>, <a href="https://github.com/Henry-lsy">梁升一 (港科广PhD)</a>, <a href="https://scholar.google.com/citations?user=azPXbWcAAAAJ&hl=en">林俊晓 (浙大Ms)</a>, <a href="https://gkw0010.github.io/">王冠锟 (港中文PhD)</a>, <a href="https://ngchikit.github.io">吴志杰 (港中文PhD)</a>, <a href="https://github.com/27yw">叶雯 (25' 中科院PhD)</a>, <a href="https://github.com/zanxinchen">陈攒鑫 (深大BS)</a>, <a href="https://hbhalpha.github.io">侯博涵 (山大BS)</a>.</p> 

<a href="https://github.com/TianxingChen/Embodied-AI-Guide/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=TianxingChen/Embodied-AI-Guide" />
</a>

<section id="info"></section>

# 2. Useful Info - 有利于搭建认知的资料

* 具身智能基础技术路线-YunlongDong [2]: [PDF](./files/具身智能基础技术路线-YunlongDong.pdf), [bilibili](https://www.bilibili.com/video/BV1d5ukedEsi/?buvid=XXCD799C01878A6CFDECF3FB4427E2F070877&from_spmid=default-value&is_story_h5=false&mid=iWFclAyh36UYMh2G6ZcsDw%3D%3D&p=1&plat_id=114&share_from=ugc&share_medium=android&share_plat=android&share_session_id=9c0dccf5-ec0b-4369-8b89-ff1d848467ee&share_source=WEIXIN&share_tag=s_i&spmid=united.player-video-detail.0.0&timestamp=1716466406&unique_k=Q0CaIUj&up_id=249218043)

* 社交媒体:

  * 可以关注的公众号: **石麻日记 (超高质量!!!)**, 机器之心, 新智元, 量子位, Xbot具身知识库, 具身智能之心, 自动驾驶之心, 3D视觉工坊, 将门创投, RLCN强化学习研究, CVHub

  * AI领域值得关注的博主列表 [3]: [zhihu](https://zhuanlan.zhihu.com/p/682110383)

* Robotics实验室总结 [4]: [zhihu_1](https://zhuanlan.zhihu.com/p/682671294?utm_psn=1782122763157188608), [zhihu_2](https://zhuanlan.zhihu.com/p/682692024?utm_psn=1782122945184796672)

* 具身智能会投稿的较高质量会议与期刊：Science Robotics, TRO, IJRR, JFR, RSS, IROS, ICRA, ICCV, ECCV, ICML, CVPR, NIPS, ICLR, AAAI, ACL等。

* 斯坦福机器人学导论：[website](https://www.bilibili.com/video/BV17T421k78T/?spm_id_from=333.337.search-card.all.click)

* 共建全网最全具身智能知识库 [6]: [website](https://yv6uc1awtjc.feishu.cn/wiki/WPTzw9ON0ivIVrkLjVocNZh8nLf)

* Awesome-Embodied-AI-Job: [Repo](https://github.com/StarCycle/Awesome-Embodied-AI-Job/tree/main)

* 社区:
  * DeepTimber Robotics Innovations Community, 深木科研交流社区: [website](https://gamma.app/public/DeepTimber-Robotics-Innovations-Community-A-Community-for-Multi-m-og0uv8mswl1a3q7?mode=doc)
  * 宇树具身智能社群: [website](https://www.unifolm.com/#/)
  * Simulately: Handy information and resources for physics simulators for robot learning research: [website](https://simulately.wiki/)
  * DeepTimber-地瓜机器人社区: [website](https://cn.developer.d-robotics.cc/forumList?id=156&title=Deeptimber)
  * HuggingFace LeRobot (Europe, check the Discord): [website](https://github.com/huggingface/lerobot)
  * K-scale labs (US, check the Discord): [website](https://kscale.dev/)

<section id="algorithm"></section>

# 3. Algorithm - 算法

<section id="common-tools"></section>

## 3.1 Common Tools - 常用工具

> 这个部分是关于具身中常用技巧的分享

* 点云降采样: [zhihu](https://zhuanlan.zhihu.com/p/558683732?utm_campaign=shareopn&utm_medium=social&utm_psn=1772067996070236160&utm_source=wechat_session), 包括随机降采样、均匀降采样、最远点降采样、法线空间降采样等, 需要了解清楚每一种降采样的优劣, 这个技巧的选择对于3D应用来说是至关重要的。
* 手眼标定：[github](https://github.com/fishros/handeye-calib), 手眼标定用于确定相机和机械臂之间以及相机与相机之间的相对位置, 大部分Project的开始都需要做一次手眼标定, 分为眼在手上和眼在手外。


<section id="foundation-models"></section>

## 3.2 Foundation Models - 基础模型

> 以下是部分具身智能中常用的基础模型, 计算机视觉中发展的非常好的工具可以直接赋能具身智能的下游应用。

* CLIP: [website](https://github.com/openai/CLIP), 来自OpenAI的研究, 最基本的应用是可以计算图像与语言描述的相似度, 中间层的视觉特征对各种下游应用非常有帮助。

* DINO: [DINO repo](https://github.com/facebookresearch/dino), [DINO-v2 repo](https://github.com/facebookresearch/dinov2), 来自Meta的研究, 可以提供图像的高层视觉特征, 对corresponding之类的信息提取非常有帮助, 比如不同个体之间的鼻子都有类似的几何特征, 这个时候不同图像中关于不同鼻子的视觉特征值可能是近似的。

* SAM: [website](https://segment-anything.com/), 来自Meta的研究, 可以基于提示点或者框, 对图像的物体进行分割。

* SAM2: [website](https://ai.meta.com/sam2/), 来自Meta的研究, SAM的升级版, 可以在视频层面持续对物体进行分割追踪。

* Grounding-DINO: [repo](https://github.com/IDEA-Research/GroundingDINO), [在线尝试](https://deepdataspace.com/playground/grounding_dino), **这个DINO与上面Meta的DINO没有关系**, 是一个由IDEA研究院（做了很多不错开源项目的机构）开发集成的图像目标检测的框架, 很多时候需要对目标物体进行检测的时候可以考虑使用。

* Grounded-SAM: [repo](https://github.com/IDEA-Research/Grounded-SAM-2), 比Grounding-DINO多了一个分割功能, 也就是支持检测后分割, 也有很多下游应用, 具体可以翻一下README。

* FoundationPose: [website](https://github.com/NVlabs/FoundationPose), 来自Nvidia的研究, 物体姿态追踪模型。

* Stable Diffusion: [repo](https://github.com/CompVis/stable-diffusion), [website](https://ommer-lab.com/research/latent-diffusion-models/), 22年的文生图模型, 现在虽然不是SOTA了, 但是依然可以作为不错的应用, 例如中间层特征支持下游应用、生成Goal Image (目标状态) 等等。

* Depth Anything (v1 & v2): [repo](https://github.com/LiheYoung/Depth-Anything), [repo](https://github.com/DepthAnything/Depth-Anything-V2), 港大和字节的研究工作, 单目深度估计模型。

* Point Transformer (v3): [repo](https://github.com/Pointcept/PointTransformerV3), 点云特征提取的工作。

* RDT-1B: [website](https://rdt-robotics.github.io/rdt-robotics/), 清华朱军老师团队的工作, 机器人双臂操作的基础模型, 具有强大的few-shot能力。

* SigLIP: [huggingface](https://huggingface.co/docs/transformers/en/model_doc/siglip), 类似CLIP。

<section id="robot-learning"></section>

## 3.3 Robot Learning - 机器人学习

机器人学习 Robot Learning 的发展: [zhihu](https://zhuanlan.zhihu.com/p/26988866)

<section id="rl"></section>

### 3.3.1 Reinforcement Learning - 强化学习

* 强化学习的数学原理 - 西湖大学赵世钰: [bilibili](https://space.bilibili.com/2044042934/channel/collectiondetail?sid=748665) [GitHub](https://github.com/MathFoundationRL/Book-Mathematical-Foundation-of-Reinforcement-Learning) 这门课程作为强化学习的入门课程非常合适，适合只对机器学习略有了解，但没有了解过强化学习的初学者，可以了解强化学习的数学原理，其教材编写也十分用心。

#### Deep Reinforcement Learning - 深度强化学习

下面列出三门比较受欢迎的深度强化学习相关的课程，这几门课互有overlap，时间长短和授课风格也各有不同，读者可以选择适合自己的课程进行学习。此外，深度强化学习的经典算法相关的文章也在必读清单：如[PPO](https://arxiv.org/abs/1707.06347), [SAC](https://proceedings.mlr.press/v80/haarnoja18b/haarnoja18b.pdf), [TRPO](https://arxiv.org/abs/1502.05477), [A3C](https://arxiv.org/abs/1602.01783)等。

* The Foundations of Deep RL in 6 Lectures [YouTube](https://www.youtube.com/watch?v=2GwBez0D20A) 本门在线课程由在RL领域著名的Pieter Abbeel教授主讲，从MDP开始在六节课之内介绍了深度强化学习的主要知识。

* UC Berkeley CS285 深度强化学习: [website](https://rail.eecs.berkeley.edu/deeprlcourse/) | [YouTube](https://www.youtube.com/playlist?list=PL_iWQOsE6TfVYGEGiAOMaOzzv41Jfm_Ps) 本课程的主讲老师是在RL领域著名的Berkeley的Sergey Levine教授，DRL领域许多著名的工作如SAC就出自他之手。Sergey在授课方面非常用心，本课程对DRL提供了非常详细的介绍。

* 李宏毅老师也有一套关于强化学习的课程: bilibili上课+刷蘑菇书巩固+gymnasium动手实践, 重点了解一下PPO。

  * 台湾大学李宏毅公开课: [bilibili](https://www.bilibili.com/video/BV1XP4y1d7Bk/?spm_id_from=333.337.search-card.all.click&vd_source=ab9cf5374617c2867aaea34af29b53c9)

  * EasyRL - 蘑菇书: [website](https://datawhalechina.github.io/easy-rl/#/), 基本是配套李宏毅老师的课程

  * 实践[gymnasium](https://gymnasium.farama.org/), 可以尝试一下把玩一下登月着陆等经典强化学习场景, 思考+动手, 观察阶段agent的表现并分析, 有助于深入理解强化学习

然而，深度强化学习的Reward Tuning和参数调整非常依赖于经验，建议读者在对深度强化学习有相关经验之后，可以自己尝试训练一个policy并在机器人上部署，体会其中的Sim-to-Real Gap。常用的仿真平台有[MuJoCo PlayGround](https://playground.mujoco.org/), [Isaac Lab](https://isaac-sim.github.io/IsaacLab/main/index.html), [SAPIEN](https://sapien.ucsd.edu/), [Genesis](https://github.com/Genesis-Embodied-AI/Genesis)等。

常用的Codebase有[legged-gym](https://github.com/leggedrobotics/legged_gym)（由ETH RSL开发，基于IsaacGym）等，也可以根据你想做的任务找到相近的codebase。

<section id="il"></section>

### 3.3.2 Imitation Learning - 模仿学习

* 《模仿学习简洁教程》 - 南京大学LAMDA: [PDF](https://www.lamda.nju.edu.cn/xut/Imitation_Learning.pdf)<br>
* Supervised Policy Learning for Real Robots, RSS 2024 Workshop 教程：真实机器人的监督策略学习, [bilibili](https://www.bilibili.com/video/BV1Fx4y1s7if/?buvid=XY415384A771A6C681C9BEB3817566ED57724&is_story_h5=false&mid=ORgXkVzTHaOKTsml0RX5Gw%3D%3D&plat_id=240&share_from=ugc&share_medium=android&share_plat=android&share_source=WEIXIN&share_tag=s_i&spmid=dt.space-dt.0.0&timestamp=1721464513&unique_k=Cqj5d9J&up_id=2185804&vd_source=ab9cf5374617c2867aaea34af29b53c9)


<!-- * 实践[RoboTwin]() -->

<section id="llm_robot"></section>

## 3.4 LLM for Robotics - 大语言模型在机器人学中的应用
为了促使机器人更好的规划, 现代具身智能工作常常利用大语言模型强大的信息处理能力与泛化能力进行规划。
* Robotics+LLM系列通过大语言模型控制机器人 [2]: [zhihu](https://zhuanlan.zhihu.com/p/668053911)<br>
* Embodied Agent wiki: [website](https://en.wikipedia.org/wiki/Embodied_agent)<br>
* Lilian Weng 个人博客 - AI Agent 系统综述 [5]: 中文: [website](https://mp.weixin.qq.com/s/Jb8HBbaKYXXxTSQOBsP5Wg) 英文: [website](https://lilianweng.github.io/posts/2023-06-23-agent/)<br>
* 过去一系列工作常常仅使用LLM作为High-Level的策略生成器 用作High-Level 规划
  * 经典工作(1) PaLM-E: [Arxiv](https://arxiv.org/abs/2303.03378)<br>
  * 经典工作(2) DO AS I CAN, NOT AS I SAY: [Arxiv](https://arxiv.org/abs/2204.01691)<br>
  * 经典工作(3) Look Before You Leap: [Arxiv](https://arxiv.org/abs/2311.17842)<br>
  * 经典工作(4) EmbodiedGPT: [Arxiv](https://arxiv.org/abs/2305.15021)<br>
* 同时也有一些工作将High-Level的策略规划与 Low-Level的动作生成进行统一
  * 经典工作(1) RT-2: [Arxiv](https://arxiv.org/abs/2307.15818)<br>
* 利用LLM的code能力实现具身智能是一个有趣的想法
  * 经典工作(1) Code as Policy: [Arxiv](https://arxiv.org/abs/2209.07753)<br>
  * 经典工作(2) Instruction2Act: [Arxiv](https://arxiv.org/abs/2305.11176)<br>
* 有一些工作将三维视觉感知同LLM结合起来，共同促进具身智能规划
  * VoxPoser [Arxiv](https://arxiv.org/abs/2307.05973)<br>
  * OmniManip [Arxiv](https://arxiv.org/abs/2501.03841)<br>

<section id="vla"></section>

## 3.5 Vision-Language-Action Models - VLA模型
**Vision-Language-Action Models（VLA模型）** 是一种结合VLM（Vision-Language Model）与机器人控制的模型，旨在将预训练的VLM直接用于生成机器人动作（RT-2中定义）。和以往利用VLM做planning以及build from strach的方法不同，VLA无需重新设计新的架构，将动作转化为token，微调VLM。

**VLA的特点**：端到端，使用LLM/VLM backbone，加载预训练模型, etc. 

目前的VLA可以从以下几个方面进行区分：模型结构&大小（如action head的设计, tokenize的方法如FAST），预训练与微调策略和数据集，输入和输出（2D vs. 3D | TraceVLA输入visual trace），不同的应用场景等。

**参考资料：**

* Blog:  [具身智能Vision-Language-Action的思考](https://zhuanlan.zhihu.com/p/9880769870), [zhihu](https://www.zhihu.com/question/655570660/answer/87040917575)

* Survey: [A Survey on Vision-Language-Action Models for Embodied AI](https://arxiv.org/abs/2405.14093) , 2024.11.28

**经典工作**：

* **Autoregressive Models**

  - **RT系列（Robotic Transformers）**:
    - **RT-1** ([paper](https://arxiv.org/abs/2409.12514))
    - **RT-2** ([page](https://robotics-transformer2.github.io/) | [paper](https://arxiv.org/abs/2307.15818), Google Deepmind, 2023.7)：55B
    - **RT-Trajectory** ([paper](https://arxiv.org/pdf/2311.01977), Google Deepmind, UCSD, 斯坦福 2023.11)
    - **AUTORT** ([paper](https://arxiv.org/abs/2401.12963), Google Deepmind, 2024.1)

  - **RoboFlamingo** ([paper](https://arxiv.org/abs/2311.01378) | [code](https://github.com/roboflamingo), 字节、清华, 2024.2)

  - **OpenVLA** ([paper](https://arxiv.org/pdf/2406.09246) | [code](https://github.com/openvla), OpenAI, 2024.6): 7B

  - **TinyVLA** ([paper](https://arxiv.org/abs/2409.12514), 上海大学, 2024.11)
  - **TraceVLA** ([paper](https://arxiv.org/pdf/2412.10345) | [code](), 微软，2024.12)

* **Diffusion Models for Action Head:**

  - **Octo** ([paper](https://arxiv.org/pdf/2405.12213) | [code](https://octo-models.github.io/), 斯坦福，伯克利, 2024.5): Octo-base (93M)

  - **π0** ([paper](https://arxiv.org/pdf/2410.24164) | [code](https://github.com/Physical-Intelligence/openpi), 斯坦福, physical intelligence, ) : 3.3B; flow-based diffusion VLA; PaliGemma (3B VLM);

  - **CogACT** ([paper](https://arxiv.org/pdf/2411.19650) | [code](https://github.com/microsoft/CogACT.git), 清华，MSRA, 2024.11): 7B

  - **Diffusion-VLA** ([paper](https://arxiv.org/abs/2412.03293) | [code](https://arxiv.org/pdf/2410.07864), 华东师范，上海大学，美的, 2024.12)

* **3D Vision:**
  - **3D-VLA** ([paper](https://arxiv.org/pdf/2403.09631) | [code](https://github.com/UMass-Foundation-Model/3D-VLA/tree/main), UMass, 2024.3): 3D-based LLM
  - **SpatialVLA** ([paper](https://arxiv.org/pdf/2501.15830) | [code](https://github.com/SpatialVLA/SpatialVLA) , 上海AI Lab, 2025.1): Adaptive Action Grid

* **VLA-related:**

  - **FAST (π0)** ([paper](https://arxiv.org/pdf/2410.24164), [code](https://github.com/Physical-Intelligence/openpi.git), 斯坦福，伯克利, physical intelligence, 2025.1):  autoregressive VLA

  - **RLDG** ([paper](https://generalist-distillation.github.io/static/high_performance_generalist.pdf) | [code](https://arxiv.org/abs/2410.01971), 伯克利, 2024.12 ): 强化学习（RL）生成高质量的训练数据进行微调

  - **BYO-VLA** ([paper](https://arxiv.org/abs/2410.01971) | [code](https://github.com/irom-princeton/byovla), 普渡大学, 2024.10): 运行时图像干预，有效降低VLA模型对任务无关视觉干扰的敏感度

* **Different Locomotion:**

  - **RDT-1B (双臂)** ([paper](https://arxiv.org/pdf/2410.07864) | [code](https://github.com/thu-ml/RoboticsDiffusionTransformer), 清华): 双臂控制的扩散模型

  - **QUAR-VLA (四足机器人)** ([paper](https://arxiv.org/pdf/2312.14457), 西湖大学，浙江大学, 2025.2.4)

  - **CoVLA (自动驾驶)** ([paper](https://arxiv.org/abs/2408.10845) | [page](https://turingmotors.github.io/covla-ad/), Turing, 2024.12)

  - **Mobility-VLA (导航)** ([paper](https://arxiv.org/pdf/2407.07775), Google Deepmind, 2024.7)

  - **NaVILA (腿式机器人导航)** ([paper](https://arxiv.org/pdf/2412.04453) | [code](https://navila-bot.github.io/), USCD, 2024.12)

<section id="cv"></section>

## 3.6 Computer Vision - 计算机视觉

CS231n (斯坦福计算机视觉课程): [website](https://cs231n.stanford.edu/schedule.html), 该课程对深度学习在计算机视觉的应用有较为全面的介绍。因为已经在具体实现某个论文的算法了, 所以这个阶段可以不用做作业, 只需要看课程视频和课程讲义即可。<br>

<section id="2dv"></section>

### 3.6.1 2D Vision - 二维视觉
* 2D Vision 领域的经典代表作
  * CNN (卷积神经网络): [link](https://easyai.tech/ai-definition/cnn/)
  * ResNet (深度残差网络): [bilibili](https://www.bilibili.com/video/BV1P3411y7nn/?spm_id_from=333.1387.collection.video_card.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * ViT (第一个将Transformer用在视觉领域): [bilibili](https://www.bilibili.com/video/BV15P4y137jb/?spm_id_from=333.1387.collection.video_card.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * Swin Transformer (披着Transformer皮的CNN): [bilibili](https://www.bilibili.com/video/BV13L4y1475U/?spm_id_from=333.1387.collection.video_card.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * 对比学习论文综述: [bilibili](https://www.bilibili.com/video/BV19S4y1M7hm/?spm_id_from=333.1387.collection.video_card.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
* 以判别式模型为主的感知任务, 比如识别、分类、分割、检测等等, 看看即可, 现在继续刷点意义不大
* 生成式模型
  * 自回归综述: [PDF](https://arxiv.org/pdf/2411.05902)
  * 扩散模型综述: [PDF](https://arxiv.org/pdf/2209.00796)
  * 如果对扩散模型的理论推导感兴趣, 可以看苏剑林老师的博客 - 生成扩散模型漫谈(推导非常清楚): [link](https://kexue.fm/archives/9119)

<section id="3dv"></section>

### 3.6.2 3D Vision - 三维视觉

* 三维视觉导论 - Andreas Geiger: [website](https://uni-tuebingen.de/fakultaeten/mathematisch-naturwissenschaftliche-fakultaet/fachbereiche/informatik/lehrstuehle/autonomous-vision/lectures/computer-vision/) （重点是完成课程里面的作业） <br>
* GAMES203 - 三维重建和理解: [bilibili](https://www.bilibili.com/video/BV1pw411d7aS/?share_source=copy_web&vd_source=0b7603f37af6d369a97df34525b149be)<br>
* 三维生成的一些经典论文:
  * Diffusion Model for 2D/3D Generation 相关论文分类: [link](https://zhuanlan.zhihu.com/p/617510702)
  * 3D生成相关论文-2024: [link](https://zhuanlan.zhihu.com/p/700895749)

<section id="4dv"></section>

### 3.6.3 4D Vision - 四维视觉
* 视频理解
  * 开山之作: [bilibili](https://www.bilibili.com/video/BV1mq4y1x7RU/?spm_id_from=333.1387.collection.video_card.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * 论文串讲: [bilibili](https://www.bilibili.com/video/BV1fL4y157yA?spm_id_from=333.788.videopod.sections&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * LLM时代的视频理解综述: [PDF](https://arxiv.org/pdf/2312.17432)
* 4D 生成
  * 视频生成博客(英文): [link](https://lilianweng.github.io/posts/2024-04-12-diffusion-video/)
  * 4D 生成的论文列表: [website](https://github.com/cwchenwang/awesome-4d-generation)

<section id="vp"></section>

### 3.6.4 Visual Prompting - 视觉提示

视觉提示是一种利用视觉输入引导大模型完成特定任务的方法，常用于具身智能领域。它通过提供示例图像、标注或视觉线索，让模型理解任务要求，而无需额外训练。例如，在机器人导航、操控等场景中，视觉提示可帮助模型适应新环境，提高泛化能力。相比传统方法，视觉提示具备更强的灵活性和可扩展性，使具身智能系统能够通过视觉信息快速适应复杂任务。

- 视觉提示综述：[paper](https://arxiv.org/abs/2409.15310)
- **PIVOT**, [page](https://pivot-prompt.github.io): 通过将任务转化为迭代式视觉问答，实现在无需特定任务数据微调的情况下，zero-shot控制机器人系统和进行空间推理。
- **Set-of-Mark Visual Prompting for GPT-4V**: [page](https://som-gpt4v.github.io)

<section id="cg"></section>

## 3.7 Computer Graphics - 计算机图形学

如果说计算机视觉是考虑图像之间的变化以及从图像到三维模型（三维重建和生成），那么计算机图形学主要研究的就是三维模型之间的变化以及从三维模型到图像的渲染过程。具身智能在开发和测试的时候离不开仿真器，而仿真也属于图形学的研究范畴。快速、高质量的渲染，并行化、准确的仿真一直是机器人仿真器追求的目标，而这一切通过计算机图形学来实现。

* 如果对传统图形学感兴趣, 可以看下面两门（闫令琪老师开的课, 讲得特别好）:<br>
  * **GAMES101 - 现代计算机图形学入门**: [website](https://games-cn.org/intro-graphics/)<br>
  * GAMES202 - 高质量实时渲染: [website](https://sites.cs.ucsb.edu/~lingqi/teaching/games202.html)<br>
* 如果对motion synthesis/computer animation感兴趣, 可以看:
  * GAMES105 - 计算机角色动画基础: [website](https://games-105.github.io/)<br>
* 如果对三维重建感兴趣, 可以看下面两门:
  * Nerf原理代码讲解: [bilibili](https://www.bilibili.com/video/BV1CC411V7oq/?spm_id_from=333.337.search-card.all.click&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
  * 3DGS原理代码讲解: [bilibili](https://www.bilibili.com/video/BV1zi421v7Dr?spm_id_from=333.788.recommend_more_video.-1&vd_source=930ef08bfb2ff0db87ec20bf72a99855)
* 三维预训练最新综述:
  * Advances in 3D pre-training and downstream tasks: a survey: [PDF](https://link.springer.com/content/pdf/10.1007/s44336-024-00007-4.pdf)<br>
* 3DGS在具身上的综述:
  * 3D Gaussian Splatting in Robotics: A Survey: [PDF](https://arxiv.org/pdf/2410.12262v2)<br>

<section id="mm"></section>

## 3.8 Multimodal Models - 多模态模型

> 多模态旨在统一来自不同模态信息的表征, 在具身智能中由于面对着机器识别的视觉信息与人类自然语言的引导信息等不同模态的信息，多模态技术愈发重要。
* 最经典的工作CLIP: [知乎](https://zhuanlan.zhihu.com/p/493489688)<br>
* 多模态大语言模型的经典工作 LLaVA: [website](https://llava-vl.github.io/)<br>

<section id="embodied-ai-4-x"></section>

## 3.9 Embodied AI for X - 具身智能+X

<section id="medical"></section>

### 3.9.1 EAI for Healthcare - 具身医疗

> 具身智能技术的迅猛发展正在引领医疗服务模式迈向革命性的新纪元。作为人工智能算法、先进机器人技术与生物医学深度融合的前沿交叉学科, 具身智能+医疗这一研究领域不仅突破了传统医疗的边界, 更开创了智能化医疗的新范式。其多学科协同创新的特质, 正在重塑医疗服务的全流程, 为精准医疗、远程诊疗和个性化健康管理带来前所未有的发展机遇, 推动医疗行业向更智能、更人性化的方向转型升级。这一领域的突破性进展, 标志着医疗科技正迈向一个全新的智能化时代。

#### 3.9.1.1 MLLM for Medical - 多模态大语言模型在医学中的应用
* 用于医学影像分析的通用人工智能综述: [website](https://arxiv.org/pdf/2306.05480)<br>
* 医学影像的通用分割模型-MedSAM： [website](https://www.nature.com/articles/s41467-024-44824-z.pdf)<br>
* 2024盘点：医学AI大模型, 从通用视觉到医疗影像: [NEJM医学前沿](https://mp.weixin.qq.com/s?__biz=MzIxNTc4NzU0MQ==&mid=2247550230&idx=1&sn=6baa8dcba12f3f70f4c8205a0f23b6a0&chksm=966df4ca45c8cbcaa0a5d2e42fbb4de92e6881f92981071ce7fda3bd1e13e4715f92415a9258&scene=27)<br>
* 医疗领域基础模型的发展机遇与挑战: [website](https://arxiv.org/pdf/2404.03264)<br>
* SkinGPT-4 for dermatological diagnosis: [website](https://www.nature.com/articles/s41467-024-50043-3)<br>
* PneumoLLM for pneumoconiosis diagnosis: [website](https://www.sciencedirect.com/science/article/abs/pii/S1361841524001737)<br>
* BiomedGPT: [website](https://github.com/taokz/BiomedGPT)<br>
* LLaVA-Med: [website](https://github.com/microsoft/LLaVA-Med?tab=readme-ov-file)<br>
* RoboNurse-VLA: [website](https://robonurse-vla.github.io)<br>
* PathChat 哈佛医学院Faisal Mahmood教授团队的病理大模型。临床上, 病理被称为诊断的金标准: [website](https://www.nature.com/articles/s41586-024-07618-3)<br>
* DeepDR-LLM 糖尿病视网膜病变 (DR)的专科垂域多模态大模型: [website](https://www.nature.com/articles/s41591-024-03139-8)<br>
* VisionFM 通用眼科人工智能的多模式多任务视觉基础模型: [website](https://ai.nejm.org/doi/full/10.1056/AIoa2300221)<br>
* Medical-CXR-VQA 用于医学视觉问答任务的大规模胸部 X 光数据集: [website](https://github.com/Holipori/Medical-CXR-VQA)<br>

#### 3.9.1.2 Medical Robotics - 医疗机器人
* 医疗机器人的五级自动化（医疗机器人领域行业共识）, 杨广中教授于2017年在Science Robotics上的论著: [Medical robotics—Regulatory, ethical, and legal considerations for increasing levels of autonomy](https://www.science.org/doi/pdf/10.1126/scirobotics.aam8638)<br>
* 医疗机器人的十年回顾(含医疗机器人的不同分类), 杨广中教授在Science Robotics上的综述文章：[A decade retrospective of medical robotics research from 2010 to 2020](https://www.science.org/doi/epdf/10.1126/scirobotics.abi8017)<br>
* 医疗具身智能的分级: [A Survey of Embodied AI in Healthcare: Techniques, Applications, and Opportunities](https://arxiv.org/pdf/2501.07468?)<br>
* Artificial intelligence meets medical robotics, 2023年发表在Science正刊上的论著: [website](https://www.science.org/doi/abs/10.1126/science.adj3312)<br>

* 医疗机器人的机器视觉
  * 3DGS在腔镜手术中的应用综述: [website](https://arxiv.org/pdf/2408.04426)<br>

* 达芬奇手术机器人是最为常用的外科手术机器人, 对于这类机器人自主技能操作的研究最为广泛
  * 通过模仿学习在达芬奇机器人上学习外科手术操作任务 Surgical Robot Transformer (SRT): [website](https://surgical-robot-transformer.github.io/)<br>
  * Domain-specific Simulators - 手术机器人技能学习领域的模拟器
    * SurRoL: RL-Centered and dVRK Compatible Platform for Surgical Robot Learning [website](https://med-air.github.io/SurRoL/)<br>
    * Surgical Gym: A high-performance GPU-based platform for surgical robot learning (ICRA 2024, work in progress, based on NVIDIA Omniverse): [website](https://github.com/SamuelSchmidgall/SurgicalGym)<br>
    * ORBIT-Surgical: An Open-Simulation Framework for Learning Surgical Augmented Dexterity  (ICRA 2024, based on NVIDIA Omniverse): [website](https://orbit-surgical.github.io/)<br>

* 连续体和软体手术机器人作为柔性医疗机器人的重要分支, 凭借其独特的结构设计和材料特性, 在微创介入诊疗领域展现出显著优势。它们能够灵活进入人体狭窄腔体, 实现精准操作, 同时最大限度地减小手术创口, 降低患者术后恢复时间及感染风险, 为现代微创手术提供了创新性的技术解决方案。
  * 连续体机器人在医疗领域的应用 (Nabil Simaan; Howie Choset等): [Continuum Robots for Medical Interventions](https://ieeexplore.ieee.org/abstract/document/9707607)<br>
  * 软体手术机器人在微创介入手术中的应用 (Ka-wai Kwok; Kaspar Althoefer等)： [Soft Robot-Assisted Minimally Invasive Surgery and Interventions: Advances and Outlook](https://ieeexplore.ieee.org/abstract/document/9765966/authors#authors)<br>
* 连续体和软体机器人因其超冗余自由度和高度非线性的结构特性, 采用传统的控制与传感方法构建正逆运动学方程时面临显著的计算复杂性和建模局限性。传统方法难以精确描述其多自由度耦合运动及环境交互中的动态响应。为此, 基于数据驱动的智能控制方法（如深度学习、强化学习及自适应控制算法）成为解决这一问题的前沿方向。这些方法能够通过大量数据训练, 高效学习系统的非线性映射关系, 显著提升运动控制的精度、自适应性和鲁棒性, 为复杂医疗场景下的机器人操作提供了更为可靠的技术支撑。
    * 什么是软体机器人？软体机器人的具身智能定义: [知乎, by Ke WU from MBUZAI](https://www.zhihu.com/question/61637360/answer/92834447300?utm_psn=1870238291607040000)<br>
    * IROS 2024大会Program Chair新加坡国立大学Cecilia Laschi教授的论著: [Learning-Based Control Strategies for Soft Robots: Theory, Achievements, and Future Challenges](https://ieeexplore.ieee.org/abstract/document/10136428)<br>
    * 软体机器人中具身智能物理建模简明指南（也是出自NUS Cecilia教授团队）: [A concise guide to modelling the physics of embodied intelligence in soft robotics](https://inria.hal.science/hal-03921606/document)<br>
    * 数据驱动方法在软体机器人建模与控制中的应用: [Data-driven methods applied to soft robot modeling and control: A review](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=10477253)<br>

* 微纳机器人技术是一类集成了微纳米制造、生物工程和智能控制等多学科前沿技术的微型机器人系统。凭借其微纳米级的独特尺寸、优异的生物相容性和精准的操控性能，这一前沿技术为现代医学诊疗范式带来了突破性创新。在精准诊断方面，微纳机器人能够深入人体微观环境，实现细胞乃至分子水平的实时监测；在靶向治疗领域，其可作为智能药物载体，实现病灶部位的精准定位与可控释放；在微创手术应用中，微纳机器人系统为复杂外科手术提供了前所未有的精确操作平台。这些创新性应用不仅显著提升了诊疗效率，更为攻克重大疾病提供了全新的技术途径，推动着现代医学向更精准、更微创、更智能的方向发展。
    * 微纳机器人的机器学习(CUHK 张立教授团队在Nature Machine Intelligence上的论著): [Machine learning for micro- and nanorobots](https://www.nature.com/articles/s42256-024-00859-x)<br>

<section id="uav"></section>

### 3.9.2 UAV - 无人机
无人机的发展来源于：
1. 从外部传感设备保护发展至机载传感与计算；
2. 从遥控/预先编程发展至自主。

不同于legged locomotion和manipulation，在无人机领域，data-driven的方法与model-based/modular的方法在不同任务中的优势不同，仍处于分庭抗礼的阶段。这主要是因为无人机的模型与驱动模式较为简单（如四旋翼的驱动机构只有四个电机），且传统的无人机（即不具有操作设备）不会与环境产生交互，因此基于模型、优化和分层的方法，通过良好的状态机/规则设计和高效的局部优化技术，仍能够被赋予很强的性能。然而，无人机的难点在于其状态估计（通常需要）、感知和底层驱动充满噪声，这是因为小型化无人机的负载能力十分有限以及其成本被尽可能压低，因此在一些任务中data-driven/端到端的方法展现出了远超于传统方法的性能。因此，以下对无人机data-driven资料介绍的同时会穿插其与传统方法的对比，以便大家了解整个领域发展的动机。

总体而言，无人机的研究分为三个部分：
1. 技能实现/学习，例如避障、竞速、大机动飞行/特技等；
2. 任务实现/学习，例如探索、重建、跟踪等；
3. 飞行机器人本体设计。

无人机工作的开源代码并不多且良莠不齐，大部分需要通过论文学习。

### 3.9.2.1 技能实现/学习
- **支持RL的仿真器**
  
  无人机的仿真器普遍并不强大，并且几乎没有开源的RL sim2real项目。基于开源代码需要较大的内容改动才能实现理想的sim2real performance。
  - **AirSim** （ https://microsoft.github.io/AirSim/ ）：基于UE4引擎，具有较为逼真动力学transition模拟。缺点是UE4底层功能较难修改并且运行速度较慢。
  - **Flightmare** （ https://github.com/uzh-rpg/flightmare ）：基于Unity渲染，CPU并行动力学。
  - **AerialGym** （ https://github.com/ntnu-arl/aerial_gym_simulator ）：基于IsaacSim，GPU并行动力学。

- **经典技能代表性工作**

  我们主要介绍一些data-driven方法在经典任务上的应用。值得一提的是，以下的工作中，出现了一些摆脱了对SLAM系统和里程计依赖的方法（而无人机最初的兴起正是依靠SLAM/里程计系统的日益成熟），将成为无人机技能学习中有趣的进展方向。
  - **未知场景障碍物躲避**
    - Learning Monocular Reactive UAV Control in Cluttered Natural Environments. ICRA 2013, CMU. 受自动驾驶发展启发，第一个使用监督学习将图像映射为离散上游控制指令的系统。
    - CAD2RL: Real Single-Image Flight without a Single Real Image. RSS 2017，UCB. 第一个使用sim2real RL，对单目RGB图像进行大量domain randomization，在长廊中输出速度指令的系统。
    - DroNet: Learning to Fly by Driving. RAL 2018, UZH. 利用自动假设数据集让飞机输出速度指令，代码开源（ https://github.com/uzh-rpg/rpg_public_dronet ）。
    - Learning High-Speed Flight in the Wild. SciRob 2021, UZH. 使用dagger利用传统轨迹规划进行监督学习。文章claim网络推理的低延迟可以使未知环境中飞行速度更快。代码开源（ https://github.com/uzh-rpg/agile_autonomy ）。
    - Back to Newton's Laws: Learning Vision-based Agile Flight via Differentiable Physics, Arxiv 2024, SJTU. 用differentiable physics提供的一阶梯度做策略优化，不需要显式的位置和速度估计。文章用低分辨率深度图，训练避障比RL更高效，实现高速飞行。
    - Flying on Point Clouds using Reinforcement Learning. Arxiv 2025, ZJU. 使用机载雷达和sim2real RL实现自主避障。
    - 值得一提的是，作为无人机最常用的任务，避障现在最常用的还是传统方法的系统如开源的ego-planner（ https://github.com/ZJU-FAST-Lab/ego-planner ），由于这样的方案已经足以胜任大部分场景（而不像四足的MPC），因此在实际应用中比较少使用data-driven的方案。

  - **无人机竞速**
    - Champion-level drone racing using deep reinforcement learning. Nature 23, UZH. 用强化学习战胜人类冠军飞手, 近几年无人机领域影响力最高的文章，是UZH RPG实验室多年来深厚工程积累的结果，其中的RL方案较为简单直接。
    - Reaching the Limit in Autonomous Racing: Optimal Control versus Reinforcement Learning. SciRob 23, UZH. 强化学习与最优控制方法竞速飞行对比。
    - Demonstrating Agile Flight from Pixels without State Estimation. RSS 2024, UZH. 使用视觉，不需要显式状态估计的现实世界竞速demo。
    - UZH的Perception and Robotics Group (RPG) 使用最优控制和RL的方法在竞速上有诸多尝试，使得无人机在固定轨道上达到最快飞行速度。

  - **大机动/特技飞行**
    - Deep Drone Acrobatics. RSS 2020, UZH. 使用模仿学习，从视觉特征点中学习MPC的轨迹跟踪，实现姿态剧烈变化的特技飞行。
    - Whole-Body Control Through Narrow Gaps From Pixels to Action. ICRA 2025, ZJU. 使用强化学习实现视觉端到端窄缝穿越，不需要显式的位置和速度估计，超越传统方法性能。

- **经典任务实现代表性工作**
  - **追捕**
    - HOLA-Drone: Hypergraphic Open-ended Learning for Zero-Shot Multi-Drone Cooperative Pursuit. Arxiv 2024, University of Manchester.
    - Multi-UAV Pursuit-Evasion with Online Planning in Unknown Environments by Deep Reinforcement Learning. Arxiv 2024, THU.
  - **探索**
    - Deep Reinforcement Learning-based Large-scale Robot Exploration, Arxiv2024, National University of Singapore (NUS). 利用注意力机制学习不同空间尺度的依赖关系，对未知区域进行隐式预测，优化已知空间探索策略，提高探索效率。
    - ARiADNE: A Reinforcement learning approach using Attention-based Deep Networks for Exploration, Arxiv2023, National University of Singapore (NUS). 学习已知不同区域在多个空间尺度上的相互依赖关系，并隐式预测探索这些区域可能获得的潜在收益。这使得代理能够安排行动顺序，以平衡在已知区域对地图进行开发/细化与探索新区域之间的自然权衡。
    - DARE: Diffusion Policy for Autonomous Robot Exploration. Arxiv2024, National University of Singapore (NUS). DARE方法利用self-attention学习地图空间信息，并通过diffusion生成通往未知区域的轨迹，以提高自主机器人的探索效率。

### 3.9.2.2 无人机硬件平台搭建
手搓一个遥控器操控的穿越机不是一个很难的事情，网上有很多爱好者分享教程。但想搭建一个具有自主导航功能的无人机并非易事，是一个系统工程，这里推荐浙大FAST-lab开源的教程：

- [从0制作自主空中机器人](https://www.bilibili.com/video/BV1WZ4y167me/?spm_id_from=333.1387.homepage.video_card.click&vd_source=875782ad8340a833a05fa20f1ae0baa5)

### 3.9.2.3 新构型无人机设计
除了常规用于航拍，环境探索的四旋翼无人机，想让无人机具备更多能力，应用于更广泛的具身智能场景，除了算法上的创新外，也需要在硬件层面对无人机的构型进行创新设计。

- **空中机械臂（Aerial Manipulator）** 

    空中机械臂，也叫空中操作无人机，兼具无人机的快速空间移动能力和机械臂的精确操纵能力，是具身智能的一种理想载体。西湖大学赵世钰老师组在知乎上有一系列文章介绍：

    - [空中作业机器人，下一代无人机技术？](https://zhuanlan.zhihu.com/p/442331197)
    - [空中作业机器人—没那么简单！](https://zhuanlan.zhihu.com/p/487203757)
    - [空中操作机器人：如何设计机械臂？](https://zhuanlan.zhihu.com/p/509669272)
    - [空中作业机器人都有哪些应用？](https://zhuanlan.zhihu.com/p/517471760)

    * 代表性工作
        * [Past, Present, and Future of Aerial Robotic Manipulators](https://ieeexplore.ieee.org/document/9462539). TRO 2022. 空中机械臂领域目前最全的综述文章，入门了解必备。
        * [Millimeter-Level Pick and Peg-in-Hole Task Achieved by Aerial Manipulator](https://ieeexplore.ieee.org/abstract/document/10339889). TRO 2023, BHU. 使用四旋翼加串联机械臂实现毫米精度peg-in-pole任务。
        * [NDOB-Based Control of a UAV with Delta-Arm Considering Manipulator Dynamics](https://arxiv.org/abs/2501.06122) [[Video](https://www.bilibili.com/video/BV16Zt5eBEPW/?spm_id_from=333.1387.homepage.video_card.click&vd_source=875782ad8340a833a05fa20f1ae0baa5)]. ICRA 2025, SYU. 使用四旋翼加并联机械臂实现毫米精度抓取。
        * [A Compact Aerial Manipulator: Design and Control for Dexterous Operations](https://link.springer.com/article/10.1007/s10846-024-02090-7) [[Video](https://www.bilibili.com/video/BV1CC4y1Z7xS/?spm_id_from=333.1387.homepage.video_card.click)]. JIRS 2024, BHU. 用空中机械臂做一些有趣的应用，比如抓鸡蛋、开门等等。

- **全驱动无人机（Fully-Actuated UAV）**

    常见的四旋翼无人机具有欠驱动特性，即位置与姿态耦合。而具有位置姿态解耦控制的全驱动无人机，理论上更适合作为空中操作的飞行平台。

    * 代表性工作
        * [Fully Actuated Multirotor UAVs: A Literature Review](https://ieeexplore.ieee.org/document/8978486/?arnumber=8978486). RAM 2020. 全驱动无人机领域目前最全的综述文章，入门了解必备。
        * [Design, modeling and control of an omni-directional aerial vehicle](https://ieeexplore.ieee.org/document/7487497). ICRA 2016, ETH. 第一个实现全向飞行的固定倾角全驱动无人机。
        * [The Voliro omniorientational hexacopter: An agile and maneuverable tiltable-rotor aerial vehicle](https://ieeexplore.ieee.org/document/8485627). RAM 2018, ETH. 第一个实现全向飞行的可变倾角全驱动无人机 
        * FLOAT Drone: A Fully-actuated Coaxial Aerial Robot for Close-Proximity Operations. Arxiv 2025, ZJU. 适合近端作业的小尺寸全驱动无人机。

- **可变形无人机（Deformable UAV）**

    除了通过往飞行平台上安装机械臂，让无人机本体可以变形，也是使其实现更多功能的一种方法。

    * 代表性工作
        * [Design, Modeling, and Control of an Aerial Robot DRAGON: A Dual-Rotor-Embedded Multilink Robot With the Ability of Multi-Degree-of-Freedom Aerial Transformation](https://ieeexplore.ieee.org/document/8258850). RAL 2018，东京大学. Best paper award on UAV in ICRA 2018，多关节可变形无人机。
        * [The Foldable Drone: A Morphing Quadrotor That Can Squeeze and Fly](https://ieeexplore.ieee.org/document/8567932?arnumber=8567932). RAL 2019, Uzh. 四旋翼每个机臂上安装一个舵机，实现机体变形飞行。
        * [Ring-Rotor: A Novel Retractable Ring-Shaped Quadrotor With Aerial Grasping and Transportation Capability](https://ieeexplore.ieee.org/document/10044964) [[Video](https://www.bilibili.com/video/BV1gY4y1K723/?spm_id_from=333.1387.upload.video_card.click)]. RAL 2023, ZJU. 一种可变形的环形四旋翼，可用于抓取、运输等任务。
        * [Design and Control of a Passively Morphing Quadcopter](https://ieeexplore.ieee.org/document/8794373) [[Video](https://www.youtube.com/watch?v=MSvoQT__c9U)]. ICRA 2019, UCB. 一种被动变形的四旋翼无人机。

- **多模态无人机（Multi-Modal UAV）**

    无人机与地面机器人相比，其优势在于三维空间运动能力，劣势则是续航差。因此一些研究关注多模态无人机的构型设计、运动控制以及自主导航。多模态无人机具备空中、地面、水下等多域运动能力。这不仅能解决无人机的续航问题，也能让无人机具有更多应用潜力。

    * 代表性工作
        * [A bipedal walking robot that can fly, slackline, and skateboard](https://www.science.org/doi/10.1126/scirobotics.abf8136). SR 2021, Caltech. 多模态空地足式机器人。
        * [Multi-Modal Mobility Morphobot (M4) with appendage repurposing for locomotion plasticity enhancement](https://www.nature.com/articles/s41467-023-39018-y). NC 2023, Northeastern University. 具有很多种运动模式的多模态无人机。
        * [Skater: A Novel Bi-Modal Bi-Copter Robot for Adaptive Locomotion in Air and Diverse Terrain](https://ieeexplore.ieee.org/document/10538378) [[Video](https://www.bilibili.com/video/BV1y2421M7HM/?spm_id_from=333.1387.upload.video_card.click&vd_source=875782ad8340a833a05fa20f1ae0baa5)]. RAL 2024, ZJU. 适应多样地形的多模态空地双旋翼无人机。
        * [Autonomous and Adaptive Navigation for Terrestrial-Aerial Bimodal Vehicles](https://ieeexplore.ieee.org/document/9691888). RAL 2022, ZJU. 实现空地多模态无人机的自主导航。


<section id="ad"></section>

### 3.9.3 Autonomous Driving - 自动驾驶

[自动驾驶之心](https://www.zdjszx.com/) （也有个微信公众号）

自动驾驶被称为“最小的具身智能验证场景”，这是因为它在具身智能的框架中，具备完整的感知、决策和行动闭环，但任务目标明确、物理交互简单、场景复杂性相对较低。作为一个技术验证场景，自动驾驶既能体现具身智能的核心特性，又为更复杂的具身智能任务提供了技术积累和理论支持。

#### Model：自动驾驶仿真

[生成式仿真为具身智能释放无限灵感](https://bydrug.pharmcube.com/news/detail/80b67b2227879864af934e5f81835776)

自动驾驶仿真是自动驾驶技术开发中不可或缺的一部分。它通过提供安全、高效、可控的测试环境，不仅降低了研发成本和风险，还加速了技术的迭代和规模化部署。同时，仿真能够覆盖大量现实中难以复现的场景，为自动驾驶系统的安全性、可靠性和泛化能力提供了重要保障。

1. 3D/4D 场景重建

* 经典论文：NSG, MARS, StreetGaussians
  * https://openaccess.thecvf.com/content/CVPR2021/html/Ost_Neural_Scene_Graphs_for_Dynamic_Scenes_CVPR_2021_paper.html
  * https://arxiv.org/abs/2307.15058
  * https://arxiv.org/abs/2401.01339

2. 场景可控生成（世界模型）

* 经典论文：MagicDrive -> MagicDriveDiT, SCP-Diff, UniScene
  * https://arxiv.org/abs/2411.13807
  * https://arxiv.org/abs/2403.09638
  * https://arxiv.org/abs/2412.05435

#### Policy：自动驾驶策略

1. 从模块化到端到端

* 经典的模块化管线中，每个模型作为一个独立的组件，负责对应的特定任务（3D目标检测与跟踪 & BEV 建图 -> 目标运动预测 -> 轨迹规划），这种设计已逐渐被端到端模型所取代。

[End-to-end Autonomous Driving: Challenges and Frontiers](https://arxiv.org/pdf/2306.16927)

2. 快系统与慢系统并行

[理想端到端-VLM双系统](https://www.sohu.com/a/801987742_258768)

* 快系统经典论文：UniAD (CVPR 2023 Best Paper), VAD, SparseDrive, DiffusionDrive
  * https://arxiv.org/abs/2212.10156
  * https://arxiv.org/abs/2303.12077
  * https://arxiv.org/abs/2405.19620
  * https://arxiv.org/abs/2411.15139
  * 快系统的 Scale up 特性探究：https://arxiv.org/pdf/2412.02689
* 慢系统经典论文：DriveVLM, EMMA
  * https://arxiv.org/abs/2402.12289
  * https://arxiv.org/abs/2410.23262
  	- **[Open-EMMA](https://github.com/taco-group/OpenEMMA)** 是EMMA的一个开源实现，提供了一个用于自动驾驶车辆运动规划的端到端框架。


#### 未来发展方向

[AIR ApolloFM技术全解读](https://air.tsinghua.edu.cn/info/1007/2258.htm)



<section id="hardware"></section>

# 4. Hardware - 硬件

> 具身智能硬件方面涵盖多个技术栈, 如嵌入式软硬件设计, 机械设计, 机器人系统设计, 这部分知识比较繁杂, 适合想要专注此方向的人
> 关于硬件部分的学习, 最好从实践出发！

<section id="embedded"></section>

## 4.1 Embedded - 嵌入式
* 嵌入式学习路线: [CSDN](https://blog.csdn.net/wangshuaiwsws95/article/details/107830452)
* 51单片机：[BiliBili](https://www.bilibili.com/video/BV1Mb411e7re/), 经典江科大自动协出品
* Stm32单片机：[BiliBili](https://www.bilibili.com/video/BV1th411z7sn/), 经典江科大自动协出品
* Stm32电机驱动：[BiliBili](https://www.bilibili.com/video/BV1AZ4y1V7wt/?spm_id_from=333.337.search-card.all.click&vd_source=a83ed9f5a5c724720d224bdca866789e), 野火
* 野火Stm32标准库：[BiliBili](https://www.bilibili.com/video/BV1yW411Y7Gw/?spm_id_from=333.337.search-card.all.click&vd_source=a83ed9f5a5c724720d224bdca866789e), 野火
* 正点原子Stm32：[BiliBili](https://www.bilibili.com/video/BV1Lx411Z7Qa/?spm_id_from=333.337.search-card.all.click&vd_source=a83ed9f5a5c724720d224bdca866789e), 正点原子
* 韦东山嵌入式Linux：[BiliBili](https://www.bilibili.com/video/BV1w4411B7a4/?spm_id_from=333.337.search-card.all.click&vd_source=a83ed9f5a5c724720d224bdca866789e), 韦东山

<section id="mechanical"></section>

## 4.2 Mechanical Design - 机械设计

* SoildWorks教学：[BiliBili](https://www.bilibili.com/video/BV1iw411Z7HZ/?spm_id_from=333.337.search-card.all.click&vd_source=a83ed9f5a5c724720d224bdca866789e)
* URDF生成：[CSDN](https://blog.csdn.net/weixin_45168199/article/details/105755388), 指导如何通过SolidWorks装配体出发生成机器人URDF文件。
  
<section id="robosystem"></section>

## 4.3 Robot System Design - 机器人系统设计

* 《机器人学简介》, 来自[2]做的高质量教材: [PDF](./files/%E6%9C%BA%E5%99%A8%E4%BA%BA%E5%AD%A6%E7%AE%80%E4%BB%8B.pdf)

* 《机器人系统教材》: [website](https://motion.cs.illinois.edu/RoboticSystems/)

<section id="control"></section>

## 4.4 Control - 控制学

* ROS基础:
  * 具身智能ROS1基础: [website](http://www.autolabor.com.cn/book/ROSTutorials/)
  * 具身智能ROS2基础: [website](https://zhangzhiwei-zzw.github.io/ROS2%E5%AD%A6%E4%B9%A0/ROS2/)
  
* 基础控制理论:
  * PID控制：[CSDN](https://blog.csdn.net/name_longming/article/details/115093338)
  * 彻底搞懂阻抗控制、导纳控制、力位混合控制: [CSDN](https://blog.csdn.net/a735148617/article/details/108564836)
  * Modern Control Systems (14th edition), Robert. H. Bishop, Richard. C, Dorf. z: [Book](http://103.203.175.90:81/fdScript/RootOfEBooks/E%20Book%20collection%20-%202024/EEE/Modern_control_systems_Robert_H_Bishop_Richard_C_Dorf_z_lib_org.pdf#page=1.00&gsr=0)

  * 机械臂运动学
  > 想要快速了解什么是IK FK的同学可以看这个7分钟的短片, 可以对此建立一个粗略的认知：[BiliBili](https://www.bilibili.com/video/BV18E411v7F9/?spm_id_from=333.337.search-card.all.click&vd_source=b14220472557bfa1918f3d0faa38bdc1)<br>
  > 较为简单的过一遍IK和FK的原理可以看这个：[CSDN](https://blog.csdn.net/Dwzsa/article/details/142386529?spm=1001.2101.3001.6650.3&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ECtr-3-142386529-blog-109314877.235%5Ev43%5Epc_blog_bottom_relevance_base7&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ECtr-3-142386529-blog-109314877.235%5Ev43%5Epc_blog_bottom_relevance_base7&utm_relevant_index=6) 
    * IK (Inverse Kinematics) 逆运动学
      * 较为详细的视频课
        * [BiliBili IK(1)](https://www.bilibili.com/video/BV1PD4y1t7xP/?spm_id_from=333.337.search-card.all.click&vd_source=b14220472557bfa1918f3d0faa38bdc1)
        * [BiliBili IK(2)](https://www.bilibili.com/video/BV1Tt4y1T79Z?spm_id_from=333.788.recommend_more_video.0&vd_source=b14220472557bfa1918f3d0faa38bdc1)
      * 文字教学
        * [Book](https://motion.cs.illinois.edu/RoboticSystems/InverseKinematics.html), 较为详细的IK理论
  
    * FK (Forward Kinematics) 正运动学
      * 较为详细的视频课
        * [BiliBili FK(1)](https://www.bilibili.com/video/BV1Ve4y127Uf?spm_id_from=333.788.recommend_more_video.0&vd_source=b14220472557bfa1918f3d0faa38bdc1)
        * [BiliBili FK(2)](https://www.bilibili.com/video/BV1a14y157uL?spm_id_from=333.788.videopod.sections&vd_source=b14220472557bfa1918f3d0faa38bdc1)
      
   * 经典教材
     * 《机构学与机器人学的几何基础与旋量代数》 戴建生院士 著
     * 《现代机器人学：机构、规划与控制》凯文·M. 林奇, 朴钟宇 著
     * 《机器人学的现代数学理论基础》丁希仑 著
    
    * 常用的库 
      * cuRobo：[cuRobo](https://curobo.org/), cuRobo是Nvidia的一个利用 CUDA 加速的机器人库, 提供了一套高效的机器人算法, 主要通过并行计算显著提升性能, 包括但不限于IK, 碰撞检测, 路径规划等。
      * IKFast：[IKFast](https://moveit.github.io/moveit_tutorials/doc/ikfast/ikfast_tutorial.html), 经典IK库。
      * mplib：[mplib](https://github.com/haosulab/mplib), Maniskill Benchmark以及Sapien仿真平台的IK库。

* ROS多传感器时间戳同步：[website](https://blog.csdn.net/qq_43495930/article/details/125649446)

* 动手实践LeRobot SO-100：[website](https://huggingface.co/lerobot)


<section id="sensors"></section>

## 4.5 Sensors - 传感器
Coming Soon !

<section id="tactile"></section>

## 4.6 Tactile Sensing - 触觉感知

### 1. 视触觉传感器（Vision-Based Tactile Sensors）


视触觉传感器通过摄像头捕捉触觉信息，将触摸表面变形映射为视觉数据，以估计接触力、形变等信息。其设计涉及 **传感器形状**（影响接触范围与适应性）、**标记点设置**（追踪表面形变，提高分辨率）、**材料选择**（如硅胶或弹性体，提高灵敏度）以及 **光照与摄像系统**（增强视觉信号质量）。

* **优点**：提供高分辨率触觉信息、非侵入式感知、不影响物体表面特性，并且可与视觉系统集成，提高多模态感知能力。  
* **缺点**：计算量大，依赖视觉处理和机器学习；易受环境光影响；光学设计复杂，封装和耐用性受限。

 **参考文献综述**：写的非常详细，分别是算法和结构设计
- 算法：*[When Vision Meets Touch: A Contemporary Review for Visuotactile Sensors From the Signal Processing Perspective
](https://ieeexplore.ieee.org/document/10563188)*
- 结构：*[On the Design and Development of Vision-Based Tactile Sensors](https://link.springer.com/article/10.1007/s10846-021-01431-0)*

### 2. 电子皮肤（Electronic Skin）

触觉感知的路径主要就是这两类。电子皮肤模拟人类皮肤的触觉能力，通常采用柔性电子材料（如压力传感薄膜、纳米传感器网络等）来感知外界压力、温度和形变，使机器人具备更接近生物的触觉感知能力。

* **优点**：电子皮肤可 **大面积覆盖** 机器人表面，实现全身触觉感知；具有 **高灵敏度**，能够检测微小的力变化，实现精准反馈；同时 **可伸缩性** 使其适应复杂表面，提高耐久性。
* **缺点**：电子皮肤的 **制造复杂**，材料和工艺要求高，成本较高；**数据处理挑战**，大规模触觉数据需要高效的计算与存储方案；此外，**稳定性问题** 可能导致长期使用后灵敏度下降，影响可靠性。


 **参考文献综述**：*[Toward an AI Era: Advances in Electronic Skins](https://pubs.acs.org/doi/10.1021/acs.chemrev.4c00049)*

### 3. 触觉感知的应用和算法（视触觉）

* 3.1 姿态估计（Pose Estimation）
  * 估计in hand物体姿态
    * *[3D Shape Perception from Monocular Vision, Touch, and Shape Priors](https://arxiv.org/abs/1808.03247)*
  * in scene
    * *[Fast Model-Based Contact Patch and Pose Estimation for Highly Deformable Dense-Geometry Tactile Sensors](https://ieeexplore.ieee.org/document/8936859)*

* 3.2 物体分类（Classification）
  * 区分不同液体、材料或透明物体。
    * *[Understanding Dynamic Tactile Sensing for Liquid Property Estimation](https://arxiv.org/abs/2205.08771)*
    * *[Multimode Fusion Perception for Transparent Glass Recognition](https://www.semanticscholar.org/paper/Multimode-fusion-perception-for-transparent-glass-Zhang-Shan/90109f2eabba717d152a599fc8d8d5a3677c85e5)*

* 3.3 触觉操控（Manipulation）
  * 物体装配
    * *[Active Extrinsic Contact Sensing: Application to General Peg-in-Hole Insertion](https://ieeexplore.ieee.org/abstract/document/9812017)*
    * *[Building a Library of Tactile Skills Based on Fingervision](https://ieeexplore.ieee.org/abstract/document/9035000)*
  * 线缆整理
    * *[Cable Manipulation with a Tactile-Reactive Gripper](https://arxiv.org/abs/1910.02860)*
  * 精细手部操作
    * *[Manipulation by Feel: Touch-Based Control with Deep Predictive Models](https://arxiv.org/abs/1903.04128)*
    * *[NeuralFeels with Neural Fields: Visuotactile Perception for In-Hand Manipulation](https://www.science.org/doi/10.1126/scirobotics.adl0628)*

* 3.4 触觉大模型（Large Tactile Models）
  * 以统一多模态触觉表示，提高通用性。
    * *[Binding Touch to Everything: Learning Unified Multimodal Tactile Representations](https://openaccess.thecvf.com/content/CVPR2024/papers/Yang_Binding_Touch_to_Everything_Learning_Unified_Multimodal_Tactile_Representations_CVPR_2024_paper.pdf)*

### 4. 传感器购买

市面上有一些成熟的视触觉传感器可供选择 🔗 **[GelSight 官网](https://gelsight.com/)**






<section id="companies"></section>

## 4.7 Companies - 公司

| 公司 | 主营产品 | Others |
|-------|------|------|
| [松灵AgileX](https://www.agilex.ai/) | [pipper机械臂](https://www.agilex.ai/chassis/16)<br>移动底盘 | 面向教育科研
| [宇树Unitree](https://www.unitree.com/cn) | [Go2机器狗](https://www.unitree.com/cn/go2)<br>[通用人形H1](https://www.unitree.com/cn/h1)<br>[通用人形G1](https://www.unitree.com/cn/g1)<br> | 许多产出使用宇树的机器人作为硬件基础
| [方舟无限ARX](https://www.arx-x.com/?product/) | [X5机械臂](https://www.arx-x.com/?product/21.html)<br>[X7双臂平台](https://www.arx-x.com/?product/23.html)<br>[R5机械臂](https://www.arx-x.com/?product/22.html)  | 适合复现很多经典的工作, eg. [aloha](https://mobile-aloha.github.io/cn.html)<br>[RoboTwin松灵底盘+方舟臂](https://github.com/TianxingChen/RoboTwi)
| [波士顿动力](https://bostondynamics.com/)  | [spot机器狗](https://bostondynamics.com/products/spot/)<br>[Atlas通用人形](https://bostondynamics.com/atlas/)  | 具身智能本体制造商, 从液压驱动转向电机驱动 |
| [灵心巧手](https://www.linkerbot.cn/index) |  |  |
| [灵巧智能DexRobot](https://www.dex-robot.com/)| [Dexhand 021灵巧手](https://www.dex-robot.com/productionDexhand) | 19自由度量产灵巧手 |
| [银河通用](https://www.galbot.com/about) |  | 已完成多轮融资 |
| [星海图Galaxea](http://galaxea.tech/) | [A1机械臂](http://galaxea.tech/Introducing_Galaxea_Robot/product_info/A1/#discover-more) |  |
| [World Labs](https://www.worldlabs.ai/) | | 专注于空间智能, 致力于打造大型世界模型（LWM）, 以感知、生成并与 3D 世界进行交互。 [相关介绍](https://mp.weixin.qq.com/mp/wappoc_appmsgcaptcha?poc_token=HEH5X2ejkAoWy1ZXj8DlZO_Y2Q7PsYX-3ID-rfr5&target_url=https%3A%2F%2Fmp.weixin.qq.com%2Fs%2Fi58_yTFtt904haKezJgr1Q) |
| [星动纪元](https://www.robotera.com) | [Star1人形](https://www.robotera.com/goods/1.html)<br> [XHAND1灵巧手](https://www.robotera.com/goods/2.html) | |
| [加速进化](https://boosterobotics.com/zh/) | [Booster T1人形](https://boosterobotics.com/zh/store/)|  |
| [青龙机器人](https://www.openloong.net/) |  |  |
| [科技云深处](https://www.deeprobotics.cn/) |  [绝影X30四足机器人](https://www.deeprobotics.cn/robot/index/product3.html)<br> [Dr.01人形机器人](https://www.deeprobotics.cn/robot/index/humanoid.html) |  |
| [松应科技](http://www.orca3d.cn/) |  | 具身智能仿真平台供应商 |
| [光轮智能](https://lightwheel.net/) |  | 具身智能数据平台 |
| [智元机器人](https://www.zhiyuan-robot.com/about/167.html) | [A2人形机器人](https://www.zhiyuan-robot.com/products/A2)<br>[A2-D数据采集机器人（轮式人形）](https://www.zhiyuan-robot.com/products/A2_D) |  |
| [Nvidia](https://www.nvidia.cn/industries/robotics/) |  | 具身智能基建公司 |
| [求之科技](https://air.tsinghua.edu.cn/info/1147/2175.htm)  |  |  |
| [穹彻智能](https://www.noematrix.ai/) | | |
| [优必选](https://www.ubtrobot.com/cn/about/companyProfile) | | |
| [具身风暴](https://www.robotstorm.tech) | | 落地具身智能通用按摩机器人 |

<section id="software"></section>

# 5. Software - 软件

<section id="simulators"></section>

## 5.1 Simulators 仿真器
常见仿真器wiki: [wiki](https://simulately.wiki/)
| 仿真器 | 对应基准集 |
|-------|------|
| [IsaacSim](https://developer.nvidia.com/isaac/sim) | [BEHAVIOR-1K(可跨平台)](https://behavior.stanford.edu/behavior-1k)+[omniGibson(工具链)](https://behavior.stanford.edu/omnigibson/)<br>[ARNOID](https://arnold-benchmark.github.io/) |
| [MuJoCo](https://mujoco.org/) | [robosuite](https://robosuite.ai/docs/overview.html)+[robomimic(工具链)](https://robomimic.github.io/)<br>[LIBERO](https://libero-project.github.io/main.html)<br>[MetaWorld](https://meta-world.github.io/)<br>[Gymnasium-Robotics(Fetch; Shadow Dexterous Hand; Maze; Adroit Hand; Franka Kitchen; MaMuJoCo)](https://robotics.farama.org/)<br>[RoboCasa](Docs.qq.com/sheet/DYmppSU55cFNpaVJo?tab=BB08J2)<br>[RoboHive](https://github.com/vikashplus/robohive) |
| [Sapien](https://sapien.ucsd.edu/) | [ManiSkill](https://maniskill.readthedocs.io/en/latest/index.html)<br>[RoboTwin](https://github.com/TianxingChen/RoboTwin) |
| [CoppeliaSim](https://www.coppeliarobotics.com/) | [RLBench](https://github.com/stepjam/RLBench)<br>[PerAct2](https://bimanual.github.io/)<br>[COLOSSEUM](https://robot-colosseum.github.io/) |
| [PyBullet](https://pybullet.org/wordpress/) | [Calvin](https://github.com/mees/calvin?tab=readme-ov-file)<br>[Ravens](https://github.com/google-research/ravens)<br>[VimaBench](https://github.com/vimalabs/VimaBench) |
| [Genesis](https://genesis-embodied-ai.github.io/) ||
| [SOFA](https://github.com/sofa-framework/sofa/)| 常用于软体机器人的仿真 |

**教程**：
- **Isaac 101：** [Blog](https://axi404.top/tags/isaac%20101) by Axi404.

<section id="benchmarks"></section>

## 5.2 Banchmarks 基准集
具身智能常用benchmark总结 [1]: [zhihu](https://zhuanlan.zhihu.com/p/695342864)<br>
* **CALVIN**, [github](https://github.com/mees/calvin), [website](http://calvin.cs.uni-freiburg.de/)2022年, 第一个公开的结合了自然语言控制、高维多模态输入、7自由度的机械臂控制以及长视野的机器人操纵benchmark。支持不同的语言指令, 不同的摄像头输入, 不同的控制方式, 主要用来评估具身智能模型的多模态输入的能力和长程规划能力。
* **Meta-World**, [webpage](https://meta-world.github.io/): 评估机器人在多任务和元强化学习场景下的表现。50个机器人操作任务（如抓取、推动物体、开门等）, 组织成不同的基准测试集（如ML1、ML10、ML45、MT10、MT50等）, 每个集合都有明确的训练任务和测试任务。周边和文档比较全面, 基于mojoco, 有完整的API和工具, python import即可运行。
* **Embodied Agent Interface: Benchmarking LLMs for Embodied Decision Making**, [website](https://embodied-agent-interface.github.io/): 主要评估大型语言模型（LLMs）在具身决策中的表现, 重点在于决策过程, 包括目标解释、子目标分解、动作序列化和状态转换建模, 不涉及到具体的执行。
* **RoboGen**, [repo](https://github.com/Genesis-Embodied-AI/RoboGen), [website](https://robogen-ai.github.io/): 不是生成policy, 而是生成任务、场景和带标记的数据, 能直接用来监督学习。
* **LIBERO**, [repo](https://github.com/Lifelong-Robot-Learning/LIBERO), [website](https://libero-project.github.io/intro.html): 用一个程序化生成管道来生成任务, 这个管道理论上可以生成无限数量的操作任务, 还提供了：三种视觉运动策略网络架构（RNN、Transformer和ViLT） 和 三种终身学习算法, 以及顺序微调和多任务学习的基准。
* **RoboTwin**, [repo](https://github.com/TianxingChen/RoboTwin): 使用程序生成双臂机器人无限操作任务数据, 并提供了所有任务的评测基准。

<section id="datasets"></section>

## 5.3 Datasets 数据集
* **Open X-Embodiment: Robotic Learning Datasets and RT-X Models**, [website](https://robotics-transformer-x.github.io/):  22种不同机器人平台的超过100万条真实机器人轨迹数据，覆盖了527种不同的技能和160,266项任务，主要集中在抓取和放置。
* **AgiBot World Datasets (智元机器人)**, [website](https://agibot-world.com/): 八十余种日常生活中的多样化技能，超过100万条轨迹数据，采集自**同构型机器人**, 多级质量把控和全程人工在环的策略，从采集员的专业培训，到采集过程中的严格管理，再到数据的筛选、审核和标注，每一个环节都经过了精心设计和严格把控。
* **RoboMIND**, [website](https://www.robomind.net/): 55,000条真实世界的演示轨迹，涵盖了279个不同任务和61个独特物体类别，来自四种不同协作臂，任务被分为基础技能、精准操作、场景理解、柜体操作和协作任务五大类。
* **All Robots in One,** [website](https://imaei.github.io/project_pages/ario/): ARIO 数据集，包含了 **2D、3D、文本、触觉、声音 5 种模态的感知数据**，涵盖**操作**和**导航**两大类任务，既有**仿真数据**，也有**真实场景数据**，并且包含多种机器人硬件，有很高的丰富度。在数据规模达到三百万的同时，还保证了数据的统一格式，是目前具身智能领域同时达到高质量、多样化和大规模的开源数据集。



<section id="paper_list"></section>

# 6. Paper Lists - 论文列表

* Awesome Humanoid Robot Learning - Yanjie Ze: [repo](https://github.com/YanjieZe/awesome-humanoid-robot-learning)
* Paper Reading List - DeepTimber Community: [repo](https://github.com/DeepTimber-Robot-Lab/Paper-Reading-List)
* Paper List - Yanjie Ze: [repo](https://github.com/YanjieZe/Paper-List)
* Paper List For EmbodiedAI - Tianxing Chen: [repo](https://github.com/TianxingChen/Paper-List-For-EmbodiedAI)
* SOTA Paper Rating - Weiyang Jin: [website](https://waynejin0918.github.io/SOTA-paper-rating.io/)
* Awesome-LLM-Robotics: A repo contains a curative list of papers using Large Language/Multi-Modal Models for Robotics/RL: [website](https://github.com/GT-RIPL/Awesome-LLM-Robotics)

<section id="acknowledgement"></section>

# 7. Acknowledgement - 致谢
本文转载/引用了一些博主的文章, 我们对他们的知识分享表示感谢, 引用列表如下：
[1] 知乎 [穆尧](https://www.zhihu.com/people/mu-yao-12-34), [2] 知乎 [东林钟声](https://www.zhihu.com/people/dong-lin-zhong-sheng-76), Github [Yunlong Dong](https://github.com/yunlongdong), [3] 知乎 [强化学徒](https://www.zhihu.com/people/heda-he-28), [4] 知乎 [Biang哥](https://www.zhihu.com/people/qi-da-guang), [5] OpenAI [Lilian Weng](https://lilianweng.github.io/), [6] B站 [木木具身](https://space.bilibili.com/350563565), [7] Github [Zhuoheng Li](https://github.com/StarCycle/EmbodiedAI-Reading-List-For-Lists?tab=readme-ov-file), [8] 知乎 [Flood Sung](https://www.zhihu.com/people/flood-sung), [9] Github [Sida Peng](https://github.com/pengsida/learning_research)

<section id="license"></section>

# 🏷️ License - 许可证
This repository is released under the MIT license. See [LICENSE](./LICENSE) for additional details.

<section id="cite"></section>

<section id="star-history"></section>

# ⭐️ Star History - Star历史

[![Star History Chart](https://api.star-history.com/svg?repos=TianxingChen/Embodied-AI-Guide&type=Date)](https://star-history.com/#TianxingChen/Embodied-AI-Guide&Date)
---
# Awesome Robotics Libraries

A curated list of robotics simulators and libraries.

#### Table of Contents
* [Simulators](#simulators)
* [Libraries](#libraries)
  * [Dynamics Simulation](#dynamics-simulation)
  * [Inverse Kinematics](#inverse-kinematics)
  * [Machine Learning](#machine-learning)
  * [Motion Planning and Control](#motion-planning-and-control)
  * [Optimization](#optimization)
  * [Robot Modeling](#robot-modeling)
  * [Robot Platform](#robot-platform)
  * [SLAM](#slam)
  * [Vision](#vision)
  * [Fluid](#fluid)
  * [Multiphysics](#multiphysics)
  * [Math](#math)
  * [ETC](#etc)
* [Other Awesome Lists](#other-awesome-lists)
* [Contributing](#contributing)

## [Simulators](#awesome-robotics-libraries)

###### Free or Open Source

* [AI2-THOR](https://ai2thor.allenai.org/) - Python framework with a Unity backend, providing interaction, navigation, and manipulation support for household based robotic agents [[github](https://github.com/allenai/ai2thor) ![AI2-THOR](https://img.shields.io/github/stars/allenai/ai2thor.svg?style=flat&label=Star&maxAge=86400)]
* AirSim - Simulator based on Unreal Engine for autonomous vehicles [[github](https://github.com/Microsoft/AirSim) ![AirSim](https://img.shields.io/github/stars/Microsoft/AirSim.svg?style=flat&label=Star&maxAge=86400)]
* [ARGoS](https://www.argos-sim.info/) - Physics-based simulator designed to simulate large-scale robot swarms [[github](https://github.com/ilpincy/argos3) ![ilpincy/argos3](https://img.shields.io/github/stars/ilpincy/argos3.svg?style=flat&label=Star&maxAge=86400)]
* [ARTE](http://arvc.umh.es/arte/index_en.html) - Matlab toolbox focussed on robotic manipulators [[github](https://github.com/4rtur1t0/ARTE) ![4rtur1t0/ARTE](https://img.shields.io/github/stars/4rtur1t0/ARTE.svg?style=flat&label=Star&maxAge=86400)]
* [AVIS Engine](https://avisengine.com) - Autonomous Vehicles Intelligent simulation software, A Fast and robust simulator software for Autonomous vehicle development. [[github](https://github.com/AvisEngine/AVIS-Engine-Python-API) ![AvisEngine/AVIS-Engine-Python-API](https://img.shields.io/github/stars/AvisEngine/AVIS-Engine-Python-API.svg?style=flat&label=Star&maxAge=86400)]
* [CARLA](http://carla.org/) - Open-source simulator for autonomous driving research [[github](https://github.com/carla-simulator/carla) ![carla-simulator/carla](https://img.shields.io/github/stars/carla-simulator/carla.svg?style=flat&label=Star&maxAge=86400)]
* [CoppeliaSim](http://www.coppeliarobotics.com/) - Formaly V-REP. Virtual robot experimentation platform [[github](https://github.com/CoppeliaRobotics/CoppeliaSimLib) ![CoppeliaRobotics/CoppeliaSimLib](https://img.shields.io/github/stars/CoppeliaRobotics/CoppeliaSimLib.svg?style=flat&label=Star&maxAge=86400)]
* [Gazebo](http://gazebosim.org/) - Dynamic multi-robot simulator [[github](https://github.com/osrf/gazebo) ![osrf/gazebo](https://img.shields.io/github/stars/osrf/gazebo.svg?style=flat&label=Star&maxAge=86400)]
* [GraspIt!](http://graspit-simulator.github.io/) - Simulator for grasping research that can accommodate arbitrary hand and robot designs [[github](https://github.com/graspit-simulator/graspit) ![graspit](https://img.shields.io/github/stars/graspit-simulator/graspit.svg?style=flat&label=Star&maxAge=86400)]
* [Habitat-Sim](https://aihabitat.org/) - Simulation platform for research in embodied artificial intelligence [[github](https://github.com/facebookresearch/habitat-sim) ![facebookresearch/habitat-sim](https://img.shields.io/github/stars/facebookresearch/habitat-sim.svg?style=flat&label=Star&maxAge=86400)]
* [Hexapod Robot Simulator](https://hexapod.netlify.app/) - Open-source hexapod robot inverse kinematics and gaits visualizer [[github](https://github.com/mithi/hexapod) ![mithi/hexapod](https://img.shields.io/github/stars/mithi/hexapod.svg?style=flat&label=Star&maxAge=86400)]
* [Ignition Gazebo](https://ignitionrobotics.org/home) - Open source robotics simulator [[github](https://github.com/ignitionrobotics/ign-gazebo) ![ignitionrobotics/ign-gazebo](https://img.shields.io/github/stars/ignitionrobotics/ign-gazebo.svg?style=flat&label=Star&maxAge=86400)]
* [Isaac Sim](https://developer.nvidia.com/isaac/sim) - Nvidia's robotic simulation environment with GPU physics simulation and ray tracing 
* [MORSE](http://morse-simulator.github.io/) - Modular open robots simulation engine [[github](https://github.com/morse-simulator/morse) ![morse](https://img.shields.io/github/stars/morse-simulator/morse.svg?style=flat&label=Star&maxAge=86400)]
* [Neurorobotics Platform](https://neurorobotics.net/) - Internet-accessible simulation of robots controlled by spiking neural networks [[bitbucket](https://bitbucket.org/hbpneurorobotics/neurorobotics-platform)]
* [PyBullet](https://docs.google.com/document/d/10sXEhzFRSnvFcl3XxNGhnD4N2SedqwdAvK3dsihxVUA/edit#heading=h.2ye70wns7io3) - An easy to use simulator for robotics and deep reinforcement learning [[github](https://github.com/bulletphysics/bullet3) ![bullet3](https://img.shields.io/github/stars/bulletphysics/bullet3.svg?style=flat&label=Star&maxAge=86400)]
* [PyBullet_Industrial](https://pybullet-industrial.readthedocs.io/en/latest/) - A extension to PyBullet that allows for the simulation of various robotic manufacturing processes such as milling or 3D-printing. [[github](https://github.com/WBK-Robotics/pybullet_industrial) ![pybullet_industrial](https://img.shields.io/github/stars/WBK-Robotics/pybullet_industrial.svg?style=flat&label=Star&maxAge=86400)]
* [Robot Gui](http://robot.glumb.de/) - A three.js based 3D robot interface [[github](https://github.com/glumb/robot-gui) ![glumb/robot-gui](https://img.shields.io/github/stars/glumb/robot-gui.svg?style=flat&label=Star&maxAge=86400)]
* [SAPIEN](https://sapien.ucsd.edu) - A realistic and physics-rich simulated environment that hosts a large-scale set for articulated objects. [[github](https://github.com/haosulab/SAPIEN) ![haosulab/SAPIEN](https://img.shields.io/github/stars/haosulab/SAPIEN.svg?style=flat&label=Star&maxAge=86400)]
* [Simbad](http://simbad.sourceforge.net/) - A Java 3D robot simulator, enables to write own robot controller with modifying environment using available sensors.
* [Unity](https://unity.com/solutions/automotive-transportation-manufacturing/robotics) - Popular game engine that now offers open-source tools, tutorials, and resources for robotics simulation [[github](https://github.com/Unity-Technologies/Unity-Robotics-Hub) ![Unity-Technologies/Unity-Robotics-Hub](https://img.shields.io/github/stars/Unity-Technologies/Unity-Robotics-Hub.svg?style=flat&label=Star&maxAge=86400)]
* [Webots](http://www.cyberbotics.com/) - A complete development environment to model, program and simulate robots, vehicles and mechanical systems [[github](https://github.com/cyberbotics/webots) ![cyberbotics/webots](https://img.shields.io/github/stars/cyberbotics/webots.svg?style=flat&label=Star&maxAge=86400)]

###### Commercial

* [Actin Simulation](http://www.energid.com/)
* [Artiminds](https://www.artiminds.com/) - Planning, programming, operation, analysis and optimization
* [Kineo](https://www.plm.automation.siemens.com/global/en/products/plm-components/kineo.html) - Path planning and trajectory optimization for industrial robotics and digital mock-up review applications
* [RobotDK](https://robodk.com/) - Simulation and OLP for robots
* [RobotStudio](http://new.abb.com/products/robotics/robotstudio)
* [Robot Virtual Worlds](http://www.robotvirtualworlds.com/)
* [Virtual Robotics Toolkit](https://www.virtualroboticstoolkit.com/)
* [Visual Components](https://www.visualcomponents.com/)

###### Cloud

* [AWS RoboMaker](https://aws.amazon.com/robomaker/) - Service that makes it easy to develop, test, and deploy intelligent robotics applications at scale

## [Libraries](#awesome-robotics-libraries)

### [Dynamics Simulation](#awesome-robotics-libraries)

> :warning: The following table is not complete. Please feel free to report if you find something incorrect or missing.

| Name | Models | Features | Languages | Licenses | Code | Popularity |
|:----:| ------ | -------- | --------- | -------- | ---- | ---------- |
| [ARCSim](http://graphics.berkeley.edu/resources/ARCSim/index.html) | soft |  | C++ | | |  |
| [Bullet](http://bulletphysics.org) | rigid, soft | ik, id, urdf, sdf | C++, Python | Zlib | [github](https://github.com/bulletphysics/bullet3) | ![bullet3](https://img.shields.io/github/stars/bulletphysics/bullet3.svg?style=flat&label=Star&maxAge=86400) |
| [CHRONO::ENGINE](http://chronoengine.info/) | rigid, soft, granular, fluid | ik, urdf | C++, Python | BSD-3-Clause | [github](https://github.com/projectchrono/chrono) | ![chrono](https://img.shields.io/github/stars/projectchrono/chrono.svg?style=flat&label=Star&maxAge=86400) |
| [DART](http://dartsim.github.io/) | rigid, soft | ik, id, plan, urdf, sdf | C++, Python | BSD-2-Clause | [github](https://github.com/dartsim/dart.git) | ![dart](https://img.shields.io/github/stars/dartsim/dart.svg?style=flat&label=Star&maxAge=86400) |
| [Drake](http://drake.mit.edu/) | rigid, aero, fluid | ik, trj-opt, plan | C++, Matlab | BSD-3-Clause | [github](https://github.com/RobotLocomotion/drake) | ![drake](https://img.shields.io/github/stars/RobotLocomotion/drake.svg?style=flat&label=Star&maxAge=86400) |
| [Flex](https://developer.nvidia.com/flex) | rigid, soft, particle, fluid  | | C++ | | [github](https://github.com/NVIDIAGameWorks/FleX) | ![NVIDIAGameWorks/FleX](https://img.shields.io/github/stars/NVIDIAGameWorks/FleX.svg?style=flat&label=Star&maxAge=86400) |
| [FROST](https://ayonga.github.io/frost-dev/index.html) | rigid  | | MATLAB | BSD-3-Clause | [github](https://github.com/ayonga/frost-dev) | ![ayonga/frost-dev](https://img.shields.io/github/stars/ayonga/frost-dev.svg?style=flat&label=Star&maxAge=86400) |
| [IBDS](http://www.interactive-graphics.de/index.php/downloads/12-ibds) | rigid, particle | | C++ | Zlib | | |
| idyntree | rigid | id | C++, Python, Matlab, Lua | LGPL-2.1 | [github](https://github.com/robotology/idyntree) | ![idyntree](https://img.shields.io/github/stars/robotology/idyntree.svg?style=flat&label=Star&maxAge=86400) |
| [KDL](http://www.orocos.org/kdl) | rigid | ik | C++ | LGPL-2.1 | [github](https://github.com/orocos/orocos_kinematics_dynamics) | ![orocos_kinematics_dynamics](https://img.shields.io/github/stars/orocos/orocos_kinematics_dynamics.svg?style=flat&label=Star&maxAge=86400) |
| kindr | rigid | (todo) | C++, Matlab | BSD-3-Clause | [github](https://github.com/ANYbotics/kindr) | ![kindr](https://img.shields.io/github/stars/ANYbotics/kindr.svg?style=flat&label=Star&maxAge=86400) |
| [Klampt](http://motion.pratt.duke.edu/klampt/) | (todo) | (todo) | C++, Python | BSD-3-Clause | [github](https://github.com/krishauser/Klampt) | ![Klampt](https://img.shields.io/github/stars/krishauser/Klampt.svg?style=flat&label=Star&maxAge=86400) |
| [LibrePilot](http://www.librepilot.org/site/index.html) | uav, vehicles | (todo) | C++ | GPL-3.0 | [bitbucket](https://bitbucket.org/librepilot/librepilot), [github](https://github.com/librepilot/LibrePilot) | ![LibrePilot](https://img.shields.io/github/stars/librepilot/LibrePilot.svg?style=flat&label=Star&maxAge=86400) |
| [MARS](http://rock-simulation.github.io/mars/) | (todo) | (todo) | C++, Python | LGPL-3.0 | [github](https://github.com/rock-simulation/mars) | ![mars](https://img.shields.io/github/stars/rock-simulation/mars.svg?style=flat&label=Star&maxAge=86400) |
| [MBDyn](https://www.mbdyn.org/) | (todo) | (todo) | C++ | GPL-2.1 | [download](https://www.mbdyn.org/?Software_Download) | |
| [MBSim](https://www.mbsim-env.de/mbsim/html/index.html) | (todo) | (todo) | C++ | (not specified) | [github](https://github.com/mbsim-env/mbsim) | ![mbsim-env/mbsim](https://img.shields.io/github/stars/mbsim-env/mbsim.svg?style=flat&label=Star&maxAge=86400) |
| [MBSlib](http://www.sim.informatik.tu-darmstadt.de/res/sw/mbslib) | (todo) | (todo) | C++ | LGPL-3.0 | [github](https://github.com/SIM-TU-Darmstadt/mbslib) | ![mbslib](https://img.shields.io/github/stars/SIM-TU-Darmstadt/mbslib.svg?style=flat&label=Star&maxAge=86400) |
| metapod | (todo) | (todo) | C++ | LGPL-3.0 | [github](https://github.com/laas/metapod) | ![metapod](https://img.shields.io/github/stars/laas/metapod.svg?style=flat&label=Star&maxAge=86400) |
| [Moby](http://physsim.sourceforge.net/index.html) | rigid | id | C++ | GPL-2.0 | [github](https://github.com/PositronicsLab/Moby) | ![Moby](https://img.shields.io/github/stars/PositronicsLab/Moby.svg?style=flat&label=Star&maxAge=86400) |
| [mrpt](http://www.mrpt.org/) | vehicle | slam, cv | C++, Python, Matlab | BSD-3-Clause | [github](https://github.com/MRPT/mrpt) | ![mrpt](https://img.shields.io/github/stars/MRPT/mrpt.svg?style=flat&label=Star&maxAge=86400) |
| [MuJoCo](http://www.mujoco.org/index.html) | (todo) | id | C++, Python | [licenses](https://www.roboti.us/license.html) | closed source | |
| [mvsim](http://wiki.ros.org/mvsim) | vehicle | (todo) | C++ | GPL-3.0 | [github](https://github.com/ual-arm-ros-pkg/mvsim) | ![ual-arm-ros-pkg/mvsim](https://img.shields.io/github/stars/ual-arm-ros-pkg/mvsim.svg?style=flat&label=Star&maxAge=86400) |
| [Newton Dynamics](http://newtondynamics.com/) | (todo) | (todo) | C++ | Zlib | [github](https://github.com/MADEAPPS/newton-dynamics) | ![newton-dynamics](https://img.shields.io/github/stars/MADEAPPS/newton-dynamics.svg?style=flat&label=Star&maxAge=86400) |
| [nphysics](http://nphysics.org/) | (todo) | (todo) | Rust | BSD-3-Clause | [github](https://github.com/sebcrozet/nphysics) | ![sebcrozet/nphysics](https://img.shields.io/github/stars/sebcrozet/nphysics.svg?style=flat&label=Star&maxAge=86400) |
| [ODE](http://www.ode.org/) | rigid | | C++ | LGPL-2.1 or BSD-3-Clause | [bitbucket](https://bitbucket.org/odedevs/ode) | |
| [OpenRAVE](http://www.openrave.org) | (todo) | (todo) | C++, Python | LGPL-3.0 | [github](https://github.com/rdiankov/openrave) | ![openrave](https://img.shields.io/github/stars/rdiankov/openrave.svg?style=flat&label=Star&maxAge=86400) |
| [pinocchio](https://stack-of-tasks.github.io/pinocchio/) | rigid | ik, id, urdf, analytical derivatives, code generation | C++, Python | BSD-2-Clause | [github](https://github.com/stack-of-tasks/pinocchio) | ![pinocchio](https://img.shields.io/github/stars/stack-of-tasks/pinocchio.svg?style=flat&label=Star&maxAge=86400) |
| PositionBasedDynamics | (todo) | (todo) | C++ | MIT | [github](https://github.com/InteractiveComputerGraphics/PositionBasedDynamics) | ![PositionBasedDynamics](https://img.shields.io/github/stars/InteractiveComputerGraphics/PositionBasedDynamics.svg?style=flat&label=Star&maxAge=86400) |
| [PhysX](https://docs.nvidia.com/gameworks/content/gameworkslibrary/physx/guide/Manual/Index.html) | (todo) | (todo) | C++ | unknown | [github](https://github.com/NVIDIAGameWorks/PhysX) | ![NVIDIAGameWorks/PhysX](https://img.shields.io/github/stars/NVIDIAGameWorks/PhysX.svg?style=flat&label=Star&maxAge=86400) |
| [PyDy](http://www.pydy.org/) | (todo) | (todo) | Python | BSD-3-Clause | [github](https://github.com/pydy/pydy) | ![pydy](https://img.shields.io/github/stars/pydy/pydy.svg?style=flat&label=Star&maxAge=86400) |
| [RBDL](https://rbdl.github.io/) | rigid | ik,id,urdf | C++, Python | Zlib | [github](https://github.com/rbdl/rbdl) | ![rbdl](https://img.shields.io/github/stars/rbdl/rbdl.svg?style=flat&label=Star&maxAge=86400) |
| RBDyn | rigid | (todo) | C++, Python | LGPL-3.0 | [github](https://github.com/jrl-umi3218/RBDyn) | ![RBDyn](https://img.shields.io/github/stars/jrl-umi3218/RBDyn.svg?style=flat&label=Star&maxAge=86400) |
| [RaiSim](https://slides.com/jeminhwangbo/raisim-manual) | (todo) | (todo) | C++ | [custom](https://github.com/leggedrobotics/raisimLib/blob/a9e7673569997f35c0bc7eb5d11bc4fa188e863c/LICENSE.md) | [github](https://github.com/leggedrobotics/raisimLib) | ![leggedrobotics/raisimLib](https://img.shields.io/github/stars/leggedrobotics/raisimLib.svg?style=flat&label=Star&maxAge=86400) |
| [ReactPhysics3d](http://www.reactphysics3d.com/) | (todo) | (todo) | C++ | Zlib | [github](https://github.com/DanielChappuis/reactphysics3d) | ![reactphysics3d](https://img.shields.io/github/stars/DanielChappuis/reactphysics3d.svg?style=flat&label=Star&maxAge=86400) |
| RigidBodyDynamics.jl | rigid | (todo) | Julia | MIT "Expat" | [github](https://github.com/JuliaRobotics/RigidBodyDynamics.jl) | ![RigidBodyDynamics.jl](https://img.shields.io/github/stars/JuliaRobotics/RigidBodyDynamics.jl.svg?style=flat&label=Star&maxAge=86400) |
| [Rigs of Rods](https://www.rigsofrods.org/) | rigid, soft, vehicle | (todo) | C++ | GPL-3.0 | [github](https://github.com/RigsOfRods/rigs-of-rods) | ![RigsOfRods/rigs-of-rods](https://img.shields.io/github/stars/RigsOfRods/rigs-of-rods.svg?style=flat&label=Star&maxAge=86400) |
| [Robopy](https://adityadua24.github.io/robopy/) | (todo) | (todo) | Python 3 | MIT | [github](https://github.com/adityadua24/robopy) | ![adityadua24/robopy](https://img.shields.io/github/stars/adityadua24/robopy.svg?style=flat&label=Star&maxAge=86400) |
| [Robotics Library](http://www.roboticslibrary.org/) | (todo) | (todo) | C++ | GPL-3.0 or BSD-2-Clause | [github](https://github.com/roboticslibrary/rl) | ![rl](https://img.shields.io/github/stars/roboticslibrary/rl.svg?style=flat&label=Star&maxAge=86400) |
| [RobWork](http://www.robwork.dk/apidoc/nightly/rw/index.html) | (todo) | (todo) | C++ | Apache-2.0 | [gitlab](https://gitlab.com/sdurobotics/RobWork) | |
| [siconos](http://siconos.gforge.inria.fr) | (todo) | (todo) | C++, Python | Apache-2.0 | [github](https://github.com/siconos/siconos) | ![siconos](https://img.shields.io/github/stars/siconos/siconos.svg?style=flat&label=Star&maxAge=86400) |
| [Simbody](https://simtk.org/home/simbody/) | rigid, molecules | id, urdf | C++ | Apache-2.0 | [github](https://github.com/simbody/simbody.git) | ![simbody](https://img.shields.io/github/stars/simbody/simbody.svg?style=flat&label=Star&maxAge=86400) |
| [SOFA](https://www.sofa-framework.org/) | rigid, soft, medical | (todo) | C++ | LGPL-2.1 | [github](https://github.com/sofa-framework/sofa) | ![sofa](https://img.shields.io/github/stars/sofa-framework/sofa.svg?style=flat&label=Star&maxAge=86400) |
| Tiny Differentiable Simulator | rigid | (todo) | C++, Python | Apache-2.0 | [github](https://github.com/google-research/tiny-differentiable-simulator) | ![google-research/tiny-differentiable-simulator](https://img.shields.io/github/stars/google-research/tiny-differentiable-simulator.svg?style=flat&label=Star&maxAge=86400) |
| [trep](http://murpheylab.github.io/trep/) | rigid | dm, trj-opt | C, Python | GPL-3.0 | [github](https://github.com/MurpheyLab/trep) | ![trep](https://img.shields.io/github/stars/MurpheyLab/trep.svg?style=flat&label=Star&maxAge=86400) |
| qu3e | rigid | - | C++ | Zlib | [github](https://github.com/RandyGaul/qu3e) | ![qu3e](https://img.shields.io/github/stars/RandyGaul/qu3e.svg?style=flat&label=Star&maxAge=86400) |

For simplicity, shortened names are used to represent the supported models and features as

* Supported Models
  * rigid: rigid bodies
  * soft: soft bodies
  * aero: aerodynamics
  * granular: granular materials (like sand)
  * fluid: fluid dynamics
  * vehicles
  * uav: unmanned aerial vehicles (like drones)
  * medical
  * molecules
  * parallel: parallel mechanism (like Stewart platform)

* Features on Simulation, Analysis, Planning, Control Design
  * dm: [discrete mechanics](https://www.cambridge.org/core/journals/acta-numerica/article/div-classtitlediscrete-mechanics-and-variational-integratorsdiv/C8F45478A9290DEC24E63BB7FBE3CEB5)
  * ik: [inverse kinematics](https://en.wikipedia.org/wiki/Inverse_kinematics) solvers (please find IK specialized packages in [this list](#inverse-kinematics))
  * id: [inverse dynamics](https://en.wikipedia.org/wiki/Inverse_dynamics)
  * slam: [simultaneous localization and mapping](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)
  * trj-opt: trajectory optimization
  * plan: motion planning algorithms
  * cv: computer vision
  * urdf: [urdf](http://wiki.ros.org/urdf) parser
  * sdf: [sdf](http://sdformat.org/) parser

### [Inverse Kinematics](#awesome-robotics-libraries)

  * IKBT - A python package to solve robot arm inverse kinematics in symbolic form [[github](http://github.com/uw-biorobotics/IKBT) ![uw-biorobotics/IKBT](https://img.shields.io/github/stars/uw-biorobotics/IKBT.svg?style=flat&label=Star&maxAge=86400)]
  * Lively - A highly configurable toolkit for commanding robots in mixed modalities [[github](https://github.com/Wisc-HCI/lively) ![Wisc-HCI/lively](https://img.shields.io/github/stars/Wisc-HCI/lively.svg?style=flat&label=Star&maxAge=86400)]
  * RelaxedIK - Real-time Synthesis of Accurate and Feasible Robot Arm Motion [[github](http://github.com/uwgraphics/relaxed_ik) ![uwgraphics/relaxed_ik](https://img.shields.io/github/stars/uwgraphics/relaxed_ik.svg?style=flat&label=Star&maxAge=86400)]
  * [Trip](https://trip-kinematics.readthedocs.io/en/main/index.html) - A python package that solves inverse kinematics of parallel-, serial- or hybrid-robots [[github](https://github.com/TriPed-Robot/TriP) ![TriPed-Robot/TriP](https://img.shields.io/github/stars/TriPed-Robot/TriP.svg?style=flat&label=Star&maxAge=86400)]

### [Machine Learning](#awesome-robotics-libraries)

* [AllenAct](https://allenact.org/) - Python/PyTorch-based Research Framework for Embodied AI [[github](http://github.com/allenai/allenact) ![wichtounet/dll](https://img.shields.io/github/stars/allenai/allenact.svg?style=flat&label=Star&maxAge=86400)]
* DLL - Deep Learning Library (DLL) for C++ [[github](http://github.com/wichtounet/dll) ![wichtounet/dll](https://img.shields.io/github/stars/wichtounet/dll.svg?style=flat&label=Star&maxAge=86400)]
* [DyNet](https://dynet.readthedocs.io/en/latest/) - The Dynamic Neural Network Toolkit [[github](http://github.com/clab/dynet) ![clab/dynet](https://img.shields.io/github/stars/clab/dynet.svg?style=flat&label=Star&maxAge=86400)]
* [Fido](http://fidoproject.github.io/) - Lightweight C++ machine learning library for embedded electronics and robotics [[github](http://github.com/FidoProject/Fido) ![FidoProject/Fido](https://img.shields.io/github/stars/FidoProject/Fido.svg?style=flat&label=Star&maxAge=86400)]
* [Ivy]([http://fidoproject.github.io/](https://lets-unify.ai/)) - Unified Machine Learning Framework [[github](http://github.com/unifyai/ivy) ![unifyai/ivy](https://img.shields.io/github/stars/unifyai/ivy.svg?style=flat&label=Star&maxAge=86400)]
* LeRobot - State-of-the-art approaches, pretrained models, datasets, and simulation environments for real-world robotics in PyTorch. [[github](https://github.com/huggingface/lerobot) ![huggingface/lerobot](https://img.shields.io/github/stars/huggingface/lerobot.svg?style=flat&label=Star&maxAge=86400)]
* MiniDNN - A header-only C++ library for deep neural networks [[github](https://github.com/yixuan/MiniDNN) ![yixuan/MiniDNN](https://img.shields.io/github/stars/yixuan/MiniDNN.svg?style=flat&label=Star&maxAge=86400)]
* [mlpack](http://www.mlpack.org/) - Scalable C++ machine learning library [[github](http://github.com/mlpack/mlpack) ![mlpack/mlpack](https://img.shields.io/github/stars/mlpack/mlpack.svg?style=flat&label=Star&maxAge=86400)]
* [OpenAI Gym](https://gym.openai.com/) - Developing and comparing reinforcement learning algorithms [[github](http://github.com/openai/gym) ![gym](https://img.shields.io/github/stars/openai/gym.svg?style=flat&label=Star&maxAge=86400)]
  * gym-dart [[github](http://github.com/DartEnv/dart-env) ![dart-env](https://img.shields.io/github/stars/DartEnv/dart-env.svg?style=flat&label=Star&maxAge=86400)]
  * gym-gazebo [[github](http://github.com/erlerobot/gym-gazebo) ![dart-env](https://img.shields.io/github/stars/erlerobot/gym-gazebo.svg?style=flat&label=Star&maxAge=86400)]
* [RLLib](http://web.cs.miami.edu/home/saminda/rllib.html) - Temporal-difference learning algorithms in reinforcement learning [[github](http://github.com/samindaa/RLLib) ![samindaa/RLLib](https://img.shields.io/github/stars/samindaa/RLLib.svg?style=flat&label=Star&maxAge=86400)]
* [robosuite](https://robosuite.ai) - A modular simulation framework and benchmark for robot learning [[github](https://github.com/ARISE-Initiative/robosuite) ![ARISE-Initiative/robosuite](https://img.shields.io/github/stars/ARISE-Initiative/robosuite.svg?style=flat&label=Star&maxAge=86400)]
* [tiny-dnn](http://tiny-dnn.readthedocs.io/en/latest/) - Header only, dependency-free deep learning framework in C++14 [[github](http://github.com/tiny-dnn/tiny-dnn) ![tiny-dnn/tiny-dnn](https://img.shields.io/github/stars/tiny-dnn/tiny-dnn.svg?style=flat&label=Star&maxAge=86400)]

### [Motion Planning and Control](#awesome-robotics-libraries)

* [AIKIDO](https://github.com/personalrobotics/aikido) - Solving robotic motion planning and decision making problems. [[github](https://github.com/personalrobotics/aikido) ![aikido](https://img.shields.io/github/stars/personalrobotics/aikido.svg?style=flat&label=Star&maxAge=86400)]
* Bioptim - Bioptim, a Python Framework for Musculoskeletal Optimal Control in Biomechanics [[github](https://github.com/pyomeca/bioptim) ![pyomeca/bioptim](https://img.shields.io/github/stars/pyomeca/bioptim.svg?style=flat&label=Star&maxAge=86400)]
* [CuiKSuite](http://www.iri.upc.edu/people/porta/Soft/CuikSuite2-Doc/html) - Applications to solve position analysis and path planning problems
* [cuRobo](https://curobo.org) - A CUDA accelerated library containing a suite of robotics algorithms that run significantly faster. [[github](https://github.com/nvlabs/curobo) ![nvlabs/curobo](https://img.shields.io/github/stars/nvlabs/curobo.svg?style=flat&label=Star&maxAge=86400)]
* [Control Toolbox](https://ethz-adrl.github.io/ct/) - Open-Source C++ Library for Robotics, Optimal and Model Predictive Control [[github](https://github.com/ethz-adrl/control-toolbox) ![ethz-adrl/control-toolbox](https://img.shields.io/github/stars/ethz-adrl/control-toolbox.svg?style=flat&label=Star&maxAge=86400)]
* Crocoddyl - Optimal control library for robot control under contact sequence [[github](https://github.com/loco-3d/crocoddyl) ![loco-3d/crocoddyl](https://img.shields.io/github/stars/loco-3d/crocoddyl.svg?style=flat&label=Star&maxAge=86400)]
* Fields2Cover - Robust and efficient coverage paths for autonomous agricultural vehicles [[github](https://github.com/Fields2Cover/Fields2Cover) ![Fields2Cover/Fields2Cover](https://img.shields.io/github/stars/fields2cover/fields2cover.svg?style=flat&label=Star&maxAge=86400)]
* GPMP2 - Gaussian Process Motion Planner 2 [[github](https://github.com/gtrll/gpmp2) ![gtrll/gpmp2](https://img.shields.io/github/stars/gtrll/gpmp2.svg?style=flat&label=Star&maxAge=86400)]
* [HPP](https://humanoid-path-planner.github.io/hpp-doc/) - Path planning for kinematic chains in environments cluttered with obstacles [[github](https://github.com/humanoid-path-planner)]
* [MoveIt!](http://moveit.ros.org/) - Motion planning framework [[github](https://github.com/ros-planning/moveit) ![moveit](https://img.shields.io/github/stars/ros-planning/moveit.svg?style=flat&label=Star&maxAge=86400)]
* [OMPL](http://ompl.kavrakilab.org/) - Open motion planning library [[bitbucket](https://bitbucket.org/ompl/ompl), [github](https://github.com/ompl/ompl) ![ompl](https://img.shields.io/github/stars/ompl/ompl.svg?style=flat&label=Star&maxAge=86400)]
* OCS2 - Efficient continuous and discrete time optimal control implementation [[bitbucket](https://bitbucket.org/leggedrobotics/ocs2/src/master/)]
* pymanoid - Humanoid robotics prototyping environment based on OpenRAVE [[github](https://github.com/stephane-caron/pymanoid) ![stephane-caron/pymanoid](https://img.shields.io/github/stars/stephane-caron/pymanoid.svg?style=flat&label=Star&maxAge=86400)]
* ROS Behavior Tree - [[github](https://github.com/miccol/ROS-Behavior-Tree) ![miccol/ROS-Behavior-Tree](https://img.shields.io/github/stars/miccol/ROS-Behavior-Tree.svg?style=flat&label=Star&maxAge=86400)]
* [Ruckig](https://github.com/pantor/ruckig) - Real-time, time-optimal and jerk-constrained online trajectory generation. [[github](https://github.com/pantor/ruckig) ![ruckig](https://img.shields.io/github/stars/pantor/ruckig.svg?style=flat&label=Star&maxAge=86400)]
* [The Kautham Project](https://sir.upc.es/projects/kautham/) - A robot simulation toolkit for motion planning [[github](https://github.com/iocroblab/kautham) ![kautham](https://img.shields.io/github/stars/iocroblab/kautham.svg?style=flat&label=Star&maxAge=86400)]
* [TOPP-RA](https://hungpham2511.github.io/toppra/) - Time-parameterizing robot trajectories subject to kinematic and dynamic constraints [[github](https://github.com/hungpham2511/toppra) ![hungpham2511/toppra](https://img.shields.io/github/stars/hungpham2511/toppra.svg?style=flat&label=Star&maxAge=86400)]
* [Ungar](https://github.com/fdevinc/ungar) - Expressive and efficient implementation of optimal control problems using template metaprogramming [[github](https://github.com/fdevinc/ungar) ![fdevinc/ungar](https://img.shields.io/github/stars/fdevinc/ungar.svg?style=flat&label=Star&maxAge=86400)]

###### Motion Optimizer

* TopiCo - Time-optimal Trajectory Generation and Control [[github](https://github.com/AIS-Bonn/TopiCo) ![AIS-Bonn/TopiCo](https://img.shields.io/github/stars/AIS-Bonn/TopiCo.svg?style=flat&label=Star)]
* [towr](http://wiki.ros.org/towr) - A light-weight, Eigen-based C++ library for trajectory optimization for legged robots [[github](https://github.com/ethz-adrl/towr) ![ethz-adrl/towr](https://img.shields.io/github/stars/ethz-adrl/towr.svg?style=flat&label=Star&maxAge=86400)]
* TrajectoryOptimization - A fast trajectory optimization library written in Julia [[github](https://github.com/RoboticExplorationLab/TrajectoryOptimization.jl) ![RoboticExplorationLab/TrajectoryOptimization.jl](https://img.shields.io/github/stars/RoboticExplorationLab/TrajectoryOptimization.jl.svg?style=flat&label=Star&maxAge=86400)]
* [trajopt](http://rll.berkeley.edu/trajopt/doc/sphinx_build/html/) - Framework for generating robot trajectories by local optimization [[github](https://github.com/joschu/trajopt) ![joschu/trajopt](https://img.shields.io/github/stars/joschu/trajopt.svg?style=flat&label=Star&maxAge=86400)]

###### Nearest Neighbor

* [Cover-Tree](http://hunch.net/~jl/projects/cover_tree/cover_tree.html) - Cover tree data structure for quick k-nearest-neighbor search [[github](https://github.com/DNCrane/Cover-Tree) ![Cover-Tree](https://img.shields.io/github/stars/DNCrane/Cover-Tree.svg?style=flat&label=Star&maxAge=86400)]
  * [Faster cover trees](http://proceedings.mlr.press/v37/izbicki15.pdf) by Mike Izbicki et al., ICML 2015.
* [FLANN](http://www.cs.ubc.ca/research/flann/) - Fast Library for Approximate Nearest Neighbors [[github](https://github.com/mariusmuja/flann) ![flann](https://img.shields.io/github/stars/mariusmuja/flann.svg?style=flat&label=Star&maxAge=86400)]
* [nanoflann](http://www.cs.ubc.ca/research/flann/) - Nearest Neighbor search with KD-trees [[github](https://github.com/jlblancoc/nanoflann) ![nanoflann](https://img.shields.io/github/stars/jlblancoc/nanoflann.svg?style=flat&label=Star&maxAge=86400)]

###### 3D Mapping

* [libpointmatcher](http://libpointmatcher.readthedocs.io/en/latest/) - Iterative Closest Point library for 2-D/3-D mapping in Robotics [[github](https://github.com/ethz-asl/libpointmatcher) ![ethz-asl/libpointmatcher](https://img.shields.io/github/stars/ethz-asl/libpointmatcher.svg?style=flat&label=Star&maxAge=86400)]
* Octree - Fast radius neighbor search with an Octree [[github](https://github.com/jbehley/octree) ![jbehley/octree](https://img.shields.io/github/stars/jbehley/octree.svg?style=flat&label=Star&maxAge=86400)]
* [OctoMap](http://octomap.github.io/) - Efficient Probabilistic 3D Mapping Framework Based on Octrees [[github](https://github.com/OctoMap/octomap) ![octomap](https://img.shields.io/github/stars/OctoMap/octomap.svg?style=flat&label=Star&maxAge=86400)]
* [PCL](http://www.pointclouds.org/) - 2D/3D image and point cloud processing [[github](https://github.com/PointCloudLibrary/pcl) ![PointCloudLibrary/pcl](https://img.shields.io/github/stars/PointCloudLibrary/pcl.svg?style=flat&label=Star&maxAge=86400)]
* Treexy - Brutally fast, sparse, 3D Voxel Grid [[github](https://github.com/facontidavide/Treexy) ![Treexy](https://img.shields.io/github/stars/facontidavide/Treexy.svg?style=flat&label=Star&maxAge=86400)]
* voxblox - Flexible voxel-based mapping focusing on truncated and Euclidean signed distance fields [[github](https://github.com/ethz-asl/voxblox) ![voxblox](https://img.shields.io/github/stars/ethz-asl/voxblox.svg?style=flat&label=Star&maxAge=86400)]
* [wavemap](https://ethz-asl.github.io/wavemap/) - Fast, efficient and accurate multi-resolution, multi-sensor 3D occupancy mapping [[github](https://github.com/ethz-asl/wavemap) ![wavemap](https://img.shields.io/github/stars/ethz-asl/wavemap.svg?style=flat&label=Star&maxAge=86400)]
* Utility Software
  * [Goxel](https://guillaumechereau.github.io/goxel/) - Free and open source 3D voxel editor [[github](https://github.com/guillaumechereau/goxel) ![guillaumechereau/goxel](https://img.shields.io/github/stars/guillaumechereau/goxel.svg?style=flat&label=Star&maxAge=86400)]

### [Optimization](#awesome-robotics-libraries)

* [CasADi](https://github.com/casadi/casadi/wiki) - Symbolic framework for algorithmic differentiation and numeric optimization [[github](https://github.com/casadi/casadi) ![casadi](https://img.shields.io/github/stars/casadi/casadi.svg?style=flat&label=Star&maxAge=86400)]
* [Ceres Solver](http://ceres-solver.org/) - Large scale nonlinear optimization library [[github](https://github.com/ceres-solver/ceres-solver) ![ceres-solver](https://img.shields.io/github/stars/ceres-solver/ceres-solver.svg?style=flat&label=Star&maxAge=86400)]
* eigen-qld - Interface to use the QLD QP solver with the Eigen3 library [[github](https://github.com/jrl-umi3218/eigen-qld) ![jrl-umi3218/eigen-qld](https://img.shields.io/github/stars/jrl-umi3218/eigen-qld.svg?style=flat&label=Star&maxAge=86400)]
* [EXOTica](http://wcms.inf.ed.ac.uk/ipab/slmc/research/EXOTica) - Generic optimisation toolset for robotics platforms [[github](https://github.com/ipab-slmc/exotica) ![ipab-slmc/exotica](https://img.shields.io/github/stars/ipab-slmc/exotica.svg?style=flat&label=Star&maxAge=86400)]
* hpipm - High-performance interior-point-method QP solvers (Ipopt, Snopt) [[github](https://github.com/giaf/hpipm) ![giaf/hpipm](https://img.shields.io/github/stars/giaf/hpipm.svg?style=flat&label=Star&maxAge=86400)]
* [HYPRE](https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods) - Parallel solvers for sparse linear systems featuring multigrid methods [[github](https://github.com/hypre-space/hypre) ![hypre-space/hypre](https://img.shields.io/github/stars/hypre-space/hypre.svg?style=flat&label=Star&maxAge=86400)]
* ifopt - An Eigen-based, light-weight C++ Interface to Nonlinear Programming Solvers (Ipopt, Snopt) [[github](https://github.com/ethz-adrl/ifopt) ![ifopt](https://img.shields.io/github/stars/ethz-adrl/ifopt.svg?style=flat&label=Star&maxAge=86400)]
* [Ipopt](https://projects.coin-or.org/Ipopt) - Large scale nonlinear optimization library [[github](https://github.com/coin-or/Ipopt) ![Ipopt](https://img.shields.io/github/stars/coin-or/Ipopt.svg?style=flat&label=Star&maxAge=86400)]
* libcmaes - Blackbox stochastic optimization using the CMA-ES algorithm [[github](https://github.com/beniz/libcmaes) ![beniz/libcmaes](https://img.shields.io/github/stars/beniz/libcmaes.svg?style=flat&label=Star&maxAge=86400)]
* [limbo](http://www.resibots.eu/limbo/) - Gaussian processes and Bayesian optimization of black-box functions [[github](https://github.com/resibots/limbo) ![resibots/limbo](https://img.shields.io/github/stars/resibots/limbo.svg?style=flat&label=Star&maxAge=86400)]
* lpsolvers - Linear Programming solvers in Python with a unified API [[github](https://github.com/stephane-caron/lpsolvers) ![lpsolvers](https://img.shields.io/github/stars/stephane-caron/lpsolvers.svg?style=flat&label=Star&maxAge=86400)]
* [NLopt](http://ab-initio.mit.edu/wiki/index.php/NLopt) - Nonlinear optimization [[github](https://github.com/stevengj/nlopt) ![nlopt](https://img.shields.io/github/stars/stevengj/nlopt.svg?style=flat&label=Star&maxAge=86400)]
* [OptimLib](https://www.kthohr.com/optimlib.html) - Lightweight C++ library of numerical optimization methods for nonlinear functions [[github](https://github.com/kthohr/optim) ![kthohr/optim](https://img.shields.io/github/stars/kthohr/optim.svg?style=flat&label=Star&maxAge=86400)]
* [OSQP](https://osqp.org/) - The Operator Splitting QP Solver [[github](https://github.com/osqp/osqp) ![osqp/osqp](https://img.shields.io/github/stars/osqp/osqp.svg?style=flat&label=Star&maxAge=86400)]
* [Pagmo](https://esa.github.io/pagmo2/index.html) - Scientific library for massively parallel optimization [[github](https://github.com/esa/pagmo2) ![esa/pagmo2](https://img.shields.io/github/stars/esa/pagmo2.svg?style=flat&label=Star&maxAge=86400)]
* [ProxSuite](https://simple-robotics.github.io/proxsuite/) - The Advanced Proximal Optimization Toolbox [[github](https://github.com/Simple-Robotics/ProxSuite) ![Simple-Robotics/ProxSuite](https://img.shields.io/github/stars/Simple-Robotics/ProxSuite.svg?style=flat&label=Star&maxAge=86400)]
* [pymoo](https://www.egr.msu.edu/coinlab/blankjul/pymoo/) - Multi-objective Optimization in Python [[github](https://github.com/msu-coinlab/pymoo) ![msu-coinlab/pymoo](https://img.shields.io/github/stars/msu-coinlab/pymoo.svg?style=flat&label=Star&maxAge=86400)]
* qpsolvers - Quadratic Programming solvers in Python with a unified API [[github](https://github.com/stephane-caron/qpsolvers) ![qpsolvers](https://img.shields.io/github/stars/stephane-caron/qpsolvers.svg?style=flat&label=Star&maxAge=86400)]
* [RobOptim](http://roboptim.net/index.html) - Numerical Optimization for Robotics. [[github](https://github.com/roboptim/roboptim-core) ![roboptim/roboptim-core](https://img.shields.io/github/stars/roboptim/roboptim-core.svg?style=flat&label=Star&maxAge=86400)]
* [SCS](http://web.stanford.edu/~boyd/papers/scs.html) - Numerical optimization for solving large-scale convex cone problems [[github](https://github.com/cvxgrp/scs) ![scs](https://img.shields.io/github/stars/cvxgrp/scs.svg?style=flat&label=Star&maxAge=86400)]
* [SHOT](https://shotsolver.dev/shot/) - A solver for mixed-integer nonlinear optimization problems [[github](https://github.com/coin-or/SHOT) ![coin-or/SHOT](https://img.shields.io/github/stars/coin-or/SHOT.svg?style=flat&label=Star&maxAge=86400)]
* sferes2 - Evolutionary computation [[github](https://github.com/sferes2/sferes2) ![sferes2/sferes2](https://img.shields.io/github/stars/sferes2/sferes2.svg?style=flat&label=Star&maxAge=86400)]

### [Robot Modeling](#awesome-robotics-libraries)

###### Robot Model Description Format
* [SDF](http://sdformat.org/) - XML format that describes objects and environments for robot simulators, visualization, and control ([bitbucket](https://bitbucket.org/osrf/sdformat))
* [urdf](http://wiki.ros.org/urdf) - XML format for representing a robot model [[github](https://github.com/ros/urdfdom) ![ros/urdfdom](https://img.shields.io/github/stars/ros/urdfdom.svg?style=flat&label=Star&maxAge=86400)]

###### Utility to Build Robot Models
* [onshape-to-robot](https://github.com/Rhoban/onshape-to-robot) - Converting OnShape assembly to robot definition (SDF or URDF) through OnShape API [[github](https://github.com/Rhoban/onshape-to-robot) ![phobos](https://img.shields.io/github/stars/Rhoban/onshape-to-robot.svg?style=flat&label=Star&maxAge=86400)]
* phobos - Add-on for Blender creating URDF and SMURF robot models [[github](https://github.com/rock-simulation/phobos) ![phobos](https://img.shields.io/github/stars/rock-simulation/phobos.svg?style=flat&label=Star&maxAge=86400)]

### [Robot Platform](#awesome-robotics-libraries)

* [AutoRally](http://autorally.github.io/) - High-performance testbed for advanced perception and control research [[github](https://github.com/autorally/autorally) ![autorally/autorally](https://img.shields.io/github/stars/autorally/autorally.svg?style=flat&label=Star&maxAge=86400)]
* [Linorobot](https://linorobot.org/) - ROS compatible ground robots [[github](https://github.com/linorobot/linorobot) ![linorobot/linorobot](https://img.shields.io/github/stars/linorobot/linorobot.svg?style=flat&label=Star&maxAge=86400)]
  * onine - Service Robot based on [Linorobot](https://github.com/linorobot/linorobot) and Braccio Arm [[github](https://github.com/grassjelly/onine) ![grassjelly/onine](https://img.shields.io/github/stars/grassjelly/onine.svg?style=flat&label=Star&maxAge=86400)]
* [Micro-ROS for Arduino](https://github.com/kaiaai/micro_ros_arduino_kaiaai) - a [Micro-ROS](https://github.com/micro-ROS/micro_ros_arduino) fork available in the [Arduino](https://www.arduino.cc/) Library Manager
* [Rock](https://www.rock-robotics.org/stable/) - Software framework for robotic systems
* [ROS](http://www.ros.org/) - Flexible framework for writing robot software [[github repos](http://wiki.ros.org/Tickets)]
* [ROS 2](https://github.com/ros2/ros2/wiki) - Version 2.0 of the Robot Operating System (ROS) software stack [[github repos](https://github.com/ros2)]
* [YARP](http://www.yarp.it/) - Communication and device interfaces applicable from humanoids to embedded devices [[github](https://github.com/robotology/yarp) ![robotology/yarp](https://img.shields.io/github/stars/robotology/yarp.svg?style=flat&label=Star&maxAge=86400)]

### [SLAM](#awesome-robotics-libraries)

* AprilSAM - Real-time smoothing and mapping [[github](https://github.com/xipengwang/AprilSAM) ![xipengwang/AprilSAM](https://img.shields.io/github/stars/xipengwang/AprilSAM.svg?style=flat&label=Star&maxAge=86400)]
* Cartographer - Real-time SLAM in 2D and 3D across multiple platforms and sensor configurations [[github](https://github.com/googlecartographer/cartographer) ![cartographer](https://img.shields.io/github/stars/googlecartographer/cartographer.svg?style=flat&label=Star&maxAge=86400)]
* [DSO](https://vision.in.tum.de/research/vslam/dso) - Novel direct and sparse formulation for Visual Odometry [[github](https://github.com/JakobEngel/dso) ![dso](https://img.shields.io/github/stars/JakobEngel/dso.svg?style=flat&label=Star&maxAge=86400)]
* ElasticFusion - Real-time dense visual SLAM system [[github](http://github.com/mp3guy/ElasticFusion) ![ElasticFusion](https://img.shields.io/github/stars/mp3guy/ElasticFusion.svg?style=flat&label=Star&maxAge=86400)]
* [fiducials](http://wiki.ros.org/fiducials) - Simultaneous localization and mapping using fiducial markers [[github](http://github.com/UbiquityRobotics/fiducials) ![UbiquityRobotics/fiducials](https://img.shields.io/github/stars/UbiquityRobotics/fiducials.svg?style=flat&label=Star&maxAge=86400)]
* GTSAM - Smoothing and mapping (SAM) in robotics and vision [[github](http://github.com/borglab/gtsam) ![borglab/gtsam](https://img.shields.io/github/stars/borglab/gtsam.svg?style=flat&label=Star&maxAge=86400)]
* Kintinuous - Real-time large scale dense visual SLAM system [[github](http://github.com/mp3guy/Kintinuous) ![Kintinuous](https://img.shields.io/github/stars/mp3guy/Kintinuous.svg?style=flat&label=Star&maxAge=86400)]
* [LSD-SLAM](https://vision.in.tum.de/research/vslam/lsdslam) - Real-time monocular SLAM [[github](http://github.com/tum-vision/lsd_slam) ![lsdslam](https://img.shields.io/github/stars/tum-vision/lsd_slam.svg?style=flat&label=Star&maxAge=86400)]
* ORB-SLAM2 - Real-time SLAM library for Monocular, Stereo and RGB-D cameras [[github](http://github.com/raulmur/ORB_SLAM2) ![ORB_SLAM2](https://img.shields.io/github/stars/raulmur/ORB_SLAM2.svg?style=flat&label=Star&maxAge=86400)]
* [RTAP-Map](http://introlab.github.io/rtabmap/) - RGB-D Graph SLAM approach based on a global Bayesian loop closure detector [[github](http://github.com/introlab/rtabmap) ![introlab/rtabmap](https://img.shields.io/github/stars/introlab/rtabmap.svg?style=flat&label=Star&maxAge=86400)]
* [SRBA](http://mrpt.github.io/srba/) - Solving SLAM/BA in relative coordinates with flexibility for different submapping strategies [[github](http://github.com/MRPT/srba) ![srba](https://img.shields.io/github/stars/MRPT/srba.svg?style=flat&label=Star&maxAge=86400)]

#### SLAM Dataset

* [Awesome SLAM Datasets](https://github.com/youngguncho/awesome-slam-datasets)

### [Vision](#awesome-robotics-libraries)

* [ViSP](http://visp.inria.fr/) - Visual Servoing Platform [[github](https://github.com/lagadic/visp) ![lagadic/visp](https://img.shields.io/github/stars/lagadic/visp.svg?style=flat&label=Star&maxAge=86400)]
* [BundleTrack](https://github.com/wenbowen123/BundleTrack) - 6D Pose Tracking for Novel Objects without 3D Models [[github](https://github.com/wenbowen123/BundleTrack) ![wenbowen123/BundleTrack](https://img.shields.io/github/stars/wenbowen123/BundleTrack.svg?style=flat&label=Star&maxAge=86400)]
* [se(3)-TrackNet](https://github.com/wenbowen123/iros20-6d-pose-tracking) - 6D Pose Tracking for Novel Objects without 3D Models [[github](https://github.com/wenbowen123/iros20-6d-pose-tracking) ![wenbowen123/iros20-6d-pose-tracking](https://img.shields.io/github/stars/wenbowen123/iros20-6d-pose-tracking.svg?style=flat&label=Star&maxAge=86400)]

### [Fluid](#awesome-robotics-libraries)

* [Fluid Engine Dev - Jet](https://fluidenginedevelopment.org/) - Fluid simulation engine for computer graphics applications [[github](https://github.com/doyubkim/fluid-engine-dev) ![doyubkim/fluid-engine-dev](https://img.shields.io/github/stars/doyubkim/fluid-engine-dev.svg?style=flat&label=Star&maxAge=86400)]

### [Multiphysics](#awesome-robotics-libraries)

* [Kratos](http://www.cimne.com/kratos/) - Framework for building parallel multi-disciplinary simulation software [[github](https://github.com/KratosMultiphysics/Kratos) ![KratosMultiphysics/Kratos](https://img.shields.io/github/stars/KratosMultiphysics/Kratos.svg?style=flat&label=Star&maxAge=86400)]

### [Math](#awesome-robotics-libraries)

* Fastor - Light-weight high performance tensor algebra framework in C++11/14/17 [[github](https://github.com/romeric/Fastor) ![romeric/Fastor](https://img.shields.io/github/stars/romeric/Fastor.svg?style=flat&label=Star&maxAge=86400)]
* linalg.h - Single header public domain linear algebra library for C++11 [[github](https://github.com/sgorsten/linalg) ![sgorsten/linalg](https://img.shields.io/github/stars/sgorsten/linalg.svg?style=flat&label=Star&maxAge=86400)]
* manif - Small c++11 header-only library for Lie theory. [[github](https://github.com/artivis/manif) ![artivis/manif](https://img.shields.io/github/stars/artivis/manif.svg?style=flat&label=Star&maxAge=86400)]
* Sophus - Lie groups using Eigen [[github](https://github.com/strasdat/Sophus) ![strasdat/Sophus](https://img.shields.io/github/stars/strasdat/Sophus.svg?style=flat&label=Star&maxAge=86400)]
* SpaceVelAlg - Spatial vector algebra with the Eigen3 [[github](https://github.com/jrl-umi3218/SpaceVecAlg) ![jrl-umi3218/SpaceVecAlg](https://img.shields.io/github/stars/jrl-umi3218/SpaceVecAlg.svg?style=flat&label=Star&maxAge=86400)]

### [ETC](#awesome-robotics-libraries)

* fuse - General architecture for performing sensor fusion live on a robot [[github](https://github.com/locusrobotics/fuse) ![locusrobotics/fuse](https://img.shields.io/github/stars/locusrobotics/fuse.svg?style=flat&label=Star&maxAge=86400)]
* [Foxglove Studio](https://foxglove.dev) – A fully integrated visualization and debugging desktop app for your robotics data. Combines functionality of tools like `rviz`, `rqt`, and more. Also available via [web app](https://studio.foxglove.dev).

## [Other Awesome Lists](#awesome-robotics-libraries)

* [Awesome Robotics](https://github.com/Kiloreux/awesome-robotics) (Kiloreux)
* [Awesome Robotics](https://github.com/ahundt/awesome-robotics) (ahundt)
* [Awesome Robotic Tooling](https://github.com/Ly0n/awesome-robotic-tooling)
* [Awesome Artificial Intelligence](https://github.com/owainlewis/awesome-artificial-intelligence)
* [Awesome Collision Detection](https://github.com/jslee02/awesome-collision-detection)
* [Awesome Computer Vision](https://github.com/jbhuang0604/awesome-computer-vision)
* [Awesome Machine Learning](https://github.com/josephmisiti/awesome-machine-learning)
* [Awesome Deep Learning](https://github.com/ChristosChristofidis/awesome-deep-learning)
* [Awesome Gazebo](https://github.com/fkromer/awesome-gazebo)
* [Awesome Grasping](https://github.com/Po-Jen/awesome-grasping)
* [Awesome Human Robot Interaction](https://github.com/Po-Jen/awesome-human-robot-interaction)
* [PythonRobotics](https://github.com/AtsushiSakai/PythonRobotics) - Python sample codes for robotics algorithms
* [Robotics Coursework](https://github.com/mithi/robotics-coursework) - A list of robotics courses you can take online

## [Contributing](#awesome-robotics-libraries)

Contributions are very welcome! Please read the [contribution guidelines](https://github.com/jslee02/awesome-robotics-libraries/blob/master/CONTRIBUTING.md) first. Also, please feel free to report any error.

## [License](#awesome-robotics-libraries)

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)
