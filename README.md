# 自用脚本

## 更新安装软件 2017年10月11日22:39:33

1. ##取消以下软件
    > ####下载WebStorm
        wget https://download.jetbrains.8686c.com/webstorm/WebStorm-2017.2.tar.gz
        mkdir /opt/webstorm
        tar zxvf WebStorm-2017.2.tar.gz -C /opt/webstorm

2. ##添加以下软件
    > ####下载vscode
        wget https://az764295.vo.msecnd.net/stable/1e9d36539b0ae51ac09b9d4673ebea4e447e5353/code_1.17.1-1507645403_amd64.deb
        dpkg -i code_1.17.1-1507645403_amd64.deb
        apt-get install -f -y
    > ####更新npm安装
        npm install -g  cheerio crypto egg-init express ionic npm-check-updates pm2 superagent tslint typescript cordova egg-bin  eslint express-generator npm pg request supervisor ts-node typings
    > ####sublime-text3
        —– BEGIN LICENSE —–
        TwitterInc
        200 User License
        EA7E-890007
        1D77F72E 390CDD93 4DCBA022 FAF60790
        61AA12C0 A37081C5 D0316412 4584D136
        94D7F7D4 95BC8C1C 527DA828 560BB037
        D1EDDD8C AE7B379F 50C9D69D B35179EF
        2FE898C4 8E4277A8 555CE714 E1FB0E43
        D5D52613 C3D12E98 BC49967F 7652EED2
        9D2D2E61 67610860 6D338B72 5CF95C69
        E36B85CC 84991F19 7575D828 470A92AB
        —— END LICENSE ——
    > ####添加启动项
     添加: update-rc.d 服务名称 enable
     删除: update-rc.d 服务名称 disabled
     update-rc.d postgresql enable
     update-rc.d mysql enable
    > ####sublime-text 3 插件同步
     git clone https://github.com/XLHtest/sublime_text_3_Plugin.git /opt/sublime_text/Data/Packages/User
