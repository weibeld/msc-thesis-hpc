# ~/.bash_profile
#
# Personal ~/.bash_profile on UBELIX, based on the ~/.bash_profile on Mac.
#
# This ~/.bash_profie is sourced when starting an SSH session from the local
# machine to UBELIX. --> login shell
#
# Daniel Weibel <daniel.weibel@unifr.ch> May 2015
#------------------------------------------------------------------------------#

# There should be no output in ~/.bash_profile and ~/.bashrc, because it would
# cause problems when doing 'scp' from the local machine to UBELIX.
# echo "Hello, this is ~/.bash_profile"

# Source ~/.bashrc, which contains all the function definitions
[[ -f ~/.bashrc ]] && source ~/.bashrc

# The set_prompt function is defined in ~/.bashrc
export PROMPT_COMMAND=set_prompt

# Variables
export goal=~/goal/GOAL-20141117
export plugins="$goal"/plugins
export storage=/home/storage/sm/dw07r324

# PATH
PATH=$PATH:~/bin
