
# ============== Custom Aliases ============== #

alias mtrix='unimatrix -s 90 -l ksn'

# Small neofetch
alias smallneo='neofetch --ascii_distro arch_small --ascii_colors 2 2 --disable title underline model uptime resolution de wm_theme cpu gpu memory cols'

# Prefer nvim
alias vim='nvim'
alias vi='nvim'
alias svim='sudo nvim'
alias svi='sudo nvim'

# ghidra fix
alias ghidra='_JAVA_AWT_WM_NONREPARENTING=1 ghidra'

# Common commands
alias lt='ls -sSh1F --color=auto'
alias cp="cp -i"  # confirm before overwriting something
alias mv="mv -i"  # confirm before overwriting something
alias df='df -h'  # human-readable sizes
alias du='du -h --max-depth=1 --apparent-size'
alias free='free -m'  # human-readable sizes
alias more=less

alias yt-dl='youtube-dl'

# Make parents if needed + verbose stdout
alias mkdir='mkdir -pv'

# Create packages list for pacman
alias genpkgs='pacman -Qqe > packages.txt'

# Easier cd backing
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

# clipboard utilities
alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'

# ============== Other Aliases ============== #

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xf $1    ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

