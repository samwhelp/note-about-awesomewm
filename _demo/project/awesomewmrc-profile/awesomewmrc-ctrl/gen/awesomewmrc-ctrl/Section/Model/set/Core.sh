

################################################################################
### Head: Model mod_awesomewmrc_profile_set
##

mod_awesomewmrc_profile_set () {
	#echo "mod_awesomewmrc_profile_set"
	#echo "$@"


	## $ awesomewmrc-ctrl set demo

	local name="$1"
	local source_dir_path="$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name"
	local target_dir_path="$THE_AWESOMEWMRC_DIR_PATH"

	#echo "target_dir_path=$target_dir_path"
	#echo "source_dir_path=$source_dir_path"

	if is_not_awesomewmrc_dir "$source_dir_path"; then ## check ~/.awesomewmrc-profile/demo/awesomewmrc
		echo "Not valid awesomewmrc dir: $source_dir_path"
		echo
		echo 'Please run:'
		echo '	$ awesomewmrc-ctrl list'
		echo 'to find valid awesomewmrc dir.'
		return 1
	fi

	awesomewmrc_check_awesomewmrc_dir_exists


	if [ -h "$target_dir_path" ]; then ## ~/.config/awesome is symbolic link
		echo
		echo rm -f "$target_dir_path"
		rm -f "$target_dir_path"
	else
		echo
		echo rm -rf "$target_dir_path"
		rm -rf "$target_dir_path"
	fi




	echo
	echo ln -sf "$source_dir_path" "$target_dir_path"
	ln -sf "$source_dir_path" "$target_dir_path"


	echo
	file "$target_dir_path"

}


##
### Tail: Model mod_awesomewmrc_profile_set
################################################################################
