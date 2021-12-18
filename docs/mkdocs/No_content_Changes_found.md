---
title: No content Changes found
description: 
published: true
date: 2021-11-07T16:39:55.591Z
tags:
editor: markdown
dateCreated: 2021-11-07T16:39:55.591Z
---

## 描述

Obsidian 与 Github Deskto 有一些问题，使用 Obsidian 开启条目阅读后，Github Deskto 就会显示这个文件，但提示 No content Changes found ，十分烦人，可以靠以下代码删除掉。

```shell
git rm -r --cached .
```
