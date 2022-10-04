---
title: jsDelivr
description:
published: true
date: "2022-06-16T08:35:55"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-05-28T22:40:46"
---

## 简介

jsDelivr 是免费的公共 CDN，它可以直接从 npm 和 GitHub 存储库提供 Web 文件，无需任何配置，非常受网站欢迎。

特别鸣谢 Luminous 编写了《【杂谈】jsDelivr域名遭到DNS污染》，对本条目的编写有很大的帮助。[^6295]

[^6295]: Luminous, 《[【杂谈】jsDelivr域名遭到DNS污染](https://web.archive.org/web/20220429013214/https://luotianyi.vc/6295.html)》, Luminous’ Home, 2022-04-29. (参照 2022-05-28).

## 添加额外的大陆审查规则

2016年12月 开始，jsDelivr 拥有大陆的 ICP（互联网信息经营许可证）资格，随后在 2020年8月15日 开始，在大陆保留屏蔽违反大陆政策的内容的权利。[^18247]

[^18247]: MartinKolarik, 《[Create Acceptable Use Policy - jsdelivr.net.md (#18247) · jsdelivr/jsdelivr@47a9984](https://web.archive.org/web/20210909094725/https://github.com/jsdelivr/jsdelivr/commit/47a9984457d37ca0c46904fe2bd5d827ee6fee96)》, GitHub, 2020-08-15. (参照 2022-05-28).

## 失去 ICP 资格

2021年12月20日，jsDelivr 失去了大陆的 ICP 资格，这导致大陆的 CDN 禁用了其账户，影响了大陆和台湾的用户，[^5652]因为 jsDelivr 在台湾同样使用了大陆的网宿科技的 CDN 服务。[^1710]随后 jsDelivr 将受影响的地区的流量设置为附近的 Fastly CDN 提供，[^2525][^jsds]虽然会慢不少，但这也是唯一的办法。

[^5652]: jsDelivr CDN, 《[Unfortunately today jsDelivr unexpectedly lost its ICP license in China ……](https://web.archive.org/web/20220519203611/https://twitter.com/jsDelivr/status/1472870623051456522)》, Twitter, 2021-12-20. (参照 2022-05-29).

[^1710]: jsDelivr CDN, 《[To clarify, Taiwan doesn’t require an ICP license ……](https://web.archive.org/web/20211220181420/https://twitter.com/jsDelivr/status/1472992488080171015)》, Twitter, 2021-12-21. (参照 2022-05-29).

[^2525]: jsDelivr CDN, 《[We understand how difficult it was for our users to experience this unique situation ……](https://web.archive.org/web/20211220101002/https://twitter.com/jsDelivr/status/1472870625257660418)》, Twitter, 2021-12-20. (参照 2022-05-29).

[^jsds]: 《[jsDelivr Status](https://web.archive.org/web/20220528230627/https://status.jsdelivr.com/?start=20211220&end=20211221)》, Uptime.com, 2021-12-20. (参照 2022-05-29).

备注：失去 ICP 资格以及网宿科技停止服务的时间未知，所以尚不明确先后顺序。

> [!abstract]+ 当时的相关 GitHub Issues 讨论
>
> +   97571522, 《[jsdelivr被墙导致插件失效 · Issue #203 · MotooriKashin/Bilibili-Old](https://web.archive.org/web/20220528144809/https://github.com/MotooriKashin/Bilibili-Old/issues/203)》, GitHub, 2021-12-20. (参照 2022-05-28).
> +   StackExplode, 《[CDN error in China · Issue #18348 · jsdelivr/jsdelivr](https://web.archive.org/web/20220528144603/https://github.com/jsdelivr/jsdelivr/issues/18348)》, GitHub, 2021-12-20. (参照 2022-05-28).
> +   hifocus, 《[cdn.jsdelivr.net Partially Censored in China · Issue #18392 · jsdelivr/jsdelivr](https://web.archive.org/web/20220507055537/https://github.com/jsdelivr/jsdelivr/issues/18392)》, GitHub, 2022-04-28. (参照 2022-05-29).

## DNS 污染

2022年4月28日，jsDelivr 被发现遭受到了 DNS 污染的审查，[^849894]大量地区的 DNS 将 `cdn.jsdelivr.net` 解析到了 google、twitter 和 facebook 的 IP 。

[^849894]: XIU2, 《[刚刚发现 cdn.jsdelivr.net 已经被 DNS 污 染 了。。。](https://web.archive.org/web/20220524030010/https://www.v2ex.com/t/849894)》, V2EX, 2022-04-28. (参照 2022-05-28).

> [!abstract]+ 当时的相关 GitHub Issues 讨论
>
> +   hifocus, 《[cdn.jsdelivr.net Partially Censored in China · Issue #18392 · jsdelivr/jsdelivr](https://web.archive.org/web/20220507055537/https://github.com/jsdelivr/jsdelivr/issues/18392)》, GitHub, 2022-04-28. (参照 2022-05-29).

> [!abstract]+ GET 测试
>
> +   「[www.jsdelivr.com GET 测试结果](https://web.archive.org/web/20220428122735/http://17ce.com/site/http/20220428_23041930c6ee11ecabdac77ea2bc38de:1.html)」, 17CE, 2022-04-28. (参照 2022-05-28).
> +   「[www.jsdelivr.com GET 测试结果](https://web.archive.org/web/20220429105014/http://17ce.com/site/http/20220429_7d059100c7a911eca6c6f3822089be12:1.html)」, 17CE, 2022-04-29. (参照 2022-05-28).
> +   「[www.jsdelivr.com GET 测试结果](https://web.archive.org/web/20220430011034/http://17ce.com/site/http/20220430_0f787ac0c82211eca6c6f3822089be12:1.html)」, 17CE, 2022-04-30. (参照 2022-05-28).

## 撤销 DNS 污染

2022年4月29日，jsDelivr 在绝大部分地区的 DNS 污染已经被撤销。[^850128]

[^850128]: Silently, 《[jsDelivr 被 GFW 释放了](https://www.v2ex.com/t/850128)》, V2EX/水深火热, 2022-04-29. (参照 2022-05-29).

## 再次被污染

2022年5月16日，jsDelivr 再次被 DNS 污染。[^854324]

[^854324]: jaggle, 《[jsdelivr 挂了么？](https://web.archive.org/web/20220522055244/https://www.v2ex.com/t/854324)》, V2EX, 2022-05-21. (参照 2022-05-29).

> [!abstract]+ 当时的相关 GitHub Issues 讨论
>
> +   DreamOfIce, 《[Jsdelivr has been DNS pollution again in China. It was pointed to google, twitter and facebook IPs. · Issue #18397 · jsdelivr/jsdelivr](https://web.archive.org/web/20220529083156/https://github.com/jsdelivr/jsdelivr/issues/18397)》, GitHub, 2022-05-16. (参照 2022-05-29).
> +   Sinclair8023, 《[CDN resources cannot be accessed in China · Issue #18396 · jsdelivr/jsdelivr](https://web.archive.org/web/20220529083155/https://github.com/jsdelivr/jsdelivr/issues/18396)》, GitHub, 2022-05-16. (参照 2022-05-29).

> [!abstract]+ DNS 检测
>
> +   「[cdn.jsdelivr.net DNS检测](https://web.archive.org/web/20220528143905/https://zijian.aliyun.com/detect/dns/DNS_PING-91433b39aff9db99decd9d9d89eb4e2c-1653748680516)」, 阿里云网站运维检测平台, 2022-05-28. (参照 2022-05-28).

备注：以上审查均只针对 `cdn.jsdelivr.net` 主站域名，[^6295]其他的域名截至 2022年5月29日 均未受到审查：

> [!abstract]+ 域名清单
>
> +   CloudFlare：`test1.jsdelivr.net`
> +   CloudFlare：`testingcf.jsdelivr.net`
> +   Fastly：`fastly.jsdelivr.net`
> +   GCORE：`gcore.jsdelivr.net`
> +   Purge：`purge.jsdelivr.net`

以上域名在数日后遭到封锁。

## 解除封锁

2022年6月10日 左右，域名 `cdn.jsdelivr.net` 被发现已解封，大多数地区的 DNS 测试也显示恢复了正常。[^3c91][^1032441]

[^3c91]: 《[cdn.jsdelivr.net DNS 检测](https://web.archive.org/web/20220611055420/https://zijian.aliyun.com/detect/dns/DNS_PING-8b566904aff9db99decd9d9d3c914f6b-1654926779971)》, 阿里云网站运维检测平台, 2022-06-11. (参照 2022-06-11).

[^1032441]: h3cie, 《[jsdelivr已经恢复正常了！](https://web.archive.org/web/20220614034857/https://hostloc.com/thread-1032441-1-1.html)》, hostloc, 2022-06-14. (参照 2022-06-14).
