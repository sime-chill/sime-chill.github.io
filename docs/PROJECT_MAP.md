# 个人主页项目地图

## 两个 worktree

个人主页只有一个 Git 仓库，但本机有两个 worktree：

| 角色 | Windows/UNC | WSL | 分支（盘点时） |
| --- | --- | --- | --- |
| Git 主工作区 | `\\wsl.localhost\Ubuntu-20.04\home\wsl_hyh\sime-chill.github.io` | `/home/wsl_hyh/sime-chill.github.io` | `master`，旧本地检出 |
| 当前开发 worktree | `E:\codex_work\personal-site-redesign` | `/mnt/e/codex_work/personal-site-redesign` | `redesign/acad-homepage`，当前设计 |

两个目录共享 `/home/wsl_hyh/sime-chill.github.io/.git`。当前页面开发只在 `personal-site-redesign` 进行；不要在两个 worktree 中同时改同一内容。判断远端状态前先 `git fetch origin`，因为 WSL 主工作区的远端跟踪引用可能陈旧。

## 目录结构

```text
personal-site-redesign/
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
