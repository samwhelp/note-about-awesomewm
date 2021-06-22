

################################################################################
### Head: Model worron
##

mod_worron_install () {
	echo
	## mod_worron_repo_clone "$1" 'https://github.com/worron/awesome-config.git'
	mod_worron_repo_clone 'worron' 'https://github.com/worron/awesome-config.git'
	echo
}

mod_worron_repo_clone () {

	## $ awesomewmrc-get worron

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='worron'
	fi

	echo "mkdir -p $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"

	echo "cd $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	cd "$THE_AWESOMEWMRC_PROFILE_DIR_PATH" ## cd ~/.awesomewmrc-profile


	if [ -d "$name" ]; then
		echo "## Is Exists:" "$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/worron/awesome-config.git worron

	cd "$OLDPWD"

}



##
### Tail: Model worron
################################################################################
