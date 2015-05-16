# ~/.bashrc
#
# Personal ~/.bashrc on UBELIX, based on the ~/.bashrc on Mac.
#
# This ~/.bashrc is sourced when starting a new shell inside a running shell
# (e.g. running 'bash' in bash). In this case, only ~/.bashrc is sourced, but
# not ~/.bash_profile. --> non-login shell
#
# Contains only function definitions
#
# Daniel Weibel <daniel.weibel@unifr.ch> May 2015
#------------------------------------------------------------------------------#

# There should be no output in ~/.bash_profile and ~/.bashrc, because it would
# cause problems when doing 'scp' from the local machine to UBELIX. 
# echo "Hello, this is ~/.bashrc"

# Test for an interactive shell. There is no need to set anything past this
# point for scp and rcp, and it's important to refrain from outputting anything.
if [[ $- != *i* ]] ; then
	return  # Shell is non-interactive. Be done now!
fi


# Remove all carriage returns (\r) from a file
rmcarr() { sed "s/$(printf '\r')//g" "$1"; }

# Make file executable
x() { chmod +x "$1"; }

# Source file in current dir (no need to prepend "./")
s() { source "./$1"; }

# Change to directory and list content
cl() { cd "$1" && ls; }

# Create new directory and change into it
mkcd() { mkdir "$1" && cd "$1"; }

# cat files with name containig specific substring (in current dir)
catwith() { cat *"$1"*; }

# Find file $1 recursively in directory tree $2
findfile() { find "$2" -name "$1" 2>/dev/null; }

# Create a temporary file or directory
tmpfile() { mktemp    -t $$; }
tmpdir()  { mktemp -d -t $$; }

# Test if a variable is set (non-empty) or unset (empty)
isset()   { [[ -n "$1" ]]; }
isunset() { [[ -z "$1" ]]; }

# Prepend spaces or zeros to an integer to pad it to a certain number of digits
# USAGE: pad <int> <digits>
pad()  { printf "%$2d"  "$1"; }  # Spaces
pad0() { printf "%0$2d" "$1"; }  # Zeros

# Logarithm to base 2 and 10
log2()  { bc -l <<<"l($1) / l(2)" ; }
log10() { bc -l <<<"l($1) / l(10)"; }

# Round a number to a specific number of digits after the decimal point
# USAGE: round <number> <digits>
round() { printf "%.$2f\n" "$1"; }

# Truncate decimal part of a number, i.e. rounding down to nearest integer
trunc() { bc <<<"scale=0; $1/1"; }

# Print all elements of an array
# USAGE: printarr "${arr[@]}" (quotes required if array elements contain spaces)
printarr() {
  local p=$(($(trunc $(log10 $(($#-1)))) + 1))
  local i=0
  for elt in "$@"; do
    echo "$(pad $i $p): $elt"
    i=$(($i+1))
  done
}

# Print all the colours of the terminal's 256 colour scheme
colors() {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}\n"
  done
}

# Set the PS1 variable, i.e. the prompt string, to "PID:dir$" in red. If the
# exit code x of the last command was non-zero, prepend it to the prompt string
# as "x|". This function has to be included in PROMPT_COMMAND, so it gets execu-
# ted and sets the prompt string right before the displaying of every prompt.
set_prompt() {
  local code=$?  # Capture exit code of very last command

  # Shell colour specification:
  # Format:  \e[<style>;<colour>m  --> \e = \033 (oct) = \x1b (hex) = Escape
  # Styles:  0=normal, 1=bold, 2=dimmed, 4=underlined, 7=highlighted
  # Colours: 31=red, 32=green, 33=yellow, 34=blue, 35=purple, 36=cyan, 37=white
  local red='\e[1;31m'
  local yellow='\e[1;33m'
  local reset='\e[0m'

  PS1="$$:\w$\[$reset\] "                  # Prompt string: "PID:dir$"
  [[ "$code" -ne 0 ]] && PS1="$code|$PS1"  # Prepend exit code of last command
  PS1="\[$yellow\]$PS1"                       # Prepend red colour
}
