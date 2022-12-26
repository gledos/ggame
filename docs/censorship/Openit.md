---
title: "Openit"
description:
published: true
date: "2022-12-25T14:34:52"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-12-25T14:34:52"
---

## 简介

Openit 是一个免费的订阅站点，公开信息表示有三个人参与维护，分别是：[^about]

[^about]: 《[关于](https://web.archive.org/web/20220924152940/https://openit.daycat.space/guide/about.html)》, Openit 官方文档, 2022-09-14. (参照 2022-12-25).

| 职位                  | 用户名    |
| --------------------- | --------- |
| 订阅维护者            | Steven Yu |
| Openit PCRS核心贡献者 | daycat    |
| 财政管理              | 271       |

Openit 的 <ruby>Slogan<rp>(</rp><rt>标语</rt><rp>)</rp></ruby> 为「致力于打造免费无感的翻墙环境」，用户可以使用支持订阅功能的破除网络封锁的工具，订阅 Openit 收集整理维护的节点。

## 结构

Openit 由多个工具所生成，核心是 OpenPCRS，这套系统能够从代理池自动筛选，去重改名测速以及变化转换，最后生成订阅链接。

代理池由 pyray 这个 Python 写的爬虫工具进行爬取，也有人提交公益节点。[^how] 作者介绍此系统的原文如下：

[^how]: 《[可以帮助到openit的几种方式](https://web.archive.org/web/20220910104557/https://openit.daycat.space/guide/how.html)》, Openit 官方文档, 2022-06-09. (参照 2022-12-25).

[^scp_2014]: 懒惰使人进步, 《[ShareCentre Pro](https://web.archive.org/web/20220903130042/https://t.me/s/ShareCentrePro/2014)》, Telegram, 2022-06-24. (参照 2022-12-25).

> [!quote]+ 懒惰使人进步[^scp_2014]
>
> openit一直在追求完美的自动化订阅系统<br>
> 经过这一周的调试，一个集订阅收集测速筛选编码转换功能为一体的全自动订阅系统**OpenPCRS**(以下简称PCRS)现已完工！整套系统由GitHub Action统一指挥运作_**👉**_( [https://github.com/yu-steven/openit/blob/main/.github/workflows/Nodes.yaml](https://web.archive.org/web/20220903121434/https://github.com/yu-steven/openit/blob/main/.github/workflows/Nodes.yaml) )，可实现自动收集(pool)、自动测速筛选(clashcheck)、自动去重改名(Remove & Rename)、自动编码转换(subconverter)到上传的整个流程(取各项目名称首字母 **P C R S**、项目在**openit**上开源，所以叫**OpenPCRS**)，全过程无人工干预(也可以随时不停机人工干预添加节点)，整套流程早8:00到晚10:00每32分钟一次一次6-15分钟左右，晚10:00到次日早8:00每51分钟一次一次15-20分钟(错位高峰期，全过程零成本)<br>
> 节点可用率80% _**⬆️**_，SLA 保障90% _**⬆️**_<br>
> 今后关于openit的通知会减少许多然后我会在频道发一些有意思的东西(养老模式)；未来将计划迭代**OpenPCRS 2.0**以提供更稳定的服务(自有服务器测活)、更高的节点可用率(国内服务器)以及更便捷的使用方式(画大饼)；预计如果…没有如果…任何意外情况都不会阻止openit服务持续到宇宙和时间的尽头(直至墙倒)<br>
> 这里我要感谢所有间接或直接帮助过我的人: 首先是工作在前端的wu-mx (js大佬，js不会就问他)他提供了openit前端、域名和站点等的一切技术支持并成功将openit域名下的订阅([openit.ml](http://openit.ml/))从Cloudflare Worker迁移到hax实体服务器，解决了Cloudflare十万限额的问题在PCRS系统上，wu-mx用js实现了重要的去重、识别流解和节点改名功能**(R)**；然后是工作在后端的 daycat (GitHub同名)他负责提供整个后端流程90%的python代码其中包括用于搜集节点的pyray**(P)**和用于测试筛选的clashcheck**(C)**，clashcheck依赖于clash内核，daycat的订阅项目(daycat/freeray)同样用到了上文提到的clashcheck(daycat原创，内核clash)，同样是daycat写的pyray节点爬虫(私有仓库)也为openit提供了强大的支持，daycat在GitHub上改良并维护了zu1k/proxypool，给出了关于proxypool的注释和随笔记，使之可以正常使用并更容易的分析代码；绿头外网集团(TG频道 [@payday501](https://t.me/payday501))因为停更现在频道不发东西，所以他将他的订阅链接重定向到我这里([openit.ml](https://openit.ml/))，使得我的订阅人数猛增，这给了我极大的动力去做下去；当然271富豪上周对我的赞助我也不会忘记，这使我得到了人生的第一桶金($1.5)<br>
> 在openit致力于打造无感翻墙环境的沿途也有着GitHub开源社区上游大佬们的开源代码对我的启发与帮助: tindy2013编写的subconverter(订阅转换)**(S)**这对我的自动化流程中订阅转换部分的极大支持，使之成为openit仓库最大的依赖项，我相信tindy2013/subconverter也是各位在各种订阅之间互相转换的重要桥梁，应是翻墙领域最重要的项目之一；同样重要的是ACL4SSR/ACL4SSR和其他提供规则文件和配置文件以供参考和使用的repo；同样出名的是zu1k大佬([zu1k.com](http://zu1k.com/) TG频道 [@peekfun](https://t.me/peekfun) GitHub同名)写的proxypool(节点池)和Sansui233大佬剥离出的proxypoolcheck(节点池本地筛选)，这两个repo给了我极大的灵感并指引我找到了PCS的正确思考方向；还有在openit立项中期引用alanbobs999/TopFreeProxies的python代码实现基本的节点备注功能并对python有了基本的了解；其实还有很多不愿透露名字的陌生人和高材生们对我或多或少或重要或不重要的肯定、指引以及帮助。可以说在创立openit的道路上每一个人都是有意义的都在以各种形式成为创立openit的坚不可摧的基石！<br>
> **革命尚未成功，同志仍须努力!**<br>
> **但是你可以永远相信openit**

## 关闭

2022年11月30日，Openit 的一个镜像站点似乎首次被 GFW 禁止（被墙）。[^3099]

[^3099]: ShareCentre Pro, 「[openit.uitsrt.monster 被墙 弃用](https://web.archive.org/web/20221225072621/https://t.me/s/ShareCentrePro/3099)」, Telegram, 2022-11-30. (参照 2022-12-25).

2022年12月2日，Steven Yu 之后就没有在 Telegram 和 GitHub 上面活动，被认为失踪了，有人猜测 Steven Yu 被喝茶或者被捕了。[^2461]

[^2461]: 冰点™资源交流里群[频道], 「[据不实消息，本频道某位管理可能进去喝茶了](https://web.archive.org/web/20221225073558/https://t.me/s/ZGQincLiqun/2461)」, Telegram, 2022-12-07. (参照 2022-12-25).

2022年12月10日，Openit Team 的其他成员取消了 Openit 网站的解析，并删除了仓库。

## 树洞

Steven Yu 除了运营 Openit 之外，也是 Telegram 的「树洞频道」主要管理员，而在喝茶或者被捕后，某管理员似乎解散了原本的群组，防止资料泄漏给调查者。

> [!quote]+ 树洞简介
>
> 2022年3月到8月，几个北大学生创建了抒发森林和comin两款app，作为全国大学生网络社区，两款app被称为树洞。后因其中政治敏感内容过多，被关停，创建者也被当局严厉警告。树洞的墙内本体已经被消灭，但它汇集了一群追求自由开放包容的大学生，他们承载着树洞精神在墙外流浪。墙内搞不了，就在墙外搞！
