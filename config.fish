if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
	#set -g __fish_git_prompt_showupstream auto
	set -g __fish_git_prompt_show_informative_status yes
	set -g __fish_git_prompt_showcolorhints yes
    printf '%s%s> ' (prompt_pwd) (fish_git_prompt)
    #printf '%s%s> ' (pwd) (fish_git_prompt)
end

function fish_right_prompt -d "Write out the right prompt"
	set -l last_status $status
	# Prompt status only if it's not 0
	set -l stat
	if test $last_status -ne 0
  		echo (set_color red)"[$last_status]"(set_color normal)
	end
end

source ~/.bash_aliases

