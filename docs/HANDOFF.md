# 个人主页开发交接

更新时间：2026-09-04

## 当前状态

- GitHub：`sime-chill/sime-chill.github.io`
- 唯一开发目录：`/home/wsl_hyh/web/sime-chill.github.io`
- Windows 访问：`\\wsl.localhost\Ubuntu-20.04\home\wsl_hyh\web\sime-chill.github.io`
- 当前开发/发布分支：`master`
- Logo 与交接文档发布提交：`ee8bbd6`
- 该提交的 GitHub Pages 构建和部署均成功。

## 已完成

- AcadHomepage 风格主页已迁移并发布，权威正文为 `_pages/about.md`。
- FAMA 入口改为 `/fama/`，`/chipatlas/` 保留兼容跳转。
- 当前 FAMA Logo 已同步到 `assets/images/fama-logo.png`；它应与 FAMA 仓库的 `public/fama-app-icon-1024.png` 像素一致。
- 过期的 `run_server.sh` 和自动 `git add/commit/push` 的 `blog_update.sh` 已替换为只构建/预览、不推送的 `scripts/build.sh` 与 `scripts/serve.sh`。
- 项目地图、运维说明和本交接文档已补齐。
- 原来分离的 WSL 主仓库和 E 盘 worktree 已统一为一个 WSL 原生工作树。

## 已验证

- `bundle exec jekyll build --destination /tmp/fama-personal-handoff-build`：通过。
- `./scripts/build.sh /tmp/fama-personal-handoff-build-final`：通过。
- GitHub Pages 最近一次 workflow：通过。
- 双站 `tools/siteflow` 的 Go 测试、doctor 与 `all`：通过；`all` 也完成了合并页面和内部链接校验。

## 下一步

1. 先在当前 WSL 工作树运行 `git status --short`，不要覆盖用户未提交改动。
2. 构建并检查主页的 FAMA 卡片、移动端导航、论文列表和 `/chipatlas/` 跳转。
3. 需要发布时，在 FAMA 的 `tools/siteflow` 先运行 `publish` dry run；只有用户再次确认后运行 `publish --apply`。
4. 发布后检查 `https://yhhe.top/`、`https://yhhe.top/fama/` 和旧路径跳转。

## 待拍板

- 是否把已被 `.gitignore` 忽略、但仍在 Git 中跟踪的 `_site/` 从版本控制移除。
- 是否把 `etached/` 及旧博客/主题示例整理成单独归档提交。当前先保留，避免把发布整理和历史删除混成一个难以回滚的提交。
