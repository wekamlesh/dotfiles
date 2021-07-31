#!/usr/bin/fish

function fish_greeting
	echo "Hello to Terminal!!"
end

[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"

function fish_prompt
	set_color red --bold
	printf "["
	set_color yellow
	printf "%s" "$USER"
	set_color green
	printf "@"
	set_color blue
	printf "%s" "$hostname"
	set_color magenta
	printf " %s" "$PWD"
	set_color red
	printf "] "
end

abbr fishconfig "nano ~/.config/fish/config.fish"
abbr startserver "sudo /opt/lamp/lamp/ start"
abbr stopserver "sudo /opt/lamp/lamp/ stop"
abbr restartserver "sudo /opt/lamp/lamp restart"

