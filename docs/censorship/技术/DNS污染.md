---
title: DNS污染
description:
published: true
date: 2021-09-11T09:27:21.977Z
tags:
    - DNS
editor: markdown
dateCreated: 2021-09-11T09:27:21.977Z
---

## 简介

+ 路由牵引方式
+ 旁路抢答方式（分光镜像+抢先应答）  
+ PBR 策略路由方式[^482394]

[^482394]: [移动宽带三套 DNS 污染技术已经申请专利了，三套组合拳。 - V2EX](https://web.archive.org/web/20200327034135/https://v2ex.com/t/482394)

+ 相关链接
    + [基于旁路抢答机制的异网DNS管控实践 - 电信技术](https://web.archive.org/web/20180823105346/http://www.ttm.com.cn/article/2016/1000-1247/1000-1247-1-1-00064.shtml)

## 污染世界

??? quote "gledos 注：待续"

    2010年3月24日 18:22:40 UTC ，智利的 DNS 管理员发现了奇怪的错误，访问 facebook、youtube 或 twitter 的 A 记录，会得到错误的 IP，该错误 3 个发生在智利，1 个发生在加利福尼亚。原因可能是将域名请求提交给大陆控制的「根域 DNS 镜像」时，出现了问题。[^260]

    [^260]: Mauricio Vergara Ereche, 《[[dns-operations] Odd behaviour on one node in I root-server (facebook, youtube & twitter)](https://web.archive.org/web/20110917095535/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005260.html)》, 2011-09-17. 参照: 2022-02-22. [Online].

    随后 ICANN 的 VP&CTO 李晓东[^LEE]声明：「CNNIC never 
    did any interceptions or other things for the mirror site of I root 
    serer, CNNIC only provides the stable Internet connection, power and 
    necessary hand support.」[^280]

    [^LEE]: 《[李晓东基本信息](https://web.archive.org/web/20200603014428/http://people.ucas.ac.cn/~LEE)》, 中国科学院大学. (参照 2022-02-22).

    [^280]: Xiaodong Lee, 《[[dns-operations] Odd behaviour on one node in I root-server (facebook, youtube & twitter)](https://web.archive.org/web/20120119092604/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005280.html)》, 2012-01-19. 参照: 2022-02-22. [Online].

    根据 Robert Edmonds 的想法，可能是因为数据进入了大陆境内，被 GFW 篡改了内容，[^271]即中间人攻击。

    [^271]: Robert Edmonds, 《[[dns-operations] Odd behaviour on one node in I root-server (facebook, youtube & twitter)](https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005271.html)》, 2010-03-24. 参照: 2022-02-22. [Online].

    不过……
