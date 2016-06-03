@echo off
rem /**
rem  * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
title %cd%
echo.
echo [信息] 使用Jetty插件运行工程。
echo.
rem pause
rem echo.

cd %~dp0
cd..

echo MAVEN_OPTS=%MAVEN_OPTS%
set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m
echo MAVEN_OPTS modify to=%MAVEN_OPTS%
echo call jetty run...
echo -U : dependency update
echo -P : profile dev_pdt
echo -D : test skip
call mvn jetty:run -U --update-snapshots -Pdev_pdt -Dmaven.test.skip=true

cd bin
pause