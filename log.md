# Prepare

I want to clean install a new version of macOS on my computer. Here
are the steps I completed:

1. Backed up to an external drive.
1. Downloaded macOS and installed it on a USB drive. See [How to create a bootable installer for macOS](https://support.apple.com/en-us/HT201372).
1. Delete the hard drive.
1. Install macOS from the USB drive.

# First steps on a new machine

![](img/fig1.png)

1. Remove all the default programs from the dock. Add Terminal.app to the dock.
1. Create or install SSH key.

```
# Create a new SSH key
ssh-keygen -t rsa -C pierce.edmiston@gmail.com

# Install an existing key
mkdir -m 0700 ~/.ssh
cp /Volumes/PIERCE/id_rsa* ~/.ssh/
chmod 0600 ~/.ssh/id_rsa
chmod 0644 ~/.ssh/id_rsa.pub
ssh-add
```

# Install macOS development tools

```
# Install the XCode command line tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL \
    https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Install global development tools

[madison-python/environments/Brewfile](https://github.com/madison-python/environments/blob/master/Brewfile)

```
# Install from a Brewfile
curl -fsSL \
    https://raw.githubusercontent.com/madison-python/environments/master/Brewfile |
    brew bundle --file=-

# More typical
git clone git@github.com:pedmiston/preferences.git ~/Preferences
cd ~/Preferences
brew bundle  # reads Brewfile
```

# Configure zsh with oh-my-zsh

```
# Install oh-my-zsh
sh -c "$(curl -fsSL \
    https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# Configure password manager and log in to accounts

- 1Password
- `docker login`
- `heroku login`

# Activate pyenv

```
# contents of ~/.zshrc
# ...
eval "$(pyenv init -)"
```

# Install python 3.7.3

```
$ pyenv install 3.7.3
# ...
zipimport.ZipImportError: can't decompress data; zlib not available

$ sudo installer -pkg \
    /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg \
    -target /
$ pyenv install 3.7.3
```
