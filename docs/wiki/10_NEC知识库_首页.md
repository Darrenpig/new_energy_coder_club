#  { NEC 知识库 }

# ** {**** ****NEC****（New Energy × Robotics）****}**

## 一个由高校本科生驱动的新能源 × 机器人开源社区：用真实竞赛

## &省级/国家级项目，把学习变成可交付的作品集。

> [!TIP]

## 新人 60 分钟上手：从 0 到第一个 PR

- 🧩 真实任务驱动：竞赛线 & 项目线并行
- 🧠 结构化成长：机械 / 硬件 / 软件 / 运营路线图
  **开始贡献：** Quickstart ｜ First Good Issue ｜ 加入社群

### < [① Start Here（新人入口）](https://scn0bdoc8zxg.feishu.cn/wiki/KzFAw6KTDiKu7dkQwLFcFEQvn3f) >

- 你是谁（NEC 是什么、适合谁、不适合谁）
- **1 分钟 **** **了解：竞赛线 vs 项目线
- **3 分钟****  **Quickstart：拉起一个最小可运行 Demo（强烈建议）
- **First Good Issue：小白必看**
- 加入社区：飞书企业/QQ 群/微信群、沟通规范、提问方式

### < ② Learn（学习路线） >

- 岗位路线图（机构 / 视觉 / 运营）
- 每条路线：从入门 → 能做事 → 能独立 → 能带人
- 技能矩阵（你们定义的“开发基线”）
- 推荐资源（你现在列的课程/资料，都放这里，但要“按阶段排序”）

### < ③ Build（项目与竞赛） >

