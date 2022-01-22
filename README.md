# dotfiles-macos

Environment configuration for MacOs computers

## Installation

### Pre-install steps

1. Login to App Store to ensure paid apps can be installed
1. Install Xcode from the App Store and open it to accept license
1. Ensure git version is later than 2.13
    ```sh
    git --version
    ```
1. Set up SSH in Github [Learn more](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)



### Install steps
1. Clone this repo in ~/dev
    ```sh
    cd ~
    mkdir dev
    cd dev
    git clone git@github.com:eieioxyz/dotfiles_macos.git
    ```
1. Excute `./install`
    ```sh
    cd ~/dev/dotfiles_macos
    ./install
    ```
### What will happen

1. Installs Homebrew.
1. Installs all brew applications. [See details](./Brewfile)
1. Links config files to this repo's configs
    ```sh
    Creating link ~/.config/bat -> ~/dev/dotfiles-macos/config/bat
    Creating link ~/.zshenv -> ~/dev/dotfiles-macos/zshenv
    Creating link ~/.zshrc -> ~/dev/dotfiles-macos/zshrc
    Creating link ~/.gitconfig -> ~/dev/dotfiles-macos/gitconfig
    ```
1. Installs `node` with `n`. [See details](./setup-node.zsh)
1. Sets up mac osx options. [See details](./setup-macos.zsh)

### Post-install steps
1. Login to Dropbox
1. Open Alfred and set preference folder to Dropbox
1. Change Alfred hotkey to cmd+space. [Learn more](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
1. Turn on [settings sync](https://code.visualstudio.com/docs/editor/settings-sync) on VScode.

---

I've learned about dotfiles at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).
