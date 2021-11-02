---
title: V2EX
description: 
published: true
date: 2021-04-23T10:45:12.442Z
tags: 
- 论坛
- 腾讯
- GFW
editor: markdown
dateCreated: 2021-03-18T10:43:01.642Z
---

V2EX 是大陆一个信息技术交流论坛，不过要在大环境下存活，必定需要做出许多的限制。

讨论隐私问题容易删帖或者转不公开讨论，涉及中华人民共和国大规模监控问题容易删帖。

## GFW 封锁

2015年2月27日，使用 http 连接 V2EX会被 GFW 阻断，只能通过 https 进行连接。

站长 Livid 在之后发布了《关于 20150227 这事的想法》这篇帖子对这件事进行了一些描述:[^0301]

> 在听到这件事情的时候，我并没有觉得特别惊讶，因为类似的事情，在 2007 年 9 月时，其实已经经历了一次。
>
> 两次我都觉得挺莫名其妙的。
>
> V2EX 二次上线之后，我确实在内容方面一直在尝试做一些平衡，比如 VPN 方面的内容很早就不会上首页，shadowsocks 相关的内容也在最近进了隐藏节点。我内心当然还是希望能够平静过一天算是一天，这些翻墙方面的内容，在我们整个流量中的比率其实不到 1%，我当然不想因为这些 1% 的内容而遇到今天这样的事情。
>
> 这是一种自我审查吗？是，当然是。为此我也被不少人骂过。这些事情我自己也一直觉得挺恶心的。
>
> 但是，该来的这一天还是来了。
>
> Q: 为什么 V2EX 一直没有备案？
>
> A: 因为我嫌麻烦。而且我真心觉得备案这个制度挺恶心的。
>
> 所以今天这事发生了之后，我也不想扯太多没用的，就简单地说一下自己的态度吧：
>
> + 对于 V2EX 来说，最重要的是这里的技术讨论里的干货
> + 这次域名成为了关键字，我不会做任何努力去更换域名或者添加其他手段，就这样吧
> + 我很希望能够有和审查者沟通的机会

