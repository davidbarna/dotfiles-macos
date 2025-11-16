# dotfiles-macos

Environment configuration for MacOs computers

## Installation

### Pre-install steps

1. Install CommandLineTools (without Xcode)

    ```sh
    xcode-select --install
    ```

2. Ensure git version is later than 2.13

    ```sh
    git --version
    ```

3. Login to App Store to ensure paid apps can be installed
4. Set up SSH in Github [Learn more](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
    1. Generate key

        ```sh
        ssh-keygen -t ed25519 -C "davidbarna@gmail.com"
        eval "$(ssh-agent -s)"
        touch ~/.ssh/config && open ~/.ssh/config
        ```

    2. Paste this in `.ssh/config`

        ```plain
        Host *
        AddKeysToAgent yes
        UseKeychain yes
        IdentityFile ~/.ssh/id_ed25519
        ```

    3. Add to agent and copy ssh key

        ```sh
        ssh-add -K ~/.ssh/id_ed25519
        pbcopy < ~/.ssh/id_ed25519.pub
        ```

    4. Paste the key in your [Github settings](https://github.com/settings/keys)

### Install steps

1. Clone this repo in ~/dev

    ```sh
    cd ~ && mkdir dev && cd dev
    git clone git@github.com:davidbarna/dotfiles-macos.git
    ```

1. Excute `./install`

    ```sh
    cd ~/dev/dotfiles-macos
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
2. Turn on [settings sync](https://code.visualstudio.com/docs/editor/settings-sync) on VScode.
3. Restart computer

---

I've learned about dotfiles at [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).
