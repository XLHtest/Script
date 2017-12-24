#!/bin/sh
echo '设置更新源'
#设置更新源
echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free' > /etc/apt/sources.list
echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
#进行更新
apt-get clean && apt-get autoclean && apt-get remove -y && apt-get autoremove -y
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
#安装基础依赖分别是 搜狗输入法  火狐浏览器汉化 sublime-text中文输入
apt-get install -y fcitx fcitx-config-gtk2 iceweasel-l10n-zh-cn libgtk2.0-dev python3-pip virtualbox
#下载安装谷歌浏览器
wget https://dl-ssl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt-get install -f -y
#下载sublime-text3    3143是版本号
wget https://download.sublimetext.com/sublime-text_build-3143_amd64.deb
dpkg -i sublime-text_build-3143_amd64.deb
git clone https://github.com/XLHtest/sublime_text_3_Plugin.git /opt/sublime_text/Data/Packages/User
cp src/libsublime-imfix.so /opt/sublime_text/libsublime-imfix.so
cp src/sublime-text.desktop /usr/share/applications/sublime_text.desktop
cp src/subl /usr/bin/subl

#下载vscode
wget https://az764295.vo.msecnd.net/stable/1e9d36539b0ae51ac09b9d4673ebea4e447e5353/code_1.17.1-1507645403_amd64.deb
dpkg -i code_1.17.1-1507645403_amd64.deb
apt-get install -f -y

#下载网易云音乐
wget https://s1.music.126.net/download/pc/netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb
dpkg -i netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb
apt-get install -f -y

#安装nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
apt-get install -y build-essential
#设置npm全局安装的环境变量
echo 'export NODE_HOME=/usr/lib' >> /etc/profile
echo 'export PATH=$PATH:$NODE_HOME' >> /etc/profile
echo 'export NODE_PATH=$NODE_HOME/node_modules' >> /etc/profile
#安装插件 npm
npm install -g  cheerio crypto egg-init express ionic npm-check-updates pm2 superagent tslint typescript cordova egg-bin  eslint express-generator npm pg request supervisor ts-node typings
#安装djanggo
pip3 install django djangorestframework coreapi Markdown django-filter django-crispy-forms django-guardian
#启动數據庫
update-rc.d postgresql enable
update-rc.d mysql enable
#再次更新
apt-get clean && apt-get autoclean
apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
apt-get install broadcom-sta-dkms
#下载安装搜狗输入法
wget http://cdn2.ime.sogou.com/dl/index/1491565850/sogoupinyin_2.1.0.0086_amd64.deb
dpkg -i sogoupinyin_2.1.0.0086_amd64.deb
apt-get install -f -y
#重启
reboot
init 0
