---
title: AntiChinaCerts
description:
published: true
date: 2022-05-07T16:18:13.098+08:00
特殊标签标记: #无标签
editor: markdown
dateCreated: 2022-05-07T16:18:13.098+08:00
---

## 简介

这是全自动可疑证书吊销工具，支持 Android、Linux、Mac 和 Windows 系统，作者是 chengr28 。

软件的 Github 页面被删除前，Star 数量达到了 3524。[^gr]

[^gr]: 《[chengr28/RevokeChinaCerts](https://web.archive.org/web/20190811025104/https://github.com/chengr28/RevokeChinaCerts)》, GitHub, 2019-08-11. (参照 2022-05-07).

吊销的 CA 根证书有：

+   Base 版本
    +   CNNIC ROOT
    +   China Internet Network Information Center EV Certificates Root
    +   Fake Github[^gh_mitm]
+   Extended 版本
    +   CFCA GT CA
    +   CFCA EV ROOT
    +   UCA Global Root
    +   UCA Root
    +   UCA EV Root
+   All 版本
    +   ROOTCA
    +   SRCA
    +   Certification Authority of WoSign
    +   CA 沃通根证书
    +   Class 1 Primary CA/WoSign 1999
    +   China Trust Network(1)
    +   China Trust Network(2)
    +   China Trust Network(3) 

[^gh_mitm]: GFW 对 Github、Google 发起中间人攻击所使用的证书，详情请阅读 Erik Hjelmvik, 《[Analysis of Chinese MITM on Google](https://web.archive.org/web/20220416003810/https://www.netresec.com/?page=Blog&month=2014-09&post=Analysis-of-Chinese-MITM-on-Google)》, Netresec, 2014-09-04. (参照 2022-05-07).

## 移除仓库

2019年8月11日 之后，2019年10月3日 之前的某个时间，[^135921]作者 chengr28 移除了此软件的 Github 仓库。[^7130]

[^135921]: chengr28, 《[AntiChinaCerts 小工具，全自动吊销天朝证书](https://web.archive.org/web/20220507082619/https://www.v2ex.com/t/135921)》, V2EX, 2014-09-26. (参照 2022-05-07).

[^7130]: vpxuz, 《[【Github项目备份】全自动可疑证书吊销工具（chengr28）](https://pincong.rocks/article/7130)》, 新·品葱, 2019-10-27. (参照 2022-05-07).
