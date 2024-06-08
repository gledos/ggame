---
title: Cloudflare
description:
published: true
date: "2024-06-08T22:05:36"
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

持续时间未知，2021年8月7日[^794189] 和 2022年4月10日[^999020]，有人观测到四川 ISP 的默认 DNS 会劫持 Cloudflare 官网到
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

## 假墙

2023年6月17日，V2EX 上有人声称自己能让 Cloudflare 网站被 GFW 封锁。[^49599] 并附上了以下示例 URL：

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

这种机制被称为「假墙」，该域名的 IP 会被 GFW 临时封禁一段时间。一些勒索者就会使用这种方法，
让受害者的网站处于被「假墙」的状态，需要挂上他们的广告或者缴费后才会解除攻击。

原理是利用 GFW 的某种漏洞，使受害者域名的 IP 被 GFW 临时封锁。即使切换 IP，新的 IP 也会被封禁。

具体原理，可能攻击者是让「违规」的 HTTP 请求经过 GFW，GFW 认为此域名存在问题，于是 GFW 临时封禁该域名的 IP 地址。[^2057][^18658]
也许类似于过去在 Google 搜索「胡萝卜」「长江」时，会导致连接暂时被阻断。[^53537]

[^2057]: 董德多, 《[假墙（伪墙）攻击解决方法大全（烈马团队攻击网站敲诈勒索解决方案）](https://web.archive.org/web/20231208132855/https://www.02405.com/archives/2057)》, 零五网, 2021-08-04. (参照 2024-04-05).

[^18658]: 《[网站如何应对假墙攻击](https://web.archive.org/web/20220121171833/https://zhujib.com/18658.html)》, 主机吧, 2021-11-29. (参照 2024-04-05).

[^53537]: 《[Google六一新功能:请注意在中国大陆搜索XX很可能导致用户与谷歌的连接暂时被阻断](https://web.archive.org/web/20230927153537/https://www.chinagfw.org/2012/05/googlexx.html)》, GFW BLOG（功夫网与翻墙）, 2012-06-01. (参照 2024-04-05).

关于解决方法，可以换成国内服务器，因为该 GFW 漏洞仅针对境外 IP。亦或者准备大量 IP，发现被「假墙」就切换，
因为 IP 仅被临时封禁一段时间，之后会被释放。

2023年6月23日，`www.cloudflare.com` 主站的 IPv4 也遭遇「假墙」。[^50591] 而早在 2021年2月7日，主站也被封锁过，
当时有人表示自己在遭遇「假墙」后，将 CNAME 修改成了 `www.cloudflare.com`，结果很快主站就遭遇「假墙」了。[^05361]

[^50591]: lns103, 《[很多正常网站的 cloudflare cdn ipv4 被墙](https://web.archive.org/web/20240304063558/https://www.v2ex.com/t/950591)》, V2EX, 2023-06-21. (参照 2024-04-05).

[^05361]: hanshe, 《[本人宣布对CloudFlare官网被墙负责](https://web.archive.org/web/20230823005742/https://hostloc.com/thread-805361-1-1.html)》, 美国VPS综合讨论, 2021-02-07. (参照 2024-04-05).

## 测速域名被屏蔽

2024年4月3日，Cloudflare 的测速域名 `https://speed.cloudflare.com/` 被发现遭到了大范围 SNI 阻断。17ce 的测试结果表示，
连通率为 0 %。[^e060e][^f1cc1] 屏蔽时间未知。

[^e060e]: 《[www.17ce.com GET测试结果 网站速度测试](https://web.archive.org/web/20240403124435/https://17ce.com/site/http/20240403_8d2167f0f1b711ee87ce53f1533e060e:1.html)》, 2024-04-03. (参照 2024-04-04).

[^f1cc1]: 《[www.17ce.com GET测试结果 网站速度测试](https://web.archive.org/web/20240405032604/https://17ce.com/site/http/20240405_f1cc1160f2fb11ee87ce53f1533e060e:1.html)》, 2024-04-05. (参照 2024-04-05).

## WARP 大规模被封禁

2024年6月5日 开始，WARP 的 IPv4 基本被封禁，导致无法使用。[^30632][^L5gp0]
具体受影响的有 Cloudflare WARP/WARP+/Zero Trust。[^23918] 不过有人说 IPv6 还可以使用。[^xsw]

[^30632]: 「[CloudFlare吧](https://web.archive.org/web/20240608130632/https://tieba.baidu.com/f?kw=cloudflare)」, 百度贴吧, 2024-06-08. (参照 2024-06-08).

[^L5gp0]: 《[最近WARP连接不上，是何原因？大家来讨论一下！](https://web.archive.org/web/20240608052231/https://www.youtube.com/watch?v=D5qlh8L5gp0)》, (2024-06-07). 参照: 2024-06-08. [Online Video].

[^23918]: Leslie Alexander’s channel, 「[Cloudflare WARP/WARP+/Zero Trust六四全面被墙，无法连接，大抵是因为WireGuard协议特征太明显了，一个重放攻击就GG了](https://web.archive.org/web/20240608123918/https://t.me/s/LeslieDiary/94)」, Telegram, 2024-05-25. (参照 2024-06-08).

[^xsw]: 「[WARP 墙 - 搜尋](<https://x.com/search?q=WARP 墙>)」, X (formerly Twitter), 2024-06-08. (参照 2024-06-08).
