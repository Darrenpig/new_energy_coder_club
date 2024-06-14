![ZH-CN_IMAGE_0000001128692146](https://github.com/Darrenpig/new_energy_coder_club/assets/121377489/f96deabf-d2ad-4f49-ae67-1429fe083967)
### 华为数通（数据网关）与智能工厂巡检系统
[![节能减排大赛](https://img.shields.io/badge/节能减排大赛-仓库-blue)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/%E8%8A%82%E8%83%BD%E5%87%8F%E6%8E%92%E5%A4%A7%E8%B5%9B%EF%BC%88Nearlink%E5%B0%8F%E8%BD%A6%E8%AE%A1%E5%88%92%EF%BC%89)         [![物联网设计竞赛-meta_freescale](https://img.shields.io/badge/物联网设计竞赛-仓库-brightgreen)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/2024%E7%89%A9%E8%81%94%E7%BD%91%E8%AE%BE%E8%AE%A1%E7%AB%9E%E8%B5%9B%EF%BC%88Huawei%E6%95%B0%E9%80%9A%EF%BC%89)



[![lisence.md-meta_freescale](https://img.shields.io/badge/lisence.md-Markdown-violet
)](https://gitee.com/darrenpig/new_energy_coder_club/blob/master/LICENSE.md)
[![Readme.md meta-imx](https://img.shields.io/badge/Readme.md-Markdown-8A2BE2
)](https://gitee.com/darrenpig/new_energy_coder_club/blob/master/README.md)

![240522Coder_Club团队初步构成](Image/240522Coder_Club%E5%9B%A2%E9%98%9F%E5%88%9D%E6%AD%A5%E6%9E%84%E6%88%90.png)

#### 赛题链接
- 在线链接：[https://iot.sjtu.edu.cn/show.aspx?info_lb=34&info_id=3962&flag=2](https://iot.sjtu.edu.cn/show.aspx?info_lb=34&info_id=3962&flag=2)
- 命题选择：华为数通（数据网关）作为“端-边-云”架构计算的结合点，应用于智能工厂巡检系统。

#### 资料共享
- [AR502H-CN文档](https://support.huawei.com/enterprise/zh/routers/ar500-pid-21247181)：华为AR502H-CN路由器的详细文档。
- [华为命题资料](https://iot.sjtu.edu.cn/ueditor/net/upload/file/20240327/6384717615388308323667272.pdf)：包含嵌入式、服务器、产品等相关信息。
- [其他文档](https://bbs.huaweicloud.com/forum/thread-0296147346866118020-1-1.html)：其他与项目相关的文档链接。

#### 团队构成
- **指导老师**：
  - 孙潇楠（负责小车部分）
  - 于敏昌（负责网关部分）
- **数据网关组长**：[@顾舒腾](mailto:%E9%A1%BE%E8%88%92%E8%85%BE)
- **小车核心成员**：
  - 朱佩韦（负责上位机与组织工作）
  - 闻志伟（负责下位机工作）

#### 项目进度
- **顾舒腾**：5月25日，配置了M2环境（Mac-mini）的pip和python路径。

#### 成员进度
- **崔正阳**：5月26日，根据参考手册上电AR502H-CN，但console口无法识别，计划通过U盘启动解决。
- **朱佩韦**：5月26日，上传了所有培训视频到qq群，并分享了U盘开局文件的制作方法。
- **许子涵**：5月26日，更新了项目readme文件，并了解项目进程。

#### AR502H-CN路由器概述（基于提供的Mermaid图表）
```mermaid
graph TB
  AR502H("AR502H-CN")
  KeyFeatures("关键特性与价值")
  TechnicalSpecs("技术规格")
  Application("应用场景")
  Development("二次开发支持")
  Warranty("保修与服务")
  
  AR502H --> KeyFeatures
  KeyFeatures --> EdgeComputing("边缘计算")
  KeyFeatures --> IndustrialDesign("工业级设计")
  KeyFeatures --> RichInterfaces("丰富接口")
  AR502H --> TechnicalSpecs
  AR502H --> Application
  AR502H --> Development
  AR502H --> Warranty
  Warranty --> WarrantyPolicy("保修政策")
  Warranty --> CustomerService("客户服务")
  
  subgraph "关键特性与价值"
    EdgeComputing
    IndustrialDesign
    RichInterfaces
  end
  
  subgraph "技术规格"
    Processor("处理器")
    Memory("内存")
    Power("电源功率")
    Environment("环境标准")
  end
  
  subgraph "应用场景"
    SmartLighting("智能灯控网关")
    EnergyManagement("智慧用能物联网关")
  end
```
**注意**：以上概述基于提供的Mermaid图表和文档信息。实际应用场景和技术规格可能根据具体项目需求有所不同。
## 个人进度
### 朱佩韦
- 6.9 维护仓库标准化

### 许子涵
- 6.8 更新两个仓库的readme进行相应的整理


### 崔正阳
- 6.8 @NANA 首次登陆配置；
登录名:admin  密码：Sad123456
   huawei登录名：AR502H-CN  密码：Sad123456

## 【维护记录】：
#### 5.22 @许子涵涵 Readme
#### 5.25 @DarrenPig Readme 报名进度
#### 5.26 @NANA 更新 readme 和个人进度
#### 6.6  @许子涵涵 更新 readme 和 Mermaid
#### 6.8  @NANA 更新 readme和环境配置进度
#### 6.9  @DarrenPig 更新整理Readme
#### 6.14 @许子涵涵 提交作品创意表