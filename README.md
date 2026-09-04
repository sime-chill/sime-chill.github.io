# Yuhan He's academic homepage

This repository publishes Yuhan He's academic homepage at
<https://yhhe.top>. Biographical and publication content is maintained in
`_pages/about.md`.

The visual framework is adapted from
[AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io), which is
distributed under the MIT License and is influenced by Minimal Mistakes and
Academic Pages. The upstream license notice is retained in `LICENSE`.

FAMA (Flagship AI Accelerator Memory Architectures) is maintained independently and linked from this
homepage at `/chipatlas/`.

## Local build

```bash
bundle install
bundle exec jekyll serve
```

The combined homepage and FAMA release is built and checked by the Go
tool in the FAMA repository's `tools/siteflow` directory.
