# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# # Vim alias for Homebrew Vim
# alias 'vim'=/usr/local/Cellar/vim/8.2.0900/bin/vim

# C++ version
alias 'g++17'="g++ -std=c++1z"
alias cppcompile="g++ -std=c++11 -O2 -Wall"

# -----------------
# Path Configurations
# -----------------

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"

 #Theme for zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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
alias py="python3"
alias gcc="gcc-11"

# Aliases for UPenn
alias venti-ssh="ssh devanshjain@ssh.wwbp.org"
alias grande-ssh="ssh devanshjain@grande.wwbp.org"
alias tesla-ssh="ssh devanshjain@tesla.ldc.upenn.edu"
alias hadoop-ssh="ssh devanshjain@hadoop.wwbp.org"
alias sql-ssh="ssh -L 3306:localhost:3306 devanshjain@ssh.wwbp.org"
alias jupyter-ssh="ssh -L 8080:localhost:8080 devanshjain@ssh.wwbp.org"
alias hadoop-jupyter="ssh -L 8090:localhost:8090 devanshjain@hadoop.wwbp.org"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
