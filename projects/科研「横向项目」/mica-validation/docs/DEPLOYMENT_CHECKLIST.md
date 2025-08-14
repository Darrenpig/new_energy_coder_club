# GitHub Actions 部署检查清单

使用此检查清单确保您的 Sphinx 文档能够成功通过 GitHub Actions 自动部署到 GitHub Pages。

## 📋 部署前检查清单

### ✅ 文件结构检查

- [ ] `.github/workflows/docs.yml` 文件存在
- [ ] `docs/requirements.txt` 文件存在且包含所需依赖
- [ ] `docs/source/conf.py` Sphinx 配置文件正确
- [ ] `docs/Makefile` 构建脚本存在
- [ ] `.nojekyll` 文件在项目根目录
- [ ] `README.md` 包含文档链接

### ✅ GitHub 仓库设置

- [ ] 仓库已推送到 GitHub
- [ ] Actions 功能已启用（Settings → Actions → General）
- [ ] Workflow permissions 设置为 "Read and write permissions"
- [ ] GitHub Pages 设置正确（Settings → Pages → Source: Deploy from a branch → gh-pages）

### ✅ 工作流配置检查

- [ ] 触发分支名称正确（main/master）
- [ ] Python 版本兼容（推荐 3.9+）
- [ ] 依赖安装路径正确
- [ ] 构建命令正确（`make html`）
- [ ] 发布目录路径正确（`./docs/build/html`）

### ✅ 本地测试

- [ ] 本地可以成功构建文档
  ```bash
  cd docs
  make clean
  make html
  ```
- [ ] 生成的 HTML 文件完整
- [ ] 样式和脚本文件正常加载
- [ ] 链接检查通过
  ```bash
  make linkcheck
  ```

## 🚀 部署步骤

### 1. 提交并推送代码
```bash
git add .
git commit -m "Setup GitHub Actions documentation deployment"
git push origin main
```

### 2. 监控部署过程
1. 访问 GitHub 仓库的 **Actions** 选项卡
2. 查看最新的工作流运行状态
3. 如果失败，点击查看详细日志

### 3. 验证部署结果
- [ ] 工作流运行成功（绿色勾号）
- [ ] `gh-pages` 分支已创建
- [ ] GitHub Pages 显示 "Your site is published at..."
- [ ] 文档网站可以正常访问

## 🔧 常见问题快速修复

### 问题 1: 工作流触发失败
**症状**: 推送代码后没有触发 Actions
**检查**:
- [ ] 工作流文件路径正确：`.github/workflows/docs.yml`
- [ ] YAML 语法正确（使用在线 YAML 验证器）
- [ ] 分支名称匹配（main vs master）

### 问题 2: 依赖安装失败
**症状**: `pip install` 步骤失败
**检查**:
- [ ] `requirements.txt` 文件存在
- [ ] 依赖版本兼容
- [ ] 文件路径正确

**快速修复**:
```yaml
- name: Install dependencies
  run: |
    python -m pip install --upgrade pip
    pip install --no-cache-dir -r docs/requirements.txt
```

### 问题 3: 文档构建失败
**症状**: `make html` 步骤失败
**检查**:
- [ ] `conf.py` 配置正确
- [ ] 所有 `.rst` 文件语法正确
- [ ] 图片和资源文件路径正确

**快速修复**:
```bash
# 本地测试
cd docs
sphinx-build -b html source build/html -W
```

### 问题 4: 部署权限错误
**症状**: 部署步骤显示权限错误
**检查**:
- [ ] Repository settings → Actions → General → Workflow permissions
- [ ] 选择 "Read and write permissions"
- [ ] 保存设置后重新运行工作流

### 问题 5: 页面显示 404
**症状**: GitHub Pages 链接显示 404
**检查**:
- [ ] `.nojekyll` 文件存在
- [ ] `gh-pages` 分支包含 `index.html`
- [ ] GitHub Pages 设置指向正确分支

## 📊 部署状态检查

### 成功部署的标志
- ✅ Actions 页面显示绿色勾号
- ✅ `gh-pages` 分支存在且包含 HTML 文件
- ✅ Settings → Pages 显示绿色勾号和网站链接
- ✅ 文档网站可以正常访问
- ✅ 样式和功能正常

### 部署时间预期
- **首次部署**: 3-5 分钟
- **后续更新**: 1-3 分钟
- **大型文档**: 5-10 分钟

## 🎯 优化建议

### 性能优化
- [ ] 启用 pip 缓存
- [ ] 使用并行构建
- [ ] 优化图片大小
- [ ] 减少不必要的依赖

### 安全优化
- [ ] 固定 Action 版本
- [ ] 使用最小权限原则
- [ ] 定期更新依赖

### 维护优化
- [ ] 添加构建状态徽章
- [ ] 设置构建通知
- [ ] 定期检查链接有效性

## 📞 获取帮助

如果遇到问题，可以：

1. **查看详细日志**: GitHub Actions 页面 → 点击失败的运行 → 展开步骤
2. **本地复现**: 在本地环境中重现构建过程
3. **参考文档**: [GitHub Actions 部署完整文档](./GITHUB_ACTIONS_DEPLOYMENT.md)
4. **社区支持**: 
   - [GitHub Actions 社区](https://github.community/c/github-actions)
   - [Sphinx 用户组](https://groups.google.com/forum/#!forum/sphinx-users)

## 🎉 部署成功！

恭喜！您的文档现在可以通过以下方式访问：

- 🌐 **在线访问**: `https://username.github.io/repository-name/`
- 🔄 **自动更新**: 每次推送到主分支都会自动更新
- 📱 **响应式设计**: 支持移动设备访问
- 🔍 **搜索功能**: 内置全文搜索

现在您可以专注于编写优质的文档内容，让 GitHub Actions 处理所有的构建和部署工作！