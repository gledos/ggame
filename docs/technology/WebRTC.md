---
title: WebRTC
description:
published: true
date: "2022-10-26T14:29:06"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-10-26T14:29:06"
---

## 简介

WebRTC 是 <ruby>Web Real-Time Communication<rp>(</rp><rt>网页即时通信</rt><rp>)</rp></ruby> 的缩写，是一个支持网页浏览器进行实时语音对话或视频对话的 API。它于 2011年6月1日 开源并在 Google、Mozilla 和 Opera 支持下被纳入万维网联盟的 W3C 推荐标准。[^wiki]

[^wiki]: 《[WebRTC](https://zh.wikipedia.org/wiki/WebRTC)》, 维基百科. 2022-08-18. 参照: 2022-10-26. [Online].

## 漏洞

WebRTC 存在一个严重的问题，默认情况的设置下，使用 VPN 的依然可能会造成直连的情况，从而暴露真实的 IP 地址。

如果要测试浏览器是否会出现 WebRTC 泄漏，可以进入 [WebRTC Leak Test][] 这个网站进行测试。

[WebRTC Leak Test]: https://browserleaks.com/webrtc

