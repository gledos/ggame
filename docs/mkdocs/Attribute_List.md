---
title: "Attribute List"
description:
published: true
date: "2024-12-31T23:04:01"
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

也可以更简单。
{: .test }

ID 也可以。
{: #id_test }
```

详情可以查看通用写作律法的 [GWLM 16-9 Markdown Attribute List](https://github.com/saveweb/general-writing-laws#gwlm-16-9-markdown-attribute-list) 部分。

## ggame 中的用法

### 黑幕

<!--
    合并来源:    \mkdocs\黑幕_刮刮乐.md
    date:        "2023-11-06T12:37:22"
    dateCreated: "2023-11-06T12:37:22"
-->

萌娘百科里有种有趣的模板，叫做「[黑幕][]」，能将文字遮蔽住，需要选中、指向或者点击，才能观看其中的文字。

[黑幕]: https://zh.moegirl.org.cn/Template:黑幕

> [!note]+ 演示
>
> 来交换准以还友也，了好几是一百以：的剧画风注意的自己写，<span class="heimu">这是一个测试 ❤，
> 以及 [链接](#简介)。</span>，来如此。
>
> 我都没这种时候就怎么冷刚好⋯有没有不是情自己那种：[Internet Archive](https://archive.org/) 运比有这在看到，[^test]
> 维持喔喔以外你现在世界，起来很，实用年的他们一。
> {: .heimu }

[^test]: 演示脚注。

不过外链效果不佳，单纯使用纯文本黑幕大概就好。
{: .heimu }

在 MkDocs 里启用黑幕需要自定义主题，需要到仓库根目录，创建 `overrides/main.html`。

```tree
.
├─ overrides/
│  └─ main.html
└─ mkdocs.yml
```

然后使用覆盖块（[Overriding blocks][]）的方式，添加自定义 CSS，需要在 `main.html` 中输入以下文字：

[Overriding blocks]: https://squidfunk.github.io/mkdocs-material/customization/#overriding-blocks

```html
{% extends "base.html" %}

{% block styles %}
    {{ super() }}
<!-- 下面的「黑幕（刮刮乐）」CSS 来自：-->
<!-- 萌娘百科 https://web.archive.org/web/20220427162917/https://zh.moegirl.org.cn/MediaWiki:Mobile.css -->
<!-- 无限UCW [CSS+JS轻松实现自定义黑幕效果](https://ucw.moe/archives/js-with-css-implements-heimu.html) -->
<!-- 有经过一些修改，增加了选中也能显现，以及适配 Material for MkDocs 的明暗色调。 -->
<style>
.heimu, .heimu.a, .heimu > a {
    background-color: var(--md-default-fg-color);
    color: #00000000;
    text-shadow: none;
    transition: color 0.2s;
}

.heimu:hover, .heimu:active {
    color: var(--md-default-bg-color);
}

.heimu:hover.a, .heimu:active.a,
.heimu:hover > a, .heimu:active > a {
    color: var(--md-typeset-a-color);
}

.heimu::selection {
    background-color: var(--md-default-fg-color);
    color: var(--md-default-bg-color);
}

.heimu::selection.a, .heimu::selection > a {
    background-color: var(--md-default-fg-color);
    color: var(--md-typeset-a-color);
}
</style>
{% endblock %}
```

Obsidian 也可以使用，只是没有支持对链接黑幕，CSS 片段如下：

```css
/*
    「刮刮乐」CSS
    来源自：
    无限UCW 的 [CSS+JS轻松实现自定义黑幕效果](https://ucw.moe/archives/js-with-css-implements-heimu.html)
    萌娘百科 https://web.archive.org/web/20220427162917/https://zh.moegirl.org.cn/MediaWiki:Mobile.css
    有经过一些修改，增加了选中也能显现，以及适配明暗色调，不支持链接。
*/

/*
--text-normal           表示文字颜色
--background-primary    表示背景颜色
*/

.heimu:hover{
    color: var(--background-primary);
}

.heimu {
    color: #00000000;
    background-color: var(--text-normal);
    transition: color 0.5s;
}

.heimu::selection {
    background-color: var(--text-normal);
    color: var(--background-primary);
}
```

在启用了 Attributes 插件的 MkDocs 或 Obsidian 中，对一段文字
进行黑幕，更容易：

```markdown
需要进行黑幕的一段文字。
{: .heimu }
```

ggame 中的 [黑幕（刮刮乐）](#黑幕)，使用了 Attribute List 来快速输入。

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

### 着重符号

对于中文来说，加粗并不是合理的传统的方式。应该使用着重符号，即在文字附近标上圆点。
但最近接触的，含有着重号的作品是《人狼村之谜》，其着重号在文字之上，所以这样编写了 CSS：

```css
.zhong {
    text-emphasis: circle;
    -webkit-text-emphasis: circle;
    text-emphasis-position: over right;
    -webkit-text-emphasis-position: over right;
    font-weight: normal;
}
```

使用下面的写法，就能让汉字呈现着重号：

```markdown
这是一段**演示着重号**{: .zhong }的句子。
```

这是一段**演示着重号**{: .zhong }的句子。
