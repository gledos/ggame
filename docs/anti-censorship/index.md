---
title: anti-censorship
description:
published: true
date: "2021-08-21T19:10:50"
特殊标签标记: #介绍与更新页
editor: markdown
dateCreated: "2021-08-21T19:10:50"
exclude_from_blog: true
icon: material/book-lock
---

可以在 [下方](#简介) 查看最近更新的页面，或者到左边的树状列表，进行查看条目。

## 反审查概述

反审查的历史悠久，曾经常见的审查是论坛的敏感词系统，绕过方法就是不说这些敏感词，比如使用拼音、首字母、谐音等方法绕过。
所以严格来说，使用「皿煮」等词语书写，都是叛逆的反审查行为。

此类反审查，这里将其称为「文字的后处理式反审查」，特点是都存在某种原文，只是经过了后处理，被翻译成了其他内容。

> [!abstract]+ 文字的后处理式反审查
>
> +   字符替换式
>
>     +   拼音、首字母
>
>             这是一段 CS 文本。
>
>     +   同音、谐音字
>
>              这是亦段厕试纹本。
>
>     +   同形、谐形字
>
>         [RimoChan/unvcode][]（幼女 Code）是自动转换的工具，能自动替换相似的字符。
>
>             这是⼀段测试⽂本｡
>
> +   插入字符式
>
>     +   插入空格
>
>             这 是 一 段 测 试 文 本 。
>
>     +   插入 Unicode 零宽间隔符（U+200B）
>
>             这⁢是⁢一⁢段⁢测⁢试⁢文⁢本⁢。
>
>     +   插入 Unicode 西里尔数字的百万符号（菊花符）（U+0489）[^11903]
>
> +   双重反转式
>
>     将文字顺序反转，然后使用 Unicode 反转控制符（U+202E），范围可以为一行或每两字。
>
>         ‮。本文试测段一是这
>
> +   竖向排列式
>
>         这 试
>         是 文
>         一 本
>         段 。
>         测

[^11903]: 我爱火星文, 《[火星文输入法](https://web.archive.org/web/20100525111903/http://www.52hxw.com:80/)》, 火星文输入法官方网站, 2010-05-25. (参照 2023-10-12).

[RimoChan/unvcode]: https://github.com/RimoChan/unvcode

<!-- 链接转短链接：使用is.gd的API，将文本中的http/https链接替换短连接，以避开对链接的域名检测 -->

[NitroRCr/Words-away][] 是一套含有上述大部分功能的工具，能够处理各种文字。

[NitroRCr/Words-away]: https://github.com/NitroRCr/Words-away

## 简介

anti-censorship 即反审查，一些破除网络审查的工具就会被收录到此版块（文件夹）。

> [!note]+ 最近更新
>
> {{ blog_content anti-censorship }}
