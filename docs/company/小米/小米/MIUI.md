---
title: MIUI
description: 小米公司的手机系统
published: true
date: 2021-06-27T18:56:29.638Z
tags:
    - Operating-System
editor: markdown
dateCreated: 2021-06-27T18:56:29.638Z
---

## 内置软件黑名单

2020年8月，小米就曾内置了软件黑名单。

> MI 10 MIUI 最新内测版 20.8.3 (Android 11) 的 com.miui.packageinstaller.apk 里内置了一个名为 blacklist.json 的炸弹，若尝试安装该名单内的 apk (包名和 MD5 匹配) 会提示“解析软件包时出现问题”，人为的制造 apk 损坏现象。[^apkbl]

[^apkbl]: [小米 10 在 MIUI20.8.3 加入了应用黑名单 - V2EX](https://web.archive.org/web/20210627105718/https://www.v2ex.com/t/695575)

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

2021年6月，有用户称，更新系统后无法安装上述列表中的 VPN，已安装的也被卸载。[^blttt]

[^blttt]: [小米手机禁止VPN软件安装 : China_irl](https://web.archive.org/web/20210614080104/https://old.reddit.com/r/China_irl/comments/nytj0k/小米手机禁止vpn软件安装/)

    [小米手机大陆MIUI系统开始封锁VPN软件！ : China_irl](https://web.archive.org/web/20210616124155/https://old.reddit.com/r/China_irl/comments/nyrwf5/小米手机大陆miui系统开始封锁vpn软件/)

## 隐私保护白名单

2021年1月，小米手机的 MIUI 被发现针对「[学习强国](/software/Xuexi_Qiangguo.md)」这款 APP 做了白名单处理，具体为：隐私保护中的「权限使用统计」不能记录「学习强国」的行为。[^748635]

[^748635]: [MIUI 的权限使用统计把学 Xi 强国屏蔽了？ - V2EX](https://web.archive.org/web/20210326235940/https://v2ex.com/t/748635)

## 内置敏感词审查系统

> Lithuania’s Defense Ministry recommended that consumers avoid buying Chinese mobile phones and advised people to throw away the ones they have now after a government report found the devices had built-in censorship capabilities.
>
> Flagship phones sold in Europe by China’s smartphone giant Xiaomi Corp have a built-in ability to detect and censor terms such as “Free Tibet”, “Long live Taiwan independence” or “democracy movement”, Lithuania’s state-run cybersecurity body said on Tuesday.
>
> ......
>
> The report said the list of terms which could be censored by the Xiaomi phone’s system apps, including the default internet browser, currently includes 449 terms in Chinese and is continuously updated.[^52439]

[^52439]: [Lithuania says throw away Chinese phones due to censorship concerns - Reuters](https://web.archive.org/web/20210922052439/https://www.reuters.com/article/lithuania-china-xiaomi/lithuania-says-throw-away-chinese-phones-due-to-censorship-concerns-idUSL8N2QN50T)

+ 相关链接
    + [审查报告 PDF 下载](https://web.archive.org/web/20210922130630/https://www.nksc.lt/doc/en/analysis/2021-08-23_5G-CN-analysis_env3.pdf)
    + [立陶宛建议消费者不买并扔掉现有中国手机 - 早报](https://web.archive.org/web/20210922051039/https://www.zaobao.com.sg/realtime/china/story20210922-1196099)

## 自动添加 DNS

2022年3月6日，MIUI 被发现以下代码，会根据系统地区自动添加 114 以及「互联网国家工程中心」或谷歌的 DNS。[^0166]:

[^0166]: llccd @gNodeB, 《[小米手机设置不存在的 DNS 仍然可以解析域名](https://twitter.com/gNodeB/status/1500500166549327877)》, Twitter. (参照 2022-03-08).

```JAVA
String dns = System.isInCnRegion() ? "114.114.114.114" : "8.8.8.8";
String dnsv6 = System.isInCnRegion() ? "240c::6666" : "2001:4860:4860::8888";
```

由于该功能没有被公布，所以可能会造成 DNS 泄露，包括在使用 VPN 的时候。以及与其他手机出现网络上的差异。

+ 相关条目
    + [三星港版手机](/company/Samsung/HK_Phone.md)
