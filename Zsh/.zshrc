# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# **************************************************************************************************************************************************** #
# LOAD OMZ SETTINGS
# **************************************************************************************************************************************************** #
# Path to your oh-my-zsh installation.
export ZSH="/Users/Harsh/.oh-my-zsh"
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# OMZ PROMPT THEME
# **************************************************************************************************************************************************** #
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# OMZ SPECIFIC SETTINGS
# **************************************************************************************************************************************************** #
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# OMZ PROMPT SETTINGS
# **************************************************************************************************************************************************** #
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# OMZ CONFIGURATION AUDIT
# **************************************************************************************************************************************************** #
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
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# ENVIRONMENT VARIABLES & PATHS
# **************************************************************************************************************************************************** #
# PAth & Default Version Settings #
export M2_HOME=/Users/Harsh/Warehouse/maven
export PATH=$PATH:$M2_HOME/bin:$JAVA_HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# GLOBAL ALIASES - Commons
# **************************************************************************************************************************************************** #
alias -g G=" | grep -i "
alias -g ST=" -DskipTests"
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# SUFFIX ALIASES - Commons
# **************************************************************************************************************************************************** #
alias -s xml=vim
alias -s md=vim
alias -s txt=vim
alias -s java=vim
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# CUSTOM ALIASES - Frequently Used Aliases
# **************************************************************************************************************************************************** #
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# **************************************************************************************************************************************************** #
alias zshconfig="less ~/.zshrc"
alias ohmyzsh="less ~/.oh-my-zsh"

alias vim='vim --cmd "syntax on"'

alias aa='ls -ltria'
alias ff='ls -w'
alias qq='clear;clear;clear'
alias rr='fc -e - '


alias src='source ~/.zshrc'
alias srced='vim ~/.zshrc'
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# CUSTOM PATH ALIASES - Project Specific
# **************************************************************************************************************************************************** #
alias cdw='cd ~/Workspace/; qq; pwd; la'
alias cds='cd ~/Warehouse/; qq; pwd; la'
alias cdo='cd ~/Workspace/Java/Official; qq; pwd; la'
alias cdp='cd ~/Workspace/Java/Personal; qq; pwd; la'
alias cdi='cd ~/Workspace/Java/\@Idea; qq; pwd; la'
alias cdpr='cd ~/Workspace/Java/Official/Production; qq; pwd; la'
alias cdsb='cd ~/Workspace/Java/Official/Production-Sandbox; qq; pwd; la'
alias cdploc='cd ~/Workspace/Java/Official/Developer-Local; qq; pwd; la'
alias cdmvn='cd ~/Warehouse/maven/conf; pwd;'
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# MAVEN BASED ALIASES
# **************************************************************************************************************************************************** #
# c - clean | i - install | st - skipTest | v - verify #
alias mvn-cci='mvn clean -c install'
alias mvn-cci-st='mvn clean -c install -DskipTest'
alias mvn-ci-st='mvn clean install -DskipTests=true'
alias mvn-ci='mvn clean install'
alias mvn-sbr='mvn spring-boot:run'
alias mvn-sbr-st='mvn spring-boot:run -DskipTest'

alias mvn-cv='mvn clean -ff -U verify'
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# JAVA BASED ALIASES
# **************************************************************************************************************************************************** #
alias ls-java='/usr/libexec/java_home -V'
# **************************************************************************************************************************************************** #

# **************************************************************************************************************************************************** #
# GIT ALIASES - Augmentation to OMZ Git Plugin
# **************************************************************************************************************************************************** #
alias lsgit='alias | grep -i git | sort -R | head -100'
# **************************************************************************************************************************************************** #


# **************************************************************************************************************************************************** #
# QUICK LINKS - Developer References Quick Links
# **************************************************************************************************************************************************** #
alias ihspa-mysql-prop='echo "https://gitlab.com/rc-development/rc-development-configurations/CommonConfigurations/blob/local/SpringBootApps/MySqlSpringBootApplication.properties"'
alias ihspa-h2-prop='echo "https://gitlab.com/rc-development/rc-development-configurations/CommonConfigurations/blob/local/SpringBootApps/H2SpringBootApplication.properties"'
alias ihspa-commit-specs='echo "https://gitlab.com/rc-specifications/SourceCodeManagement/blob/local/Commit%20Logs%20Specifications%20-%20V1.0.0.md"'
alias ihspa-changelog-specs='echo "https://gitlab.com/rc-specifications/SourceCodeManagement/blob/local/CHANGELOG%20Template%20-%20V1.0.0.md"'
alias ihspa-semver-specs='echo "https://gitlab.com/rc-specifications/spring-boot-application/blob/master/Versioning%20Specification%20-%20V1.0.0.md"'
alias ihspa-spring-boot-specs='echo "https://gitlab.com/rc-specifications/spring-boot-application/blob/master/Spring%20Boot%20Application%20-%20Specification%20-%20V1.0.0.md"'
# **************************************************************************************************************************************************** #