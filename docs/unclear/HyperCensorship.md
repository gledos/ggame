---
title: HyperCensorship
description:
published: true
date: "2022-10-12T21:05:00"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2022-10-12T21:05:00"
---

## 简介

HyperCensorship 是一位匿名的 GitHub 用户，自称是在珠海的一家互联网审查机构的员工。

## 泄漏内容

2022年10月11日，HyperCensorship 在 GitHub 的  net4people/bbs 仓库的 issues 讨论中发布了多条关于审查的信息：[^issues129]

[^issues129]: gfw-report, 《[Issue #129 Large scale blocking of TLS-based censorship circumvention tools in China](https://web.archive.org/web/20221012130148/https://github.com/net4people/bbs/issues/129)》, GitHub, net4people/bbs. (参照 2022-10-12).

> [!quote]+ 2022-10-11T01:42:57Z
>
> (I use multiple translators for multiple translations to confuse my idioms and avoid tracking my identity)
>
> At the invitation of some people to answer your questions, I am an employee of an internet censorship provider based in Zhuhai. We provide internet censorship services for Hong Kong, Macau, Singapore, Malaysia, etc.
>
> @klzgrad @cross-hello Positive samples about deep learning, from Hong Kong, Macau, and Singapore. Collect the Internet traffic of users in these areas, use sni to distinguish different Internet traffic, extract the native traffic of websites visited, such as Github, Google, YouTube, Twitter, Facebook, Telegram, etc., and classify them according to different websites and dates. Deep learning on this classified data is very efficient and automated with very little human effort.
>
> These deep learning samples will be used to identify proxy traffic within mainland China, because mainland Chinese users obviously cannot directly access these websites. As long as the collected user traffic in mainland China includes browsing of these non-mainland native overseas websites, they will be marked as proxy traffic and await processing.
>
> They also use the method of joint censorship in Hong Kong, Singapore and other regions. After a mainland Chinese user connects to their server in Hong Kong, Singapore and other places, they will match the corresponding local server through mainland data packets, and then they can censor the server. , marking if this is a proxy server.
>
> Some examples:
>
> +   User A, who uses 1.0.0.1 in mainland China to connect to Hong Kong 1.0.2.1 and Singapore 1.0.3.1 for proxy access, then the authorities will get all the data of Hong Kong 1.0.2.1 and 1.0.3.1 by some reasons, because the access data here Without encryption, can be used to marking if this is a proxy server.
> +   User B, who uses 1.0.0.1 in mainland China to connect to Hong Kong 1.0.2.1 forwards to Hong Kong 1.0.3.1 for proxy access, the data is still available to the authorities.
>
> For Telegram, they have a special way of censorship, and they cooperate with Singapore to capture all network transmissions located in Telegram's Singapore data center. This can be used to locate a user's proxy server and real IP in mainland China by timestamp.

> [!quote]+ 2022-10-11T02:30:35Z
>
> (I use multiple translators for multiple translations to confuse my idioms and avoid tracking my identity)
>
> Many, many countries are now participating in the Joint Internet Censorship Program.<br>
> It was originally intended to track transnational Internet criminals, but apparently it is now being abused without limits.<br>
> There are many countries that require internet censorship facilities and we provide these services for free.<br>
> Through the Joint Internet Censorship Program, other countries get free services and we get very useful data.<br>
> These countries don't have to worry about internet data security, all model training is run locally and no data packets will leave these regions.

> [!quote]+ 2022-10-11T02:36:24Z
>
> > However if traffic capturing happens at edges (which seems to be the future trend) then asymmetric paths will no longer work.
>
> Now traffic capture devices are deployed in user equipment, user edge, operator edge, operator transport, operator core, and Internet exchange.

> [!quote]+ 2022-10-11T04:01:32Z
>
> > In theory. In practice my reservation is that a "high-end" connection scrambling protocol is hard to develop, hard to operate, and those few who can afford to do both will attract high-end adversaries, i.e. not your average firewall vendors on the street but top labs and orgs in Beijing.
>
> Yep, as a former proxy protocol contributor, I was tempted to join them top labs by their high salary. No one can resist a job that pays more than $150 an hour.

> [!quote]+ 2022-10-11T06:08:55Z
>
> Servers in Hong Kong and Singapore are the first choice for many users because of their good latency, I never thought China had the ability to turn them into potential honeypots.
>
> (I use multiple translators for multiple translations to confuse my idioms and avoid tracking my identity)
>
> It is certainly interesting, Hong Kong because the authorities want to tighten their control and management of Hong Kong.<br>
> Singapore because their dictators are in great need of a sophisticated set of censorship facilities which make their cooperation possible.<br>
> Islamic countries such as Malaysia and Iran have a strong need for religious internet censorship and they too need sophisticated censorship facilities, and obviously China is the best partner.<br>
> As for Russia, there is very strong computer power, Russians always have different ideas and quite strong logical thinking, mathematical skills, etc. These people can always achieve amazing things where we can't see or think of them, like nginx, 7zip, but Russians are very bad at hardware equipment, so the Russians work with the Chinese, the Russians provide the theoretical support The Russians provide the theoretical support and all sorts of different ideas, and the Chinese actually implement them and produce them at a good price, which is a strong partnership.
>
> Interestingly, since the last three years, more than 50% of the RTX series of graphics cards on the market, they are bought in bulk by the authorities for deep learning for internet censorship, stating externally that some of these ETH and BTC mines. This has led to many graphics cards being bought by the authorities at high prices before they have even reached the market.
