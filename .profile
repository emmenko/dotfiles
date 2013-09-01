export PATH=/Users/nicola:/usr/local/git/bin:/usr/local/bin:$PATH
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
export EC2_URL=https://ec2.eu-west-1.amazonaws.com

# Node.js path
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# Scala path
export SCALA_HOME=/Applications/scala-2.10.2
export PATH=$PATH:$SCALA_HOME/bin

# SET MAVEN_OPTS for All Terminal Sessions
export MAVEN_OPTS=-Xmx512m

# git autocomplete
COMPLETION=/usr/local/etc/bash_completion.d/git-completion.bash
if [ -f $COMPLETION ]
then
  source $COMPLETION
fi

source ~/.aliases
source ~/.colors

if [ -f ~/.secrets ]
then
  source ~/.secrets
fi