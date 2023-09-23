---
title: AirDrop
description:
published: true
date: "2022-10-21T10:13:05"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-10-21T10:13:05"
---

## 简介

AirDrop 是 iOS 7、OS X 10.7 之后添加的功能，能够使用蓝牙、Wi-Fi 进行传输文件，还可以跟陌生人传递文件。

## 安全问题

AirDrop 具有一些便利，因为当接受方的手机与分享方是联系人关系，就会显示联系人的名称，所以为了确定潜在发件人的设备是否是联系人，AirDrop 的分享方实际上会广播自己的手机和电子邮箱的部分 SHA-256。

而电话号码中的熵非常小，导致这种 SHA-256 相对容易破解，所以 2021年9月 有研究人员设计了开源的 PrivateDrop，用来实现安全的联系人校验，但苹果公司未对此做出任何回应。[^PrivateDrop]

[^PrivateDrop]: Alexander Heinrich, Matthias Hollick, Thomas Schneider, Milan Stute 与 Christian Weinert, _PrivateDrop: Practical Privacy-Preserving Authentication for Apple AirDrop_, 页码 18.

2022年2月24日，有团队发布了完整的破解方式以及 Python 程序来快速破解，只要填写从日志中解析到的前后各 5 位 SHA-256 片段（共计 10 位），以及美国或者加拿大电话号码区号，就能找到几乎唯一的结果。[^15022]

[^15022]: Brandon Epstein, Benjamin Klein 与 Derek Feuerstein, [Analysis of sysdiagnose in iOS 15 to identify the sending phone number of AirDrop data](http://doi.org/10.1111/1556-4029.15022), _Journal of Forensic Sciences_, vol. 67, no. 4, 页码 1704–1707, 2022年2月24日, doi: 10.1111/1556-4029.15022.

此工具的原理是构造区号从而降低电话号码的复杂程度，因为美国的电话号码组成格式是：+(1)(425) 555-0100，除去 +1 的国际电话区号，还有三位区号，真正的号码只有 7 位数，所以优先穷尽本地的区号，就能降低找到的难度。

而大陆的电话号码格式是，3 位网络识别号 + 2~3 位地区编码 + 7~8 位用户号码，这也是现在手机自带解析出归属地和运营商的原理，复杂度可能稍微高一些，不过找到的难度不会高出太多。

根据这个 Python 工具的测试，如果确定区码，那么美国的电话号码不到一分钟就能查找出来，但这毕竟是测试用的工具，没有适配多核，效率也不一定是最好的，经过改进后，大陆的 8 位用户号码应该也不会太慢，理论上可以在个人电脑上计算出来。

如果使用 hashcat 这种利用了 GPU 加速的软件进行计算，速度会更快，GTX 1080 Ti 的 SHA-256 速度是 4400 MH/s 左右（每秒 44 亿次 Hash）。（但是 hashcat 似乎不支持这种不完整的 Hash，所以没有进行测试）

> [!abstract]+ 相关报道
>
> +   Dan Goodin, 《[Apple’s AirDrop leaks users’ PII, and there’s not much they can do about it](https://web.archive.org/web/20220827001611/https://arstechnica.com/gadgets/2021/04/apples-airdrop-leaks-users-pii-and-theres-not-much-they-can-do-about-it/)》, Ars Technica, 2021-04-24. (参照 2022-10-21).

2022年9月23日，微信公众号「数据安全与取证」翻译了上述论文。[^7hJde]

[^7hJde]: 石冀, 《[通过分析iOS 15中的sysdiagnose日志确定AirDrop数据的发送电话号码](https://archive.ph/7hJde "https://mp.weixin.qq.com/s?__biz=MzIyNzU0NjIyMg==&mid=2247486982&idx=1&sn=de4a3bc40565ef4b9de8ed9e79c95095&chksm=e85ecb07df294211d6af9c4b29c32a5aed6feadac70a938f8414170debc2cbfe6fcf04460677")》, 数据安全与取证, 2022-09-23. (参照 2022-10-21).

2022年10月20日，盘古石发布了取证工具，根据另一个网站同名的转载内容，[^1361437] 可以看出此工具可能是在本地运行的。不过原文中的示例号码「17317267116」的 Hash 是 08a61…d3118，这跟 SHA-256 后的 Hash 不同，尚不明确原因。

[^1361437]: 《[AirDrop取证、投递设备手机号溯源，现已发布](https://web.archive.org/web/20221020201549/https://cn-sec.com/archives/1361437.html)》, CN-SEC 中文网, 2022-10-20. (参照 2022-10-21).

## 限制

2022年11月10日，iOS 更新到了 iOS 16.1.1，更新日志只显示了修正错误以及安全性，但没有提到大陆版 iPhone 的 AirDrop 功能会被限制。

9to5mac 发现这个更新会对大陆版硬件的 iPhone 调整 AirDrop 的接收所有人的隔空投送有 10 分钟的限制。[^eoad]

[^eoad]: Filipe Espósito, 《[Apple to restrict ‘Everyone’ option in AirDrop to 10 minutes in China with iOS 16.1.1 [U]](https://web.archive.org/web/20221109212240/https://9to5mac.com/2022/11/09/everyone-option-airdrop-10-minutes-china/)》, 9to5Mac, 2022-11-10. (参照 2022-11-10).

2022年12月7日，iOS 16.2 版本被发现对全地区的 iPhone 更新此功能，[^aeli162][^900954]

[^aeli162]: Juli Clover, 《[Apple Expanding 10-Minute 「Everyone」 AirDrop Limit to All Users With iOS 16.2](https://web.archive.org/web/20221208130750/https://www.macrumors.com/2022/12/07/airdrop-everyone-limit-ios-16-2/)》, MacRumors, 2022-12-07. (参照 2022-12-09).

[^900954]: Aowuwu, 《[中国不再独占"Everyone for 10 mins"的 AirDrop](https://web.archive.org/web/20221209001947/https://v2ex.com/t/900954)》, V2EX, 2022-12-08. (参照 2022-12-09).

这显然与垃圾消息无关，因为 [Cyberflashing][] 早在 2015年8月 就已经出现了，当时有人在火车上收到了陌生人发送的阴茎照片，然后其中一位受害者选择了报警，接着网络犯罪部门介入分析证据，而当时的苹果发言人拒绝置评。[^89225]

[Cyberflashing]: https://en.wikipedia.org/wiki/Cyberflashing

[^89225]: Sarah Bell, 《[Police investigate 「first cyber-flashing」 case](https://web.archive.org/web/20221125173311/https://www.bbc.com/news/technology-33889225)》, BBC News, 2015-08-13. 参照: 2022-12-09. [Online].

2023年6月7日，这天被公开的《[近距离自组网信息服务管理规定（意见征求稿）](/rule/国家互联网信息办公室/近距离自组网信息服务管理规定.md)》，被《华尔街日报》认为是针对 AirDrop 以及类似技术的限制。[^2bda3][^02907]

[^2bda3]: Yoko Kubota, 《[中国国家安全整治行动盯上苹果AirDrop类服务](https://web.archive.org/web/20230610185345/https://cn.wsj.com/articles/中国国家安全整治行动瞄准苹果公司airdrop文件共享程序-d232bda3)》, 华尔街日报中文网, 2023-06-10. (参照 2023-09-23).

[^02907]: 早报, 《[美媒：中国国家安全整治行动盯上苹果AirDrop类服务](https://web.archive.org/web/20230610065006/https://www.zaobao.com.sg/realtime/china/story20230610-1402907)》, 早报, 2023-06-10. (参照 2023-09-23).
