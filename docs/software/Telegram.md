---
title: Telegram
description:
published: true
date: "2021-09-10T16:23:13"
tags:
- 即时通讯
editor: markdown
dateCreated: "2021-09-10T16:23:13"
---

## 即时封锁部分频道的图片

详情请跳转至 [QQ#Telegram频道](/company/腾讯/QQ.md#Telegram频道) 条目。

## 移除部分贴纸

2021年11月，Apple 公司要求 Telegram 移除部分贴纸，移除了茄子与桃子的动态贴纸。该贴纸含有性暗示，随后 Pavel Durov 在自己的俄语频道中发布了一个投票，选择分别是「删除动态茄子」以及「在 Apple 设备上完全终止 Telegram」。[^dr37][^406]

[^dr37]: [Компания Apple потребовала от Telegram удалить разбрасывающий семена баклажан. Что лучше: - Павел Дуров – Telegram](https://web.archive.org/web/20211127055721/https://t.me/s/durov_russia/37)

[^406]: [Telegram at Apple's request removed the vulgar eggplant emoji - gagadget.com](https://web.archive.org/web/20211128062406/https://gagadget.com/en/91773-telegram-at-apples-request-removed-the-vulgar-eggplant-emoji/)

## 封锁部分德国频道

2021年6月9日 左右，Attila Hildmann 的 Telegram 已被 iOS 与 Android 客户端封锁，只能使用其他渠道的客户端来查看。[^101]

[^101]: tagesschau.de, 《Hetze via Telegram: Hildmanns Reichweite stark begrenzt》, tagesschau.de. <https://web.archive.org/web/20220204091854/https://www.tagesschau.de/faktenfinder/hetzinhalte-reichweite-101.html> (参照 2022-02-12).


2021年12月14日，因为反疫苗、反犹主义的内容，德国高级官员要求德国政府立即下架 iOS 与 Android 平台商店的 Telegram，如果没有解决上述的问题。[^psgsb]

[^psgsb]: Thomas Escritt, 《Politician says Germany should ban Telegram unless it tackles extremist content》, Reuters, 2021-12-14. 参照: 2022-02-12. [Online]. Available at: <https://web.archive.org/web/20220211090604/https://www.reuters.com/world/europe/politician-says-germany-should-ban-telegram-unless-it-tackles-extremist-content-2021-12-14/>

德国的审查依据是《网络实施法》(Network Enforcement Act)，要求大型社交媒体平台迅速删除非法材料或面临高额罚款。[^60474738]

[^60474738]: Deutsche Welle, 《Germany takes on Telegram to fight extremism》, DW.COM, 2022-01-19. <https://web.archive.org/web/20220204220035/https://www.dw.com/en/germany-takes-on-telegram-to-fight-extremism/a-60474738> (参照 2022-02-12).

2022年2月9日，Attila Hildmann 的 Telegram 频道以及其他频道被彻底封锁，<https://t.me/NWOHunter_An_die_Nachwelt> 现已无法访问。[^64-ka]

[^64-ka]: 《Telegram arbeitet eng mit BKA und BRD und sperrt 64 Kanäle – ATTILAHILDMANN.TO》, 2022-02-11. <https://web.archive.org/web/20220211194625/https://attilahildmann.to/telegram-arbeitet-eng-mit-bka-und-brd-und-sperrt-64-kanaele/> (参照 2022-02-12).

## 测试版本含有华为服务

2022年7月20日，从 Telegram Beta for Android 的 8.9.0 版本，Build 编号为 27279 的软件中，发现了 Telegram 新增了华为相关的服务，完整变化如下：

> [!info]+ LibChecker
>
> +   Telegram Beta → Bold Wolf Telegram Beta
> +   org.telegram.messenger.beta
> +   8.9.0 (27259) → 8.9.0 (27279)
> +   API 30
> +   68.58 MB (68578929 Bytes) → 69.21 MB (69211269 Bytes)
> 
> ---
>
> +   [服務]
>
>     +   \+ org.telegram.messenger.HuaweiPushListenerService
>     +   \+ com.huawei.hms.support.api.push.service.HmsMsgService
>     +   \+ com.huawei.agconnect.core.ServiceDiscovery
>
> +   [活動]
>
>     +   \+ com.huawei.hms.support.api.push.TransActivity
>     +   \+ com.huawei.hms.activity.BridgeActivity
>     +   \+ com.huawei.hms.activity.EnableServiceActivity
>
> +   [廣播接收器]
>
>     +   \+ com.huawei.hms.support.api.push.PushMsgReceiver
>     +   \+ com.huawei.hms.support.api.push.PushReceiver
>
> +   [内容提供者]
>
>     +   \+ com.huawei.hms.support.api.push.PushProvider
>     +   \+ com.huawei.hms.aaid.InitProvider
>     +   \+ com.huawei.agconnect.core.provider.AGConnectInitializeProvider
>
> +   [權限]
>
>     +   \+ org.telegram.messenger.beta.permission.PROCESS_PUSH_MSG
>     +   \+ org.telegram.messenger.beta.permission.PUSH_PROVIDER
>
> +   [中繼資料]
>
>     +   \+ com.huawei.hms.client.service.name:base
>
>         base:6.5.0.300
>
>     +   \+ com.huawei.hms.client.service.name:push
>
>         push:6.5.0.300
>
>     +   \+ com.huawei.hms.min_api_level:base:hmscore
>
>         1
>
>     +   \+ com.huawei.hms.min_api_level:push:push
>
>         1
>
>     +   \+ availableLoaded
>
>         yes
>
>     +   \+ com.huawei.hms.client.service.name:opendevice
>
>         opendevice:6.3.0.305
>
>     +   \+ com.huawei.hms.min_api_level:opendevice:push
>
>         1

随后 Telegram 回复道，这些改变仅会影响从华为应用商店以及华为设备在官网下载的版本。[^1550242842076856320]

[^1550242842076856320]: Telegram Messenger, 《[This code will only be present in builds installed from the Huawei store……](https://web.archive.org/web/20220722044612/https://twitter.com/telegram/status/1550242842076856320)》, Twitter, 2022-07-22. (参照 2022-07-22).
