export PATH=/Users/emmenko:/Users/emmenko/bin:/usr/local/git/bin:/usr/local/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# COMMERCETOOLS CONFIG
export EDITOR="/usr/bin/vim"
export GIT_AUTHOR_NAME="Nicola Molinari"
export GIT_COMMITTER_NAME="Nicola Molinari"
export GIT_AUTHOR_EMAIL="nicola.molinari@commercetools.de"
export GIT_COMMITTER_EMAIL="nicola.molinari@commercetools.de"
export EMAIL="nicola.molinari@commercetools.de"

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export JAVA_HOME=$(/usr/libexec/java_home)
# switch to JAVA 1.6
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
# use latest JRE from Oracle
# export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export EC2_URL=https://ec2.eu-west-1.amazonaws.com

# Node.js path
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# Scala path
export SCALA_HOME=/Applications/scala-2.10.2
export PATH=$PATH:$SCALA_HOME/bin

# Gatling path
export GATLING_HOME=/Users/emmenko/dev/src/gatling-charts-highcharts-2.0.0-M3a
export PATH=$PATH:$GATLING_HOME/bin

# SET MAVEN_OPTS for All Terminal Sessions
export MAVEN_OPTS=-Xmx512m

# git autocomplete
GIT_COMPLETION=/usr/local/etc/bash_completion.d/git-completion.bash
GIT_PROMPT=/usr/local/etc/bash_completion.d/git-prompt.sh
if [ -f $GIT_COMPLETION ]
then
  source $GIT_COMPLETION
fi

if [ -f $GIT_PROMPT ]
then
  source $GIT_PROMPT
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
fi

# npm autocomplete
NPM_COMPLETION=/usr/local/etc/bash_completion.d/npm
if [ -f $NPM_COMPLETION ]
then
  source $NPM_COMPLETION
fi

source ~/.aliases
source ~/.colors

if [ -f ~/.secrets ]
then
  source ~/.secrets
fi

# CUSTOMIZE TERMINAL PROMPT
export PS1="\[${txtylw}\]\u: \[${txtblu}\]\w \[${txtpur}\]\$(__git_ps1 '(%s) ')\[${txtrst}\]$ "
