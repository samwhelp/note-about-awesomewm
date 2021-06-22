

################################################################################
### Head: Model mod_awesomewmrc_profile_list
##



mod_awesomewmrc_profile_list () {
	#echo "mod_awesomewmrc_profile_list"
	#echo "$@"

	# awesomewmrc-ctrl list

	local name=''
	local dir_path=''

	cd "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name" ## ~/.awesomewmrc-profile/demo
		if is_not_awesomewmrc_dir "$dir_path"; then ## check ~/.awesomewmrc-profile/demo/rc.lua
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_awesomewmrc_profile_list
################################################################################
