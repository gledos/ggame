---
title: MIUI
description:
published: true
date: "2022-08-16T16:36:04"
tags:
- operating-system
- dns
editor: markdown
dateCreated: "2021-06-27T18:56:29"
---

## 简介

MIUI 是小米公司的手机系统，最初 2010 年是给当时知名手机制作的第三方自定义 ROM，到了 MIUI V3，小米公司才有了自己的预装了 MIUI 的小米手机。

## 添加防回滚机制

2018年7月，小米推出的 MIUI 10 Global Beta 8.7.5 版本里包含了<ruby>反回滚<rp>(</rp><rt>Anti-Rollback Protection</rt><rp>)</rp></ruby>机制，如果用户给手机安装旧版 ROM，就会让手机「变砖」，这种情况只能使用 EDL 模式来修复，但这个模式大多数用户都没有使用权限。[^10g875]

[^10g875]: Adam Conway, 《[[Update: Statement released] MIUI 10 Global Beta 8.7.5 adds anti-rollback protection, downgrading may brick your Redmi Note 5 Pro](https://web.archive.org/web/20221006200220/https://www.xda-developers.com/miui-10-global-beta-8-7-5-anti-rollback-downgrade-brick-redmi-note-5-pro/)》, XDA Developers, 2018-07-12. (参照 2023-02-05).

## 禁止大陆／全球 ROM 互刷

2018年9月 之前，大陆购买的国行小米手机都能刷入国际版的 MIUI ROM。

2018年9月12日，MIUI 论坛管理员贴出通知提示：

> [!note]+  [Others] Important Announcement About Flashing Mi Phones Manufactured by China![^3831680]
>
> Dear Mi Fans,
>
> Here's something VERY important before you flash or update the ROM.
>
> 1. Xiaomi Phones manufactured for Chinese market are not able to run MIUI Global ROM.
> 2. Xiaomi Phones manufactured for Global markets are not able to run MIUI China ROM.
>
> We highly recommend you to buy Xiaomi Phones via official or authorized sales channels and double check the system infomation before flashing or updating.
>
> Thank you for understanding.
>
> **MIUI Team**

[^3831680]: DinaDuan, [Important Announcement About Flashing Mi Phones Manufactured by China!](https://web.archive.org/web/20180915103715/http://en.miui.com/thread-3831680-1-1.html), Xiaomi MIUI Official Forum, 2018-09-. (参照 2023-02-04).

大致意思是小米公司最近给 MIUI 的更新里添加了新功能，这种功能能阻止大陆版本以及全球版本的手机互刷 ROM。

如果尝试安装，就会出现 "this MIUI version can’t be installed on this device" 的字样，然后手机就变成砖了。[^mgrfot]

[^mgrfot]: Farrukh Ahmad, [MIUI Global ROM Flashing on These Xiaomi Phones May Brick Your Device](https://web.archive.org/web/20210124163828/https://www.igeekphone.com/miui-global-rom-flashing-on-these-xiaomi-phones-may-brick-your-device/), IGeeKphone China Phone, Tablet PC, VR, RC Drone News, Reviews, 2018-09-29. (参照 2023-02-05).

不过有开发者表示：解锁 bootloader 后，使用 TWRP、fastboot 或者 MiFlash 刷机，选择 "Clean All" 而不是 "clean all and lock"，即可成功互刷。[^115904] 当然，上文提到的 EDL 模式也能在手机变砖后进行恢复。

[^115904]: xiaopeng, 《[小米封杀行货手机刷国际版ROM：强刷变砖](https://web.archive.org/web/20230204161141/https://www.antutu.com/doc/115904.htm)》, 安兔兔, 2018-09-29. (参照 2023-02-05).

## 内置软件黑名单

2020年8月4日，有人发现了小米曾内置了软件黑名单。

> [!quote]+ 小米 10 在 MIUI20.8.3 加入了应用黑名单[^apkbl]
>
> MI 10 MIUI 最新内测版 20.8.3 (Android 11) 的 com.miui.packageinstaller.apk 里内置了一个名为 blacklist.json 的炸弹，若尝试安装该名单内的 apk (包名和 MD5 匹配) 会提示「解析软件包时出现问题」，人为的制造 apk 损坏现象。

[^apkbl]: [小米 10 在 MIUI20.8.3 加入了应用黑名单](https://web.archive.org/web/20210627105718/https://www.v2ex.com/t/695575), V2EX.

当时的黑名单列表如下:[^bllt]

[^bllt]: [Xm9iatpt - Pastebin.com](https://web.archive.org/web/20210627105639/https://pastebin.com/Xm9iatpt)

| App 名称      | 包名                              |
| ------------- | --------------------------------- |
| 蓝光          | com.golden.freegate               |
| Lantern       | org.getlantern.lantern            |
| Lantern       | lantern-installer                 |
| NordVPN       | com.nordvpn.android               |
| XSoft inc     | com.xfx.surfvpn                   |
| Ultrareach    | us.ultrasurf.mobile.ultrasurf     |
| Signal Lab    | com.fast.free.unblock.secure.vpn  |
| Signal Lab    | com.fast.free.unblock.thunder.vpn |
| ExpressVPN    | com.expressvpn.vpn                |
| SuperSoftTech | com.jrzheng.supervpnfree          |
| Greatfire.org | org.greatfire.freebrowser         |

2021年6月，有用户称，更新系统后无法安装上述列表中的 VPN，已安装的也被卸载。[^nytj0k][^nyrwf5]

[^nytj0k]: [小米手机禁止VPN软件安装 : China_irl](https://web.archive.org/web/20210614080104/https://old.reddit.com/r/China_irl/comments/nytj0k/小米手机禁止vpn软件安装/)

[^nyrwf5]: [小米手机大陆MIUI系统开始封锁VPN软件！ : China_irl](https://web.archive.org/web/20210616124155/https://old.reddit.com/r/China_irl/comments/nyrwf5/小米手机大陆miui系统开始封锁vpn软件/)

## 隐私保护白名单

2021年1月，小米手机的 MIUI 被发现针对「[学习强国](/software/Xuexi_Qiangguo.md)」这款 APP 做了白名单处理，具体情况为：隐私保护中的「权限使用统计」不能记录「学习强国」的行为。[^748635]

[^748635]: [MIUI 的权限使用统计把学 Xi 强国屏蔽了？](https://web.archive.org/web/20210326235940/https://v2ex.com/t/748635), V2EX.

2022年4月 左右，有人使用 hook 的方式解密了「权限使用统计」的白名单，发现了以下包名：

> [!quote]- behavior_record_white.txt
>
> +   com.android.thememanager@0
> +   com.miui.barcodescanner@0
> +   com.miui.dmregservice@0
> +   com.wdstechnology.android.kryten@0
> +   com.miui.notes@0
> +   com.miui.weather2@0
> +   com.xiaomi.gamecenter@0
> +   com.miui.fmradio@0
> +   com.android.email@0
> +   com.miui.video@0
> +   com.miui.player@0
> +   com.xiaomi.market@0
> +   com.xiaomi.jr@0
> +   com.xiaomi.vip@0
> +   com.mi.vtalk@0
> +   com.xiaomi.gamecenter.sdk.service@0
> +   com.mipay.wallet@0
> +   com.miui.tsmclient@0
> +   org.simalliance.openmobileapi.service@0
> +   com.xiaomi.channel@0
> +   com.miui.yellowpage@0
> +   com.xiaomi.o2o@0
> +   com.miui.miuibbs@0
> +   com.xiaomi.pass@0
> +   com.xiaomi.mircs@0
> +   com.android.vending@0
> +   com.android.calculator2@0
> +   com.xiaomi.scanner@0
> +   com.milink.service@0
> +   com.miui.sysbase@0
> +   com.miui.calculator@0
> +   com.miui.milivetalk@0
> +   com.miui.smsextra@0
> +   com.xiaomi.oga@0
> +   com.miui.contentextension@0
> +   com.miui.personalassistant@0
> +   com.android.storagemonitor@0
> +   com.xiaomi.gamecenter.pad@0
> +   com.miui.voicetrigger@0
> +   com.xiaomi.vipaccount@0
> +   com.google.android.gms@0
> +   com.miui.greenguard@0
> +   com.mobiletools.systemhelper@0
> +   com.miui.fm@0
> +   com.miui.smarttravel@0
> +   com.miui.cleanmaster@0
> +   com.miui.compass@0
> +   com.mfashiongallery.emag@0
> +   cn.xuexi.android@0
> +   android.permission.cts.appthataccesseslocation@0
> +   com.mi.health@131072
> +   com.iflytek.inputmethod.miui@4611686018427387904
> +   com.baidu.input_mi@4611686018427387904
> +   com.sohu.inputmethod.sogou.xiaomi@4611686018427387904
> +   com.miui.compass@-1
> +   com.miui.smarttravel@-1
> +   com.miui.weather2@-1
> +   com.xiaomi.shop@-1

不过没有给出解密此白名单的方法。

## 相机敏感词

MIUI 从 API Level 26 的 3.0 版本，到目前最新的 API Level 29 的 4.3.004221.0 版本自带的相机，在其 Apk 文件的 `/assets/sensi/` 里有名为 sensi_words.txt 的文件，该文件被 Base64 编码，[^854685]原文是 253 个敏感词，用来过滤自定义水印。[^PMTUe]

[^PMTUe]: ISU-152酱, 《[这一定是小米bug！！！（今日首蚌）](https://archive.ph/PMTUe "https://www.bilibili.com/video/BV1dR4y1n7EM/")》, 哔哩哔哩, 2021-10-09. (参照 2022-06-01).

[^854685]: MiketsuSmasher, 《[小米工程师向 AOSP 提交了一份禁止用户获取 APK 文件的补丁，后被驳回](https://web.archive.org/web/20220530053613/https://www.v2ex.com/t/854685)》, V2EX, 2022-05-23. (参照 2022-06-01).

## 内置敏感词审查系统

2021年9月，立陶宛的<ruby>国家网络安全中心<rp>(</rp><rt>Nacionalinis kibernetinio saugumo centras</rt><rp>)</rp></ruby>发现了小米手机含有敏感词审查系统：

> [!quote]+ Lithuania says throw away Chinese phones due to censorship concerns
>
> Lithuania’s Defense Ministry recommended that consumers avoid buying Chinese mobile phones and advised people to throw away the ones they have now after a government report found the devices had built-in censorship capabilities.
>
> Flagship phones sold in Europe by China’s smartphone giant Xiaomi Corp have a built-in ability to detect and censor terms such as “Free Tibet”, “Long live Taiwan independence” or “democracy movement”, Lithuania’s state-run cybersecurity body said on Tuesday.
>
> ......
>
> The report said the list of terms which could be censored by the Xiaomi phone’s system apps, including the default internet browser, currently includes 449 terms in Chinese and is continuously updated.[^52439]

[^52439]: Andrius Sytas, 《[Lithuania says throw away Chinese phones due to censorship concerns](https://web.archive.org/web/20210922052439/https://www.reuters.com/article/lithuania-china-xiaomi/lithuania-says-throw-away-chinese-phones-due-to-censorship-concerns-idUSL8N2QN50T)》, Reuters, 2021-09-21. 参照: 2022-08-16. [Online].

> [!abstract]+ 相关链接
>
> +   [审查报告 PDF 下载](https://web.archive.org/web/20210922130630/https://www.nksc.lt/doc/en/analysis/2021-08-23_5G-CN-analysis_env3.pdf)
> +   [立陶宛建议消费者不买并扔掉现有中国手机 - 早报](https://web.archive.org/web/20210922051039/https://www.zaobao.com.sg/realtime/china/story20210922-1196099)

## 没有内置国家监控中心app

MIUI 13 版本的宣传的新增系统级全链路反诈，自称与国家反诈骗中心合作。[^114760] 导致网络上出现了 MIUI 13 内置了国家反诈骗中心的传言。

[^114760]: IT之家, 《[小米 MIUI 13 全链路反诈功能与国家反诈中心合作，避免用户损失](https://web.archive.org/web/20220816085636/https://www.sohu.com/a/514045049_114760)》, 2022-01-03. (参照 2022-08-16).

2021年12月28日，新浪微博数码博主「wangzn2016」认为此功能是自己提出的：

> [!quote]+ wangzn2016[^32meu]
>
> 酷安上面都看到了吧，隐私保护和gj反诈app联合合作，这个我国庆期间在路上被警察拉去下载反诈app后突然来的想法，就立马提了上去。
>
> 没想到这么快就搞定了，还成了13的亮点

[^32meu]: wangzn2016, 「[酷安上面都看到了吧，隐私保护和gj反诈app联合合作……](https://archive.is/32meu "https://weibo.com/6548603699/L87kM6xht")」, 新浪微博, 2021-12-28. (参照 2023-02-03). 备注：页面已被删除

2021年12月30日，有用户在 xiaomi.eu 论坛上咨询了 EU 版本是否移除了反诈功能，波兰的工作人员表示全球版手机均没有启用此功能，[^641945] 并没有直接回答这个问题。

[^641945]: ingbrzy, [MIUI 13 - 21.12.29/30 - First MIUI 13](https://web.archive.org/web/20221006120430/https://xiaomi.eu/community/threads/21-12-29-30-first-miui-13.64404/#post-641945), Xiaomi European Community, 2021-12-30. (参照 2023-02-03).

> [!note]+ MIUI 各版本区别[^ko797]
>
> 1.  MIUI CN（大陆版）
> 2.  MIUI Global（全球版）
> 3.  MIUI EU（欧洲版）
>
> 其中 MIUI EU 版并不是小米官方的，而是由小米欧洲经销商认可的民间团队发布。基于MIUI大陆版修改而来，发布时间和机型与大陆版同步。同步MIUI大陆版的稳定版公测和测试版公测。有谷歌核心套件。无小米全家桶。无广告。

[^ko797]: Koizumi, 《[MIUI 各版本区别及下载地址](https://blog.minamigo.moe/archives/797)》, Koizumi’s Blog, 2022-04-23. (参照 2023-02-03).

2022年1月5日，有人发现部分软件无法安装，会显示「[相关法律](/censorship/相关法律.md)法规要求，禁止安装」。[^2298720242] 

[^2298720242]: 知乎用户2jT2Ug, 《[如何评价 MIUI 13 可能内置反诈系统，有什么影响？](https://web.archive.org/web/20220816085614/https://www.zhihu.com/question/509458835/answer/2298720242)》, 知乎, 2022-01-05. (参照 2022-08-16).

2022年1月6日，因为有人质疑 MIUI 内置国家反诈骗中心，所以 MIUI 官方帐号回复道：「MIUI13没有内置国家监控中心app，请勿传谣」。[^6lKCJ]

[^6lKCJ]: 爱睡觉的乐乐, 《[听说miui13内置国家反诈骗中心app，看上去这是我最后一个小米手机了，而且还是永不升级 😂😂](https://archive.ph/6lKCJ "https://weibo.com/1229559082/L9vKRt6No")》, 新浪微博, 2022-01-05. (参照 2022-08-16).

## 自动添加DNS

2022年3月6日，MIUI 被发现以下代码，会根据系统地区自动添加 114 以及「互联网国家工程中心」或谷歌的 DNS。[^0166]:

[^0166]: llccd @gNodeB, 《[小米手机设置不存在的 DNS 仍然可以解析域名](https://twitter.com/gNodeB/status/1500500166549327877)》, Twitter. (参照 2022-03-08).

```java
String dns = System.isInCnRegion() ? "114.114.114.114" : "8.8.8.8";
String dnsv6 = System.isInCnRegion() ? "240c::6666" : "2001:4860:4860::8888";
```

由于该功能没有被公布，所以可能会造成 DNS 泄露，包括在使用 VPN 的时候。以及与其他手机出现网络上的差异。

> [!abstract]+ 相关条目
>
> +   [三星港版手机](/company/Samsung/HK_Phone.md)

## MIUI 14 上传应用列表

2023年2月1日 左右，MinaMichita 发现最新的 MIUI 14 会不断的上传已安装应用列表等信息，小米在他们的代码中将此功能命名为 AntiDefraud，示例如下：[^912395]

[^912395]: ruoyutx, 《[听说国产安卓机全部统一内置了反诈？](https://web.archive.org/web/20230202141303/https://www.v2ex.com/t/912395?p=2#r_12637855)》, V2EX, 2023-02-01. (参照 2023-02-03).

```json
{"timestamp":"xxx","os":"xxx","biz_id":"virus_scan","uuid":"xxx","content":[]}
```

数据会被上传到小米的服务器，而这种行为似乎未经过用户同意。于是 MinaMichita 编写了 xposed 模块 [AntiAntiDefraud][]，来关闭这种功能。

[AntiAntiDefraud]: https://github.com/MinaMichita/AntiAntiDefraud

而这些代码也存在于 MIUI 国际版中，不过尚未有人测试国际版是否也有相同的上传情况。
