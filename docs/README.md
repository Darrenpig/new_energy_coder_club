# NEC 社区文档站点

本目录包含 NEC (New Energy Coder) 新能源开发者社区的 Sphinx 文档站点配置。

## 📁 目录结构

```
docs/
├── .readthedocs.yaml      # Read the Docs 构建配置
├── conf.py                # Sphinx 配置文件
├── index.rst              # 文档首页
├── requirements.txt       # Python 依赖
├── 404.rst                # 404 错误页面
├── README.md              # 本文件
│
├── _static/               # 静态资源（CSS/JS/图片）
│   ├── custom.css
│   └── custom.js
├── _templates/            # HTML 模板
│
├── competitions/          # 竞赛文档索引
│   └── index.rst
├── projects/              # 项目文档索引
│   └── index.rst
│
└── [其他现有目录]          # start-here, community, learn 等
```

## 🚀 本地构建

### 安装依赖

```bash
cd docs
pip install -r requirements.txt
```

### 构建 HTML

```bash
# 方法 1: 使用 Sphinx 直接构建
sphinx-build -b html . _build/html

# 方法 2: 使用 Makefile (Linux/Mac)
make html

# 方法 3: 使用 make.bat (Windows)
make.bat html
```

### 预览

```bash
cd _build/html
python -m http.server 8000
# 访问 http://localhost:8000
```

## 🌐 Read the Docs 部署

文档已配置自动部署到 Read the Docs:

- 仓库: https://gitee.com/darrenpig/new_energy_coder_club
- 文档路径: `docs/`
- 配置文件: `docs/.readthedocs.yaml`

### 部署状态检查

构建配置检查清单:

- [x] Sphinx 配置: `docs/conf.py`
- [x] 构建配置: `docs/.readthedocs.yaml`
- [x] 依赖文件: `docs/requirements.txt`
- [x] 首页文档: `docs/index.rst`

## 📝 文档格式

本站支持两种文档格式:

1. **reStructuredText (.rst)** - Sphinx 原生格式
2. **Markdown (.md)** - 通过 MyST Parser 支持

### 添加新页面

在 `index.rst` 中的 `toctree` 添加新文件路径:

```rst
.. toctree::
   :maxdepth: 2
   :caption: 新分类

   new-file          # 对应 new-file.rst 或 new-file.md
   folder/index      # 子目录
```

### 跨文件链接

RST 格式:
```rst
:doc:`页面标题 <path/to/file>`
```

Markdown 格式:
```markdown
[页面标题](path/to/file.md)
```

## 🔧 配置说明

### conf.py 关键配置

| 配置项 | 说明 |
|--------|------|
| `project` | 项目名称 |
| `html_theme` | 主题 (sphinx_rtd_theme) |
| `extensions` | 启用的扩展 |
| `myst_enable_extensions` | MyST Markdown 扩展 |

### 启用的扩展

- `myst_parser` - Markdown 支持
- `sphinx_copybutton` - 代码复制按钮
- `sphinx_tabs.tabs` - 选项卡支持
- `sphinxcontrib.mermaid` - Mermaid 图表
- `sphinxext.opengraph` - OpenGraph 元数据
- `notfound.extension` - 404 页面

## 📚 参考资源

- [Sphinx 文档](https://www.sphinx-doc.org/)
- [MyST Parser 文档](https://myst-parser.readthedocs.io/)
- [Read the Docs 文档](https://docs.readthedocs.io/)
- [RTD Theme 文档](https://sphinx-rtd-theme.readthedocs.io/)

## 🤝 贡献

如需更新文档，请:

1. 修改相关 `.rst` 或 `.md` 文件
2. 本地构建验证
3. 提交 PR 到主分支

详细的贡献指南请参考: [CONTRIBUTING.md](../CONTRIBUTING.md)
