---
title: "BitTorrent"
description:
published: true
date: "2022-11-28T12:34:11"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-11-28T12:34:11"
---

## 简介

BitTorrent 既是软件，也是协议，不过由于 BitTorrent 软件在 2006 年商业化，停止了开源，所以 BitTorrent 现在主要指代其协议。

## 协议

BitTorrent 协议简称 BT，是用在对等网络中文件分享的网络协议程序。和<ruby>点对点<rp>(</rp><rt>point to point</rt><rp>)</rp></ruby>的协议程序不同，它是<ruby>用户群对用户群<rp>(</rp><rt>peer to peer</rt><rp>)</rp></ruby>（对等式网络），而且用户越多，下载同一文件的人越多，下载该文件的速度越快。且下载后，继续维持上传的状态，就可以「分享」。

## Torrent

〔待续〕

## Tracker

〔待续〕

## DHT

DHT 全称为<ruby>分布式哈希表<rp>(</rp><rt>Distributed hash table</rt><rp>)</rp></ruby>。

### DHT 历史

BitTorrent 知名的功能之一是 DHT，而 DHT 知名的实例也是 BitTorrent，但这最初是第三方 BitTorrent 客户端 Azureus (现 Vuze）首先实现于 2005年5月2日 的 2.3.0.0 版本，[^22C_2005] 当时还叫做<ruby>分散追踪<rp>(</rp><rt>Decentralised tracking</rt><rp>)</rp></ruby>，并且 Azureus 的开发者当时不认为 DHT 属于 BitTorrent 协议的一部分，而是称之为「BitTorrent 网络之上添加的一个层，用于提升 Azureus 的性能」。[^772]

因为有了 DHT，所以此版本也添加了<ruby>磁力链接<rp>(</rp><rt>Magnet URI</rt><rp>)</rp></ruby>，不过当时还没有相关标准，所以磁力链接还是 `magnet:?xt=urn:sha1:哈希`，并不是现在常见的 `magnet:?xt=urn:btih:哈希`。

[^22C_2005]: Azureus Dev, 《[Azureus2 changelog - 2.3.0.0 - May 2, 2005](https://web.archive.org/web/20220910191334/https://wiki.vuze.com/w/Azureus2_changelog#2.3.0.0_-_May_2.2C_2005)》, VuzeWiki, 2005-05-02. (参照 2022-11-29).

[^772]: Thomas Mennecke, 《[Azureus Introduces DHT Layer](https://web.archive.org/web/20190713023207/http://www.slyck.com/news.php?story=772)》, Slyck News, 2005-05-03. (参照 2022-11-29).

其中的 btih 是指 BitTorrent info hash，这是 SHA-1 哈希，部分情况会是被 Base32 编码后的，区别二者的方法可以简单的看看长度，SHA-1 有 40 个字符，而被 Base32 编码后只有 32 个字符，[^bep_0009][^1bmus] 所以 btih 与 sha1 几乎是等价的。

[^bep_0009]: Greg Hazel、Arvid Norberg, 《[Extension for Peers to Send Metadata Files](https://www.bittorrent.org/beps/bep_0009.html)》, BitTorrent.org, 2017-03-26. (参照 2022-11-29).

[^1bmus]: Xilon, 《[BTIH Magnet URI support](https://web.archive.org/web/20220121215407/https://forum.utorrent.com/topic/1923-btih-magnet-uri-support/)》, µTorrent Community Forums, 2005-11-11. (参照 2022-11-29).

很快 BitTorrent 软件也推出了自己的 DHT，但与 Azureus 的版本不兼容，虽然都是基于 Kademlia 算法，但有一些差异。[^2014_0337] 开发者表示相似的算法 Chord 曾经被<ruby>亚伦·斯沃茨<rp>(</rp><rt>Aaron Swartz</rt><rp>)</rp></ruby>于 2002 年提及，被它的简单震惊，所以开发者在当时就开始开始探索这一类 DHT 算法了，甚至早于 Azureus 的第一个版本。[^150607]

[^2014_0337]: Eric Chan-Tin, Victor Heorhiadi, Nicholas Hopper 和 Yongdae Kim, [Hijacking the Vuze BitTorrent network: all your hop are belong to us](http://doi.org/10.1049/iet-ifs.2014.0337), _IET Information Security_, vol. 9, no. 4, 页码 203–208, 2015, doi: 10.1049/iet-ifs.2014.0337.

[^150607]: Ben Jones, 《[BitTorrent’s DHT Turns 10 Years Old](https://web.archive.org/web/20221003075118/https://torrentfreak.com/bittorrents-dht-turns-10-years-old-150607/)》, TorrentFreak, 2015-06-07. (参照 2022-11-29).

备注：BitTorrent 软件又称 Mainline，表示主线（主要线程），与第三方的分支进行区别，所以 BitTorrent 的 DHT 版本也就分别叫做 Mainline DHT。

之后所有的 BitTorrent 第三方客户端，均使用了 Mainline DHT，Vuze 也出现了兼容 Mainline DHT 的插件。

有了 DHT，BitTorrent 就可以摆脱 Tracker，因为 Tracker 服务器可能会因为各种原因而被关闭，或干扰。DHT 能大大的增加 BitTorrent 协议的独立性。

不过由于各种原因，DHT 的推广较慢，因为在当时 DHT 还是会占用大量路由器的资源，导致缓慢，直到海盗湾在 2009年11月 关闭自己的 Tracker，全面转向磁力链接 DHT。

### DHT 简介

这是一种为了解决分布式哈希表的系统，而诞生的概念，随后出现了多种算法，比如之前提到的 Kademlia 和 Chord。

DHT 的特点是节点能轻易的上线、离线以及检索信息，所以 DHT 通常被设计成一个空间，比如圆、二叉树甚至是多维空间，然后每个节点被映射到其中，然后通过算法，导航到目标节点的附近，与需要或者分享文件的用户进行接触。

用比喻来解释 DHT，「空间」就是一座城市，我寻找的东西会被转化成一个具体的地点，然后我尝试向地点接近，携带着文件的人也通过这个方法，将自己的联系方式写在了这个地点附近，等待着我的到来。

## 磁力链接

磁力链接与 DHT 的关系是一体两面，或者说磁力链接是 DHT 的一部分，是描述「地点」的一部分。所以理论上可以使用任何标识都能使用，甚至是 `magnet:?xt=urn:uuid`，不过 uuid 或者其他的随机值没有承载源文件的信息，所以可以这么做，但完全没必要。[^10828]

[^10828]: Arun Ranganathan, 《[Re: Discussion of Blob URI Scheme for Binary Data Access](https://web.archive.org/web/20150926210828/http://lists.w3.org/Archives/Public/uri/2011May/0003.html)》, IETF from Arun Ranganathan, 2011-05-15. (参照 2022-11-30).

前面提到磁力链接与 DHT 的关系是一体两面，所以磁力链接不仅仅被 BitTorrent 所使用。

磁力链接标准的设计者是 Bitzi，于 2002 年开发，目的是中立的描述对等式网络中的文件，因为当时 eDonkey2000 和 Freenet 分别设计出了自己的文件链接，分别以 `ed2k:` 和 `freenet:` 开头，并且 ed2k 的链接没有遵守违反了 IETF 的 RFC 1738 和 2396。

所以 Bitzi 想要创建一个中立的，符合 IETF 规范的对等式网络中的文件链接。

### 磁力链接的发展

2002 年，Bitzi 提出磁力链接之后，2002年6月17日 完成了最终版的技术概述/规范草案。

Gnutella 网络是最先使用的，当时 Gnutella 是非常流行的分享文件的协议，有着各种第三方客户端，最先支持磁力链接的应该是 Shareaza，这款软件在 1.6 版本，大约是 2002年8月21日 添加了磁力链接。[^shar_16][^shar_d]

[^shar_16]: 《[ANNOUNCING SHAREAZA 1.6](https://web.archive.org/web/20021101213400/http://www.shareaza.com:80/news/upgrade.aspx)》, Shareaza, 2002-11-01. (参照 2022-11-30).

[^shar_d]: fluffylogic, 《[shareaza relase dates?](https://web.archive.org/web/20160619182624/http://shareaza.sourceforge.net/phpbb/viewtopic.php?f=2&t=132)》, Shareaza, 2009-08-19. (参照 2022-11-30).

随后 gtk-gnutella 于 2002年11月17日 添加了磁力链接的支持，[^LL7309] , LimeWire 于 2003年3月7日 的 2.9.0 版本添加，[^lw_history] 但是其他的商业软件比如 Kazza 没有更新日志，所以尚不明确其添加磁力链接的版本与时间。

[^LL7309]: 《[gtk-gnutella/gtk-gnutella](https://web.archive.org/web/20220416204900/https://github.com/gtk-gnutella/gtk-gnutella/blob/devel/ChangeLog#LL7309)》. gtk-gnutella, 2022-11-14. 参照: 2022-11-30. [Online].

[^lw_history]: Lime Wire LLC., 《[Features History](https://web.archive.org/web/20061015191810/http://www.limewire.com/english/content/features_history.shtml)》, LimeWire: The Official Site, 2006-10-15. (参照 2022-11-30).

然后时间来到 2005 年，Azureus 与 BitTorrent 软件先后实现了 DHT 与磁力链接。其他的第三方 BitTorrent 客户端也纷纷跟进，成为了 BitTorrent 的事实标准。

但是磁力链接也就推广到这里了，之后 Gnutella 淡出了历史，BitTorrent 也就成了磁力链接唯一的主要使用者。

### 磁力链接的结构

一个简单的磁力链接就像下面的样子，磁力链接属于 URN（<ruby>统一资源名称<rp>(</rp><rt>Uniform Resource Name</rt><rp>)</rp></ruby>）。

```text
 magnet:?xt=urn:btih:c7b01623dbc4f58ab0c4bee964a7416538ad4453
+------+---+---+----+----------------------------------------+
|   1  | 2 |                        3                        |
+------+---+---+----+----------------------------------------+
           |3.1| 3.2|                   3.3                  |
           +---+----+----------------------------------------+
```

1.  magnet 是指磁力链接
2.  xt 表示 Exact Topic，这是磁力链接必要的参数，它的后方通常是 URN
3.  使用 URN 表示的文件哈希，关于 URN 的介绍〔待续〕

〔待续〕

### 磁力链接的图标

在 MAGNET-URI Project 的官网里，给出了一些磁力链接图片，用来推广，方便用户快速理解。

+   ![magnet_logo][]
+   ![fig1][] magnet-icon-9w-9h.gif
+   ![fig2][] magnet-icon-9w-10h.gif
+   ![fig3][] magnet-icon-12w-12h.gif
+   ![fig4][] magnet-icon-14w-14h.gif
+   ![fig5][] magnet-tile-16w-16h.gif
+   ![fig5_2][] magnet-tile2-16w-16h.gif
+   ![fig6][] magnet-tile-purple-13w-9h.gif
+   ![fig7][] magnet-tile-purple-19w-14h.gif

[magnet_logo]: data:image/png;base64,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
[fig1]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAc0lEQVQYV4WQsQ0AIQwDkw5WYS5GomQuStZ4Oj6OMEIvoU8TQg7bQkMIc4wh1uVWCqi1tvcpJfnOatvZe/+HJhCzi4ffs864cyWH1sBsVwhgNEUCPuNxrXXmnIVqsGUBKKW4HcoZZqMCun2PEtrMkZ0x5QXYfyhnEuv/+AAAAABJRU5ErkJggg==
[fig2]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAKCAYAAABmBXS+AAAAfUlEQVQYV41QMRbFIAiDzV7Fczl6HEfP5eg1vhtNeNKh77W/LAiEJKIpJVtrCbI8hRI0xrjmOWe514qpzTn/g4wQyB1IrTWptcpvr7HnTN9Be6P3/sIU9JANKbZcDptWShGX3N7iGR7piTfyW4W3YGBGXx3ECMY4Kn8JBZ+fwlo9f2EKqi4AAAAASUVORK5CYII=
[fig3]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAgUlEQVQoU72RwQ0AIQgE4WcdtmZdtmYd/jiWgFHPXHwdiQ8XBhZlIhI918EAWmsLkHO2+0n/CRhLpETcO5VSzFKtlUS1COTM0g6oBh0h34BX3k/wtqP9ZAept6X5cbfiAeh4seX2rzt0h1WbHpBtGaADsOE1eDUOuyHatDnQFYWhPSNoUizUybd2AAAAAElFTkSuQmCC
[fig4]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAAl0lEQVQoU81RMRKAIAwrm+/gW4z4LPka72CrTS0cIA5O2jvvkDQ0aRwRsXyrcna5xAFyznkgeu/x34gr/CNiM7Ft5EqhGCOllFSqnFnOxILVQo9KnYmdv9rLfyOaxvcezVENsBnsFqMBYznY2iFbe6yJhL49hIuo635iLqbBypAVuLcHjAh5lqtmPNjBdIBQ0Bcm2H3rPwE/gm9VY/T75gAAAABJRU5ErkJggg==
[fig5]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAArklEQVQ4T7WTwRGFIAxEw80SOFMG7VAX7VAGZ0rwpixjmKDg/I+amzF52SygQggbPQgFgPd+CoG+CvgX4pyjCyDG2CgxxpTvXv5bQEqJtNZ0ViDzXQX1OJaF1Lo262w5x4F/YwAKc4HK1ShCwKzfAeh4QwE4UIGQ00v+dgVe9FgFas4xBNRpbGAHwuZeTGSzeFo5EQGQpyLN7b6F0bXmRh7SXOWZ11QB1tqZ/tKzA2p50VPgVV3ZAAAAAElFTkSuQmCC
[fig5_2]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAtElEQVQ4T7WTyxHEIAiG4ZYSPNuFtmNdtmMZni0hNzcwwSFRM5tkl5vI/8lDMKVU4YUhAZxzjxCICA1AhztWa4UOkHM+MKy1fB75/wsopYAxBs4ZaP8wgzaOZQFc10M5dfOJ0d0cQIFbALU0hMCaGCN8DyDFLzIgjgxWv87+yxKk0L0UyuZsUwAF8mvSwAFEmts1kVNTv5EnogB6KiSW+OEuzL61CNs49S7c2YMO4L1/omfNB3MRp1MI9nwyAAAAAElFTkSuQmCC
[fig6]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAJCAYAAADpeqZqAAAAo0lEQVQYV42RMRICIQxFPx1chU6PYOtRLD3Hlh7D0lLKtdOOEkuPAF38cWAdHHeGzGQgIY/kg5GXCJ4YtzNgZCbEjTs5lFJgrV29IB8ywnT7QmYySCktgPceMcYu/guJlrCT43IpAXu7Q66Y5tYhHjqC45Dqoa4HwS39Tt9UjYZ5OUqvSadQXVJBHbNZAzTuHmIpIPhr2qHZB7piloAw/k+sfANYBGsGFtW0pQAAAABJRU5ErkJggg==
[fig7]: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAOCAYAAADNGCeJAAAA0klEQVQ4T62SMRKDIBBFPx1exaultJRSS8ocI0cIpbmBJSlzBOkIm4izItEkujPOOH/hsX93hX94jzv2xwUQvguw8LM3jL4tYcW5gHMOUsqJP5wGkJ4G6TE+wvq+nw6VZYkIy+mrMKEFrLXHwTyhgk0yVjmFpqqhdAstG0RjlNu0SZVxGL9AffsPFl4W4avRHFDZ2LWCT5WN8yub1JsW6m117F26EryXq9Ok5AzIKqNcDkR6ds/iSxHIl5dycbpptauwxbpvCC/YFZ03ML/ezZ5/AhymrpUVYLuOAAAAAElFTkSuQmCC


## Private Tracker BT

Private Tracker BT

〔待续〕

## 协议加密

〔待续〕

## 标准化

<!--
_BitTorrent 协议最初就已经完成了开源，但是就像 PGP 一样，没有 W3C 这样的，具有权利的团体来维护此协议，协议相关的规范主要还是被商业公司所掌握，所以 BitTorrent 协议的更新较为缓慢。_

上面的文字有问题，还需要进一步查证。
-->

BitTorrent 在 2008年1月 开始尝试标准化，将与最初 BitTorrent 协议不同的部分表述为 BitTorrent Enhancement Proposals（之后简称为 BEP），跟 XMPP 的模块化相似：

> [!note]+ XMPP 的模块化
>
> XMPP 的意思是可扩展消息与存在协议，是自由、开放和公开的即时通讯协议，特点是灵活，服务器端可以只安装必要的功能，然后就能在客户端运行了。
>
> 这种模块化的设计来自 XMPP 标准基金会。它将几乎一切 XMPP 的功能模块化，包括用户头像、群聊和上传文件这样的，在其他即时通讯软件中几乎必不可少的功能，到了 XMPP 里都是可选的功能。
>
> 被模块化的功能会像 RFC 一样拥有编号，被放在网络上被查阅，然后服务器端和客户端的开发者就参考这些标准进行开发。所以前文没有说 XMPP 是开源的，因为 XMPP 的根基是一页页的标准组成的协议，根据其标准开发的软件不一定会开源，就像是 HTML5、<ruby>ECMAScript<rp>(</rp><rt>JavaScript</rt><rp>)</rp></ruby> 一样，都是规范。

BEP 是由 BitTorrent.org 维护，此网站由 BitTorrent, Inc.（现 Rainberry, Inc.）维护。其中绝大多数的标准均被放置在公有领域，所以算是开放规范。

不过我没查到 BEP 具体的历史，所以细节尚不明确。

## V2

〔待续〕
