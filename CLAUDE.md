# Personal Homepage Agent Instructions

开始工作前依次阅读 `README.md`、`docs/HANDOFF.md` 与 `docs/PROJECT_MAP.md`。

- 唯一开发路径是 `/home/wsl_hyh/web/sime-chill.github.io`；不要在 E 盘建立第二份可编辑工作树。
- `_pages/about.md` 是当前渲染正文；根部 `index.md` 是 siteflow 的旧正文保真基线，不得删除。
- 不要根据模板或推测修改个人事实、联系方式、教育经历或论文。
- `_site/` 与 `etached/` 的清理需要用户单独确认；不要在一般任务中自动删除。
- 修改后至少运行 `./scripts/build.sh`。双站变更还要在 FAMA `tools/siteflow` 运行测试和 `all`。
- 没有用户明确确认不得运行 `publish --apply`，也不得自行提交或推送。
- 保留现有未提交改动；迁移归档不是开发目录。
