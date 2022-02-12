# -----------------
# Configurations
# -----------------
# C++ version
alias 'g++17'="g++ -std=c++1z"
alias cppcompile="g++ -std=c++11 -O2 -Wall"

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme for zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins for oh-my-zsh
plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# -----------------
# Aliases
# -----------------
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias alacrittyconfig="vim ~/.alacritty.yml"
alias gitconfig="vim ~/.gitconfig"
alias tmuxconfig="vim ~/.tmux.conf"
alias gc="git commit -m"
alias ga="git add"
alias gs="git status"
alias sendpai="git push -u origin master"
alias getpai="git pull origin master"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias code="cd ~/Documents/code"
