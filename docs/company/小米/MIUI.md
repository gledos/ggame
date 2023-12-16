---
title: MIUI
description:
published: true
date: "2023-12-12T12:11:50"
tags:
- operating-system
- dns
- 回审
editor: markdown
dateCreated: "2021-06-27T18:56:29"
---

## 简介

MIUI 是小米公司的手机系统（基于 Android/AOSP），最初 2010 年是给当时知名手机制作的第三方自定义 ROM，到了 MIUI V3，小米公司才有了自己的预装了 MIUI 的小米手机。

2023年10月26日，小米手机改用<ruby>澎湃OS<rp>(</rp><rt>HyperOS</rt><rp>)</rp></ruby>，大致相当于改名。所以之后澎湃OS 相关的内容，也会收录到 MIUI 中。

## Bootloader 锁

> [!warning]+ 提示
>
> 此章节缺少许多 2015 年之外内容，因为只有初期的资料容易收集。

早期小米手机没有 Bootloader 锁，所以可以直接刷机，不需要向小米官方申请解锁码。

2015年11月19日，MIUI 发布了开发版 6.1.12，这个版本让小米3 (WCDMA/CDMA), 4 (TD/WCDMA) Note Pro, 4c 默认关闭 Root 权限，并且小米4c 和 Note Pro 在更新此版本后，设备的 Bootloader 会被锁定。[^185414]

