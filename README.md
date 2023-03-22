# **Mac Config**

## **Table of Contents**

-   [Install Homebrew](#install-homebrew)
-   [Install Oh My Zsh](#install-oh-my-zsh)
-   [Install Xcode](#install-xcode)
-   [Install applications and terminal utilities](#install-applications-and-terminal-utilities)
-   [Configure `fzf-tab`, `fzf-zsh-plugin`, and `zsh-autosuggestions`](#configure-fzf-tab-fzf-zsh-plugin-and-zsh-autosuggestions)
-   [Add `pyenv` plugin to ZSH](#add-pyenv-plugin-to-zsh)
-   [Fix zlib error when installing Python versions using `pyenv`](#fix-zlib-error-when-installing-python-versions-using-pyenv)
-   [Switch terminal to use `git` installed by `brew`](#switch-terminal-to-use-git-installed-by-brew)
-   [Configure `git`](#configure-git)
-   [Generate SSH Key and Add to GitHub](#generate-ssh-key-and-add-to-github)
-   [Set VS Code as the `git` Mergetool](#set-vs-code-as-the-git-mergetool)
-   [Install Visual Studio Code Extensions](#install-visual-studio-code-extensions)
-   [Configure iTerm](#configure-iterm)
-   [Enable Touch ID for `sudo` in Terminal](#enable-touch-id-for-sudo-in-terminal)
-   [macOS System Preferences](#macos-system-preferences)
-   [Troubleshooting](#troubleshooting)
    -   [gyp: No Xcode or CLT version detected!](#gyp-no-xcode-or-clt-version-detected)

#

### **Install [Homebrew](http://brew.sh/)**

```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew analytics off
```

#

### **Install [Oh My Zsh](http://ohmyz.sh/)**

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#

### **Install Xcode**

-   Install Xcode from the App Store

#

### **Install applications and terminal utilities**

```sh
$ brew install 1password appcleaner google-chrome iterm2 onyx postman visual-studio-code zoomus git pyenv fzf gh
$ curl https://get.volta.sh | bash
$ volta install node
$ npm i -g npmrc
```

#

### **Configure `fzf-tab`, `fzf-zsh-plugin`, and `zsh-autosuggestions`**

-   [fzf-tab](https://github.com/Aloxaf/fzf-tab)
-   [fzf-zsh-plugin](https://github.com/unixorn/fzf-zsh-plugin)
-   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

#

### **[Add pyenv plugin to ZSH](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/pyenv/pyenv.plugin.zsh)**

\*Assumes `pyenv` is already installed via `brew`

1. Add `pyenv` to your plugin list - edit `~/.zshrc` and change `plugins=(...)` to `plugins=(... pyenv)`

2. Restart your shell so the path changes take effect

```sh
$ exec "$SHELL"
```

#

### **Fix zlib error when installing Python versions using pyenv**

On macOS Mojave, pyenv throws an error when trying to install new Python versions:

```sh
zipimport.ZipImportError: can't decompress data; zlib not available
```

-   [pyenv wiki](https://github.com/pyenv/pyenv/wiki/Common-build-problems#build-failed-error-the-python-zlib-extension-was-not-compiled-missing-the-zlib)
-   [Stack Overflow](https://stackoverflow.com/questions/50036091/pyenv-zlib-error-on-macos)
-   [GitHub Issue](https://github.com/pyenv/pyenv/issues/1219)

#

### **Switch terminal to use `git` installed by `brew`**

```sh
export PATH=/usr/local/bin:$PATH
```

#

### **Configure `git`**

```sh
$ git config --global user.name "Your Name Here"
$ git config --global user.email "your_email@youremail.com"
$ git config --global credential.helper osxkeychain
# Create strong passphrase and store in 1Password
```

#

### **[Generate SSH Key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and [Add to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)**

```sh
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
$ eval "$(ssh-agent -s)"
$ ssh-add -K ~/.ssh/id_rsa
$ pbcopy < ~/.ssh/id_rsa.pub
```

1. On [GitHub](https://github.com/), click profile photo, then Settings.
2. Click SSH and GPG keys.
3. Click New SSH key.
4. Add a descriptive title and paste key into the "Key" field.
5. Click Add SSH key.
6. May need to quit and reopen terminal.
7. May need to generate personal access token
    - From profile, click _Developer settings_
    - Click _Personal access tokens_
    - Click _command_line_access_
    - Click _Regenerate token_

#

### **Set VS Code as the [`git` Mergetool](https://code.visualstudio.com/docs/editor/versioncontrol#_vs-code-as-git-editor)**

```sh
$ git config --global core.editor "code --wait"
$ git config --global -e
```

```sh
[diff]
    tool = default-difftool
[difftool "default-difftool"]
    cmd = code --wait --diff $LOCAL $REMOTE
```

#

### **Install Visual Studio Code Extensions**

&nbsp;&nbsp;&nbsp;&nbsp;_Extensions view keyboard shortcut: `command` + `shift` + `x`_

-   [axe Accessibility Linter](https://marketplace.visualstudio.com/items?itemName=deque-systems.vscode-axe-linter)
-   [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case)
-   [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
-   [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
-   [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
-   [GraphQL for VSCode](https://marketplace.visualstudio.com/items?itemName=kumar-harsh.graphql-for-vscode)
-   [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) - Gruvbox dark hard theme
-   [Jest](https://marketplace.visualstudio.com/items?itemName=Orta.vscode-jest)
-   [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
-   [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
-   [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components)
-   [XML Tools](https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml)

#

### **Configure iTerm**

1. Open preferences: `command` + `,`
2. Select _Appearance_ > _General_
3. Check _Auto-hide menu bar in non-native fullscreen_
4. Select _Appearance_ > _Panes_
5. Uncheck _Show per-pane title bar with split panes_
6. Select _Appearance_ > _Dimming_
7. Set dimming amount to _45_
8. Uncheck _Dim inactive split panes_ & _Dim background windows_
9. Check _Dimming affects only text, not background_
10. Select _Profiles_ > _Colors_
11. Select _Color Presets..._ dropdown
12. Select _Import..._ and choose custom "perfect" presets

#

### **[Enable Touch ID for `sudo` in Terminal](https://gitlab.com/gnachman/iterm2/issues/7608)**

1. Add `auth sufficient pam_tid.so` to `/etc/pam.d/sudo`

```sh
# sudo: auth account password session
auth       sufficient     pam_tid.so
auth       sufficient     pam_smartcard.so
auth       required       pam_opendirectory.so
account    required       pam_permit.so
password   required       pam_deny.so
session    required       pam_permit.so
```

2. Disable iTerms2 > Preferences > Advanced > Allow sessions to survive logging out and back in

#

### **macOS System Preferences**

-   Enable Firewall and FileVault
-   Set keyboard key repeat to fastest and delay to shortest
-   Set trackpad tracking speed to fastest
-   Disable trackpad tap to click

#

## Troubleshooting

### gyp: No Xcode or CLT version detected!

```sh
gyp: No Xcode or CLT version detected!
```

If you get the above error when running `npm install`, reinstall Xcode command line tools:

1. Get the current path of Xcode command line tools

    ```sh
    $ xcode-select --print-path
    ```

2. Remove the path printed by the previous command

    ```sh
    $ sudo rm -rf /Library/Developer/CommandLineTools
    ```

3. Reinstall Xcode command line tools

    ```sh
    $ xcode-select --install
    ```
