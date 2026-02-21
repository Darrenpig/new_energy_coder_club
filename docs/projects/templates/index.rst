项目模板
========

NEC 社区提供的标准化项目模板，帮助开发者快速创建规范的项目结构。

.. toctree::
   :maxdepth: 2
   :caption: 可用模板

   ai_project_template/README
   embedded_project_template/README
   robotics_project_template/README
   general_project_template/README

模板类型
--------

AI 项目模板
~~~~~~~~~~~

适用于机器学习、深度学习、数据分析等人工智能项目。

* 包含: `README.md`, `requirements.txt`, `src/`, `notebooks/`

嵌入式项目模板
~~~~~~~~~~~~~~

适用于物联网设备、智能硬件、通信协议等嵌入式项目。

* 包含: `README.md`, `Makefile`, `src/`, `inc/`, `docs/`

机器人项目模板
~~~~~~~~~~~~~~

适用于 ROS 机器人、飞控系统、运动控制等机器人技术项目。

* 包含: `README.md`, `CMakeLists.txt`, `src/`, `launch/`, `urdf/`

通用项目模板
~~~~~~~~~~~~

适用于其他类型的软件开发项目。

使用方法
--------

1. 选择合适的模板类型
2. 复制模板目录到您的项目位置
3. 修改项目信息和配置
4. 开始开发

.. code-block:: bash

   # 示例: 复制 AI 项目模板
   cp -r projects/templates/ai_project_template projects/ai/my_new_project/
   cd projects/ai/my_new_project/
   # 修改 README.md 和配置文件

模板规范
--------

每个模板都应包含：

- ✅ `README.md` - 项目说明
- ✅ `LICENSE` - 许可证文件
- ✅ `src/` - 源代码目录
- ✅ `docs/` - 文档目录
- ✅ 构建配置文件（Makefile/CMakeLists.txt/requirements.txt 等）
