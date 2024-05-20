export PATH=$PATH:/usr/local/bin

#cpp func
function cpp {
  if [ -z "$1" ]; then
    echo "No file provided."
  else
    file=$1; base=${file%.*} title="\n––– Running C++ script "; hr=$(printf '%*s'
"${COLUMNS:-$(tput cols)}" '' | tr
' ' –) echo "\n" && make $base && echo $title${hr:23}"\n" && ./$base && rm ./$base
  fi }

#alias
alias o="open ."
alias cpp=cpp
alias gh="cd ~/Documents/GitHub"

#nvm
source ~/.nvm/nvm.sh
nvm use --lts

# starship
eval "$(starship init zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

python3 -V 2>&1 | awk '{print "Using", $1, "(pip: v"$2")"}'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"
