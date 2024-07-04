# 欢迎来到 2024华为云（化工行业人工智能应用） 的 Gitee 仓库
## 负责人：朱佩韦 
## 队员：
  @DarrenPig @朱明 @张若璐 @许子涵涵  @和尚  
---
### 分工
-  @DarrenPig 论文、团队
-  @朱明 数据面板、低代码平台、联系化工厂
-  @许子涵涵 文档、仓库维护
-  @张若璐 财务分析
-  @和尚 小车串口API
### 项目依托：基于openEuler的低功耗视觉巡检小车设计
![输入图片说明](../Image/oeCar%E9%A1%B9%E7%9B%AE%E4%BE%9D%E6%89%98.png)

## @DarrenPig@xizihanhan
[![节能减排大赛](https://img.shields.io/badge/节能减排大赛-仓库-blue)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/%E8%8A%82%E8%83%BD%E5%87%8F%E6%8E%92%E5%A4%A7%E8%B5%9B%EF%BC%88Nearlink%E5%B0%8F%E8%BD%A6%E8%AE%A1%E5%88%92%EF%BC%89)         [![物联网设计竞赛-meta_freescale](https://img.shields.io/badge/物联网设计竞赛-仓库-brightgreen)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/2024%E7%89%A9%E8%81%94%E7%BD%91%E8%AE%BE%E8%AE%A1%E7%AB%9E%E8%B5%9B%EF%BC%88Huawei%E6%95%B0%E9%80%9A%EF%BC%89)

[![全国大学生机器人竞赛ROBOCON](https://img.shields.io/badge/ROBOCON竞赛-全国大学生机器人竞赛-green)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/2024%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON)

[![lisence.md-meta_freescale](https://img.shields.io/badge/lisence.md-Markdown-violet
)](https://gitee.com/darrenpig/new_energy_coder_club/blob/master/LICENSE.md)
[![Readme.md meta-imx](https://img.shields.io/badge/Readme.md-Markdown-8A2BE2
)](https://gitee.com/darrenpig/new_energy_coder_club/blob/master/README.md)
![研究过程](../Image/1.1%E9%A1%B9%E7%9B%AE%E8%83%8C%E6%99%AF.png)

### 项目研究内容
- 在石化工业园区中，应用智能巡检系统，能够很好的提升当前园区巡检效率，并且将巡检记录数字化。但目前的巡检系统数据的采集还有赖于人工测量记录，并且部分数据无法通过设备本身的功能进行测量，需要人工输入，所以目前的智能巡检系统还有改进的空间。
- 本项目主要研究的内容是在对某石化工业园区日常巡检工作的实际情况上进行调研并且结合各个生产装置现场巡检情况和实际管理情况，以巡检工作数字化为目标，设计开发出一套以基于openEuler_embedded的视觉巡检小车及系统。其中包括Android\iOS\Harmony OS多端操作系统的统一NT架构APP、5G移动基站通信技术，综合管理系统为核心的智能巡检系统。系统的设计思想是使用数据采集设备对需要人工记录的数据进行采集、存储，采用5G移动通讯技术将采集的数据发送到数据网关AR502部署的综合管理系统，使用视觉识别、SLAM 建图功能实时获取巡检场地中工作人员的位置信息，管理人员通过综合管理系统从手机APP、电脑网页上查询相关巡检人员工作状态、巡检的场地信息、设置巡检路线、巡检质量要求及发布临时巡检任务等。