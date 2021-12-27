---
title: published
description: 
published: true
date: 2021-11-09T17:34:09.984Z
tags:
editor: markdown
dateCreated: 2021-11-09T17:34:09.984Z
---

## 简介

published 是 Jekyll 与 Wiki.js 所使用的 meta 数据之一，能够控制是否发布该页面。

## 问题

Mkdocs 不支持该 meta 数据。

## 解决

需要使用 mkdocs-exclude 这个插件来让 MkDocs 实现排除一些文件，排除搜索可以使用 mkdocs-exclude-search 。

+ [apenwarr/mkdocs-exclude: A mkdocs plugin that lets you exclude files or trees from your output.](https://github.com/apenwarr/mkdocs-exclude)
+ [chrieke/mkdocs-exclude-search: 🔎 A mkdocs plugin that lets you exclude selected chapters from the search index.](https://github.com/chrieke/mkdocs-exclude-search)

mkdocs-exclude 的使用方法如下：

```YAML
plugins:
    - exclude:
          glob:
              - "src/[HD]/*"
              - "mkdocs/本地/*"
              - "*.tmp"
              - "*.gz"
          regex:
              - '.*\.(tmp|bin|tar)$'
```

mkdocs-exclude-search 似乎不能用，暂时没有进一步研究。
