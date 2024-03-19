---
title: V2EX
description:
published: true
date: "2024-03-19T23:59:32"
tags:
- 论坛
- 腾讯
- gfw
- 秘密屏蔽
editor: markdown
dateCreated: "2021-03-18T10:43:01"
---

## 简介

V2EX 是信息技术交流论坛。

<!--
不过要在大环境下存活，必定需要做出许多的限制。
讨论隐私问题容易删帖或者转不公开讨论，涉及中华人民共和国大规模监控问题容易删帖。
-->

## 外源性审查相关

### 2015 年首次封锁（20150227）

2015年2月27日，使用 http 连接 V2EX 会被 GFW 阻断，只能通过 https 进行连接。[^2169]

[^2169]: williamlong, 《[技术社区V2EX被封](https://web.archive.org/web/20210726210728/https://www.williamlong.info/weibo/archives/2169.html)》, 月光微博客, 2015-02-28. (参照 2022-06-30).

原理是 GFW 审查了请求头的 Host 字段「Host: v2ex.com」，当时深度包检测还不流行，
所以只要手动将 V2EX 域名添加到浏览器的 HSTS 列表中，就能默认以 https 访问 V2EX 了。[^73816]

[^73816]: ptyfork, 《[v2ex 正式被土啬了？](https://web.archive.org/web/20160819195528/http://v2ex.com/t/173816)》, V2EX, 2015-03-01. (参照 2024-03-19).

站长 Livid 稍后发文：

> [!quote]+ 关于 20150227 这事的想法[^73280]
>
> 在听到这件事情的时候，我并没有觉得特别惊讶，因为类似的事情，在 2007 年 9 月时，其实已经经历了一次。
>
> 两次我都觉得挺莫名其妙的。
>
> V2EX 二次上线之后，我确实在内容方面一直在尝试做一些平衡，比如 VPN 方面的内容很早就不会上首页，
> shadowsocks 相关的内容也在最近进了隐藏节点。我内心当然还是希望能够平静过一天算是一天，这些翻墙方面的内容，
> 在我们整个流量中的比率其实不到 1%，我当然不想因为这些 1% 的内容而遇到今天这样的事情。
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
> +   对于 V2EX 来说，最重要的是这里的技术讨论里的干货
> +   这次域名成为了关键字，我不会做任何努力去更换域名或者添加其他手段，就这样吧
> +   我很希望能够有和审查者沟通的机会

[^73280]: Livid, 《[关于 20150227 这事的想法](https://web.archive.org/web/20150301094429/http://www.v2ex.com/t/173280)》, V2EX, 2015-02-27. (参照 2024-03-19).

2015年4月，V2EX 取得 ICP 备案，备案号为「沪ICP备15015613号-1」，[^43790]
2015年4月20日 服务器也移至大陆后，[^v2lg][^84838] http 连接才恢复正常。

[^43790]: 中国互联网部门, 《[V2EX获得国内域名备案](https://web.archive.org/web/20160304075402/http://www.solidot.org/story?sid=43790)》, Solidot, 2015-04-22. (参照 2024-03-19).

[^v2lg]: 《[关于 Google 登录的支持计划](https://web.archive.org/web/20160513112733/http://v2ex.com/help/google.html)》, V2EX, 2015-04-18. (参照 2024-03-19).

[^84838]: Livid, 《[维护通知 - 中国时间 2015 年 4 月 20 日 06:00 AM - 07:00 AM / 太平洋时间 2015 年 4 月 19 日 03:00 PM - 04:00 PM](https://web.archive.org/web/20150422010616/http://www.v2ex.com/t/184838)》, V2EX, 2015-04-19. (参照 2024-03-19).

但是 V2EX 并没有在申请 ICP 备案期间下线网站，通常首次备案需要关站。可能当时境内已经无法打开，相当于下线。[^43862]

[^43862]: mitx, 《[如何不关站备案呢？](https://web.archive.org/web/20230519131823/https://www.v2ex.com/t/843862)》, V2EX, 2022-03-30. (参照 2024-03-19).

### 被当作危险网址

<!-- 演示截图
[Screenshot_2021-01-30-13-52-33-942_com.android.... - SM.MS - Simple Free Image Hosting](https://web.archive.org/web/20210130124451/https://sm.ms/image/SvCalXqObsEkNhF)
-->

2021年1月19日，由 Tencent 提供的安全监测服务的浏览器，[^V2EX_mlb]
比如国行 iOS 系统的 safari 浏览器（默认设置），微信内置浏览器与腾讯浏览器等，
将「QQ 读取浏览器记录」相关讨论帖子添加到了黑名单，提示为危险网站或者被多人举报。[^V2EX_qqq][^V2EX_wx]

[^V2EX_mlb]: [v 站的网址，这两天是不是被国产浏览器全部加黑名单了？ - V2EX](https://web.archive.org/web/20210130124559/https://www.v2ex.com/t/749828)

[^V2EX_qqq]: [QQ 正在尝试读取你的浏览记录 - V2EX](https://web.archive.org/web/20210127081725/https://www.v2ex.com/t/745030)

[^V2EX_wx]: [V2EX 危险网站，千万别访问](https://web.archive.org/web/20210131032045/https://tva1.sinaimg.cn/large/008eGmZEgy1gmsvszl9z2j30jq06474j.jpg)

2021年1月30日 左右，上述的浏览器把 V2EX 全站添加到了黑名单，[^V2EX_pcb]
楼主的截图与 MIUI 自带的浏览器警告一样，[^V2EX_miui] 大概 MIUI 也使用了 Tencent 提供的安全监测服务。
现在「安全联盟」已经将 V2EX 标记为危险与博彩网站了。[^V2EX_anquan]

[^V2EX_pcb]: [您访问的网址存在危险 V2EX](https://web.archive.org/web/20210130175732/https://i.loli.net/2021/01/30/SvCalXqObsEkNhF.jpg "您访问的网址存在危险！截图")

[^V2EX_miui]: [您访问的网址存在危险！ MIUI browser](https://web.archive.org/web/20210115104757/https://nav.browser.miui.com/safe-browsing/ "您访问的网址存在危险！HTML")

[^V2EX_anquan]: [搜索 V2EX](https://web.archive.org/web/20210131031012/https://www.anquan.org/search?keyword=V2EX.com), 安全联盟.

<!--
[安全联盟-企业查询 网站查询 曝光查询 企业工商查询 企业信用查询 企业失信记录 大数据企业信用平台。](https://web.archive.org/web/20210131031012/https://www.anquan.org/search?keyword=V2EX.com)
-->

原因可能是最近 V2EX 论坛里讨论过「QQ 扫描并上传用户的浏览器历史」，[^V2EX_qqu][^V2EX_qqg]
腾讯采取了报复措施。直到 2021年1月31日，V2EX 运营者也没有将这个帖子进行限制处理。[^V2EX_qqq]

[^V2EX_qqu]: [网友报告QQ扫描并上传用户的浏览器历史](https://web.archive.org/web/20210118033635/https://www.cnbeta.com/articles/tech/1079311.htm), cnBeta.

[^V2EX_qqg]: [【转载】关于QQ读取Chrome历史记录的澄清](https://archive.is/qHCUT "https://keylol.com/t677164-1-1"), 其乐 Keylol.

之后这个帖子已经被运营者转为内部讨论了，需要注册满90天以及手机号码认证才能才能阅读。[^V2EX_mk]

[^V2EX_mk]: [v 站看点东西，有门槛是好，可真的节约时间吗 - V2EX](https://web.archive.org/web/20210131025816/https://v2ex.com/t/618036)

### 2021年2月 封锁

〔待续〕小面积无法连接。

+   [v2ex.com是不是彻底被墙了](https://web.archive.org/web/20210423052535/https://hostloc.com/thread-809845-1-1.html), 全球主机交流论坛.
+   [v2ex.com 被墙了？](https://web.archive.org/web/20210423052536/https://hostloc.com/thread-803655-1-1.html), 全球主机交流论坛.

### 2021年4月 封锁

> [!quote]+ 21v2_lot 的 twitter[^21v2_lot]
>
> Since Apr 11, 2021, V2EX's domain is experiencing DNS poisoning + SNI filter on the networks of China broadband
> providers. 从 2021 年 4 月 11 开始，V2EX 的域名在中国大陆运营商的网络上开始遇到 DNS 污染及 SNI 阻断。
>
> @Livid

[^21v2_lot]: <https://web.archive.org/web/20210423063440/https://twitter.com/Livid/status/1381499078593236998>

> [!abstract]+ 被封锁之后的网络测试
>
> +   [www.v2ex.com GET测试结果 网站速度测试](https://archive.is/TYkOv "http://www.17ce.com/site/http/20210423_db4ddc00a3f511eb947f5743479ea7f2:1.html"), 17CE, 2021-04-23.
> +   月光博客, 「[国内知名开发社区v2ex域名解析疑似被DNS污染，目前已经无法从国内访问，国内解析其域名会被解析到错误的IP地址。…](https://web.archive.org/web/20210423080429/https://twitter.com/williamlong/status/1381868729051451397)」, Twitter.
> +   《[知名开发社区：v2ex域名DNS被污染](https://web.archive.org/web/20210423055843/https://songjiujiu.com/post/2911)》, 宋九九博客.
> +   《[知名社交网站v2ex被DNS污染了](https://web.archive.org/web/20210423091927/https://www.zhujib.com/v2ex.html)》, 主机吧.
> +   [v2ex.com](https://archive.is/yWRjU "https://www.baidu.com/#ie=UTF-8&wd=v2ex.com"), 百度搜索. 备注：百度搜索 v2ex.com 无任何结果

### 被 360 重定向

2023年9月21日，360 安全卫士似乎开始影响 V2EX 的解析，在运行 360 安全卫士时，
V2EX 链接会被重定向到 `info.warning.360.cn/warn/?…` 这样的链接，关闭 360 安全卫士后就能正常打开 V2EX。[^NGdWM]

[^NGdWM]: efcndi, 《[360 安全卫士已经开始封锁 V 站了](http://archive.today/2023.09.21-022336/https://www.v2ex.com/t/975771)》, V2EX, 2023-09-21. (参照 2023-09-21).

## 审查相关

### 封禁 GreatFire

2015年2月18日 左右，GreatFire 在 V2EX 上发布了最后一条回复，之后近两个月都不再发言。[^gfvmp]
vzch（KOL）提到 GreatFire 可能被气走后，Livid 澄清了具体情况，是自己屏蔽了 GreatFire 的帐号，
不过 Livid 没有透露屏蔽原因。[^73289][^29121]

[^gfvmp]: [GreatFire](https://web.archive.org/web/20150412040726/http://www.v2ex.com/member/GreatFire), V2EX, 2015-04-12. (参照 2024-03-19).

[^73289]: est, 《[趁热打铁：百万站长联合起来，反制 GFW](https://web.archive.org/web/20150606151312/http://www.v2ex.com/t/173289)》, V2EX, 2015-02-27. (参照 2024-03-19).

[^29121]: GreatFire.org, 「[@Livid 在V2EX登陆GreatFire账号直接空白，是不是封号了？](https://web.archive.org/web/20220114214121/https://twitter.com/GreatFireChina/status/568267993802629121)」, X (formerly Twitter), 2015-02-19. (参照 2024-03-19).

### 手机验证

早前 V2EX 需要验证手机才能发言，但在 2021 年的样子似乎取消了，只要帐号达到一定的年限，就能发言。

<!--

本来我想测试以下未认证手机情况，回复跳转到 <https://www.v2ex.com/restricted> 的效果，
结果似乎现在我的账号未通过手机认证就能发送回复了。

不过「水深火热」节点我依然无法进入。

> [!example]- 「水深火热」节点测试
>
> +   [异步中 await 和 then 的区别，哪个更好](https://web.archive.org/web/20210423092112/https://www.v2ex.com/t/772610#reply38), V2EX.
> +   [异步中 await 和 then 的区别，哪个更好](https://archive.is/yC5BZ), V2EX.
> +   [V2EX › gledos](https://web.archive.org/web/20210423092142/https://www.v2ex.com/member/gledos)
> +   [V2EX › gledos](https://archive.is/zFKCG)

-->

### 水深火热

简单地说，「水深火热」是 V2EX 的隐藏节点，最初是作为终止论战的节点。是站长 Livid 在 2011年1月7日 创建的节点，
能够实现 [秘密屏蔽](/censorship/秘密屏蔽.md) 的效果。[^x2T1v]

[^x2T1v]: Livid, 「[在 V2EX 上建立了一个叫做『水深火热』的节点，专门用于容纳 flame war。这个节点里的新主题和新回复都不会影响到主页的时间轴。](http://archive.today/2023.12.05-061332/https://twitter.com/Livid/status/23383519258476544)」, X（Twitter）, 2011-01-07. (参照 2023-12-05).

秘密屏蔽效果具体而言，是登录墙。只有注册满 1000 天以上的手机号实名帐号，才能查看。（可能还有其他要求）

> [!abstract]+ 相关讨论
>
> 大多数在 V2EX 的被封锁讨论，都转入了隐藏节点「水深火热」，或者直接标记为需要登录查看。
>
> 并且 V2EX 也在某次被封锁的前后，似乎临时增加了一些门槛。部分帖子查看要求增加到 1000 天注册用户。[^21v2_769]
>
> +   [杭州无法正常访问吗，感觉有一个月了](https://web.archive.org/web/20210423062103/https://www.v2ex.com/t/771007), V2EX.
> +   [V 站已经彻底被墙了是么?](https://archive.is/bJlto "https://www.v2ex.com/t/770920"), V2EX. 备注：已隐藏
> +   [V2 是不是被墙了？](https://archive.is/i1Yyf "https://www.v2ex.com/t/771224"), V2EX. 备注：已隐藏
> +   [v2ex 挂了](https://web.archive.org/web/20210423054102/https://ld246.com/article/1618193159520), 链滴.
> +   [V2EX 应该是被墙了](https://web.archive.org/web/20210423054106/https://ld246.com/article/1618499960860), 链滴.
> +   [V站被墙了吗？](https://web.archive.org/web/20210423054201/https://cnodejs.org/topic/6073fa5d4d20cb0fee68b77c), CNode技术社区.
> +   《[V2EX 再次被屏蔽](https://web.archive.org/web/20210423053010/https://www.solidot.org/story?sid=67471)》, 奇客Solidot.
> +   GeXiao, 「[扫了眼这次 V2EX 彻底被墙的讨论，没亲身下场干过的人哪怕是互联网从业者......](https://archive.is/6jkAo "https://twitter.com/gxgexiao/status/1381870967811567619")」, Twitter.

[^21v2_769]: 需登录 [为啥这个帖子会重定向到 v 站首页？ - V2EX](https://v2ex.com/t/769231)

#### 水深火热的历史

不同时间，「水深火热」节点的介绍也有差异：

> [!quote]+ 「水深火热」2011-01-07[^2011f] ~ 2014-07-03
>
> 当一个论战有超过 10 个以上回复时，就会被移动到这里。

[^2011f]: 「[水深火热](https://web.archive.org/web/20110110164657/http://www.v2ex.com/go/flamewar)」, V2EX, 2011-01-10. (参照 2023-12-05).

> [!quote]+ 「水深火热」2014-11-20[^2014f] ~ 未知
>
> 这个节点的存在，只是为了将一类信息进行归类。祝愿你的宝贵时间，能够被用到更健康的方面。

[^2014f]: 《[水深火热](https://web.archive.org/web/20141120231400/http://www.v2ex.com/go/flamewar)》, V2EX, 2014-11-20. (参照 2023-12-05).

> [!quote]+ 「水深火热」2023-12-05<sup class="footnote-ref" markdown="1">\[[来源请求](/CODE_OF_CONDUCT.md#来源请求 "（补充情况【如果有】）2023-12-05T16:34:50+0800")\]</sup>
>
> 这个节点的存在，只是为了将一类信息进行归类。如果一个主题里吵起来了而被移动到这里，管理员没有时间去细看里面谁对谁错，
> 因为我们不会把时间花在这样的事情上，这不是我们发起和维护这个网站的目的。如果一个账号持续以激烈的语言攻击其他账号，
> 并且被管理员看到，那么会被彻底禁用。

### 敏感词的研究

V2EX 具有敏感词系统，但是跟大厂的敏感词系统有明显差异，那就是部分敏感词，只要试图发送，就可能导致帐号被降权，
或者 ban IP 一段时间。

<!--
猜测：所以 V2EX 可能有两类敏感词，分别是「年限型」和「积分型」。年限型敏感词需要帐号注册一段时间后，才能发送。
积分型敏感词尝试发送，就会扣掉用户积分，导致正好降权甚至 IP 被封禁。
-->

下面是一些案例

> [!abstract]+ 案例
>
> | 时间                       | 关键词                   | 提及原因              | 限制或惩罚                    |
> | -------------------------- | ------------------------ | --------------------- | ----------------------------- |
> | 2017-03-18 之前[^48313]    | 路过／顶／不懂／不明觉厉 | 站长 Livid 披露敏感词 | 帐号降权（Deactivate）        |
> | 2017-11-30[^09067]         | 斐讯                     | ＊                    | ban IP                        |
> | 2018-01-26 之前[^26213]    | [保险, 贷款]             | 买车交流              | 帐号降权（置底 4 小时）       |
> | 2018-06-25[^65708][^65703] | 娼妇                     | 音乐交流              | ban IP                        |
> | 2019-02-13 之前[^34524]    | 投诉纪检委               | ＊                    | ban IP                        |
> | 2019-06-11[^72680]         | Spotify                  | 流媒体讨论            | 无法发送（需要注册满 720 天） |
> | 2020-04-02[^58777]         | Netflix                  | 流媒体合租            | 无法发送（需要注册满 720 天） |
> | 2021-01-02[^41103]         | [微信, 客服／电话]       | 讨论微信语音电话      | 无法发送（需要注册满 300 天） |
> | 2022-03-05[^38278][^QtKOs] | [工信部, 网信办]         | 讨论 SEO 广告监管机构 | ban IP                        |
> | 2022-12-23[^04257]         | 连花清瘟                 | 药效咨询              | 无法发送（需要注册满＊天）    |
> | 2023-01-30[^11577][^13377] | 毛泽东                   | 引用诗句时署名        | ban IP                        |
> | 2023-03-10[^22912]         | 确诊                     | 树洞倾诉              | 无法发送（需要注册满 360 天） |
> | 2024-02-27 之前[^58714]    | 监管                     | ＊                    | ban IP                        |

＊ 表示作者未披露。

附言：关键词可能有遗漏，因为部分情况，需要多个关键词才会触发限制或惩罚。

[^48313]: skylancer, 《[希望 v2 不要禁止被降权童鞋的回复提醒](https://web.archive.org/web/20211129091942/https://www.v2ex.com/t/348313)》, V2EX, 2017-03-17. (参照 2024-03-16).

[^09067]: Mirage09, 《[为什么我的两个 IP 都被 Access Denied 了...](https://web.archive.org/web/20240316092511/https://www.v2ex.com/t/409067)》, V2EX, 2017-11-23. (参照 2024-03-16).

[^26213]: FFLY, 《[现在的关键词是不是太敏感了，随随便便就降权了](https://web.archive.org/web/20220629104408/https://v2ex.com/t/426213)》, V2EX, 2018-01-26. (参照 2024-03-16).

[^65708]: F2Sky, 《[在 V 站发帖触发关键词 IP 就会被禁是否合理？](https://web.archive.org/web/20240316035820/https://www.v2ex.com/t/465708)》, V2EX, 2018-06-25. (参照 2024-03-16).

[^65703]: F2Sky, 《[矜持 or 放荡](https://web.archive.org/web/20240316072427/https://www.v2ex.com/t/465703)》, V2EX, 2018-06-25. (参照 2024-03-16).

[^34524]: rxzxf1993, 《[访问 v2 一直 403](https://web.archive.org/web/20240316034411/https://v2ex.com/t/534524)》, V2EX, 2019-02-13. (参照 2024-03-16).

[^72680]: Tumblr, 《[昨晚做了件很蠢的事！](https://web.archive.org/web/20240316090840/https://www.v2ex.com/t/572680)》, V2EX, 2019-06-11. (参照 2024-03-16).

[^58777]: SnowTwo, 《[V2EX 现在不满 1000 天不让说话了么](https://web.archive.org/web/20220924050026/https://www.v2ex.com/t/658777)》, V2EX, 2020-04-02. (参照 2024-03-16).

[^41103]: he110comex, 《[发布这个内容需要你已经注册满 300 天](https://web.archive.org/web/20230210072922/https://www.v2ex.com/t/741103)》, V2EX, 2021-01-02. (参照 2024-03-16).

[^38278]: jinliming2, 《[回复主题而被 ban ip](https://www.v2ex.com/t/838278)》, V2EX, 2022-03-05. (参照 2024-03-16).

[^QtKOs]: Imgur, 《[Imgur: The magic of the Internet](https://imgur.com/7AQtKOs)》, Imgur. (参照 2024-03-16).

[^04257]: agood, 《[什么样的人才会买 lianhua qingwen？](https://web.archive.org/web/20230217153706/https://v2ex.com/t/904257)》, V2EX, 2022-12-23. (参照 2024-03-16).

[^11577]: wangxiang, 《[\[狂飙\]这个电视剧还可以, 为啥名字这么土, 感觉没啥意义](https://web.archive.org/web/20230210075423/https://www.v2ex.com/t/911577)》, V2EX, 2023-01-30. (参照 2024-03-16).

[^13377]: santianban, 《[尝试性转 5 个亿，虽然显示余额不足，但是银行卡仍然被冻结了](https://web.archive.org/web/20240202120049/https://v2ex.com/t/1013377)》, V2EX, 2024-02-01. (参照 2024-03-16).

[^22912]: MiniLED, 《[工作十年后，我想放弃之前的经验重新开始](https://web.archive.org/web/20230515042155/https://www.v2ex.com/t/922912)》, V2EX, 2023-03-10. (参照 2024-03-16).

[^58714]: Yufan Sheng 标准件副厂长, 「[在 V2EX 回答了一个问题，触发了敏感词屏蔽，然后整个 IP 被 V2EX 封锁了，访问直接 403，但是对应的账号并没有被屏蔽。没想到这个论坛已经这样子了。作为 10 多年前就注册的老用户，这个社区我不会去了。](https://twitter.com/amehochan/status/1762369049202458714)」, X (formerly Twitter), 2024-02-27. (参照 2024-03-16).

V2EX 还被指出存在「倒车」「幼儿园」「丝袜」等敏感词，不过缺乏细节。[^d2lgaw]

[^d2lgaw]: not4sense, 《[V站的敏感词知多少](https://web.archive.org/web/20220703035758/https://www.reddit.com/r/v2ex/comments/d2lgaw/v站的敏感词知多少/)》, r/v2ex, 2019-09-11. (参照 2022-07-03).

### 降权的研究

帐号被降权后，发布的新帖会置底，原理是隐性的扣除发帖时间，使其被排在瀑布流之后。并且降权帐号回复 @ 他人时不会提醒。

V2EX 的站长 Livid，提到过：

+   「你的账号因为造谣而被降权 -2」[^36678]
+   「如果有主题被移动进 /go/survey 调查节点，那么可能会附带 1 个 point 的降权」[^53279]
+   「每次 Deactivate 会让一个账号的降权值 -2，体现的效果就是：发布的新主题会自动下沉 2 天；回复别人时不会触发提醒」[^19425]
+   （Deactivate）「具体就是将一个用户的密码及认证串设置为当前时间的 hash，于是用户在下次登录时就需要找回密码。」[^10553]
+   「因为发 aff 触发自动的 ban IP 不会被降权。持续的用 aff 刷屏或者用创建新主题的方式发 aff 会被 Deactivate。」[^19425]

[^36678]: Livid, 《[@loading 你的账号因为造谣而被降权 -2](https://www.v2ex.com/t/336678)》, V2EX, 2017-01-24. (参照 2024-03-16).

[^53279]: Death, 《[关于 V2EX 账号降权的问题，能不能让我们知道具体的降权机制呢？](https://web.archive.org/web/20240316093218/https://www.v2ex.com/t/353279)》, V2EX, 2017-04-07. (参照 2024-03-16).

[^19425]: Livid, 《[蹭热点发布毫无意义的水贴，账号会被 Deactivate](https://web.archive.org/web/20240316102725/https://www.v2ex.com/t/519425?p=1)》, V2EX, 2018-12-20. (参照 2024-03-16).

[^10553]: Livid, 《[FAQ - DEACTIVATE](https://web.archive.org/web/20111031162345/http://www.v2ex.com/t/10553)》, V2EX, 2011-03-27. (参照 2024-03-16).

不过细节尚不明确。帐号似乎有一种积分，只要减少，那么帐号就会进入降权状态。
有人认为减少 3 分，即两次 Deactivate 就会封号。

<!--
### 绕过规则的方法

V2EX 没有直接修改已发送内容的功能，所以有人使用图片发送，因为 V2EX 支持外链图片功能，这样就能快速修改以及删除内容了，
并且可以规避敏感词审查。[^842769]

[^842769]: vcfghtyjc, 《[最近很多长文是用图片发出的。不知道是不是规避了 V 站货币策略。](https://web.archive.org/web/20220426072042/https://www.v2ex.com/t/842769)》, V2EX, 2022-03-25. (参照 2022-07-03).

但是图床似乎有帐号时间限制，需要一定时间。
-->

## 隐私相关

### V2EX 未经允许公布用户邮箱和手机号

这件事与审查的关系不大，属于法律问题。

### 自建 DNS 被喝茶

痕迹很少，有未经确认的消息认为 V2EX 的站长将发帖人的 IP 等数据上交给警方，造成有人被喝茶警告。

> [!abstract]+ 可能相关链接
>
> +   [账号在V2EX被禁了，真是无语了！ 科技爱好者博客 -专注于树莓派（Raspberry Pi）](https://web.archive.org/web/20201018132800/https://www.lxx1.com/922)
> +   [吐槽V2ex 站长 管理员装逼的下场 什么情况](https://web.archive.org/web/20201018005242/https://www.hostloc.com/thread-660571-1-1.html), 全球主机交流论坛.
> +   [V2EX 怎样影响了你？](https://web.archive.org/web/20201018101852/https://www.zhihu.com/question/20538971), 知乎.
> +   [如何评价v2ex的站长将用户信息上交给江苏警方致使用户被查水表？](https://web.archive.org/web/20200812153619/https://pincong.rocks/question/5062), 新·品葱.
> +   [v2ex的站长也是个心眼小的人](https://archive.is/2614A "https://2049bbs.xyz/t/1313"), 2049BBS.
> +   [V2EX 站长被指非法公开用户隐私信息](https://web.archive.org/web/20201018135611/https://2049bbs.github.io/t/389), 2049BBS.
> +   [关于 2018 年 3 月 31 日遇到的假毕业证书垃圾信息刷屏](https://web.archive.org/web/20180401023334/https://www.v2ex.com/t/443087?p=1), V2EX. [百度取证](https://web.archive.org/web/20180404121719/http://quzheng.baidu.com/s/z2umua)
> +   [这是专门针对 V2 的机器人出现了？](https://web.archive.org/web/20180331123610/https://www.v2ex.com/t/443077), V2EX.
> +   [V2EX 站长被指非法公开用户隐私信息](https://web.archive.org/web/20180406231122/https://www.solidot.org/story?sid=56013), Solidot. 备注：评论已移除
> +   [问一下有那些和 V2EX 相似用户群的论坛？](https://web.archive.org/web/20180401024739/https://www.v2ex.com/t/443231#reply2 ), V2EX. [百度取证](https://web.archive.org/web/20180504141831/http://quzheng.baidu.com/s/qia2Er)
> +   [V2EX 未经允许公布用户邮箱和手机号？](https://web.archive.org/web/20201018140229/https://v2ex.com/t/443559), V2EX.
> +   [V2EX站长是否有权公开网站成员（广告发布者）的隐私信息？](https://web.archive.org/web/20201018140417/https://www.zhihu.com/question/270668541), 知乎.
> +   [\[IT新闻\] V2EX 站长被指非法公开用户隐私信息](https://archive.is/xb074 "https://bbs.nga.cn/read.php?tid=13779948"), NGA玩家社区.
> +   [以后上网，不想再谈什么隐私！](https://archive.is/aSeFs "https://www.v2ex.com/t/712403"), V2EX. 备注：需登录

### 手机号验证

大概是因为将服务器迁移到大陆的原因，发帖用户必须进行手机号码的认证。

2019年7月6日，V2EX 唯一的开发者 Livid，将网站的服务器与 CDN 迁往了美国，并在评论中称「代码中使用到的任何和中国大陆的
Web 服务提供商有关的 API，接下来会逐步去掉依赖关系。」[^V2EX_rcmls]
以及「注册方式接下来肯定会改」「还需要一些时间(计划取消手机验证)」。[^V2EX_20190706]

[^V2EX_rcmls]: [接下来会逐步去掉依赖关系 - 关于最近基础架构方面的一些变动 - V2EX](https://web.archive.org/web/20190713095113/https://www.v2ex.com/t/580480?p=1)

[^V2EX_20190706]: [20190706 - 关于最近基础架构方面的一些变动 - V2EX](https://web.archive.org/web/20210130130836/https://www.v2ex.com/t/580480?p=3)

不过截至 2021年1月，取消手机验证的计划还是没有实施。
