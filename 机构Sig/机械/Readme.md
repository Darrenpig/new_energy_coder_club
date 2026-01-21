# 欢迎来到NEC的机构Sig-机械组




## 个人进度



#### XXX

YYMMDD @XXX 看了华中科技大学D XXX d\
260121 @庄皓钧 看了华中科技大学机械培训第一节 【26赛季培训——机械组培训第一讲【HUSTROBOCON机器人队】】https://www.bilibili.com/video/BV1DgnHzmEXK
260121  @毕卫亭  看了华中科技大学机械培训第一节 【26赛季培训——机械组培训第一讲【HUSTROBOCON机器人队】】https://www.bilibili.com/video/BV1DgnHzmEXK 
260121 @张孟驰 看了华中科技大学机械培训第一节 【26赛季培训——机械组培训第一讲【HUSTROBOCON机器人队】】https://www.bilibili.com/video/BV1DgnHzmEXK
260121 @白逸鸣 看了华中科技大学机械培训第一节 【26赛季培训——机械组培训第一讲【HUSTROBOCON机器人队】】https://www.bilibili.com/video/BV1DgnHzmEXK






### 目标

一套**专门针对「机器人 + 工业控制」**，并**深度适配 SolidWorks + Rhino** 的**机械文件夹结构与路径缩写规范**。重点考虑：**多轴机构、版本迭代快、机电协同、下游制造对接**。

---

## 一、项目顶层（强烈推荐）

```text
/ROB_CTRL
```

或：

```text
/ROBOT_IC
```

👉 **推荐：`ROB_CTRL`**（机器人 + 工控，一眼可懂）

---

## 二、一级结构（项目主干）

```text
/ROB_CTRL
 ├─ 00_ADMIN   （项目管理/计划）
 ├─ 01_REQ     （需求&接口）
 ├─ 02_ARCH    （系统架构）
 ├─ 03_MECH    （机械设计 ★核心）
 ├─ 04_ELEC    （电气/控制）
 ├─ 05_SW      （软件/PLC）
 ├─ 06_SIM     （运动/强度仿真）
 ├─ 07_MFG     （制造&工艺）
 ├─ 08_ASSY    （整机装配）
 ├─ 09_TST     （调试/验收）
 └─ 99_REF     （标准/外部资料）
```

---

## 三、机械设计（SolidWorks / Rhino 友好）

```text
/03_MECH
 ├─ 01_CON     （方案/机构草案）
 ├─ 02_LAYOUT  （总体布局）
 ├─ 03_CAD     （建模）
 ├─ 04_CAL     （计算）
 ├─ 05_DWG     （工程图）
 ├─ 06_BOM     （机械BOM）
 └─ 07_REV     （变更）
```

---

## 四、CAD 文件夹（关键）

### SolidWorks（参数化主力）

```text
/03_CAD/SW
 ├─ PRT       （零件 .SLDPRT）
 ├─ ASM       （装配 .SLDASM）
 ├─ DRW       （工程图 .SLDDRW）
 ├─ TPL       （模板）
 └─ LIB       （标准件/Toolbox）
```

### Rhino（外形 / 曲面 / 防护罩）

```text
/03_CAD/RH
 ├─ SURF      （曲面）
 ├─ SHAPE     （外形方案）
 ├─ EXPORT    （STEP/IGES）
```

📌 **规则**

* Rhino **只做外形 & 曲面**
* 最终结构 **必须回到 SW 主装配**
* 用 `EXPORT` 明确跨软件边界

---

## 五、机器人专用机构拆分（强烈建议）

```text
/03_CAD/SW/ASM
 ├─ BASE       （底座）
 ├─ AX1        （J1 旋转轴）
 ├─ AX2        （J2 俯仰）
 ├─ AX3
 ├─ AX4
 ├─ AX5
 ├─ AX6
 ├─ EOAT       （末端执行器）
 └─ CABLE      （拖链/线缆）
```

零件命名示例：

```text
AX2_BRACKET_LH_V1.3.SLDPRT
```

