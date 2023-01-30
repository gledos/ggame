---
title: "Zoom"
description:
published: true
date: "2023-01-30T12:40:50"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-01-30T12:40:50"
---

## 简介

> [!summary inline end]+ 元数据
>
> ![标志](https://s3.tebi.io/ggame/ShareX/software_Zoom_Logo_2022.svg "https://commons.wikimedia.org/wiki/File:Zoom_Logo_2022.svg")

Zoom Meetings 是一款由 Zoom Video Communications 开发的专有视频对话软件。其免费方案支持最多 100名 与会者同时参与，并设有 40 分钟的时长限制。用户亦可透过订阅付费方案升级，当中最高级方案支持最多 1000 名与会者同时参与、长达 30 小时的会议。[^wiki]

[^wiki]: https://zh.wikipedia.org/zh-cn/Zoom_(軟體)

在 2019 冠状病毒病疫情期间，利用 Zoom 作远距工作、遥距教育和在线社交关系的需求大增，使 Zoom 成为 2020 年全球下载量第五多的手机应用程序，达 4 亿 7730 万次。

## 使用大陆服务器

2020年4月3日，「公民实验室」通过研究 Zoom 的通讯，发现 Zoom 的加密方案存在明显弱点：[^mfryo]

[^mfryo]: Bill Marczak, John Scott-Railton, [_Move Fast and Roll Your Own Crypto: A Quick Look at the Confidentiality of Zoom Meetings_](https://web.archive.org/web/20230118185220/https://citizenlab.ca/2020/04/move-fast-roll-your-own-crypto-a-quick-look-at-the-confidentiality-of-zoom-meetings/), University of Toronto, Citizen Lab Research Report No. 126, 4月 2020. 参照: 2023-01-30. [Online].

1.  Zoom 并未使用 AES-256 加密，而是使用 AES-ECB 128

    并且这个 ECB (Electronic codebook) 加密方式存在明显的漏洞

2.  即使所有的会议参与者都在中国之外，Zoom 的加密密钥还是回从中国的服务器分发到其他地区

    这令人担忧，因为 Zoom 在 法律上可能有义务向中国当局披露这些密钥，并且不能向外界告知自己的披露行为

## 禁止大陆用户使用

2020年5月，中国政府通知 Zoom 上有大型的公开纪念六四会议。此活动在中国是非法的，并要求 Zoom 终止这些会议和主持人帐户。随后 Zoom 被告知或确定了有四个这种会议。

而 Zoom 通过元数据（比如 IP 地址）发现其中有大陆的参与者，因此，我们决定了结束四个会议中的三个，并暂停或终止了与这三个会议相关的主持人帐户。

之后 Zoom 受到了严厉的调查，之后 Zoom 表示「不允许让中国政府的要求影响中国大陆以外的任何人。」[^iopaw]

[^iopaw]: Zoom, 《[我们将继续支持全球合作，同时我们也要改善政策](https://web.archive.org/web/20200809105730/https://blog.zoom.us/zh/improving-our-policies-as-we-continue-to-enable-global-collaboration/)》, Zoom Blog, 2020-06-11. (参照 2023-01-30).