- 竞赛（[ROBOCON](https://scn0bdoc8zxg.feishu.cn/wiki/T92TwqYgZiI7oFkKE67ctSAInXf) 等）总览、历届资料索引、复盘
- 项目（2024-2025 的 9 个项目）总览、里程碑、交付物索引
- 每个子项目必须有：README + 架构图 + 快速跑通 + 贡献入口

### < [④ Contribute（参与协作）](https://scn0bdoc8zxg.feishu.cn/wiki/CREVwvQALijq55k8waBcOXXHnah) >

- 贡献指南（Contributing）
- Issue/PR 模板、分支策略、Commit 规范、代码风格
- Review 流程、CI/检查项
- 文档贡献指南（写文档也算贡献！）

### <  [⑤ Community（社区）](https://scn0bdoc8zxg.feishu.cn/wiki/KeqJwFcBfipgKJkNweccRlPgn94)>

- 社区文化与行为准则（Code of Conduct）
- 维护者/核心成员介绍（Maintainers）
- 沟通渠道与节奏（周会/例会/值班/FAQ）
- 周刊精选（对标你给的“对标文件”那种社区精选）

### 

> 这个导航结构的关键是：**“Start Here”必须永远在最左边，且永远短。**

# <  加入社群  & 技术合作 & 商务合作 >

![](output%5Cstatic/TFDqbtRH4oluUYx1ByjcvJnendd.jpg)
**QQ 交流社群**
群号：479053780
![](output%5Cstatic/RAHLbvnE8oxjyix1N41cF1H7nZc.png)
**技术合作咨询**
电话：17372991579
![](output%5Cstatic/L1mAbIHwRoyRJ6xKsPycONIon7d.png)
**商务合作咨询**
电话：19851990356

# Aiming「准实验室级 + 准工程组织级」的开源仓库文档

---

# 历史版本：

欢迎来到 「NEC 新能源极客俱乐部」 —— 一个充满活力和脑洞的「开源游乐园」这里不仅是新能源、机器人爱好者的秘密基地，更是大学生竞赛党的「宝藏地图」

- **「搞事情」属性拉满**：团队正在疯狂备战 **2026 全国大学生机器人大赛**，囤积了 82 套 FRC 图纸、铝方型材设计库，甚至还有企业级网盘资料包，仿佛藏着一整个机器人军火库。
- **「极客风」代码狂欢**：20 多位全栈小白在这里捣鼓嵌入式开发、BSP 底软，一边玩转 openEuler 和 Rt-thread 开源社区，一边把代码写成「乐高积木」——模块化、可复用，拼出无限可能。
- **「野生导师」出没ing~**：从机械设计到算法调参，从竞赛攻略到科研经验，这里的文档像「哆啦 A 梦的口袋」，随时掏出你需要的秘籍攻略，助你从菜鸟进化成赛场扛把子。

# 📁 仓库结构

本仓库采用**双驱动型**组织方式，分为竞赛驱动型和项目驱动型两大类别，便于管理和查找内容。

📂 目录结构概览

```
new_energy_coder_club/
├── competitions/           # 竞赛驱动型项目
│   ├── 2024/              # 2024年度竞赛
│   └── 2025/              # 2025年度竞赛
├── projects/              # 项目驱动型开发 [详细说明](./projects/README.md)
│   ├── ai/                # 人工智能项目 [查看详情](./projects/ai/README.md)
│   ├── robotics/          # 机器人项目 [查看详情](./projects/robotics/README.md)
│   ├── embedded/          # 嵌入式项目 [查看详情](./projects/embedded/README.md)
│   ├── templates/         # 项目模板 [查看详情](./projects/templates/README.md)
│   └── 科研「横向项目」/    # 科研合作项目
├── shared/                # 共享资源库
│   ├── images/            # 图片资源
│   └── models/            # 3D模型文件
├── README.md              # 项目说明文档
├── CONTRIBUTING.md        # 贡献指南
└── LICENSE.md             # 开源协议
```

## 📋 详细目录结构

### 1. 竞赛驱动型 (competitions/)

按年份和竞赛类型组织，包含各年度参加的竞赛项目：

- `2024/`: 2024 年度竞赛项目

  - `robocon/`: 全国机器人竞赛 ROBOCON
  - `huawei-cloud-ai/`: 华为云（化工行业人工智能应用）
  - `smart-car-outdoor/`: 智能车室外赛
  - `iot-design-huawei/`: 物联网设计竞赛
  - `electronics-competition/`: 电赛预选
  - `energy-saving/`: 节能减排大赛
- `2025/`: 2025 年度竞赛项目

  - `robocon/`: 全国机器人竞赛 ROBOCON
  - `traffic-design/`: 交通设计大赛
  - `energy-saving/`: 节能减排大赛

### 2. 项目驱动型 (projects/)

按技术领域和项目类型组织，促进跨竞赛项目的技术复用：

- `ai/`: 人工智能相关项目 [📖 详细说明](./projects/ai/README.md)

  - `energy-monitoring/`: 能源监测系统
- `robotics/`: 机器人相关项目 [📖 详细说明](./projects/robotics/README.md)

  - `humanoid-robot/`: 人形机器人开发
  - `250510飞控通讯/`: 飞行控制系统
- `embedded/`: 嵌入式相关项目 [📖 详细说明](./projects/embedded/README.md)

  - `nearlink/`: 星闪技术开发
- `templates/`: 项目开发模板 [📖 详细说明](./projects/templates/README.md)

  - 提供 AI、嵌入式、机器人等项目的标准化模板
- `科研「横向项目」/`: 科研合作项目 [📖 详细说明](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/README.md)

  - `dexterous-hand/`: 人形机器人 UMI 低成本灵巧手项目
  - `pneumatic-system/`: 气缸控制系统开发
  - `3d-printing-team/`: 3D 打印成型组
  - `mica-validation/`: MICA 关键性验证项目 [📚 在线文档](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/mica-validation/README.md)
    - 📖 [GitHub Actions 部署指南](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/mica-validation/docs/GITHUB_ACTIONS_DEPLOYMENT.md) - 完整的自动化部署配置
    - ✅ [部署检查清单](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/mica-validation/docs/DEPLOYMENT_CHECKLIST.md) - 确保部署成功的逐步指南

### 3. 共享资源 (shared/)

各项目共用的资源和工具

- `images/`: 图片资源

  - `Image/`: 项目 Logo、路线图等核心图片
  - `competition/`: 竞赛相关图片
  - `project/`: 项目展示图片
  - `team/`: 团队合照
  - `technical/`: 技术文档图片
- `models/`: 3D 模型文件

  - 包含各种机械零件的 STEP 格式文件
  - 电机、轮毂、联轴器等标准件模型

## 🧭 快速导航指南

### 📍 项目查找

- **🏆 竞赛项目**：`competitions/[年份]/[竞赛名称]`
- **🔬 技术项目**：`projects/[技术领域]/[项目名称]`
- **📦 共享资源**：`shared/[资源类型]`

### 🔥 热门项目快速入口

- [📁 项目总览](./projects/README.md) - 查看所有项目分类和导航
- [🤖 2025 ROBOCON](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/) - 全国大学生机器人竞赛
- [🦾 人形机器人](./projects/robotics/humanoid-robot/%E4%BA%BA%E5%BD%A2%E6%9C%BA%E5%99%A8%E4%BA%BA%E4%B8%BB%E7%BA%BF/) - Duma 小型人形机器人项目
- [⚡ 星闪技术](./projects/embedded/nearlink/20250426%E6%98%9F%E9%97%AA%E6%89%8B%E6%9F%84/) - 新一代无线通信技术
- [🧠 5 轴流体工作站](./Project_5-axis-fluid-workstation_%E6%B5%81%E4%BD%93%E5%B7%A5%E4%BD%9C%E7%AB%99/) - 智能能源管理系统 · [GitHub](https://github.com/Darrenpig/5-axis-fluid-workstation)
- [🐶 轮腿机器狗 K230 KFS](./Project_MechDog%E6%9C%BA%E5%99%A8%E7%8B%97_K230_KFS/) - 基于 K230/KFS 的轮腿机器狗工程
- [🔬 科研横向项目](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/README.md) - 产学研合作项目总览
- [🎯 MICA 验证项目](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/mica-validation/README.md) - 关键性验证与文档系统
- [🛠️ 项目模板](./projects/templates/README.md) - 标准化开发模板

#### 2025 ROBOCON 组别快速入口

- [📄 上位机组](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E4%B8%8A%E4%BD%8D%E6%9C%BA%E7%BB%84.md)
- [📄 上位机组_运球机构](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E4%B8%8A%E4%BD%8D%E6%9C%BA%E7%BB%84_%E8%BF%90%E7%90%83%E6%9C%BA%E6%9E%84.md)
- [📄 算法组](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E7%AE%97%E6%B3%95%E7%BB%84.md)
- [📄 硬件组](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E7%A1%AC%E4%BB%B6%E7%BB%84.md)
- [📄 运营组](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E8%BF%90%E8%90%A5%E7%BB%84.md)
- [📄 采购组](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E9%87%87%E8%B4%AD%E7%BB%84.md)
- [📄 队伍结构](./competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON/%E9%98%9F%E4%BC%8D%E7%BB%93%E6%9E%84.md)

#### 科研「横向项目」快速入口

- [📄 3d-printing-sig](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/3d-printing-sig.md)
- [📄 AGL-openEuler](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/AGL-openEuler.md)
- [📄 dexterous-hand](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/dexterous-hand.md)
- [📄 pneumatic-system](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/pneumatic-system.md)

### 📊 项目状态概览

<table>
<tr>
<td>类别<br/></td><td>活跃项目数<br/></td><td>状态<br/></td><td>最近更新<br/></td></tr>
<tr>
<td>🏆 竞赛项目<br/></td><td>9个<br/></td><td>🟢 活跃<br/></td><td>2025-11<br/></td></tr>
<tr>
<td>🤖 机器人项目<br/></td><td>3个<br/></td><td>🟢 活跃<br/></td><td>2025-10<br/></td></tr>
<tr>
<td>🔬 AI项目<br/></td><td>2个<br/></td><td>🟡 开发中<br/></td><td>2024-12<br/></td></tr>
<tr>
<td>🔬 科研横向项目<br/></td><td>4个<br/></td><td>🟢 活跃<br/></td><td>2025-10<br/></td></tr>
<tr>
<td>⚡ 嵌入式项目<br/></td><td>2个<br/></td><td>🟢 活跃<br/></td><td>2025-08<br/></td></tr>
</table>

![NEC 团队成员们](https://darrenpig.github.io/files/news10.jpg)

> NEC 团队成员们的合照

## Repositories 📦

<table>
<tr>
<td>Title<br/></td><td>Description<br/></td><td>License<br/></td></tr>
<tr>
<td>[2025全国大学生机器人竞赛-ROBOCON](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/competition_2025%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B-ROBOCON)<br/></td><td>轮腿机器狗与轮腿人形机器人研发与竞赛基线<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🏆 2024年竞赛项目总览](./competitions/2024/README.md)<br/></td><td>2024年度所有竞赛项目的导航和概览<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🤖 2024 ROBOCON](./competitions/2024/robocon/README.md)<br/></td><td>2024赛季RC团队的开发项目流程开源<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🧠 2024华为云AI化工赛题](./competitions/2024/huawei-cloud-ai/README.md)<br/></td><td>提供"星闪智巡"项目的接口和开发基线<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🚗 2024智能车室外赛](./competitions/2024/smart-car-outdoor/README.md)<br/></td><td>汽车工程学院机器人实验室提供的开发环境<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🌐 2024物联网设计竞赛](./competitions/2024/iot-design-huawei/README.md)<br/></td><td>工业级边缘计算网关AR502H-CN 开发学习文档<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[⚡ 2024电子设计竞赛](./competitions/2024/electronics-competition/README.md)<br/></td><td>星闪通讯协议模块的Demo实验<br/></td><td><img src="https://img.shields.io/badge/license-CIT-bule" alt="License"><br/></td></tr>
<tr>
<td>[🌱 2024节能减排大赛](./competitions/2024/energy-saving/README.md)<br/></td><td>亚博智能 巡检小车Demo,研究esp32-UDP虚拟机<br/></td><td><img src="https://img.shields.io/badge/license-MIT-red" alt="License"><br/></td></tr>
</table>