---

## 六、工业控制 & 机电接口

```text
/01_REQ
 ├─ IO_MAP     （IO分配）
 ├─ IF_ME     （机电接口）
 └─ SAFE      （安全需求）
```

```text
/04_ELEC
 ├─ SCH       （原理图）
 ├─ PANEL     （电柜）
 ├─ CABLE     （线缆表）
 └─ IO        （I/O）
```

---

## 七、制造 & 装配（落地必备）

```text
/07_MFG
 ├─ CNC       （机加工）
 ├─ SHT       （钣金）
 ├─ WLD       （焊接）
 ├─ HT        （热处理）
 ├─ SFT       （表面处理）
 └─ INS       （检验）
```

```text
/08_ASSY
 ├─ SOP       （装配指导）
 ├─ TOOL      （工装）
 └─ TORQUE    （力矩表）
```

---

## 八、仿真 & 调试

```text
/06_SIM
 ├─ MOTION    （运动学）
 ├─ FEA       （强度/刚度）
 └─ REACH     （工作空间）
```

---

## 九、统一缩写速查（机器人向）

```text
ROB   机器人
AX    轴
EOAT  末端执行器
CAL   计算
SIM   仿真
IF    接口
IO    输入输出
SAFE  安全
MFG   制造
ASSY  装配
REV   版本
```

---

## 十、强烈建议的工作规则（经验）

1. **主装配唯一**（`ROBOT_MAIN_ASM`）
2. Rhino → STEP → SolidWorks（不反向）
3. 每个 AX 独立装配
4. 改动只进 `REV`
5. 发布制造包统一在 `/07_MFG/RELEASE`


### 范围 / 交付物

ROB_CTRL
├─ 00_ADMIN
│  ├─ PLAN
│  ├─ SCHEDULE
│  └─ MEETING
│
├─ 01_REQ
│  ├─ SPEC
│  ├─ IF_ME
│  ├─ IO_MAP
│  └─ SAFE
│
├─ 02_ARCH
│  ├─ SYS
│  ├─ MECH
│  ├─ ELEC
│  └─ SW
│
├─ 03_MECH
│  ├─ 01_CON
│  ├─ 02_LAYOUT
│  ├─ 03_CAD
│  │  ├─ SW
│  │  │  ├─ PRT
│  │  │  ├─ ASM
│  │  │  │  ├─ BASE
│  │  │  │  ├─ AX1
│  │  │  │  ├─ AX2
│  │  │  │  ├─ AX3
│  │  │  │  ├─ AX4
│  │  │  │  ├─ AX5
│  │  │  │  ├─ AX6
│  │  │  │  ├─ EOAT
│  │  │  │  └─ CABLE
│  │  │  ├─ DRW
│  │  │  ├─ TPL
│  │  │  └─ LIB
│  │  │
│  │  └─ RH
│  │     ├─ SURF
│  │     ├─ SHAPE
│  │     └─ EXPORT
│  │
│  ├─ 04_CAL
│  ├─ 05_DWG
│  ├─ 06_BOM
│  └─ 07_REV
│
├─ 04_ELEC
│  ├─ SCH
│  ├─ PANEL
│  ├─ IO
│  └─ CABLE
│
├─ 05_SW
│  ├─ PLC
│  ├─ HMI
│  └─ ROBOT
│
├─ 06_SIM
│  ├─ MOTION
│  ├─ FEA
│  └─ REACH
│
├─ 07_MFG
│  ├─ CNC
│  ├─ SHT
│  ├─ WLD
│  ├─ HT
│  ├─ SFT
│  ├─ INS
│  └─ RELEASE
│
├─ 08_ASSY
│  ├─ SOP
│  ├─ TOOL
│  └─ TORQUE
│
├─ 09_TST
│  ├─ FAT
│  ├─ SAT
│  └─ REPORT
│
└─ 99_REF
   ├─ STD
   ├─ SUPPLIER
   └─ DATASHEET


### 难度建议

difficulty:2


### 参考链接 / 资料



