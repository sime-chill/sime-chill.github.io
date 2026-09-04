# 个人主页开发与发布

## WSL 本机环境（2026-09-04 已核验）

- WSL distribution：`Ubuntu-20.04`
- Ruby：3.0.0
- Bundler：2.5.18
- Jekyll：4.0.1

## 本地构建

```bash
cd /home/wsl_hyh/web/sime-chill.github.io
bundle install
./scripts/build.sh
./scripts/serve.sh
```

`build.sh` 默认写到 `/tmp/yhhe-personal-site-build`，避免触碰仓库内历史上仍被跟踪的 `_site/`；可把自定义目标目录作为第一个参数。`serve.sh` 在 `127.0.0.1` 启动带 livereload 的 Jekyll 服务。

直接校验命令：

```bash
bundle exec jekyll build --destination /tmp/yhhe-personal-site-build
```

## 内容约束

- 当前首页正文和论文列表写在 `_pages/about.md`。
- `index.md` 不参与 Jekyll 发布，但保留原站正文；siteflow 要求其中每个非空行仍能在 `_pages/about.md` 中找到。
- 个人事实、教育经历、邮箱和论文不得根据模板或猜测补写。
- FAMA 只通过 `/fama/` 链接；`chipatlas/index.html` 仅保留旧路径跳转。

## 双站检查与发布

在 WSL 中进入 `/home/wsl_hyh/web/fama/tools/siteflow`：

```bash
go test ./...
go run . doctor
go run . all
go run . serve
go run . publish            # dry run
go run . publish --apply    # 真实推送；必须先得到用户明确确认
```

`siteflow.json` 保存本机 worktree、Git 主目录、分支和工具绝对路径，已被 FAMA 仓库忽略。发布工具先确保 FAMA 可访问，再将个人主页发布分支推到 `master`，避免主页出现死链。
