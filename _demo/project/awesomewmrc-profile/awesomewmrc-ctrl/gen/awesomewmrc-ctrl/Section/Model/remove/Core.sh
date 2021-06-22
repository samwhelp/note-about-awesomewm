

################################################################################
### Head: Model mod_awesomewmrc_profile_remove
##

mod_awesomewmrc_profile_remove () {

	## $ awesomewmrc-ctrl remove demo

	local name="$1"
	#echo $name

	echo "cd $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	cd "$THE_AWESOMEWMRC_PROFILE_DIR_PATH" ## cd ~/.awesomewmrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.awesomewmrc-profile/demo
		echo "Dir not exists: $name"
		return 1
	fi

	##mod_awesomewmrc_profile_default

	echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	cd "$OLDPWD"

}

##
### Tail: Model mod_awesomewmrc_profile_remove
################################################################################