[^185414]: meredithhan, [About MIUI 7 China Developer Version Root Permissions Adjustment](https://web.archive.org/web/20170514184242/http://en.miui.com/thread-185414-1-1.html), Xiaomi MIUI Official Forum, 2015-11-19. (参照 2023-02-05).

> [!note]+ 备注
>
> Bootloader 是引导程序，如果遭到锁定，那么用户就不能刷入新的固件。
>
> 尚不明确：由于资料太少，「之前的开发板默认都启用了 Root 功能」，这种说法无法确认。

2015年11月27日，红米Note 3 发售，随后用户发现红米Note 3 无法解锁，因为设备被添加了 Bootloader 锁，在此之前的小米手机首发版均没有 Bootloader。在此期间，没有解锁方法，也没有官方的 Root 方法（安装开发板 ROM 除外），只能通过漏洞来获取 Root 权限。[^it028]

[^it028]: 望山, 《[加锁也不怕，红米Note 3仍可Root](https://web.archive.org/web/20230205091216/https://www.ithome.com/0/193/028.htm)》, IT之家, 2015-12-07. (参照 2023-02-05).

2015年12月28日，MIUI 论坛的管理员表示小米4c, Note 顶配版, 4S, 5, Max 和 红米Note 3 手机的解锁需要申请解锁权限，操作方法是：[^3367802]

[^3367802]: 风起云落, 《[小米手机解锁 Bootloader 教程以及常见问题](https://web.archive.org/web/20180419213901/http://www.miui.com/forum.php?mod=viewthread&tid=3367802)》, MIUI论坛, 2015-12-28. (参照 2023-02-05).

1.  PC 进入 www.miui.com/unlock/ 解锁页面登录小米帐号后申请解锁权限。

    通常需要等待 3 天。

2.  下载 <ruby>小米解锁工具<rp>(</rp><rt>MiUnlock</rt><rp>)</rp></ruby> (miflash unlock) 工具。

3.  让需要解锁的小米手机升级到 MIUI V8.1。

    因为这个版本之后，开发者选项里才有「设备解锁状态」功能。

4.  PC 和手机同时登录获得了解锁资格的帐号，将手机链接到电脑，然后使用下载的小米解锁工具进行解锁。

这时的限制是「同一帐户解锁两台设备的间隔大于 30 天」，所以小米手机解锁后需要小心不要无意给手机锁上 BL，因为一些情况下刷机或默认勾选锁上 BL。

2015年12月30日，小米官方在英文论坛发布了公告：

> [!quote]+  [Changelog] About Locking Bootloader for Mi Devices: Announcement & Explanation[^201477]
>
> Hi MIUIers,
>
> We've locked bootloader for Redmi Note 3 since its launching in order to protect user data safety. As we said before, we'll be making the same change for other Mi devices gradually. Now, the list will include Mi 4c and Mi Note Pro also.
>
> If you're not famaliar with the situation, please read the following explanation.
>
> Special Note: This situation only applies to MIUI China Developer ROM for now.
>
> 后略

[^201477]: meredithhan, [About Locking Bootloader for Mi Devices: Announcement & Explanation](https://web.archive.org/web/20160115082459/http://en.miui.com/thread-201477-1-1.html), Xiaomi MIUI Official Forum, 2015-12-30. (参照 2023-02-05).

表示红米Note 3 上市之后直接锁定了 bootloader，之后新上市的手机逐渐都会锁定 bootloader。后半部分解释了为什么要锁定 bootloader，小米给出了两个理由：

1.  跨境的水货小米手机可能安装的是非官方 ROM，这会给用户以及小米声誉带来不良影响
2.  手机遭到盗窃后，锁定了 bootloader 能阻碍犯人刷入 ROM 然后出售，相关机制类似于 iPhone

对于解锁，小米也给出了回答：「解锁过程非常简单」，当时解锁虽然稍早前表示是 3 天，但由于申请数量很多，
所以 2015年12月30日 的英文解锁教程里有提到等待时间是 10~12 天，并且一个小米账号 30 天内只能解锁一台设备，
版本要求是 MIUI 开发版 6.1.12 以及后续版本。[^202290]

[^202290]: meredithhan, [Mi Devices Bootloader Unlocking Tutorial & English Unlocking Tool Download](https://web.archive.org/web/20160831064633/http://en.miui.com/thread-202290-1-1.html), Xiaomi MIUI Official Forum, 2015-12-30. (参照 2023-02-05).

2016年1月13日，MIUI 7 开发版 6.1.14 发布，从日志来看，跟 6.1.12 的 bootloader 规则差不多，[^208492]
但此时外国用户主要把 6.1.14 当作含有新的 bootloader 规则的版本，也许是信息传播的时间差导致的这种情况。

[^208492]: Nanana, [MIUI 7 China Developer ROM 6.1.14 Full Changelog (Released)](https://web.archive.org/web/20170512232421/http://en.miui.com/thread-208492-1-1.html), Xiaomi MIUI Official Forum, 2016-01-13. (参照 2023-02-05).

1.  小米4c, Note Pro 的 Root 权限默认关闭（之前的开发版本自带 Root）
2.  小米4c, Note Pro 的 Bootloader 将被锁定，需要使用稍早的申请解锁功能，才能解锁

2019 年的未知具体时间，有人认为是老账号可以不等待直接解锁，然后有人出租/租借老账号解锁新机器，
所以小米封禁了所有 2019年10月 前的老账号的解锁权限，手机解锁工具会提示「解锁失败：账号权限不足或者账号受限」。[^620487]

[^620487]: mouyase, 《[喷一喷小米手机 BL 解锁体验](https://web.archive.org/web/20221102003513/https://www.v2ex.com/t/620487)》, V2EX, 2019-11-17. (参照 2023-02-05).

2019年10月 的解锁规则是：「小米手机第一次解锁是要 15 天才可以解锁，如果是上锁过第二次再解锁的话就是要等 30 天」。[^620487]

2021年8月，MIUI 限制 Bootloader 解锁频率为一年两次。[^56427]

[^56427]: 萧老二, 《[如何看待 MIUI 限制 BL 解锁频率为一年两次？](https://archive.is/hq6Oi "https://www.zhihu.com/question/482232978/answer/2457556427")》, 知乎, 2021-08-24. (参照 2023-02-05).

> [!note]+ 词汇表
>
> +   **开发版**／**中国开发者版**／**China Developer ROM**
>
>     这些词语意思基本相同。
>
> +   **手机名称**
>
>     非转述的描述，以官网手机名称为准：比如「红米Note 3」的 Note 前面没有空格，「小米4c」使用的是小写「c」。

2023年11月1日，使用小米手机的开发者，确认了暂时无法通过现有途径解开 Bootloader 锁（通过登录小米开发者帐号），
相关解锁操作会提示「系统升级维护中」或「验证失败」。[^m1540] 有流言称：小米即将收紧解开 Bootloader 锁的要求。[^87964]

[^m1540]: 不靠谱的喵(>^ω^<) \#CatGPT, 《[维护基本可以确定是要收紧 BootLoader 解锁了……](https://web.archive.org/web/20231109033203/https://t.me/s/MlgmXyysd_bibilailai/1540)》, Telegram, 2023-11-02. (参照 2023-11-09).

[^87964]: FirefoxChrome, 《[小米即将收紧 BootLoader 解锁](https://web.archive.org/web/20231102145138/https://www.v2ex.com/t/987964)》, V2EX, 2023-11-02. (参照 2023-12-12).

一周后，规则基本明确，小米公司仅允许开发者和发烧友解锁。而成为发烧友的条件是：[^m1554]

[^m1554]: 不靠谱的喵(>^ω^<) \#CatGPT, 《[后续：有公告了，新政策实装。](https://web.archive.org/web/20231109110528/https://t.me/s/MlgmXyysd_bibilailai/1554)》, Telegram, 2023-11-08. (参照 2023-11-09).

1.  社区账号达到 5 级。
2.  完成实名认证。
3.  通过《解锁资格答题测试》。

比之前的要求更苛刻，小米社区每天签到和任务给 5 点经验左右，从 0 级升到 5 级，需要 1000 点经验。[^89944]

[^89944]: mouyase, 《[小米公布新的 BL 解锁规则了，要求社区等级 5 级以上，申请后 72 小时后可以解锁。](https://web.archive.org/web/20231109081429/https://v2ex.com/t/989944)》, V2EX, 2023-11-08. (参照 2023-11-15).

2023年12月 月初，有 MIUI 用户参与《解锁资格答题测试》，结果发现里面的题库十分专业：[^NbBwC]

[^NbBwC]: mouyase, 《[目前基本可以认为小米已经禁止 BL 解锁了](http://archive.today/2023.12.07-031726/https://www.v2ex.com/t/998253)》, V2EX, 2023-12-07. (参照 2023-12-12).

> [!quote]+ 下列说法正确的有【多选题】
>
> + [ ] Android 7 或更高版本的设备中，使用 JIT/AOT 混合编译模式
> + [ ] Android 8 或更高版本的设备中，同以 APK 文件不可以安装到所有 Android 系统的设备上
> + [ ] Android 8 或更高版本的设备中，用户必须授予权限，系统才能从应用商店意外的来源安装系应用
> + [ ] Android 8 或更高版本的设备中，APK 文件中包含运行所需全部资源，运行应用实际上是在运行 APK

> [!quote]+ 下列关于 JVM 垃圾回收机制的说法正确的有【多选题】
>
> + [ ] Serial Collector 回收速度快
> + [ ] G1 垃圾回收器将堆内存划分为多个大小不等的 Region
> + [ ] Serial Collector 适合内存有限的情况
> + [ ] Parallel COllector 效率高
> + [ ] G1 垃圾回收器采用的是区域化、分布式的垃圾收集器
> + [ ] Concurrent Mark Sweep COllector 在 Old 区回收暂停时间长

大概只有专业的 Android 开发者，才有能通过这些苛刻的题目。所以有人认为小米已经事实上禁止解开 Bootloader 锁了。

## 添加防回滚机制

2018年7月，小米推出的 MIUI 10 Global Beta 8.7.5 版本里包含了<ruby>反回滚<rp>(</rp><rt>Anti-Rollback Protection</rt><rp>)</rp></ruby>机制，如果用户给手机安装旧版 ROM，就会让手机「变砖」，这种情况只能使用 EDL 模式来修复，但这个模式大多数用户都没有使用权限。[^10g875]

[^10g875]: Adam Conway, 《[[Update: Statement released] MIUI 10 Global Beta 8.7.5 adds anti-rollback protection, downgrading may brick your Redmi Note 5 Pro](https://web.archive.org/web/20221006200220/https://www.xda-developers.com/miui-10-global-beta-8-7-5-anti-rollback-downgrade-brick-redmi-note-5-pro/)》, XDA Developers, 2018-07-12. (参照 2023-02-05).

## 限制大陆／全球 ROM 互刷

2018年9月 之前，大陆购买的国行小米手机都能刷入国际版的 MIUI ROM。

2018年9月12日，MIUI 论坛管理员贴出通知提示：

> [!note]+ Important Announcement About Flashing Mi Phones Manufactured by China![^3831680]
>
> Dear Mi Fans,
>
> Here's something VERY important before you flash or update the ROM.
>
> 1. Xiaomi Phones manufactured for Chinese market are not able to run MIUI Global ROM.
> 2. Xiaomi Phones manufactured for Global markets are not able to run MIUI China ROM.
>
> We highly recommend you to buy Xiaomi Phones via official or authorized sales channels and double check the system infomation before flashing or updating.
>
> Thank you for understanding.
>
> **MIUI Team**

[^3831680]: DinaDuan, [Important Announcement About Flashing Mi Phones Manufactured by China!](https://web.archive.org/web/20180915103715/http://en.miui.com/thread-3831680-1-1.html), Xiaomi MIUI Official Forum, 2018-09-. (参照 2023-02-04).

大致意思是小米公司最近给 MIUI 的更新里添加了新功能，这种功能能阻止大陆版本以及全球版本的手机互刷 ROM。

如果尝试安装，就会出现「this MIUI version can’t be installed on this device」的字样，然后手机就变成砖了。[^mgrfot]

[^mgrfot]: Farrukh Ahmad, [MIUI Global ROM Flashing on These Xiaomi Phones May Brick Your Device](https://web.archive.org/web/20210124163828/https://www.igeekphone.com/miui-global-rom-flashing-on-these-xiaomi-phones-may-brick-your-device/), IGeeKphone China Phone, Tablet PC, VR, RC Drone News, Reviews, 2018-09-29. (参照 2023-02-05).

不过有开发者表示：解锁 bootloader 后，使用 TWRP、fastboot 或者 MiFlash 刷机，选择「Clean All」而不是「clean all and
lock」，即可成功互刷。[^115904] 当然，上文提到的 EDL 模式也能在手机变砖后进行恢复。

[^115904]: xiaopeng, 《[小米封杀行货手机刷国际版ROM：强刷变砖](https://web.archive.org/web/20230204161141/https://www.antutu.com/doc/115904.htm)》, 安兔兔, 2018-09-29. (参照 2023-02-05).

## 论坛

2019年6月，小米发出公告，将在稍后的 7月1日 关闭台湾和香港的 MIUI 论坛，同时资料也不再保留。[^it103]

[^it103]: 沧海, 《[MIUI发公告：中国台湾/香港MIUI论坛7月1日起停止运营](https://web.archive.org/web/20200924042706/https://www.ithome.com/0/428/103.htm)》, IT之家, 2019-06-13. (参照 2023-02-05).

2019年8月5日，有人发现 MIUI 论坛 APP 从小米应用商店下架了，原因不明。[^it413]

[^it413]: 沧海, 《[小米应用商店下架MIUI论坛，原因未知](https://web.archive.org/web/20230205112253/https://www.ithome.com/0/437/413.htm)》, IT之家, 2019-08-05. (参照 2023-02-05).

2019年9月，论坛相关人员发布公告（暂未找到原链接）：

> [!quote]+ 论坛相关人员发布的公告[^910385]
>
> 首先欢迎大家使用新的小米社区。新小米社区的背景
>
> 小米原来有MIUI论坛和原小米社区，两个平台都聚集了很多的忠实的用户。我们也很想继续维护两个平台，继续让原两个平台的用户都在各自平台继续玩。然鹅这样的话，我们的研发资源和运营资源都没办法很好地聚焦，反而导致两个平台可能都做不好，没法更好地为大家服务。
>
> 正好“我的小米”也面临着改版的需求，三个团队一拍即合，觉得把大家聚拢到一起，来干件大事情，才是对的。就酱，新的小米社区团队和项目就成立了。
>
> 这个项目大概从2019年春节左右开始规划，到今年9月24日我们正式公测。
>
> 为什么下了老社区和老论坛
>
> 老社区和老论坛本来也是要下的，不过计划中的时间是10月底，11月初。
>
> 那为什么9月底就仓促地把两个平台给下了呢？
>
> 其实原因也很简单，因为十一要来了，懂的用户应该都知道内容监管方面有很严格的要求，我们如果不关停老社区和老论坛，可能整个团队都会因为满足不了要求而被迫集散（后果很严重）。
>
> 而且这半年，我们都有2个工程师基本上全职，为了满足内容监管的需求，在给老社区和老论坛修修补补，最后也满足不了要求，相关小伙伴还去喝了几次茶（背后的辛酸希望大家也体谅一下）。
>
> 所以这也是为什么仓促把大家迁移过来，
>
> 后果就是很多老用户觉得体验没有很好的过渡。
>
> 那为什么不直接用老论坛和老社区改成新社区
>
> 其实也是可行的。
>
> 而且最开始去年确实有另一个团队是在把老论坛往老社区合并，但是最后碰到了不少的问题，合并也是暂停了。
>
> 其实做一个系统，除了大家看到的表面的界面和体验，底下还有很多的东西。
>
> 比如内容审核和监管，这块在老论坛和老社区上修修补补，也很容易出问题，还不如重新开始做。
>
> 比如大家的数据如何融合，我们既不想让老论坛的用户去适应老社区的数据，也不想老社区的同学，去适应老论坛的数据；而且还有很多数据是根本没法融合的。
>
> 比如团队的技术层面，老社区和老论坛都是两套不同的技术班子做的，强行融合在一起，日后只会越做越多问题。
>
> 另外，其实老社区和老论坛本身也是有很多的问题的，只是大家已经习惯了这些问题，无视了而已。
>
> 目前新社区还有很多问题？
>
> 是的，我们还有很多的问题。
>
> 不过问题都是可以解的，只要大家一起献策，共建我们的新社区。
>
> 我相信没有什么问题是解决不了的。
>
> 后面的规划是什么
>
> 小的建议和问题，大家都留意到了，我们也都记下来了。
>
> 我归纳成几个大的点（有些可能要年底才能做完）
>
> 0.  基础的体验问题，包括白屏、卡顿、动画优化等。
> 1.  会尽量把老论坛和老社区的重要功能和数据都迁移过来，保证大家的使用习惯少受影响。
> 2.  PC版第一版10月就会上线（不过第一版也是比较简单的），后续还会持续投入。
> 3.  内容安全方面，大家现在看到的吞贴，删帖，其实都是这块还没做完（只是为了不出问题）。但是这块又很重要，大家也不希望一堆垃圾内容充斥我们大家的社区吧。
> 4.  视频的体验、话题页等。
> 5.  项目中心，这块马上就上线了，目的是为了让大家不用一直提重复的问题，同时也让业务组尽量把问题的状态和大家做好同步。
> 6.  聊天的功能。
>
> 还有很多很多的规划，等着我们一点点地实现。
>
> 新社区需要大家群策群力，谢谢！

[^910385]: 《[米都社区改成什么(米市街社区在哪里)](https://web.archive.org/web/20230205120058/https://159.75.224.178/fangchan/910385.html)》, 百科知识分享, 2023-01-11. (参照 2023-02-05).

之后虽然能看到 MIUI 论坛旧的帖子标题，但其他楼层的评论基本都是「提示：作者被禁止或删除 内容自动屏蔽」，说明这些内容都还在审查中，无法公开。[^04632]

[^04632]: 匿名用户, 《[为什么MIUI论坛删除（屏蔽）了大量的内容？](https://archive.is/iMQoj "https://www.zhihu.com/question/347404632")》, 知乎, 2019-09-23. (参照 2023-02-05).

## 内置软件黑名单

2020年8月4日，有人发现了小米曾内置了软件黑名单。

> [!quote]+ 小米 10 在 MIUI20.8.3 加入了应用黑名单[^apkbl]
>
> MI 10 MIUI 最新内测版 20.8.3 (Android 11) 的 com.miui.packageinstaller.apk 里内置了一个名为 blacklist.json 的炸弹，若尝试安装该名单内的 apk (包名和 MD5 匹配) 会提示「解析软件包时出现问题」，人为的制造 apk 损坏现象。

[^apkbl]: [小米 10 在 MIUI20.8.3 加入了应用黑名单](https://web.archive.org/web/20210627105718/https://www.v2ex.com/t/695575), V2EX.

当时的黑名单列表如下:[^bllt]

[^bllt]: [Xm9iatpt - Pastebin.com](https://web.archive.org/web/20210627105639/https://pastebin.com/Xm9iatpt)

| App 名称      | 包名                              |
| ------------- | --------------------------------- |
| 蓝光          | com.golden.freegate               |
| Lantern       | org.getlantern.lantern            |
| Lantern       | lantern-installer                 |
| NordVPN       | com.nordvpn.android               |
| XSoft inc     | com.xfx.surfvpn                   |
| Ultrareach    | us.ultrasurf.mobile.ultrasurf     |
| Signal Lab    | com.fast.free.unblock.secure.vpn  |
| Signal Lab    | com.fast.free.unblock.thunder.vpn |
| ExpressVPN    | com.expressvpn.vpn                |
| SuperSoftTech | com.jrzheng.supervpnfree          |
| Greatfire.org | org.greatfire.freebrowser         |

2021年6月，有用户称，更新系统后无法安装上述列表中的 VPN，已安装的也被卸载。[^nytj0k][^nyrwf5]

[^nytj0k]: [小米手机禁止VPN软件安装 : China_irl](https://web.archive.org/web/20210614080104/https://old.reddit.com/r/China_irl/comments/nytj0k/小米手机禁止vpn软件安装/)

[^nyrwf5]: [小米手机大陆MIUI系统开始封锁VPN软件！ : China_irl](https://web.archive.org/web/20210616124155/https://old.reddit.com/r/China_irl/comments/nyrwf5/小米手机大陆miui系统开始封锁vpn软件/)

## 隐私保护白名单

2021年1月，小米手机的 MIUI 被发现针对「[学习强国](/software/Xuexi_Qiangguo.md)」这款 APP 做了白名单处理，具体情况为：隐私保护中的「权限使用统计」不能记录「学习强国」的行为。[^748635]

[^748635]: [MIUI 的权限使用统计把学 Xi 强国屏蔽了？](https://web.archive.org/web/20210326235940/https://v2ex.com/t/748635), V2EX.

2022年4月 左右，有人使用 hook 的方式解密了「权限使用统计」的白名单，发现了以下包名：

> [!quote]- behavior_record_white.txt
>
> +   com.android.thememanager@0
> +   com.miui.barcodescanner@0
> +   com.miui.dmregservice@0
> +   com.wdstechnology.android.kryten@0
> +   com.miui.notes@0
> +   com.miui.weather2@0
> +   com.xiaomi.gamecenter@0
> +   com.miui.fmradio@0
> +   com.android.email@0
> +   com.miui.video@0
> +   com.miui.player@0
> +   com.xiaomi.market@0
> +   com.xiaomi.jr@0
> +   com.xiaomi.vip@0
> +   com.mi.vtalk@0
> +   com.xiaomi.gamecenter.sdk.service@0
> +   com.mipay.wallet@0
> +   com.miui.tsmclient@0
> +   org.simalliance.openmobileapi.service@0
> +   com.xiaomi.channel@0
> +   com.miui.yellowpage@0
> +   com.xiaomi.o2o@0
> +   com.miui.miuibbs@0
> +   com.xiaomi.pass@0
> +   com.xiaomi.mircs@0
> +   com.android.vending@0
> +   com.android.calculator2@0
> +   com.xiaomi.scanner@0
> +   com.milink.service@0
> +   com.miui.sysbase@0
> +   com.miui.calculator@0
> +   com.miui.milivetalk@0
> +   com.miui.smsextra@0
> +   com.xiaomi.oga@0
> +   com.miui.contentextension@0
> +   com.miui.personalassistant@0
> +   com.android.storagemonitor@0
> +   com.xiaomi.gamecenter.pad@0
> +   com.miui.voicetrigger@0
> +   com.xiaomi.vipaccount@0
> +   com.google.android.gms@0
> +   com.miui.greenguard@0
> +   com.mobiletools.systemhelper@0
> +   com.miui.fm@0
> +   com.miui.smarttravel@0
> +   com.miui.cleanmaster@0
> +   com.miui.compass@0
> +   com.mfashiongallery.emag@0
> +   cn.xuexi.android@0
> +   android.permission.cts.appthataccesseslocation@0
> +   com.mi.health@131072
> +   com.iflytek.inputmethod.miui@4611686018427387904
> +   com.baidu.input_mi@4611686018427387904
> +   com.sohu.inputmethod.sogou.xiaomi@4611686018427387904
> +   com.miui.compass@-1
> +   com.miui.smarttravel@-1
> +   com.miui.weather2@-1
> +   com.xiaomi.shop@-1

不过没有给出解密此白名单的方法。

## 相机敏感词

MIUI 从 API Level 26 的 3.0 版本，到目前最新的 API Level 29 的 4.3.004221.0 版本自带的相机，在其 Apk 文件的 `/assets/sensi/` 里有名为 sensi_words.txt 的文件，该文件被 Base64 编码，[^854685] 原文是 253 个敏感词，用来过滤自定义水印。[^PMTUe]

[^PMTUe]: ISU-152酱, 《[这一定是小米bug！！！（今日首蚌）](https://archive.ph/PMTUe "https://www.bilibili.com/video/BV1dR4y1n7EM/")》, 哔哩哔哩, 2021-10-09. (参照 2022-06-01).

[^854685]: MiketsuSmasher, 《[小米工程师向 AOSP 提交了一份禁止用户获取 APK 文件的补丁，后被驳回](https://web.archive.org/web/20220530053613/https://www.v2ex.com/t/854685)》, V2EX, 2022-05-23. (参照 2022-06-01).

![这一定是小米bug_00.10.833](https://s3.tebi.io/ggame/ShareX/company_小米_MIUI_相机敏感词_这一定是小米bug_00.10.833.webp){: width=45% }
![这一定是小米bug_00.12.179](https://s3.tebi.io/ggame/ShareX/company_小米_MIUI_相机敏感词_这一定是小米bug_00.12.179.webp){: width=45% }

## 限制 ADB

未知具体限制时间，至少在 MIUI 12 的时候就已经开始限制 ADB (Android Debug Bridge) 这个调试功能了，默认不登陆以及不插卡的情况下，就会导致下面等命令无法使用：[^xoxXq]

[^xoxXq]: Remik1r3n, 《[不登陆小米账号启用 MIUI 的 ADB 调试（安全设置）和 ADB 应用安装](https://archive.is/xoxXq "http://www.bilibili.com/read/cv21517358")》, 哔哩哔哩, 2023-01-31. (参照 2023-03-25).

```shell
adb shell input
adb shell monkey
adb shell appops
adb shell pm grant
adb shell pm revoke
adb shell pm reset-permissions
adb shell pm clear
adb shell settings
adb shell getevent
adb shell sendevent
adb shell uiautomator
```

需要插入 SIM 手机卡并登录小米帐号，然后在联网的情况下才能启用完整的 ADB 功能。

## MiAdBlacklistConfig

2021年9月，<ruby>立陶宛国家网络安全中心<rp>(</rp><rt>lietuvos Respublikos krašto apsaugos ministerija</rt><rp>)</rp></ruby>发布了多款手机审计报告，其中就有小米10T 的浏览器、MiAdBlacklistConfig（后文简称名单）和登录帐号时发送短信的风险，其中最引人注目就是名单。[^52439]

[^52439]: Andrius Sytas, 《[Lithuania says throw away Chinese phones due to censorship concerns](https://web.archive.org/web/20210922052439/https://www.reuters.com/article/lithuania-china-xiaomi/lithuania-says-throw-away-chinese-phones-due-to-censorship-concerns-idUSL8N2QN50T)》, Reuters, 2021-09-21. 参照: 2022-08-16. [Online].

这个名单被多个小米应用下载，存放到应用程序中，报告里发现以下应用含有此名单：

| No.: | Application name       | Application identifier             |
| ---- | ---------------------- | ---------------------------------- |
| 1    | Security               | com.miui.securitycenter            |
| 2    | Mi Browser             | com.mi.globalbrowser               |
| 3    | Downloads              | com.android.providers.downloads.ui |
| 4    | Music                  | com.miui.player                    |
| 5    | Themes                 | com.android.thememanager           |
| 6    | MIUI Package Installer | com.miui.global.packageinstaller   |
| 7    | Cleaner                | com.miui.cleanmaster               |

名单里的内容包含政治以及其他共计 449 个词语，然后应用具有使用此名单审查某种内容的功能，报告到这里，所有人都能达成共识，但之后的情况就比较复杂了，因为「审计报告」里认为这是审查系统（的一部分），虽然并未启用。而 Adam Conway 通过 XDA 发布了文章质疑了这这个文件的用途。[^xsbe]

[^xsbe]: Adam Conway, 《[Xiaomi’s secret blacklist of phrases sounds scary, but it may not be what it seems](https://web.archive.org/web/20221023083218/https://www.xda-developers.com/xiaomi-secret-blacklist-explained/)》, XDA Developers, 2021-09-23. (参照 2023-02-07).

Adam 这是对 MIUI 广告的过滤，给出了数个证据：

1.  清单内容包含手机品牌、「download videos」等与政治无关的关键词，共计 2210 多个
2.  名单的名称 MiAd 应该指 MIUI 的广告
3.  从反编译的软件代码判断这个功能仅适用于广告

但不管是 Adam，还是「审计报告」，都没有给出完整的清单，直到 2021年10月3日，推特用户 cda 分享了 8 月份的 MiAdBlacklistConfig，内容应该是完整的，共有 2212 个关键词。[^78312][^collina]

[^78312]: cda, "[It appears that the MiAdBlacklistConfig …](https://web.archive.org/web/20211002224512/https://twitter.com/CDA/status/1444355139310178312)", Twitter, 2021-10-03. (参照 2023-02-07).

[^collina]: collina, 《[MiAdBlacklistConfig](https://web.archive.org/web/20211002224615/https://gist.github.com/collina/70248e2206a25e63cd32ef97b429a6d2)》, GitHub Gist, 2021-10-02. (参照 2023-02-07).

2022年1月6日，<ruby>國家通訊傳播委員會<rp>(</rp><rt>National communications commission</rt><rp>)</rp></ruby>（简称：NCC）发布了一个简单的调查报告，里面提到台湾贩售的小米Mi 10T 5G 手机里面曾经含有清单，共计 2000 余个关键词，并在报告最后的附件中分享了 PDF 格式的清单。（但附件里的 PDF 清单只有 1700 左右个关键词）[^47018]

[^47018]: 國家通訊傳播委員會, 《[NCC檢測在臺灣販售之小米Mi 10T 5G手機發現部分內建軟體的確曾具政治敏感詞彙檢查功能，恐有資訊回傳疑慮，提醒國人重視手機之個資與隱私保護意識](https://web.archive.org/web/20220621003132/https://www.ncc.gov.tw/chinese/news_detail.aspx?site_content_sn=8&sn_f=47018)》, 國家通訊傳播委員會, 2022-01-06. (参照 2023-02-07).

> [!note]+ gledos 的想法
>
> Adam 思考的过程有错，但结果应该没错，这确实仅仅是过滤广告的功能的的一部分，但从里面包含 China 就断定这与政治无关，就太天真了。
>
> 此功能存在的理由，是广告可以很危险，比如 [cnBeta](/website/cnBeta.md#域名取消解析) 可能因为广告问题，就被取消解析了。还有一点就是「审查功能不一定有效（但一定要有）」，比如上文提到的小米相机 APP 里有一个 sensi_words.txt 文件，其中含有 253 个敏感词，被用作自定义水印。
>
> sensi_words.txt 的敏感词这么少，有用么？当然没有什么用，很可能只是有人要求一切有自定义文字的地方，都要有审查系统，所以开发者随便应付一下，才制作了 MiAdBlacklistConfig 和 sensi_words.txt 这种几乎无用的敏感词名单吧，毕竟广告最应该过滤的是图片……

> [!abstract]+ 相关链接
>
> +   [立陶宛国家网络安全中心的审查报告](https://web.archive.org/web/20210922130630/https://www.nksc.lt/doc/en/analysis/2021-08-23_5G-CN-analysis_env3.pdf)
> +   [立陶宛建议消费者不买并扔掉现有中国手机](https://web.archive.org/web/20210922051039/https://www.zaobao.com.sg/realtime/china/story20210922-1196099), 早报.

## 没有内置国家监控中心app

MIUI 13 版本的宣传的新增系统级全链路反诈，自称与国家反诈骗中心合作。[^114760] 导致网络上出现了 MIUI 13 内置了国家反诈骗中心的传言。

[^114760]: IT之家, 《[小米 MIUI 13 全链路反诈功能与国家反诈中心合作，避免用户损失](https://web.archive.org/web/20220816085636/https://www.sohu.com/a/514045049_114760)》, 2022-01-03. (参照 2022-08-16).

2021年12月28日，新浪微博数码博主「wangzn2016」认为此功能是自己提出的：

> [!quote]+ wangzn2016[^32meu]
>
> 酷安上面都看到了吧，隐私保护和gj反诈app联合合作，这个我国庆期间在路上被警察拉去下载反诈app后突然来的想法，就立马提了上去。
>
> 没想到这么快就搞定了，还成了13的亮点

[^32meu]: wangzn2016, 「[酷安上面都看到了吧，隐私保护和gj反诈app联合合作……](https://archive.is/32meu "https://weibo.com/6548603699/L87kM6xht")」, 新浪微博, 2021-12-28. (参照 2023-02-03). 备注：页面已被删除

2021年12月30日，有用户在 xiaomi.eu 论坛上咨询了 EU 版本是否移除了反诈功能，波兰的工作人员表示全球版手机均没有启用此功能，[^641945] 并没有直接回答这个问题。

[^641945]: ingbrzy, [MIUI 13 - 21.12.29/30 - First MIUI 13](https://web.archive.org/web/20221006120430/https://xiaomi.eu/community/threads/21-12-29-30-first-miui-13.64404/#post-641945), Xiaomi European Community, 2021-12-30. (参照 2023-02-03).

> [!note]+ MIUI 各版本区别[^ko797]
>
> 1.  MIUI CN（大陆版）
> 2.  MIUI Global（全球版）
> 3.  MIUI EU（欧洲版）
>
> 其中 MIUI EU 版并不是小米官方的，而是由小米欧洲经销商认可的民间团队发布。基于MIUI大陆版修改而来，发布时间和机型与大陆版同步。同步MIUI大陆版的稳定版公测和测试版公测。有谷歌核心套件。无小米全家桶。无广告。

[^ko797]: Koizumi, 《[MIUI 各版本区别及下载地址](https://blog.minamigo.moe/archives/797)》, Koizumi’s Blog, 2022-04-23. (参照 2023-02-03).

2022年1月5日，有人发现部分软件无法安装，会显示「[相关法律](/censorship/相关法律.md)法规要求，禁止安装」。[^2298720242] 

[^2298720242]: 知乎用户2jT2Ug, 《[如何评价 MIUI 13 可能内置反诈系统，有什么影响？](https://web.archive.org/web/20220816085614/https://www.zhihu.com/question/509458835/answer/2298720242)》, 知乎, 2022-01-05. (参照 2022-08-16).

2022年1月6日，因为有人质疑 MIUI 内置国家反诈骗中心，所以 MIUI 官方帐号回复道：「MIUI13没有内置国家监控中心app，请勿传谣」。[^6lKCJ]

[^6lKCJ]: 爱睡觉的乐乐, 《[听说miui13内置国家反诈骗中心app，看上去这是我最后一个小米手机了，而且还是永不升级 😂😂](https://archive.ph/6lKCJ "https://weibo.com/1229559082/L9vKRt6No")》, 新浪微博, 2022-01-05. (参照 2022-08-16).

## 应用包管理组件上传包名等信息

2022年1月26日，有人发现 MIUI 13 的应用包管理组件会上传包名等信息，包括 以下信息：[^30712]

[^30712]: preach, 《[MIUI 13 抓包，安装上传 经纬度+包名 小米用户来看看 fromtw](https://web.archive.org/web/20220924053537/https://www.v2ex.com/t/830712)》, V2EX, 2022-01-26. (参照 2023-08-13).

| 键                 | 值                                     | 含义猜测                    |
| ------------------ | -------------------------------------- | --------------------------- |
| `apkSignature`     | `10f66a6c3fd6efab4e51f54ea50e25b8`     | APK 的签名                  |
| `localVersionCode` | `54`                                   | APK 的版本号                |
| `cpuArchitecture`  | `arm64-v8a,armeabi-v7a,armeabi`        | APK 支持的 CPU 架构         |
| `sign`             | `3D36B8CFCA13AB41E135393382F2035F`     |                             |
| `client_uuid`      | `b2f70c78-ab7d-4d4c-b2fa-d574ccccc1ca` | 可能是应用包管理组件的 uuid |
| `device_type`      | `unknown`                              |                             |
| `source`           | `com.android.fileexplorer`             | 通过什么 App 打开的 APK     |
| `versionName`      | `null`                                 |                             |
| `web_version`      | `null`                                 |                             |
| `installationMode` | `2`                                    |                             |
| `screen_size`      | `1080x1876`                            | 屏幕分辨率                  |
| `apkMd5`           | `71681791388ff2c6d5f8ddae8953079b`     | APK 的 MD5 值               |
| `mo`               | `MI+6`                                 | 机型                        |
| `……`               | `……`                                   | 截图后续可能还有内容        |

而标题中提到了经纬度，可能说明未被给出的截图中有经纬度（地理位置）的信息，不过没有其他人研究这些隐私问题，所以尚不明确消息可靠性。

## 自动添加 DNS

2022年3月6日，MIUI 被发现以下代码，会根据系统地区自动添加 114 以及「互联网国家工程中心」或谷歌的 DNS。[^0166]:

[^0166]: llccd @gNodeB, 《[小米手机设置不存在的 DNS 仍然可以解析域名](https://twitter.com/gNodeB/status/1500500166549327877)》, Twitter. (参照 2022-03-08).

```java
String dns = System.isInCnRegion() ? "114.114.114.114" : "8.8.8.8";
String dnsv6 = System.isInCnRegion() ? "240c::6666" : "2001:4860:4860::8888";
```

由于该功能没有被公布，所以可能会造成 DNS 泄露，包括在使用 VPN 的时候。以及与其他手机出现网络上的差异。

> [!abstract]+ 相关条目
>
> +   [三星港版手机](/company/Samsung/HK_Phone.md)

## MIUI 14 上传应用列表

2023年2月1日 左右，MinaMichita 发现最新的 MIUI 14 会不断的上传已安装应用列表等信息，小米在他们的代码中将此功能命名为 AntiDefraud，示例如下：[^912395]

[^912395]: ruoyutx, 《[听说国产安卓机全部统一内置了反诈？](https://web.archive.org/web/20230202141303/https://www.v2ex.com/t/912395?p=2#r_12637855)》, V2EX, 2023-02-01. (参照 2023-02-03).

```json
{"timestamp":"xxx","os":"xxx","biz_id":"virus_scan","uuid":"xxx","content":[]}
```

数据会被上传到小米的服务器，而这种行为似乎未经过用户同意。于是 MinaMichita 编写了 xposed 模块 [AntiAntiDefraud][]，来关闭这种功能。

[AntiAntiDefraud]: https://github.com/MinaMichita/AntiAntiDefraud

而这些代码也存在于 MIUI 国际版中，不过尚未有人测试国际版是否也有相同的上传情况。

2023年2月5日，MIUI EU 的首席开发人员 Igor Eisberg 对此做出了回应：

> [!quote]- Igor Eisberg 对此事的回应（原文）[^68146]
>
> A few facts to point out, and hopefully the few paranoids among our users stop bothering us:
>
> 1.  The security of MIUI is not our responsibility. We are not security experts and these ROMs are not meant for the paranoids who are afraid of China.
> 2.  Tencent engine exists in GuardProvider (MIUI security components) app.
> 3.  Tencent engine is disabled for international ROMs (that includes ours).
> 4.  Apps list is not sent to Tencent, the "AntiDefraud" component is part of Mi Engine and the apps list is sent to an API on a Xiaomi-owned server: https://flash.sec.miui.com/detect/app
>
> If you have a problem with any of that, don't use MIUI, or don't even buy a Chinese phone. Get yourself an iPhone or a Samsung or whatever, and give your information to them instead (you know they'll collect that).
>
> ---
>
> The difference between Global ROM and China ROM is the URL to which apps list is sent.
>
> China ROM: https://flash.sec.miui.com/detect/app
>
> Global ROM: https://flash.sec.intl.miui.com/detect/app

> [!quote]+ Igor Eisberg 对此事的回应（翻译版）[^dns617]"
>
> 要指出的几个事实，希望我们的用户中的少数偏执狂不再打扰我们。
>
> 1.  MIUI 的安全不是我们的责任。我们不是安全专家，这些 ROM 不是为那些害怕中国的偏执狂准备的。
> 2.  腾讯引擎存在于 GuardProvider（MIUI 安全组件）应用中。
> 3.  腾讯引擎对国际 ROM（包括我们的）是禁用的。
> 4.  应用程序列表没有发送到腾讯，「反欺诈」组件是小米引擎的一部分，应用程序列表被发送到小米所属服务器上的一个 API：
>     <https://flash.sec.miui.com/detect/app>
>
> 如果你对这些有意见，不要使用 MIUI，或者甚至不要买中国的手机。给自己买一部 iPhone 或三星或其他什么，然后把你的信息交给他们（你知道他们会收集这些信息）。
>
> ---
>
> 全球 ROM 和中国 ROM 之间的区别在于应用列表发送到的 URL。
>
> 中国ROM：https://flash.sec.miui.com/detect/app
>
> 全局ROM：https://flash.sec.intl.miui.com/detect/app

[^68146]: Cveronica, [Report that MIUI EU sends private data to China](https://web.archive.org/web/20230206043717/https://xiaomi.eu/community/threads/report-that-miui-eu-sends-private-data-to-china.68146/), Xiaomi European Community, 2023-02-04. (参照 2023-02-06).

[^dns617]: LoopDNS资讯播报, 《[Xiaomi.eu 开发人员在社区中回应](https://web.archive.org/web/20230206063317/https://t.me/s/DNSPODT/617)》, Telegram, 2023-02-06. (参照 2023-02-06).

## 禁止安装应用

2023年8月9日，有用户发现部分软件无法通过 MIUI 的应用包管理组件禁止 Telegram 更新，更新时会显示以下文字：[^63610]

[^63610]: unshiliu, 《[小米手机无法更新 telegram 了](https://web.archive.org/web/20230809064733/https://v2ex.com/t/963610)》, V2EX, 2023-08-09. (参照 2023-08-09).

> [!danger]+ 发现恶意应用
>
> 根据[相关法律](/censorship/相关法律.md)法规及监管要求，禁止安装该应用！
>
> 风险详情：
>
> 该应用为诈骗 APP，存在欺诈性内容、欺诈扣费或恶意诱导消费等行为，使用将带来较大风险。

然后底部仅有「取消更新」按钮，如果关闭安全守护功能，那么会显示：

> [!danger]+ 该应用未通过小米安全审核
>
> 该应用为诈骗 APP，存在欺诈性内容、欺诈扣费或恶意诱导消费等行为，使用将带来较大风险。

该用户最后是通过断网，让应用包管理组件无法联网验证 App 才能安装。

此限制可能是响应数日前的《[工业和信息化部关于开展移动互联网应用程序备案工作的通知](/rule/工业和信息化部/工业和信息化部关于开展移动互联网应用程序备案工作的通知.md)》。

## 上传包名

此章节的消息属于未知时间、来源，仅有一张邮件截图，所以真实性尚不明确：

> [!email]+ 邮件[^xEPq6]
>
> 亲爱的小米用户:
>
> 您好！根据《反电信网络诈骗法》等相关法律法
> 规要求，我们需要对应用包进行上报以便判断包
> 名是否属于国家反诈中心明令禁止安装的应用名
> 单。因此，无论用户是否开启安全检查的功能，
> 我们都需要依法上报应用包名。
>
> 感谢您与我们联系！
>
> 顺颂时祺\
> 小米信息安全与隐私委员会
>
> \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
>
> The original content of your request is as follow\
> 您所提交请求的原始内容如下
>
> \>>>发现上传安装包名\
> \>>>
>
> 使用MIUI自带的应用包安装时发现在关闭安全检
> 查和安全守护情况下，仍然会上传安装包名称。
> 这是否与宣称的侧端处理相矛盾。仔细阅读隐私
> 条款后没有发现与之相关的事项
>
> \>>>CN\
> \>>>应用包管理程序\
> \>>>null

[^xEPq6]: flik, 《[不得为未履行备案手续的 APP 提供网络接入、分发、预置等服务。这个要怎么实现啊](https://archive.is/xEPq6#45% "https://www.v2ex.com/t/964070")》, V2EX, 2023-08-10. (参照 2023-08-11).

关于其中的落款「小米信息安全与隐私委员会」，根据新闻来看，小米确实有这么一个委员会处理信息安全和隐私问题。[^24966]

[^24966]: 快科技, 《[中国人喜欢用隐私换取便利？小米：隐私保护没有国界](https://web.archive.org/web/20230811083347/https://mp.ofweek.com/iot/a645693724966)》, 维科网/维科号, 2020-07-02. (参照 2023-08-11).

## 小爱同学事故

2023年9月14日，MIUI 内置的 AI 助理——小爱同学，被发现疑似故障，会不断回复关于「中国」「民主国家」相关的内容。很快新浪微博审查了相关话题。[^fx5Aw][^81933][^73478][^00201]

[^fx5Aw]: 马赛骡李皮, 「[小爱同学故障，@美联社 闻香而来。好在群友立场坚定，绝不给当枪使［二哈（表情）］](http://archive.today/2023.09.14-082120/https://weibo.com/1044632102/Njgdfx5Aw)」, 新浪微博, 2023-09-14. (参照 2023-09-14).

[^81933]: 「[微博搜索小爱同学](http://archive.today/2023.09.14-081933/https://s.weibo.com/weibo?q=小爱同学)」, 新浪微博, 2023-09-14. (参照 2023-09-14).

[^73478]: 星島網, 《[小米「小愛同學」疑故障 問什麼都答：「中國是當之無愧的民主國家」](https://web.archive.org/web/20230914160017/https://www.singtao.ca/6373478/2023-09-13/news-小米「小愛同學」疑故障++問什麼都答：「中國是當之無愧的民主國家」/?variant=zh-hk)》, Sing Tao Daily 星島日報加拿大, 2023-09-13. (参照 2023-09-15).

[^00201]: 既要又要还要, 《[【立此存照】小爱同学“党性发作”重复声明“中国是民主国家”](https://web.archive.org/web/20230914160019/https://chinadigitaltimes.net/chinese/700201.html)》, 中国数字时代, 2023-09-14. (参照 2023-09-14).

## 禁止停用系统 App

2023年11月，HyperOS 更新了新功能，无法通过 ADB 停用系统应用。通过 ADB 临时进入维修模式，能够停用部分系统应用，不过一些系统核心组件仍无法停用。[^b3059]

[^b3059]: 这是你叠的频道, 《[经证实，HyperOS从11月的更新开始，无法停用系统应用](https://web.archive.org/web/20231115071805/https://t.me/s/BDovo_Channel/3059)》, Telegram, 2023-11-10. (参照 2023-11-15).
