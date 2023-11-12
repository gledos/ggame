---
title: "QQ邮箱"
description:
published: true
date: "2023-04-28T23:50:54"
tags:
- 水印
editor: markdown
dateCreated: "2023-04-28T23:50:54"
---

## 简介

QQ邮箱是腾讯运营的邮箱服务，在 2002 年推出。

## 微色差文字水印

2023年4月27日，QQ邮箱网页的登录窗口被发现含有微色差文字水印，原理是使用 Javascript 动态生成一个 HTML 元素，
部分 Javascript 代码如下：[^zy1dn]

[^zy1dn]: u4GVY5NnpU3Q8Hw4zs19, 《[QQ邮箱登录界面藏有忙水印](https://web.archive.org/web/20230428155537/https://old.reddit.com/r/real_China_irl/comments/12zy1dn/qq邮箱登录界面藏有忙水印/)》, r/real_China_irl, 2023-04-26. (参照 2023-04-28).

```javascript
(function(){
    if(!window.Aegis){
        return
    }
    function setCookie(name,value,domain,path,hour){if(hour){var expire = new Date();expire.setTime(expire.getTime() + 3600000 * hour);}document.cookie = name + "=" + value + "; " + (hour?("expires=" + expire.toGMTString() + "; "):"") + (path?("path=" + path + "; "):"path=/; ") + (domain?("domain=" + domain + ";"):("domain=qq.com;"));return true;};
    function getCookie(n){var r = new RegExp("(?:^|;+|\\s+)" + n + "=([^;]*)"),m = document.cookie.match(r);return (!m?"":m[1]);}
    function getJSVersion(){
        //https://pre.cdn-go.cn/qq-web/any.ptlogin2.qq.com/33d4907a
        var frags = "https://qq-web-legacy.cdn-go.cn/any.ptlogin2.qq.com/e0d90e77".split('/');
        return frags[frags.length-1] || 'unknown'
    }

    function getUUid(){
        var clientip = getCookie("pt_clientip");
        var serverip = getCookie("pt_serverip");
        if(clientip && serverip){
            return serverip+'-'+clientip+"-"+ Math.floor(Math.random()*10000)
        }else{
            return new Date().getTime() + '-' + Math.floor(Math.random()*10000)
        }
    }

    function hiraishinNoJutsuShiki (seal){
        if(!seal){
            return;
        }
        var div = document.createElement('div');
        div.style.cssText='opacity: 0.005;user-select: none;position:absolute;left:0;top:0';
        div.innerText = seal;
        document.body && document.body.appendChild(div);
    }

    function isExcludeLog(log){
        if(!log||!log.level || !log.msg){
            return true
        }
        if(log.level==='32' && log.msg.indexOf('https://localhost.ptlogin2')>-1){ // 快速登录
            return true
        }
        if(log.level==='32' && log.msg.indexOf('https://localhost.sec')>-1){ //Q盾
            return true
        }
        if(log.level==='4' && (log.msg.indexOf('https://qq-web.cdn-go.cn/')===-1 && log.msg.indexOf('https://pre.cdn-go.cn/')===-1)){ //只上报自己的jserror
            return true
        }
        return false
    }
    var DEFAULT_UID='10000';
    var aegisUid=DEFAULT_UID;
    var LOGIN_UIN_COOKIE_KEY = 'ptui_loginuin';
    var UID_COOKIE_KEY = '__aegis_uid';
    var offlineLog = true;
    var AEGIS_REPORT_DELAY = 100; //delay 适当的时间，可以合并上报
    try{
        aegisUid = getCookie(UID_COOKIE_KEY) ||  getCookie(LOGIN_UIN_COOKIE_KEY) || getUUid();
    }catch(err){}

    if(aegisUid===DEFAULT_UID){
        // 没有生成uid，不用上报了，没意义
        return;
    }
    setCookie(UID_COOKIE_KEY, aegisUid, window.location.hostname,'/',48)

    if(!window.Promise){
        offlineLog = false
    }
    console.log('aegisUid:',aegisUid)

    if(location.href.indexOf('aegis=0')>-1){
        return
    }

    var aegisOptions ={
        id: 'RiaWqsnT3403yXTgVY',
        delay: AEGIS_REPORT_DELAY,
        uin: aegisUid,
        version : getJSVersion(),
        offlineLog: offlineLog,
        reportApiSpeed: true, // 接口测速
        reportAssetSpeed: true, // 静态资源测速
        beforeReport : function(log){
            if(isExcludeLog(log)){
                return false
            }
            return true
        }
    }

    console.log('aegisOptions:', aegisOptions)
    window.g_aegis = new Aegis(aegisOptions)
    window.g_aegisUid = aegisUid;
    if(window.addEventListener){
        window.addEventListener('load',function(){
            hiraishinNoJutsuShiki(aegisUid);
        })
    }else if(window.attachEvent){
        window.attachEvent('onload',function(){
            hiraishinNoJutsuShiki(aegisUid);
        })
    }
})();
```

从源码来看，跟 Cookie 有关，所以这是追踪用户的手段，hiraishinNoJutsuShiki 这个函数名比较有意思，
应该是火影忍者里的忍术：飛雷神の術式 (Hiraishin No Jutsu-Shiki)。[^bossxie1995]

[^bossxie1995]: 火影忍者忍术的说法来自 reddit 用户 [bossxie1995](https://archive.ph/tAOFT "https://www.reddit.com/r/real_China_irl/comments/12zy1dn/comment/jhux8a5/?context=3")

但是这种水印一般会被放置到 UGC 平台的内容页面，比如文章和视频之类的位置，放置在登录界面看起来没有明显作用，
有说法认为这是「打击覆盖二维码并盗号的恶意程序」，但手机摄像头几乎不可能分辨出这个内容，
并且「扫码登录」理论上不会上传拍摄的图片，仅会调用本地的图片识别工具获取 QR 码的内容。
