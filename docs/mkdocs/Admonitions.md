---
title: Admonition
description:
published: true
date: 2022-06-14T17:27:45.216+08:00
特殊标签标记: #无标签
editor: markdown
dateCreated: 2022-06-14T17:27:45.216+08:00
---

# Admonition

Admonition 的详细介绍可以查看 Material for MkDocs 的 [Admonitions](https://squidfunk.github.io/mkdocs-material/reference/admonitions/) 页面。

## 标记格式问题

显然，Admonition 不是 Markdown 的标准之一，所以是由第三方创建的新规则。

Material for MkDocs 选择的标记是三个感叹号：

``` text
!!! quote "标题"

    测试文字
```

Microsoft Docs 选择的是基于引用格式，此规则的名称虽然不叫 Admonition，而叫 Alerts，不过其他内容都是几乎相同的：

``` markdown
> [!quote] 标题
>
> Information the user should notice even if skimming.
```

其他的 Markdown 解析器大概还有其他的语法，不过 Obsidian 原生的 Admonition 选择了 Microsoft Docs 的语法，其名称为 Callouts，但这就导致与 MkDocs 不同步的情况，不过还好有开发者制作了插件，可以方便让 Material for MkDocs 使用 Microsoft Docs 的 Alerts 语法。

插件链接：[sondregronas/mkdocs-callouts](https://github.com/sondregronas/mkdocs-callouts)

并且在 `[!quote]` 的后面添加 + - 符号就能够添加折叠功能。

## 自定义 Admonition

前段时间（2022年5月 左右），原本属于 Material for MkDocs Insiders 的 [Custom admonition icons](https://squidfunk.github.io/mkdocs-material/reference/admonitions/#admonition-icons) 功能，可以免费使用了，所以为了方便我的 ggame 网站，我添加了自定义 Admonition：

``` markdown
> [!rule]+ 规则
>
> 通常存放法律、通知等文件。
```

> [!rule]+ 规则
>
> 通常存放法律、通知等文件。

目前只添加了一个（笑），我觉得也不是越多越好，缺少合适的符号和配色时，再添加吧。
