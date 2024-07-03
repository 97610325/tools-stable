#! /bin/bash
#https://github.com/WJQSERVER/tools-stable
# deploy XCaddy environment

echo -e "[${yellow}RUN${white}] $mikublue 開始安裝XCaddy環境" $white
echo -e "${green}>${white} $mikublue 更新軟件包" $white
apt update
apt upgrade -y
echo -e "${green}>${white} $mikublue 拉取必要依賴" $white
apt install curl vim wget gnupg dpkg apt-transport-https lsb-release ca-certificates

echo -e "${green}>${white} $mikublue 拉取GO安裝包" $white
wget https://go.dev/dl/go1.22.5.linux-amd64.tar.gz
echo -e "${green}>${white} $mikublue 清理GO相關目錄" $white
echo -e "${green}>${white} $mikublue 解壓GO安裝包" $white
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.5.linux-amd64.tar.gz
echo -e "${green}>${white} $mikublue 添加GO環境變量" $white
echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile
echo -e "${green}>${white} $mikublue 導入GO變量" $white
source /etc/profile
echo -e "${green}>${white} $mikublue 測試GO安裝狀態" $white
go version

echo -e "${green}>${white} $mikublue 添加XCaddy源" $white
curl -sSL https://dl.cloudsmith.io/public/caddy/xcaddy/gpg.key | gpg --dearmor > /usr/share/keyrings/xcaddy.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/xcaddy.gpg] https://dl.cloudsmith.io/public/caddy/xcaddy/deb/debian any-version main" > /etc/apt/sources.list.d/xcaddy.list

echo -e "${green}>${white} $mikublue 安裝XCaddy" $white
apt update
apt install xcaddy