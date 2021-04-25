# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#ZSH=/usr/share/oh-my-zsh

if [[ "$OSTYPE" == "cygwin"* ]]; then
    . ~/.zshrc_cygwin
fi

autoload -U promptinit
promptinit

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gentoo"
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git wd)

source $ZSH/oh-my-zsh.sh

if [[ "$OSTYPE" != "darwin"* ]]; then
    eval `dircolors $HOME/.dotfiles/Dracula.dircolors.txt`
fi

# Customize to your needs...
if hash virtualenvwrapper.sh &> /dev/null; then
    source virtualenvwrapper.sh
fi

# https://github.com/clvv/fasd
# A tool offers quick access to files and directories for POSIX shells
# eval "$(fasd --init auto)"

#yaourt
# export EDITOR=vim

#svn
# export SVN_EDITOR=vim

#alias
alias ehco="echo"
alias sl="ls"
alias ll="ls -alh"
alias grep="grep --color=auto"
alias bc="bc -l"
alias py="python2"
alias py3='python3'
alias v='f -e vim'
alias vi="vim"
alias vd="vim -x ~/Dropbox/diary/`date +%F`"
alias gits='git status'
alias gita='git add'
alias gitc='git commit'
alias gitcm='git commit --amend'
alias gitca='git commit -a'
alias gitcam='git commit --amend -a'
alias gitac='gitca'
alias gitlg='git lg'
alias gitd='git diff'
alias gitd1='git diff HEAD~'
alias gitd2='git diff HEAD~2'
alias gitd3='git diff HEAD~3'
alias gitd4='git diff HEAD~4'
alias yaorut='yaourt'
alias gdb='gdb -tui'
alias zathura='zathura -l warning'
alias vncssh='vncserver -geometry 1440x900 -alwaysshared -dpi 96 -localhost :1'
alias sc='sudo systemctl '
alias scr='sudo systemctl restart'
alias p8='ping 8.8.8.8'
#alias rr='sudo systemctl restart rjsupplicant@0'
#alias mento='sudo systemctl restart mentohust@0'
#alias mentok='sudo systemctl restart mentohust@1'
#alias mentoz='sudo systemctl restart mentohust@2'
#alias mentow='sudo systemctl restart mentohust@3'
#alias soff='xrandr --output VGA-0 --off'
#alias son='xrandr --output VGA-0 --auto --right-of LVDS-0'
#alias xo='xdg-open'
alias tc='$HOME/.dotfiles/tmux_script.sh'
alias ta='tmux attach -t'
alias td='tmux detach'
alias ud='yaourt -Syua'
alias top='htop'
alias tmp='mkdir -p ~/tmp; cd ~/tmp'
alias utmp='rm -r ~/tmp'
alias mkvirtualenv3='mkvirtualenv -p python3'
alias y='yarn'
alias ya='yarn && yarn build && yarn start'
alias ybs='yarn build && yarn start'
alias yb='yarn build'
alias ys='yarn start'
alias yt='yarn test'

#hash -d cu03=sandnon@cu03:/home/sandnon/Downloads/hudbt

#man colored
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

export PATH=$PATH:~/.gem/ruby/2.0.0/bin:~/opt/android-sdk-linux/platform-tools:~/.ssh_connections/:~/scripts:~/opt/bin:~/.local/bin:~/Library/Python/3.8/bin

bindkey -v

# if [ $TERM = 'rxvt-unicode-256color' ] 
# then 
#     export TERM='screen-256color' 
# fi

# if [ -n "$XDG_SESSION_ID" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

unset GREP_OPTIONS

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

