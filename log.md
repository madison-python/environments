# Prepare

I want to clean install a new version of macOS on my computer. Here
are the steps I completed:

1. Backed up to an external drive.
1. Downloaded macOS and installed it on a USB drive. See [How to create a bootable installer for macOS](https://support.apple.com/en-us/HT201372)
1. Delete the hard drive.
1. Install macOS from the USB drive.

# First steps on a new machine

1. Remove all the default programs from the dock. Add Terminal.app to the dock.
1. Install SSH key.

```
mkdir -m 0644 ~/.ssh
cp /Volumes/PIERCE/id_rsa* ~/.ssh/
ssh-add
```

# Install macOS development tools

```
# Install the XCode command line tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Install global development tools

```
# Install from a Brewfile
curl -fsSL https://raw.githubusercontent.com/madison-python/environments/master/Brewfile |
    brew bundle --file=-
```

# Configure zsh with oh-my-zsh

```
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```
# contents of ~/.zshrc
eval "$(pyenv init -)"
```

# pyenv

```bash
pyenv install --list | less
pyenv install --list | grep 3.8
pyenv install 3.8-dev  # error 1
pyenv install 3.7.3    # error 2
pyenv install anaconda3-2019.03  #
```

# Error installing 3.7.3

```
$ pyenv install 3.7.3
# ...
zipimport.ZipImportError: can't decompress data; zlib not available

$ xcode-select install
$ sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
$ pyenv install 3.7.3
```

# pipenv gotchas

1. pipenv + code
1. pipenv install typo

# conda

**conda**
:   Python virtualenv manager for scientific computing.

```bash
pyenv versions
which python
which conda
```

