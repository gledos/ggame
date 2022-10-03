---
title: Google
description:
published: true
date: "2022-10-03T14:16:55"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-09-11T21:40:29"
---

## 简介

> [!summary inline end]+ 元数据
>
> ![标志](https://s3.tebi.io/ggame/company/Google/Google_2015_logo.svg)[^logo]
>
> ```yaml
> 标题:
> - 英文: Google
> - 中文: 谷歌
> ```

[^logo]: [谷歌徽标](https://commons.wikimedia.org/wiki/File:Google_2015_logo.svg), wikimedia commons.

Google 是总部位于美国加州山景城的跨国科技公司，是 Alphabet 的子公司，业务范围涵盖互联网广告、互联网搜索、云计算等领域，开发并提供大量基于互联网的产品与服务，其主要利润来自 Ads 等广告服务。

Google 现在拥有众多产品，包括电子邮箱 [Gmail][]，流媒体平台 [YouTube][] 还有手机系统 Android 等。

[Gmail]: /company/Google/Gmail.md
[YouTube]: /company/Google/Youtube.md

## 重定向

2010年3月23日，因为被网络攻击以及不断遭到审查的原因，Google 将 cn 域名跳转到了 com.hk 的 Google 香港，希望这样合法的操作能得到大陆政府的尊重。[^g100323]

[^g100323]: 《[关于谷歌中国的最新声明](https://web.archive.org/web/20220726032957/https://www.google.com/press/new-approach-to-china/update.html)》, Google, 2010-03-23. (参照 2022-09-18).

## 敏感词提醒功能

2012年5月31日，Google 上线了「敏感词提醒功能」，此功能没有正式的名称，但可以告知即将导致 TCP 重置的敏感词。并且使用拼音搜索能够实现和汉字词语接近的体验，比如使用 changjiang 代替「长江」。[^bsimc]

[^bsimc]: Alan Eustace, Senior Vice President 与 Knowledge, 《[Inside Search: Better search in mainland China](https://web.archive.org/web/20150328030011/http://insidesearch.blogspot.hk/2012/05/better-search-in-mainland-china.html?hl=zh-Hans&rd=1)》, The official Google Search blog, 2012-05-31. (参照 2022-09-11).

原理是 JavaScript 脚本里含有被编码后的正则式，所以有人提取除了 Google 整理的敏感词。[^ggb] 发现了敏感词超过 400 条，并且单字的敏感词有 16 个，分别是王、江、周、胡、刘、李、吴、毛、温、习、贺、贾、彭、潭、轭和馿。

[^ggb]: caiguanhao, 《[Google收集的GFW屏蔽关键词（敏感词）](https://web.archive.org/web/20201109231800/https://caiguanhao.wordpress.com/2012/06/01/google-gfw-blacklist/)》, 天天都是一样, 2012-06-01. (参照 2022-09-11).

但此功能的脚本链接也遭到了多次屏蔽，Google 方面也在更换脚本的位置，最终内嵌到了谷歌搜索页面中。[^gbdcgc_c][^gbdcgc_e]

[^gbdcgc_c]: percy, 《[Google在审查问题上向中国政府低头](https://web.archive.org/web/20130514070955/https://zh.greatfire.org/blog/2013/jan/google-bows-down-chinese-government-censorship)》, GreatFire.org, 2013-01-04. (参照 2022-09-11).
[^gbdcgc_e]: percy, 《[Google Bows Down To Chinese Government On Censorship](https://web.archive.org/web/20130104112055/https://en.greatfire.org/blog/2013/jan/google-bows-down-chinese-government-censorship)》, GreatFire.org, 2013-01-04. (参照 2022-09-11).

2012年12月5日 到 8日 期间，谷歌将此功能移除了，并且删除了相关的帮助文档。

## 长沙杨飞的研究

2015年2月20日，长沙杨飞发布了文章《[深度分析|为什么我们不能访问谷歌？][]》，详细研究了大量的 Google 无法访问的原因。

[深度分析|为什么我们不能访问谷歌？]: http://www.midphoto.com/chinese/whatsnew/2016/2.htm

但此文存在一个小问题，其中引用了被认为是陈云说的话：

> 在国民党统治时期，制定了一个新闻法，我们共产党人仔细研究它的字句，抓它的辫子，钻它的空子。现在我们当权，我看还是不要新闻法好，免得人家钻我们空子。没有法，我们主动，想怎样控制就怎样控制。

这句话找不到明确的出处，但也未被辟谣。

备注：文章的最后，预告了第二片分析文章《为什么我们不能访问Facebook和Twitter》，但作者没有时间写，所以一直没有发布。[^03729]

[^03729]: 杨飞, 「[后文一直没写，没时间。如果要写，大致会和谷歌那篇差不多。](https://web.archive.org/web/20220911143608/http://users.smartgb.com/g/g.php?a=s&i=g17-03729-65&m=all&p=1)」, 杨飞的留言板, 2020-04-07. (参照 2022-09-11).

## 2022年大规模封锁

2022年9月22日，`google.com` 和 `*.google.com` 域名被加入到 GFW 的 SNI 黑名单中，2022年9月30日 上述域名遭到了 DNS 污染。[^nb128] 受到影响的服务包括但不限于：

[^nb128]: gfw-report, 《[The Great Firewall of China has blocked google.com and all its subdomains](https://web.archive.org/web/20221002155034/https://github.com/net4people/bbs/issues/128)》, GitHub Issue/net4people/bbs#128, 2022-10-01. (参照 2022-10-03).

+   Google FCM：`mtalk.google.com`
+   Google 软件下载以及更新：`dl.google.com`，主要影响：
    +   Google Chrome
    +   Android Studio
+   `ocsp.pki.goog` 和 `crls.pki.goog` 的 CNAME 指向 `*.google.com`，导致 Google Trust Services 签发的证书 OCSP 和 CRL 不可用。

2022年9月29日，[Google 翻译](/company/Google/Google翻译.md) 在大陆部分地区被谷歌关闭，随后 Google 表示由于使用率低，所以停止了大陆的 Google 翻译。[^3c9Ht] 据 Telegram「呐!cn 频道」的消息：「据内部人士透露, 由于大会临近, 上级部门要求 Google 中国区部分业务下线整改, 恢复时间未知」「据 Google 中国区消费者业务部门内部人士透露, Google 中国区部分业务因为备案合规性问题下线整改」。[^tgn]

[^3c9Ht]: Kyle Wiggers, 《[Google appears to have disabled Google Translate in parts of China](https://archive.ph/3c9Ht "https://techcrunch.com/2022/09/30/google-appears-to-have-disabled-google-translate-in-parts-of-china/")》, TechCrunch, 2022-09-30. (参照 2022-10-03).

[^tgn]: 呐!cn 频道, 「[据内部人士透露, 由于大会临近, 上级部门要求 Google 中国区部分业务下线整改, 恢复时间未知](https://web.archive.org/web/20221003034851/https://t.me/s/Na_cn/938)」, Telegram, 2022-09-30. (参照 2022-10-03).

2022年9月30日，Google Analytics 的域名 `www.googletagmanager.com` 遭到了 DNS 污染，[^17345]

[^17345]: William Long, 「[谷歌分析（Google Analytics）的服务器被中国封了。](https://web.archive.org/web/20220930093116/https://twitter.com/williamlong/status/1575755252137017345)」, Twitter, 2022-09-30. (参照 2022-10-03).

2022年10月2日，Google 部分服务的域名被解除了网络封锁，具体来说恢复的有 `dl.google.com`, `www.googletagmanager.com`, `tools.google.com`, `fonts.gstatic.com` 和 `google.com`（仅解除 DNS 污染），尚未恢复的有 `google.com.*`, `dl-ssl.google.com` 和 `translate.googleapis.com`。[^35392][^1080360][^884153]

[^35392]: William Long, 「[10月2日再次进行域名检测，发现谷歌分析的域名已经处于未被污染的状态，谷歌分析（Google Analytics）统计代码也恢复正常可以访问，因此判断之前的操作应该是误封。](https://web.archive.org/web/20220930093116/https://twitter.com/williamlong/status/1575755252137017345)」, Twitter, 2022-10-02. (参照 2022-10-03).

[^1080360]: hellochrome, 《[[更新：部分污染已解除] dl.google.com 等域名被污染](https://web.archive.org/web/20221003041210/https://hostloc.com/thread-1080360-1-1.html)》, 全球主机交流论坛, 2022-09-30. (参照 2022-10-03).

[^884153]: 872517414, 《[google.com 已被 DNS 污染](https://web.archive.org/web/20221001013459/https://www.v2ex.com/t/884153)》, V2EX/水深火热, 2022-09-30. (参照 2022-10-03).
