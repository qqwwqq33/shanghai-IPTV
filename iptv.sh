#!/bin/sh
#开始提示
echo 正在增加开机自动重启dnsmasq
#移动到脚本目录
cd /jffs/scripts
service restart_dnsmasq
#设置权限
chmod -R 0777 4k-start
#完成提示
echo 成功

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#脚本提示
echo 正在修改ss dnsmasq配置文件
#移动到ss dnsmasq目录
cd /koolshare/ss/redchn
#删除旧配置文件

#设置权限
chmod -R 0777 dnsmasq.postconf
#完成提示
echo 成功

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#脚本提示
echo 正在删除不开启ss情况下的配置文件
#移动到脚本目录
cd /jffs/configs/dnsmasq.d
#删除旧dnsmasq配置文件
echo 正在删除旧文件
rm -rf iptv.conf
#完成提示
echo 成功

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#运行提示
echo 正在重启dnsmasq
#重启dnsmasq
service restart_dnsmasq > /dev/null
#完成提示
echo dnsmasq已重启

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#返回默认目录
cd

#提示成功
ping 127.0.0.1 -c 2 > /dev/null
echo 脚本运行完成，如果光猫已经设置完毕，您可以把IPTV接在Lan1-4任意接口
ping 127.0.0.1 -c 2 > /dev/null
echo 感谢您的使用，脚本作者云岚，koolshare用户名shzhb888
