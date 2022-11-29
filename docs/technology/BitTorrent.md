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

BitTorrent 协议简称 BT，是用在对等网络中文件分享的网络协议程序。和<ruby>点对点<rp>(</rp><rt>point to point</rt><rp>)</rp></ruby>的协议程序不同，它是<ruby>用户群对用户群<rp>(</rp><rt>peer to peer</rt><rp>)</rp></ruby>，而且用户越多，下载同一文件的人越多，下载该文件的速度越快。且下载后，继续维持上传的状态，就可以「分享」。

BitTorrent 协议最初就已经完成了开源，但是就像 PGP 一样，没有出现一个团体来维护此协议，协议相关的规范主要还是被商业公司所掌握，所以 BitTorrent 协议的更新较为缓慢。

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

备注：BitTorrent 软件又称 Mainline，表示主线（主要线程），与第三方的分支进行区别，两个 DHT 版本也就分别叫做 Mainline DHT 与 Vuze/Azureus DHT。

之后所有的 BitTorrent 第三方客户端，均使用了 Mainline DHT，Vuze 也出现了兼容 Mainline DHT 的插件。

有了 DHT，BitTorrent 就可以摆脱 Tracker，因为 Tracker 服务器可能会因为各种原因而被关闭，或干扰。DHT 能大大的增加 BitTorrent 协议的独立性。

不过由于各种原因，DHT 的推广较慢，因为在当时 DHT 还是会占用大量路由器的资源，导致缓慢，直到海盗湾在 2009年11月 关闭自己的 Tracker，全面转向磁力链接 DHT。

### DHT 简介

这是一种为了解决分布式哈希表的系统，而诞生的概念，随后出现了多种算法，比如之前提到的 Kademlia 和 Chord。

DHT 的特点是节点能轻易的上线、离线以及检索信息，所以 DHT 通常被设计成一个空间，比如圆、二叉树甚至是多维空间，然后每个节点被映射到其中，然后通过算法，导航到目标节点的附近，与需要或者分享文件的用户进行接触。

用比喻来解释 DHT，「空间」就是一座城市，我寻找的东西会被转化成一个具体的地点，然后我尝试向地点接近，携带着文件的人也通过这个方法，将自己的联系方式写在了这个地点附近，等待着我的到来。



〔待续〕

## 磁力链接

磁力链接与 DHT 的关系是一体两面。

〔待续〕

## Private Tracker BT

Private Tracker BT

〔待续〕

## 协议加密

〔待续〕

## V2

〔待续〕
