---
title: No content Changes found
description:
published: true
date: "2021-11-07T16:39:55"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2021-11-07T16:39:55"
---

## 描述

Obsidian 与 Github Desktop 有一些问题，使用 Obsidian 开启条目阅读后，Github Desktop 就会显示这个文件，但提示 No content Changes found ，十分烦人，可以靠以下代码删除掉。

```shell
git rm -r --cached .
```

## 原因

这其实是 Obsidian 编辑、预览过的文件，会自动把 CRLF 替换成 LF，也就是说 Obsidian 不尊重原始文件的换行字符。

## 解决方法

我把全部文件都转换成 LF 的，然后 VS Code 使用 LF 来编写，就不会出问题了，好在我不需要考虑 CRLF 的兼容性，所以换一个其实对我无所谓。
