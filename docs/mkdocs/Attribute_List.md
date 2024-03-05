---
title: "Attribute List"
description:
published: true
date: "2023-12-22T14:18:01"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-12-22T14:18:01"
---

## 简介

Attribute Lists（属性列表）是纯 Ruby 的 Markdown 渲染器，Maruku 所设计的 Markdown 扩展语法，
能够快速的为 Markdown 内容添加 HTML 元素属性。

比如 HTML 图片元素 `<img src="1.jpg" alt="图片的后备文字说明" />`，其中的 src 和 alt 都是 HTML 元素属性。
图片的这两个属性，都能被 Markdown 书写：`![图片](1.jpg "图片的后备文字说明")`，但如需要更复杂的属性，
Markdown 本身就无法做到了，比如图片太宽，那么 `width=50%` 这样的，降低宽度的元素属性就无法添加，
除非写成很复杂的 HTML：

```html
<img src="1.jpg" alt="图片的后备文字说明" width=50% />
```

Maruku 的开发者注意到了这种问题，于是设计了向 Markdown 添加元数据语法的方案，就像下面的演示：

```markdown
一段测试文字。
{: class="test" }
```

详情可以查看通用写作律法的 [GWLM 16-9 Markdown Attribute List](https://github.com/saveweb/general-writing-laws#gwlm-16-9-markdown-attribute-list) 部分。

## ggame 中的用法

### 黑幕

ggame 中的 [黑幕（刮刮乐）](/mkdocs/黑幕_刮刮乐.md)，使用了 Attribute List 来快速输入。

### 文字显示位置

除此之外还有文字居中和靠右显示：

```markdown
文字居中显示。
{: align=center }

文字靠右显示。
{: align=right }
```

### 为图片添加背景色

如果图片是带有透明度的深色状况，直接在深色主题下暂时，会难以辨识，所以也能用 Attribute List 快速添加白色背景：

```markdown
![test image](test.png)
{: style="background-color: white" }
```

### 跳转锚点

HTML 可以创造跳转锚点，比如：

```HTML
<p id="13">第十三条【变更与重新申报】已批准出版的网络游戏内容发生实质性变动的，
或者变更游戏名称、游戏出版单位或主要运营机构的，
网络游戏出版单位应当按规定履行相关审批手续。。</p>

…………


（一）违反<a href="#13">本办法第十三条。</a>，未按规定履行相关审批手续的；
```

这些不容易编辑和书写的 HTML 内容，可以用 Markdown 来编写：

```markdown
第十三条【变更与重新申报】已批准出版的网络游戏内容发生实质性变动的，
或者变更游戏名称、游戏出版单位或主要运营机构的，
网络游戏出版单位应当按规定履行相关审批手续。
{: #13 }

…………

（一）违反[本办法第十三条](#13)，未按规定履行相关审批手续的；
```

演示条目：〈[网络游戏管理办法](/rule/国家新闻出版署/网络游戏管理办法.md)〉。
（[源码](https://github.com/gledos/ggame/blob/master/docs/rule/国家新闻出版署/网络游戏管理办法.md?plain=1)）

