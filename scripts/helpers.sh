red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'

bold=$(tput bold)
normal=$(tput sgr0)
reset="${normal} ${clear}"
title="${bold}"
success="${green} "
error="${red} "

function print_error () {
    echo -e "\t${error} × $1 ${reset}"
}

function print_success () {
    echo -e "\t${success} √ $1 ${reset}"
}

function print_title () {
    echo -e "${title}========================================================================================================== ${reset}"
    echo -e "${title}$1${reset}"
    echo -e "${title}========================================================================================================== ${reset}"
}

function print_warning () {
    echo -e "\t${yellow}  ! $1 ${reset}"
}

function print_info () {
    echo -e "\t${cyan}  i $1 ${reset}"
}

print_green () {
    echo -e "${green}$1${reset}"
}

print_row () {
    echo -e "|\t${bold}$1${reset}|\t${green}$2${reset}|"
    echo -e "${bold}----------------------------------------------------------------------------------------------------------${reset}"
}