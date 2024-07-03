#! /bin/bash
# By WJQSERVER-STUDIO_WJQSERVER
#https://github.com/WJQSERVER/tools-stable

mikublue="\033[38;2;57;197;187m"
yellow='\033[33m'
white='\033[0m'
green='\033[0;32m'
blue='\033[0;34m'
red='\033[31m'
gray='\e[37m'

clear

# 显示免责声明
echo -e "${red}免责声明：${mikublue}请阅读并同意以下条款才能继续使用本脚本。"
echo -e "${yellow}===================================================================="
echo -e "${mikublue}本脚本仅供学习和参考使用，作者不对其完整性、准确性或实用性做出任何保证。"
echo -e "${mikublue}使用本脚本所造成的任何损失或损害，作者不承担任何责任。"
echo -e "${mikublue}不提供/保证任何功能的可用性，安全性，有效性，合法性"
echo -e "${mikublue}当前版本为${white}  [${yellow} V.0.9 ${white}]  ${white}"
echo -e "${yellow}===================================================================="

# 导入配置文件
source "repo_url.conf"
sleep 1

#彩色
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}

mikublue(){
    echo -e "\033[38;2;57;197;187m$\033[0m"
}

#
function (){
}

#
function (){
}

#
function (){
}

#
function (){
}

#
function (){
}

#
function (){
}

#
function (){
}

#返回主脚本
function back(){
    wget -O main.sh ${repo_url}main.sh && chmod +x main.sh && ./main.sh
}

#主菜单
function start_menu(){
    clear
    yellow " WJQserver Studio 工具箱 Stable"
    green " WJQserver Studio tools-stable" 
    yellow " FROM: https://github.com/WJQSERVER/tools-stable "
    green " USE:  wget -O tools.sh ${repo_url}tools.sh && chmod +x tools.sh && clear && ./tools.sh "
    yellow " =================================================="
    green " 1. " 
    green " 2. "
    green " 3. "
    green " 4. " 
    green " 5. "
    green " 6. "
    green " 7. "
    yellow " =================================================="
    green " 0. 返回主脚本"
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           1
	    ;;
        2 )
	       2
        ;;
	    3 )
           3
	    ;;
        4 )
	       4
        ;;
	    5 )
           5
	    ;;
        6 )
	       6
        ;;
	    7 )
           7
	    ;;   

        0 )
           back
        ;;
	
        * )
            clear
            red "请输入正确数字!"
            start_menu
        ;;
    esac
}
start_menu "first"
