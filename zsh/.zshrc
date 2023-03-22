# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf-tab zsh-autosuggestions fzf fzf-zsh-plugin)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias configz="code ~/.zshrc"
alias dev="cd $HOME/Documents/Development"
alias reloadz=". ~/.zshrc && exec $SHELL"
alias ohmyzsh="code ~/.oh-my-zsh"
alias pg:start="brew services start postgresql"
alias pg:stop="brew services stop postgresql"

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/Documents/Development/infra/devolate/perc:$PATH"

export AWS_ACCESS_KEY_ID="FILL_ME_IN"
export AWS_SECRET_ACCESS_KEY="FILL_ME_IN"
export AWS_DEFAULT_REGION="us-west-1"

export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/devolate:$HOME/Documents/Development/infra/devolate/.cache/kubeconfig:$HOME/.kube/kops-testolate/kube-config-viewer.yaml:$HOME/.kube/kops-prclt-uw1/kube-config-viewer.yaml:$HOME/.kube/metalate/kube-config-viewer.yaml:$HOME/.kube/autolate/kube-config-viewer.yaml"

export JFROG_USERNAME="FILL_ME_IN"
export JFROG_API_KEY="FILL_ME_IN"
export JFROG_AUTH_TOKEN="FILL_ME_IN"
export JFROG_TOKEN="FILL_ME_IN"
export PIP_EXTRA_INDEX_URL="https://$JFROG_USERNAME:$JFROG_API_KEY@seismic.jfrog.io/artifactory/api/pypi/pypi-local/simple"

export GITHUB_TOKEN="FILL_ME_IN"
export SLACK_ID="FILL_ME_IN"
export INTROSPECTION_AUTH_TOKEN="FILL_ME_IN"

export AUTH_ORIGIN="https://auth-qa.seismic-dev.com" # contentplanningqa
export WMS_AUTH_TOKEN="FILL_ME_IN"
export WMS_USER_ID="ys6Sdu2U06UzncSvthK5wQ" # contentplanningqa
export WMS_CLIENT_ID="FILL_ME_IN"
export WMS_CLIENT_SECRET="FILL_ME_IN" # contentplanningqa
export WMS_DEV_CLIENT_SECRET="FILL_ME_IN"
export WMS_QA_CLIENT_SECRET="FILL_ME_IN"
export WMS_UAT_CLIENT_SECRET="FILL_ME_IN"
export WMS_DEV_TEST_CLIENT_ID="FILL_ME_IN"
export WMS_DEV_TEST_CLIENT_SECRET="FILL_ME_IN"
export WMS_MATRIX_CERT_FILE="./env/matrix_dev.pfx"
export WMS_MATRIX_CERT_PASSPHRASE="FILL_ME_IN"
export NEWRELIC_LICENSE_KEY="FILL_ME_IN"

export MATRIX_PASSPHRASE="FILL_ME_IN"
export MATRIX_PFX=$(openssl base64 -in /Users/$USER/Documents/Development/matrix-client-cert-v2/matrix-client-cert-v2.pfx)

export CYPRESS_CLIENT_ID="FILL_ME_IN"
export CYPRESS_USER_NAME="FILL_ME_IN"
export CYPRESS_USER_PASSWORD="FILL_ME_IN"

export ROSETTA_HEALTHCHECK_EMAIL="FILL_ME_IN"
export ROSETTA_HEALTHCHECK_PASSWORD="FILL_ME_IN"
export ROSETTA_HEALTHCHECK_TENANT_ID="FILL_ME_IN"

bindkey \^U backward-kill-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_CTRL_T_OPTS="--height '100%' --preview 'bat --color=always --style=header,numbers --line-range :500 {}'"export VOLTA_HOME="$HOME/.volta"
# export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/.poetry/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/Python/3.10/bin:$PATH"
