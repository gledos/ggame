---
title: DNS污染
description:
published: true
date: "2022-07-18T16:12:51"
tags:
- dns
editor: markdown
dateCreated: "2021-09-11T09:27:21"
---

## 简介

+   路由牵引方式
+   旁路抢答方式（分光镜像+抢先应答）  
+   PBR 策略路由方式[^482394]

[^482394]: [移动宽带三套 DNS 污染技术已经申请专利了，三套组合拳。 - V2EX](https://web.archive.org/web/20200327034135/https://v2ex.com/t/482394)

> [!abstract]+ 相关链接
>
> +   [基于旁路抢答机制的异网DNS管控实践 - 电信技术](https://web.archive.org/web/20180823105346/http://www.ttm.com.cn/article/2016/1000-1247/1000-1247-1-1-00064.shtml)

## 涉及 DNS 污染

### 污染其他地区

2010年3月24日 18:22:40 UTC ，智利的 DNS 管理员发现了奇怪的错误，访问 facebook、youtube 或 twitter 的 A 记录，会得到错误的 IP，该错误 3 个发生在智利，1 个发生在加利福尼亚。原因可能是将域名请求提交给大陆控制的「根域 DNS 镜像」时，出现了问题。[^260]

随后 CNNIC 的 VP & CTO —— 李晓东[^LEE] 声明：「CNNIC never 
did any interceptions or other things for the mirror site of I root serer, CNNIC only provides the stable Internet connection, power and necessary hand support.」[^280]

根据 Robert Edmonds 的想法，可能是因为数据进入了大陆境内，被 GFW 篡改了内容，[^271] 即中间人攻击。

但是因为一些新闻没有明确声明污染的过程不在 CNNIC，导致了 CNNIC 风评被害，直到现在也有一些人以为此次事件是 CNNIC 的责任。

[^260]: Mauricio Vergara Ereche, 《[\[dns-operations\] Odd behaviour on one node in I root-server \(facebook, youtube & twitter\)](https://web.archive.org/web/20110917095535/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005260.html)》, 2011-09-17. 参照: 2022-02-22. [Online].

[^LEE]: 《[李晓东基本信息](https://web.archive.org/web/20200603014428/http://people.ucas.ac.cn/~LEE)》, 中国科学院大学. (参照 2022-02-22).

[^280]: Xiaodong Lee, 《[\[dns-operations\] Odd behaviour on one node in I root-server \(facebook, youtube & twitter\)](https://web.archive.org/web/20120119092604/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005280.html)》, 2012-01-19. 参照: 2022-02-22. [Online].

[^271]: Robert Edmonds, 《[[dns-operations] Odd behaviour on one node in I root-server (facebook, youtube & twitter)](https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005271.html)》, 2010-03-24. 参照: 2022-02-22. [Online].

### GFW 故障

2014年1月21日 下午，大陆内进行 DNS 查询，就会发现许多除了 .cn 的域名被解析到了 IP 位址 65.49.2.178。[^97867][^wiki_2014]

[^97867]: chuangbo, 《[发在知乎的回答被和谐，只能发在这了，无责任分析一下1月21日网络大规模故障的事故原因](https://web.archive.org/web/20140122133459/http://www.v2ex.com/t/97867)》, V2EX, 2014-01-21. (参照 2022-12-20). 备注：此帖子遭到了 Shadow Ban。

[^wiki_2014]: 《[2014年中国大陆网络异常事件](https://zh.wikipedia.org/wiki/2014年中国大陆网络异常事件)》, 维基百科，自由的百科全书. 2022-11-19. 参照: 2022-12-20. [Online].

而此 IP 所归属的公司，最大的客户是法轮功旗下的破除网络封锁的服务——动态网，所以被认为是 GFW 的操作人员在封禁 IP 时误操作，导致的情况。

「国家互联网应急中心」对此只有一句话的解释：「初步判断此次事件是由于网络攻击导致我国境内互联网用户通过国际顶级域名服务解析时出现异常」，之后就没有消息了。[^02307]

[^02307]: 张意轩, 《[我互联网访问异常系网络攻击所致](https://web.archive.org/web/20221220052442/http://scitech.people.com.cn/n/2014/0123/c1007-24202307.html)》, 人民日报, 2014-01-23. (参照 2022-12-20).
