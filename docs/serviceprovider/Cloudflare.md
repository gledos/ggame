---
title: Cloudflare
description:
published: true
date: 2022-06-12T21:40:27.4027+08:00
特殊标签标记: #无标签
editor: markdown
dateCreated: 2022-05-09T16:16:56.901+08:00
---

## 简介

Cloudflare 主要是经营基于反向代理的内容传递网路 (Content Delivery Network, CDN) 及分布式域名解析服务 (Distributed Domain Name Server) 的业务。 

Cloudflare 最初在大陆的网络是与百度合作，后来转而与京东云合作。

## 网络中立性

Cloudflare 虽然在过去大部分情况，没有停止暴力纳粹的网站的服务，但在新西兰基督城清真寺枪击案后，停止了 8chan 的服务。[^02205]

[^02205]: Julia Carrie Wong, 《[8chan: the far-right website linked to the rise in hate crimes](https://web.archive.org/web/20220505042122/https://www.theguardian.com/technology/2019/aug/04/mass-shootings-el-paso-texas-dayton-ohio-8chan-far-right-website)》, The Guardian, 2019-08-04. (参照 2022-05-09).

## 官网无法连接

持续时间未知，2021年8月7日[^794189] 和 2022年4月10日[^999020] 都有人观测到四川 ISP 的默认 DNS 会劫持 Cloudflare 官网到 127.0.0.1 。

[^794189]: lns103, 《[四川电信运营商 DNS 将 cloudflare 官网解析为本地环回地址](https://web.archive.org/web/20220412064827/https://www.v2ex.com/t/794189)》, V2EX, 2021-08-06. (参照 2022-05-09).

[^999020]: Mio, 《[四川运营商把CF解析到了本地](https://web.archive.org/web/20220509033549/https://hostloc.com/thread-999020-1-1.html)》, 全球主机交流论坛, 2022-04-10. (参照 2022-05-09).

除了主页，API 的域名 `api.cloudflare.com` 也遭受了劫持。[^381238]

[^381238]: xnephila, 《[中国移动网络访问api和dash](https://web.archive.org/web/20220612131115/https://community.cloudflare.com/t/api-dash/381238)》, Cloudflare Community, 2022-05-05. (参照 2022-06-12).

## Pages 与 Workers 被封锁

2022年5月8日 与 9日，Cloudflare 的 Pages[^3574] 与 Workers[^3576] 功能分别被封锁，具体表现为主要的阻断方式包括连接重置和 DNS 污染等，受到影响的域名为：

[^3574]: 层叠 - The Cascading, 「[Cloudflare Pages (\*.pages.dev) 子域名上的站点可能于近期在中国大陆开始无法访问，主要的阻断方式包括连接重置和 DNS 污染等。](https://web.archive.org/web/20220509140245/https://t.me/s/outvivid/3574)」, Telegram频道, 2022-05-08. (参照 2022-05-09).

[^3576]: 层叠 - The Cascading, 「[Cloudflare Workers 及其子域名 (\*.\*.workers.dev) 在中国大陆（至少）部分地区被 DNS 污染及连接重置。](https://web.archive.org/web/20220509141722/https://t.me/s/outvivid/3576)」, Telegram, 2022-05-09. (参照 2022-05-09).

+   `*.pages.dev`
+   `*.workers.dev`

---

+   相关链接
    +   《[github.laobiao.workers.dev GET测试结果](https://web.archive.org/web/20220509032033/http://17ce.com/site/http/20220509_288e7d90cf4611eca6c6f3822089be12:1.html)》, 17CE, 2022-05-09. (参照 2022-05-09).
    +   emptysuns, 《[「补图」pages之后workers.dev也被dns污染了](https://web.archive.org/web/20220509031615/https://hostloc.com/thread-1013938-1-1.html)》, 全球主机交流论坛, 2022-05-08. (参照 2022-05-09).


