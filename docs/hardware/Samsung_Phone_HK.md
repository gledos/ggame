---
title: 三星港版手机
description: 
published: true
date: 2021-01-16T02:45:57.805Z
tags: 
editor: markdown
dateCreated: 2021-01-15T14:21:58.934Z
---

## 三星港版手机的DNS及其大陆软件域名请求问题

一些在香港使用港版三星的用户发现手机会将大陆知名的 114DNS 设置为手机备用 DNS，并且手机每分钟会请求 qq.com 之类的域名但手机没有腾讯的软件。

随着时间的过去，第一个问题被三星官方用更新的方法修复了，但没有承认第二个问题，也没有修改。

第二个问题是一种检测 Wi-Fi 可用性是否连通的方法，本来国际惯例会使用 Google 的验证服务器。

### 相关链接

+ [SAMSUNG 港行 會連大陸DNS? 114.114.114.114 第1页 - LIHKG](https://web.archive.org/web/20201009134340if_/https://lihkg.com/thread/2228654/page/1)
+ [SAMSUNG 港行 會連大陸DNS? 114.114.114.114 第31页- LIHKG](https://web.archive.org/web/20210115134244if_/https://lihkg.com/thread/2228654/page/31)
+ [+QQ解決法 ***港行上網記錄送 _ !? 詳細分析by headuck *報已上* - Android Phone - 電腦領域 HKEPC Hardware - 全港 No.1 PC討論區](https://web.archive.org/web/20201031161642/https://www.hkepc.com/forum/viewthread.php?fid=168&tid=2586830)
+ [三星手机让香港澳门用户使用中国大陆的 DNS 服务 - 奇客Solidot](https://web.archive.org/web/20201101073847/https://www.solidot.org/story?sid=65835)
+ [Samsung Galaxy手機爆安全漏洞 Wifi自動連接中資伺服器 公司未否認：不儲存個人資訊 - 蘋果日報](https://web.archive.org/web/20201030112806/https://hk.appledaily.com/finance/20201010/XK6CO4JETFGYLCUHUSFRO77BF4/)
+ [網傳 Samsung 手機「資料送中」？上網行蹤直上 114DNS - ePrice.HK](https://web.archive.org/web/20201021015807/https://www.eprice.com.hk/mobile/talk/4523/216867/1/)
+ [危險！網指 Samsung 港行電話愛用中國 DNS 連綫 - ezone.hk - 網絡生活 - 網絡熱話 - D201008](https://web.archive.org/web/20201031172234/https://ezone.ulifestyle.com.hk/article/2772252/危險！網指 Samsung 港行電話愛用中國 DNS 連綫)

#### Headuck 的研究

+ `2020-10-12` [How Samsung phones force Mainland China DNS service upon Hong Kong WiFi users (Part 1) – HeaDuck研究所](https://web.archive.org/web/20201101111926/https://blog.headuck.com/2020/10/12/samsung-phones-force-mainland-china-dns-service-upon-hong-kong-wifi-users/)
+ `2020-10-15` [How Samsung phones force Mainland China DNS service upon Hong Kong WiFi users (Part 2) – HeaDuck研究所](https://web.archive.org/web/20201129011559/http://blog.headuck.com/2020/10/15/samsung-phones-force-mainland-china-dns-service-upon-hong-kong-wifi-users-2/)
+ `2020-10-17` [三星如何回應在港版手機加入南京信風 DNS 伺服器事件 – HeaDuck研究所](https://web.archive.org/web/20201129020640/http://blog.headuck.com/2020/10/17/how-samsung-addressed-the-114-dns-issue-in-october-2020-firmware-update/)
+ `2020-10-23` [How Samsung devices connect WiFi users in Hong Kong and possibly Worldwide to Tencent, Baidu, Taobao and Hao123 – HeaDuck研究所](https://web.archive.org/web/20201129021948/http://blog.headuck.com/2020/10/23/how-samsung-devices-connect-qq-baidu-taobao-hao123/)
+ `2020-10-23` [三星新版 firmware 已解決將 HK 視為 isChineseIso() 的問題 – HeaDuck研究所](https://web.archive.org/web/20201129013557/http://blog.headuck.com/2020/10/23/三星新版-firmware-已解決將-hk-視為-ischineseiso-的問題/)
