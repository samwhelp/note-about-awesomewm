

################################################################################
### Head: Model fzf
##

mod_fzf () {
	#echo "mod_fzf"
	#echo "$@"

if ! is_command_exist 'fzf'; then

cat << EOF

## Need: fzf

	* https://github.com/junegunn/fzf

	$ pamac install fzf

EOF
	return 1
fi


local selected=$(mod_awesomewmrc_profile_list | fzf)


echo
echo "## Selected: $selected"
echo

mod_awesomewmrc_profile_set "$selected"


}

##
### Tail: Model fzf
################################################################################
