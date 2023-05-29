# Source global definitions  
if [ -f /etc/bashrc ]; then  
  . /etc/bashrc  
fi  
  
# Source bash_completion if it exists  
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion  
  
is_interactive()  
{  
  [[ $- == *i* ]]  
}  
  
# Make it so Ctrl+S does nothing if we're in an interactive shell.  
# Ctrl+s cycles forward in history search, opposite of Ctrl-r  
# See https://unix.stackexchange.com/questions/137842/what-is-the-point-of-ctrl-s  
# and http://serverfault.com/questions/146745/how-can-i-check-in-bash-if-a-shell-is-running-in-interactive-mode  
# and http://tldp.org/LDP/abs/html/intandnonint.html  
# and https://www.masteringemacs.org/article/keyboard-shortcuts-every-command-line-hacker-should-know-about-gnu-readline  
if is_interactive; then  
  stty -ixon  
fi  
  
# Set default umask  
umask 007  
