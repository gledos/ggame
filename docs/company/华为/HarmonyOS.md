---
title: HarmonyOS
description:
published: true
date: "2024-08-04T22:44:35"
tags:
- operating-system
editor: markdown
dateCreated: "2021-06-04T05:20:27"
---

## 简介

〔待续〕

## 无法安装一些 App

纯净模式默认是开启的，开启该模式后无法安装手机自带的商店之外的软件，不过能够手动关闭。[^11947]

[^11947]: [鸿蒙纯净模式怎么开启，怎么关闭？鸿蒙纯净模式退不出去怎么办？](https://web.archive.org/web/20210604044029/https://www.qqtn.com/article/article_311947_1.html), 腾牛网.

![在阴暗的房间中和孤独的女孩子的物语](/src/在阴暗的房间中和孤独的女孩子的物语.webp)

不过 NGA 有网友称，在关闭纯净模式后，依然无法安装《在阴暗的房间中和孤独的女孩子的物语》。[^2gISZ]

[^2gISZ]: [鸿蒙不能下内种粉色APP吗 NGA玩家社区](https://archive.is/2gISZ "https://bbs.nga.cn/read.php?tid=27040410")

## OPPO 公关离职

有位 OPPO 品牌的公关，在吐槽鸿蒙后，道歉并离职了。[^73397][^Ulbkn]

[^73397]: [吐槽鸿蒙惹争议，OPPO公关道歉，最后离职了](https://web.archive.org/web/20210603002445/https://www.sohu.com/a/469370616_773397)

[^Ulbkn]: [芝士芒胖的微博](https://archive.md/Ulbkn "https://weibo.com/souhuxiaotao")

## 发布会限流

2021年6月2日 的华为发布会，在哔哩哔哩直播出现了限流现象，知乎也在限制相关内容登录热榜。[^cdfer] 原因尚不明确。

[^cdfer]: [如何评价 6 月 2 日凌晨开源的 OpenHarmony 2.0 Canary? - 知乎](https://web.archive.org/web/20210603163144/https://www.zhihu.com/question/462685335/answer/1920115559)

> [!abstract]+ 相关链接
>
> +   [如何评价p站封了鸿蒙发布会【反二次元吧】](https://web.archive.org/web/20210611051022/https://tieba.baidu.com/p/7386621934), 百度贴吧.
> +   [昨晚，B站为什么要封禁华为鸿蒙发布会直播？](https://web.archive.org/web/20210607112204/https://zhuanlan.zhihu.com/p/377544223 "https://archive.is/asoDT"), 知乎.
> +   [如何看待 B 站华为鸿蒙系统发布会直播的前一两分钟被封？](https://archive.is/Tjpz9 "https://www.zhihu.com/question/462807368"), 知乎.

## Linux 内核贡献争议

2021年6月20日，华为自称对 Linux 代码贡献最高，以此暗示华为公示的系统开发能力。但实际被发现只是刷 KPI，
或者对其他平台无意义的，单一硬件的驱动代码。（该争议似乎没有被限制讨论。）

> [!abstract]+ 相关链接
>
> +   [再次确认华为对Linux代码贡献最高，安卓系统套壳EMUI系统？](https://web.archive.org/web/20210622020902/https://new.qq.com/omn/20210417/20210417A0BD9D00.html), 腾讯新闻.
> +   [如何看待2017年linux内核 华为是仅次于英特尔和谷歌的贡献的大机构?](https://web.archive.org/web/20210622032426/https://www.zhihu.com/question/344289069), 知乎.
> +   [如何看待华为安卓开源社区代码贡献度0.4%?](https://web.archive.org/web/20210622031259/https://www.zhihu.com/question/451640869), 知乎.
> +   [LKML: Qu Wenruo: Please don't waste maintainers' time on your KPI grabbing patches (AKA, don't be a KPI jerk)](https://web.archive.org/web/20210621094038/https://lkml.org/lkml/2021/6/18/153)
> +   [华为开发者被批评在内核刷 KPI](https://web.archive.org/web/20210622032457/https://www.solidot.org/story?sid=68077), 奇客Solidot.
> +   [华为 Linux 内核贡献者被质疑刷 KPI，邮件已排到热榜第一](https://web.archive.org/web/20210621195555/https://www.ithome.com/0/558/456.htm), IT之家.
> +   [原来 Linux 内核贡献第二是这么来的](https://web.archive.org/web/20210621101548/https://www.v2ex.com/t/784789), V2EX.
> +   [华为 Linux 内核贡献者被质疑刷 KPI，真实情况是怎样的？有哪些信息值得关注？](https://web.archive.org/web/20210622021358/https://www.zhihu.com/question/466111598), 知乎.

## WebView 屏蔽网站

2024年7月24日，HarmonyOS NEXT 的 WebView（系统浏览器组件），被发现内置有域名上报功能。虽然方案类似
[Safe Browsing API](/serviceprovider/Safe_Browsing.md)，但原始域名会被直接发送，没有经过哈希处理。[^76560][^51020]
这意味着服务器能精确记录用户的域名访问记录，调用 WebView 的 App 都会中招。
而华为对自己的 ArkWeb（方舟 Web）框架推崇较多，相信调用 WebView 的 App 不会少。[^43904]

[^51020]: weixiansen574, 《[harmonyos next ， webview 内置网址检测（网址拦截）](https://shenlongbbs.com/thread-51020.htm)》, 神龙论坛／v2ex精选, 2024-07-24. (参照 2024-08-04).

[^76560]: 李老师不是你老师, 「[网友投稿 鸿蒙harmonyos next系统，webview内置网站屏蔽……](https://web.archive.org/web/20240804142942/https://nitter.privacydev.net/whyyoutouzhele/status/1816770434508976560)」, X (formerly Twitter), 2024-07-26. (参照 2024-08-04).

[^43904]: 《[ArkWeb简介-ArkWeb（方舟Web）](https://web.archive.org/web/20240804143904/https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V5/web-component-overview-V5)》, 华为开发者联盟／应用框架, 2024-08-03. (参照 2024-08-04).

常用的 youtube.com 也会被上传到服务器，然后阻止访问，提示：「已停止访问此网页」「根据法律法规要求以及投诉举报，
此网页包含违法或违规内容，已停止访问。」[^76560][^51020]

具体校验的 API 为：`https://browsercfg-drcn.cloud.dbankcloud.cn/security/v1/securityurls`，本地暂时没有黑名单，
所以只要阻断该域名就能正常访问 YouTube 等网站了。[^51020]
