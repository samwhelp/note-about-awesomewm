

################################################################################
### Head: Sys
##

is_awesomewmrc_dir () {

	local dir_path="$1"
	local awesomewmrc_file_path="$dir_path/$THE_AWESOMEWMRC_FILE_NAME" ## ~/.config/awesomewmrc-profile/demo/awesomewm.conf

	if [ ! -f "$awesomewmrc_file_path" ]; then ## check ~/.config/awesomewmrc-profile/demo/awesomewm.conf
		return 1
	fi

	return 0
}

is_not_awesomewmrc_dir () {

	local dir_path="$1"
	local awesomewmrc_file_path="$dir_path/$THE_AWESOMEWMRC_FILE_NAME" ## ~/.config/awesomewmrc-profile/demo/awesomewm.conf

	if [ -f "$awesomewmrc_file_path" ]; then ## check ~/.config/awesomewmrc-profile/demo/awesomewm.conf
		return 1
	fi

	return 0

}

awesomewmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name"
}


awesomewmrc_check_awesomewmrc_dir_exists () {

	local awesomewmrc_dir_name="$THE_AWESOMEWMRC_DIR_NAME"
	local awesomewmrc_dir_path="$THE_AWESOMEWMRC_DIR_PATH"

	if ! [ -a "$awesomewmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$awesomewmrc_dir_path" ]; then ## ~/.config/awesomewm is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$awesomewmrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${awesomewmrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${awesomewmrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${awesomewmrc_dir_path} ${bak_target_path}"
	cp -a "${awesomewmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


awesomewmrc_profile_init_dir () {

	if ! [ -d "$THE_AWESOMEWMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	fi

	return 0
}


awesomewmrc_repo_clone () {

	## $ awesomewmrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	util_error_echo "mkdir -p $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_AWESOMEWMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_AWESOMEWMRC_PROFILE_DIR_PATH"
	cd "$THE_AWESOMEWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/awesomewmrc-profile


	if [ -d "$name" ]; then
		util_error_echo
		util_error_echo "## Is Exists:" "$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	util_error_echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/awesomewm.git demo

	## $ man cd
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
