---
title: TCP重置攻击
description:
published: true
date: 2022-01-30T16:20:02.309Z
tags:
editor: markdown
dateCreated: 2022-01-30T16:20:02.309Z
---

## 简介

[TCP 重置攻击](https://zh.wikipedia.org/wiki/TCP重置攻击) (TCP reset attack) 是通过伪造的 TCP 重置包，干扰网络连接的技术，是一种 [旁观者攻击](https://zh.wikipedia.org/wiki/旁观者攻击) 。

因为 TCP/IP 没有内置确认通讯者身份的方法，只有一个扩展协议 IPSec 含有身份认证系统，所以 TCP 重置攻击相当的易用。

```Mermaid
sequenceDiagram
    participant A
    participant B
    A ->> B: FIN seq=x
    B ->> A: ACK x+1
    B ->> A: FIN seq=y
    A ->> B: ACK y+1
```

+ 相关链接
    + [How does a TCP Reset Attack work? - Robert Heaton](https://robertheaton.com/2020/04/27/how-does-a-tcp-reset-attack-work/)
    + [TCP 重置攻击的工作原理 - SegmentFault 思否](https://web.archive.org/web/20220130104858/https://segmentfault.com/a/1190000022954874)
