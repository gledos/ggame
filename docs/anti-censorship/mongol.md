---
title: mongol
description: Mongol.py is a tool that was inspired by a research paper[0] that described the physical location and number of routers acting for the Great Firewall (GFW) of China
published: true
date: 2021-07-28T07:01:07.862Z
tags:
- GFW
- Github
editor: markdown
dateCreated: 2021-07-28T07:01:07.862Z
---

## 定位防火长城

> ![mongol](src/anti-censorship/mongol.webp)
>
> github上有人释出了一个python脚本 [mongol.py](https://web.archive.org/web/20160528173428/https://github.com/mothran/mongol) ，可以定位中国防火长城的物理位置和数量。
>
> > mongol.py以密歇根大学计算机系的 [Xueyang Xu](https://web.archive.org/web/20160528173428/http://www.facebook.com/xueyang.xu) 和 [Z. Morley Mao](https://web.archive.org/web/20160528173428/http://web.eecs.umich.edu/~zmao/) 在2011年发表的 [一篇论文](https://web.archive.org/web/20160528173428/http://pam2011.gatech.edu/papers/pam2011--Xu.pdf) 为理论依据，发送“tibetalk“这个关键字来刺激防火墙，然后跟踪TCP报头的路由，找出RST数据包返回前最后一跳的位置，从而定位防火长城的物理位置。
>
> [这是](https://web.archive.org/web/20160528173428/https://plus.google.com/u/0/photos/100492709706470891167/albums/5822784007368227057) 目前得到的防火长城分布图。[^32720]

[^32720]: [定位防火长城 - Solidot](https://web.archive.org/web/20160528173428/http://www.solidot.org/story?sid=32720)

### 相关链接

+ 已被删除 [mongol 神器！定位GFW物理位置 - V2EX](https://web.archive.org/web/20121230182351/http://www.v2ex.com/t/55177)
