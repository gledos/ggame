---
title: "Safe Browsing"
description:
published: true
date: "2023-01-12T23:11:01"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-01-12T23:11:01"
---

## 简介

Safe Browsing 是 Google 公司制作的服务，能够检查有钓鱼、病毒风险的网页，Safe Browsing API 是可以开放给第三方软件使用工具。

也有其他公司制作兼容 Safe Browsing 的 API，作为 Safe Browsing API 提供商。

## Safe Browsing API

> [!info]+ Safe Browsing API
>
> 这是谷歌设计的防网页钓鱼、恶意软件服务，Google Chrome, Safari, Firefox, Vivaldi, Brave 等软件都有使用。
>
> Safe Browsing API 有两个 API，分别是 Lookup API 和 Update API：
>
> Lookup API 会将直接将所有遇到的 URL 直接传输给谷歌，这有较大的隐私风险，所以现在几乎没有软件使用此 API 了，因为 Update API 更符合保护隐私的想法。
>
> [Update API](https://developers.google.com/safe-browsing/v4/update-api) 会下载一份 4 字节（32 比特）SHA256 (SHA-2) 的哈希前缀数据库，然后在本地进行比对，命中后再让客户端发送 4~32 字节的 SHA256 哈希前缀到谷歌（即 8~64 个 16 进制的数字），然后下载完整的清单进行比对。之所以这么设计，主要还是降低内存占用和网络。
>
> [决定发送的字节数是由客户端决定的](https://github.com/google/safebrowsing/issues/41)，如果是为了隐私，最好都发送 4 字节的哈希前缀，如果想要降低网络流量使用，可以适量增加些字节数。

> [!info]+ Safe Browsing API 的安全风险
>
> Update API 的匿名性原理是 k-匿名化 ([k-anonymity](https://en.wikipedia.org/wiki/K-anonymity))，即在一组结构化的具体到个人的数据中，无法别到个人信息，不过 k-匿名化还是有安全风险。
>
> 2013 年时，一个 4 字节的哈希前缀，平均对应 4 亿个 URL，所以单纯的上传一个哈希前缀，网址很安全，有数亿个 URL 掩护。
>
> 但 Update API 具有分解 URL 的功能，比如 `https://www.example.com/test/abc.html` 这个 URL 会被分解成：
> 
> ```
> www.example.com/test/abc.html
> www.example.com/test/
> www.example.com/
> example.com/test/abc.html
> example.com/test/
> example.com/
> ```
>
> 如果提供者的清单包含上面这些 URL，那么访问 ` 时，就会命中上述的 6 个哈希前缀，然后 Update API 会把这 6 个哈希前缀都发送给 Safe Browsing API 的提供商，这就能大大的提高提供商识别的精度，让 k-匿名化变弱。
>
> 所以为了保证用户的隐私，Safe Browsing API 提供商应该防止清单出现包含关系的 URL，但是很遗憾，Google 和 Yandex 都没能做到，虽然这些清单都是哈希黑箱，不知道 URL 明文，但有科学家通过公开的恶意网站清单，还原了一部分 Google 和 Yandex 的清单，从中找到了包含关系的 URL 哈希前缀。
>
> 然后因为清单都是哈希黑箱，那么提供商是否会构建一些恶意的 4 字节的哈希，当作探针使用，这没人知道。
>
> 本文主要参考自 Thomas Gerbet, Amrit Kumar, Cédric Lauradoux 的论文 [A Privacy Analysis of Google and Yandex Safe Browsing](https://hal.inria.fr/hal-01120186v4)
