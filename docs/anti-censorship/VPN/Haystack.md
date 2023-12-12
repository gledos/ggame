---
title: "Haystack"
description:
published: true
date: "2023-05-06T14:22:16"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-05-06T14:22:16"
---

## 简介

Haystack 是 2009 年发行的程序，旨在为伊朗人民提供未经过滤的互联网访问。兼容 Windows、Mac 和 Unix 系统，专门针对伊朗政府的网页过滤机制。[^apfi]

[^apfi]: 《[haystack: a project for iran](https://web.archive.org/web/20100105225725/http://www.haystacknetwork.com/)》, 2010-01-05. (参照 2023-05-06).

官方宣传语如下：

> [!quote]+ Haystack
>
> Haystack 不是一个普通的代理系统。它采用复杂的数学公式将用户的真实互联网流量隐藏在看似无害的连续请求流中。除了提供匿名性之外，Haystack 还使用了强大的加密技术，确保即使检测到用户的流量也无法读取。试图在网络上的所有其他流量中找到并破译 Haystack 的流量，就像是大海捞针。
>
> 安装后，Haystack 将提供从伊朗完全不受审查的互联网访问，同时保护用户的身份。 当您尝试加载 Twitter 或访问新闻网站时，不再有 Facebook 封锁，也不再有政府警告页面，只有未经过滤的互联网。

## 消失

Haystack 是唯一的程序员开发的代理服务，但开发者过于自信，试图使用「[隐晦式安全][]」来开发密码学工具，不依靠开放源代码让公众来检测安全性，自称想要使 Haystack 成为错误的「隐晦式安全」一个正确特例，[^faq] 结果当 Haystack 在伊朗进行测试时，就被密码学专家发现了严重的漏洞，[^hstia] 随后 Haystack 唯一的程序员离职，Haystack 也就消失了。[^bh]

[^faq]: 《[haystack: faq](https://web.archive.org/web/20100111021630/http://www.haystacknetwork.com/faq)》, 2010-01-11. (参照 2023-05-06).

[^hstia]: Cecilia Kang, 《[Haystack stops tests of Iran anti-censor software amid security concerns](https://web.archive.org/web/20200920190047/http://voices.washingtonpost.com/posttech/2010/09/haystack_stops_testing_its_ant.html?wprss=posttech)》, Washington Post, 2010-09-13. (参照 2023-05-06).

[^bh]: Simon Phipps, 《[Award-Winning Haystack Security System Could Risk Iranian Lives](https://web.archive.org/web/20100917014647/http://blogs.computerworlduk.com/simon-says/2010/09/burning-haystack/index.htm)》, Computerworld UK, 2010-09-14. (参照 2023-05-06).

[隐晦式安全]: <https://zh.wikipedia.org/zh-cn/隱晦式安全>

> [!note]+ 隐晦式安全
>
> 隐晦式安全 (Security through obscurity) 主要是指通过保密，来增加安全性，比如 ShadowsocksR 曾经就是闭源软件，当时对其的批评里就有无法通过研究源码，来检测软件的安全性。
>
> 隐晦式安全对于密码学方面的软件来说，还是尽可能不用最好，不过涉及复杂的系统时，隐晦式安全就比较大行其道，比如银行金库的安全细节就不一定完全公开，防止被策划完美的劫案，虚构作品中的劫案，一般也是先获取银行金库的安全细节，才能规划适合的行动。 
