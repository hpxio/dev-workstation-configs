#!/bin/bash

# **************************************************************************************************************************************************** #
# UTILS & WORKSTATION GLOBAL SETTINGS
# **************************************************************************************************************************************************** #
# Custom Setting for Git Completion : From Git Official Site #
source ~/.git-completion.bash

# PAth & Default Version Settings #
export M2_HOME=/Users/Harsh/Warehouse/maven
export PATH=$PATH:$M2_HOME/bin:$JAVA_HOME
# export APPS_CONFIG=/Users/Harsh/Workspace/Config
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home

# Terminal Settings for Mac : Custom Coloring & Highlights #
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias vim='vim --cmd "syntax on" '

# **************************************************************************************************************************************************** #
# PROJECT SPECIFIC & USER SETTINGS
# **************************************************************************************************************************************************** #

# General Terminal Commands #
alias ll='ls -ltr'
alias la='ls -l'
alias aa='ls -ltria'
alias ff='ls -w'

alias cdw='cd ~/Workspace/; qq; pwd; la'
alias cds='cd ~/Warehouse/; qq; pwd; la'
alias cdo='cd ~/Workspace/Java/Official; qq; pwd; la'
alias cdp='cd ~/Workspace/Java/Personal; qq; pwd; la'
alias cdi='cd ~/Workspace/Java/\@Idea; qq; pwd; la'
alias cdpr='cd ~/Workspace/Java/Official/Production; qq; pwd; la'
alias cdsb='cd ~/Workspace/Java/Official/Production-Sandbox; qq; pwd; la'
alias cdploc='cd ~/Workspace/Java/Official/Developer-Local; qq; pwd; la'

alias r='fc -s'
alias qq='clear;clear;clear'

# Monitoring Utils #
alias gtop='glances'


# **************************************************************************************************************************************************** #
# ALIAS MANAGEMENT & LOOKUP
# **************************************************************************************************************************************************** #
alias src='source ~/.bash_profile'
alias srced='vim ~/.bash_profile'
alias lst='alias | grep -i '
alias all='alias'


# **************************************************************************************************************************************************** #
# GIT BASED ALIASES
# **************************************************************************************************************************************************** #
alias gorig='git remote -v' 						#<--Fetch URL set for Origin-->#
alias gorig-full='alias gorig-full; git ls-remote origin' 		#<--Fetch full-detailed info for Origin-->#
alias gorig-fuller='alias gorig-fuller; git remote show origin' 	#<--Fetch fuller-detailed info for Origin-->#
alias gconf-loc='git config --local --list' 
alias gconf-sys='git config --system --list'
alias gconf-glob='git config --global --list'
alias gstat='git status'
alias glog='git log --oneline'						#<--Fetch Git-Logs in single line descriptions-->#
alias glog-short='git log --stat'					#<--Fetch Git-Logs with status desceriptions-->#
alias gbr='git branch'
alias gbr-all='git branch -a'
alias gbr-full='git branch -v'
alias gbr-mr='git branch --merged'
alias gbr-umr='git branch --no-merged'
alias gckout='git checkout '
alias gall='git add -A'
alias gcom='git commit -m '
alias ggr='git log --graph --oneline --all'
alias git-glob-conf='git config --global user.name "Harsh Poddar"; git config --global user.email "harsh.poddar@ticketmaster.com"'
alias git-local-conf="git config user.name 'iHSPA';git config user.email 'harrsh.hp@live.in'"


# **************************************************************************************************************************************************** #
# MAVEN BASED ALIASES
# **************************************************************************************************************************************************** #
# c - clean | i - install | st - skipTest | #
alias mvn-cci='mvn clean -c install'
alias mvn-cci-st='mvn clean -c install -DskipTest'
alias mvn-ci-st='mvn clean install -DskipTests=true'
alias mvn-ci='mvn clean install'
alias mvn-sbr='mvn spring-boot:run'
alias mvn-sbr-st='mvn spring-boot:run -DskipTest'

alias cdmvn='cd ~/Warehouse/maven/conf; pwd;'
alias mvnquick='mvn archetype:generate -DgroupId=com.app.rc -DartifactId=maven-reactor-build -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false'

# **************************************************************************************************************************************************** #
# Function: To Unload a File from Version Control #
# **************************************************************************************************************************************************** #
function grm(){
	if [ $# -ne 1 ]; then
		echo "Usage: grm %file-name%\nBE CAREFUL WHEN PROVIDING FILE NAME!!";
		return 0;
	fi
	echo "Removing file $1 from Git Version Control Cache";
	git rm --cached $1
}

# **************************************************************************************************************************************************** #
# Function: To create Maven Project from parameterized artifact details #
# **************************************************************************************************************************************************** #
function mvnstart(){
	if [ $# -ne 2 ]; then
		echo "Usage: mvnstart {groupId} {artifactId}";
		return 0;
	fi
	echo "Maven Quick Start Custom";
	mvn archetype:generate -DgroupId=$1 -DartifactId=$2 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false;
}

# **************************************************************************************************************************************************** #
# Function: DO NOT USE::To print alias command and basic usage info** before starting execution
# **************************************************************************************************************************************************** #
function a(){
	if [ $# -ne 2 ]; then
		echo "Usage: mvnstart {groupId} {artifactId}";
		return 0;
	fi

}
