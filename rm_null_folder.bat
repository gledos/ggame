@echo off
for /f "tokens=*" %%i in ('dir/s/b/ad^|sort /r') do rd "%%i"

@REM 来源自：[如何快速清理空文件夹 批量删除空文件夹 - 合一学院](https://www.unvone.com/72953.html)