[^0301]: [关于 20150227 这事的想法 - V2EX](https://web.archive.org/web/20150301094429/http://www.v2ex.com/t/173280)

2015年4月末，V2EX 取得 ICP 备案，备案号为「沪ICP备15015613号-1」，[^V2EX_vn]服务器也移至大陆，[^V2EX_mml]http 连接才恢复正常。

[^V2EX_mml]: [V2EX › 关于 Google 登录的支持计划](https://web.archive.org/web/20160513112733/http://v2ex.com/help/google.html)

[^V2EX_vn]: [V2EX获得国内域名备案 - Solidot](https://web.archive.org/web/20160304075402/http://www.solidot.org/story?sid=43790)

## V2EX 未经允许公布用户邮箱和手机号

这件事与审查的关系不大，属于法律问题。

## 手机号验证

大概是因为将服务器迁移到大陆的原因，发帖用户必须进行手机号码的认证。

2019年7月6日，V 站目前唯一的开发者 @Livid 将网站的服务器与 CDN 迁往了美国，并在评论中称「代码中使用到的任何和中国大陆的 Web 服务提供商有关的 API，接下来会逐步去掉依赖关系。」[^V2EX_rcmls]以及「注册方式接下来肯定会改」「还需要一些时间(计划取消手机验证)」[^V2EX_20190706]。

[^V2EX_rcmls]: [接下来会逐步去掉依赖关系 - 关于最近基础架构方面的一些变动 - V2EX](https://web.archive.org/web/20190713095113/https://www.v2ex.com/t/580480?p=1)

[^V2EX_20190706]: [20190706 - 关于最近基础架构方面的一些变动 - V2EX](https://web.archive.org/web/20210130130836/https://www.v2ex.com/t/580480?p=3)

不过到了2021年1月，取消手机验证的这个计划还是没有实施。

## 自建 DNS 被喝茶

痕迹很少，有未经确认的消息认为 V2EX 的站长将发帖人的 IP 等数据上交给警方，造成有人被喝茶警告。

<!--
详情请查看 [serviceprovider/Self-built_DNS](../serviceprovider/Self-built_DNS.md)
-->

## 「危险网址」

2021年1月19日，由 Tencent 提供的安全监测服务的浏览器，[[^V2EX_mlb]比如国行 iOS 系统的 safari 浏览器默认设置，微信内置浏览器与腾讯浏览器等浏览器，将讨论 QQ 读取浏览器记录的讨论添加到了黑名单，提示为危险网站或者被多人举报。[^V2EX_qqq][^V2EX_wx]

[[^V2EX_mlb]: [v 站的网址，这两天是不是被国产浏览器全部加黑名单了？ - V2EX](https://web.archive.org/web/20210130124559/https://www.v2ex.com/t/749828)

[^V2EX_qqq]: [QQ 正在尝试读取你的浏览记录 - V2EX](https://web.archive.org/web/20210127081725/https://www.v2ex.com/t/745030)

[^V2EX_wx]: [V2EX 危险网站，千万别访问](https://web.archive.org/web/20210131032045/https://tva1.sinaimg.cn/large/008eGmZEgy1gmsvszl9z2j30jq06474j.jpg)

2021年1月30日左右，上述的浏览器把 V2EX 全站添加到了黑名单，[^V2EX_pcb]楼主的截图与 MIUI 自带的浏览器警告一样，[^V2EX_miui]大概 MIUI 也使用了 Tencent 提供的安全监测服务。现在「安全联盟」已经将 V2EX 标记为危险与博彩网站了。[^V2EX_anquan]

[^V2EX_anquan]: [搜索 V2EX 安全联盟 - 大数据企业信用平台。](https://web.archive.org/web/20210131031012/https://www.anquan.org/search?keyword=V2EX.com)

[^V2EX_pcb]: [您访问的网址存在危险 V2EX](https://web.archive.org/web/20210130175732/https://i.loli.net/2021/01/30/SvCalXqObsEkNhF.jpg "您访问的网址存在危险！截图")

[^V2EX_miui]: [您访问的网址存在危险！ MIUI browser](https://web.archive.org/web/20210115104757/https://nav.browser.miui.com/safe-browsing/ "您访问的网址存在危险！HTML")

[安全联盟-企业查询 网站查询 曝光查询 企业工商查询 企业信用查询 企业失信记录 大数据企业信用平台。](https://web.archive.org/web/20210131031012/https://www.anquan.org/search?keyword=V2EX.com)

原因可能是最近 V2EX 论坛里讨论过「QQ 扫描并上传用户的浏览器历史」，[^V2EX_qqu][^V2EX_qqg]腾讯采取了报复措施。直到2021年的1月31日，V2EX 运营者也没有将这个帖子进行限制处理。[^V2EX_qqq]

[^V2EX_qqu]: [网友报告QQ扫描并上传用户的浏览器历史 - Tencent 腾讯 QQ / TIM - cnBeta.COM](https://web.archive.org/web/20210118033635/https://www.cnbeta.com/articles/tech/1079311.htm)

[^V2EX_qqg]: [【转载】关于QQ读取Chrome历史记录的澄清 - 谈天说地 - 其乐 Keylol - 驱动正版游戏的引擎！](https://archive.is/qHCUT "https://keylol.com/t677164-1-1")

目前这个帖子已经被运营者转为内部讨论了，需要注册满90天以及手机号码认证才能才能阅读。[^V2EX_mk]

[^V2EX_mk]: [v 站看点东西，有门槛是好，可真的节约时间吗 - V2EX](https://web.archive.org/web/20210131025816/https://v2ex.com/t/618036)

<!--
+ [Screenshot_2021-01-30-13-52-33-942_com.android.... - SM.MS - Simple Free Image Hosting](https://web.archive.org/web/20210130124451/https://sm.ms/image/SvCalXqObsEkNhF)
+ 
-->

相关链接:

+ [账号在V2EX被禁了，真是无语了！ 科技爱好者博客 -专注于树莓派（Raspberry Pi）](https://web.archive.org/web/20201018132800/https://www.lxx1.com/922)
+ [吐槽V2ex 站长 管理员装逼的下场 什么情况-美国VPS综合讨论-全球主机交流论坛 - Powered by Discuz!](https://www.hostloc.com/thread-660571-1-1.html)
+ [V2EX 怎样影响了你？ - 知乎](https://web.archive.org/web/20201018101852/https://www.zhihu.com/question/20538971)
+ [如何评价v2ex的站长将用户信息上交给江苏警方致使用户被查水表？ - 新·品葱](https://web.archive.org/web/20200812153619/https://pincong.rocks/question/5062)
+ [v2ex的站长也是个心眼小的人 - 吐槽 - 2049BBS](https://archive.is/2614A "https://2049bbs.xyz/t/1313")
+ [V2EX 站长被指非法公开用户隐私信息 - 分享发现 - 2049BBS](https://web.archive.org/web/20201018135611/https://2049bbs.github.io/t/389)
+ [关于 2018 年 3 月 31 日遇到的假毕业证书垃圾信息刷屏 - V2EX](https://web.archive.org/web/20180401023334/https://www.v2ex.com/t/443087?p=1 "[来自百度取证的证据分享](https://web.archive.org/web/20180404121719/http://quzheng.baidu.com/s/z2umua)")
+ [这是专门针对 V2 的机器人出现了？ - V2EX](https://web.archive.org/web/20180331123610/https://www.v2ex.com/t/443077)
+ **评论已移除** [Solidot V2EX 站长被指非法公开用户隐私信息](https://web.archive.org/web/20180406231122/https://www.solidot.org/story?sid=56013)
+ [问一下有那些和 V2EX 相似用户群的论坛？ - V2EX](https://web.archive.org/web/20180401024739/https://www.v2ex.com/t/443231#reply2 "[来自百度取证的证据分享](https://web.archive.org/web/20180504141831/http://quzheng.baidu.com/s/qia2Er)")
+ [V2EX 未经允许公布用户邮箱和手机号？ - V2EX](https://web.archive.org/web/20201018140229/https://v2ex.com/t/443559)
+ [V2EX站长是否有权公开网站成员（广告发布者）的隐私信息？ - 知乎](https://web.archive.org/web/20201018140417/https://www.zhihu.com/question/270668541)
+ [[IT新闻] V2EX 站长被指非法公开用户隐私信息 NGA玩家社区](https://archive.is/xb074 "https://bbs.nga.cn/read.php?tid=13779948")
+ **需登录** [以后上网，不想再谈什么隐私！ - V2EX](https://archive.is/aSeFs "https://www.v2ex.com/t/712403")

<!--
+ [来自百度取证的证据分享](https://web.archive.org/web/20180504141831/http://quzheng.baidu.com/s/qia2Er)
-->

## 2021年4月 V2EX 被封锁

> Since Apr 11, 2021, V2EX's domain is experiencing DNS poisoning + SNI filter on the networks of China broadband providers. 从 2021 年 4 月 11 开始，V2EX 的域名在中国大陆运营商的网络上开始遇到 DNS 污染及 SNI 阻断。[^21v2_lot]
>
> @Livid

[^21v2_lot]: https://web.archive.org/web/20210423063440/https://twitter.com/Livid/status/1381499078593236998

### 2021年2月初小面积无法连接

+ [v2ex.com是不是彻底被墙了-美国VPS综合讨论 - 全球主机交流论坛](https://web.archive.org/web/20210423052535/https://hostloc.com/thread-809845-1-1.html)
+ [v2ex.com 被墙了？-美国VPS综合讨论 - 全球主机交流论坛](https://web.archive.org/web/20210423052536/https://hostloc.com/thread-803655-1-1.html)

### 似乎普通讨论的手机限制已解除

本来我想测试以下未认证手机情况，回复跳转到 <https://www.v2ex.com/restricted> 的效果，结果似乎现在我的账号未通过手机认证就能发送回复了。

不过「水深火热」节点我依然无法进入。

+ [异步中 await 和 then 的区别，哪个更好 - V2EX](https://web.archive.org/web/20210423092112/https://www.v2ex.com/t/772610#reply38)
+ [异步中 await 和 then 的区别，哪个更好 - V2EX](https://archive.is/yC5BZ)
+ [V2EX › gledos](https://web.archive.org/web/20210423092142/https://www.v2ex.com/member/gledos)
+ [V2EX › gledos](https://archive.is/zFKCG)

### 相关讨论

大多数在 V2EX 的被封锁讨论都已经转入了隐藏节点「水深火热」或者直接标记为需要登录查看。

并且 V2EX 也在被封锁的前后，似乎临时增加了一些门槛。部分帖子查看要求增加到1000天注册用户。[^21v2_769]

[^21v2_769]: 需登录 [为啥这个帖子会重定向到 v 站首页？ - V2EX](https://v2ex.com/t/769231)

+ [杭州无法正常访问吗，感觉有一个月了 - V2EX](https://web.archive.org/web/20210423062103/https://www.v2ex.com/t/771007)
+ 已隐藏 [V 站已经彻底被墙了是么? - V2EX](https://archive.is/bJlto "https://www.v2ex.com/t/770920")
+ 已隐藏 [V2 是不是被墙了？ - V2EX](https://archive.is/i1Yyf "https://www.v2ex.com/t/771224")
+ [v2ex 挂了 - 链滴](https://web.archive.org/web/20210423054102/https://ld246.com/article/1618193159520)
+ [V2EX 应该是被墙了 - 链滴](https://web.archive.org/web/20210423054106/https://ld246.com/article/1618499960860)
+ [V站被墙了吗？ - CNode技术社区](https://web.archive.org/web/20210423054201/https://cnodejs.org/topic/6073fa5d4d20cb0fee68b77c)
+ [V2EX 再次被屏蔽 - 奇客Solidot](https://web.archive.org/web/20210423053010/https://www.solidot.org/story?sid=67471)
+ [GeXiao on Twitter: "扫了眼这次 V2EX 彻底被墙的讨论，没亲身下场干过的人哪怕是互联网从业者......"](https://archive.is/6jkAo "https://twitter.com/gxgexiao/status/1381870967811567619")

### 直接证据

+ [2021-04-23 www.v2ex.com GET测试结果 网站速度测试 17CE](https://archive.is/TYkOv "http://www.17ce.com/site/http/20210423_db4ddc00a3f511eb947f5743479ea7f2:1.html")
+ [月光博客 on Twitter: "国内知名开发社区v2ex域名解析疑似被DNS污染，目前已经无法从国内访问，国内解析其域名会被解析到错误的IP地址。… "](https://web.archive.org/web/20210423080429/https://twitter.com/williamlong/status/1381868729051451397)
+ [知名开发社区：v2ex域名DNS被污染-资讯-宋九九博客](https://web.archive.org/web/20210423055843/https://songjiujiu.com/post/2911)
+ [知名社交网站v2ex被DNS污染了 - 主机吧](https://web.archive.org/web/20210423091927/https://www.zhujib.com/v2ex.html)
+ 百度搜索 v2ex.com 无任何结果 [v2ex.com_百度搜索](https://archive.is/yWRjU "https://www.baidu.com/#ie=UTF-8&wd=v2ex.com")