## About The Project 关于项目

#### **「DarrenPig 新能源开发者社区」** 是一个以 **技术共享与实践成长为核心** 的开源协作平台，适合以下人群加入：

1. **竞赛科研小白**：提供 **全国大学生机器人大赛** 全周期备赛资源 ROBOCON，包括 FRC 图纸、硬件设计模板、嵌入式开发案例，助力从理论到落地的完整闭环。
2. **新能源与机器人爱好者**：聚焦新能源技术、IOT 与自动化控制，结合 openEuler 等开源生态，探索智能硬件与可持续能源的交叉创新。
3. **全栈开发者训练营**：通过实际项目（如机器人 BSP 开发、MayCAD 设计）积累经验，社区成员协作解决真实问题，打造可复用的技术案例。
4. **开源贡献者孵化地**：参与社区文档维护、代码提交，与 40+ 开发者共同成长，你的每一次都可能成为他人眼中的「闪光之处」。

### 一句话灵魂总结：

这里是 **「技术宅的游乐场」** + **「竞赛党的弹药库」**，用开源精神点燃新能源与机器人的未来！🚀

（想一起造轮子 or 抱团打比赛？速戳：[仓库传送门](https://gitee.com/darrenpig/new_energy_coder_club)）

Project Profile 项目简介

目前是一个开源项目，想要做 1W 以内的人形机器人与轮腿机器狗，同时兼顾高校开发者的 ROBOCON 竞赛需求，设计师们的落地项目实践，以及大家的好玩技术的追求。

我们将在 2 个月内快速开发人形机器人 2+ 场景，并且通过广泛的横向项目来维护贡献这个项目。希望贡献项目的经历可以成为大家以后美好的回忆。——DarrenPig

分支有以下的组成：

### 竞赛（3+ing） + 科研（IEEE 项目和专业课设） + 横向项目（委托外包和合作） + 开源运营（机器人社群和开源社区）

- Internet_of_Things_Design_Competition 物联网项目
- Electronic_design_competition 电子设计项目
- Energy_conservation_and_emission_reduction_competition 新能源项目
- main（案例 Demo 集中展示的分支）商业项目

### Roadmap 项目探索地图

## 📬 **Contact 联系我们**

想和我们快速搭上线？看这里！

- **💡 建议 & 合作**：欢迎来 [Gitee Issues 区](https://gitee.com/darrenpig/new_energy_coder_club/issues) 提需求！无论是项目合作还是功能建议，我们都会仔细阅读并标记为 `讨论中`/`已采纳`
- **🌐 社交阵地**：

  - **Gitee 动态**：[项目主页](https://gitee.com/darrenpig/new_energy_coder_club) 实时更新代码与公告
  - **官方网站**：[newenergycoder.club](https://www.newenergycoder.club) 获取最新活动、文档与社区介绍
  - **小红书达人**：关注 [DarrenPig](https://www.xiaohongshu.com/user/profile/62f2899b000000001f0074f1) 获取技术段子与新能源黑科技
  - **微信社群**：[扫码](http://darrenpig.blog.csdn.net)加入开发者群（详情边栏底部名片），随时在线交流 💬

**🚀 小贴士**

- **项目双平台同步**：代码仓库同时在 [GitHub](https://github.com/Darrenpig/new_energy_coder_club) 和 [Gitee](https://gitee.com/darrenpig/new_energy_coder_club) 维护，国内推荐用 [Gitee](https://gitee.com/darrenpig/new_energy_coder_club) 加速访问
- **赞助与合作**：企业级合作请联系邮箱 22230635@czu.cn，开源贡献者请直接提 PR，你的名字将闪耀在**致谢名单** 🌟
- **紧急问题**：邮件标题加注【紧急】，我们会优先处理！

**🙌 期待你的加入**

无论是想托管项目、参与开发，还是单纯唠嗑技术，我们都敞开大门！用你的奇思妙想，点亮新能源编程社区吧 ～ 🚀

---

## 🤝 如何参与贡献

### 📋 贡献方式

1. **🐛 问题反馈**：在 [Issues](https://gitee.com/darrenpig/new_energy_coder_club/issues) 中报告 bug 或提出建议
2. **💡 功能建议**：提出新功能想法或改进建议
3. **📝 文档完善**：改进文档、添加教程或翻译内容
4. **💻 代码贡献**：提交代码修复或新功能实现
5. **🎨 设计贡献**：提供 UI 设计、Logo 设计或 3D 模型

### 🔧 开发规范

- **代码风格**：遵循各语言的标准编码规范
- **提交规范**：使用清晰的 commit message，格式：`[类型] 简短描述`

  - `[feat]` 新功能
  - `[fix]` 修复 bug
  - `[docs]` 文档更新
  - `[style]` 代码格式调整
  - `[refactor]` 代码重构
- **分支管理**：从 main 分支创建 feature 分支，完成后提交 PR
- **测试要求**：新功能需要包含相应的测试用例

### 📚 更多信息

详细的贡献指南请参考：[CONTRIBUTING.md](./CONTRIBUTING.md)

## Acknowledgments 致谢 📂

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!感谢以下开源组件、资料、资源库的帮助

## 感谢以下赞助伙伴，以及全体开发者们

我们衷心感谢那些来自萝马车圈、艾迈斯科技、深圳米尔电子、openEuler 社区、易百纳社区、Rt-theard 社区、NXP 社区、华为云社区的合作伙伴，他们的软硬件支持，纪念品、连接器、工业主板、开发板和服务器代金券......为项目的进行提供了坚实的支持。

---

## 25.03.16 自动化流体监测站 合作开发 new_energy_coder_club 苏州项目

@GeyuanLi  @DarrenPig  @ 殷子豪

<table>
<tr>
<td>序号<br/></td><td>ID<br/></td><td>负责<br/></td><td>职位<br/></td><td>技能<br/></td></tr>
<tr>
<td>1<br/></td><td>@殷统创<br/></td><td>HMI界面<br/></td><td>顾问<br/></td><td>Qt绘图<br/></td></tr>
<tr>
<td>2<br/></td><td>@DarrenPig<br/></td><td>需求对接<br/></td><td>负责人<br/></td><td>方案提供<br/></td></tr>
<tr>
<td>3<br/></td><td>@李一楠<br/></td><td>开发合规<br/></td><td>合规运营<br/></td><td>运营合规<br/></td></tr>
<tr>
<td>**5**<br/></td><td>**@卞乐凌**<br/></td><td>**24 电三**<br/></td><td>**Figma前端，布线**<br/></td><td>**架构文档**<br/></td></tr>
<tr>
<td>6<br/></td><td>@徐海婷<br/></td><td>APIC追踪<br/></td><td>运营合规<br/></td><td>收尾接口<br/></td></tr>
<tr>
<td>7<br/></td><td>@单广志<br/></td><td>仿真控制<br/></td><td>协作者<br/></td><td>指令仿真<br/></td></tr>
<tr>
<td>8<br/></td><td>@郑钦文<br/></td><td>24 机二<br/></td><td>协助<br/></td><td>MayCAD型材<br/></td></tr>
<tr>
<td>**9**<br/></td><td>**@田旺旺**<br/></td><td>**24 信四**<br/></td><td>**负责人**<br/></td><td>**上位机**<br/></td></tr>
<tr>
<td>10<br/></td><td>@孙如婕<br/></td><td>24 机一<br/></td><td>协助<br/></td><td>机械设计<br/></td></tr>
</table>

🎁 最后，特别感谢那些为项目注入“灵魂”的开发者们 @SaNgZi、@ 朱建超、@ 许子涵涵、@ 殷统创、@ 郝磊、@ 黄子澄，你们的卓越贡献，让项目变得更加生动而有质感。🎨

Thank you sincerely to the following partners and developers. It is your outstanding contributions that have endowed the project with a soul-like texture.

---

250516 飞控 Sig 成立

## CIT 项目成员

<table>
<tr>
<td>序号<br/></td><td>赛季<br/></td><td>班级<br/></td><td>职位<br/></td><td>名称<br/></td><td>技能<br/></td></tr>
<tr>
<td>1<br/></td><td>24<br/></td><td>22 能源二<br/></td><td>项目管理<br/></td><td>朱佩韦<br/></td><td><img src="https://img.shields.io/badge/嵌入式BSP-blue" alt="License"> <img src="https://img.shields.io/badge/maintainer-fedcba" alt="License"><br/></td></tr>
<tr>
<td>2<br/></td><td>24<br/></td><td>22 能源一<br/></td><td>电控/上位机<br/></td><td>殷统创<br/></td><td><img src="https://img.shields.io/badge/上位机Qt-blue" alt="License"> <img src="https://img.shields.io/badge/maintainer-fedcba" alt="License"><br/></td></tr>
<tr>
<td>3<br/></td><td>24<br/></td><td>22 财一<br/></td><td>财务总监<br/></td><td>张若璐<br/></td><td><img src="https://img.shields.io/badge/财务分析-ddff9a" alt="License"><br/></td></tr>
<tr>
<td>4<br/></td><td>24<br/></td><td>23 光电二<br/></td><td>仓库维护/上位机<br/></td><td>许子涵<br/></td><td><img src="https://img.shields.io/badge/通讯Pre-blue" alt="License"><br/></td></tr>
<tr>
<td>5<br/></td><td>25<br/></td><td>24 新能源<br/></td><td>赛期管理<br/></td><td>卢王淳<br/></td><td><img src="https://img.shields.io/badge/项管-blue" alt="License"> <img src="https://img.shields.io/badge/机械-172a88" alt="License"> <img src="https://img.shields.io/badge/上位机-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>6<br/></td><td>25<br/></td><td>24 财一<br/></td><td>财务组长<br/></td><td>李晨<br/></td><td><img src="https://img.shields.io/badge/财务-ddff9a" alt="License"><br/></td></tr>
<tr>
<td>7<br/></td><td>25<br/></td><td>24 航4<br/></td><td>运营组长 例会主持<br/></td><td>李一楠<br/></td><td><img src="https://img.shields.io/badge/运营主持-fedcba" alt="License"><br/></td></tr>
<tr>
<td>8<br/></td><td>25<br/></td><td>24汉二<br/></td><td>赛季筹备/宣传<br/></td><td>殷子豪<br/></td><td><img src="https://img.shields.io/badge/汉语言-bule" alt="License"><br/></td></tr>
<tr>
<td>9<br/></td><td>25<br/></td><td>24车辆二<br/></td><td>**队长**<br/></td><td>刘英淇<br/></td><td><img src="https://img.shields.io/badge/上位机-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>10<br/></td><td>25<br/></td><td>24航4<br/></td><td>运营组 上位机组<br/></td><td>陈家辉<br/></td><td><img src="https://img.shields.io/badge/主持_上位机-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>11<br/></td><td>25<br/></td><td>23光电二<br/></td><td>硬件组组长<br/></td><td>杨鑫海<br/></td><td><img src="https://img.shields.io/badge/硬件-bule" alt="License"><br/></td></tr>
<tr>
<td>12<br/></td><td>25<br/></td><td>23光电二<br/></td><td>上位机组组长<br/></td><td>崔正阳<br/></td><td><img src="https://img.shields.io/badge/上位机_网关-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>13<br/></td><td>25<br/></td><td>22机二<br/></td><td>机械组组长<br/></td><td>周鹏程<br/></td><td><img src="https://img.shields.io/badge/机械-172a88" alt="License"><br/></td></tr>
<tr>
<td>14<br/></td><td>25<br/></td><td>22信二<br/></td><td>maintainer<br/></td><td>许珑译<br/></td><td><img src="https://img.shields.io/badge/全栈硬件-blue" alt="License"> <img src="https://img.shields.io/badge/maintainer-fedcba" alt="License"><br/></td></tr>
<tr>
<td>15<br/></td><td>25<br/></td><td>24大数据二<br/></td><td>采购组长<br/></td><td>郑绍恺<br/></td><td><img src="https://img.shields.io/badge/上位机-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>16<br/></td><td>25<br/></td><td>24数学二<br/></td><td>成员<br/></td><td>王子楚<br/></td><td><img src="https://img.shields.io/badge/算法-blue" alt="License"><br/></td></tr>
<tr>
<td>17<br/></td><td>25<br/></td><td>24车辆二<br/></td><td>成员<br/></td><td>朱迪<br/></td><td><img src="https://img.shields.io/badge/电控-blue" alt="License"><br/></td></tr>
<tr>
<td>18<br/></td><td>25<br/></td><td>24视传<br/></td><td>成员<br/></td><td>张岩皓<br/></td><td><img src="https://img.shields.io/badge/设计_队服-blue" alt="License"><br/></td></tr>
<tr>
<td>19<br/></td><td>25<br/></td><td>23光电二<br/></td><td>硬件电控组组长<br/></td><td>单广志<br/></td><td><img src="https://img.shields.io/badge/嵌入式-fedcba" alt="License"> <img src="https://img.shields.io/badge/电控-blue" alt="License"> <img src="https://img.shields.io/badge/上位机-8A2BE2" alt="License"><br/></td></tr>
<tr>
<td>20<br/></td><td>25<br/></td><td>23机二<br/></td><td>机械组组长<br/></td><td>刘锦和<br/></td><td><img src="https://img.shields.io/badge/机械_设计-fedcba" alt="License"><br/></td></tr>
<tr>
<td>21<br/></td><td>25<br/></td><td>23机三<br/></td><td>成员<br/></td><td>陈恺鑫<br/></td><td><img src="https://img.shields.io/badge/机械-172a88" alt="License"><br/></td></tr>
<tr>
<td>22<br/></td><td>25<br/></td><td>22计算机<br/></td><td>maintainer<br/></td><td>闻志伟<br/></td><td><img src="https://img.shields.io/badge/Nearlink-green" alt="License"> <img src="https://img.shields.io/badge/STM32-fedcba" alt="License"><br/></td></tr>
</table>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 工业设计 SIG

<table>
<tr>
<td>序号<br/></td><td>Wechat ID<br/></td><td>方向<br/></td><td>职位<br/></td><td>名称<br/></td><td>技能<br/></td></tr>
<tr>
<td>1<br/></td><td>wwwwlR6<br/></td><td>Wachter<br/></td><td>需求对接<br/></td><td>@皎月<br/></td><td><img src="https://img.shields.io/badge/开源运营-blue" alt="License"><br/></td></tr>
<tr>
<td>2<br/></td><td>wyj102194728<br/></td><td>Designer<br/></td><td>**工业设计**<br/></td><td>@ikkOoOo<br/></td><td><img src="https://img.shields.io/badge/模型渲染-fedcba" alt="License"><br/></td></tr>
<tr>
<td>3<br/></td><td>wxid_h42wf4z6rjek22<br/></td><td>Designer<br/></td><td>场景设计<br/></td><td>@陈思家<br/></td><td><img src="https://img.shields.io/badge/家庭场景-green" alt="License"><br/></td></tr>
<tr>
<td>4<br/></td><td>ryf456814327<br/></td><td>Sponsor<br/></td><td>工业设计<br/></td><td>@洪都拉斯<br/></td><td><img src="https://img.shields.io/badge/人形小组-green" alt="License"><br/></td></tr>
<tr>
<td>5<br/></td><td>yy2112248888<br/></td><td>Designer<br/></td><td>三维建模<br/></td><td>@王璐瑶<br/></td><td><img src="https://img.shields.io/badge/硬件小组-green" alt="License"><br/></td></tr>
<tr>
<td>6<br/></td><td>zgj16788<br/></td><td>Wachter<br/></td><td>三维建模<br/></td><td>@造梦暖屋<br/></td><td><img src="https://img.shields.io/badge/MOD人形-green" alt="License"><br/></td></tr>
<tr>
<td>7<br/></td><td>richellelee_77<br/></td><td>Designer<br/></td><td>产品设计<br/></td><td>@richelle<br/></td><td><img src="https://img.shields.io/badge/maintainer-fedcba" alt="License"><br/></td></tr>
<tr>
<td>8<br/></td><td>pky123678<br/></td><td>Developer<br/></td><td>机械设计<br/></td><td>@彭柯尹<br/></td><td><img src="https://img.shields.io/badge/Mechanic-fedcba" alt="License"><br/></td></tr>
<tr>
<td>9<br/></td><td>WULA114514_<br/></td><td>Wachter<br/></td><td>数字设计<br/></td><td>@Ranjok<br/></td><td><img src="https://img.shields.io/badge/maintainer-fedcba" alt="License"><br/></td></tr>
<tr>
<td>10<br/></td><td>Lazymieie-ness<br/></td><td>Developer<br/></td><td>机械设计<br/></td><td>@孙如婕<br/></td><td><img src="https://img.shields.io/badge/Mechanic-fedcba" alt="License"><br/></td></tr>
</table>

## 最近案例：Duma 小人形机器人 Demo

# 近期工作：

- 麦塔智能科技 RMD-S-5015 电机调试 ** RMD-config1.7**
- 宇树 GO8010-6 电机驱动控制 [https://vsislab.github.io/RoboTamer/](https://vsislab.github.io/RoboTamer/)
- 迈塔智能 RMD-S-5015 电机驱动完成 ✅，AK70 电机驱动进展中
- 气缸控制 BinBin 开源
- ROBOCON 2026 备赛中：[CURC26 赛季规划 NEC 立项申请书](https://scn0bdoc8zxg.feishu.cn/wiki/ZyUNwM0JUiTiuBknuWEc6JTcnKb)
- BB8 球型机器人开源：[【全栈】BB8 球形机器人【开源】](https://scn0bdoc8zxg.feishu.cn/wiki/DIRew47UzizmXhkGxvzcvHuPntf)

---

### References 参考文献

1. React Icons Development Team. React Icons Search Interface. [https://react-icons.github.io/react-icons/search](https://react-icons.github.io/react-icons/search) (2024).
2. 远景资源团队. FRC 机器人竞赛技术图纸资源库. [http://pan.baidu.com/s/1zgAP8AmdhWhqjbqm_c0mog?pwd=v72M](http://pan.baidu.com/s/1zgAP8AmdhWhqjbqm_c0mog?pwd=v72M) (2024).
3. 机械智库. SolidWorks 标准零件库. [https://shop128404759.taobao.com/](https://shop128404759.taobao.com/) (2024).
4. 远景资源网. 工程技术资源共享平台. [https://yuanjingziyuan.com/](https://yuanjingziyuan.com/) (2024).
5. CSDN 博主. GitHub Badge 制作教程指南. [https://blog.csdn.net/m0_74037814/article/details/139511804](https://blog.csdn.net/m0_74037814/article/details/139511804) (2024).
6. 新能源编程俱乐部. 2025 全国机器人竞赛 ROBOCON 项目文档. ./competition_2025 全国机器人竞赛_ROBOCON/ (2025).
7. ROBOCON 组委会. 全国大学生机器人大赛 ROBOCON 技术论坛. [https://ask.cnrobocon.net/](https://ask.cnrobocon.net/) (2024).
8. DJI 大疆创新. RoboMaster 机甲大师赛官方技术论坛. [https://bbs.robomaster.com/](https://bbs.robomaster.com/) (2024).
9. 立创 EDA. 开源硬件平台 OSHW HUB 技术社区. [https://oshwhub.com/explore](https://oshwhub.com/explore) (2024).
10. openEuler 社区. 嵌入式 SIG 雪球计划南向 BSP 支持项目. [https://gitee.com/openeuler/yocto-meta-openeuler/issues/I90DOU#comment-loadder](https://gitee.com/openeuler/yocto-meta-openeuler/issues/I90DOU#comment-loadder) (2024).
11. 中科院软件研究所. 开源之夏 AGL 智能汽车项目. [https://gitee.com/openeuler/open-source-summer/issues/IC3VLM#note_43627656](https://gitee.com/openeuler/open-source-summer/issues/IC3VLM#note_43627656) (2024).
12. 深圳北理莫斯科大学. RoboMaster 北极熊战队开源项目. [https://gitee.com/SMBU-POLARBEAR](https://gitee.com/SMBU-POLARBEAR) (2024).
13. 湖南大学跃鹿战队. RoboMaster 电控通用嵌入式框架. [https://gitee.com/hnuyuelurm/basic_framework](https://gitee.com/hnuyuelurm/basic_framework) (2024).
14. UC Berkeley. Berkeley Humanoid Lite 开源人形机器人项目. [https://lite.berkeley-humanoid.org/](https://lite.berkeley-humanoid.org/) (2025).
15. 重庆邮电大学 HXC 团队. ESP32 开发板套件开源硬件设计. [https://oshwhub.com/qingmeijiupiao/esp32robo](https://oshwhub.com/qingmeijiupiao/esp32robo) (2024).

---

## 🚀 快速上手

想要快速了解项目？观看下面的演示动画：

![UR 机器人路径规划演示](./projects/%E7%A7%91%E7%A0%94%E3%80%8C%E6%A8%AA%E5%90%91%E9%A1%B9%E7%9B%AE%E3%80%8D/image/UR5%E8%B7%AF%E5%BE%84%E8%A7%84%E5%88%92.gif)

_UR 机器人路径规划演示 - 展示机器人运动控制能力_

![百度网盘加速演示](./shared/images/technical/%E7%99%BE%E5%BA%A6%E7%BD%91%E7%9B%98%E5%8A%A0%E9%80%9F.gif)

_百度网盘加速功能演示 - 展示文件传输优化效果_

### 快速开始步骤：

1. **克隆仓库**: `git clone https://gitee.com/darrenpig/new_energy_coder_club`
2. **查看项目**: 浏览 `projects/` 目录选择感兴趣的项目
3. **环境配置**: 参考各项目的 `README.md` 进行环境搭建
4. **运行演示**: 按照项目文档运行示例代码

---

仓库：new_energy_coder_club 开源人形仓库 Gitee X Github 双向

地址：江苏省常州市新北区辽河路 666 号 玉衡 A416 仓库

网址：[https://gitee.com/darrenpig/new_energy_coder_club](https://gitee.com/darrenpig/new_energy_coder_club)

**前沿技术机器人 No.24**

---

© 2025 NEC All Right Reserved.

---

苏 ICP 备 2025187096 号-1X
