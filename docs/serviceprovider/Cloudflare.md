---
title: Cloudflare
description:
published: true
date: "2022-06-12T21:40:27"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-05-09T16:16:56"
---

## 简介

Cloudflare 主要是经营基于反向代理的内容传递网路 (Content Delivery Network, CDN) 及分布式域名解析服务 (Distributed
Domain Name Server) 的业务。

Cloudflare 最初在大陆的网络是与百度合作，后来转而与京东云合作。

## 网络中立性

Cloudflare 虽然在过去大部分情况，没有停止暴力纳粹的网站的服务，但在新西兰基督城清真寺枪击案后，停止了 8chan 的服务。[^02205]

[^02205]: Julia Carrie Wong, 《[8chan: the far-right website linked to the rise in hate crimes](https://web.archive.org/web/20220505042122/https://www.theguardian.com/technology/2019/aug/04/mass-shootings-el-paso-texas-dayton-ohio-8chan-far-right-website)》, The Guardian, 2019-08-04. (参照 2022-05-09).

## 官网无法连接

持续时间未知，2021年8月7日[^794189] 和 2022年4月10日[^999020] 都有人观测到四川 ISP 的默认 DNS 会劫持 Cloudflare 官网到
`127.0.0.1`。

[^794189]: lns103, 《[四川电信运营商 DNS 将 cloudflare 官网解析为本地环回地址](https://web.archive.org/web/20220412064827/https://www.v2ex.com/t/794189)》, V2EX, 2021-08-06. (参照 2022-05-09).

[^999020]: Mio, 《[四川运营商把CF解析到了本地](https://web.archive.org/web/20220509033549/https://hostloc.com/thread-999020-1-1.html)》, 全球主机交流论坛, 2022-04-10. (参照 2022-05-09).

除了主页，API 的域名 `api.cloudflare.com` 也遭受了劫持。[^381238]

[^381238]: xnephila, 《[中国移动网络访问api和dash](https://web.archive.org/web/20220612131115/https://community.cloudflare.com/t/api-dash/381238)》, Cloudflare Community, 2022-05-05. (参照 2022-06-12).

## Pages 与 Workers 被封锁

2022年5月8日 与 9日，Cloudflare 的 Pages[^3574] 与 Workers[^3576] 功能分别被封锁，
具体表现为主要的阻断方式包括连接重置和 DNS 污染等，受到影响的域名为：

[^3574]: 层叠 - The Cascading, 「[Cloudflare Pages (\*.pages.dev) 子域名上的站点可能于近期在中国大陆开始无法访问，主要的阻断方式包括连接重置和 DNS 污染等。](https://web.archive.org/web/20220509140245/https://t.me/s/outvivid/3574)」, Telegram频道, 2022-05-08. (参照 2022-05-09).

[^3576]: 层叠 - The Cascading, 「[Cloudflare Workers 及其子域名 (\*.\*.workers.dev) 在中国大陆（至少）部分地区被 DNS 污染及连接重置。](https://web.archive.org/web/20220509141722/https://t.me/s/outvivid/3576)」, Telegram, 2022-05-09. (参照 2022-05-09).

+   `*.pages.dev`
+   `*.workers.dev`

> [!abstract]+ 相关链接
>
> +   《[github.laobiao.workers.dev GET测试结果](https://web.archive.org/web/20220509032033/http://17ce.com/site/http/20220509_288e7d90cf4611eca6c6f3822089be12:1.html)》, 17CE, 2022-05-09. (参照 2022-05-09).
> +   emptysuns, 《[「补图」pages之后workers.dev也被dns污染了](https://web.archive.org/web/20220509031615/https://hostloc.com/thread-1013938-1-1.html)》, 全球主机交流论坛, 2022-05-08. (参照 2022-05-09).

## 部分地区屏蔽 IP

2022年11月20日，有人观察到部分地区的移动和联通网络，将香港或者全部的的 Cloudflare IP 给屏蔽了，也有人观察到还能连接，
但延迟明显上升了。[^896616]

[^896616]: yaott2020, 《[移动做的真的绝，直接屏蔽到 HK Cloudflare IP](https://web.archive.org/web/20221120232112/https://www.v2ex.com/t/896616)》, V2EX, 2022-11-20. (参照 2022-11-21).

## 第三方手动屏蔽

2023年6月17日，V2EX 上有人声称自己能让 Cloudflare 网站被 GFW 封锁。[^49599] 并附上了以下示例：

[^49599]: lizhiqing, 《[罪大恶极我能 99%几率让使用 CloudFlare 的网站从中国大陆三网受屏蔽](https://web.archive.org/web/20230618000902/https://v2ex.com/t/949599)》, V2EX, 2023-06-17. (参照 2024-04-04).

+   `https://cloudreve.org/cdn-cgi/trace`
+   `https://speed.cloudflare.com/cdn-cgi/trace`
+   `https://www.45office.com/cdn-cgi/trace`
+   `https://fbi.gov/cdn-cgi/trace`
+   `https://mubai.mcbk1.cn/cdn-cgi/trace`
+   `https://91ai.net/cdn-cgi/trace`
+   `https://cdn.anycast.eu.org/cdn-cgi/trace`
+   `https://billing.virmach.com/cdn-cgi/trace`
+   `https://www.racknerd.com/cdn-cgi/trace`
+   `https://chatgpt.com/cdn-cgi/trace`
+   `https://cf.areyouikun.com/cdn-cgi/trace`
+   `https://wallheaven.cc/cdn-cgi/trace`
+   `https://ip.sb/cdn-cgi/trace`
+   `https://ip.skk.moe/cdn-cgi/trace`

## 测速域名被屏蔽

2024年4月3日，Cloudflare 的测速域名 `https://speed.cloudflare.com/` 被发现遭到了大范围 SNI 阻断。17ce 的测试结果表示，
连通率为 0 %。[^e060e] 屏蔽时间未知。

[^e060e]: 《[www.17ce.com GET测试结果 网站速度测试](https://web.archive.org/web/20240403124435/https://17ce.com/site/http/20240403_8d2167f0f1b711ee87ce53f1533e060e:1.html)》, 2024-04-03. (参照 2024-04-04).
