---
title: "ISOLATION BY DESIGN（设计上的隔离）"
description:
published: true
date: "2024-12-10T01:01:15"
特殊标签标记: #无标签
editor: markdown
dateCreated: "2024-06-27T16:29:49"
---

## 简介

GreatFire 于 2013 年开始监控 Apple 的审查制度。2019 年，它启动了 AppleCensorship 项目以及 App Store Monitor (ASM)，
以跟踪在 App Store 中不可用的 iOS App。

2024年6月20日，AppleCensorship 与 ARTICLE 19 ASIA 合作，发布了报告："Isolation by Design: Censorship in Apple’s App
Store in China and Human Rights Implications."（设计上的隔离：苹果应用商店在中国的审查制度及其对人权的影响）。[^24049]

[^24049]: [New Report Unveils App Censorship in China’s Apple App Store Amid Recent Developments](https://web.archive.org/web/20240625224049/https://www.appcensorship.org/news/new-report-unveils-app-censorship-in-chinas-apple-app-store-amid-recent-developments), AppCensorship, 2024-06-20. (参照 2024-06-27).

该报告仔细研究了中国 Apple App Store 内错综复杂的应用程序审查情况，是相当完善的审查研究。

比如全球下载次数最多的 100 个应用程序中，大陆 App Store 区可用的仅有 34 个，而美国仅有 8 个不可用。
这表明有地区明显孤立于世界。

关于下架大陆 App Store 区的下架倾向，AppleCensorship 整理出了 VPN、隐私和数字安全、LGBTQ+ 和约会、新闻、媒体和信息、
社交媒体和通讯，以及少数民族和宗教这些种类，并详细统计了属于这些种类 App 的下架数量。

不过该报告的原文是 PDF 文档，多行复制、翻译以及搜索都不太方便。于是先用 [PDF to Markdown](https://pdf2md.morethan.io/)
工具进行粗略转换，再人力修正，这样就能使用浏览器的翻译工具了。

## ISOLATION BY DESIGN: Censorship in Apple's App Store in China and Human Rigths Implications

> [!summary]+ 元数据
>
> ```yaml
> 标题:
> - 英文: "Isolation by Design: Censorship in Apple’s App Store in China and Human Rights Implications"
> - 简体中文: "设计上的隔离：苹果应用商店在中国的审查制度及其对人权的影响"
> 链接: https://appcensorship.org/files/Isolation-By-Design.pdf
> ```

<!-- 1 -->

## EXECUTIVE SUMMARY

This report, developed under the Engaging Tech for Internet Freedom (ETIF) project in collaboration
with ARTICLE 19, delves into the intricate landscape of app censorship within Apple's App Store
in China. The report identifies and analyzes patterns of app removals targeting content that
the Chinese government deems sensitive. This includes apps related to political dissent, ethnic
minorities (Tibetans, Uyghurs), LGBTQ+ issues, and other areas where the Chinese government
enforces strict control over information. Apple's lack of transparency regarding app removals and
its interactions with Chinese authorities is a significant concern. The company does not provide
detailed information about the legal basis for app takedowns or the processes involved in these
decisions. Through the data collected by the AppleCensorship website’s App Store Monitor (ASM),
the report highlights the disparity between Apple's public commitments to human rights and its
compliance with government app takedown requests in China.

The report recommends that Apple improve transparency by disclosing the extent of app removals
and rejections requested by the Chinese government. It suggests enhancing the appeal process
to be more transparent and accessible for developers and challenging arbitrary app takedown
requests. Furthermore, it advocates for Apple to use its influence to advocate for the digital rights of
developers and users. For the U.S. government and lawmakers, the report calls for thorough
investigations into Apple’s business practices, implementing regulatory frameworks to ensure
consistent standards globally, and supporting the development of international standards for
technology operations that prioritize human rights. By understanding the nuances of app censorship
in China, this report calls for collective action from Apple, governments, the international
community, and human rights advocates to promote transparency, accountability, and digital
freedom globally.

<!-- 2 -->

## Contents

**EXECUTIVE SUMMARY**<br>
**INTRODUCTION**

---

+ [I. CHINA’S APP STORE](#i-chinas-app-store)
  + [The Isolation of Chinese Mobile Users](#the-isolation-of-chinese-mobile-users)
    + [What about other App Stores?](#what-about-other-app-stores)
  + [AppleCensorship's List of Unavailable Apps in China](#applecensorships-list-of-unavailable-apps-in-china)
    + [Identifying Potential Cases of Censorship](#identifying-potential-cases-of-censorship)
  + [Curating Custom App Categories](#curating-custom-app-categories)
    + [Establishing Bespoke “Sensitive” Categories](#establishing-bespoke-sensitive-categories)
    + [Sensitive Categories](#sensitive-categories)
    + [Listing and Testing Availability of Apps from Sensitive Categories](#listing-and-testing-availability-of-apps-from-sensitive-categories)
  + [Results and analysis](#results-and-analysis)
    + [Tibet \& Buddhism](#tibet--buddhism)
    + [Uyghur](#uyghur)
    + [LGBTQ+ \& Dating](#lgbtq--dating)
    + [Religion](#religion)
    + [News, Media \& Information](#news-media--information)
    + [Social Media \& Communication](#social-media--communication)
    + [VPN](#vpn)
    + [Privacy and digital security](#privacy-and-digital-security)
+ [II. APPLE'S CONTENT CURATION POLICIES AND CHINA'S REGULATIONS OF THE APP STORE](#ii-apples-content-curation-policies-and-chinas-regulations-of-the-app-store)
  + [Government Takedown Requests in China \& Apple’s Transparency Reports](#government-takedown-requests-in-china--apples-transparency-reports)
    + [Unveiling the Omissions](#unveiling-the-omissions)
    + [Apple’s appeal process](#apples-appeal-process)
    + [Apple’s Lack of Transparency Regarding Government App Takedown Requests in China](#apples-lack-of-transparency-regarding-government-app-takedown-requests-in-china)
  + [VPN apps in China’s App Store](#vpn-apps-in-chinas-app-store)
    + [The Blanket Ban of VPN Apps in Apple's China App Store](#the-blanket-ban-of-vpn-apps-in-apples-china-app-store)
    + [The Legality of VPN Usage in China](#the-legality-of-vpn-usage-in-china)
  + [Apple's Commitments to Human Rights and Their Violations](#apples-commitments-to-human-rights-and-their-violations)
    + [Breaching Its Own Commitments](#breaching-its-own-commitments)
    + [UN Guiding Principles on Business and Human Rights](#un-guiding-principles-on-business-and-human-rights)
+ [CONCLUSION AND RECOMMENDATIONS](#conclusion-and-recommendations)

<!-- 3 -->

<!-- 4 -->

## INTRODUCTION

ensorship, over-compliance, and a glaring lack of transparency characterize Apple's
operations in China. For the past 15 years, since the introduction of the first iPhone in the
country, Apple's relationship with China has been a delicate balancing act between adhering
to its human rights commitments and succumbing to the economic and political pressures of
operating in the world's second-largest economy. The company's significant financial stake in
China—where the greater China segment generated over $74 billion in revenue for Apple in 2023,
accounting for almost 20 percent of the company's total sales—underscores the extent to which
its decisions are driven by business interests. These interests often translate into compliance with
China's stringent content regulation and cybersecurity laws, contributing to the censorship of apps
deemed "sensitive" by Chinese authorities. China's control over the digital sphere, exemplified by
The Great Firewall, has been bolstered by Apple's willingness to meet these demands for digital
sovereignty.

This report was produced within the project Engaging Tech for Internet Freedom (ETIF), implemented
jointly with ARTICLE 19. ARTICLE 19 does not necessarily share the opinions expressed within the
report. The AppCensorship project bears the sole responsibility for the content.

The purpose of this report is to dissect the implications of app censorship within Apple's App Store
in China. Leveraging data from the AppleCensorship website’s App Store Monitor (ASM), we aim to
shed light on the patterns of app removals targeting content considered sensitive by the Chinese
government. This includes politically sensitive topics, ethnic minorities (Tibetans, Uyghurs), LGBTQ+
issues, and other areas under strict information control. By analyzing these patterns, the report
seeks to highlight the inconsistency between Apple's public commitments to human rights and its
compliance with local censorship laws in China.

The report highlights the stark contrast between China's App Store and its global counterparts,
showcasing the isolation of Chinese users from the broader digital landscape. Furthermore, it
examines the lack of transparency in Apple's content removal processes and its implications for
developers and users, with a particular focus on the categorical ban on VPN apps, which raises
significant questions about privacy rights and access to information.

Ultimately, this report aims to provide a comprehensive understanding of the dynamics at play
in Apple's App Store operations in China. By doing so, we hope to foster greater transparency
and accountability, and to advocate for a more open and inclusive digital future, free from undue
censorship and corporate complicity.

<!-- 5 -->

## I. CHINA’S APP STORE

### The Isolation of Chinese Mobile Users

Chinese iOS users experience a distinct isolation from the global app ecosystem. This separation
becomes evident even without delving into sensitive categories like news or apps related to Tibetan
and Uyghur communities.

On January 4, 2023, apptopia, a private company and provider of app intelligence,
[released its sixth annual worldwide and US download leader charts][].
These charts measured the top 10 apps with the
highest number of downloads globally and in the US across various categories.

[released its sixth annual worldwide and US download leader charts]: https://apptopia.com/blog/worldwide-and-us-download-leaders-2022/?hss_channel=tw-429179115#Education

We focused on 12 out of 19 categories, as five categories only had US charts. Additionally, we
excluded two categories, Shopping and Health & Fitness, as they appeared less relevant or contained
apps associated with specific retail store brands. Often, these brands have their own localized apps
catering to specific markets, making them unavailable in many App Stores.

> [!quote]+ The Structure of the App Store
>
> The App Store serves as the exclusive platform for iOS device users (iPhones, iPads,
> iPods) to download apps. Developers are unable to offer their apps to iOS users through
> alternative means, such as their own websites. This has led to the App Store, and the
> iOS operating system as a whole, being often referred to as a "walled garden." While the
> exact number of apps available on the App Store remains unknown, Apple stated at the
> end of 2020 that it boasted 1.8 million apps.
>
> Although Apple typically refers to "the" App Store as a singular entity, it would be more
> accurate to describe the platform as "App Stores" in the plural form, as it encompasses
> various stores where iOS users worldwide can access and download apps.
>
> In actuality, Apple operates 175 distinct App Stores, each offering a different selection
> of apps from the overall pool of 1.8 million apps claimed by Apple to be available
> worldwide. These individual App Stores, often referred to by Apple as "storefronts," are
> not merely storefronts of a single unified App Store. Instead, they function as entirely
> separate entities, granting different language support, versions, and app access based
> on the location of the iOS user.
>
> Consequently, millions of users among the 1.5 billion active iOS devices currently in use
> have access to unique catalogues of apps, with none of them having access to the entire
> collection of 1.8 million apps claimed by Apple. Apple's portrayal of "THE App Store" as
> a single store for all users does not align with reality. By employing multiple app stores
> and presenting them as one, Apple effectively obscures instances of censorship in more
> restrictive countries.

<!-- 6 -->

**The "10 Most Downloaded Worldwide" lists selected include the following:**

|   1   | Top 10 apps (across all categories)   |
| :---: | ------------------------------------- |
|   2   | Top Games apps                        |
|   3   | Top Travel apps                       |
|   4   | Top Online Travel Agencies (OTA) apps |
|   5   | Top Entertainment apps                |
|   6   | Top Finance apps                      |
|   7   | Top Food & Drink apps                 |
|   8   | Top Dating apps                       |
|   9   | Top Education apps                    |
|  10   | Top Social Media apps                 |

We then conducted tests to determine the availability of these apps in China's App Store.

<!-- 7 -->

> [!note]+ Availabilty of 108 most downloaded apps worldwide in Apple's China's App Store
>
> ```mermaid
> pie
>     "Unavailable in China" : 39
>     "Available but not working" : 2
>     "(blocked)" : 8
>     "Other" : 51
> ```
>
> All the results can be found here: [link](https://www.article19.org/wp-content/uploads/2024/06/Availability-of-worldwide-popular-apps-in-Chinas-App-Store.xlsx)

The results paint a clear picture: out of the 108 apps tested by the ASM, 55 apps (51% of the total)
are not available in China. Additionally, nine apps are available for download but are blocked by the
Chinese authorities, rendering them unusable for Chinese users. These apps include Google Maps,
YouTube, Instagram, WhatsApp, Telegram, Facebook, Messenger, Twitter, and WhatsApp Business.

Available apps

| Service                  | Date of Block                                             | Reason/Event Leading to Block                                                                                                                                                                 |
| ------------------------ | --------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Google Maps**          | Intermittently:<br>2012- 2013<br>Permanently:<br>Jun 2014 | Google had started to encrypt its traffic using the HTTPS protocol, which was eluding the authorities' censorship, leading the authorities to retaliate by blocking all of Google's services. |
| **YouTube**              | Indefinitely,<br>from Mar 2009                            | Blocked following riots in Xinjiang, possibly due to videos related to the incident.                                                                                                          |
| **Instagram**            | Sept 2014                                                 | Blocked during the Hong Kong protests to control the flow of information.                                                                                                                     |
| **WhatsApp**             | Sept 2017                                                 | Blocked possibly due to its encryption features, hindering surveillance efforts.                                                                                                              |
| **Telegram**             | Jul 2015                                                  | Blocked following suspicions that it was used to coordinate protests.                                                                                                                         |
| **Facebook**             | Jul 2009                                                  | Blocked after the Urumqi riots, presumably to control information and prevent activism.                                                                                                       |
| **Messenger**            | Presumably from<br>launch (2011)                          | Blocked due to its association with Facebook.                                                                                                                                                 |
| **Twitter**              | Jul 2009                                                  | Blocked after the Urumqi riots to prevent the spread of information regarding the event.                                                                                                      |
| **WhatsApp<br>Business** | Presumably from<br>launch (2018)                          | Same reasons as for WhatsApp, as it shares the platform's core features.                                                                                                                      |

<!-- 8 -->

One app, FIFA MOBILE, appears to be exclusive to Japan while a separate version of the app is
available [only for the Chinese market](https://applecensorship.com/app-store-monitor/app/1305599559).
Two other apps seem to be limited to Android devices.

Overall, 66 apps (61%) out of the 108 most downloaded apps worldwide are unavailable to Chinese
iOS users.

If we focus on the Top 10 most downloaded apps worldwide, the situation becomes even more
evident: none of these apps are accessible to Chinese users. Five apps are simply not available in
China's App Store, while the remaining five, though available, are blocked by the government and
cease to function once installed on a user's device.

ByteDance has tailored [TikTok's experience][] for international audiences, while offering a separate
app exclusively for China, known as Douyin. Although superficially similar, these short-form video
sharing platforms are distinct in their target markets and [operational frameworks][]. TikTok's global
version boasts a variety of content and creative tools to cater to its diverse user base. Conversely,
Douyin is customized for Chinese users only, [complying with the nation's stringent censorship rules][]
and integrating with local social media services like WeChat and Weibo.

[TikTok's experience]: https://citizenlab.ca/2021/03/tiktok-and-douyin-explained/
[operational frameworks]: https://citizenlab.ca/2021/03/tiktok-vs-douyin-security-privacy-analysis/
[complying with the nation's stringent censorship rules]: https://ipvm.com/reports/douyin-prc-censorship

<!-- 9 -->

> [!note]+ Table 1:
>
> Top 10 Most Downloaded Apps in 2022 Worldwide according to mobile market intelligence firm [apptopia][].
>
> [apptopia]: https://blog.apptopia.com/worldwide-and-us-download-leaders-2022?hss_channel=tw-429179115#Education
>
> | #   | App                               | ID         | Category          | Availability in mainland China's App Store | Total Unavailability |
> | --- | --------------------------------- | ---------- | ----------------- | :----------------------------------------: | -------------------- |
> | 1   | **TikTok - Videos, Music & LIVE** | 835599320  | Entertainment     |                    ❌                      | 17                   |
> | 2   | **Instagram**                     | 389801252  | Photo & Video     |                   ⭕️＊                     | 0                    |
> | 3   | **WhatsApp Messenger**            | 310633997  | Social Networking |                   ⭕️＊                     | 0                    |
> | 4   | **CapCut - Video Editor**         | 1500855883 | Photo & Video     |                    ❌                      | 3                    |
> | 5   | **Snapchat**                      | 447188370  | Photo & Video     |                   ⭕️＊                     | 0                    |
> | 6   | **Telegram Messenger**            | 686449807  | Social Networking |                   ⭕️＊                     | 0                    |
> | 7   | **Subway Surfers**                | 512939461  | Games             |                    ❌                      | 5                    |
> | 8   | **Facebook**                      | 284882215  | Social Networking |                   ⭕️＊                     | 0                    |
> | 9   | **Stumble Guys**                  | 1541153375 | Games             |                    ❌                      | 3                    |
> | 10  | **Spotify - Music and Podcasts**  | 324684580  | Music             |                    ❌                      | 9                    |
>
> ＊: the app can be downloaded but is unable to connect to its servers. It is therefore unusable

<!-- 10 -->

#### What about other App Stores?

This initial set of tests highlights that China's App Store does not host the majority of the most
popular apps worldwide. To determine if China's App Store stands out in terms of widespread
unavailability compared to other App Stores worldwide, we conducted availability tests for the 108
apps across all 175 App Stores operated by Apple. The results revealed 24 apps with widespread
unavailability which can be labelled as “local apps”.

It is important to consider the presence of "local apps" or "regional apps" when interpreting the
results obtained for China's App Store based on apptopia's charts. Local apps specifically target one
or a few specific markets, resulting in limited availability across the majority of App Stores. Several
reasons contribute to publishers releasing their apps only in selected App Stores, such as language
suitability for the target audience and the app's geographical or topical relevance to specific markets
(e.g., a city map app exclusively released in the country where the city is located).

While local laws, compatibility problems, and copyright issues can affect how apps are distributed,
these challenges are more like obstacles for app developers than just factors they take into account.

Certain apps, like the online travel agency app Vrbo, do not follow the typical availability patterns
of "local apps" and remain less available worldwide (Vrbo is only accessible in 48 out of 175 App
Stores). In some cases, their unavailability may stem from reasons similar to those affecting local
apps.

The table below provides a summary of the availability of popular apps worldwide in China's App
Store, categorized according to apptopia's categories:

<!-- 11 -->

> [!note]+ Table 2:
>
> Availability of most popular apps worldwide (according to apptopia) in China’s and USA’s App Stores
>
> | Top 10 Apps<br>Category         | Unavailable in<br>China’s App Store | Available but<br>unusable by user | Total unavailable<br>for Chinese Users<br>(out of 10) | Presumed “Local<br>apps” or apps<br>mostly unavailable<br>worldwide |
> | ------------------------------- | ----------------------------------- | --------------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------- |
> | Most<br>downloaded              | 5                                   | 5 (+1)                            | 10                                                    | 0                                                                   |
> | Games                           | 10                                  | 0                                 | 10                                                    | 1                                                                   |
> | Travel                          | 4                                   | 2                                 | 6                                                     | 1                                                                   |
> | Online Travel<br>Agencies (OTA) | 3                                   | 0                                 | 3                                                     | 1                                                                   |
> | Entertainment                   | 9                                   | 1                                 | 10                                                    | 5                                                                   |
> | Finance                         | 5                                   | 0                                 | 5                                                     | 3                                                                   |
> | Food & Drink                    | 4                                   | 0                                 | 4                                                     | 4                                                                   |
> | Dating                          | 3                                   | 0                                 | 3                                                     | 2                                                                   |
> | Education                       | 3                                   | 0                                 | 3                                                     | 0                                                                   |
> | Social Media                    | 3                                   | 6                                 | 9                                                     | 1                                                                   |
> | Business                        | 3                                   | 1                                 | 4                                                     | 1                                                                   |
> | Music & Audio                   | 8                                   | 0                                 | 8                                                     | 5                                                                   |
> | Total                           | 55                                  | 11                                | 66                                                    | 24                                                                  |
>
> |           | Unavailable in<br>USA App Store | Available but<br>unusable by user | Total unavailable<br>for USA Users (out<br>of 10) | Presumed “Local<br>apps” or apps<br>mostly unavailable<br>worldwide |
> | --------- | ------------------------------- | --------------------------------- | ------------------------------------------------- | ------------------------------------------------------------------- |
> | Total USA | 8                               | 0                                 | 8                                                 | 24                                                                  |

<!-- 12 -->

![一张图片](null.png)

In comparison, when assessing the availability of
apps listed by apptopia in the US App Store, only
eight apps were found to be unavailable. Notably, the
level of unavailability across most App Stores hovers
around 24 apps, which primarily consist of local, and
mostly unavailable, apps that are present in apptopia's
rankings.

To truly grasp the differences between China's iOS
app ecosystem and the rest of the world, one must
examine the most popular apps in China's App Store
and compare them with those listed by apptopia.

Apple offers several [tools] to visualize the most popular
apps in any of its App Stores. Among the 100 most
downloaded apps in China's App Store, only four apps,
all of which are Chinese, appear on apptopia's list:

[tools]: https://rss.applemarketingtools.com/

1. WeChat (微信)
2. AutoNavi
3. Alipay
4. Ele.me

<!-- 13 -->

This discrepancy arises because even when Chinese apps gain global popularity, they are often
not offered in China's App Store. Instead, Chinese users have access to national versions of these
apps in Mandarin, which present distinct features, sharing options, and networking capabilities
while adhering to Chinese government censorship rules and policies. In many cases, these national
versions are also unavailable in other App Stores. For instance, TikTok, which has its Chinese
version called Douyin (抖音), and Tencent Chat, which has its Chinese version named "Tencent
Conference" (腾讯会议-多人在线移动会议), are both exclusively available in China. On the other
hand, the Alibaba-owned enterprise communication and collaboration platform app, Ding Talk, is
unavailable in China's App Store, while its Chinese version, DingDing (钉钉), is available not only in
China but also in other App Stores for unknown reasons.

In comparison, 28 out of the 100 most popular apps in France's App Store appear in apptopia's lists
of most downloaded apps worldwide. Similar observations can be made for most App Stores, where
approximately a quarter to a third of the most popular apps in the respective App Stores align with
apptopia's lists of most downloaded apps worldwide.

China's App Store unquestionably stands out as an exception in the global App Store ecosystem.
However, more specific insights can be gleaned by examining distinct app categories and their
unavailability in China's App Store.

### AppleCensorship's List of Unavailable Apps in China

AppleCensorship maintains lists of the currently unavailable apps it identified for all 175 App Stores
operated by Apple worldwide. In March 2023, we exported China's App Store list for analysis.

The list with all the data is available here (CSV format):<br>
[link](https://www.article19.org/wp-content/uploads/2024/06/applecensorship.com-CN-20-03-2023-WP-REPAIRED-FINAL.xlsx)
{: align=center }

As of March 20, 2023, the App Store Monitor has recorded 11,026 unavailable apps in China's App
Store, based on testing 40,049 apps. Among the 160 App Stores that have tested over 3,000 apps for
unavailability, China's ratio of unavailability—the number of unavailable apps compared to the total
number of apps tested—is the highest, with 27.53% of apps found to be unavailable for Chinese iOS
users.[^14]

[^14]: Taking all 175 App Stores, China ranks 2nd, behind Afghanistan’s App Store, which current ratio of unavailability is
    28.29%. This is due to the fact that the ASM has only recently started monitoring Afghanistan’s App Store (end of 2022)
    and as of March 2023, only 410 apps had been tested with 116 of them unavailable. Previous research by AppleCensorship
    shows that this ratio tends to diminish with more testing and therefore that App Stores must reach certain levels of testing
    to allow comparison.

To find apps that might be censored, we sorted them into categories and left out "local apps,"
which are only in one App Store. But some apps might look like "local apps" if we've only checked a
few App Stores. If we checked all 175, they might be more widespread. While this approach might
incorrectly label some censored apps as local, it's the best option we have. Other methods could
mistakenly count local apps as censored. Using this method, we found 1,917 "local apps," which
means 9,109 apps are not available in China's App Store.

<!-- 14 -->

When examining the categories of apps (the official App Store ones), we can readily identify those
with the highest number of unavailable apps. The top 10 categories most represented in China's list
of unavailable apps are as follows:

| 1   | Games (5,532 apps)           | 6   | Entertainment (302 apps) |
| --- | ---------------------------- | --- | ------------------------ |
| 2   | Utilities (501 apps)         | 7   | Book (283 apps)          |
| 3   | Education (355 apps)         | 8   | Lifestyle (234 apps)     |
| 4   | Productivity (326 apps)      | 9   | News (205 apps)          |
| 5   | Social Networking (324 apps) | 10  | Finance (193 apps)       |

These categories demonstrate a significant presence of unavailable apps, indicating the extent of
unavailability across various segments of China's App Store, even when subtracting local apps from
each category’s total.

> [!quote]+ Table 3:
>
> Number of apps unavailable in China’s App Store per category
>
> | App Category (Apple’s<br>official) | Unavailable Apps | “Local Apps” (one<br>App Store only) | Unavailable non-<br>local Apps (category’s<br>rank in terms of<br>unavailability) |
> | ---------------------------------- | ---------------- | ------------------------------------ | --------------------------------------------------------------------------------- |
> | Book                               | 298              | 15                                   | 283 (7)                                                                           |
> | Business                           | 179              | 69                                   | 110 (11)                                                                          |
> | Developer Tools                    | 7                | 0                                    | 7 (25)                                                                            |
> | Education                          | 398              | 43                                   | 355 (3)                                                                           |
> | Entertainment                      | 493              | 191                                  | 302 (6)                                                                           |
> | Finance                            | 398              | 205                                  | 193 (10)                                                                          |
> | Food & Drink                       | 149              | 117                                  | 32 (20)                                                                           |
> | Games                              | 5888             | 356                                  | 5532 (1)                                                                          |
> | Graphics & Design                  | 9                | 1                                    | 8 (24)                                                                            |
> | Health and Fitness                 | 145              | 51                                   | 94 (13)                                                                           |
> | Lifestyle                          | 356              | 122                                  | 234 (8)                                                                           |
> | Magazines & Newspapers             | 32               | 3                                    | 29 (21)                                                                           |
> | Medical                            | 124              | 76                                   | 48 (19)                                                                           |
> | Music                              | 120              | 44                                   | 76 (16)                                                                           |
> | Navigation                         | 63               | 36                                   | 27 (22)                                                                           |
> | News                               | 275              | 70                                   | 205 (9)                                                                           |
> | Photo & Video                      | 112              | 13                                   | 99 (12)                                                                           |
> | Productivity                       | 367              | 41                                   | 326 (4)                                                                           |
> | Reference                          | 106              | 17                                   | 89 (15)                                                                           |
> | Shopping                           | 242              | 151                                  | 91 (14)                                                                           |
> | Social Networking                  | 381              | 57                                   | 324 (5)                                                                           |
> | Sports                             | 136              | 78                                   | 58 (18)                                                                           |
> | Stickers                           | 7                | 0                                    | 7 (25)                                                                            |
> | Travel                             | 105              | 43                                   | 62 (17)                                                                           |
> | Utilities                          | 594              | 93                                   | 501 (2)                                                                           |
> | Weather                            | 42               | 25                                   | 17 (23)                                                                           |
> | Total                              | 11026            | 1917                                 | 9109                                                                              |

<!-- 15 -->

<!-- 16 -->

> [!quote]+ Apple’s App Store Categories
>
> The App Store classifies apps into 26 categories or genres, including Books, Business,
> Developer Tools (since 2020), Education, Entertainment, Finance, Food & Drink,
> Games, Graphics & Design (since 2020), Health & Fitness, Lifestyle, Kids, Magazines &
> Newspapers, Medical, Music, Navigation, News, Photo & Video, Productivity, Reference,
> Shopping, Social Networking, Sports, Stickers, Utilities, and Weather.
>
> Apple grants app developers the freedom to choose the category to which they will
> assign their app. Since many apps can align with multiple categories, developers
> have the option to designate a secondary category in addition to the required primary
> category. Apple generally does not intervene in this process unless the chosen category
> is blatantly incorrect or misleading. Consequently, apps with similar content and
> functionality may be assigned different primary categories. For example, VPN apps are
> often categorized as Utility or Productivity apps, while religious apps may be categorized
> alternatively as Lifestyle apps or Book apps by their respective developers.

The observation of categories affected by app unavailability reveals several noteworthy facts:

> Games apps show up a lot on the list for two main reasons. First, there are
> more Games apps than any other type in the App Store, so they're more likely
> to be on the list. Second, Chinese laws make it harder to release Games apps
> because they have to be approved by Chinese authorities (see "The process
> to get in China's App Store").

<!-- 17 -->

Some types of apps in China's App Store list of unavailable apps, like Education and Entertainment,
match their global numbers. But others, like News and Social Networking, are a small part of the
global App Store. Even though they're few, these types are more often missing in China.

> [!quote]+ Figure 1: Unavailable Apps (excl. "local apps")
>
> ```mermaid
> pie
>     "Book" : 3
>     "Entertainment" : 3
>     "Developer Tools" : 0
>     "Food & Drink" : 0
>     "Graphics & Design" : 0
>     "Business" : 1
>     "Finance" : 2
>     "Education" : 4
>     "Games" : 61
>     "Lifestyle" : 3
>     "Navigation" : 0
>     "Medical" : 1
>     "Photo & Video" : 1
>     "Magazines & Newspapers" : 0
>     "News" : 2
>     "Music" : 1
>     "Productivity" : 4
>     "Health and Fitness" : 1
>     "Reference" : 1
>     "Social Networking" : 4
>     "Utilities" : 6
>     "Stickers" : 0
>     "Sports" : 1
>     "Weather" : 0
>     "Travel" : 1
>     "Shopping" : 1
>     "Games" : 61
> ```

<!--
Book (3%)
Entertainment (3%)
Developer Tools (0%)
Food & Drink (0%)
Graphics & Design (0%)
Business (1%)
Finance (2%)
Education (4%)
Games (61%)
Lifestyle (3%)
Navigation (0%)
Medical (1%)
Photo & Video (1%)
Magazines & Newspapers (0%)
News (2%)
Music (1%)
Productivity (4%)
Health and Fitness (1%)
Reference (1%)
Social Networking (4%)
Utilities (6%)
Stickers (0%)
Sports (1%)
Weather (0%)
Travel (1%)
Shopping (1%)
Games (61%)
-->

While restrictions on Games apps may affect consumer choice and entertainment options, they
generally do not interfere with fundamental human rights to the same extent as limitations on News
and Social Networking apps. The latter categories are pivotal for the free flow of information and
serve as crucial channels for freedom of expression. In this context, every instance of a News or
Social Networking app being blocked is not just a matter of one less choice in the app ecosystem;
it represents a significant barrier to individual rights, potentially stifling the dissemination of ideas,
information, and societal discourse. Therefore, the unavailability of these apps carries a much more
profound impact on personal freedoms than most of the other categories present in the App Store.

<!-- 18 -->

> [!quote]+ Figure 2: Most Populated Apple App Store Categories / source: [BusinessofApps][]
>
> ```mermaid
> xychart-beta horizontal
> title "Source: PocketGamer"
> x-axis [Games, Business, Education, Lifestyle, Utilities, Entertainment, Food & Drink, Travel, Health & Fitness, Productivity, Shopping, Finance, Social, Music, Book, Sports, Photo & Video, Medical, Reference, News, Stickers, Navigation]
> bar [339568, 224740, 193687, 191230, 143422, 125550, 90477, 82658, 80424, 72158, 66126, 56520, 51828, 49818, 49594, 47584, 44009, 42892, 41999, 39765, 25467, 23457]
> ```
>
> +   Notably absent from the most unavailable categories of China’s Apps Store’s list,
>     are Food & Drink, Health & Fitness, Travel, and Business. Yet, these categories,
>     according to statistics from mobile app market intelligence companies, are
>     among the most populated app categories.

[BusinessofApps]: https://www.businessofapps.com/data/app-stores/

The examination of app categories and their representation in China's App Store's list of unavailable
apps, compared to the global App Store, reaffirms an [observation][] made by AppleCensorship two
years ago in its initial App Store overview. The patterns observed globally hold true. News apps and
Social Networking apps consistently make up a significant portion of the unavailable apps, despite
constituting a relatively small portion of the overall App Store.

[observation]: https://applecensorship.com/news/censored-on-the-app-store-new-report-shows-the-staggering-scale-of-app-censorship-by-apple

This suggests that certain categories are more susceptible to censorship and unavailability.
Among the top 10 categories in China's App Store's list of unavailable apps, five (News, Education,
Book, Social Networking, and Lifestyle) contain apps with political content. Two other categories
encompass the majority of privacy and censorship circumvention apps, including VPNs. These
categories, by their nature, are frequently subjected to censorship and access restrictions.

<!-- 19 -->

#### Identifying Potential Cases of Censorship

One key indicator to identify potential cases of app censorship among the listed unavailable apps
is the total number of App Stores in which an app is available. When app developers claim to offer
a global service or connect people all around the world, but their app is absent from one or a few
App Stores, it is a clear indication that barriers may have prevented the app's distribution in those
specific App Stores.

Upon examining China's list of unavailable apps, we discovered 371 apps that exhibit this profile of
targeted unavailability, suggesting potential instances of censorship.

Among these 371 apps, 48 apps across 13 categories are particularly noteworthy; they appear to be
unavailable almost exclusively in China's App Store.

> [!quote]+ Table 4:

Apps showing targeted unavailability in China’s App Store

| Category                    | Publisher                            | Name                                | App<br>Stores<br>tested | Available in |
| --------------------------- | ------------------------------------ | ----------------------------------- | ----------------------- | ------------ |
| Book                        | "ZION CORP LIMITED"                  | TORAH                               | 175                     | 171          |
| Book                        | "Anna Shahverdyan"                   | "JehovahKingdom"’s Witnesses        | 155                     | 154          |
| Book                        | "Rubo Manukyan"                      | "JehovahNWT Bible"’s Witnesses      | 155                     | 154          |
| "Magazines &<br>Newspapers" | "Lion's Roar Foundation"             | "Lion's Roar"                       | 155                     | 154          |
| "Magazines &<br>Newspapers" | "Lion's Roar Foundation"             | Buddhadharma                        | 155                     | 154          |
| "Photo & Video"             | "Twitch Interactive Inc."            | "Twitch: Live Game Streaming"       | 160                     | 159          |
| "Photo & Video"             | "Flickr Inc."                        | Flickr                              | 155                     | 153          |
| "Social<br>Networking"      | "Skype Communications S.a.r.l"       | GroupMe                             | 175                     | 173          |
| "Social<br>Networking"      | "Viber Media SARL."                  | "Viber Messenger: Chats &<br>Calls" | 160                     | 159          |
| "Social<br>Networking"      | "Grindr LLC"                         | "Grindr - Gay Dating & Chat"        | 173                     | 170          |
| "Social<br>Networking"      | "Skype Communications<br>S.a.r.l"    | Skype                               | 155                     | 154          |
| Business                    | "LinkedIn Corporation"               | "LinkedIn: Job Search & News"       | 166                     | 164          |
| Education                   | "LinkedIn Corporation"               | "LinkedIn Learning"                 | 165                     | 164          |
| Finance                     | "Yahoo! Inc."                        | "Yahoo Finance - Stock Market"      | 157                     | 153          |
| Lifestyle                   | "GAY TIMES LIMITED"                  | "GAY TIMES"                         | 158                     | 155          |
| Music                       | Spotify                              | "Spotify - Music and Podcasts"      | 164                     | 156          |
| News                        | "Voice of America"                   | VOA                                 | 155                     | 154          |
| News                        | "Google LLC"                         | "Google News"                       | 156                     | 152          |
| News                        | "Voice of America"                   | 美国之音                            | 155                     | 154          |
| News                        | "The Economist Newspaper Group Inc." | "The Economist"                     | 156                     | 155          |
| News                        | "Tenzin Rabyang"                     | "Tibet Times"                       | 155                     | 154          |
| News                        | euronews                             | "Euronews: World news & TV"         | 160                     | 159          |
| News                        | NPR                                  | NPR                                 | 155                     | 154          |
| News                        | "REDDIT INC."                        | Reddit                              | 163                     | 162          |
| News                        | "Flipboard Inc."                     | "Flipboard: News for our time"      | 164                     | 163          |
| Productivity                | "VPN PROXY MASTER"                   | "360 Tunnel VPN Master Proxy"       | 155                     | 154          |
| Productivity                | "V Kontakte OOO"                     | "ящикПочта" Mail.ru: почтовый       | 169                     | 164          |
| Productivity                | "Hotspot VPN Pte Ltd"                | "VPN Super Fast - Proxy Master"     | 156                     | 155          |
| Productivity                | "FREE VPN PTE LTD"                   | "VPN - Master Proxy for iPhone"     | 156                     | 154          |
| Productivity                | "TIGERVPNS LTD"                      | "VPN Plus Privacy Protector"        | 175                     | 174          |
| Reference                   | "Pakistan Data Management Services"  | "Quran Majeed – نارقلاميركلا"       |                         |              |
| Reference                   | "Gospel Technologies LLC"            | "NKJV Bible by Olive Tree"          | 155                     | 154          |
| Reference                   | "Bitsmedia Pte Ltd"                  | "Muslim Pro Muslim Prayer Times"    | 155                     | 154          |
| Reference                   | "Gospel Technologies LLC"            | "Bible App by Olive Tree"           | 158                     | 157          |
| Reference                   | "Gospel Technologies LLC"            | "NIV Bible App +"                   | 158                     | 157          |
| Reference                   | "Position Mobile Ltd SEZC"           | "The Bible - Verse & Prayer"        | 175                     | 174          |
| Utilities                   | "UltraReach Internet Corp."          | "Ultrasurf VPN"                     | 155                     | 154          |
| Utilities                   | "Malwarebytes Corporation"           | "Malwarebytes Privacy VPN"          | 155                     | 147          |
| Utilities                   | "Proton AG"                          | "Proton VPN: Fast & Secure"         | 175                     | 173          |
| Utilities                   | "FOURSEASON YUMMY PTY. LTD."         | "VPN cat master - express proxy"    | 158                     | 157          |
| Utilities                   | "Brain Craft Ltd"                    | "VPN for iPhone - Secure Proxy"     | 156                     | 149          |
| Utilities                   | "Bitdefender SRL"                    | "Bitdefender VPN: Fast & Secure"    | 156                     | 153          |
| Utilities                   | "PrivateVPN Global AB"               | PrivateVPN                          | 175                     | 174          |
| Utilities                   | "VPNETWORKS LLC"                     | "Private & Secure VPN: TorGuard"    | 175                     | 174          |
| Utilities                   | "Mike Tigas"                         | "Onion Browser"                     | 156                     | 155          |
| Utilities                   | "Psiphon Inc."                       | "Psiphon Browser"                   | 159                     | 158          |
| Utilities                   | "Kuldeep Singh"                      | "VPN - Best Unlimited Proxy"        | 155                     | 154          |
| Utilities                   | "Nordvpn S.A."                       | "NordVPN: VPN Fast & Secure"        | 170                     | 169          |

<!-- 20 -->

<!-- 21 -->

<!-- 22 -->

### Curating Custom App Categories

While looking at Apple's official app categories can give us some insight into what's unavailable
in China's App Store, this approach doesn't fully capture the complexity of content restrictions
set by both the authorities and Apple. VPN apps for example, are usually categorized under Utility
and Productivity, but are sometimes listed under Business or Lifestyle. The full extent of VPN app
removals from China's App Store only becomes clear when we group all VPN apps together into a
custom category.

#### Establishing Bespoke “Sensitive” Categories

We have devised eight thematic and functional categories that encompass apps from various
categories of Apple’s official classification system. These tailored categories reflect the subjects
and content types primarily targeted by online censorship in China. These eight categories are:

| 1   | VPN                        | 5   | Social Media & Communication |
| --- | -------------------------- | --- | ---------------------------- |
| 2   | Privacy & Digital Security | 6   | Tibet & Buddhism             |
| 3   | LGBTQ+ & Dating            | 7   | Uyghur                       |
| 4   | News, Media, & Information | 8   | Religion                     |

Four of these categories (LGBTQ+ & Dating, Tibet & Buddhism, Uyghur, and Religion) are topic-
oriented and gather apps of different types (Games, Reference, Social Networking, News,
Entertainment, etc.), which share common content or language, or target a specific audience. For
instance, a game in Tibetan language, a Book app about Tibetan Buddhism, or an app related to
Lhasa (the capital of the Tibetan region) all fall under the Tibet & Buddhism-related apps category.
The categories VPN, Privacy & Digital Security, and News group apps based on function rather than
a shared theme. The News, Media, & Information category is perhaps the most diverse, including
general, specialized, local, and international media and information apps from a range of sources.

#### Sensitive Categories

Above all, the categories identified in this classification share the critical characteristic of
intersecting with some of the most restrictive and repressive laws in China. These repressive and
broadly enforced regulations profoundly impact the availability of the types of content expected to
be found in those categories:

1.  **VPN:** In China, VPN services are tightly regulated under the [2017 notice from the Ministry of Industry and Information Technology][]
    (MIIT). Enterprises are not allowed to use VPNs to
    conduct cross-border operations without approval from the MIIT. Only VPN services from
    authorized telecommunications operators are legal.

    [2017 notice from the Ministry of Industry and Information Technology]: https://www.chinalawtranslate.com/en/miit-notice-on-cleaning-up-and-regulating-the-internet-access-service-market/

    <!-- 23 -->

2.  **Privacy & Digital Security:** [The Cybersecurity Law of China][] imposes stringent data governance
    on companies, requiring them to store select data within China and be prepared to submit it
    to authorities upon request. This impacts the availability of many privacy apps that may not
    comply with such data storage and access requirements.

    [The Cybersecurity Law of China]: https://digichina.stanford.edu/work/translation-cybersecurity-law-of-the-peoples-republic-of-china-effective-june-1-2017/

3.  **LGBTQ+ & Dating:** Restrictions on LGBTQ+ content and dating apps often relate to broader
    norms and regulations concerning morality and the dissemination of content that deviates from
    traditional family values. However, apps in this category also face barriers due to
    [laws aiming to regulate online broadcasting, online content][] and behavior.

    [laws aiming to regulate online broadcasting, online content]: https://www.brookings.edu/articles/online-regulations-and-lgbt-rights-a-test-for-chinas-legal-system/

4.  **News, Media, & Information:** The Chinese government exercises
    [substantial control over the media landscape][]
    to steer public opinion and ensure alignment with state narratives.
    International news outlets often [face blocks or bans][] due to their potential to circulate
    information that contradicts or challenges official government positions.

    [substantial control over the media landscape]: https://freedomhouse.org/country/china/freedom-net/2023

    [face blocks or bans]: https://freedomhouse.org/country/china/freedom-world/2024

5.  **Social Media & Communication:** Similar to news media, social media platforms are subject
    to regulations that ensure conformity with Chinese censorship laws. Internet regulation in
    China often proceeds through [issuing regulations on specific technologies][] (such as instant
    messaging, livestreaming, online fiction, and even user comment sections) that incorporate and
    apply broader rules to the specific context.

    [issuing regulations on specific technologies]: https://www.chinalawtranslate.com/en/new-social-media-rules-infographic/

6.  **Tibet & Buddhism:** While officially recognizing Buddhism and ostensibly protecting religious
    activities under its constitution, the Chinese government frequently employs vague definitions
    of [national security and public order to impose restrictions][] on Tibetan Buddhism. It leads
    "patriotic re-education" campaigns and suppresses allegiance to the Dalai Lama within
    monastic communities. Apps focusing on Tibetan language, culture, or Buddhism are therefore
    tightly scrutinized by the authorities.

    [national security and public order to impose restrictions]: https://www.state.gov/reports/2022-report-on-international-religious-freedom/china/tibet/

7.  **Uyghur:** The Uyghur minority in China faces severe repression, with regulations such as the
    2017 “[Xinjiang Uyghur Autonomous Region Regulation on De-extremification][]” that serve to
    justify of [surveillance and controls][] on their cultural and religious expression. Consequently,
    apps by or about Uyghurs or containing Uyghur language and culture are likely to be restricted
    or unavailable in China's App Store.

    [Xinjiang Uyghur Autonomous Region Regulation on De-extremification]: https://www.chinalawtranslate.com/en/xinjiang-uyghur-autonomous-region-regulation-on-de-extremification/

    [surveillance and controls]: https://www.wired.com/story/inside-chinas-massive-surveillance-operation/

8.  **Religion:** The state continues to [tighten its grip on religious practices][] to align with its ideology
    and maintain control over religious groups. Apps with religious content may face unavailability
    if they're perceived to enable practices outside state-sanctioned religious expressions or if
    they're associated with foreign religious entities.

    [tighten its grip on religious practices]: https://www.voanews.com/a/china-issues-new-requirements-for-religious-groups-/7250156.html

The purpose of these categories is to help us understand what types of content and features
might be banned in China's App Store. While we try to be consistent in how we categorize apps, it's
important to note that some apps could fit into more than one category. For example, a Christian
news app could belong to either the Religion or News category, and an LGBTQ+ social networking
app could be under Social Media instead of LGBTQ+ & Dating. What's most important is that we've
tracked these apps to see if they're available in China's App Store.

<!-- 24 -->

The underlying presumption behind our customized classification of apps is the suspicion
that these apps may be unavailable due to the content or function described by their category.
Ascertaining the exact reason behind an app's unavailability is often elusive without contacting the
app's developer. Even then, determining the cause of unavailability can be challenging, as many app
developers and publishers remain uncertain about why their app isn't available in China’s App Store.
In some instances, app developers have voluntarily withdrawn their app from the Chinese market, or
refrained from attempting to publish it due to potential administrative and legal hurdles.

#### Listing and Testing Availability of Apps from Sensitive Categories

Employing a range of search techniques, we compiled a list of apps within our specially tailored
sensitive categories. The ASM on Applecensorship.com enables users to perform keyword searches
and returns lists of apps along with their test results from preselected App Stores. The sequence in
which apps are listed reflects their popularity and relevance as determined by Apple’s App Store.

![一张截图](null.png)

On AppleCensorship.com, users can conduct keyword searches and verify apps’
availability in specific App Stores

<!-- 25 -->

For each search, the list of results can be expanded until the App Store ceases to display additional
results in response to the search keyword(s), or until 200 results have been presented. To yield
further results, we also utilized search engines provided by mobile app market intelligence firms.

![一张截图](null.png)

Several mobile app market intelligence companies such as SensorTower offer keyword-
based search function

For each category, we employed a wide array of keywords, beginning with the category names and
then incorporating other related words and phrases. While this method does not guarantee the
inclusion of all relevant apps within each category, it does allow us to identify and test previously
unexplored apps in China’s App Store. This approach provides us with a substantial sample of
pertinent apps for each group we've established, which are then immediately tested in China’s App
Store. Subsequently, we compile a list of all apps found to be unavailable in China.

We also incorporated several apps that continue to be accessible, despite falling under a sensitive
category. While the breadth of this report doesn't extend to a comprehensive analysis of each listed
app or a comparison between blocked and available apps, this data can provide insight into the
strategies employed by authorities to restrict content or manipulate the narrative surrounding a
particular subject.

The complete lists of apps from the eight sensitive categories can be
accessed through the following link: [[link]](https://www.article19.org/wp-content/uploads/2024/06/Sensitive-apps-in-Chinas-App-Store.xlsx).
{: align=center }

<!-- 26 -->

> [!quote]+ The various ways to censor an app or control content:
>
> 1.  **Rejecting Entire Groups of Apps (Categorical Ban):** A categorical ban represents a
>     form of "prior censorship," allowing Apple to pre-emptively block entire categories
>     of applications from ever being uploaded to the App Store. This approach prevents
>     certain apps from ever reaching users. The government identifies specific types
>     of apps, content, technologies, or functions it considers inappropriate or contrary
>     to its regulations and societal norms. This can encompass apps related to social
>     networking, messaging, or news that may disseminate information viewed as
>     undesirable by the government. Once these categories are identified, Apple is
>     instructed to reject any apps that fall within these bounds from the Chinese App
>     Store. The categorical ban on VPN apps and the "blacklist" of topic-specific
>     keywords serve as examples of this pre-emptive censorship.
>
> 2.  **Putting Heavy Barriers for Developers:** This approach involves creating a stringent
>     and often complex set of rules and regulations that developers must comply with
>     if they want their apps to be available in the Chinese App Store. These barriers
>     can include strict content regulations, data localization requirements, licensing
>     stipulations, and more. Developers willing to publish apps in certain categories that
>     the government views as potentially problematic or sensitive must navigate these
>     regulatory hurdles. If they fail to comply fully with these rules, their apps can be
>     rejected, thereby controlling the kind of apps available to Chinese iOS users. This
>     method may also be used to justify a government app takedown request made to
>     Apple.
>
> 3.  **Asking Apple to Remove Apps (Government App Store Takedown Requests):**
>     The Chinese government may directly request Apple to remove speci fic apps from
>     the App Store. These takedown requests usually target apps that the government
>     believes violate its laws or regulations, or that it perceives as a threat to its control,
>     even if the app was initially accepted into the App Store. They also target apps
>     which allegedly violate Apple’s own App Store review guidelines. Once a takedown
>     request is made, Apple usually complies and removes the app from China’s App
>     Store, or from all App Stores in cases where the takedown request is based on
>     violation of Apple’s guidelines.
>
> 4.  **Blocking the Apps:** In some cases, apps may be allowed to exist in the App Store,
>     but are blocked by the Chinese government's Great Firewall. This means that while
>     the app can be downloaded, it cannot be used effectively, or at all, because the
>     servers the app relies on are unreachable. This common tactic has been used for a
>     number of popular apps such as Facebook, Twitter, Instagram, etc.
>
> 5.  **Limiting Access to a Local Version (China-only apps):** This method involves
>     restricting access to global versions of apps and providing a localized, China-
>     specific version instead. The Chinese government often requires international
>     companies to partner with a local entity and operate under Chinese laws to provide
>     their services in the country. These localized versions typically have modified
>     features and content to comply with local regulations. For instance, they may censor
>     certain types of content, restrict user-generated content, or implement additional
>     surveillance measures. While this allows the app to exist in the Chinese App Store,
>     it significantly alters the user experience and functionality compared to the global
>     version, thereby controlling the type of digital content and services available to
>     users in China. Chinese companies, such as ByteDance and Tencent also deploy
>     local and international versions of their apps.
>
> 6.  **Allowing an App for Surveillance Purposes:** The authorities have published a
>     number of apps on the App Store (for example: the
>     [Integrated Joint Operations Platform (IJOP) app][]
>     used in Xinjiang) in order to monitor its users. But the Chinese
>     government could also allow the existence of certain apps on the condition that it
>     serves a surveillance purpose. Although no such case has been reported in Apple’s
>     App Store, recent revelations on popular apps available on other mobile platforms,
>     confirm that this issue is a reality.

[Integrated Joint Operations Platform (IJOP) app]: https://www.abc.net.au/news/2019-05-02/chinese-surveillance-app-reverse-engineered-by-rights-group/11062670

<!-- 27 -->

### Results and analysis

In this section, the focus turns to the concrete impact of Apple's App Store policies on the
availability of apps in a range of sensitive categories within China. Targeted app censorship can be
spotted in the 9,109 apps we have identified as unavailable in China's App Store. Each category was
selected for its potential sensitivity within the Chinese socio-political context, offering a unique
lens to assess the extent of censorship or content restriction.

By systematically listing and testing, the analysis aims to determine the availability of apps from
these categories in the Chinese App Store and, if absent, attempts to elucidate possible reasons for
their unavailability. This detailed scrutiny contributes to a broader understanding of Apple's role
in content regulation.

> [!quote]+ Unavailable Apps (custom categories)
>
> ```mermaid
> xychart-beta
> title "Sales Revenue"
> x-axis [Tibet & Buddhism, Uyghur, LGBTQ+ & Dating, Religion, News, Media & Information, Social Media & Comm96unication, VPN, securityPrivacy and digital]
> bar [41, 12, 67, 144, 170, 96, 240, 29]
> ```

<!--
    41  Tibet & Buddhism
    12  Uyghur
    67  LGBTQ+ & Dating
    144 Religion
    170 News, Media & Information
    96  Social Media & Comm96unication
    240 VPN
    29  securityPrivacy and digital
-->

<!-- 28 -->

#### Tibet & Buddhism

> [!note]+ .
>
> **Definition**: This category comprises apps connected to Tibet, Tibetans, and Buddhism. Most
> of the list is made up of apps concerning Tibetan culture, language, and current events. We
> purposefully included apps that merely contain "Tibet" or "Tibetan" in their names, with no
> other significant connections to Tibet or Tibetans, in order to evaluate the potential blocking of
> specific keywords in the apps' titles and descriptions.
>
> **Keywords**: Tibet, Tibetan, Dalai Lama, Lhasa, 达赖喇嘛, 西藏,  བོད་
>
> **Number of unavailable apps identified**: 41

Apps related to Tibet form the first category analysed by the AppleCensorship project. In June
2019, several months after the project's inception, [GreatFire and TibCERT examined][] 119 Tibetan-
themed iOS apps, finding 29 of them unavailable in China's App Store. In our most recent review, we
identified no fewer than 41 unavailable apps, while 108 apps remain accessible to Chinese users.
The three most affected categories are News (with nine unavailable apps), Book (eight unavailable
apps), and Education (six unavailable apps). Major overseas Tibetan media outlets (such as Tibet
Times, Voice of Tibet, Tibet.Net, etc.) have remained inaccessible since 2019, and several apps
providing Tibetan literature and religious texts have been blocked since the 2019 study.

[GreatFire and TibCERT examined]: https://en.greatfire.org/blog/2019/jun/apple-censoring-tibetan-information-china

One example is the [Himalaya Lib][] app, which offers "more than 1000+ Tibetan Books for free."
The app was consistently available until November 7, 2021, but was found to be unavailable by
November 9th. Several apps published by "[Digital Vajra][]," a publisher offering free-to-download
online e-books, including works by the Dalai Lama, were also removed in 2021, while some of its
apps remain accessible. The two main apps related to the Dalai Lama (Dalai Lama and Dalai Lama
Quotes) have been consistently unavailable since 2019. Only two Tibetan News apps are available:
Voice of Tibet Network (西藏之声网), operated by China Tibet Broadcasting, the Party's official
radio station in Tibet, and the Communist Party's Tibet Daily (西藏日报), whose staff also manages
a Tibetan version of the People's Daily.

[Himalaya Lib]: https://apps.apple.com/al/app/himalaya-lib/id1315593457

[Digital Vajra]: https://apps.apple.com/al/developer/digital-vajra/id451034258

According to Lobsang Gyatso Sither, Director of Technology at Tibet Action Institute the availability
of several Tibet-related apps is not indicative of tolerance from the authorities towards the issue of
Tibet. This is because all Tibet-related apps allowed on the App Store align with the government's
official stance on the region: “Tibetans Apps are truly blocked as any reference to Tibet whether
through the name of the App, or its content, which doesn't conform with the official narrative of the
CCP on Tibet is censored.  If you look into the content of an App, you can see that the reference to
Tibet is the key criteria for censoring that app.” says Gyatso SIther.

<!-- 29 -->

Any direct or indirect connection to the Dalai Lama is sufficient reason for an app to be banned from
the App Store. This was the case with the [MonlamGrandTibetanDictionary][] app. Initially, the app was
available upon its release but was taken down between June and September 2022, shortly after the
Dalai Lama inaugurated the New Monlam Grand Tibetan Dictionary, the source of the app's content.

[MonlamGrandTibetanDictionary]: https://applecensorship.com/app-store-monitor/app/1065052389

This suggests that Chinese authorities not only scrutinize the content of each app to decide whether
it can be allowed in the App Store but also closely monitor all current events. They can reassess an
app's sensitivity based on events taking place overseas or remarks made by influential figures like
the Dalai Lama.

#### Uyghur

> [!note]+ .
>
> **Definition**: This category encompasses apps related to the Uyghur community. The majority of
> the list is made up of apps focusing on Uyghur culture, language, and religion. Several religious
> apps, including Quran apps, were included since they are in the Uyghur language and thus
> target a Uyghur-speaking audience.
>
> **Keywords**: Uyghur, Turkestan, Xinjiang,رالرۇغيۇئ , 维吾尔, Ürümqi
>
> **Number of unavailable apps identified**: 12

Fewer than 80 Uyghur-related apps were identified in the App Store, with only 12 found to be
unavailable in the Chinese App Store. However, five out of the seven identified Book apps are
unavailable, including a Quran and a Bible app in Uyghur language (,مىرەك نائرۇق & ىرۇن تاياھ–
Hayatnuri), as well as ىرىبمائ باتىكلېئ نىغناي, and Awazliq Kitap, which house thousands of books
and hundreds of audiobooks. The only two available Book apps are dictionary apps (a bilingual
Chinese-Uyghur and Uyghur only). Four Education apps, including dictionaries and a Quran app, are
also unavailable.

<!-- 30 -->

One Uyghur developer, who preferred to remain anonymous, discussed the status of his unavailable
app with AppleCensorship. He explained that he had chosen not to make his app available in China's
App Store, anticipating potential issues and probable targeting by Chinese authorities. However,
he cited user security concerns as the primary reason for this decision, particularly if local police
caught users with his app.

Given the local context in Xinjiang, the Chinese province where Uyghurs reside, and the high degree
of surveillance they face, further analysis of Uyghur-related apps available in the App Store could
be insightful. For instance, it would be worthwhile to examine potential alterations or omissions in
various Chinese-Uyghur dictionary apps and compare these with other unavailable dictionary apps.
Such a comparison could help clarify the reasons behind the availability and unavailability of apps
that, at first glance, appear similar.

#### LGBTQ+ & Dating

> [!note]+ .
>
> **Definition**: This category includes apps related to the LGBTQ+ community and dating apps.
> Alongside social and dating platforms, it encompasses apps providing LGBTQ+ related content,
> such as Book and Games apps. Educational apps, services, and specialized media apps are
> also included in this list.
>
> **Keywords**: LGBT, gay, lesbian, trans, dating, bi-sexual, 同志, 同性
>
> **Number of unavailable apps identified**: 67

Social networking is the most represented type of apps, accounting for 34 out of the 67 unavailable
apps on the list. Adding six Lifestyle dating apps brings the total to 40 unavailable social platforms.
The next most represented category is Games, with 19 apps in that category containing LGBTQ+
references being unavailable in China’s App Store. Five Book apps and one Entertainment app
offering films with LGBTQ+ content complete the list. Among the most popular dating and social
networking apps are Hinge, Adam4Adam, weBelong, and Grindr. [Grindr was removed][] at the end
of January 2022 "after the Cyberspace Administration of China (CAC) pledged to renew a month-
long round of campaigns to police what it considers illegal and inappropriate content — such as
online rumours, pornography, and superstitions — and penalize accounts that violate the law and
disseminate problematic content."

[Grindr was removed]: https://www.nbcnews.com/news/world/grindr-dating-disappears-china-app-stores-internet-clean-campaign-rcna14531

<!-- 31 -->

China's blocking of LGBTQ+ apps appears inconsistent, as several of the most popular LGBTQ+
dating apps are still available in the App Store. Scruff, OkCupid, Hornet, Lex, Her, Jack’d, or JSwipe
are all available, and none of them (except OKCupid, briefly in March 2020) were found unavailable
since 2019.

In June 2021, US-based organisation Fight for the Future and GreatFire co-published a
[study on LGBTQ+ apps' availability worldwide][], which identified 27 unavailable apps in China's App Store,
making China the country with the second most unavailable apps, only behind Saudi Arabia, where
28 apps were found unavailable at the time.

[study on LGBTQ+ apps' availability worldwide]: https://applecensorship.com/apple-is-enabling-censorship-of-lgbtq-apps-in-152-countries-new-report-finds/

Although we were able to identify twice as many unavailable apps with LGBTQ+ related content,
the continued availability of some of the most popular LGBTQ+ apps worldwide raises questions
about the consistency of Beijing's policy towards LGBTQ+ rights. In 2021, Chinese censors
ordered the permanent deletion of several LGBTQ+ rights advocacy groups' social media accounts
as part of a broader crackdown on civil society organisations in the country. Yet, LGBTQ+ apps,
including the Chinese-owned Blued which operates three different apps, continue to be available.
Two of these apps are exclusive to China, while the third one is accessible worldwide (in 148
countries) but not in mainland China's App Store.

#### Religion

> [!note]+ .
>
> **Definition**: Apps related to any religion. We focused
> on apps related to the three "Abrahamic religions"
> (i.e., Christianity, Judaism, Islam), as they represent
> most of the religious content found in the App Store.
> Most Buddhism-related apps were already included
> in the list of Tibet-related apps.
>
> **Keywords**: Bible, Christ, Christianism, Catholic,
> Quran, Islam, Judaism, Torah, 宗教, 圣经, 古兰经, 摩西五经
>
> **Number of unavailable apps identified**: 144

Apps related to all three Abrahamic religions are unavailable in China's App Store, with a majority
of them being Christian apps (91 Bible apps and five apps related to various forms of Christianity).
There are 32 apps related to Islam, including 29 Quran apps and three general apps. We identified
11 Torah apps and an additional four apps related to Judaism. Furthermore, one app published by
Jehovah's Witnesses is unavailable in China's App Store, while the other three apps developed by
this religious group remain available.

<!-- 32 -->

For this category of apps, no clear pattern emerges, as various versions of the Bible are both
available and unavailable simultaneously, with no particular version seeming to be targeted more
than the others. Bible apps using the King James Version (KJV), New King James Version (NKJV),
New International Version (NIV), or other versions can be either available or unavailable, with no
discernible reasons for their respective statuses.

While not directly confirmable, the inconsistency in the availability of Bible apps may relate to their
use among various groups, potentially including members of independent Christian groups and
house churches. These groups face significant persecution in China, characterized by harassment,
detention, and the disruption of their religious gatherings, as they operate outside the state-
sanctioned religious framework. This context of suppression could shed light on the seemingly
erratic pattern of availability for religious materials in the App Store, offering a possible explanation
for these inconsistencies.

Additionally, the categories of the apps may also play a role in determining their availability.
Ninety percent (229 out of 256) of the identified apps are distributed across these four categories:
Reference (94 apps), Book (84 apps), Education (32 apps), and Lifestyle (19 apps). However, only
34 Reference apps are unavailable, while 63 Book apps are not found on China's App Store. This
ratio mirrors the situation of unavailable Book apps (all Book apps) in China's App Store described
earlier. Book apps in China's Apple App Store are subjected to additional regulations, as every book
offered to Chinese users, including e-books, must have a Chinese ISBN to be legally published. This
might contribute to explain the unavailability of some Bible and Quran apps which were primarily
categorized as Book and not as Reference or Education apps.

#### News, Media & Information

> [!note]+ .
>
> **Definition**: Apps related to general information
> produced by media organisations or other
> sources (e.g., civil society organisations,
> academics, individuals), without focusing on any
> particular theme, content, or type of information,
> and without targeting any specific audience.
> When identified as such, informational apps
> related to topics covered by other categories are
> listed in those respective lists (for example, the
> RFA Uyghur service is listed in the Uyghur list
> rather than in the News, Media, Information list). While most of the apps listed are from Apple's
> News and Newspapers & Magazines categories, apps from any category are included as long
> as their primary purpose is to offer informational content.
>
> **Keywords**: News, Media, information, current events, press, magazines, newspapers, TV, Radio,
>
> **Number of unavailable apps identified**: 170

The number of News apps unavailable in China’s App Store has consistently grown since the
inception of the AppleCensorship project. At the end of 2021, Yahoo announced it would cease
offering its services in mainland China, which resulted in the removal of all remaining Yahoo apps
from China's App Store. In November 2022, the English-language media platform Taiwan+ was also
removed from the App Store, while the media’s website was blocked by China's authorities.

In September 2021, 172 News apps and 5 Magazines and Newspapers apps were tested as
unavailable (including presumed local apps). Less than two years later, these numbers have
increased to 275 and 32 respectively. We listed 170 News, media, and informational apps across
16 categories. The News category is the most represented, with 74 apps, followed by Magazines &
Newspapers (18 apps), Music (16 apps, including Radio apps), Lifestyle (16 apps), and Books, both
of which include magazines.

No topic or type of media seems to be specifically targeted. The unavailability of informational apps
appears to be the result of stricter content moderation policies imposed on the most represented
categories (News, Magazines & Publications, and Books) as well as targeted censorship.

Chinese authorities carefully monitor media and news apps, often requesting Apple to take down
specific apps in response to what they perceive as harmful coverage of China's politics and current
events. On December 23, 2016, Apple complied with a request from Chinese authorities to remove
both the English-language and Chinese-language versions of the New York Times News app from
its App Store in China. In 2019, the news organisation [Quartz's iOS app was removed][] following a
request from the CAC, a decision Quartz attributed to its coverage of the Hong Kong protests.

[Quartz's iOS app was removed]: https://www.theverge.com/2019/10/9/20907228/apple-quartz-app-store-china-removal-hong-kong-protests-censorship

In June 2020, Apple removed two podcast apps, [Pocket Casts][] and [Castro][], from its China App Store
under government pressure to censor content. Both apps were withdrawn after the CAC demanded
they stop hosting content that violated the country's stringent speech laws, and the apps' owners
refused to comply with the censorship requests. In August and September of the same year, two
feed reader apps, [Reeder][] and [Fiery Feeds][], were removed for similar reasons.

[Pocket Casts]: https://applecensorship.com/app-store-monitor/app/414834813

[Castro]: https://applecensorship.com/app-store-monitor/app/1080840241

[Reeder]: https://applecensorship.com/app-store-monitor/app/1529445840

[Fiery Feeds]: https://applecensorship.com/app-store-monitor/app/1158763303

Podcasting and RSS reader apps pose a challenge for Chinese censors since, unlike streaming
platforms and social networks, feeds and podcasts are hosted across servers controlled by
countless companies. A simple document called an RSS feed is used by the reader or podcasting
apps to download new articles or episodes, meaning there is no central authority for Chinese
censors to demand compliance from.

<!-- 34 -->

#### Social Media & Communication

> [!note]+ .
>
> **Definition**: This category includes apps related to social platforms, including asynchronous
> forums, and communication apps such as live chat, phone, and messaging services.
>
> **Keywords**: social media, forums, communication, messaging, chat,
>
> **Number of unavailable apps identified**: 96

The vast majority of the apps identified fall within Apple's Social Networking category (68 out of
96), making this custom category somewhat reflective of Apple's official one. However, among
the remaining 28 apps, which fall under other official categories, globally popular apps like Twitch,
SoundCloud, LinkedIn, Flickr, and Clubhouse are also present.

For many of these apps, China's App Store is the only Store where they are unavailable. This is the
case for Skype, Viber, MeWe, and Damus. Additionally, several apps are unavailable in a very limited
number of App Stores, indicating targeted unavailability. This is the case for SoundCloud (unavailable
in mainland China and Hong Kong), Microsoft's GroupMe (mainland China and Hong Kong), and Line
(mainland China and Russia).

The list of globally popular social networking and messaging apps unavailable in China is long
and continues to grow each year. On February 2, 2023, just two days after its launch,
[Damus was removed from China's App Store][] by Apple. Between October 12 and November 6, 2022, the photo-
sharing app [BeReal][] was also removed. The French company operating BeReal did not issue a
statement regarding this removal. However, a couple of weeks later, the app was declared iPhone
App of the Year at the 2022 App Store Awards. On June 2, 2022, the ASM detected the removal of
Session – Private Messenger. Similarly, the Australia-based organisation behind the encrypted
messenger did not comment on the removal. In 2019, the group chat app [Discord][] was quietly taken
out of China's App Store.

[Damus was removed from China's App Store]: https://techcrunch.com/2023/02/02/damus-pulled-from-apples-app-store-in-china-after-two-days/#:~:text=The%20app%2C%20which%20runs%20atop,received%20and%20shared%20on%20Twitter.

[BeReal]: https://applecensorship.com/app-store-monitor/app/1459645446

[Discord]: https://applecensorship.com/app-store-monitor/app/985746746

In addition to Viber and Session, several secure messaging apps are also inaccessible for Chinese
iOS users: ChatSecure, Wire, Element, and Keybase. Other popular messaging apps, like Telegram,
Signal, WhatsApp, and Messenger, are available for download but are blocked by China's Great
Firewall, rendering them inoperative without a VPN and, in some cases, additional phone settings
adjustments and the use of external online resources and tools.

<!-- 35 -->

#### VPN

> [!note]+ .
>
> **Definition**: This category includes VPN services. In a few cases, we included censorship-
> circumvention tools similar to VPN services but using a different technology to bypass the
> Great Firewall.
>
> **Keywords**: VPN, Virtual Private Network,加速器, 网络加速
>
> **Number of unavailable apps identified**: 240

The results for this category are as anticipated. In July 2017, Apple performed a sweeping [purge][]
of all major VPN apps from China's App Store. This action took place six months after the Ministry
of Industry and Information Technology (MIIT) had decreed that
[all VPN providers required governmental approval][]
to offer their services within the country. According to MIIT's regulations, all
VPN providers are required to register with the Chinese authorities and ensure their services are not
utilized for illegal activities or to bypass the country's national firewall. In response to a letter from
US senators in October 2017, Apple [admitted to having removed 674 VPN apps][] from China's App
Store at the behest of the Chinese government during that year.

[purge]: https://techcrunch.com/2017/07/29/apple-removes-vpn-apps-from-the-app-store-in-china/

[all VPN providers required governmental approval]: https://www.scmp.com/news/china/policies-politics/article/2064587/chinas-move-clean-vpns-and-strengthen-great-firewall

[admitted to having removed 674 VPN apps]: https://web.archive.org/web/20180723003550/https:/www.leahy.senate.gov/imo/media/doc/Apple%2011212017.pdf

Since 2017, Apple has been systematically rejecting and removing VPN apps and other similar apps
offering censorship circumvention services.

When looking for VPN apps in China’s App Store specifically, some apps which present themselves
as “network accelerators” (and sometimes use the acronym VPN in their name) can be found.
However, those apps do not function as other banned VPN apps developed by foreign companies.
If some of them do provide some kind of proxied connection, they do so using infrastructures
managed by Chinese telecom operators and therefore do not provide users with the ability to bypass
the Great Firewall and access foreign websites censored in China.

<!-- 36 -->

#### Privacy and digital security

> [!note]+ .
>
> **Definition**: Apps in this category offer a range of services including ad-blocking, secure
> browsing, privacy protection, mobile security, and encryption for communication, and protection
> against cyber threats, all of which are critical for user privacy and digital security.
>
> **Keywords**: Privacy, Digital security, protection, antivirus, encryption,
>
> **Number of unavailable apps**: 29

The unavailability of Privacy & Digital Security apps in China's App Store presents a significant
concern as they are not only important for mobile users in general but also crucial for members of
civil society organisations who need to safeguard their personal information and ensure the integrity
of their digital activities.

As China's stringent internet regulations prioritize state surveillance and control over individual
privacy, the Chinese government maintains strict oversight over apps and services that could
potentially bypass these controls.

Apps like [Brave Private Web Browser, Avast Security & Privacy][], and [Avira Mobile Security][], for
instance, offer features that protect user data and privacy while browsing the web, making it harder
for third parties (including government authorities) to access personal information or track online
activities. The unavailability of such apps limits options for users in China to protect their personal
information and maintain privacy online. Moreover, some of these apps, such as 1.1.1.1: Faster
Internet, provide censorship-circumvention services or features similar to that of VPN apps and
could potentially allow users to bypass the Great Firewall.

[Brave Private Web Browser, Avast Security & Privacy]: https://applecensorship.com/app-store-monitor/app/1276551855

[Avira Mobile Security]: https://applecensorship.com/app-store-monitor/app/692893556

Since Apple does not provide information on specific apps targeted by Chinese government (or any
other government) it remains unclear when the unavailability of the listed apps results of specific
government app takedown requests, and when it should be attributed to the Chinese government's
policy of promoting home-grown apps and services.

<!-- 37 -->

## II. APPLE'S CONTENT CURATION POLICIES AND CHINA'S REGULATIONS OF THE APP STORE

Apple knows its content curation policies to moderate the 175 App Stores it operates worldwide are,
to say the least, controversial. This is why the company demands that the public and app developers
simply trust its decisions when it rejects apps that are allegedly “over the line”.

> “What line, you ask? Well, as a Supreme Court Justice once said, “I’ll know it
> when I see it”. And we think that you will also know it when you cross it.”
> [App Store Review Guidelines][]

[App Store Review Guidelines]: https://developer.apple.com/app-store/review/guidelines/

Apple expects app users and developers to have faith in its App Store Review teams, which only
remove apps from the App Store on the grounds of a violation of either App Store Guidelines or local
laws. Often, the company [does not specify what content in the app contravenes][] the guidelines or the
law. In cases where an app is rejected or removed for allegedly breaking local laws, Apple seldom
provides evidence of the laws cited.

[does not specify what content in the app contravenes]: https://applecensorship.com/news/taken-down-a-look-into-apples-transparency-reports

There are two primary methods Apple employs to prevent an app from being distributed in one,
several, or all App Stores. The first method, which we will not delve into in the following sections, is
app rejection.

Apple utilizes [app rejection and distribution limitations to control app availability][] in its App Stores,
exercising the right to reject any app for various reasons. This process is overseen by the App
Store Review Board, including CEO Tim Cook. Such rejections often lead to self-censorship among
developers, who [face pressure and sometimes direct intimidation from Apple][]. This power imbalance
enables Apple to influence app content significantly, [forcing developers to alter or remove features][]—
like circumvention tools— [or information about these features][], thus deviating from the app's original
purpose.

[app rejection and distribution limitations to control app availability]: https://medium.com/@mail_85203/being-an-ios-developer-must-be-stressful-764cd0090bc6

[face pressure and sometimes direct intimidation from Apple]: https://wired.me/gear/laptops/apple-threatens-basecamp-email-app/

[forcing developers to alter or remove features]: https://www.businessinsider.com/developers-angry-with-apple-for-forcing-them-to-remove-parts-of-their-apps-2014-12

[or information about these features]: https://9to5mac.com/2021/03/24/protonvpn-claims-apple-blocking-human-rights/

Apple reserves the absolute right to reject any app for any reasons it considers appropriate. Apple's
CEO, Tim Cook, along with the company's management, sometimes convened in a committee
known as the App Store Review Board, can decide on the availability of any application, regardless
of whether the application complies with international standards, local law, or the App Store Review
Guidelines.

<!-- 38 -->

The second method, app removal, is how Apple notably ensures that certain apps remain
unavailable in specific regions. In its Transparency Reports,
[Apple only discloses app removals that are purportedly the result of government takedown requests][]
, and does not report removals that
result from private actors’ takedown requests or from its own decisions. Between 2019 and 2021,
Apple removed apps in response to government takedown requests at an average frequency of one
app every 17 hours (approximately 500 apps per year). However, our data suggests that the actual
number of app removals at governments' behest is likely higher.

[Apple only discloses app removals that are purportedly the result of government takedown requests]: https://applecensorship.com/news/taken-down-a-look-into-apples-transparency-reports

### Government Takedown Requests in China & Apple’s Transparency Reports

#### Unveiling the Omissions

While Apple has only recently begun to divulge information about its App Store content curation and
collaborations with governments, there remain significant gaps in the information provided. Apple's
inaugural Transparency Report was released in 2013, but it wasn't until 2018 that the company
began including data on app removals. These Transparency Reports purport to reveal the inner
workings of Apple's App Store moderation, as well as its interactions with governments issuing app
takedown requests. However, the consistent omission of key data from these reports leaves the
public with a partial understanding that neither fully explains Apple's business practices, nor allows
for thorough scrutiny of Apple's decisions to comply with government takedown requests.

At present, Apple offers minimal information about government requests for app removals,
while omitting details about the specific apps targeted and the exact reasons for their removal.
"Government App Store Takedown Requests" are ostensibly an official process, yet no public
information about this process exists. [Apple does not disclose][] which government agency or
judiciary body is authorized to issue a takedown request, how long the process takes, or what steps
and requirements are imposed on the requesting body.

[Apple does not disclose]: https://applecensorship.com/news/taken-down-a-look-into-apples-transparency-reports

Moreover, [Apple does not make public][] the date of requests, the requesting body or agency, the
apps and content targeted by the takedown requests, nor the laws invoked by the requesting body
to justify their demands. Government takedown requests can target multiple apps, but it remains
unclear whether the specified apps must be in violation of the same law. When Apple only partially
complies with a request, it does not disclose how many apps specified in the request were not
removed, nor whether those apps were requested to be removed for the same reasons as the apps
that were indeed removed.

[Apple does not make public]: https://applecensorship.com/news/taken-down-a-look-into-apples-transparency-reports

<!-- 39 -->

#### Apple’s appeal process

Apple has established an appeal process for developers who believe their app has been unjustifiably
removed. Officially, once an appeal is submitted, Apple undertakes a fresh review of the app, taking
into account the information provided in the appeal. This review process may take some time,
with developers left awaiting updates that may arrive via email or the Resolution Center—an online
interface accessible to app developers. Following the appeal, Apple makes a final decision on the
app' s status. They may elect to approve the app, request further modifications, or uphold the original
removal decision. Supposedly, the outcome is then communicated to the developer through the
Resolution Center or via email.

However, when it comes to removals from China’s App Store, this process is barely functional
and offers little real opportunity for a developer to contest the wrongful removal of an app. This is
particularly the case when Apple cites local laws and regulations to justify an app's removal. For
instance, in September 2019, when Apple removed the news app Quartz from China’s App Store at
the Chinese government's behest, Apple informed Quartz that it had receiv ed a request from the CAC
and had been compelled to remove the app due to its inclusion of "content that is illegal in China."
When Quartz sought to appeal the decision, Apple sidestepped the appeal request, saying Apple
could reconsider Quartz's status in China's App Store if Quartz were able to contact the Cyberspace
Administration directly and resolve the issue with the authority itself. Apple never formally rejected
Quartz’s appeal.

Apple's Transparency Reports mirror this reality, as they do not include any information relating
to the appeal procedures that may have followed an app removal. Since the second half of 2019,
beginning with Apple's third transparency report to include data on app takedown requests, Apple
added three columns to their report titled "Number of Appeals Received", "Number of Appeals
Granted", and "Number of Apps Reinstated". But the appeals recorded in these columns are those
made directly to the government, court, or agency that made the request, not internal appeals lodged
with Apple by the app developer.

This approach places developers in a challenging position due to the unequal power dynamics
between individual developers or smaller companies and major entities like Apple or governmental
agencies. The requirement for appeals to be made directly to the requesting government or agency
increases the risk of repercussions for developers and discourages them from pursuing an appeal
due to fear of reprisal. Apple's intent to limit the disclosure of information about its appeal process
is not only apparent from its absence in the Transparency Reports but also from how Apple
manages its "Resolution Center". In 2020, app developer Kosta Eleftheriou, known for his legal battle
against Apple's rejections of his apps, [initiated a petition][] demanding that developers retain
continued access to past communications with Apple. As it stands, unless they pertain to the most
recent submission, all communications a developer has ever sent or received through the
Resolution Center are inaccessible to the developer.

[initiated a petition]: https://www.change.org/p/apple-let-us-browse-all-our-past-resolution-center-communications

> "Rejection notices, appeal results, anything you might want to reference
> to better understand previous decisions about your product - it's all
> gone. Unless you have meticulously and manually preserved copies of all
> correspondence, what happened in the past will forever stay in the past... It’s
> not hard to see why Apple is doing this. It is hard, however, to see a reason
> that benefits anyone but Apple." wrote Eleftheriou.

<!-- 41 -->

By restricting access to only the most recent communications, Apple enhances its capacity to be
inconsistent and to take arbitrary actions without having to worry about unintentional transparency
or accountability.

#### Apple’s Lack of Transparency Regarding Government App Takedown Requests in China

Apple's Transparency Reports categorize government app takedown requests into two types:

1.  “Legal Violation Takedown Requests”: These are requests premised on an alleged violation of
    local laws. When Apple complies, it typically removes the app from the App Store where the
    violation has been identified, although the app remains available in other App Stores.

2.  “Platform Policy Violations Takedown Requests”: These are requests based on an alleged
    breach of Apple's App Store Review Guidelines. When Apple complies with these requests, it
    removes the app from all App Stores worldwide, irrespective of where the request originated.
    Consequently, the app vanishes entirely from all App Stores.

Between 2019 and 2020, China accounted for 56.37% of all apps targeted by takedown requests and
was the source of 74.53% of all removals. In 2021, more than 90% of the apps that Apple removed
were [taken down following requests from China's government][]. According to the reports, at least 171
apps were removed globally due to requests sent to Apple by China's government.

[taken down following requests from China's government]: https://applecensorship.com/news/taken-down-a-look-into-apples-transparency-reports

However, several cases of app removal demonstrate that the actual number of apps removed
at China's government's behest can only be higher than the figure Apple provides. For instance,
in October 2019, during the Anti-Extradition Law Amendment Bill protests, HKmap.live, an app
enabling users to report and view police locations and crowd control measures across Hong Kong,
[was removed by Apple][] at the behest of Hong Kong authorities. Yet, Hong Kong’s government is
not mentioned in any of the Transparency Reports published by Apple, even though the company
acknowledged receiving notices from the Hong Kong Cybersecurity and Technology Crime Bureau.

[was removed by Apple]: https://qz.com/1725175/apple-removed-a-hong-kong-protest-map-from-its-app-store

Furthermore, the figures provided do not account for the number of apps rejected by Apple before
they even reach China's App Store. US Court records from a lawsuit filed by a former staff member
of Apple's App Review teams, released online in 2020, disclosed that Apple rejected the app of Guo
Wengui, an exiled Chinese billionaire critical of Beijing, due to its Beijing-critical content. As
[reported by The New York Times][], "shortly after Mr. Guo applied to the App Store, the CAC told Apple it wanted
the app rejected. It was unclear how the officials knew about it." Internal Apple emails filed in the
court case reveal the existence of an internal "China blacklist," a "Chinese App Store Removal wiki
page," and software capable of automatically tagging any apps that mention sensitive keywords.

[reported by The New York Times]: https://www.nytimes.com/2021/05/17/technology/apple-china-censorship-data.html

<!-- 41 -->

### VPN apps in China’s App Store

#### The Blanket Ban of VPN Apps in Apple's China App Store

> Dear Developer,<br>
> We are writing to notify you that your app, XXXX, will be removed from the
> China App Store because it includes content that is illegal in China. As you
> may know, the government has been tightening regulations associated with
> VPN applications and since 2015 has required developers to have a license
> from the Ministry of Industry and Information Technology (MIIT). You have
> not provided a valid license from MIIT.

Excerpt from a [message][] sent by Apple to a VPN app developer

[message]: https://developer.apple.com/forums/thread/105600

By now, every VPN app developer knows that, without a license from the MIIT, Apple will prevent their
apps from being released in China's App Store. [Specific requirements][] for VPN providers seeking to
offer their services in China to end users directly include obtaining a government license, known
as the B13 License, and to seek an agreement with either, China Telecom, China Unicom or China
Mobile, as these are the only three telecom operators in China who can provide the said VPN service
for international network connection. It is virtually impossible for a Foreign VPN provider not based
and registered in China to meet those requirements.

[Specific requirements]: https://www.twobirds.com/en/insights/2020/china/network-connection-and-vpn

With the authorities on edge with individuals trying to distribute VPN-like censorship circumvention
solutions online, VPNs remain a sensitive topic for Apple. Even a mere association with VPN
services, without the app itself being a VPN, can prompt Apple to [pre-emptively remove the app][].

[pre-emptively remove the app]: https://developer.apple.com/forums/thread/105600

Apple's blanket ban on VPN apps in China's App Store is unprecedented, not witnessed in any other
App Store or for any other category of apps. In July 2017, numerous VPN app providers
[reported that their apps had been removed][] from China's App Store or that they had received a notification
of impending removal. Shortly after the news broke, two US Senators, Ted Cruz and Patrick Leahy,
published an open letter requesting information from Apple regarding its stance on VPN apps in
China. Apple responded in November 2017, marking one of the rare instances when the company
acknowledged region-specific app removals on behalf of a government. In a letter signed by Cynthia
Hogan, Apple's former Vice President for Public Policy, Apple conceded to policing China's App
Store and having removed 674 VPN apps pursuant to requests from the Chinese government. Apple
revealed that the CAC justified its request by invoking Article 27 of the Cybersecurity law, which
states:

[reported that their apps had been removed]: https://techcrunch.com/2017/07/29/apple-removes-vpn-apps-from-the-app-store-in-china/

> “Any individual or organisation shall neither engage in activities endangering
> cybersecurity, including illegally invading others' networks, interfering with
> the normal functions of others' networks and stealing cyber data, nor provide
> programs or tools specifically used for activities endangering cybersecurity,
> such as network intrusions, interference with the normal functions and
> protective measures of the network, and theft of cyber data; “

<!-- 42 -->

In the ensuing years, as demonstrated by data on [AppleCensorship.com][], Apple has consistently
removed all VPN apps from China's App Store. Only a few Chinese-language apps purporting
to offer VPN services remain. However, the majority of these apps are not as effective as other
circumvention solutions against the Great Firewall, and users must accept the risk that their online
activity data could be transmitted to the authorities.

[AppleCensorship.com]: https://applecensorship.com/

#### The Legality of VPN Usage in China

In January 2017, with the introduction of a new decree on VPN services and the initiation of a
14-month-long crackdown on unsupervised internet connections, the Chinese MIIT made it clear
that VPN providers operating without a government license were acting illegally.

However, the question of whether it is legal for Chinese users to use VPN services has persisted.
Various websites, including those of VPN providers, [offer their own interpretations][] of the legality
of using a VPN to circumvent the Great Firewall. For some, legality hinges on the specific online
activities of the VPN user, while for others, it is derived from the legality of the VPN provider itself.

[offer their own interpretations]: https://www.google.com/search?q=vpn+legal+china

In an extensive review and translation of hundreds of cases from online government databases
containing police records, court judgments, and other materials related to speech activity
prosecutions over two decades (1998-2020), Taiwan-based lawyer and former staff member of the
Congressional-Executive Commission on China, William Farris, has documented the consequences
faced by Chinese netizens caught using VPN services, seemingly clarifying any ambiguity regarding
the use of VPN apps. In a [thread published on Twitter in May 2022][], Farris shared details of three
instances where Chinese police found netizens in violation of the "Interim Provisions on the
Administration of International Networking of Computer Information Networks" for using VPN
services to "illegally access international networks while playing the game 'Ace Fishing: Wild
Catch”, illegally browse the Wikipedia website for information”, and “to log onto the foreign Twitter,
Facebook, YouTube, Instagram, etc. to browse various kinds of information”. Farris's [casebook][],
a compilation and translation of over 100 cases published in 2022, includes three other cases
involving the use or provision of VPN services.

[thread published on Twitter in May 2022]: https://twitter.com/wafarris/status/1521082667164651520

[casebook]: https://drive.google.com/file/d/1e2Jor0xt9poTRgynoAmxi85kDakEhbB0/view

When questioned about whether these verdicts emphasized the tools and methods used as much
as the online activities they facilitated, Farris initially said that the rulings were not entirely explicit.
In [another thread][], Farris also mentioned that there exist "legal" methods to bypass the Great Firewall
(GFW), such as using foreign SIM cards to access websites that are otherwise blocked, without
needing a VPN.

[another thread]: https://twitter.com/wafarris/status/1523134106720436225

However, other evidence from Farris's case study and reviews of court articles seem to definitively
answer the question about the legality of VPN usage in China: it is essentially illegal, and individuals
have been prosecuted for using them. On his blog, William Farris has cited numerous instances
of police arresting and punishing people "solely for using VPNs." In this context, the lack of
repercussions for expatriates who freely use VPN apps and share content on banned social media
platforms may simply be indicative of a form of tolerance shown by the police and judiciary towards
foreigners using VPNs.

<!-- 43 -->

> [!quote]+ The process to get in China’s App Store
>
> Chinese MIIT, CAC and various other bodies and agencies have established regulations
> and content restrictions for apps. By making the App Stores responsible for any
> inappropriate or illegal content in hosted apps, the government ensures that companies
> which own app distribution platforms will be cautious in enforcing the requirements
> imposed on app developers.
>
> The normal process to publish an app in the iOS App Store generally requires the
> following:
>
> 1.  Create an Apple Developer account.
> 2.  Comply with Apple's App Store Review Guidelines, which cover user safety,
>     performance, business, design, and legal issues.
> 3.  Develop the app using the iOS software development kit and tools like XCode.
> 4.  Test the app on multiple devices and iOS versions.
> 5.  Prepare app metadata and screenshots in App Store Connect.
> 6.  Submit the app for review.
> 7.  If the app is approved, it is then published on the App Store.
>
> Comparatively, [publishing an app on China's App Store][], involves several additional steps:
>
> [publishing an app on China's App Store]: https://www.appinchina.co/blog/how-to-publish-my-app-in-china/
>
> 1.  **Set Up a Legal Entity in China:** Establishing a Wholly Foreign-Owned Enterprise
>     (WFOE) in China is a requirement for foreign app companies that is not required in
>     other regions. This is a costly and time-consuming process.
>
> 2.  **Obtain an Internet Content Provider (ICP) License:** To host a website or app on
>     a Chinese server, an ICP License is necessary, which in turn requires a Chinese
>     business license, achieved via setting up a WFOE.
>
> 3.  **Acquire a Software Copyright Certificate (SCC):** This certificate is needed to prove
>     ownership of the software, and while copyright is a consideration in all regions, the
>     formal requirement for an SCC is specific to China.
>
> 4.  **Obtain an App Publishing Service License:** This is another China-specific
>     requirement. The license is necessary to publish apps on Chinese app stores.
>
> 5.  **Localize the App for the Chinese Market:** While localization is a good practice for
>     any region, it becomes a necessity for China. The lack of localization can be a
>     motive used to reject an app.
>
> 6.  **Maintain Compliance:** Continual monitoring and updates are required to ensure
>     ongoing compliance with Chinese laws and regulations, which are often more
>     stringent and can change more frequently than in other regions.
>
> China's requirements involve additional legal steps, stringent localization, and ongoing
> compliance with local laws and regulations. These added requirements make the
> process of publishing an app in China's App Store more complex and has led to the
> creation of many private “middle man” companies which offer their services to foreign
> developers willing to enter China’s mobile app market.

<!-- 44 -->

### Apple's Commitments to Human Rights and Their Violations

In September 2020, Apple Inc. unveiled a comprehensive [Human Rights Policy document][], aptly
named ‘Our Commitment to Human Rights.’ The release was hailed as a significant milestone,
setting an example for other technology companies to follow. Apple's CEO, Tim Cook, encapsulated
the company's stance in his introductory statement: ’At Apple, we are optimistic about technology’s
awesome potential for good. But we know that it won’t happen on its own. Every day, we work to
infuse the devices we make with the humanity that makes us.’ The policy outlines an extensive array
of commitments, touching on issues from privacy and freedom of information to responsible supply
chain management.

[Human Rights Policy document]: https://s2.q4cdn.com/470004039/files/doc_downloads/gov_docs/2021/03/Our-Commitment-to-Human-Rights_Final-copy-(updated-links-Feb-2021).pdf

Within the document, Apple enumerates 15 specific commitments designed to protect human rights.
These range from environmental stewardship and supply chain compliance with human rights
standards, to safeguarding the rights of its employees, suppliers, contractors, and customers.

#### Breaching Its Own Commitments

In at least five instances within the four-page document, Apple's commitments indicate or imply
that the company will not engage in app censorship on its App Store.

Notable statements include:

+   ‘Hand in hand with the privacy of our users is our commitment to freedom of information and
    expression.’;

+   ‘We try to find the solution that best serves our users—their privacy, their ability to express
    themselves, and their access to reliable information and helpful technology.’;

+   Apple is committed to "respecting internationally recognized human rights in our business
    operations, as set out in the United Nations International Bill of Human Rights";

+   ‘We believe in the critical importance of an open society in which information flows freely.’;

+   ‘In keeping with the UN Guiding Principles, where national law and international human rights
    standards differ, we follow the higher standard. Where they are in conflict, we respect national law
    while seeking to respect the principles of internationally recognized human rights.’

<!-- 45 -->

These statements underscore Apple's dedication to the free flow of information and imply a
commitment to refrain from censoring apps that provide access to reliable information. They
also emphasize the importance of freedom of expression and suggest a willingness to engage in
conversations about controversial content and app availability, rather than suppressing them outright.

Perhaps the most glaring incongruity between Apple's actions and its stated commitments lies
in its promise to follow the higher standard when international law and human rights differ from
local laws. Experience has shown that, in numerous instances of app takedowns and removals in
China, Apple's decisions were politically motivated rather than grounded in local Chinese laws. For
example, in the removal of the New York Times app in 2017 and the delisting of Quartz from China's
App Store in 2019, Apple was unable to cite the specific local laws that mandated these actions. In
fact, Apple appeared to be following government orders rather than any legal decisions rendered
by the Chinese judiciary. These emblematic cases, along with numerous others that have followed,
clearly illustrate that Apple is not genuinely "seeking to respect the principles of internationally
recognized human rights," even when those principles do not directly conflict with Chinese laws,
which acknowledge press freedom as a constitutional right.

#### UN Guiding Principles on Business and Human Rights

Apple's Human Rights Policy document explicitly mentions the
[United Nations Guiding Principles on Business and Human Rights][] (UNGPs):

[United Nations Guiding Principles on Business and Human Rights]: https://www.ohchr.org/sites/default/files/documents/publications/guidingprinciplesbusinesshr_en.pdf

> ‘Our approach is based on the UN Guiding Principles on Business and Human
> Rights. We conduct human rights due diligence to identify risks and work to
> mitigate them. We seek to remedy adverse impacts, track and measure our
> progress, and report our findings.’

The United Nations Guiding Principles on Business and Human Rights, established in 2011, do not
explicitly address the issue of censorship by private companies. However, they do offer a framework
that lays out the corporate responsibility to respect human rights, which can extend to issues of
freedom of expression and information.

Specifically, the UNGPs emphasize:

+   The responsibility of businesses to avoid causing or contributing to adverse human rights
    impacts through their own activities, and address such impacts when they occur.

Principle 13 of the UN Guidelines emphasizes that businesses should prevent or address any
negative human rights impacts linked to their activities or those of their partners, even if they are not
directly responsible for those impacts.

Despite these guidelines, Apple has not taken measures to prevent the Chinese government
from using its platform for censorship. Instead, Apple has tailored its iOS ecosystem to meet
governmental requirements, often disabling features for devices in mainland China, usually
without informing its users. A recent example is the removal of a feature from the iPhone's AirDrop
functionality that allowed public sharing of images and information—a feature notably used to share
messages about the Sitong Bridge protest in Beijing in October 2022.

+   The need for businesses to carry out ‘human rights due diligence’ to identify, prevent, mitigate,
    and account for their human rights impacts.

Principle 17 outlines the need for businesses to conduct human rights due diligence, including
evaluating and addressing their impacts on human rights, integrating the outcomes, monitoring
effectiveness, and publicly sharing their actions.

Apple's reluctance to fully assess its human rights impact, especially concerning user freedoms in
authoritarian regimes, contrasts with its public commitments. Despite criticisms and shareholder
pressure for greater transparency in 2021 regarding labor practices and App Store policies, Apple
resisted proposals on a range of issues, raising questions about its dedication to human rights and
ethical conduct.

+   The role of businesses in remedying any adverse human rights impacts they cause or contribute
   to.

> Principle 22 states: ‘Where business enterprises identify that they have
> caused or contributed to adverse impacts, they should provide for or
> cooperate in their remediation through legitimate processes.’

This principle implies Apple should actively engage in fixing adverse impacts, possibly alongside
others. Suggestions like allowing app releases outside Apple's direct control (a.k.a. “sideloading”)
have been proposed but rejected by Apple, citing safety and user experience concerns. Yet, Apple
has not proposed alternatives to prevent its App Store from being used by governments to limit
access to information and privacy tools.

The UN Guiding Principles also address the issue of transparency. Transparency is implied in a
number of principles, particularly those that relate to the process of human rights due diligence and
the need to communicate how adverse human rights impacts are addressed.

For instance, principles 20 and 21 advocate for businesses to monitor their human rights impact
mitigation efforts through reliable metrics and stakeholder feedback, and to transparently
communicate these efforts, especially in response to concerns raised by affected parties.

<!-- 47 -->

The emphasis on external communication and effectiveness tracking in the UNGPs highlights the
importance of transparency. However, Apple's commitment to transparency is questioned by its
actions, especially regarding its Transparency Reports' lack of detail on app removals, the basis
for government takedown requests, and efforts to resist government censorship. This discrepancy
between stated commitments and actual practices suggests a breach of Apple's own human rights
principles.

<!-- 48 -->

## CONCLUSION AND RECOMMENDATIONS

The influence of the Chinese government on Apple's App Store is significant and multifaceted,
revealing a complex interplay between pressure to enforce strict corporate policies and the
invoking of local laws and regulations. Apple's opaque app review and appeal processes,
coupled with its willingness to comply with government app takedown requests, raise serious
concerns about the company's commitment to free expression and user privacy.

The removal of VPN apps from China's App Store is a stark example of how Apple's “walled garden”
ecosystem and both opaque and arbitrary policies can serve to enforce state censorship, rather than
challenge it. The absolute ban on VPN apps and related technologies in China's App Store is a stark
illustration of Apple's double standards, a policy that is uniquely stringent in China and contributes
to an unparalleled level of app unavailability for the sensitive categories of apps we've studied.

However, Apple’s [absolute control][] of its ecosystem and of its customers’ devices, which leads the
company to often abuse of its power in its relation with developers, allow the Chinese authorities
to engage in targeted censorship without requiring blanket bans for a series of categories of apps,
which would create unnecessary collateral censorship. By blocking specific Tibetan and Uyghur
apps – those mentioning the Dalai Lama or Tibet independence - by removing only the most critical
news apps and media which provide information freely in Chinese language, the authorities are
able to keep the illusion that a variety of content on the most sensitive topics is available in the App
Store, while in fact content that do not follow the Party’s narrative or cross one its many red lines,
are unavailable to Chinese users.

[absolute control]: https://x.com/TimSweeneyEpic/status/1574922498348646400

Moreover, [Apple's lack of transparency][] conceals the true extent of app takedowns at the behest of
the Chinese government, leaving many unanswered questions about the scope of censorship on the
platform. The lack of information about internal processes such as app reviews and appeals further
exacerbates this opacity.

[Apple's lack of transparency]: https://9to5mac.com/2022/04/21/apples-transparency-reports-arent-very-transparent/

Apple's Human Rights Policy promises a significant role in promoting human rights, but a
disconnect between its stated policies and Apple’s actions, especially regarding freedom of
expression and information in China, undermines these commitments. Highlighting the need for
genuine accountability, it urges stakeholders, from consumers to activists, to ask the company to
uphold its principles with the same fervor it claims to comply with local laws in various countries.

Apple's self-acknowledged compliance with the Chinese government's demands is not just a
matter of complying with local laws, but also a deliberate business strategy. However, it is crucial to
recognize the broader implications: by capitulating to these demands, Apple indirectly participates
in the suppression of free speech and digital rights in China.

Apple's actions in China raise concerns for tech firms in strict regulation environments. As Apple
has [moved parts of its operations to countries such as India and Vietnam][], the lack of clear Human
Rights Impact Assessments (HRIAs) or defined human rights commitments could perpetuate issues.

[moved parts of its operations to countries such as India and Vietnam]: https://www.forbes.com/sites/qai/2023/01/01/apple-to-diversify-its-supply-chain-by-producing-macbooks-in-vietnam/

<!-- 49 -->

It's vital for Apple to align its commercial strategies with social responsibilities, ensuring human
rights are prioritized in new markets. **Reiterating recommendations made in our previous research**
**on [Apple’s Transparency Reports][], and based on the analysis and the context provided in this report,**
**we recommend the following stakeholders to:**

[Apple’s Transparency Reports]: https://applecensorship.com/pdf/AppleCensorships-Taken-Down-Report-Digital.pdf

1.  **Apple:**

    +   **Improve Transparency**: Apple should be more open about the extent of app removals and
        rejections, particularly regarding governments requests and demands of the Chinese
        government. This includes detailing its interactions with the Chinese authorities and the
        specific requests made by the various Chinese government agencies, notably the Cyberspace
        Administration of China.

    +   **Strengthen its Appeal Process**: Enhance the appeal process to be more transparent and
        accessible for developers and the public. Retain records of past communications and
        decisions to enable developers to better understand and learn from previous issues.

    +   **Challenge Arbitrary Censorship**: Apple should actively contest arbitrary app takedown
        requests from the Chinese Government. Despite the challenges posed by China's legal
        system, Apple is encouraged to submit legal challenges against any arbitrary censorship,
        documenting and publicizing its resistance efforts to demonstrate its commitment to
        protecting digital rights.

    +   **Advocate for Digital Rights**: Apple should use its influence to advocate for the digital rights of
        both developers and users. This could include pushing back against overly broad or opaque
        app removal requests from governments. Apple should provide details on its effort to object
        to app takedown requests.

    +   **1.1 Apple’s HRIA**

        Apple should could conduct a thorough Human Rights Impact Assessment regarding its
        activities in China, which includes the following steps:

        +   **Planning and Scoping**: Establish a comprehensive HRIA framework tailored to Chinese
            operations, involving local stakeholders to understand the context better.

        +   **Data Collection and Baseline Development**: Gather data on current practices in China, using
            human rights indicators to create a baseline for assessment.

        +   **Analyzing Impacts**: Identify and assess the severity of human rights impacts of its operations
            in China, with a focus on freedom of expression and data privacy.

        +   **Impact Mitigation and Management**: Develop and implement strategies to address any
            identified adverse impacts and establish ongoing monitoring mechanisms.

        +   **Reporting and Evaluation**: Publicly report findings and evaluations in a transparent manner,
            including challenges faced and mitigation measures taken.

        <!-- 50 -->

        Throughout these phases, Apple should engage with a broad range of stakeholders, including
        rights-holders, duty-bearers, and other relevant parties, to ensure the HRIA is comprehensive
        and inclusive.

    +   **1.2 Apple’s Transparency Reports**

        Apple should provide the following information in its Transparency Reports:

        +   Indication of the laws the apps allegedly broke.

        +   A breakdown of the requests listed: how many apps were included in each request, what law
            or type of content each request concerned, what rules and procedures regulate the making of
            these requests.

        +   A timeline of the requests being filed, the length of their consideration, or the point at which
            the apps specified were removed from the country’s App Store.

        +   Data on the rejection and removal decisions it makes autonomously.

        +   Data on the rejection and removal decisions it makes after requests from third parties other
            than government agencies or official bodies with legal powers.

        +   Data on removals it makes according to categorical requests for governments, which do not
            specify apps but do function as blanket legal violation requests.

        +   A list of all apps which remain on the App Store but are blocked by the government (such as
            Facebook, Twitter or Instagram). Apple should further inform users of such block directly on
            the apps’ page within the App Store.

        +   Details of any legal or administrative steps Apple took to challenge app removal orders.

2.  **The U.S. Government and Lawmakers:**

    +   **Conduct Thorough Investigations:** The U.S. government and Congress should intensify
        investigations into Apple’s business practices in China and similar authoritarian
        contexts, scrutinizing how economic pressures influence its adherence to human rights
        responsibilities.

    +   **Implement Regulatory Frameworks:** Advocate for and enact legislation that obliges
        Apple and similar tech companies to maintain consistent, enforceable standards in their
        operations globally, ensuring they uphold digital rights and human rights both in the U.S. and
        internationally.

    +   **Support Global Standards:** The U.S. should lead in the development and promotion of
        international standards for technology operations that prioritize human rights, offering a
        model for responsible corporate behavior worldwide.

    <!-- 51 -->

3.  **The International Community:**

    +   **Advocate for Human Rights-Friendly Tech Policies:** International organisations and
        governments should promote the development and implementation of human rights-based
        guidelines for technology companies, including app stores.

    +   **Promote Corporate Responsibility:** Advocate for regulations that ensure Apple and other tech
        companies respect digital rights, including the option for sideloading apps globally.

    +   **Confront China:** Demand that the Chinese government address app censorship and digital
        rights issues through direct bilateral talks, international forums, or other diplomatic channels.

4.  **The Tech and Human Rights Community:**

    +   **Advocate for Digital Rights:** Developers, NGOs, and civil society should form or join advocacy
        groups focused on human rights and digital freedoms, creating powerful coalitions.

    +   **Partnerships for Impact:** Forge collaborations between developers and civil society
        organizations (CSOs) to strengthen advocacy efforts, share resources, and amplify voices.

    +   **Educational Initiatives:** Play a key role in educating the public on app censorship, corporate
        accountability, and digital rights, particularly regarding operations in China.

    +   **Support and Resources:** Offer support and resources to developers facing app censorship,
        and assist end-users navigating restricted digital landscapes. Promote and explore solutions
        to overcome mobile app censorship.

    +   **Push for Corporate Policy Changes:** Demand that companies like Apple adopt and enforce
        tech practices that respect human rights standards, leveraging collective advocacy to effect
        change.

    +   **Encourage Private Sector Collaboration with Civil Society:** Campaign for tech companies to
        engage meaningfully with CSOs and human rights bodies. Collaborative efforts could range
        from joint advocacy campaigns to shared initiatives aimed at enhancing digital rights.

    +   **Demand Transparency Reports from Tech Companies:** Ask other tech companies to
        release detailed transparency reports that include their policies, actions with human rights
        implications including management and content curation of their respective platforms.

5.  **Joint Efforts & Multi-Stakeholder Cooperation:**

    International actors, CSOs, and the private sector should collaborate on initiatives that promote
    accountability in the tech sector and uphold human rights.

    They should advocate for Apple to regularly conduct and publish a human rights impact
    assessment in China, and press Apple on its human rights responsibilities.

    +   In order to obtain such human rights impact assessment, CSOs should:

        <!-- 52 -->

        +   **Demand Transparency in Government Negotiations:** Insist that Apple disclose its
        negotiations and licensing agreements with China, making these documents public for
        independent oversight.

        +   **Advocate for Labor Protections:** Push for the implementation of labor protections within
        Apple’s supply chains, ensuring workers' rights are upheld.

        +   **Call for Resistance to China’s Government Pressure:** Urge Apple to resist arbitrary
        government orders that restrict freedom of expression and censor content, honoring its
        commitments under the UN Guiding Principles on Business and Human Rights.

        +   **Promote Independent Human Rights Impact Assessments (HRIAs):** Encourage Apple to
        conduct and publish its HRIAs, with revisions as conditions change, to address adverse
        impacts on privacy, freedom of expression, and access to information.

        +   **Engage in Policy Consultations:** Request open consultations with Apple to establish clear
        human rights benchmarks and red lines, ensuring the company adheres to its human rights
        responsibilities despite government demands.

    +   **Hosting Multi-Stakeholder Forums:** When international organisations such as the United
        Nations or the World Economic Forum host events centred on digital rights and censorship,
        it's important to include a diverse array of stakeholders. This should extend beyond the
        conventional participants to also encompass end users and representatives from groups
        that are directly affected by app censorship

    +   **Collaboration Between Developers and CSOs:** Civil Society Organisations (CSOs) should
        collaborate more often with app developers to gain a more realistic and nuanced
        understanding of the technical challenges and possibilities around censorship and digital
        rights. This cooperation would make advocacy towards tech giants like Apple more effective
        and would prioritize changes that are both technically feasible and focused on real-world
        impacts.

    +   **Private Sector Initiatives:** Companies like Apple could take the lead in creating or sponsoring
        multi-stakeholder initiatives that focus on digital rights and transparency. This could include
        funding third-party audits of app removals, contributing to a fund that supports the legal
        defence of censored developers, or sharing best practices for maintaining user privacy and
        free expression in challenging markets.

    +   **Joint Research and Publications:** International actors, CSOs, and private sector companies
        could collaboratively produce research papers, transparency reports, and guidelines aimed at
        educating the public and influencing policy. This effort would benefit from each stakeholder's
        unique expertise and perspective.

<!-- 53 -->

## 相关研究

2024年11月12日，开放技术基金会与 GreatFire 发布了研究报告《<ruby>数字门槛<rt>Blocked by Numbers</rt></ruby> | <ruby>中国社交媒体应用实名制政策对海外用户的影响<rt>The Impact of Real-Name Registration Policies on Transnational Access to Chinese Social Media Apps</rt></ruby>》。[^63659][^25228]

[^63659]: Sam Ju 等、GreatFire 防火墙项目信息控制高级研究员、开放技术基金会, 《[数字门槛 | 中国社交媒体应用实名制政策对海外用户的影响](https://web.archive.org/web/20241209163659/https://www.opentech.fund/wp-content/uploads/2024/11/Translated-Blocked-by-Numbers.pdf)》, 2024-10. [Online].
[^25228]: Sam Ju, et al., [Blocked by Numbers | The Impact of Real-Name Registration Policies on Transnational Access to Chinese Social Media Apps](https://web.archive.org/web/20241127225228/https://www.opentech.fund/wp-content/uploads/2024/11/Blocked-by-Numbers-English.pdf), 2024-10. [Online].

「数字门槛」报告介绍了大陆对 App 要求实名制，导致大陆社交媒体在海外的影响力也减弱。[^13059]

[^13059]: 南方街头运动员, 《[【CDT报告汇】开放技术基金会：中国APP设置“数字门槛”将海外用户挡在墙外（外二篇）](https://web.archive.org/web/20241127043101/https://chinadigitaltimes.net/chinese/713059.html)》, 中国数字时代, 2024-11-15. (参照 2024-12-10).
