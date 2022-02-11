#cpp func
function cpp {
  if [ -z "$1" ]; then 
    echo "No file provided."
  else
    file=$1; base=${file%.*}
    title="\n––– Running C++ script "; hr=$(printf '%*s' "${COLUMNS:-$(tput cols)}" '' | tr ' ' –)
    echo "\n" && make $base && echo $title${hr:23}"\n" && ./$base && rm ./$base
  fi
}

# setup ZSH
export ZSH_DISABLE_COMPFIX="true"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#alias
alias o="open ."
alias cpp=cpp
alias gh="cd ~/Documents/GitHub"

#nvm
source ~/.nvm/nvm.sh
nvm use --lts
