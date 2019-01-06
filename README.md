# **Mac Config**

##### Install [Oh My Zsh](http://ohmyz.sh/)

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#

##### Install [Homebrew](http://brew.sh/)

```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#

##### Install Xcode

- Install Xcode from the App Store

#

##### Install desktop applications:

```sh
brew cask install 1password appcleaner docker dropbox firefox franz google-chrome iterm2 onyx postman sequel-pro skitch spotify sublime-text visual-studio-code zoomus
```

- [Fix Sequel Pro icon](https://github.com/sequelpro/sequelpro/issues/2623#issuecomment-281234312)

#

##### Install terminal utilities:

```sh
# may not need lua and n
$ brew install awscli git lua mysql node n redis pyenv
$ npm i -g eslint
$ sudo easy_install pip # if necessary
$ pip install glances # I think this may have been for htop
$ pip install --upgrade pip
$ pip install --upgrade setuptools
```

#

##### [Setup git-open with ZSH](https://github.com/paulirish/git-open#oh-my-zsh)

1. `git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open`
2. Add `git-open` to your plugin list - edit `~/.zshrc` and change `plugins=(...)` to `plugins=(... git-open)`

#

##### [Add pyenv plugin to ZSH](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/pyenv/pyenv.plugin.zsh)

\*Assumes pyenv is already installed via brew

1. Add `pyenv` to your plugin list - edit `~/.zshrc` and change `plugins=(...)` to `plugins=(... pyenv)`

2. Restart your shell so the path changes take effect

```sh
$ exec "$SHELL"
```

#

##### Set directory ownership for `n`

```sh
$ sudo chown -R richard /usr/local/n
$ sudo chown -R richard /usr/local/include/node
$ sudo chown -R richard /usr/local/lib/node_modules
$ sudo chown -R richard /usr/local/lib/dtrace
$ sudo chown -R richard /usr/local/share
```

#

##### Switch terminal to use `git` installed by `brew`

```sh
export PATH=/usr/local/bin:$PATH
```

#

##### Configure `git`:

```sh
$ git config --global user.name "Your Name Here"
$ git config --global user.email "your_email@youremail.com"
$ git config --global credential.helper osxkeychain
# Create strong passphrase and store in 1Password
```

#

##### [Generate SSH Key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) and [Add to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/):

```sh
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/github
$ pbcopy < ~/.ssh/id_rsa.pub
```

1. On [GitHub](https://github.com/), click profile photo, then Settings.
2. Click SSH and GPG keys.
3. Click New SSH key.
4. Add a descriptive title and paste key into the "Key" field.
5. Click Add SSH key.
6. May need to quit and reopen terminal.

#

##### Set VS Code as the [`git` Mergetool](https://code.visualstudio.com/docs/editor/versioncontrol#_git-patchdiff-mode):

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

##### Set Sublime Text as the `git` Mergetool:

```sh
$ git config --global mergetool.sublime.cmd "subl -w \$MERGED"
$ git config --global mergetool.sublime.trustExitCode false
$ git config --global merge.tool sublime
$ git mergetool -y
```

#

##### Install Visual Studio Code Extensions

&nbsp;&nbsp;&nbsp;&nbsp;_Extensions view keyboard shortcut: `command` + `shift` + `x`_

- [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) - Gruvbox dark hard theme
- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons)
- [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [TSLint](https://marketplace.visualstudio.com/items?itemName=eg2.tslint)
- [FontSize Shortcuts](https://marketplace.visualstudio.com/items?itemName=fosshaas.fontsize-shortcuts)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
- [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case)

#

##### Configure Sublime Text to be [launched from terminal](https://www.sublimetext.com/docs/3/osx_command_line.html):

```sh
# No longer necessary as Sublime Text handles this automatically
$ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

#

##### Install [Package Control](https://packagecontrol.io/installation) in Sublime Text

1. Open the Sublime console via the `ctrl` + `` ` `` shortcut
2. Submit the following into the console:

```
import urllib.request,os,hashlib; h = 'df21e130d211cfc94d9b0905775a7c0f' + '1e3d39e33b79698005270310898eea76'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

#

##### Install Sublime Text Packages

&nbsp;&nbsp;&nbsp;&nbsp;_Package Control keyboard shortcut: `command` + `shift` + `p`_

- [Babel](http://babeljs.io/) - Syntax Definitions
- [Bracket Highlighter](https://github.com/facelessuser/brackethighlighter)
- [JSX](https://github.com/allanhortle/JSX) - Syntax Definitions
- [Sidebar Enhancements](https://github.com/SideBarEnhancements-org/SideBarEnhancements)
- [SublimeLinter](http://www.sublimelinter.com/en/latest/installation.html#installing-via-pc)
- [Theme - Centurion](https://github.com/allanhortle/Centurion)
- [Theme - Gravity](https://github.com/frankyonnetti/gravity-sublime-theme)
- [Trailing Spaces](https://github.com/SublimeText/TrailingSpaces)

#

##### Sublime Text User Preferences:

```sh
{
  "centurion_color_blue": true,
  "centurion_tab_close_buttons": true,
  "color_scheme": "Packages/Theme - Gravity/Monokai Gravity.tmTheme",
  "ensure_newline_at_eof_on_save": true,
  "font_size": 14,
  "gravity_highlight_color_blue": true,
  "gravity_tab_height_short": true,
  "gravity_tab_height_tall": false,
  "highlight_line": true,
  "highlight_modified_tabs": true,
  "ignored_packages":
  [
    "Vintage"
  ],
  "remember_full_screen": true,
  "scroll_past_end": true,
  "tab_size": 2,
  "theme": "Centurion.sublime-theme",
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true
}
```

#

##### Sublime Text User Key Bindings:

```sh
[
    { "keys": ["ctrl+tab"], "command": "next_view" },
    { "keys": ["ctrl+shift+tab"], "command": "prev_view" }
]
```

#

##### Configure iTerm

1. Open preferences: `command` + `,`
2. Select _Appearance_
3. Change Tab theme to _Dark_
4. Uncheck _Show per-pane title bar with split panes_
5. Check _Auto-hide menu bar on non-native fullscreen_
6. Check _Dimming affects only text, not background_
7. Set dimming amount to _Very Dim_
8. Uncheck _Dim inactive split panes_ & _Dim background windows_
9. Select _Profiles_
10. Select _Colors_
11. Select _Color Presets..._ dropdown
12. Select _Import..._ and choose custom "perfect" presets

#

##### macOS System Preferences

- Enable Firewall and FileVault
- Set keyboard key repeat to fastest and delay to shortest
- Set trackpad tracking speed to fastest
- Disable trackpad tap to click
