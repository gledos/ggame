---
title: "DNS"
description:
published: true
date: "2025-03-07T23:50:55"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-11-09T14:51:46"
---

## 简介

DNS 是<ruby>域名系统<rt>Domain Name System</rt></ruby>的缩写，常用来表示 DNS 服务器，
比如谷歌的 8.8.8.8 就是经典的 DNS 服务器。

## 安全性

最初的 DNS 使用端口 53 的 UDP 或者进行查询（DNS-over-UDP/53），但是缺乏传输层加密、身份验证和可靠传递和消息长度，
导致容易被中间人攻击。这也是早期 GFW 主要使用的方法，被叫做 [DNS污染](/censorship/技术/DNS_污染.md)。

之后换成了使用端口 53 的 TCP 查询（DNS-over-TCP/53），改进了可靠传递和消息长度，不过安全性没有改进。

之后出现了多种更安全的方案，主要是以下四种：

| 方案名                                                         | 简称 |
| -------------------------------------------------------------- | ---- |
| [DNS over TLS](https://zh.wikipedia.org/wiki/DNS_over_TLS)     | DoT  |
| [DNS over HTTPS](https://zh.wikipedia.org/wiki/DNS_over_HTTPS) | DoH  |
| [DNSCrypt](https://zh.wikipedia.org/wiki/DNSCrypt)             | ＼   |
| [DNS over QUIC](https://en.wikipedia.org/wiki/DNS-over-QUIC)   | DoQ  |

这些本质上都使用了 TLS，虽然能避免 DNS 污染，但可能会被直接阻断。

### 红鱼 DNS

<!--
    合并来源:    /anti-censorship/DNS加密/红鱼_DNS.md
    date:        "2022-08-10T10:49:45"
    dateCreated: "2022-08-10T10:49:45"
-->

红鱼 DNS 是个 DoT & DoH 服务。

2019年7月，红鱼 DNS 的维护者在回答用户提问时指出了红鱼 DNS 含有审查功能，具体来说是白名单，
只有部分域名才会走海外解析路径，不在白名单内的仍然会受到 DNS 投毒的影响。[^91049]

[^91049]: qyb, 《[红鱼 DNS 正式发布， DoT & DoH only](https://web.archive.org/web/20220809233457/https://www.v2ex.com/t/491049?p=2)》, V2EX, 2018-09-20. (参照 2022-08-10).

### iQDNS

<!--
    合并来源:    /anti-censorship/DNS加密/iQDNS.md
    date:        "2022-10-04T08:23:29"
    dateCreated: "2022-10-04T08:23:29"
-->

iQDNS 服务启动于 2021 年的年初，随后成为个公共加密 DNS。

虽然 iQDNS 自称是纯净无污染的 DNS，[^hp] 但此服务设置了黑名单，原文是「屏蔽了对 gov 影响极差的网站。
（返回空地址，无污染）」，[^85666] 尚不明确具体的名单。

[^hp]: 《[iQDNS](https://web.archive.org/web/20210908005510/https://iqdns.xyz/all.html)》, 2021-09-08. (参照 2022-10-04).

[^85666]: johnsonwil, 《[iQDNS - 一个纯净的像少女一般的 DNS 服务](https://web.archive.org/web/20220903024540/https://www.v2ex.com/t/785666)》, V2EX, 2021-06-25. (参照 2022-10-04).

随后在 2022年10月25日，有人表示无法连上 iQDNS，运营者对此表示：「最近特殊日期，所有境内的 DOT/DOQ 节点都不稳定。」[^84435]

[^84435]: johnsonwil, 《[iQDNS 2.0 - 永久公益公共加密 DNS 新特性 新解析逻辑 完美定位国内外 CDN IP 问题](https://web.archive.org/web/20230327064952/https://www.v2ex.com/t/884435)》, V2EX, 2022-10-02. (参照 2025-03-07).

### DNS666

<!--
    合并来源:    /anti-censorship/DNS加密/DNS666.md
    date:        "2021-04-25T14:14:42"
    dateCreated: "2021-04-25T14:14:42"
-->

DNS666 是清华大学 TUNA 对校外提供的 DNS over HTTPS 服务。

NekoInverter/EhViewer 是一款基于 seven332/EhViewer 的 [E-hentai](/website/E-Hentai.md) 第三方 Android 客户端，
其中增加了 DNS 解析功能，以防止 DNS 污染。

2021年3月20日，N/E 将 DNS666 添加进新版本里，随后在 2021年4月16日 15:04，
DNS666 管理员将含有 .hath.network 的请求都阻止了。[^190][^79822]

[^190]: [DNS666事关全國數萬名網友的牛子 · Issue #190 · tuna/collection](https://web.archive.org/web/20210420035326/https://github.com/tuna/collection/issues/190), GitHub.

[^79822]: Miao Wang, 《[Replace cloudflare dns with tuna (aaf79822) · Commits · NekoInverter / EhViewer](https://web.archive.org/web/20210425140457/https://gitlab.com/NekoInverter/EhViewer/-/commit/aaf7982238fb910607acaf602252f2e27a0a5a0c)》, GitLab, 2021-04-16. (参照 2022-10-14).

理由应该在 NekoInverter/EhViewer 使用 DNS666 期间，访问流量比起平时，大约增加了 5 倍，而这让服务器带来了高负载。

> [!abstract]+ 相关页面
>
> +   [关于 DoH (#70) · Issues · NekoInverter / EhViewer · GitLab](https://web.archive.org/web/20210420035706/https://gitlab.com/NekoInverter/EhViewer/-/issues/70)
> +   [清华大学 TUNA 协会 - TUNA DNS666 域名查询服务使用许可协议](https://web.archive.org/web/20200207124119/https://tuna.moe/help/dns-license/)
> +   [DNS666事关全国数万名网友的牛子 - bangumi](https://web.archive.org/web/20210420035358/https://bgm.tv/group/topic/362474)

### 大规模中断

2025年3月4日，有用户发现各大 IP 地址的 DoH 服务都被 GFW 阻断了。包括但不限于：[^15771]

[^15771]: bollld607, 《[今天墙发大威了，包括 1.1.1.1 在内非域名的 DoH 都被干掉了](https://web.archive.org/web/20250306083225/https://v2ex.com/t/1115771)》, V2EX, 2025-03-04. (参照 2025-03-07).

| 名称           | IP 地址                                              |
| -------------- | ---------------------------------------------------- |
| Cloudflare DNS | `1.1.1.1`, `1.0.0.1`                                 |
| OpenDNS        | `208.67.222.222`, `208.67.220.220`, `208.67.222.123` |
| Quad 101       | `101.101.101.101`, `101.102.103.104`                 |
| Quad 9         | `9.9.9.9`, `149.112.112.112`                         |

有人认为这是「第十四届全国人民代表大会第三次会议」3月5日 到 3月11日 期间，[^10036] 所带来的「正常情况」。

[^10036]: 中国人大网, 《[第十四届全国人民代表大会第三次会议日程](https://web.archive.org/web/20250307154908/https://www.gov.cn/yaowen/liebiao/202503/content_7010036.htm)》, 中国政府网, 2025-03-04. (参照 2025-03-08).
