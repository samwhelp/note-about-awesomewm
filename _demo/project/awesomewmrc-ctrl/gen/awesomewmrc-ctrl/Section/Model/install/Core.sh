

################################################################################
### Head: Model awesomewmrc_profile_install
##

awesomewmrc_profile_install () {

	## $ awesomewmrc-ctrl install demo https://github.com/worron/awesome-config.git

	local name="$1"
	local repo_url="$2"

	echo "mkdir -p $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"

	echo "cd $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	cd "$THE_AWESOMEWMRC_PROFILE_DIR_PATH" ## cd ~/.awesomewmrc-profile


	echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone https://github.com/worron/awesome-config.git demo

	cd "$OLDPWD"

}

##
### Tail: Model awesomewmrc_profile_install
################################################################################
