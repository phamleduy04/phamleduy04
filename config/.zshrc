# Cài đặt oh-my-zsh trước khi sử dụng

function cpp {
  if [ -z "$1" ]; then 
    echo "No file provided."
  else
    file=$1; base=${file%.*}
    title="\n––– Running C++ script "; hr=$(printf '%*s' "${COLUMNS:-$(tput cols)}" '' | tr ' ' –)
    echo "\n" && make $base && echo $title${hr:23}"\n" && ./$base && rm ./$base
  fi
}
export ZSH_DISABLE_COMPFIX="true"
export ZSH="/Users/dp/.oh-my-zsh"
alias o="open ."
source ~/.nvm/nvm.sh
nvm use stable

alias cpp=cpp()
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh