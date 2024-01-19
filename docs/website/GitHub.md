---
title: GitHub
description:
published: true
date: "2024-01-19T09:55:37"
tags:
- github
- gfw
editor: markdown
dateCreated: "2021-05-22T12:44:35"
---

## 简介

GitHub 是一个在线软件源代码托管服务平台，使用 Git 作为版本控制软件，在 2018 年被微软公司收购。

## GitHub 被拯救了两次

〔待续〕

详情可以查看 Rei 在 2014年2月24日 编写的《[我们拯救了 Github 两次](https://web.archive.org/web/20221207065318/https://chloerei.com/2014/02/24/we-saved-github-twice/)》。

## App Store 大陆区下架

+   [GitHub 正式上架 App Store 了 · Issue #1132 · ruanyf/weekly · GitHub](https://web.archive.org/web/20210522115601/https://github.com/ruanyf/weekly/issues/1132)
+   [Github 官方 app 终于上架了 - V2EX](https://web.archive.org/web/20210522122657/https://www.v2ex.com/t/653739)
+   [国区 App Store 里找不到 GitHub - V2EX](https://web.archive.org/web/20210522033157/https://www.v2ex.com/t/778475)

## Github Pages 受限

详情请阅读 [github.io](/website/次级域名/github.io.md) 条目，封锁发生在 2020年7月 月底。

## 网络劣化

2021年3月，有人发现 [GFW](/censorship/技术/GFW.md) 针对 GitHub 进行了网络劣化处理，原理是每隔一段时间随机封禁 GitHub 部分 IP 的 443 端口一段时间，即使刚才能正常访问，刷新一下就可能被主动封禁了。[^758568]

[^758568]: XIU2, 《[只要 Github 域名指向任意 IP，该 IP 的 443 端口就会超时 3 分钟（TCPing， 80 端口正常），求解！](https://web.archive.org/web/20230217100245/https://v2ex.com/t/758568)》, V2EX, 2021-03-04. (参照 2023-02-17).

## 广东封锁 Github

2022年5月27日，广东宽带用户发现 Github 在运营商 DNS 的情况下会被解析到 `127.0.0.1` 以及 `0.0.0.0`。[^855574][^4d24ec]

[^855574]: hhyygg, 《[运营商 DNS 将 GitHub 指向的本地](https://web.archive.org/web/20220528032521/https://www.v2ex.com/t/855574)》, V2EX, 2022-05-27. (参照 2022-05-28).

[^4d24ec]: 《[github.com DNS检测](https://web.archive.org/web/20220513014638/https://zijian.aliyun.com/detect/dns/DNS_PING-4d24ececaff9db99decd9d9d0b35203b-1652406274446)》, 阿里云网站运维检测平台. (参照 2022-05-28).

影响网站解析的运营商 DNS 至少有：

+   `202.96.128.86`
+   `202.96.134.33`

## 2022年12月 访问受限

2022年12月6日 左右，有人发现 GitHub 在大陆出现了大范围访问受限的情况。[^2ac5c][^900476][^900485] 有人认为这与 GitHub 上面的 AntiZhaPian 仓库有关。[^900605]

[^2ac5c]: 《[检测目标https://github.com/](https://web.archive.org/web/20221206095415/https://boce.aliyun.com/detect/http/5d555ac9ce344acf8fa9c187b3a2ac5c)》, 阿里云网站运维检测平台, 2022-12-06. (参照 2022-12-08).

[^900476]: eightsheep, 《[github 访问的问题](https://web.archive.org/web/20221206095500/https://www.v2ex.com/t/900476)》, V2EX, 2022-12-06. (参照 2022-12-08).

[^900485]: w950888, 《[有人发现么, 今天电信访问 github 被解析到了国家反诈中心](https://web.archive.org/web/20221206095506/https://www.v2ex.com/t/900485)》, V2EX, 2022-12-06. (参照 2022-12-08).

[^900605]: zanzhz1101, 《[如何评价本次 github 被大范围 dns 污染](https://web.archive.org/web/20221206203742/https://www.v2ex.com/t/900605)》, V2EX／[水深火热](/website/V2EX.md#水深火热), 2022-12-06. (参照 2022-12-08).

## 2024 年大范围封锁

2024年1月16日，最早在凌晨的时候，就有用户发现 GitHub 难以连接，主要是难以通过 SSH 连接。[^13632][^05966][^09542][^agzif]

[^13632]: 「[https://github.com GFW 测试](http://archive.today/2024.01.19-015102/https://blocky.greatfire.org/detail/13632/https://github.com%23)」, Blocky, 2024-01-19. (参照 2024-01-19).

[^05966]: 《[www.17ce.com GET 测试结果](https://web.archive.org/web/20240118153340/https://17ce.com/site/http/20240118_ae9a0810b61611eebeeda57922605966:1.html)》, 网站速度测试 17CE, 2024-01-18. (参照 2024-01-19).

[^09542]: kylebing, 《[好奇怪，这两天 github 通过 ssh 的方式无法 push 或 pull 了](https://web.archive.org/web/20240119015312/https://v2ex.com/t/1009542)》, V2EX, 2024-01-18. (参照 2024-01-19).

[^agzif]: BG5USN, "[The ssh to GitHub is block by GFW today?](http://archive.today/2024.01.19-082013/https://twitter.com/BG5USN/status/1747288110197514262)", X (formerly Twitter), 2024-01-17. (参照 2024-01-19).

具体是 DNS 会被解析到 20.205.243.166，而这个 IP 被「空路由」，所以导致 GitHub 无法直连。[^09169] 所以使用 HOSTS 等方法就能解决。

[^09169]:  zhanglintc, 《[你们的 GitHub 今天有问题吗？](https://web.archive.org/web/20240119015302/https://v2ex.com/t/1009169)》, V2EX, 2024-01-16. (参照 2024-01-19).

附言：影响范围尚不明确，还是有用户没有感到 GitHub 被封锁。
