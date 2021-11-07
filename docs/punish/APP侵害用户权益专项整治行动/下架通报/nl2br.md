---
title: nl2br
description: 
published: true
date: 2021-11-07T15:14:41.776Z
tags: 
editor: markdown
dateCreated: 2021-11-07T15:14:41.776Z
---

## 简介

nl2br 全程为 New Line to Break，是 [Python-Markdown](https://python-markdown.github.io/) 的扩展之一，该扩展会将换行视为硬中断，虽然这跟 StackOverflow 与 [GitHub](https://github.github.com/github-flavored-markdown/) 风格的 Markdown 一样，但我还是习惯原始一些的 Markdown 换行规则。

mkdocs material 默认启动了该扩展，所以需要在 mkdocs.yml 中手动关闭，如下:

```YAML
markdown_extensions: 
  - nl2br: false # newline-to-break markdown 非严格换行
```
