---
title: "Clash For Windows"
description:
published: true
date: "2023-11-03T09:36:08"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2023-11-03T08:19:45"
---

## 简介

Clash for Windows 是 Fndroid 开发的 Windows、Linux 与 macOS 全桌面平台的 GUI，基于 Clash 核心和 Electron 框架。（后文简称为 CFW）

不过 CFW 并没有开源，存在违反 GPL 的风险，好在 clash 的终身仁慈独裁者 Dreamacro，没有对此有异议。[^cl541]

[^cl541]: ghost, 《[Clash For Windows是否违反了Clash的GPL协议？ · Issue #541 · Dreamacro/clash](https://web.archive.org/web/20231025223859/https://github.com/Dreamacro/clash/issues/541)》, GitHub, 2020-02-27. (参照 2023-11-03).

## 删库

2023年11月2日 下午，CFW 的 GitHub 仓库，仅存放简介和软件的仓库 `https://github.com/Fndroid/clash_for_windows_pkg`，被逐渐清空，最后整个仓库也被删除，63.2k stars 惊人数量的点赞也消失了。[^19349][^01751][^24923]

[^19349]: 李老师不是你老师, 「[刚刚，墙内最著名的翻墙软件Clash for windows 删库了](https://twitter.com/whyyoutouzhele/status/1719989543837819349)」, X（Twitter）, 2023-11-02. (参照 2023-11-03).

[^01751]: 新时代草泥马, 《[【网络民议】知名翻墙客户端Clash for Windows删库停更](https://web.archive.org/web/20231102151730/https://chinadigitaltimes.net/chinese/701751.html)》, 中国数字时代, 2023-11-02. (参照 2023-11-03).

[^24923]: 8899, 《[家人们，出大事了](https://web.archive.org/web/20231103014048/https://hostloc.com/thread-1224923-1-1.html)》, 美国VPS综合讨论, 2023-11-02. (参照 2023-11-03).

Fndroid 随后在 Telegram 频道和 X（Twitter），发布了说明：「停止更新了，江湖再见吧😅」。[^09092]

[^09092]: Fndroid, 「[停止更新了，江湖再见吧😅](https://twitter.com/fndroid/status/1719980029571109092)」, X（Twitter）, 2023-11-02. (参照 2023-11-03).

当天，CFW 的上游 Clash 暂时未受影响，其他使用了 Clash 核心的 GUI，比如 Clash verge、Clash for Android、ClashX、ClashN 也未受明显影响。

2023年11月3日，Clash 相关软件逐渐开始删库：

+   14:02 Dreamacro/clash（删）[^c_0]
+   14:10 MetaCubeX/Clash.Meta（存）[^c_1]
+   14:40 EAimTY/tuic（删）[^c_2]
+   14:40 Dreamacro/clash-dashboard（删）[^c_13]
+   14:44 lotusnetwork/lotusboard（存）[^c_16]
+   15:10 Z-Siqi/Clash-for-Windows_Chinese（存）[^c_15]
+   15:11 fw876/helloworld（删）[^c_3]
+   15:54 juewuy/ShellClash（更名）[^c_4]
+   16:02 Kr328/ClashForAndroid（删）[^c_5]
+   16:11 Clash Multiplatform（解散群组）[^c_6]
+   16:16 MetaCubeX/ClashMetaForAndroid（踢群员）[^c_7]
+   16:32 ModuleList/ClashF（存）[^c_8]
+   16:32 CHIZI-0618/box4magisk（存）[^c_8]
+   16:42 zzzgydi/clash-verge（存）[^c_9]
+   16:49 Fclash/Fclash（存）[^c_10]
+   16:50 immortalwrt/homebridger（存）[^c_11]
+   17:18 openrhc/GUI.for.Clash（删）[^c_12]
+   18:00 Fclash/Fclash（删）[^c_14]

[^c_0]:  https://t.me/gledos_science/16545
[^c_1]:  https://t.me/open_source_community/370986
[^c_2]:  https://web.archive.org/web/20231103090655/https://hostloc.com/thread-1225733-1-1.html
[^c_13]: https://t.me/gledos_science/16617
[^c_16]: https://web.archive.org/web/20231103095724/https://github.com/lotusnetwork/lotusboard
[^c_15]: https://web.archive.org/web/20231103102751/https://github.com/Z-Siqi/Clash-for-Windows_Chinese/commits/main
[^c_3]:  https://t.me/wtmsd/61789
[^c_6]:  https://t.me/BDovo_Channel/2610
[^c_7]:  https://t.me/BDovo_Channel/2613
[^c_8]:  https://t.me/acgdaily/22989
[^c_9]:  https://t.me/BDovo_Channel/2629
[^c_4]:  https://t.me/BDovo_Channel/2602
[^c_5]:  https://t.me/acgdaily/22984
[^c_10]: https://t.me/c/1731060325/9545
[^c_11]: https://t.me/c/1731060325/9547
[^c_12]: https://t.me/gledos_science/16584
[^c_14]: https://t.me/gledos_science/16615

括号中的（删）表示删除公开库，（存）表示存档仓库，意味着停止开发。
