---
title: eu.org
description:
published: true
date: "2024-03-29T21:51:34"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-01-29T21:51:34"
---

## 简介

`eu.org` 是提供免费域名的网站，虽然不是欧盟下的组织，但也有一些知名度。

## 被封锁

2015年12月 月初左右，`*.eu.org` 被 [GFW](/censorship/技术/GFW.md) 封锁了 HTTP 连接，需要启用 HSTS，强制 HTTPS 才能连接，
已持续到本文编写日期 2022年5月。[^22795][^52009]

[^22795]: podel, 《[发现一种新的干扰方式?](https://web.archive.org/web/20190415090542/https://www.v2ex.com/t/522795)》, V2EX, 2018-12-31. (参照 2022-05-12).

[^52009]: 《[恭喜域名被墙了](https://web.archive.org/web/20220129152009/https://blog.sereres.eu.org/misc/恭喜域名被墙了)》, Logger, 2015-12-02. (参照 2022-05-12).

<!--
第一次是：2022年1月

现在（2024-03-29）看不懂之前留下的注释了……
-->

## 封锁变化

2024年3月27日，`eu.org` 的封锁产生了变化。HTTPS 连接失败，可能是针对 `eu.org` 的 [SNI](/anti-censorship/域前置.md)
进行了封锁。解决方法是使用 HTTP 连接，但 HTTP 连接的解封时间未知。[^xh545][^27631]（移动因为墙中墙，仍然无法直连）

[^xh545]: VPS信号旗播报, 《[免费域名eu.org的TLS连接被阻断](https://web.archive.org/web/20240329005923/https://t.me/s/vps_xhq/545)》, Telegram, 2024-03-27. (参照 2024-03-29).

[^27631]: snoopygao, 《[eu.org 套 CF 不行了啊？](https://www.v2ex.com/t/1027631)》, V2EX, 2024-03-28. (参照 2024-03-29). 附言：登录墙
