## 目标与原则
- 以“文档即产品”为核心，将文档体系打造为转化漏斗：路过访客 → 新人 → 贡献者 → 月付用户（NEC+）。
- 对标国际开源（Diátaxis：Tutorial/How-to/Reference/Explanation），把资料从“堆链接”升级为“可执行路径”。
- 采用 docs-as-code（仓库内维护文档），所有文档可走 Issue/PR 流；不影响现有代码结构与入口。

## 顶层信息架构（IA）
- Start Here（新人入口）：关于NEC、Quickstart 30/60min、First Good Issue、新人加入与提问方式
- Learn（学习路线）：岗位路线图（机械/硬件/软件/运营）、技能矩阵、阶段化推荐资源
- Build（项目与竞赛）：竞赛总览、项目总览、各子项目页面（固定模板：快速跑通、架构、目录、交付物、贡献入口、FAQ）
- Contribute（参与协作）：贡献指南、Issue/PR模板、分支策略、Commit规范、代码风格、Review/CI、文档贡献指南
- Community（社区）：行为准则、维护者介绍、沟通渠道与节奏、周刊精选（本周新增/新手任务/项目进展/踩坑复盘/招募/NEC+预告）
- NEC+（付费）：会员价值、30/60/90天路线、Office Hour与评审、模板库、项目加速服务、权益说明与成功案例

## 仓库文档结构（docs-as-code）
- 根目录最小集：
  - `README.md`（一句话定位 + 三入口：Quickstart / First Good Issue / Join）
  - `CONTRIBUTING.md`（贡献指南）
  - `CODE_OF_CONDUCT.md`（行为准则）
  - `GOVERNANCE.md`（治理与决策）
  - `SECURITY.md`（安全问题/漏洞反馈方式）
  - `SUPPORT.md`（求助方式/响应SLA/提问模板）
  - `ROADMAP.md`（版本计划/里程碑）
  - `.github/ISSUE_TEMPLATE/*` + `.github/PULL_REQUEST_TEMPLATE.md`
- 文档目录：
  - `docs/zh/` 与 `docs/en/`（国际化占位，优先完善 zh）
  - 每语言目录内分组：`start-here/`、`learn/`、`build/`、`contribute/`、`community/`、`nec-plus/`

## 首批新增文件（一次PR）
- Start Here：
  - `docs/start-here/60min.md`（新人60分钟上手：从0到第一个PR；含FAQ/提问模板/下一步链接）
  - `docs/start-here/newcomers.md`（新人墙：按行追加规范）
  - `docs/start-here/first-good-issue.md`（新手任务系统：流程+交付标准+任务清单）
- Contribute：
  - `docs/contribute/labels.md`（标签体系：Type/Area/Difficulty/Status）
  - `.github/ISSUE_TEMPLATE/bug_report.yml`、`docs_task.yml`
  - `.github/PULL_REQUEST_TEMPLATE.md`
- Learn：
  - `docs/learn/roles.md`（岗位路线图框架：入门→能做事→能独立→能带人；每阶段产出目标）
- Build：
  - `docs/build/competition_index.md`（竞赛线总览）
  - `docs/build/project_index.md`（项目线总览）
  - `docs/templates/README_PROJECT_TEMPLATE.md`、`docs/templates/README_COMPETITION_TEMPLATE.md`
- Community：
  - `docs/community/maintainers.md`、`docs/community/weekly.md`（周刊模板页）
- NEC+：
  - `docs/nec-plus/landing.md`（会员产品页：价值/路线/Office Hour/模板库/权益/案例）
- Demo（可运行最小验证）：
  - `demos/nec_quickstart/hello_nec.py`（无第三方依赖，标准库仿真与ASCII轨迹）
  - `demos/nec_quickstart/README.md`、`.gitignore`

## 现有内容的重排与映射（增量，不删原文）
- 你们的“我们是谁/仓库故事”：
  - Start Here → 关于NEC（短版）
  - Community → Our Story（长版）
- 竞赛/项目内容：
  - Build → 竞赛总览/项目总览页；各子项目/竞赛页落地统一模板（快速跑通/架构/目录/交付物/贡献入口/FAQ）
- 岗位技能分割（机械/硬件/软件/运营）：
  - Learn → 岗位路线图（每阶段明确“1周任务”“2周作品”“1月子任务”）
- 资源表格：
  - Reference页（可放`docs/reference/resources.md`），按岗位/难度/用途分类，保留提取码/合规声明；Start Here只保留3条最推荐入口（如MicroROS、平衡小车、MechDog）。

## 内容写作规范（文档风格指南要点）
- 标题动词化：安装环境/运行Demo/提交PR
- 页首三要素：你将完成什么/前置条件/预计耗时
- 代码块可复制运行；页尾必须有下一步链接（CTA）
- 术语统一：Linux/Founder/EDA/RT-Thread/openEuler/ROS 等大小写与拼写

## First Good Issue：产品化的任务系统
- 标签：`good first issue`、`help wanted`、`mentor available`、`type:*`、`area:*`、`difficulty:*`、`status:*`
- 页面（Start Here → First Good Issue）：
  - 新手任务列表（按岗位/难度过滤）
  - 完成标准 + 参考链接 + 预期产出（署名、贡献记录等）

## NEC+（付费与开源边界）
- 免费：Quickstart、基础文档、公开项目、Issue/PR流程
- 付费（加速器/服务）：结构化路线（30/60/90天）、Office Hour/评审、模板库、项目加速服务、会员活动；不卖闭源代码，卖“时间与指导”。

## 落地阶段（敏捷推进）
- 第0阶段（1–3天）：
  - 重写根`README.md`三入口（Quickstart/First Good Issue/Join）
  - 建立`docs/`骨架与Issue/PR模板
- 第1阶段（2周）：
  - 完成《新人60分钟上手》《First Good Issue》
  - 上线最小可运行Demo与Support页（FAQ/提问模板）
- 第2阶段（1–2个月）：
  - 重点项目与竞赛页套用统一模板；做索引页；每周一篇短复盘
- 第3阶段（持续）：
  - NEC+内测：30天路线+每周Office Hour；模板库资产化；沉淀作品集与案例

## 质量与验收
- Demo在Windows/macOS本地可运行并生成日志；参数可用
- 文档内链接有效；外链标注提取码；相对路径存在
- 模板可被新项目直接拷贝落地；页面末尾均有下一步链接

## 首批Good First Issues（可立即发布）
- docs：修正文档常见拼写与术语（difficulty:1）
- docs：补齐《新人60分钟上手》的平台细节（difficulty:1）
- docs：MicroROS(ESP32)Robot快速开始索引（difficulty:2）
- repo：为`demos/nec_quickstart`增加`--help`示例截图（difficulty:1）
- ops：补PR模板运行Demo勾选项（difficulty:1）
- feature：`hello_nec.py`增加`--plot ascii|off`开关（difficulty:2）

## 你的确认项
- 是否按上述一次PR新增文件与骨架？
- 是否需要我同时生成`docs/reference/resources.md`首版（按岗位/难度/用途重排，并给每条资源加建议产出）？
- NEC+定位与边界是否按当前方案落地（先内测）？

确认后，我将：
- 一次性新增上述文件与目录（不改动现有代码与路径），在本地验证最小Demo；
- 更新根README三入口，提交PR供你审核。