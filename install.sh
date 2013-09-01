#! /bin/bash -e

# OS specific stuff
OS=`uname`

if [ "$OS" == "Darwin" ]
then
  echo "Detected OS X"
  echo " -> Setting defaults"
  ./osx
fi

# Create ssh dir if it doesn't exist
if [ ! -f '~/.ssh/' ];
then
  mkdir '~/.ssh/'
  echo "Creating dir ~/.ssh"
fi

# Create .gitconfig.local if doesn't exist
if [ ! -f '~/.gitconfig.local' ];
then
  echo "Creating template for '.gitconfig.local'"
  cp .gitconfig.local ~/.gitconfig.local
fi

#create the symlinks for all dotfiles
declare -a dotfiles=(.aliases .colors .gitconfig .profile .vimrc .vim, .iterm2 .ssh/config)
for i in "${dotfiles[@]}"
do
  :
  echo "Symlinking $i"
  ln -sf `pwd`/$i ~/$i
done

# echo "Symlinking bin"
# rm -rf ~/bin
# ln -sf `pwd`/bin/ ~/bin

echo "Symlinking .sbt/plugins"
mkdir -p ~/.sbt
ln -sf `pwd`/.sbt/plugins ~/.sbt/plugins

echo ""
echo "Updating/installing brew formulae"
./brew

echo ""
echo "Updating/installing npm packages"
./npm