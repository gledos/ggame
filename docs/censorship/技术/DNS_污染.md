---
title: DNS 污染
description:
published: true
date: "2023-10-25T22:14:31"
tags:
- dns
editor: markdown
dateCreated: "2021-09-11T09:27:21"
---

## 简介

DNS 污染大致与以下内容为同义词：

+   DNS 缓存服务器污染
+   DNS 抢答
+   DNS 劫持

电信公司将相关技术称为：、路由牵引方式、旁路抢答方式（分光镜像 + 抢先应答）、PBR 策略路由方式。[^82394][^00064]

[^82394]: 《[移动宽带三套 DNS 污染技术已经申请专利了，三套组合拳。](https://web.archive.org/web/20200327034135/https://v2ex.com/t/482394)》, V2EX.

[^00064]: 《[基于旁路抢答机制的异网DNS管控实践](https://web.archive.org/web/20180823105346/http://www.ttm.com.cn/article/2016/1000-1247/1000-1247-1-1-00064.shtml)》, 电信技术.

## DNS 污染

### DNS 缓存服务器污染

> [!question]+ 原理
>
> 往往是运营商的 DNS 缓存服务器被污染，当用户使用运营商分配的默认 DNS 时，就会因为错误的 DNS 记录，
> 无法访问部分网站。[^83433]

[^83433]: Sue6080, 《[请问我理解的 DNS 缓存污染定义,指教下是否正确?](https://web.archive.org/web/20220903025723/https://www.v2ex.com/t/783433)》, V2EX, 2021-06-15. (参照 2023-10-25).

> [!success]+ 解决方案
>
> 过去，流行修改 DNS 来防止运营商的 DNS 缓存服务器污染情况，比如给 Xbox One 更换 `8.8.8.8` DNS，从而改善 Xbox Live
> 的连接情况。[^d3310]
>
> 不过后来因为 DNS 抢答和劫持的普遍，单纯更换 `8.8.8.8` DNS，就没有什么作用了。

[^d3310]: 游戏早知道, 《[2月3日Xboxone预览系统更新修复游戏启动BUG 附改善近期Xbox Live受限问题可用DNS](https://web.archive.org/web/20220813184732/https://www.yxzzd.com/3310.html)》, 游戏早知道, 发布于-. (参照 2023-10-25).


### DNS 抢答

> [!question]+ 原理
>
> 当用户使用自定义 DNS 时，由于 DNS 请求没有加密以及防篡改功能，所以数据包经过某个中间人节点时，
> 中间人就会抢先向用户发送错误的 DNS 记录。
>
> 原理是服务器方面做了「分光镜像」，能够实时检测 DNS 请求。缺点是用户会收到两份 DNS 记录，所以也许能够忽略错误的 DNS
> 记录，从而获取干净的 DNS 记录。

> [!success]+ 解决方案
>
> 最初的 DNS 抢答，给的错误 IP 较少，所以能够直接列出错误的 IP，然后让系统内核忽略这些错误的 DNS 记录，
> 从而防止 DNS 抢答的干扰。[^80526][^]
>
> 不过后来 GFW 可能知晓了这一漏洞，结果 DNS 污染在某个时间后，不再是单纯的少量 IP，而是一大堆的 Facebook、
Twitter 等，已经被封禁的网络服务的 IP，这样漏洞就基本被堵上了。[^25889]

[^80526]: 未知, 《[翻墙路由器的原理与实现（转载）](<https://web.archive.org/web/20171126180526/http://blog.neargle.com/SecNewsBak/drops/翻墙路由器的原理与实现 .html>)》, 未知, 2017-11-26. (参照 2023-10-25).

[^25889]: ladypxy, 《[域名被解析到 facebook 的 IP，是不是说明这个域名被污染了](https://web.archive.org/web/20220123172514/https://www.v2ex.com/t/525889)》, V2EX, 2019-01-11. (参照 2023-10-25).

### DNS 劫持

> [!question]+ 原理
>
> 当用户使用自定义 DNS 时，由于 DNS 请求没有加密以及防篡改功能，所以数据包经过某个中间人节点时，
> 中间人直接以透明代理，或者类似的原理，发送特定 DNS 服务器的记录。

> [!success]+ 解决方案
>
> DNS 劫持：使用 DNS over HTTPS（DNS over HTTP over TLS）、DNS over TLS 等方式，通过加密的协议来保护 DNS 请求。
> 只要 GFW 没有将提供服务的域名，进行 SNI 封禁，就会有效。

## 涉及 DNS 污染

### 污染其他地区

2010年3月24日 18:22:40 UTC ，智利的 DNS 管理员发现了奇怪的错误，访问 facebook、youtube 或 twitter 的 A 记录，
会得到错误的 IP，该错误 3 个发生在智利，1 个发生在加利福尼亚。原因可能是将域名请求提交给大陆控制的「根域 DNS 镜像」时，
出现了问题。[^260]

随后 CNNIC 的 VP & CTO —— 李晓东[^LEE] 声明：「CNNIC never did any interceptions or other things for the mirror
site of I root serer, CNNIC only provides the stable Internet connection, power and necessary hand support.」[^280]

根据 Robert Edmonds 的想法，可能是因为数据进入了大陆境内，被 GFW 篡改了内容，[^271] 即中间人攻击。

但是因为一些新闻没有明确声明污染的过程不在 CNNIC，导致了 CNNIC 风评被害，直到现在也有一些人以为此次事件是 CNNIC
的责任。

[^260]: Mauricio Vergara Ereche, 《[\[dns-operations\] Odd behaviour on one node in I root-server \(facebook, youtube & twitter\)](https://web.archive.org/web/20110917095535/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005260.html)》, 2011-09-17. 参照: 2022-02-22. [Online].

[^LEE]: 《[李晓东基本信息](https://web.archive.org/web/20200603014428/http://people.ucas.ac.cn/~LEE)》, 中国科学院大学. (参照 2022-02-22).

[^280]: Xiaodong Lee, 《[\[dns-operations\] Odd behaviour on one node in I root-server \(facebook, youtube & twitter\)](https://web.archive.org/web/20120119092604/https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005280.html)》, 2012-01-19. 参照: 2022-02-22. [Online].

[^271]: Robert Edmonds, 《[\[dns-operations\] Odd behaviour on one node in I root-server (facebook, youtube & twitter)](https://lists.dns-oarc.net/pipermail/dns-operations/2010-March/005271.html)》, 2010-03-24. 参照: 2022-02-22. [Online].

### 研究论文

2012年，一篇以《黑客帝国》角色为化名的论文出现在 DNS 研究的视野中，解释了其他地区的 DNS 主机，
也会受到大陆的 DNS 污染。[^qIaVG]

[^qIaVG]: rmrf100, 《[中国DNS污染对世界范围互联网造成的附属破坏](https://archive.vn/qIaVG "https://eyelublog.wordpress.com/2012/07/07/中国dns污染对世界范围互联网造成的附属破坏/")》, EyeLu Blog, 2012-07-07. (参照 2022-12-23).

### GFW 故障

2014年1月21日 下午，大陆内进行 DNS 查询，就会发现许多除了 .cn 的域名被解析到了 IP 位址 65.49.2.178。[^97867][^w2014]

[^97867]: chuangbo, 《[发在知乎的回答被和谐，只能发在这了，无责任分析一下1月21日网络大规模故障的事故原因](https://web.archive.org/web/20140122133459/http://www.v2ex.com/t/97867)》, V2EX, 2014-01-21. (参照 2022-12-20). 备注：此帖子遭到了 Shadow Ban。

[^w2014]: 《[2014年中国大陆网络异常事件](https://zh.wikipedia.org/wiki/2014年中国大陆网络异常事件)》, 维基百科，自由的百科全书. 2022-11-19. 参照: 2022-12-20. [Online].

而此 IP 所归属的公司，最大的客户是法轮功旗下的破除网络封锁的服务——动态网，所以被认为是 GFW 的操作人员在封禁 IP
时误操作，导致的情况。

「国家互联网应急中心」对此只有一句话的解释：「初步判断此次事件是由于网络攻击导致我国境内互联网用户通过国际顶级域名服务解析时出现异常」，[^02307] 之后就没有消息了。

[^02307]: 张意轩, 《[我互联网访问异常系网络攻击所致](https://web.archive.org/web/20221220052442/http://scitech.people.com.cn/n/2014/0123/c1007-24202307.html)》, 人民日报, 2014-01-23. (参照 2022-12-20).
