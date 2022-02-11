# Powerlevel10k Configuration
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
# Path for zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path for git install (latest version)
export PATH=/usr/local/git/bin:/usr/local/sbin:$PATH

# Path for llvm (C++)
LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# Path for ruby
# export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(rbenv init -)"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Path to oh-my-zsh
export ZSH="/Users/devansh/.oh-my-zsh"

# Theme for zsh
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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
alias sendpai="git push -u origin master"
alias getpai="git pull origin master"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias code="cd ~/Documents/code"


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Conda Configuration
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/devansh/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/devansh/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/devansh/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/devansh/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# SDKMAN Configuration
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/devansh/.sdkman"
[[ -s "/Users/devansh/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/devansh/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
