---
title: Microsoft Bing
description:
published: true
date: "2022-08-10T10:58:46"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2021-12-17T23:44:06"
---

## 简介

> [!summary inline end]+ 元数据
>
> ```YAML
> 名称:
> - 英文名: Microsoft Bing
> - 中文名: 微软必应
> 域名:
> - 国际版: www.bing.com
> - 大陆版: cn.bing.com
> 推出时间: 2009年6月1日
> ```

<ruby>微软必应<rp>(</rp><rt>Microsoft Bing</rt><rp>)</rp></ruby>是一款由微软公司推出的网路搜寻引擎，前身分别是 MSN Search、Windows Live Search 以及 Live Search。

## 2009年的简体中文审查

2009年6月，必应推出后，就开始审查言论了，只要使用简体中文搜索，即使不是大陆 IP ，也会遭到审查。[^macc]媒体从业人员与微软联系后，得知这是无意的错误，将在之后修复，但五个月过去后，依然没有完全修复。[^bmb]

[^macc]: [Microsoft and Chinese Censorship - Nicholas D. Kristof Blog - NYTimes.com](https://web.archive.org/web/20100710232333/http://kristof.blogs.nytimes.com/2009/06/24/microsoft-and-chinese-censorship/)

[^bmb]: [Boycott Microsoft Bing - NYTimes.com](https://web.archive.org/web/20110219193403/http://kristof.blogs.nytimes.com/2009/11/20/boycott-microsoft-bing/)

之后微软在博客发布了公开的解释，微软依然没有承认这是审查，而是一个错误。[^c2cr]

[^c2cr]: [Committed to Comprehensive Results - Search Blog](https://web.archive.org/web/20150322022104/http://blogs.bing.com/search/2009/11/20/committed-to-comprehensive-results/)

## 进一步研究 Bing 国际版简体中文审查

### GreatFire 的研究

2014年，Bing 会显示该搜索是否删除了因法律法规而删除的条目，所以 GreatFire 制作了个一个在不同的网络情况下使用必应搜索敏感词的测试，以下的测试数据：

> | 搜索词汇                         | 在美国访问 Bing 国际版                   | 在美国访问 必应                        | 在中国访问 Bing 国际版                 | 在中国访问 必应                        |
> | -------------------------------- | ---------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
> | 自由微博 ※                      | 严重的审查<br>通用删除提示               | 严重的审查<br>部分审查提示             | 严重的审查<br>通用删除提示             | 严重的审查<br>部分审查提示             |
> | 「某个人名」                     | 严重的审查<br>无审查提示                 | 严重的审查<br>无审查提示               | 严重的审查<br>通用删除提示             | 严重的审查<br>部分审查提示             |
> | 自由门                           | 搜索结果正常<br>无审查提示               | 无结果完全审查提示                     | 无结果完全审查提示                     | 无结果完全审查提示                     |
> | 「某个事件名」                   | 搜索结果正常<br>无审查提示               | 搜索结果正常无审查提示<br>             | 少量搜索结果<br>通用删除提示           | 少量搜索结果<br>部分审查提示           |
> | site:freeweibo.com<br>(自由微博) | 自由微博主页不在结果中<br>通用删除提示 ※| 自由微博主页不在结果中<br>部分审查提示 | 自由微博主页不在结果中<br>通用删除提示 | 自由微博主页不在结果中<br>部分审查提示 |
> | site:nytimes.com<br>(纽约时报)   | 搜索结果正常<br>无审查提示               | 搜索结果正常<br>无审查提示             | 部分搜索结果<br>通用删除提示           | 部分搜索结果<br>部分审查提示           |
> | site:dongtaiwang.com<br>(动态网) | 搜索结果正常<br>无审查提示               | 搜索结果正常<br>无审查提示             | 少量搜索结果<br>通用删除提示           | 少量搜索结果<br>部分审查提示           |
>
> ※ 表示没有任何来自 freeweibo.com 官方网站的结果，如果搜索「freeweibo」，主页不会显示，且没有审查提示。
>
> 通用删除提示：某些结果已被删除
>
> 部分审查提示：依据中国的法律法规，我们屏蔽了特定的相关搜索结果。
>
> 完全审查提示：由于中国法律法规的限制，我们删除了这些搜索词的结果。

GreatFire 将这个「错误」报告给了微软，并要求解释，但微软只给出了：「感谢你的询问，我们拒绝回答」这样的回复。[^bpccg]

[^bpccg]: [Bing在全球实行中国式审查 - GreatFire.org](https://web.archive.org/web/20140221150345/https://zh.greatfire.org/blog/2014/feb/bing-practicing-chinese-censorship-globally)

### Charles Liu 的研究

2017年，Charles Liu 研究大陆 IP 访问国际版的必应，然后搜索 BBC、CNN、Wikipedia、The New York Times 和 United States of America 这些内容，都显示新华网批评网站的新闻或者外交部的页面，基本没有有效信息，亦无法通过这些关键词找到官网。[^bgfciec]

[^bgfciec]: [Bing Goes Full-on Censorship in English Search Results Within China - The Nanfang](https://web.archive.org/web/20180107175119/https://thenanfang.com/search-engine-bing-com-featuring-skewed-results-china/)

## 没有透明度报告

微软必应的删除政策在 2010年底 到 2016年初 是:「如果政府机构要求删除显示的搜索结果与我们联系，我们需要政府机构提供适用法律和权利的证明，以及官方的删除要求申请。如果提供了这类证明且我们可以查证，那么我们可以履行删除申请。如果要求我们必须实施申请，我们将有限地实施申请。如果删除申请不符合国际标准，我们可能选择询问相关解释以进一步减少我们须履行的义务。」[^ff808447]

[^ff808447]: [必应 Bing 如何返回搜索结果](https://web.archive.org/web/20140221075520/http://onlinehelp.microsoft.com/zh-CN/bing/ff808447.aspx)

但微软必应没有透明度报告，也就无法查证每一条被删除的结果具体违反了哪一条法律，或者今年一共移除了多少个结果，其中违反某条法律的占比是多少。

## 2014年关闭大陆访问国际版通道

2014年8月21日，大陆 IP 将无法访问国际版必应，因为会自动跳转到必应中国版。

以上信息来自 [Wikipedia Microsoft Bing 条目](https://zh.wikipedia.org/wiki/Microsoft_Bing#网络审查)，暂无资料证明具体时间。

2017年8月1日，大陆版必应必应整合了「国际版」能够在搜索栏上方切换，但实际切换到国际版后，只能搜索到一点英文的网页。[^63275547]

[^63275547]: [如何评价Bing搜索中国页面8月1日起区分国内版与国际版？ - 知乎](https://web.archive.org/web/20211218042357/https://www.zhihu.com/question/63275547)

## 2019年首次故障

2019年1月22日，「新闻实验室」的一篇名为《搜索引擎百度已死》的文章开始发表，提到了百度是如何被百家号占据的，成为低质量搜索引擎的。[^sebd]

[^sebd]: [搜索引擎百度已死 - 新闻实验室 - 虎嗅网](https://web.archive.org/web/20201111072259/https://www.huxiu.com/article/282406.html)

2019年1月23日，必应首次在大陆大规模访故障。一天后，在 1月24日 才恢复，在此期间备用链接可以正常使用。备用链接为 www2.bing.com 与 www4.bing.com 。

随后「界面新闻」称：「得到必应相关人员证实，由于百度流量冲向必应，必应浏览器暂时无法使用，目前还未恢复。必应已经组织人员修复。」[^hrfqzka]但在不久之后就删除了这条信息，只剩下了其他媒体的转载。文中的「百度流量冲向必应」指的是用户流量，也就是说该必应相关人员认为由于大量用户涌入，所以造成了 DDOS ，然后出现了大规模访问故障。

[^hrfqzka]: [因百度流量冲向必应 必应暂时无法使用 - 新浪网](https://web.archive.org/web/20190902121845/http://finance.sina.com.cn/roll/2019-01-23/doc-ihrfqzka0445279.shtml)

金融时报的 FT中文网 在 2019年1月24日 上午 发布了《必应搜索在中国遭屏蔽》这篇报道，主要称：「两位了解中国政府命令的消息人士证实，必应已遭屏蔽。其中一位消息人士解释称，中国主要国有电信公司之一的中国联通 (China Unicom) 证实，政府已下令屏蔽必应。」[^1215]

[^1215]: [必应搜索在中国遭屏蔽 - FT中文网](https://web.archive.org/web/20190124044953/http://www.ftchinese.com/story/001081215)

2019年1月24日 21时 左右，必应在大陆的网络开始逐渐恢复。[^172]但微软官方并未公开对这起严重事故做出任何直接回应，只通过媒体进行了简单的确认了无法访问是存在的，并且会尝试解决。[^cmbcb]

[^172]:[微软必应中国部分地区已恢复访问 - 微软,必应 - IT之家](https://web.archive.org/web/20190502202234/https://www.ithome.com/0/407/172.htm)

[^cmbcb]: [China Appears to Block Microsoft’s Bing as Censorship Intensifies - The New York Times](https://web.archive.org/web/20211023144607/https://www.nytimes.com/2019/01/23/business/china-microsoft-bing.html)

2019年1月25日，必应的大陆网络基本完全恢复。但微软没有公布调查报告，这个事件就此结束。

## 2021年全球审查

2021年6月4日，所有地区的必应搜索都审查了一张图片，这个问题数小时之后才修好，微软称这是意外的认为差错。这件事导致了必应被全球性的一些抵制，文本编辑器软件 [Notepad++](/software/notepad_plus_plus.md) 因此删除了必应这个内置的搜索引擎。

> [!example]+ 相关链接
> + [Microsoft says 'tank man' image blocking due to human error - ABC News](https://web.archive.org/web/20210628172506/https://abcnews.go.com/Technology/wireStory/microsoft-tank-man-censorship-due-human-error-78105315)
> + [Microsoft says error led to no matching Bing images for Tiananmen ‘tank man’ | Reuters](https://web.archive.org/web/20210705124052/https://www.reuters.com/technology/microsoft-bing-raises-concerns-over-lack-image-results-tiananmen-tank-man-2021-06-04/)

<!--
    + [“坦克人”照片搜不到 微软Bing被质疑屏蔽六四敏感内容 - DW](https://web.archive.org/web/20210620000617/https://www.dw.com/zh/坦克人照片搜不到-微软bing被质疑屏蔽六四敏感内容/a-57786620)
    + [微软必应“六四”当日屏蔽“坦克人”图片 - 纽约时报中文网](https://web.archive.org/web/20210612060310/https://cn.nytimes.com/business/20210607/bing-tank-man-microsoft/)
    + [“坦克人”照片六四消失：微软被质疑屏蔽六四敏感内容 — 普通话主页](https://web.archive.org/web/20210620190150/https://www.rfa.org/mandarin/Xinwen/6-06052021114948.html)
-->

## 2021年第二次故障

2021年12月16日 18:30 左右，必应第二次次在大陆大规模访故障，只剩下联通还能访问必应，其他的电信以及移动都不容易连上。[^17CE_12_16]

[^17CE_12_16]: [cn.bing.com GET测试结果 网站速度测试 17CE](https://web.archive.org/web/20211216154611/http://www.17ce.com/site/http/20211216_751f80c05e5611eca8ff613adab63e9c:1.html)

未知时间，必应大陆版在网页的右下角添加了一个名为「搜索建议暂时关闭」的链接，点击会跳转至 <cn.bing.com/cnlegal> 但仅限大陆 IP 访问，其他地区的 IP 访问会出现熊猫错误。进入后的页面是一段英文提示，全文如下：

> Bing China has been required by the relevant government agency to suspend the search auto suggestion feature in mainland China for 30 days under PRC laws. Bing is a global search platform and remains committed to respect the rule of law and users’ right to access information and to help users find information to the greatest extent feasible under applicable laws.[^bcng]

[^bcng]: [Bing 无法访问临时解决方案 - NucomBlog](https://web.archive.org/web/20211218124110/https://www.nucomblog.com/bing-无法访问临时解决方案/)

2021年12月18日 上午，备用链接 www2.bing.com 与 www4.bing.com 也出现了访问故障。

2021年12月18日 12:30 左右，必应的大陆网络基本完全恢复。[^213]

[^213]: [微软 Bing（必应）已可正常访问 - IT之家](https://web.archive.org/web/20211218062903/https://www.ithome.com/0/593/213.htm)

> [!example]+ 相关链接
>
> +   [必应崩啦？](https://web.archive.org/web/20211217114535/https://www.v2ex.com/t/822647), V2EX.
> +   [疑似电信移动到联通互联节点故障导致 Bing 无法访问](https://web.archive.org/web/20211216153646/https://v2ex.com/t/822688), V2EX.
> +   [最近必应中文搜索是否出现问题？](https://web.archive.org/web/20211216154036/https://www.zhihu.com/question/288799107), 知乎.
> +   [bing的在中国的搜索自动建议功能被暂停服务30天 目前.cn域名无法打开](https://web.archive.org/web/20211216153557/https://old.reddit.com/r/China_irl/comments/rhpn14/bing的在中国的搜索自动建议功能被暂停服务30天_目前cn域名无法打开/), reddit/China_irl.
> +   [2021 年 12月 16日 18:30许，必应搜索在中国无法访问](https://web.archive.org/web/20211216153602/https://old.reddit.com/r/China_irl/comments/rhrb5x/2021_年_12月_16日_1830许必应搜索在中国无法访问/), reddit/China_irl.

## 大陆暂时关闭 7 天「搜索建议」

2022年3月19日，大陆必应再次关闭「搜索建议」功能 7 天，[^nZ1]并且快照功能也在相近的时间被关闭。[^841505]

[^nZ1]: 《[微软必应在内地“搜索建议”暂时关闭7天](https://web.archive.org/web/20220319234845/https://i.ifeng.com/c/8EVnZ1E62aX)》, 凤凰网科技, 2022-03-19. 参照: 2022-03-20. [Online].

[^841505]: linshiyouxiang, 《[各位 Bing 最近搜索质量感觉有下降吗? (不排除是个人网络配置问题)](https://www.v2ex.com/t/841505)》, V2EX/问与答, 2022-03-19. (参照 2022-03-20).
