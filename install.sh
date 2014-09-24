#! /bin/bash -e

# Create ssh dir if it doesn't exist
echo "Ensure dir ~/.ssh"
mkdir -p ~/.ssh

# Create .gitconfig.local if doesn't exist
if [ -f '~/.gitconfig.local' ];
then
  echo "Creating template for '.gitconfig.local'"
  cp .gitconfig.local ~/.gitconfig.local
fi

#create the symlinks for all dotfiles
declare -a dotfiles=(.aliases .colors .gitconfig .profile .vimrc .vim .iterm2 .ssh/config .gemrc)
for i in "${dotfiles[@]}"
do
  :
  if [ -L '~/$i' ];
  then
    echo "Removing symlink $i"
    unlink ~/$i
  fi
  echo "Symlinking $i"
  ln -sf `pwd`/$i ~/$i
done

# echo "Symlinking bin"
# rm -rf ~/bin
# ln -sf `pwd`/bin/ ~/bin

echo "Symlinking .sbt/0.13/plugins"
rm -rf ~/.sbt/0.13
mkdir -p ~/.sbt/0.13
ln -sf `pwd`/.sbt/0.13/plugins ~/.sbt/0.13/plugins

echo "Symlinking sublime preferences"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sf `pwd`/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
if [ -L '/usr/local/bin/subl' ];
then
  echo "Removing symlink /usr/local/bin/subl"
  unlink /usr/local/bin/subl
fi
echo "Symlinking sublime command line"
ln -s "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
