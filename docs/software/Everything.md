---
title: Everything
description:
published: true
date: "2022-09-18T14:22:42"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-09-18T14:22:42"
---

## 简介

Everything 是 Windows 下搜索硬盘文件的工具。

## 更新劫持

LuoYu APT 组织的 WinDealer 进行了针对 Everything 用户的攻击，通过捕获并控制用户 DNS 请求，或者具备 ISP 级别的黑客工具，从而监控人们的网络流量。[^878475]

[^878475]: KomeijiSatori, 《[Everything 更新服务疑被劫持](https://web.archive.org/web/20220908114128/https://v2ex.com/t/878475)》, V2EX, 2022-09-07. (参照 2022-09-18).

然后让 Everything 用户下载到被添加了木马的软件更新，接着木马软件会进行这些操作。

+   扫描硬盘
+   访问注册表
+   快速创建和删除大量临时文件
+   UDP 通讯 发送包内容全为 0x00 ,但是包长度不固定

但相关讨论似乎受到了限制，绿盟科技 CERT 发布的调查报告也很快删除了。[^b2irp]

[^b2irp]: NS-CERT, 《[【安全事件】针对Everything更新劫持的APT攻击事件解析](https://archive.ph/b2irp)》, 微信公众号/绿盟科技CERT, 2022-09-14. (参照 2022-09-18). 通告编号:NS-2022-0026
