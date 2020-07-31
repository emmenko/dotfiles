# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export DEFAULT_USER="$USER"

# Path to your oh-my-zsh installation.
export ZSH="/Users/emmenko/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  # battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_CHAR_SYMBOL='❯'
SPACESHIP_CHAR_SUFFIX=' '
# SPACESHIP_GIT_SUFFIX='\n'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  yarn-completion
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.aliases
if [ -f ~/.secrets ]; then source ~/.secrets; fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Custom exports
export PATH=/Users/emmenko:/Users/emmenko/bin:/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR="/usr/bin/vim"

# Setup Amazon EC2 Command-Line Tools
# export EC2_HOME=~/.ec2
# export PATH=$PATH:$EC2_HOME/bin

# Setup JAVA
# export JAVA_HOME=$(/usr/libexec/java_home)
# switch to JAVA Open JDK 13.0.2
export JAVA_HOME=$(/usr/libexec/java_home -v 12.0.2)
# use latest JRE from Oracle
# export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
# export EC2_URL=https://ec2.eu-west-1.amazonaws.com

# Node.js path
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# Boot2Docker (connect the Docker client to the Docker daemon)
#export DOCKER_CERT_PATH=/Users/emmenko/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376

# Docker-machine (default environment to 'dev')
# eval "$(docker-machine env dev)"

# Kubernetes
export KUBERNETES_PROVIDER=vagrant
export NUM_MINIONS=2

# Golang path
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Yarn path
export PATH="$PATH:$HOME/.yarn/bin"

# Fastlane setup (iOS)
export PATH="$HOME/.fastlane/bin:$PATH"

# Pip path
export PATH="$PATH:/Users/emmenko/Library/Python/2.7/bin/"

# Helm@2 path
export PATH="/usr/local/opt/helm@2/bin:$PATH"

# Krew path
export PATH="${PATH}:${HOME}/.krew/bin"

# # Scala path
# export SCALA_HOME=/Applications/scala-2.10.2
# export PATH=$PATH:$SCALA_HOME/bin

# # Gatling path
# export GATLING_HOME=/Users/emmenko/dev/src/gatling-charts-highcharts-2.0.0-M3a
# export PATH=$PATH:$GATLING_HOME/bin

# SET MAVEN_OPTS for All Terminal Sessions
export MAVEN_OPTS=-Xmx512m

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
source '/Users/emmenko/dev/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/emmenko/dev/google-cloud-sdk/completion.zsh.inc'

# OPAM configuration
. /Users/emmenko/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
# fnm
eval "$(fnm env --shell zsh --use-on-cd --multi)"
