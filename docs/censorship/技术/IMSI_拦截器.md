---
title: "IMSI 拦截器"
description:
published: true
date: "2023-11-01T12:48:30"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-11-01T12:48:30"
---

## 简介

IMSI 拦截器（[IMSI-catcher][]）俗称 Stingray。正如其名，能够捕获手机的 IMSI，而 IMSI 具有唯一性，
所以 IMSI 拦截器是一种间谍设备。

[IMSI-catcher]: https://en.wikipedia.org/wiki/IMSI-catcher

上面将其称为「间谍设备」，是因为国土安全部发现有人在华盛顿 DC，使用了 IMSI 拦截器，这被视作间谍活动，
自然 IMSI 拦截器也属于间谍工具，而政府使用的 IMSI 拦截器已经过授权。[^22248]（如果没有意外的话）

[^22248]: Andrew Liptak, [_Homeland Security detected signs of cell phone spying in Washington DC_](https://www.theverge.com/2018/6/3/17422248/imsi-catcher-stingray-dhs-cell-phone-spying-washington-dc-white-house-donald-trump), The Verge, 2018-06-03. (参照 2023-11-01).

IMSI 拦截器可以小型化到手提箱的大小，然后伪装成基站，与手机连接，从而获取各种元数据，甚至是中间人攻击。

对此，3GPP 开发了 [TMSI]，这是让 IMSI 在部分情况下，随机化的功能。不过安全性有限，有研究认为 TMSI 存在漏洞，
并不能达到保护隐私的预期。[^23082]

[TMSI]: https://en.wikipedia.org/wiki/Mobility_management#TMSI

[^23082]: Myrto Arapinis, Loretta Ilaria Mancini, Eike Ritter, Mark Ryan, _Privacy through Pseudonymity in Mobile Telephony Systems_, doi: [10.14722/ndss.2014.23082](http://doi.org/10.14722/ndss.2014.23082).

一个美国异议者，即使用着虚假的 IP，异地的 DNS，随机的 MAC 地址，坚固的 Tor 浏览器，以及斯诺登推荐的 Tails 系统。
也可能因为 IMSI 拦截器，而被发现参与了某起违法活动。

不过严格的说，IMSI 拦截器仅对分权、法制政府有效果。因为运营商的基站定位的数据，不会轻易的分享，
需要搜查令才能调查手机轨迹。

附言：郑州千玺广场，在 2023年10月 的月末，似乎安装了 IMSI 拦截器。具有专业知识的人如此解释到：

> [!quote]+ 解释[^56953]
>
> 我看到了您发送了一篇关于郑州干禧广场悼念现场紧急安装摄像头的一则推
> 文，并不是所看到的那么简单，同时安装的还有信息采集设备，我会简单介
> 绍一下这类设备，简单来说就是伪基站，通过采集手机号的 IMSI，来采集信
> 息，手机号已经实名制了，这样一个 IMSI 对应一个身份证号，所有去过现场
> 的人基本都会被后台监控到，这类设备通常运营商会给予最高优接入先级，
> 手机接入后立刻踢掉，这样就避免用户长时间断网引起怀疑，这是已经很成
> 熟的技术侦察手段，从 2G 到 5G 都有，根据您发送的图片来看，只有 4G 和 5G
> 的板状天线，没有看到 2G 的八木天线，采集范围周围几百米，采集效率对于
> 步行的人群采集率能达到百分之 95，如果想要避免此类设备的采集，只有关
> 机这一种选择

[^56953]: 李老师不是你老师, 《[网友解读昨天郑州千玺广场临时紧急安装的摄像头其实并不是表面那么简单，同时安装的还有信息采集设备](https://web.archive.org/web/20240106003719/https://nitter.net/whyyoutouzhele/status/1719000944510156953)》, X（Twitter）, 2023-10-30. (参照 2023-11-01).
