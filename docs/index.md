---
title: 主页
description: 记录一切和谐游戏
published: true
date: "2025-01-16T18:25:20"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2021-03-18T10:32:32"
icon: material/home
---

## 和谐游戏

这里是收集许多的和谐游戏的百科，点击 [这里][/game] 跳转到游戏板块，然后从左边的树状列表进行查看条目。

ggame 的含义是 GGAME Game Archive Modify Encyclopedia。[^ggame]

[^ggame]: 其实没有什么特别含义，只是 gledos + game = ggame，gg 也表示 good game，有点消极结束游戏的含义。
（即便 gg 原本是积极的含义）

<!--
如果需要搜索，可以进入 Github 仓库进行搜索，因为 Mkdocs 内建的搜索功能不适合过大的文档，所以 Mkdocs 搜索功能已关闭。
-->

> [!quote] 引用
>
> 言者无罪，闻者足戒。

## 板块分类

| 板块     | 文件夹                                       | 板块     | 文件夹                                          |
| -------- | -------------------------------------------- | -------- | ----------------------------------------------- |
| 活动     | :material-run: [/activities][]               | 处罚     | :material-podium-bronze: [/punish][]            |
| 反审查   | :material-book-lock: [/anti-censorship][/ac] | 研究     | :material-archive-search-outline: [/research][] |
| 允许列表 | :material-eye-check: [/allowlist][]          | 规则     | :material-ruler-square-compass: [/rule][]       |
| 限制列表 | :material-eye-off: [/blocklist][]            | 服务     | :material-room-service: [/serviceprovider][]    |
| 文字     | :material-text: [/text][]                    | 软件     | :material-apps: [/software][]                   |
| 捕风捉影 | :material-wind-power: [/catch_the_wind][]    | 技术     | :material-beaker: [/technology][]               |
| 审查     | :material-book-lock: [/censorship][]         | 声音     | :material-voicemail: [/sound][]                 |
| 公司     | :material-office-building: [/company][]      | 主题     | :material-tag-text: [/theme][]                  |
| 游戏     | :material-gamepad: [/game][]                 | 尚不明确 | :material-file-question: [/unclear][]           |
| 梗       | :material-human-female-dance: [/meme][]      | 视频     | :material-file-video: [/video][]                |
| 新闻存档 | :material-newspaper: [/news_archive][]       | 网站     | :material-web: [/website][]                     |
| 人物     | :material-human: [/people][]                 |          |                                                 |

[/ac]: /anti-censorship/index.md
[/activities]: /activities/index.md
[/allowlist]: /allowlist/index.md
[/blocklist]: /blocklist/index.md
[/catch_the_wind]: /catch_the_wind/index.md
[/censorship]: /censorship/index.md
[/company]: /company/index.md
[/game]: /game/index.md
[/meme]: /meme/index.md
[/news_archive]: /news_archive/index.md
[/people]: /people/index.md
[/punish]: /punish/index.md
[/research]: /research/index.md
[/rule]: /rule/index.md
[/serviceprovider]: /serviceprovider/index.md
[/software]: /software/index.md
[/sound]: /sound/index.md
[/technology]: /technology/index.md
[/text]: /text/index.md
[/theme]: /theme/index.md
[/unclear]: /unclear/index.md
[/video]: /video/index.md
[/website]: /website/index.md

## 搜索功能

/punish 和 /news_archive 板块的绝大部分内容都被排除了。因为搜索功能的本质,是一个包含所有内容的 json 文件，
目前大小为 2 MiB 左右（解压后为 10 MiB），如果太大就不利于加载了。

<!--
    更好的中文分词搜索预计 Material for MkDocs 更新到 10.0.0 版本时就能使用，现在需要给搜索的词语间手动加上空格。
-->

## 联系方式

> [!abstract] 任何问题都可以联系我：
>
> +   邮箱: cngledos@gmail.com
> +   Telegram: [@gledos_green](https://t.me/gledos_green)
> +   GitHub 仓库的 [issues](https://github.com/gledos/ggame/issues)

## 源文件

[这里](https://github.com/gledos/ggame)（Github 仓库）可以查看到所有的条目的 Markdown Raw 文件。
由 gledos 创作的内容，如果没有另外声明，均为 CC0 许可协议。

## 游客计数

![网页游客计数器](https://count.getloli.com/get/@:ggame)

<!--

## 此 Wiki 的技术问题

由于对 mkdocs 不过熟悉，所以有一些条目会有问题，比如:

+ PDF 文件似乎不被 mkdocs 支持，无法被输出到 GitHub pages
+ TLS 已失效，正在修复

-->
