# 个人主页项目地图

## 唯一工作树

- WSL：`/home/wsl_hyh/web/sime-chill.github.io`
- Windows 访问：`\\wsl.localhost\Ubuntu-20.04\home\wsl_hyh\web\sime-chill.github.io`
- 发布分支：`master`

迁移后的目录同时保存源码和 `.git`，不再使用 E 盘 linked worktree。E 盘只允许保存归档或临时输出，不能维护第二份可编辑源码。

## 目录结构

```text
sime-chill.github.io/
├── _data/navigation.yml      # 导航
├── _includes/                # Jekyll 局部模板
├── _layouts/                 # 页面布局
├── _pages/about.md           # 当前首页正文与论文列表（权威渲染源）
├── _sass/                    # 主题样式
├── assets/                   # CSS、字体、脚本、人物与 FAMA 图片
├── chipatlas/index.html      # 旧 `/chipatlas/` 到 `/fama/` 的兼容跳转
├── docs/                     # 项目地图、运维与交接
├── images/                   # 主页 favicon/PWA 图标
├── scripts/                  # WSL 构建和预览脚本
├── _config.yml               # Jekyll 配置与发布排除项
├── CNAME                     # yhhe.top
├── Gemfile / Gemfile.lock    # Ruby 依赖
└── index.md                  # 旧正文基线；siteflow 校验依赖，不能删除
```

## 遗留但暂时保留

- `_site/`：Jekyll 生成目录，已在 `.gitignore` 中，但历史上仍有 69 个跟踪文件。是否从 Git 移除需要单独确认。
- `etached/`：旧站快照，32 个跟踪文件；Jekyll 已排除。
- `_posts/`、`work.md`、`blog.md`：旧内容/样例，当前发布排除。
- `CHANGELOG.md`、`LICENSE.md`、`bay_jekyll_theme.gemspec`、`screenshot.png`：上游主题遗留，当前发布排除；许可证来源仍需保留可追溯。

不要因为这些文件未发布就直接删除。尤其 `index.md` 是 `tools/siteflow` 的逐行内容保真基线。
