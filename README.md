dotfiles
========

### Installation

Install package managers

```bash
# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Node (OSX installer http://nodejs.org/download/) or
brew install node
```

Set up system
```bash
# Set up custom OSX preferences
./.osx

# Symlink dotfiles
./install.sh

# Update/Install brew formulae
./.brew

# Update/Install npm packages
./.npm

# Install ruby packages
./.rvm
```
