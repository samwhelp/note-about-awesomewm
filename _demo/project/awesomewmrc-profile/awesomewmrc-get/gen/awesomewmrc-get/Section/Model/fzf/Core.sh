

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


	#https://en.wikipedia.org/wiki/Here_document
local selected=$(fzf << EOF
all
worron
EOF
)


echo
echo "## Selected: $selected"
echo

if [ "none$selected" = "none" ]; then
	return 1
fi

main_run_sub_cmd "$selected"


}

##
### Tail: Model fzf
################################################################################
