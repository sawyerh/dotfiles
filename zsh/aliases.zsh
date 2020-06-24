#
# Common navigation shortcuts:
#
alias sites='cd ~/Dev/Sites/'
alias projects='cd ~/Dev/Projects/'

#
# Commands I use a lot, so I want shortcuts for them:
#
alias nr="npm run"
alias ni="npm install"
alias nt="npm test"

alias pull="git pull"
alias push="git push"
alias gcb="git checkout -b"
alias branch="master; pull; gcb"
alias dbranch="dev; pull; gcb"
alias master="git checkout master"
alias dev="git checkout dev"

#
# Modify `ls` to output more relevant info:
#
# Always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1

# Setup LS_COLORS for colorizing output of `ls`
# See: github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)"

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -AFh ${colorflag} --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories

#
# AWS CLI
# https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html
#
alias aws='docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli'
alias aws-update='docker pull amazon/aws-cli:latest'

#
# Misc:
#
# What's my IP address?
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# File size
alias fs="stat -f \"%z bytes\""

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"