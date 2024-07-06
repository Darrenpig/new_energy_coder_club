# 欢迎来到 常工光电 Robocon 的 Gitee 仓库
---







7.5固定电机支架与40X40欧标铝方@buquandesky 
---
### 7.4完成R1底盘的吕方组装
### 7.5早上8:00步进电机调试
### 7.6凌晨R2小车完成主要部分的完成，准备出发
---

[![节能减排大赛](https://img.shields.io/badge/节能减排大赛-仓库-blue)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/%E8%8A%82%E8%83%BD%E5%87%8F%E6%8E%92%E5%A4%A7%E8%B5%9B%EF%BC%88Nearlink%E5%B0%8F%E8%BD%A6%E8%AE%A1%E5%88%92%EF%BC%89)         [![物联网设计竞赛-meta_freescale](https://img.shields.io/badge/物联网设计竞赛-仓库-brightgreen)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/2024%E7%89%A9%E8%81%94%E7%BD%91%E8%AE%BE%E8%AE%A1%E7%AB%9E%E8%B5%9B%EF%BC%88Huawei%E6%95%B0%E9%80%9A%EF%BC%89)

[![全国大学生机器人竞赛ROBOCON](https://img.shields.io/badge/ROBOCON竞赛-全国大学生机器人竞赛-green)](https://gitee.com/darrenpig/new_energy_coder_club/tree/master/2024%E5%85%A8%E5%9B%BD%E6%9C%BA%E5%99%A8%E4%BA%BA%E7%AB%9E%E8%B5%9B_ROBOCON)
## 建仓目的：打好7.7RC在江阴的国赛

### 打RC需要做的
#### 1:搭建R1框架
#### 2:进行R2（min）调试
#### 3:搭建3D打印机（2台）

## 所以，我们需要电控和机械一起做

## 机械要求：
#### 1:搭建RC中其中一台车的结构主体
#### 2:将一台3D打印机进行安装

## 电控要求：
#### 1:MicroROS小车要能通
#### 2:视觉ROS-openMV摄像头可以调用
#### 3:Wi-Fi控制ROS开发版进行调试

## 细节：
#### 1:我将会在7.4的12:00前先去开个实验室（整理、充电）
#### 2:将ROS-Pi小车带到实验室

## R1
#### 底盘由欧标铝方搭建制作  坡道由路障板修改 由M8螺丝固定
![底盘由欧标铝方](image/R1%E7%9A%84%E5%BA%95%E7%9B%98%E7%BB%93%E6%9E%84%E5%90%95%E6%96%B9.jpg)

## R2
####步兵（底盘） 支架是3D打印机 MicroROS-PI5(视觉)
![步兵](image/R2%E5%BA%95%E7%9B%98.jpg)


##### RC 队长 @周潮 ，RM 队长 @buquandesky 
---
### 五个问题请注意
---

##### 小组分工
- 电控组  @杨鑫海 组长 + RM组员
- 视觉组  @许子涵涵  @DarrenPig 
- 机械组  @buquandesky 组长（负责RM相关）
- -  @Justin Tianyang 
- -  @Makarov 
- -  @SaNgZi 
- -  @薛陈豪 
- 上位机组  @单广志  @DarrenPig 

---
#### R2：4 个520底盘OK

### R1：底盘电机（刹车），加购4个无刷电机/底盘 @DarrenPig 

ROS-12v、esp32-7.3v

#### 步进电机- 能不能用（扭矩） @buquandesky 

#### 加购方案 10N减速方案

加购方案 行星减速/无刷

### 预算： 1000[2+4]摩擦轮

#### 场地：搭建--12X5=6X5+6X5 @buquandesky  @周潮 

##### 我们搭建 4 X 6 （）

##### R1画、R2步兵

#### 时间：

#### RM组:8人---》两机械、一画图/电控

#### 28、29、30 宿舍 校区

#### ![输入图片说明](../Image/Trees.png)RC节点

#### 29号要求交接时间



# Plan B




---
# 资料共享
### STEP 模型文件
### 步进电机驱动方案
### 高转搓轮选型方案
### 五个问题
# R1思路主要由 @周潮 负责

# R2自动化实现 由 @单广志\@杨鑫海 负责

![输入图片说明](image/R1%E3%80%81R2%20%E5%88%86%E5%B7%A5.png)


## 初步设计

### 设计要求
![输入图片说明](image/%E8%AE%BE%E8%AE%A1%E8%A6%81%E6%B1%82.png)




### R1
![输入图片说明](../Image/R%201.png)
### R2
![输入图片说明](../Image/R2%201.png)
## 场地设计
![输入图片说明](../Image/%E5%9C%BA%E5%9C%B0%E8%AE%BE%E8%AE%A1.png)
g)
### 项目进度
- 7.4  @DarrenPig 完成MicroRos ,完成固件烧录，MicroRos 上边串口通信、esp32虚拟机VM环境搭建
- 7.4  @许子涵涵  ROS拓展板完成环境搭建，串口通信，CAN总线通信，ROSE设备IP地址绑定
- 7.4  @机械组  @DarrenPig R1地盘搭建、3D打印机结构搭建，R2的框架结构敲定
- 7.5  @周潮 ＆Mrs.Xia CAN总线电调采购、圆口接口3x2连接线，采购下单，顺丰加急
- 7.5  @朱小凡 步进电机连接驱动机组装，12V稳压电流源控制
- 7.5  @殷统创 Micros-pi5搭建调试
- 7.6  @夏汪禧  @许子涵涵 R2机械抬升结构10厘米到40厘米、R1钢架结构、轮子更换清理
- 7.6  @许子涵涵 ROS拓展板canmotor2.0PID编译烧录
