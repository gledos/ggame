---
title: "GFW"
description:
published: true
date: "2023-02-17T17:44:15"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-02-17T17:44:15"
---

## 简介

Great Firewall 简称 GFW，被用来描述大陆的网络封锁，因为这种审查的本质上是一个巨型网络防火墙，所以有人将<ruby>长城<rp>(</rp><rt>Great Wall</rt><rp>)</rp></ruby>这个词变体为了<ruby>长城防火墙<rp>(</rp><rt>Great Firewall</rt><rp>)</rp></ruby>。

## 原理

GFW 有许多手段阻止网络连接，其中包括但不限于：

+   [DNS污染](/censorship/技术/DNS污染.md)
+   [TCP重置攻击](/censorship/技术/TCP重置攻击.md)
+   深度包检测
+   SNI 干扰机制（网络劣化）
+   中间人攻击

## 一些历史

2021年3月，[GitHub 遭到了网络劣化](/website/GitHub.md#网络劣化)。但在 2023年2月17日，被发现相关劣化解除了，并且 Steam 的网络劣化也消失了（仅指 store.steampowered.com）。[^916909]

[^916909]: XIU2, 《[Steam、Github 域名疑似已解除 SNI 干扰（已无法复现），可以正常链接了？](https://web.archive.org/web/20230217093733/https://www.v2ex.com/t/916909)》, V2EX, 2023-02-17. (参照 2023-02-17).

## 河南审查加强

2023年8月5日，河南被洛阳联通电信发现加强了网络审查，[^62578] 最初有人以为是白名单，后来进行实验后发现是某种根据侵略性的黑名单。并且如果设备上开启了 RFC 1323 时间戳这个功能，就不会感受到被强化后的 GFW 的效果。[^i2229][^i2426]

[^62578]: benbeu, 《[河南洛阳联通电信好像都是域名白名单了，有了解的朋友嘛？](https://web.archive.org/web/20230812184100/https://www.v2ex.com/t/962578)》, V2EX, 2023-08-05. (参照 2023-08-13).

[^i2229]: toyo2333, 《[reality里client-fingerprint可以不同端用一套么？ · Issue #2229 · XTLS/Xray-core](https://web.archive.org/web/20230812225350/https://github.com/XTLS/Xray-core/issues/2229)》, GitHub, 2023-06-20. (参照 2023-08-13).

[^i2426]: 5e2t, 《[河南新上的SNI/HOST黑名单墙 · Issue #2426 · XTLS/Xray-core](https://web.archive.org/web/20230813032548/https://github.com/XTLS/Xray-core/issues/2426)》, GitHub, 2023-08-10. (参照 2023-08-13).

2023年8月14日，有博主表示自己没有备案的博客，被河南的新型 GFW 审查模式给阻断了。[^asbt]

[^asbt]: MisakaNo, 《[启用 TCP timestamps 以解决 SNI 阻断问题](https://web.archive.org/web/20230828102030/https://blog.misaka.rest/2023/08/14/anti-sni-block-timestamps/)》, MisakaNo の 小破站, 2023-08-14. (参照 2023-09-04).

2023年9月2日，V2EX 上有讨论贴讨论了家宽自建非常规端口的 HTTP 服务器遇到的问题，大致表示河南的新型 GFW 审查模式会阻断没有备案的域名。[^70368]

[^70368]: lanwairen123, 《[在河南郑州除了 vpn 还有访问自建 http/https 服务的途径吗，杀疯了](https://web.archive.org/web/20230904025320/https://www.v2ex.com/t/970368)》, V2EX, 2023-09-02. (参照 2023-09-04).
