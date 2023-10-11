---
title: "GFW"
description:
published: true
date: "2023-09-17T18:42:22"
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

## 直接限制 VPN 使用者

> [!note]+ 备注
>
> 本文与 GFW 关系不大，待拆分到其他合适的条目。

2023年8月 ~ 9月，有手机用户遭到停机，咨询后得知：「因为安装了 Telegram 之类的，诈骗高风险软件」。如要恢复，需要去营业厅检查和签承诺书。[^72773][^mx1568]

[^72773]: leyun2017, 《[手机因为安装了 telegram 导致号码被停机，移动要求带着手机去营业厅检查和签承诺书怎么办](https://web.archive.org/web/20230911094253/https://v2ex.com/t/972773)》, V2EX, 2023-09-11. (参照 2023-09-17).

[^mx1568]: 萌欣的小窝, 「[详情：昨天手机号被移动公司冻结了……](https://web.archive.org/web/20230809141331/https://t.me/s/mengxin10824_chan/1568)」, Telegram, 2023-06-24. (参照 2023-10-09).

> [!note]+ 原因猜测
>
> Telegram 即使设置了代理，也会在部分时候直连。或者在代理软件未启动时，Telegram 后台自启并进行网络连接。因此暴露手机安装了 Telegram。
>
> 解决方法可能需要使用 AFWall+ 等防火墙，禁止 Telegram 等软件的直连，尽量避免泄漏任何 Telegram 的痕迹。
>
> 另一个较低的可能性是系统或者某些软件，读取了手机上已安装的软件清单，并上传。随后分享给了运营商，所以运营商知晓了用户安装了 Telegram。

2023年9月15日 或 16 日，多个内蒙古自治区乌海市的手机用户，收到了公安局的群发短信：[^76760][^68249]

[^76760]: 李老师不是你老师, 「[9月16日，内蒙古乌海市的市民收到了公安局的群发短信，称“您的手机疑似安装了VPN等‘翻墙’软件，请及时卸载”。](https://web.archive.org/web/20230917065206/https://twitter.com/whyyoutouzhele/status/1702992057596276760)」, X（Twitter）, 2023-09-16. (参照 2023-09-17).

[^68249]: 吴文行wenxingwu, 「[嗅觉这么灵敏？……](http://archive.today/2023.09.17-074248/https://twitter.com/wuwenhang/status/1702951041279668249 "http://archive.today/pXv44")」, X（Twitter）, 2023-09-16. (参照 2023-09-17).

> [!quote]+ 短信
>
> 【乌海市公安局】【乌海市公安局】：您的手机疑似安装了 VPN 等“翻墙”软件，请及时检查并卸载。否则，公安机关将依据《[中华人民共和国计算机信息网络国际联网管理暂行规定](/rule/国务院/中华人民共和国计算机信息网络国际联网管理暂行规定.md)》第六条、第十四条之规定给予警告，并处 15000 元一下罚款。

2023年9月16日，江西某高校发布通知：[^19432]

[^19432]: 李老师不是你老师, 「[9月16日，江西某高校发布通知 将开展网络“翻墙”问题专项排查整治活动……](http://archive.today/2023.09.17-074253/https://twitter.com/whyyoutouzhele/status/1702983498489819432 "http://archive.today/2pvG6")」, X（Twitter）, 2023-09-16. (参照 2023-09-17).

> [!quote]+ 【关于开展网络“翻墙”问题专项排查政治活动的通知】
>
> “翻墙”属于违法行为，根据《[中华人民共和国计算机信息网络国际联网管理暂行规定](/rule/国务院/中华人民共和国计算机信息网络国际联网管理暂行规定.md)》相关条款明确，“计算机信息网络直接进行国际联网，必须使用邮电部国家共用电信网提供的国际出入口信道。任何单位和个人不得自行建立或者擅自使用其他信道进行国际联网，违反上述规定的，由公安机关责令停止联网，给予警告，可以并处 15000 元一下的罚款；有违法所得的，没收违法所得”。
>
> 请班上同学一定强化遵纪守法观念和安全防范意识，做到科学规范上网。根据学校安排，现请各班周末 2 天内完成自查，做好统计摸排，并填写各班《自查表》；
>
> 下周开始，智慧校园管理中心技术排查阶段（9月18日 - 25日），将安排技术人员才用网络流量勘察和现场检测方式开展整治活动，请大家不要以身试法。
>
> 《班级-网络“翻墙”自查
> 表》【报送时间】9月17日（周
> 〇）〇〇〇〇〇【报送邮箱】：
> 〇〇〇〇〇〇〇〇〇〇
>
> 谢谢大家！

备注：「〇」表示被遮挡的文字。

## 2023年10月1日 多域名被封锁

2023年10月1日，多个域名被封锁，包括 Minecraft、Visual Studio Code，原理是 DNS 污染，访问这些域名会被重定向到「[国家反诈中心](/censorship/国家反诈中心.md)」页面。[^08371]

[^08371]: 林小槐, 《[部分地区（主要是移动）把 mojang 的正版验证 API 给屏蔽掉了 xs](https://web.archive.org/web/20231002015758/https://twitter.com/Stapx_Happy/status/1708305027293708371)》, X（Twitter）, 2023-10-01. (参照 2023-10-02).

[Cloudflare](/serviceprovider/Cloudflare.md) 的 `https://1.1.1.1` 也被发现遭到干扰。

> [!abstract]+ 找到影响的域名清单
>
> +   [https://api.minecraftservices.com](https://web.archive.org/web/20231001024856/https://www.17ce.com/site/http/20231001_ba8ef210600411eeac17e316c626d952:1.html), 17CE.
> +   [https://api.mojang.com](https://web.archive.org/web/20231001025239/https://www.17ce.com/site/http/20231001_142c61e0600511ee9594d1b290c5208d:1.html), 17CE.
> +   [https://code.visualstudio.com/](https://web.archive.org/web/20231001064755/https://www.17ce.com/site/http/20231001_0b1fc800602611eeac17e316c626d952:1.html), 17CE.
> +   [https://vercel.com/](https://web.archive.org/web/20231001064730/https://www.17ce.com/site/http/20231001_d1a7b6f0602511ee9594d1b290c5208d:1.html), 17CE.
> +   [https://www.minecraft.net](https://web.archive.org/web/20231001025634/https://www.17ce.com/site/http/20231001_e4567b80600511ee9594d1b290c5208d:1.html#s304437), 17CE.
> +   [https://1.1.1.1](https://web.archive.org/web/20231002015338/https://17ce.com/site/http/20231002_a5ed427060b911ee9594d1b290c5208d:1.html)》, 17CE.
