# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
declare -x LANG="zh_CN.UTF-8"
RED="\033[33;31m"
GREEN="\033[33;32m"
YELLOW="\033[33;33m"
BLUE="\033[33;34m"
PURPLE="\033[33;35m"
RESET="\033[m"

function parse_git_branch {
      log=$(git status -sb 2> /dev/null)
      OLD_IFS="$IFS"
      IFS=$(echo -e "\n\b")
      arr=($log)
      IFS="$OLD_IFS"
  
      git_branch="${arr[0]:3}"
  
      if [ ${#git_branch} -gt 0 ]; then
          if [ ${#arr[@]} -gt 1 ]; then
              git_branch="${RED}($git_branch)${RESET}"
          else
              git_branch="${GREEN}($git_branch)${RESET}"
          fi
      fi
    #tmp=$(git branch -a 2>/dev/null | grep "*" | awk '{print $2}');
    #if [ ${#tmp} -gt 0 ]; then
    #   git_branch="${GREEN}(${tmp})${RESET}"
    #fi
      echo -e ${git_branch}
  }

export PS1="\[\e[33;1m\][\u@\h \w\$(parse_git_branch)]$\[\e[m\] "

export http_proxy=http://localhost:8118                                                                                                                                          
export https_proxy=http://localhost:8118                                                                                                                                         
alias go="http_proxy=http://localhost:8118 https_proxy=http://localhost:8118 go"                                                                                                 
alias dep="http_proxy=http://localhost:8118 https_proxy=http://localhost:8118 dep"  
#alias vim="/usr/local/bin/vim"
