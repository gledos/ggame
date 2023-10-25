---
title: "DNS"
description:
published: true
date: "2022-11-09T14:51:46"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-11-09T14:51:46"
---

## 简介

DNS 是<ruby>域名系统<rp>(</rp><rt>Domain Name System</rt><rp>)</rp></ruby>的缩写，常用来表示 DNS 服务器，比如谷歌的 8.8.8.8 就是经典的 DNS 服务器。

## 安全性

最初的 DNS 使用端口 53 的 UDP 或者进行查询（DNS-over-UDP/53），但是缺乏传输层加密、身份验证和可靠传递和消息长度，导致容易被中间人攻击。这也是早期 GFW 主要使用的方法，被叫做 [DNS污染](/censorship/技术/DNS_污染.md)。

之后换成了使用端口 53 的 TCP 查询（DNS-over-TCP/53），改进了可靠传递和消息长度，不过安全性没有改进。

之后出现了多种更安全的方案，主要是以下三种：

| 方案名             | 简称 |
| ------------------ | ---- |
| [DNS over TLS][]   | DoT  |
| [DNS over HTTPS][] | DoH  |
| [DNSCrypt][]       | ＼   |

[DNS over TLS]: https://zh.wikipedia.org/wiki/DNS_over_TLS
[DNS over HTTPS]: https://zh.wikipedia.org/wiki/DNS_over_HTTPS
[DNSCrypt]: https://zh.wikipedia.org/wiki/DNSCrypt

这些本质上都使用了 TLS，虽然能避免 DNS 污染，但可能会被直接阻断。
