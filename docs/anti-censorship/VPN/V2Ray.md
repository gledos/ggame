---
title: "V2Ray"
description:
published: true
date: "2023-11-05T22:20:22"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-11-04T20:55:44"
---

## 简介

> [!summary inline end]+ 元数据
>
> ![标志](https://s3.tebi.io/ggame/ShareX/anti-censorship_VPN_V2Ray.svg)[^logo]

[^logo]: 临摹自 v2fly.org 官网的图片，协议为 [知识共享署名 4.0 国际许可协议](https://creativecommons.org/licenses/by/4.0/deed.zh) 协议授权。

V2Ray 是一系列代理工具的核心，具有服务端与客户端，支持多种协议，并原创了 VMess 以及后续衍生协议。

V2Ray 在发布 3.0 时，设定了 Project V 概念，Project V 包含所有 V2Ray 的周边产品，包括客户端、配置工具等。[^sccvv]

[^sccvv]: V2ray, 《[V2Ray 项目升级为 Project V](https://web.archive.org/web/20230213165759/https://steemit.com/cn/@v2ray/v2ray-project-v)》, Steemit, 2017-12-04. (参照 2023-11-04).

## 作者失踪

2019年2月1日，V2Ray 的创始人 Victoria Raymond 在失踪前一个月，表示 V2Ray 的基础设施已经实现了自动托管。[^03584]

[^03584]: Victoria Raymond, 《[感谢开放的互联网，V2Ray的基础设施已经实现了自动托管……](https://web.archive.org/web/20230605000644/https://twitter.com/projectv2ray/status/1091306111406403584)》, X（Twitter）, 2019-02-01. (参照 2023-11-04).

2019年3月1日，创始人失踪，其社交帐号不再发布内容，其他 V2Ray 组织成员照常继续维护软件。[^18285]

[^18285]: 情况呢就是这么个情况, 《[【科学上网】翻墙软件V2ray原开发者失联 北理工团队推出流量识别法](https://web.archive.org/web/20220924052648/https://chinadigitaltimes.net/chinese/618285.html)》, 中国数字时代, 2019-09-25. (参照 2023-11-04).

不过由于 GitHub 的 V2Ray 组织成员不拥有完整的权限，[^fly14] 所以在创始人失踪一个半月的 2019年4月15日 之前，[^15414] V2Ray 组织成员创建了 V2Fly 组织，以方便维护软件。

[^fly14]: V2Fly - Notification and Updates, V2Ray the second new, 「[由于原开发者长期不上线，其他维护者没有完整权限。为了方便维护，我们创建了新的 organization……](https://web.archive.org/web/20231105005717/https://t.me/s/v2fly/14)」, Telegram, 2019-06-02. (参照 2023-11-05).

[^15414]: v2fly, [https://api.github.com/repos/v2fly/v2ray-core](https://web.archive.org/web/20220607115414/https://api.github.com/repos/v2fly/v2ray-core), GitHub, 2022-06-07. (参照 2023-11-04).

从维护者的一些行为来看，V2Fly 只是组织名，其维护的软件依然名为是 V2Ray，只是这种情况相当于弄丢了传国玉玺，所以许多人使用 V2Fly 代称 V2Ray，也就很正常了。

2023年11月4日，因为受到 [Clash](/anti-censorship/VPN/clash_for_windows.md#删库) 相关软件删库、存档，以及 GitHub 出现故障的影响，所以有用户在遇到 V2Ray 仓库发生 404 现象时，[^9fs5x] 有些惊慌。随后 V2Fly 团队发布公告，表示这个问题是 GitHub 临时的网络问题，以及「我们不屈不渝，与你同在！」[^fly99]

[^9fs5x]: GitHub, [Incident with Git Operations, Issues, Pull Requests, Actions, API Requests, Codespaces, Packages, Pages and Webhooks](https://web.archive.org/web/20231104033954/https://www.githubstatus.com/incidents/xb30mby9fs5x), GitHub’s Status Page, 2023-11-03. (参照 2023-11-04).

[^fly99]: V2Fly - Notification and Updates, V2Ray the second new, 「[目前GitHub出现了一些临时(但愿) 的异常以至于V2的仓库出现404无法访问异常。不要惊慌，因为我们不屈不渝，与你同在！](https://web.archive.org/web/20231104154557/https://t.me/s/v2fly/99)」, Telegram, 2023-11-04. (参照 2023-11-04).

## 其他内容

> [!note]+ V2Ray 的分裂
>
> 〔事实〕XTLS/Go 库曾经是 V2Ray 的依赖，被人打包到 Debian 中，然后 XTLS/Go 库的作者 Refresh（清洗）了仓库，这时有打包者发现 XTLS/Go 的协议不兼容 Debian 的打包规则。
>
> 〔猜测〕打包者以为作者，在某个时间后修改了仓库的协议。所以提出 issues，请求作者修改协议。
>
> 〔猜测〕打包者的潜台词是希望作者撤销协议限制，因为之前被包到 Debian 中，也就以为之前的协议是更开放的。
>
> 〔事实〕作者对 Debian 不了解，之前也没有人提醒协议问题，甚至还放宽了协议，所以在听闻有人要求放宽协议，否则就会影响上游的 V2Ray，作者觉得有人在找茬，然后就开始找其他依赖的茬……接着因为愤怒而搁置协议问题，最终导致 V2Ray 社区的分裂
>
> 以上内容，整理自 XTLS/Go issues _License issue \#9_。[^35317]

[^35317]: rogers0, [License issue · Issue #9 · XTLS/Go](https://web.archive.org/web/20230715035317/https://github.com/XTLS/Go/issues/9#issuecomment-731588021), GitHub, 2020-11-07. (参照 2023-11-05).
